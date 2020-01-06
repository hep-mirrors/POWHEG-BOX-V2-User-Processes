program hdec
  use mod_files
  use mod_settings
  use mod_alphas
  use mod_analysis
  use mod_minnlo
  use mod_interface
  implicit none

  integer,parameter:: ounit=300

  integer:: narg,iarg,iskip
  integer:: imode
  character(len=1024):: xstring
  type(fblock):: files,events
  type(fblock):: ev_dec,ev_prod
  type(hist):: outhist,tmphist
  logical:: ReadArg,LoadWgt,LoadHist
  type(fname):: histfile,wgtfile,outfile
  real(xprec):: xvalue
  integer:: ifile

  narg= command_argument_count()

  ! initialise variables
  files=   fblock_init()
  events=  fblock_init()
  ev_dec=  fblock_init()
  ev_prod= fblock_init()
  LoadWgt=.false.
  LoadHist=.false.
  histfile=fname_assign('dummy_histogram.dat') ! only to initialise variable
  wgtfile=fname_assign('dummy_weights.dat')    ! only to initialise variable
  outfile=fname_assign('dummy_output.dat')     ! only to initialise variable

  ! read mode
  iarg=1
  call get_command_argument(iarg,xstring)
  imode= -999
  if( trim(xstring).eq.'-histprep' ) imode= imode_histprep
  if( trim(xstring).eq.'-histmerge' ) imode= imode_histmerge
  if( trim(xstring).eq.'-minnlo' ) imode= imode_minnlo
  if( trim(xstring).eq.'-interface' ) imode= imode_interface

  if( imode.lt.0 )then
    write(*,*)'ERROR: unrecognised mode!'
    call hdec_usage()
  endif

  ! print usage if no other arguments specified
  if( narg.eq.1 )then
    write(*,*)'ERROR: expecting more arguments!'
    call hdec_usage()
  endif

  ! remaining arguments
  iskip=0
  ReadArg=.true.
  do iarg=2,narg
    if( iskip.gt.0 )then
      iskip= iskip - 1
      cycle
    endif
    if( ReadArg ) call get_command_argument(iarg,xstring)
    if( .not.ReadArg )then
      ReadArg= .true.
    endif
    !
    ! various options
    !
    if( trim(xstring).eq.'-BrHbb' )then
      iskip=1
      call get_command_argument(iarg+1,xstring)
      read(xstring,*) BrHbb_value
      write(*,*)'Setting BrHbb: ',BrHbb_value
    endif
    !
    if( trim(xstring).eq.'-y3ref' )then
      iskip=1
      call get_command_argument(iarg+1,xstring)
      read(xstring,*) y3ref_value
      write(*,*)'Setting y3ref: ',y3ref_value
    endif
    !
    if( trim(xstring).eq.'-y3pow' )then
      iskip=1
      call get_command_argument(iarg+1,xstring)
      read(xstring,*) xvalue
      y3pow_value= int(xvalue)
      write(*,*)'Setting y3pow: ',y3pow_value
    endif
    !
    if( trim(xstring).eq.'-asmz' )then
      iskip=1
      call get_command_argument(iarg+1,xstring)
      read(xstring,*) xvalue
      asmz_value= xvalue
      write(*,*)'Setting as(MZ): ',asmz_value
    endif
    !
    if( trim(xstring).eq.'-zmass' )then
      iskip=1
      call get_command_argument(iarg+1,xstring)
      read(xstring,*) xvalue
      zmass_value= xvalue
      write(*,*)'Setting Z mass: ',zmass_value
    endif
    !
    if( trim(xstring).eq.'-mb' )then
      iskip=1
      call get_command_argument(iarg+1,xstring)
      read(xstring,*) xvalue
      mbOS_value= xvalue
      write(*,*)'Setting b-quark mass (on-shell): ',mbOS_value
    endif
    !
    if( trim(xstring).eq.'-out' )then
      iskip=1
      call get_command_argument(iarg+1,xstring)
      outfile= fname_assign(trim(xstring))
      write(*,*)'Setting output: ',outfile%name
    endif
    !
    if( trim(xstring).eq.'-weights' )then
      LoadWgt=.true.
      iskip=1
      call get_command_argument(iarg+1,xstring)
      wgtfile= fname_assign(trim(xstring))
      write(*,*)'Using weights file: ',wgtfile%name
    endif
    !
    if( trim(xstring).eq.'-hist' )then
      LoadHist=.true.
      iskip=1
      call get_command_argument(iarg+1,xstring)
      histfile= fname_assign(trim(xstring))
      write(*,*)'Using histogram file:  ',histfile%name
    endif
    !
    if( trim(xstring).eq.'-files' )then
      iskip=0
      do while ( ReadArg )
        iskip= iskip + 1
        call get_command_argument(iarg+iskip,xstring)
        if( xstring(1:1).eq.'-' .or. (iarg+iskip).gt.narg )then
          iskip= iskip - 1
          ReadArg= .false.  !reached next specifier or end of arguments, proceed to the main loop
        else
          files= fblock_add(files,trim(xstring))
        endif
      enddo
      cycle
    endif
    !
    if( trim(xstring).eq.'-events' )then
      iskip=0
      do while ( ReadArg )
        iskip= iskip + 1
        call get_command_argument(iarg+iskip,xstring)
        if( xstring(1:1).eq.'-' .or. (iarg+iskip).gt.narg )then
          iskip= iskip - 1
          ReadArg= .false.  !reached next specifier or end of arguments, proceed to the main loop
        else
          events= fblock_add(events,trim(xstring))
        endif
      enddo
    endif
    !
    if( trim(xstring).eq.'-decay' )then
      iskip=0
      do while ( ReadArg )
        iskip= iskip + 1
        call get_command_argument(iarg+iskip,xstring)
        if( xstring(1:1).eq.'-' .or. (iarg+iskip).gt.narg )then
          iskip= iskip - 1
          ReadArg= .false.  !reached next specifier or end of arguments, proceed to the main loop
        else
          ev_dec= fblock_add(ev_dec,trim(xstring))
        endif
      enddo
      cycle
    endif
    !
    if( trim(xstring).eq.'-prod' )then
      iskip=0
      do while ( ReadArg )
        iskip= iskip + 1
        call get_command_argument(iarg+iskip,xstring)
        if( xstring(1:1).eq.'-' .or. (iarg+iskip).gt.narg )then
          iskip= iskip - 1
          ReadArg= .false.  !reached next specifier or end of arguments, proceed to the main loop
        else
          ev_prod= fblock_add(ev_prod,trim(xstring))
        endif
      enddo
      cycle
    endif
  enddo

  ! running the program
  select case (imode)
  case(imode_histprep)
    !#######################################################################
    write(*,*)'--------------------------------------------------'
    write(*,*)'hdec: preparing histograms for reweighting...'
    write(*,*)'--------------------------------------------------'
    write(*,'(a,f16.14)')' ## y3ref = ',y3ref_value
    write(*,'(a,i0)')' ## y3pow = ',y3pow_value
    write(*,*)'--------------------------------------------------'
    do ifile=1,events%nfiles
      if( ifile.eq.1 )then
        call analyse_file(events%files(ifile),y3ref_value,y3pow_value,outhist,verbose=.true.)
      else
        call analyse_file(events%files(ifile),y3ref_value,y3pow_value,tmphist,verbose=.true.)
        outhist= hist_merge(outhist,tmphist)
      endif
    enddo
    call fname_create(outfile,ounit)
    call hist_print(ounit,outhist)
    close(ounit)
  case(imode_histmerge)
    !#######################################################################
    write(*,*)'--------------------------------------------------'
    write(*,*)'hdec: merging histograms for reweighting...'
    write(*,*)'--------------------------------------------------'
    do ifile=1,files%nfiles
      if( ifile.eq.1 )then
        outhist= hist_load(files%files(ifile))
      else
        tmphist= hist_load(files%files(ifile))
        outhist= hist_merge(outhist,tmphist)
      endif
    enddo
    call fname_create(outfile,ounit)
    call hist_print(ounit,outhist)
    close(ounit)
  case( imode_minnlo)
    !#######################################################################
    write(*,*)'--------------------------------------------------'
    write(*,*)'hdec: nnlo reweighting...'
    write(*,*)'--------------------------------------------------'
    ! if using h(y3) option for reweighting
    do ifile=1,events%nfiles
      call minnlo_rwgt(events%files(ifile),LoadHist,histfile,LoadWgt,wgtfile)
    enddo
  case( imode_interface )
    !#######################################################################
    write(*,*)'--------------------------------------------------'
    write(*,*)'hdec: interface production & decay...'
    write(*,*)'--------------------------------------------------'
    ! interface production and decay
    call interface_master(ev_prod,ev_dec,LoadWgt,wgtfile,BrHbb_value)
  end select
  
  return
