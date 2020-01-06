module mod_hepev
  use mod_types
  use mod_files
  implicit none

  private
  public :: hepev
  public :: rewind_header
  public :: count_events
  public :: inspect_event
  public :: load_event
  public :: copy_lhe_start
  public :: copy_lhe_init
  public :: finish_lhe
  public :: write_event
  public :: reset_event
  public :: create_lhe_header

  integer,parameter,public:: maxnup=20
  integer,parameter,public:: maxwgt_hep=200
  integer,parameter:: evunit=700
  
  type hepev !!>> Sec.2 and Sec.2 of hep-ph/0609017
    !>> first line
    integer:: nup,idprup
    real(xprec):: xwgtup,scalup,aqedup,aqcdup
    !>> for each parton
    integer:: idup(maxnup),istup(maxnup),mothup(2,maxnup),icol(2,maxnup)
    real(xprec):: pup(5,maxnup),vtimup(maxnup),spinup(maxnup)
    !>> rwgt string (most likely redundant)
    character*250:: rwgtstring
    !>> weights
    integer:: nwgt
    real(xprec):: wgtup(maxwgt_hep)
  end type hepev

contains
  !-----------------------------------------------------------------------
  subroutine HEP_error(xstring)
    implicit none
    character(len=*), intent(in):: xstring

    write(*,*)'HEP Error!'
    write(*,*)'>> problem with reading the string:'
    write(*,*)trim(xstring)
    write(*,*)''
    stop

    return
  end subroutine HEP_error

  !-----------------------------------------------------------------------
  subroutine rewind_header(unit1)
    implicit none
    integer,intent(in):: unit1
    integer:: ios
    character(len=1024):: xstring

    ios=0
    do while( ios.eq.0 )
      read(unit=unit1,fmt='(a)',iostat=ios) xstring
      if( xstring(1:7).eq.'</init>' ) exit
    enddo

    return
  end subroutine rewind_header

  !-----------------------------------------------------------------------
  subroutine copy_lhe_start(unit1,unit2)
    implicit none
    integer,intent(in):: unit1,unit2
    character*250:: xstring
    integer:: is,os

    is=0
    do while( is.ge.0 )
      read(unit=unit1,fmt='(a)',iostat=is) xstring
      write(unit=unit2,fmt='(a)',iostat=os) trim(xstring)
      !if( index(xstring,'</header>').ne.0 ) exit
      if( index(xstring,'-->').ne.0 ) exit
    enddo
    if (is < 0) then
      stop 'create_lhe_start: & 
          & End of file reached without finding string --> '
    endif

    return
  end subroutine copy_lhe_start

  !-----------------------------------------------------------------------
  subroutine create_lhe_header(iun1,iun2,wgt_header)
    implicit none
    integer,intent(in):: iun1,iun2
    character(len=*),intent(in):: wgt_header(maxwgt_hep)
    character*250:: xstring
    integer:: iwgt,ios

    !>>> scroll through the header of the input file
    ios=0
    do while( ios.ge.0 )
      read(unit=iun1,fmt='(a)',iostat=ios) xstring
      if( trim(xstring).eq.'</header>' ) exit !reached end of header
    enddo
    if (ios < 0) then
      stop 'create_lhe_header: & 
          & End of file reached without finding </header>'
    endif


    !>>> write new header into output file
    write(iun2,'(a)')'<header>'
    write(iun2,'(a)')'<initrwgt>'
    do iwgt=1,maxwgt_hep
      if( trim(wgt_header(iwgt)).eq.'' )then
        exit
      else
        write(iun2,'(a,i3,a,a,a)') &
            & "<weight id='",iwgt,"' > ", &
            & trim(wgt_header(iwgt)), &
            & "</weight>"
      endif
    enddo
    write(iun2,'(a)')'</initrwgt>'
    write(iun2,'(a)')'</header>'

    return
  end subroutine create_lhe_header


  !-----------------------------------------------------------------------
  subroutine copy_lhe_init(unit1,unit2)
    implicit none
    integer,intent(in):: unit1,unit2
    character*250:: xstring
    integer:: is,os

    is=0
    do while( is.ge.0 )
      read(unit=unit1,fmt='(a)',iostat=is) xstring
      write(unit=unit2,fmt='(a)',iostat=os) trim(xstring)
      !       if( index(xstring,'</init>').ne.0 ) exit
      if( trim(xstring) .eq. '</init>' ) exit
    enddo
    if (is < 0) then
      stop 'copy_lhe_init: & 
          & End of file reached without finding string </init>'
    endif


    return
  end subroutine copy_lhe_init

  !-----------------------------------------------------------------------
  subroutine finish_lhe(unit1,unit2)
    implicit none
    integer,intent(in):: unit1,unit2
    character*250:: xstring
    integer:: ios,is,os

    read(unit=unit1,fmt='(a)',iostat=ios) xstring
    write(unit=unit2,fmt='(a)',iostat=ios) trim(xstring)
    if( ios.ne.0 ) call HEP_error('problem with ending of LHE file: '//trim(xstring))
    if( xstring(1:19).ne.'</LesHouchesEvents>' )then
      call HEP_error('expected "</LesHouchesEvents>", read: '//trim(xstring))
    endif

    is=0
    do while( is.ge.0 )
      read(unit=unit1,fmt='(a)',iostat=is) xstring
      if( is.eq.0 ) write(unit=unit2,fmt='(a)',iostat=os) trim(xstring)
      if( index(xstring,'</init>').ne.0 ) exit
    enddo

    return
  end subroutine finish_lhe

  !-----------------------------------------------------------------------
  subroutine reset_event(event)
    implicit none
    type(hepev):: event

    event%nup= -1
    event%idprup= -1
    event%xwgtup= +0d0
    event%scalup= -1d0
    event%aqedup= -1d0
    event%aqcdup= -1d0

    event%idup= 0
    event%istup= 0
    event%mothup= -1
    event%icol= -1
    event%pup= 0d0
    event%vtimup= 0d0
    event%spinup= 0d0

    event%nwgt= -1
    event%wgtup= 0d0

    return
  end subroutine reset_event

  !-----------------------------------------------------------------------
  subroutine load_event(unit1,event)
    implicit none
    integer,intent(in):: unit1
    character*250:: xstring
    integer:: ios,ihep,iwgt
    type(hepev),intent(out):: event
    logical:: read_wgt

    !>> reset event
    call reset_event(event)

    !>>
    read(unit=unit1,fmt='(a)',iostat=ios) xstring
    if( xstring(1:7).eq.'<event>' )then
      continue
    else
      write(*,*)'ERROR:'
      write(*,*)'[[[',trim(xstring),']]]'
      call hep_error('problem with event beginning: '//trim(xstring))
    endif

    !>> read in event header
    read(unit=unit1,fmt='(a)',iostat=ios) xstring
    read(unit=xstring,fmt=*,iostat=ios) &
        & event%nup, event%idprup, &
        & event%xwgtup, event%scalup, &
        & event%aqedup, event%aqcdup
    if( ios.ne.0 ) call hep_error(trim(xstring))

    !>> read in event particles
    do ihep=1,event%nup
      read(unit=unit1,fmt='(a)',iostat=ios) xstring
      read(unit=xstring,fmt=*,iostat=ios) &
          & event%idup(ihep), event%istup(ihep), &
          & event%mothup(1:2,ihep), event%icol(1:2,ihep), &
          & event%pup(1:5,ihep), event%vtimup(ihep), event%spinup(ihep)
    enddo
    read(unit=unit1,fmt='(a)',iostat=ios) xstring
    !>> check if rwgt string present
    if( xstring(1:5).eq.'#rwgt')then
      event%rwgtstring=trim(xstring)
      read(unit=unit1,fmt='(a)',iostat=ios) xstring
    else
      event%rwgtstring=''
    endif

    if( trim(xstring).eq.'<weights>' )then
      read_wgt=.true.
      iwgt=0
      do while( read_wgt )
        read(unit=unit1,fmt='(a)',iostat=ios) xstring
        if( trim(xstring).eq.'</weights>' )then
          read_wgt=.false.
          event%nwgt= iwgt
        else
          iwgt= iwgt+1
          read(unit=xstring,fmt=*,iostat=ios) event%wgtup(iwgt)
          if( ios.ne.0 ) call hep_error('reading weights: '//trim(xstring))
        endif
      enddo
    else
      event%nwgt= 0 !>> no weights found
    endif

    !>>
    read(unit=unit1,fmt='(a)',iostat=ios) xstring

    ! GZ check if lines
    !#Start extra-info-previous-event
    !...
    !# End extra-info-previous-event
    ! are present, if so skip them
    if ( xstring(1:33).eq. '# Start extra-info-previous-event') then
      do while (xstring(1:31).ne. '# End extra-info-previous-event')
        read(unit=unit1,fmt='(a)',iostat=ios) xstring
      enddo
      read(unit=unit1,fmt='(a)',iostat=ios) xstring
    end if


    if( xstring(1:8).eq.'</event>' )then
      continue
    else
      call hep_error('problem event ending: '//trim(xstring))
    endif

    return
  end subroutine load_event

  !-----------------------------------------------------------------------
  subroutine write_event(out,event)
    implicit none
    integer,intent(in):: out
    type(hepev),intent(in):: event
    integer:: ihep,iwgt

    write(out,'(a)') '<event>'
    write(out,210) &
        & event%nup, event%idprup, &
        & event%xwgtup, event%scalup, &
        & event%aqedup, event%aqcdup
    do ihep=1,event%nup
      write(out,220) &
          & event%idup(ihep), event%istup(ihep), &
          & event%mothup(1:2,ihep), event%icol(1:2,ihep), &
          & event%pup(1:5,ihep), event%vtimup(ihep), event%spinup(ihep)
    enddo
    !if( trim(event%rwgtstring).ne.'' ) write(out,'(a)') trim(event%rwgtstring)
    if( event%rwgtstring(1:5).eq.'#rwgt' ) write(out,'(a)') trim(event%rwgtstring)
    if( event%nwgt.ne.0 )then
      write(out,'(a)') '<weights>'
      do iwgt=1,event%nwgt
        write(out,'(e11.5)') event%wgtup(iwgt)
      enddo
      write(out,'(a)') '</weights>'
    endif
    write(out,'(a)') '</event>'

210 format(1p,2(1x,i6),4(1x,e12.5))
220 format(1p,i8,5(1x,i5),5(1x,e16.9),1x,e12.5,1x,e10.3)

    return
  end subroutine write_event

  !-----------------------------------------------------------------------
  subroutine inspect_event(filename,nwgt)
    implicit none
    type(fname),intent(in):: filename
    integer,intent(out):: nwgt
    type(hepev):: sampleEvent
    integer:: ios

    ! initialise
    nwgt= -999

    ! open file
    open(unit=evunit,file=filename%name,status='old',iostat=ios)
    if( ios.ne.0 ) call error("inspect_event: \n Problem opening file: "//filename%name)

    ! rewind header
    call rewind_header(evunit)

    ! load one event
    call load_event(evunit,sampleEvent)

    ! read off number of weights
    nwgt= sampleEvent%nwgt
    if( nwgt.eq.0 ) nwgt=1 !treat xwgtup as the single weight

    ! close file
    close(evunit)

    return
  end subroutine inspect_event

  !-----------------------------------------------------------------------
  subroutine count_events(filename,nev)
    implicit none
    type(fname),intent(in):: filename
    integer,intent(out):: nev
    character*8:: xstring
    integer:: ios

    !>> count events
    open(unit=evunit,file=filename%name,status='old',iostat=ios)
    if( ios.ne.0 ) call error("count_events: \n Problem opening file: "//filename%name)

    nev=0
    do while ( ios == 0 )
      xstring=''
      read(evunit,fmt='(a)',iostat=ios) xstring
      if( trim(xstring).eq.'</event>' ) nev= nev + 1
    end do
    close(evunit)

    return
  end subroutine count_events


end module mod_hepev
