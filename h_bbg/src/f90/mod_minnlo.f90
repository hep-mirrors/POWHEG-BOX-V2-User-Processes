module mod_minnlo
  use mod_types
  use mod_files
  use mod_hepev
  use mod_alphas
  use mod_analysis
  use mod_gamma_hbb
  use mod_settings
  implicit none

  private
  public :: minnlo_rwgt

  ! structure to keep scale combinations
  type rwgt_combination
    integer:: ncomb
    integer,dimension(:),allocatable:: lheScale
    real(xprec),dimension(:),allocatable:: nnloScale
  end type rwgt_combination

  ! structure to keep GammaHbb (MiNLOa,MiNLOb,NNLO)
  type rwgt_gamma
    integer:: ncomb
    real(xprec):: y3ref
    integer:: y3pow
    real(xprec),dimension(:),allocatable:: gam_a
    real(xprec),dimension(:),allocatable:: gam_b
    real(xprec),dimension(:),allocatable:: gam_nnlo
  end type rwgt_gamma
  
  
  integer,parameter:: evunit1=501
  integer,parameter:: evunit2=502
  integer,parameter:: evunit3=503

contains
  !> reweighting
  subroutine minnlo_rwgt(filename,LoadHist,histfile,LoadWgt,wgtfile)
    implicit none
    type(fname),intent(in):: filename,histfile,wgtfile
    logical,intent(in):: LoadHist,LoadWgt
    type(hist):: histogram
    integer:: maxev,nwgt,iev
    type(fname):: newfile
    type(rwgt_combination):: sc_comb
    type(rwgt_gamma):: gam_hbb
    type(hepev):: event
    real(xprec):: mh,mb

    ! count events
    call count_events(filename,maxev)

    ! inspect one event
    call inspect_event(filename,nwgt)

    ! read off higgs mass
    call inspect_higgs(filename,mh,mb)

    ! load histogram
    if( LoadHist )then
      ! load histogtam from file
      histogram= hist_load(histfile)
    else
      ! dummy histogram
      ! analyse file without h(y3) function by setting y3ref=-999
      call analyse_file(filename,-999.0_xprec,-999,histogram,verbose=.false.)
    endif

    ! open event file
    call fname_open(filename,evunit1)

    ! create empty event file
    newfile= fname_assign(trim(filename%name)//"-minnlo")
    call fname_create(newfile,evunit2)

    ! prepare scale combinations
    sc_comb= rwgt_combination_init(nwgt,LoadWgt,wgtfile)
    gam_hbb= rwgt_gamma_init(mh,mb,sc_comb,histogram)

    ! write to stdout
    write(*,*)'--------------------------------------------------'
    write(*,*)'--> start reweighting'

    ! copy lhe header and add new weights
    call copy_lhe_start(evunit1,evunit2)
    call modify_lhe_header(evunit1,evunit2,nwgt,sc_comb)
    call copy_lhe_init(evunit1,evunit2)

    ! loop over events
    do iev=1,maxev
      call load_event(evunit1,event)
      call minnlo_rwgt_event(sc_comb,gam_hbb,event)
      call write_event(evunit2,event) 
      if( mod(iev,10000).eq.0 ) write(*,'(a,i8)')' --> processed events:',iev
    enddo
    write(*,*)'--------------------------------------------------'
    write(*,'(a,i8)')' --> finished reweighting; number of events:',iev-1

    call finish_lhe(evunit1,evunit2)
    
    return
  end subroutine minnlo_rwgt

  !> this function initialises scale combinations
  function rwgt_combination_init(nwgt,LoadComb,filename) result(res)
    implicit none
    type(rwgt_combination):: res
    integer,intent(in):: nwgt
    logical,intent(in):: LoadComb
    type(fname),intent(in):: filename
    character(len=64):: xstring
    integer:: ios
    integer:: icomb,innlo,iwgt

    if( LoadComb )then
      ! count combinations
      icomb=0
      open(unit=evunit3,file=filename%name,status='old',iostat=ios)
      if( ios.ne.0 ) call error("rwgt_combination_init: \n Problem opening file: "//filename%name)
      do while ( ios.eq.0 )
        read(evunit3,fmt='(a)',iostat=ios) xstring
        if( ios.eq.0 ) icomb= icomb + 1
      enddo
      close(evunit3)

      ! save ncomb and allocate
      res%ncomb= icomb
      allocate( res%lheScale(res%ncomb) )
      allocate( res%nnloScale(res%ncomb) )
      
      ! load combinations
      open(unit=evunit3,file=filename%name,status='old',iostat=ios)
      if( ios.ne.0 ) call error("rwgt_combination_init: \n Problem opening file: "//filename%name)
      do icomb=1,res%ncomb
        read(evunit3,fmt='(a)',iostat=ios) xstring
        read(xstring,*) res%lheScale(icomb),res%nnloScale(icomb)
        if( res%lheScale(icomb).gt.nwgt ) call error("rwgt_combination_init: lheScale > nwgt")
      enddo
      close(evunit3)
    else
      !>> if wgtfile not specified, prepare all weights
      res%ncomb= nwgt * 3
      allocate( res%lheScale(res%ncomb) )
      allocate( res%nnloScale(res%ncomb) )
      icomb=0
      do iwgt=1,nwgt
        do innlo=1,3
          icomb= icomb+1
          res%lheScale(icomb)= iwgt
          res%nnloScale(icomb)= two**( innlo - 2 )
        enddo
      enddo
    endif

    return
  end function rwgt_combination_init
  
  !>> add description of new weights
  subroutine modify_lhe_header(unit1,unit2,nwgt,rwgt_comb)
    implicit none
    integer,intent(in):: unit1,unit2,nwgt
    type(rwgt_combination),intent(in):: rwgt_comb
    character*250:: xstring,str
    integer:: is,os
    integer:: icomb

    is=0
    !>> rewrite existing weights in header
    do while( is.ge.0 )
      read(unit=unit1,fmt='(a)',iostat=is) xstring
      if( index(xstring,'</initrwgt>').ne.0 ) exit
      write(unit=unit2,fmt='(a)',iostat=os) trim(xstring)
    enddo
    if (is < 0) then
      stop 'modify_lhe_header: & 
          & End of file reached without finding string </initrwgt>'
    endif


    !>> add new weights to the header
    do icomb=1,rwgt_comb%ncomb
      xstring="<weight id='"
      write(str,'(I0)') nwgt+icomb
      xstring=trim(xstring)//trim(str)//"' > minlo_wgt="
      write(str,'(I0)') rwgt_comb%lheScale(icomb)
      xstring=trim(xstring)//trim(str)//"  nnlo_rescfact="
      write(str,'(F4.2)') rwgt_comb%nnloScale(icomb)
      xstring=trim(xstring)//trim(str)//" </weight>"
      ! write to LHE file
      write(unit=unit2,fmt='(a)',iostat=os) trim(xstring)
    enddo

    !>> finish header
    xstring='</initrwgt>'
    write(unit=unit2,fmt='(a)',iostat=os) trim(xstring)
    is=0
    do while( is.ge.0 )
      read(unit=unit1,fmt='(a)',iostat=is) xstring
      write(unit=unit2,fmt='(a)',iostat=os) trim(xstring)
      if( index(xstring,'</header>').ne.0 ) exit
    enddo

    return
  end subroutine modify_lhe_header

  !>> prepare GammaHbb (minlo_a,minlo_b,nnlo) for reweighting
  function rwgt_gamma_init(mh,mb,rwgt_comb,histogram) result(res)
    implicit none
    type(rwgt_gamma):: res
    real(xprec),intent(in):: mh,mb
    type(rwgt_combination),intent(in):: rwgt_comb
    type(hist),intent(in):: histogram
    integer:: icomb
    character(len=1024):: string,tmpstr
    real(xprec):: renscale
    integer,parameter:: iloop = 2
    real(xprec):: mbOS

    ! set the b-quark mass that will be used for Yukawa calculation (in case mb=0)
    mbOS= mb
    if( mbOS.eq.zero )then
       mbOS= mbOS_value
    endif

    ! allocate
    res%ncomb= rwgt_comb%ncomb
    allocate( res%gam_a(res%ncomb) )
    allocate( res%gam_b(res%ncomb) )
    allocate( res%gam_nnlo(res%ncomb) )
    ! read off y3ref & y3pow
    res%y3ref= histogram%y3ref
    res%y3pow= histogram%y3pow
    ! assign GammaHbb
    do icomb=1,res%ncomb
      res%gam_a(icomb)= histogram%gam_a( rwgt_comb%lheScale(icomb) )
      res%gam_b(icomb)= histogram%gam_b( rwgt_comb%lheScale(icomb) )
      res%gam_nnlo(icomb)= gamma_hbb_nnlo(mh,mbOS,rwgt_comb%nnloScale(icomb))
      ! report values to the stdout
      string=''
      write(tmpstr,'(a,i3)') '>> icomb=',icomb
      string=trim(string)//trim(tmpstr)//":"
      write(tmpstr,'(a,e16.10)')'  GamMiNLOa= ',res%gam_a(icomb)
      string=trim(string)//trim(tmpstr)//","
      write(tmpstr,'(a,e16.10)')'  GamMiNLOb= ',res%gam_b(icomb)
      string=trim(string)//trim(tmpstr)//","
      write(tmpstr,'(a,e16.10)')'  GamNNLO= ',res%gam_nnlo(icomb)
      string=trim(string)//trim(tmpstr)//","
      renscale= mh * rwgt_comb%nnloScale(icomb)
      write(tmpstr,'(a,f6.2,a,f13.10,a,f13.8,a)')'  [  mur= ',renscale,&
          &",  as(mur)= ",alphas_running(renscale**2,iloop),&
          &",  mbMSbar(mur)= ",mbConversion(mbOS,renscale)," ]"
      string=trim(string)//trim(tmpstr)
      write(*,*) trim(string)
    enddo

    return
  end function rwgt_gamma_init

  !>> find higgs mass by inspecting event file
  subroutine inspect_higgs(filename,mh,mb)
    implicit none
    type(fname),intent(in):: filename
    real(xprec),intent(out):: mh,mb
    type(hepev):: sampleEvent
    integer:: ios
    integer,parameter:: id_higgs=25
    integer,parameter:: id_bquark=5
    integer:: ipart

    ! initialise
    mh= -999.0_xprec
    mb= -999.0_xprec

    ! open file
    open(unit=evunit3,file=filename%name,status='old',iostat=ios)
    if( ios.ne.0 ) call error("inspect_event: \n Problem opening file: "//filename%name)

    ! rewind header
    call rewind_header(evunit3)

    ! load one event
    call load_event(evunit3,sampleEvent)

    ! read off higgs mass
    do ipart=1,sampleEvent%nup
      if( sampleEvent%idup(ipart).eq.id_higgs  ) mh= sampleEvent%pup(5,ipart)
      if( sampleEvent%idup(ipart).eq.id_bquark ) mb= sampleEvent%pup(5,ipart)
    enddo

    ! close file
    close(evunit3)

    if( mh.lt.zero ) call error("inspect_higgs: higgs mass not reconstructed")
    if( mb.lt.zero ) call error("inspect_higgs: b-quark mass not reconstructed")

    return
  end subroutine inspect_higgs

  !>> perform reweighting of an event
  subroutine minnlo_rwgt_event(sc_comb,gam_hbb,event)
    implicit none
    type(rwgt_combination),intent(in):: sc_comb
    type(rwgt_gamma),intent(in):: gam_hbb
    type(hepev),intent(inout):: event
    real(xprec):: Qsq
    real(xprec),dimension(:,:),allocatable:: ptrack
    real(xprec):: hval
    integer:: nwgt
    real(xprec),dimension(1:maxwgt_hep):: dsig ! not used in here but passed for consistency
    integer:: icomb,iwgt
    real(xprec):: xNNLO,xMiNLOa,xMiNLOb,xRWGT

    ! perform analysis of an event
    call analyse_event(event, gam_hbb%y3ref, gam_hbb%y3pow, hval, nwgt, dsig)

    ! check number of weights
    if( nwgt.ne.event%nwgt ) call error("minnlo_rwgt_event: problem with number of weights in MiNLO event")

    ! add new weights (MiNNLO)
    iwgt= nwgt
    do icomb=1,gam_hbb%ncomb
      xNNLO=   gam_hbb%gam_nnlo( icomb )
      xMiNLOa= gam_hbb%gam_a( icomb )
      xMiNLOb= gam_hbb%gam_b( icomb )
      ! reweighting factor
      xRWGT= hval * ( xNNLO - xMiNLOb )/(xMiNLOa) + (one-hval)
      ! add new weight to the event record
      iwgt= iwgt + 1
      event%wgtup(iwgt)= event%wgtup( sc_comb%lheScale(icomb) ) * xRWGT
    enddo

    ! update number of weights in the event record
    event%nwgt= iwgt

    return
  end subroutine minnlo_rwgt_event
  
end module mod_minnlo