end program hdec

!#### usage
subroutine hdec_usage()
  implicit none

  write(*,*)'Usage: '
  write(*,*)'    >> ./hdec [mode] [options]'
  write(*,*)''
  write(*,*)'    [mode] == specifies mode of the program (has to be first)'
  write(*,*)'    [options] == various options (see below)'
  write(*,*)''
  write(*,*)''
  write(*,*)'### Mode 1: analysing event files'
  write(*,*)''
  write(*,*)'    >> ./hdec -histprep -events [list of event files] { -y3ref [floatVal] -y3exp [integerVal] } -out [output file]'
  write(*,*)''
  write(*,*)'    {...} == optional arguments'
  write(*,*)''
  write(*,*)''
  write(*,*)'### Mode 2: merging histogram files'
  write(*,*)''
  write(*,*)'    >> ./hdec -histmerge -files [list of histogram files] -out [output file]'
  write(*,*)''
  write(*,*)'    {...} == optional arguments'
  write(*,*)''
  write(*,*)''
  write(*,*)'### Mode 3: MiNNLO reweighting'
  write(*,*)''
  write(*,*)'    >> ./hdec -minnlo { -hist [histogram file] } { -weights [file with wgt combinations] } -events [list of event files] '
  write(*,*)''
  write(*,*)'    {...} == optional arguments'
  write(*,*)''
  write(*,*)''
  write(*,*)'### Mode 4: Production-decay interface'
  write(*,*)''
  write(*,*)'    >> ./hdec -interface -decay [list of decay files] -prod [list of production files] { -weights [file with weight combinations] } { -BrHbb [value] }'
  write(*,*)''
  write(*,*)'    {...} == optional arguments'
  write(*,*)''
  write(*,*)''
  stop

  return
end subroutine hdec_usage
