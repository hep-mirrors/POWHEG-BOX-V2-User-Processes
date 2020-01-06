module mod_analysis
  use mod_error
  use mod_types
  use mod_files
  use mod_hepev
  implicit none

  integer,parameter:: hunit1=801
  integer,parameter:: hunit2=802

  type hist
    ! data to print in the histogram
    integer:: nwgt
    real(xprec):: y3ref
    integer:: y3pow
    integer:: nev
    real(xprec):: sum_a(maxwgt_hep),sum_b(maxwgt_hep)
    real(xprec):: gam_a(maxwgt_hep),gam_b(maxwgt_hep)
    ! list of analysed files for log purposes
    type(fblock):: filelist
  end type hist

contains
  !> this subroutine analyses an event file and returns a histogram
  subroutine analyse_file(filename,y3ref,y3pow,hist1,verbose)
    implicit none
    type(fname),intent(in):: filename
    real(xprec),intent(in):: y3ref
    integer,intent(in):: y3pow
    type(hist),intent(out):: hist1
    logical,intent(in):: verbose
    type(hepev):: event
    integer:: iev,maxev
    integer:: nwgt
    real(xprec),dimension(1:maxwgt_hep):: dsig
    real(xprec):: hval

    ! report to stdout
    if(verbose) write(*,*)'Analysing h_bbg event file: '//trim(filename%name)

    ! start analysis
    hist1= hist_init(filename,y3ref,y3pow)

    ! count events
    call count_events(filename,maxev)

    ! open event file
    call fname_open(filename,hunit1)

    ! rewind header
    call rewind_header(hunit1)

    ! loop over events
    if(verbose) write(*,*)'--------------------------------------------------'
    if(verbose) write(*,*)'--> start analysis'
    do iev=1,maxev
      call load_event(hunit1,event)
      call analyse_event(event,y3ref,y3pow,hval,nwgt,dsig)
      call hist_accum(hist1,hval,nwgt,dsig)
      if(verbose .and. mod(iev,10000).eq.0 ) write(*,'(a,i8)')' --> analysed events = ',iev
    enddo
    if(verbose) write(*,*)'--------------------------------------------------'
    if(verbose) write(*,'(a,i8)')' --> finished analysis, number of events = ',iev-1

    ! close file
    close(hunit1)

    return
  end subroutine analyse_file

  !> perform analysis of an event
  subroutine analyse_event(event,y3ref,y3pow,hval,nwgt,dsig)
    use mod_cluster
    use mod_reshuffle
    implicit none
    type(hepev),intent(in):: event
    real(xprec),intent(in):: y3ref
    integer,intent(in):: y3pow
    real(xprec),intent(out):: hval
    integer,intent(out):: nwgt
    real(xprec),dimension(1:maxwgt_hep),intent(out):: dsig

    integer:: ntrack
    real(xprec),dimension(:,:),allocatable:: pmom
    real(xprec),dimension(:,:),allocatable:: ptrack
    real(xprec),dimension(:),allocatable:: massArray
    integer:: iup
    real(xprec)::  y3
    real(xprec):: Ecm

    ! allocate
    allocate( pmom(1:4,1:4) )
    
    ! find tracks and calculate Ecm
    ntrack= 0
    Ecm= zero
    do iup=4,event%nup
      ntrack= ntrack + 1
      if( ntrack.gt.4 ) call error("analyse_event: too many tracks")
      pmom(1:4,ntrack)= event%pup(1:4,iup)
      Ecm= Ecm + event%pup(4,iup)
    enddo

    ! write momenta to ptrack array (allocatable)
    allocate( ptrack(1:4,1:ntrack) )
    allocate( massArray(1:ntrack) )

    ! reshuffle momenta to obtain massless b-quarks (as in core programme)
    massArray= zero
    call reshuffle_momenta(Ecm,ntrack,massArray,pmom(1:4,1:ntrack),ptrack)
    !@@
    !@@ plain version (without unreshuffling)
    !@@ ptrack(1:4,1:ntrack)= pmom(1:4,1:ntrack)

    ! get 3-jet resolution parameter
    y3=get_y3_cambridge(ptrack,ntrack)

    ! calculate hval
    if( y3ref.gt.zero )then
      hval= one/( one + (y3/y3ref)**y3pow )
    else
      ! negative yref means no h(y3) function applied
      hval= one
    endif

    ! identify weights
    dsig(:)= zero !reset
    if( event%nwgt.le.0 )then
      nwgt=1
      dsig(1)= event%xwgtup
    else
      nwgt= event%nwgt
      dsig(:)= event%wgtup(:)
    endif

    return
  end subroutine analyse_event
  
  !> initialise empty histogram
  function hist_init(filename,y3ref,y3pow) result(res)
    implicit none
    type(hist):: res
    type(fname):: filename
    real(xprec),intent(in):: y3ref
    integer,intent(in):: y3pow
    type(fblock):: emptyblock

    res%y3ref= y3ref
    res%y3pow= y3pow

    res%nwgt= -999

    res%nev= 0
    res%sum_a(:)= zero
    res%sum_b(:)= zero

    res%gam_a(:)= zero
    res%gam_b(:)= zero

    emptyblock= fblock_init()
    res%filelist= fblock_add(emptyblock,filename%name)

    return
  end function hist_init

  !> accumulate histogram
  subroutine hist_accum(histogram,hval,nwgt,dsig)
    implicit none
    type(hist),intent(inout):: histogram
    real(xprec),intent(in):: hval
    integer,intent(in):: nwgt
    real(xprec),dimension(1:maxwgt_hep):: dsig
    real(xprec),dimension(1:maxwgt_hep):: totalA,totalB

    ! check compatibility
    if( histogram%nev.gt.0 )then
      if( histogram%nwgt.ne.nwgt ) call error("hist_accum: \n Incompatible number of weights!")
    endif

    ! accumulate
    histogram%nwgt= nwgt
    histogram%nev= histogram%nev + 1
    histogram%sum_a(:)= histogram%sum_a(:) + hval*dsig(:)
    histogram%sum_b(:)= histogram%sum_b(:) + (one-hval)*dsig(:)

    return
  end subroutine hist_accum
    

  !> print histogram to file
  subroutine hist_print(iunit,hist1)
    implicit none
    integer,intent(in):: iunit
    type(hist),intent(in):: hist1
    character(len=1024):: string,stringtmp
    integer:: iwgt,ifile

    write(string,'(1e18.12,a)')  hist1%y3ref,'  ## y3ref'
    write(iunit,'(a)') trim(string)
    
    write(string,'(1i18,a)') hist1%y3pow,'  ## y3pow'
    write(iunit,'(a)') trim(string)

    write(string,'(1i18,a)') hist1%nev,'   ## nevents'
    write(iunit,'(a)') trim(string)

    write(string,'(1i18,a)') hist1%nwgt,'   ## nweights'
    write(iunit,'(a)') trim(string)

    string=''
    do iwgt=1,hist1%nwgt
      write(stringtmp,'(1e18.12)') hist1%sum_a(iwgt)/hist1%nev
      string=trim(string)//'  '//trim(stringtmp)
    enddo
    string=trim(string)//'  ## Gamma_MiNLO_A'
    write(iunit,'(a)') trim(string)

    string=''
    do iwgt=1,hist1%nwgt
      write(stringtmp,'(1e18.12)') hist1%sum_b(iwgt)/hist1%nev
      string=trim(string)//'  '//trim(stringtmp)
    enddo
    string=trim(string)//'  ## Gamma_MiNLO_B'
    write(iunit,'(a)') trim(string)

    write(iunit,'(a)') ''

    string=''
    do iwgt=1,hist1%nwgt
      write(stringtmp,'(1e18.12)') hist1%sum_a(iwgt)
      string=trim(string)//'  '//trim(stringtmp)
    enddo
    string=trim(string)//'  ## Sum_MiNLO_A'
    write(iunit,'(a)') trim(string)

    string=''
    do iwgt=1,hist1%nwgt
      write(stringtmp,'(1e18.12)') hist1%sum_b(iwgt)
      string=trim(string)//'  '//trim(stringtmp)
    enddo
    string=trim(string)//'  ## Sum_MiNLO_B'
    write(iunit,'(a)') trim(string)

    write(iunit,'(a)') ''

    write(iunit,'("### Event files:")')
    do ifile=1,hist1%filelist%nfiles
      write(iunit,'("## ",a)') hist1%filelist%files(ifile)%name
    enddo
    
    return
  end subroutine hist_print

  !> merge two histograms
  function hist_merge(hist1,hist2) result(res)
    implicit none
    type(hist):: res
    type(hist),intent(in):: hist1,hist2

    ! compare number of weights
    if( hist1%nwgt.ne.hist2%nwgt ) call error("hist_merge: \n Unequal number of weights")
    ! compare y3pow & y3ref
    if( hist1%y3pow.ne.hist2%y3pow ) call error("hist_merge: \n Unequal y3pow")
    if( hist1%y3ref.ne.hist2%y3ref ) call error("hist_merge: \n Unequal y3ref")

    res%nwgt= hist1%nwgt
    res%y3ref= hist1%y3ref
    res%y3pow= hist1%y3pow

    res%nev= hist1%nev + hist2%nev
    res%sum_a(:)= hist1%sum_a(:) + hist2%sum_a(:)
    res%sum_b(:)= hist1%sum_b(:) + hist2%sum_b(:)

    res%filelist= fblock_addblocks(hist1%filelist,hist2%filelist)

    return
  end function hist_merge

  !> load histogram from file
  function hist_load(filename) result(res)
    implicit none
    type(hist):: res
    type(fname),intent(in):: filename
    character(len=1024):: xstring
    integer:: ios
    

    open(unit=hunit1,file=trim(filename%name),status='old',iostat=ios)
    if( ios.ne.0 ) call error("hist_read: \n Could not load file: "//trim(filename%name))

    !read in the histogram
    read(unit=hunit1,fmt='(a)',iostat=ios) xstring
    read(xstring,*) res%y3ref

    read(unit=hunit1,fmt='(a)',iostat=ios) xstring
    read(xstring,*) res%y3pow

    read(unit=hunit1,fmt='(a)',iostat=ios) xstring
    read(xstring,*) res%nev

    read(unit=hunit1,fmt='(a)',iostat=ios) xstring
    read(xstring,*) res%nwgt

    read(unit=hunit1,fmt='(a)',iostat=ios) xstring
    read(xstring,*) res%gam_a(1:res%nwgt)

    read(unit=hunit1,fmt='(a)',iostat=ios) xstring
    read(xstring,*) res%gam_b(1:res%nwgt)

    read(unit=hunit1,fmt='(a)',iostat=ios) xstring !empty line
    
    read(unit=hunit1,fmt='(a)',iostat=ios) xstring
    read(xstring,*) res%sum_a(1:res%nwgt)

    read(unit=hunit1,fmt='(a)',iostat=ios) xstring
    read(xstring,*) res%sum_b(1:res%nwgt)

    read(unit=hunit1,fmt='(a)',iostat=ios) xstring !empty line
    read(unit=hunit1,fmt='(a)',iostat=ios) xstring !'### Event files:'

    res%filelist= fblock_init()
    do while ( ios == 0 )
      read(unit=hunit1,fmt='(a)',iostat=ios) xstring
      if( ios.ne.0 ) cycle
      res%filelist= fblock_add(res%filelist,trim(xstring(4:)))
    enddo

    close(hunit1)

    write(*,*)'Loaded histogram: '//trim(filename%name)
    
    return
  end function hist_load
  

end module mod_analysis
