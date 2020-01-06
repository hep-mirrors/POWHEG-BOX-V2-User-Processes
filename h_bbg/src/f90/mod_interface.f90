module mod_interface
  use mod_hepev
  use mod_analysis
  implicit none

  ! units for file handling
  integer,parameter:: iup=200,iupx=201,iud=202,exun=203

  type wgt_comb
    integer:: ncomb
    integer,dimension(:),allocatable:: wgtprod
    integer,dimension(:),allocatable:: wgtdec
  end type wgt_comb

contains
  !> this subroutine drives the interface process
  subroutine interface_master(prodfiles,decfiles,LoadWgt,wgtfile,BrHbb)
    implicit none
    type(fblock),intent(in):: prodfiles,decfiles
    logical,intent(in):: LoadWgt
    type(fname),intent(in):: wgtfile
    real(xprec),intent(in):: BrHbb
    integer:: nprod,ndec,nev,iev,ifile
    integer:: nev_prod,nev_dec
    integer:: nwgt_prod,nwgt_dec
    real(xprec):: gamHbb(maxwgt_hep)
    logical:: dec_open,prod_open
    type(hepev):: event_prod,event_dec,event_out
    integer:: icount_dec,icount_prod,idec,iprod
    type(wgt_comb):: wgtcomb

    ! count production events
    nprod= 0
    do ifile=1,prodfiles%nfiles
      call count_events(prodfiles%files(ifile),nev)
      nprod= nprod + nev
    enddo

    ! count decay events
    ndec= 0
    do ifile=1,decfiles%nfiles
      call count_events(decfiles%files(ifile),nev)
      ndec= ndec + nev
    enddo

    write(*,*)' Nevents(production) = ',nprod
    write(*,*)' Nevents(decay)      = ',ndec
    write(*,*)'--------------------------------------------------'

    ! check if you have enough decay events
    if( ndec.lt.nprod ) call error("interface_master: not enough decay events")

    ! inspect prod/dec files to count weights
    call inspect_event(prodfiles%files(1),nwgt_prod)
    call inspect_event(decfiles%files(1),nwgt_dec)

    ! scale combinations
    wgtcomb= prepare_wgt_combinations(nwgt_prod,nwgt_dec,LoadWgt,wgtfile)

    ! loop over production events and interface the decay
    prod_open= .false.
    dec_open= .false.
    iprod=0
    idec=0
    do iev=1,nprod
      ! open new production file if necessary
      if( .not.prod_open )then
        if( iprod.ne.0 ) call finish_production_file(iup,iupx)
        iprod= iprod + 1
        call new_production_file(prodfiles,wgtcomb,iprod,iup,iupx,nev_prod)
        prod_open=.true.
        icount_prod=0 !reset counter
      endif
      ! open new decay file if necessary
      if( .not.dec_open )then
        idec= idec + 1
        if( idec.ne.0 ) close(iud)
        call new_decay_file(decfiles,idec,iud,nev_dec,gamHbb)
        dec_open=.true.
        icount_dec=0 !reset counter
      endif
      !>> interface production and decay event
      call load_event(iup,event_prod)
      call load_event(iud,event_dec)
      call combine_prod_dec(event_prod,event_dec,gamHbb,BrHbb,wgtcomb,event_out)
      call write_event(iupx,event_out)
      !>> increase counters
      icount_prod= icount_prod+1
      icount_dec= icount_dec+1
      !>> check if you have already run out of events...
      if( icount_prod.eq.nev_prod ) prod_open=.false.
      if( icount_dec.eq.nev_dec ) dec_open=.false.
      ! report progress
      if( mod(iev,10000).eq.0 ) write(*,'(a,i8)')' --> processed events: ',iev
    enddo

    call finish_production_file(iup,iupx)
    close(iud)

    return
  end subroutine interface_master

  !> this subroutine rewrites ending of the production file
  subroutine finish_production_file(iun1,iun2)
    implicit none
    integer,intent(in):: iun1,iun2
    character*250:: xstring
    integer:: is,os

    !>> rewrite input file until the end is reached
    is=0
    do while( is.eq.0 )
      read(unit=iun1,fmt='(a)',iostat=is) xstring
      if( is.eq.0 )then
        write(unit=iun2,fmt='(a)',iostat=os) trim(xstring)
      else
        exit
      endif
    enddo

    close(iun1)
    close(iun2)

    return
  end subroutine finish_production_file

  !> this subroutine loads new production file
  subroutine new_production_file(prodfiles,wgtcomb,iprod,iun,oun,nev_prod)
    implicit none
    type(fblock),intent(in):: prodfiles
    type(wgt_comb),intent(in):: wgtcomb
    integer,intent(in):: iprod
    integer,intent(in):: iun,oun
    integer,intent(out):: nev_prod
    type(fname):: file_in,file_out
    character(len=250):: wgt_header(maxwgt_hep)
    integer:: iwgt

    ! check if any production file is still left
    if( iprod.gt.prodfiles%nfiles )then
      write(*,*)'>>> All production files have been processed!'
      return
    endif

    ! report new file
    file_in= prodfiles%files(iprod)
    file_out= fname_assign( trim(prodfiles%files(iprod)%name)//"-hbb" )
    write(*,*)'Loading new production file: '//trim(file_in%name)

    ! count events
    call count_events(prodfiles%files(iprod),nev_prod)

    ! open files
    call fname_open(file_in,iun)
    call fname_create(file_out,oun)

    !>> prepare weight descriptions
    wgt_header=''
    do iwgt=1,wgtcomb%ncomb
      write(wgt_header(iwgt),'(a,i3,a,i3)') &
          &' production_wgt=',wgtcomb%wgtprod(iwgt),&
          &' decay_wgt=',wgtcomb%wgtdec(iwgt)
    enddo

    ! prepare header
    call copy_lhe_start(iun,oun)
    call create_lhe_header(iun,oun,wgt_header)
    call copy_lhe_init(iun,oun)

    !>> proceed to reading events in main program...
    return
  end subroutine new_production_file

  !> this subroutine loads new decay file
  subroutine new_decay_file(decfiles,idec,iun,nev_dec,gamHbb)
    implicit none
    type(fblock),intent(in):: decfiles
    integer,intent(in):: idec
    integer,intent(in):: iun
    integer,intent(out):: nev_dec
    real(xprec),intent(out):: gamHbb(maxwgt_hep)
    type(fname):: file_dec
    type(hist):: histogram

    ! check if any decay files are still available
    if( idec.gt.decfiles%nfiles )then
      write(*,*)'>>> All decay files have been processed!'
      return
    endif

    ! count events & calculate total GammaHbb ( call analysis with negative "y3ref" )
    file_dec= decfiles%files(idec)
    call analyse_file(file_dec,-999.0_xprec,-999,histogram,verbose=.false.)
    gamHbb(:)= histogram%sum_a(:)/histogram%nev
    nev_dec= histogram%nev

    ! report new decay file
    call fname_open(file_dec,iun)
    write(*,*)'Loading new decay file: '//trim(file_dec%name)

    ! rewind header
    call rewind_header(iun)

    return
  end subroutine new_decay_file

  !> prepare array with weight combinations
  function prepare_wgt_combinations(nprod,ndec,loadwgt,wgtfile) result(res)
    implicit none
    type(wgt_comb):: res
    integer,intent(in):: nprod,ndec
    logical,intent(in)::  loadwgt
    type(fname):: wgtfile
    character(len=64):: xstring
    integer:: icomb,iprod,idec
    integer:: ios

    if( loadwgt )then
      ! count combinations
      icomb=0
      call fname_open(wgtfile,exun)
      do while( ios.eq.0 )
        read(exun,fmt='(a)',iostat=ios) xstring
        if( ios.eq.0 ) icomb= icomb + 1
      enddo
      close(exun)
      ! save ncomb and allocate
      res%ncomb= icomb
      allocate( res%wgtprod(res%ncomb) )
      allocate( res%wgtdec(res%ncomb) )
      ! load combinations
      call fname_open(wgtfile,exun)
      do icomb=1,res%ncomb
        read(exun,fmt='(a)',iostat=ios) xstring
        read(xstring,*) iprod,idec
        if( iprod.gt.nprod ) call error("prepare_wgt_combinations: iprod > nwgt(prod)")
        if( idec.gt.ndec ) call error("prepare_wgt_combinations: idec > nwgt(dec)")
        res%wgtprod(icomb)= iprod
        res%wgtdec(icomb)= idec
      enddo
      close(exun)
    else
      ! all possible combinations
      res%ncomb= nprod * ndec
      allocate( res%wgtprod(res%ncomb) )
      allocate( res%wgtdec(res%ncomb) )
      icomb=0
      do iprod=1,nprod
        do idec=1,ndec
          icomb= icomb + 1
          res%wgtprod(icomb)= iprod
          res%wgtdec(icomb)= idec
        enddo
      enddo
    endif

    ! report weight combinations
    write(*,*)'Using following weight combinations:'
    do icomb=1,res%ncomb
      write(*,'(a,i0,a,i0)')' >> wprod=',res%wgtprod(icomb),'  wdec=',res%wgtdec(icomb)
    enddo
    write(*,*)'--------------------------------------------------'

    return
  end function prepare_wgt_combinations

  !> this subroutine interfaces production and decay event records
  subroutine combine_prod_dec(event_prod,event_dec,gamHbb,BrHbb,wgtcomb,event_out)
    use mod_reshuffle
    use mod_transform
    implicit none
    type(hepev),intent(in):: event_prod,event_dec
    real(xprec),intent(in):: gamHbb(maxwgt_hep)
    real(xprec),intent(in):: BrHbb
    type(wgt_comb),intent(in):: wgtcomb
    type(hepev),intent(out):: event_out
    real(xprec):: MHprod
    real(xprec),dimension(:,:),allocatable:: pdec
    real(xprec),dimension(:,:),allocatable:: pdecReshuffled
    real(xprec),dimension(:,:),allocatable:: pdecRotated
    real(xprec),dimension(:,:),allocatable:: pdecBoosted
    real(xprec),dimension(:),allocatable:: masses
    integer,parameter:: id_higgs= 25
    integer,parameter:: id_bquark= 5
    real(xprec):: boostvec(1:4)
    integer:: idec,iup,iset,ndec
    integer:: iwgt,iwgt_dec,iwgt_prod
    real(xprec):: wgt_prod,wgt_dec
    integer:: ihiggs
    real(xprec):: phi,costh

    ! copy data from event(prod/dec) to event(out)
    if( event_dec%nup.eq.7 )then
      ndec=4
    elseif( event_dec%nup.eq.6 )then
      ndec=3
    else
      call error("combine_prod_dec: incorrect number of decay particles!")
    endif

    call reset_event(event_out)
    event_out%nup= event_prod%nup + ndec
    event_out%idprup= event_prod%idprup
    event_out%scalup= event_prod%scalup
    event_out%aqedup= event_prod%aqedup
    event_out%aqcdup= event_prod%aqcdup
    event_out%rwgtstring= trim(event_prod%rwgtstring)

    !>> copy and adjust momenta and particles from production file
    ihiggs= -999 !reset
    do iup=1,event_prod%nup
      event_out%idup(iup)= event_prod%idup(iup)
      event_out%istup(iup)= event_prod%istup(iup)
      event_out%mothup(:,iup)= event_prod%mothup(:,iup)
      event_out%icol(:,iup)= event_prod%icol(:,iup)
      event_out%pup(:,iup)= event_prod%pup(:,iup)
      event_out%vtimup(iup)= event_prod%vtimup(iup)
      event_out%spinup(iup)= event_prod%spinup(iup)
      !>> adjust istup for higgs
      if( event_prod%idup(iup).eq.id_higgs )then
        ihiggs= iup ! save position of the higgs in the LHE record
        event_out%istup(iup)= 2 ! higgs is now not a final state particle
        boostvec(1:4)= event_prod%pup(1:4,iup) ! save higgs momentum for boost
        MHprod= event_prod%pup(5,iup) ! keep actual Higgs virtuality to rescale decay momenta later
      endif
    enddo
    if( ihiggs.lt.0 ) call error("combine_prod_dec: higgs not found, ihiggs < 0")

    !>> choose a random angle to rotate the decay products
    phi= two*pi*rand()
    costh= -one + two*rand()

    !>> load decay kinematics
    allocate( pdec(1:4,ndec) )
    allocate( masses(ndec) )
    masses= zero
    do idec=1,ndec
      iup= 3 + idec !>> we omit the first three particles from decay event record
      pdec(1:4,idec)= event_dec%pup(1:4,iup)
      ! read off b-mass
      if( abs(event_dec%idup(iup)).eq.id_bquark ) masses(idec)= event_dec%pup(5,iup)
    enddo

    !>> adjust kinematics ( reshuffle / rotate / boost )
    !
    ! reshuffle
    allocate( pdecReshuffled(1:4,ndec) )
    call reshuffle_momenta(MHprod,ndec,masses,pdec,pdecReshuffled)
    !
    ! rotate
    pdecRotated=rotate_momenta(costh,phi,ndec,pdecReshuffled)
    !
    ! boost
    allocate( pdecBoosted(1:4,ndec) )
    pdecBoosted=boost_momenta(boostvec,ndec,pdecRotated)

    !>> add particles to the event record
    do idec=1,ndec
      iup= 3 + idec !>> we omit the first three particles from decay event record
      iset= event_prod%nup + idec !>> continue recording particles after the entries from production event record
      event_out%idup(iset)= event_dec%idup(iup)
      event_out%istup(iset)= event_dec%istup(iup)
      event_out%mothup(:,iset)= ihiggs !decay products come from higgs
      event_out%icol(:,iset)= event_dec%icol(:,iup) + 200 !shift 5xx --> 7xx
      if(event_out%icol(1,iset)==200) event_out%icol(1,iset)=0
      if(event_out%icol(2,iset)==200) event_out%icol(2,iset)=0
      event_out%pup(1:4,iset)= pdecBoosted(1:4,idec)
      event_out%pup(5,iset)= masses(idec)
      event_out%vtimup(iset)= event_dec%vtimup(iup)
      event_out%spinup(iset)= event_dec%spinup(iup)
    enddo

    !> NOTE: in principle matching off-shellness might introduce some
    !> corrections to the weight, but we neglect them since they are
    !> of order O( GammaH/ MH )

    !>> normally we would need:
    !>>  wgt[total] =
    !>>    = wgt[prod] * propagator(Higgs) * wgt[dec]
    !>> but if Higgs is off-shell in production file,
    !>> then the propagator is included (up to an overall norm)
    !>> so that we can simply put:
    !>> wgt[total] =
    !>>    = dsig * 1/GammaH * dgam
    !>>    = dsig * GamHbb/GammaH * dgam/GamHbb
    !>>    = dsig * BR(Hbb) * dgam/GamHbb
    !>> This procedure should be valid up to O( Hwidth/Hmass ) corrections

    !>> modify weights
    event_out%xwgtup= event_prod%xwgtup * BrHbb * event_dec%xwgtup / gamHbb(1)
    !    write(*,*) 'factor', event_dec%xwgtup, gamma_hbb(1), gamma_hbb(1)/ event_dec%xwgtup

    event_out%nwgt=0
    do iwgt=1,wgtcomb%ncomb
      iwgt_prod= wgtcomb%wgtprod(iwgt)
      iwgt_dec= wgtcomb%wgtdec(iwgt)
      !
      wgt_prod= event_prod%wgtup( iwgt_prod )
      wgt_dec= event_dec%wgtup( iwgt_dec )
      !
      event_out%nwgt= event_out%nwgt + 1
      event_out%wgtup(iwgt) = wgt_prod * BrHbb * wgt_dec / gamHbb(iwgt_dec)
    enddo

    return
  end subroutine combine_prod_dec

end module mod_interface
