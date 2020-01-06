      program main_pythia8
      implicit none

      include 'LesHouches.h'
      include 'hepevt.h'

      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG

      integer iret,kloop
      integer maxev,iev
      integer ihep,k
      integer nattempt,iatt,nfail

      integer maxloop
      parameter( maxloop=1000 )

      include 'pythia-stuff.f'
      include 'shower-driver.f'

      real * 8 powheginput
      external powheginput

      integer iun
      character * 30 lhefile
      common/clhefile/lhefile

!>>
      real*8 scalup_dec
      real*8 Hdec_hardness
      logical success
      real*8 Hdec_hardness_min  !for statistics

!>> fixing mode (prints out problematic events)
      logical fixing_mode
      parameter( fixing_mode=.false. )

!>> let histograms know what is happening
      WHCPRG='PYTHIA'

!>>> read pythia settings and keep in common block
      call read_pythia_user_settings()

!>>> read driver settings
      call read_driver_settings()

!>> initialise PWHG histograms
      call init_hist

!>> count events in LHE file
      call opencountunit(maxev,iun)

!>> read header of the LHE file
      call lhefreadhdr(iun)           

!>>> set up pythia behaviour
      call pythia_setup(trim(LHEFILE))

!>> reset counters
      nevhep=0 
      nattempt = 0
      nfail=0

      do iev=1,maxev
!>>   read in next event
        call lhefreadev(iun)
        success=.false.         !reset
        Hdec_hardness_min= 1d6  !reset

!>> calculate scalup of decay stage
        call scalup_hbbg_minlo(scalup_dec)

        print*,'@@@@   scalup=',scalup,'   scalup_dec=',scalup_dec,
     $       '   >>>   ratio=',scalup_dec/scalup,'   diff=',abs(scalup_dec/scalup-1d0)
        ! if( abs(scalup_dec/scalup-1d0).gt.1d-5 )stop

      enddo
      
      write(*,*) 'At the end NEVHEP is ',nevhep
      
!>> print out final histograms and statistics
      call pyaend
      write(*,*)''
      write(*,*)'SUMMARY:'
      write(*,*)'# of showers attempted = ',nattempt
      write(*,*)'# of events generated  = ',nevhep
      write(*,*)'# of events abandoned  = ',nfail
      write(*,*)'maxev=',maxev
      write(*,*)''
      
!>> format specifier for event printout
 100  format(i4,2x,i5,2x,i5,2x,i4,1x,i4,2x,i4,1x,i4,2x,5(d10.4,1x))

      return
      end


!#######################################################################
!#######################################################################
!#######################################################################

!=======================================================================
!>>   pythia analysis call
      subroutine pyanal
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
c     check parameters
      logical verbose
      parameter (verbose=.false.)
      real * 8 powheginput
      external powheginput
      nevhep=nevhep+1
      if(abs(idwtup).eq.3) xwgtup=xwgtup*xsecup(1)
      call analysis(xwgtup)
      call pwhgaccumup 
      end

!=======================================================================
!>>   pythia analysis: print histograms
      subroutine pyaend
      character * 20 pwgprefix
      integer lprefix
      common/cpwgprefix/pwgprefix,lprefix
      include 'pwhg_rnd.h'
      call pwhgsetout
      if(rnd_cwhichseed.eq.'none') then
        call pwhgtopout(pwgprefix(1:lprefix)//
     1       'POWHEG+PYTHIA8-output')
      else
        call pwhgtopout(pwgprefix(1:lprefix)//
     1       '-'//rnd_cwhichseed //'-'//
     2       'POWHEG+PYTHIA8-output')
      endif
      end

!=======================================================================
!>>   print event for debugging purposes
      subroutine printleshouches
c     useful for debugging
      call lhefwritev(6)
      end

c...  lhefeader(nlf)
c...  writes event information to a les houches events file on unit nlf. 
      subroutine lhefwritev(nlf)
      implicit none
      integer nlf
      include 'LesHouches.h'
      include 'pwhg_flg.h'
      integer i,j
      write(nlf,'(a)')'<event>'
      write(nlf,210) nup,idprup,xwgtup,scalup,aqedup,aqcdup
      do 200 i=1,nup
        write(nlf,220) idup(i),istup(i),mothup(1,i),
     &       mothup(2,i),icolup(1,i),icolup(2,i),(pup(j,i),j=1,5),
     &       vtimup(i),spinup(i)
 200  continue
      write(nlf,'(a)')'</event>'      
 210  format(1p,2(1x,i8),4(1x,e12.5))
 220  format(1p,i8,5(1x,i5),5(1x,e16.9),1x,e12.5,1x,e10.3)
      end

!=======================================================================
      subroutine get_Hdec_hardness(hardness)
      implicit none
      include 'hepevt.h'
      real*8 hardness
      integer Hid,bid,bbid
      parameter( Hid=25, bid=5, bbid=-5 )

      integer ihep,ihiggs

      integer maxpart
      parameter( maxpart=4 )

      integer iddec(maxpart),nmoms,nkids,icheck
      real*8 pchain(4,maxpart), pmoms(4,maxpart)
      real*8 hardness_tmp
      real*8 phiggs(4)

      real*8 phepDot
      external phepDot
      
!>> reset
      hardness= -1d0
      
!>> find last Higgs in the event record
      do ihep=1,nhep
        if( idhep(ihep).eq.Hid )then
          ihiggs= ihep
        endif
      enddo

!>> register first entry on the p_chain (needed to boost into Higgs rest frame)
      phiggs(:)= phep(1:4,ihiggs)
      
!>> look for Higgs direct descendants
      nkids= jdahep(2,ihiggs) - jdahep(1,ihiggs) + 1
      if( .not.(nkids.eq.3 .or. nkids.eq.4) )then
        write(*,*)'ERROR: Higgs direct descendants = ',nkids
        write(*,*)'>> this should not happen'
        write(*,*)'>> expected: "nkids=3" or "nkids=4"'
        call printleshouches
        stop
      endif

!>> reset hardness
      hardness= -1d0

!>> check splitting of each Higgs direct descendant
      do icheck= jdahep(1,ihiggs),jdahep(2,ihiggs)
!>> check if splitting is OK
        if( jdahep(2,icheck)-jdahep(1,icheck).gt.1 )then
          write(*,*)'ERROR: found splitting to more than 2 particles'
          write(*,*)'>> #in= ',icheck
          write(*,*)'>> #out={',jdahep(1,icheck),jdahep(2,icheck),'}'
          call printleshouches
          stop
        endif

        if( jdahep(2,icheck)-jdahep(1,icheck).eq.0 )then
!>> no branching on this leg at all
!>> DO NOTHING
        else
!>> register splitting on the chain
          pchain(:,1)= phep(1:4, jdahep(1,icheck))
          pchain(:,2)= phep(1:4, jdahep(2,icheck))
          call boost2reson4(phiggs,2,pchain(1:4,1:2),pchain(1:4,1:2))
          hardness_tmp= sqrt( 
     $         2d0*phepDot( pchain(:,1),pchain(:,2) )
     $         * pchain(4,2) / pchain(4,1) )
        endif

!>> update hardness
        hardness= max( hardness, hardness_tmp )
      enddo
!     !>>> at this stage "hardness" may be equal to "-1" in case neither
!     !>>> of particles (b,b~,x,x~) has split...  x={b,q,g}

      return
      end


!=======================================================================
      subroutine copylh
      implicit none
      include 'LesHouches.h'
      integer idbmupz,pdfgupz,pdfsupz,idwtupz,nprupz,lprupz
      double precision ebmupz,xsecupz,xerrupz,xmaxupz
      common /heprups/ idbmupz(2),ebmupz(2),pdfgupz(2),pdfsupz(2),
     &     idwtupz,nprupz,xsecupz(maxpup),xerrupz(maxpup),
     &     xmaxupz(maxpup),lprupz(maxpup)
      integer nupz,idprupz,idupz,istupz,mothupz,icolupz
      double precision xwgtupz,scalupz,aqedupz,aqcdupz,pupz,vtimupz,spinupz
      common/hepeups/nupz,idprupz,xwgtupz,scalupz,aqedupz,aqcdupz,
     &     idupz(maxnup),istupz(maxnup),mothupz(2,maxnup),
     &     icolupz(2,maxnup),pupz(5,maxnup),vtimupz(maxnup),
     &     spinupz(maxnup)
      idbmupz = idbmup
      pdfgupz = pdfgup
      pdfsupz = pdfsup
      idwtupz = idwtup
      nprupz  = nprup
      lprupz  = lprup

      ebmupz  =       ebmup   
      xsecupz =       xsecup  
      xerrupz =       xerrup  
      xmaxupz =       xmaxup   

      nupz       =      nup   
      idprupz    =      idprup
      idupz      =      idup  
      istupz     =      istup 
      mothupz    =      mothup
      icolupz    =      icolup
      
      xwgtupz    =      xwgtup
      scalupz    =      scalup
      aqedupz    =      aqedup
      aqcdupz    =      aqcdup
      pupz       =      pup   
      vtimupz    =      vtimup
      spinupz    =      spinup

      end
      
!=======================================================================
      subroutine checklh
      implicit none
      include 'LesHouches.h'
      integer idbmupz,pdfgupz,pdfsupz,idwtupz,nprupz,lprupz
      double precision ebmupz,xsecupz,xerrupz,xmaxupz
      common /heprups/ idbmupz(2),ebmupz(2),pdfgupz(2),pdfsupz(2),
     &     idwtupz,nprupz,xsecupz(maxpup),xerrupz(maxpup),
     &     xmaxupz(maxpup),lprupz(maxpup)
      integer nupz,idprupz,idupz,istupz,mothupz,icolupz
      double precision xwgtupz,scalupz,aqedupz,aqcdupz,pupz,vtimupz,spinupz
      common/hepeups/nupz,idprupz,xwgtupz,scalupz,aqedupz,aqcdupz,
     &     idupz(maxnup),istupz(maxnup),mothupz(2,maxnup),
     &     icolupz(2,maxnup),pupz(5,maxnup),vtimupz(maxnup),
     &     spinupz(maxnup)
      if(sum(abs(idbmupz - idbmup)).ne.0
     1     .or. sum(abs(pdfgupz - pdfgup)).ne.0
     2     .or. sum(abs(pdfsupz - pdfsup)).ne.0
     3     .or. idwtupz - idwtup .ne.0
     4     .or. nprupz  - nprup .ne.0
     5     .or. sum(abs(lprupz  - lprup)).ne.0 ) goto 998

      if(    sum(abs(ebmupz  -       ebmup  ))  .ne.0
     1     .or.  sum(abs(xsecupz -       xsecup ))  .ne.0
     1     .or.  sum(abs(xerrupz -       xerrup ))  .ne.0
     1     .or.  sum(abs(xmaxupz -       xmaxup ))  .ne.0) goto 998

      if( nupz   -    nup     .ne.0
     1     .or. idprupz    -      idprup   .ne.0
     1     .or. sum(abs( idupz      -      idup  )).ne.0
     1     .or. sum(abs( istupz     -      istup )).ne.0
     1     .or. sum(abs( mothupz    -      mothup)).ne.0
     1     .or. sum(abs( icolupz    -      icolup)).ne.0 ) goto 998

      if(    xwgtupz    -      xwgtup   .ne.0
     1     .or.  scalupz    -      scalup   .ne.0
     1     .or.  aqedupz    -      aqedup   .ne.0
     1     .or.  aqcdupz    -      aqcdup   .ne.0
     1     .or.  sum(abs( pupz       -      pup   )).ne.0
     1     .or.  sum(abs( vtimupz    -      vtimup)).ne.0
     1     .or.  sum(abs( spinupz    -      spinup)).ne.0) goto 998
      return
 998  write(*,*) ' checklh: fails ...'
      call exit(-1)

      end

!=======================================================================
      subroutine resetlh
      implicit none
      include 'LesHouches.h'
      integer idbmupz,pdfgupz,pdfsupz,idwtupz,nprupz,lprupz
      double precision ebmupz,xsecupz,xerrupz,xmaxupz
      common /heprups/ idbmupz(2),ebmupz(2),pdfgupz(2),pdfsupz(2),
     &     idwtupz,nprupz,xsecupz(maxpup),xerrupz(maxpup),
     &     xmaxupz(maxpup),lprupz(maxpup)
      integer nupz,idprupz,idupz,istupz,mothupz,icolupz
      double precision xwgtupz,scalupz,aqedupz,aqcdupz,pupz,vtimupz,spinupz
      common/hepeups/nupz,idprupz,xwgtupz,scalupz,aqedupz,aqcdupz,
     &     idupz(maxnup),istupz(maxnup),mothupz(2,maxnup),
     &     icolupz(2,maxnup),pupz(5,maxnup),vtimupz(maxnup),
     &     spinupz(maxnup)
      idprup = idprupz
      end

!=======================================================================
      subroutine pythia_option(string)
      character * (*) string
      character * 1 null
      null=char(0)
      call  pythia_option0(trim(string)//null)
      end

!=======================================================================
      function phepDot(p_A,p_B)
      implicit none
      real * 8  phepDot
      real * 8  p_A(4),p_B(4)
      phepDot=p_A(4)*p_B(4)-p_A(1)*p_B(1)
     1     -p_A(2)*p_B(2)-p_A(3)*p_B(3)
      end

!=======================================================================
!>>>  read pythia settings
      subroutine read_pythia_user_settings()
      implicit none

      include 'pythia-stuff.f'

      real*8 powheginput
      external powheginput

!>> pythia 8 tune
      py8tune = powheginput("#py8tune")
      if( py8tune.lt.0 ) py8tune= 14 !>> default: Monash2013 tune

!>> turn on/off hadronisation
      nohad = powheginput("#nohad")
      if( nohad.lt.0 ) nohad= 1 !>> default: no hadronisation

!>> turn on/off MPI
      nompi = powheginput("#nompi")
      if( nompi.lt.0 ) nompi= 1 !>> default: no MPI

!>> shower radiation from production stage (including partons in
!>> the final state from production)
      noprod = powheginput("#noprod")
      if( noprod.lt.0 ) noprod= 0 !>> default radiation from production = ON

!>> shower radiation from Higgs decay
      nodec = powheginput("#nodec")
      if( nodec.lt.0 ) nodec= 0 !>> default radiation from decay = ON

      write(*,*)'>> Options PYTHIA8'
      write(*,*)'    py8tune = ',py8tune
      write(*,*)'    nohad   = ',nohad
      write(*,*)'    nompi   = ',nompi
      write(*,*)'    noprod  = ',noprod
      write(*,*)'    nodec   = ',nodec
      write(*,*)''
      
      return
      end

!=======================================================================
!>>>  read driver settings
      subroutine read_driver_settings()
      implicit none

      include 'shower-driver.f'

      real*8 powheginput
      external powheginput


!>> read "scalupfac"
      scalupfac=powheginput('#scalupfac')
      if( scalupfac.lt.0 ) scalupfac=1


      write(*,*)'>> Options of the shower driver:'
      write(*,*)' scalupfac = ',scalupfac
      write(*,*)''

      return
      end

!=======================================================================
      subroutine pythia_setup(LHEFILE)
      implicit none

      character*250 LHEFILE
      include 'pythia-stuff.f'

c     canveto MUST be set before pythia_init to be effective     
!>> Pythia does not veto radiation from decay, we do it ourselves
      canveto= 0

!>> turn off ME corrections by default
      call pythia_option("TimeShower:MEcorrections = off");
      call pythia_option("SpaceShower:MEcorrections = off");
      call pythia_option("TimeShower:MEafterFirst = off");
      call pythia_option("SpaceShower:MEafterFirst = off");

!>> Pythia tune
      if( py8tune.eq.14 )then
        call pythia_option("Tune:pp = 14")
      else
        write(*,*)'WARNING:'
        write(*,*)' Not using Pythia8: Monash2013 tune??'
        write(*,*)' Fix it in the code!'
        stop
      endif

!>> MPI on/off
      if( nompi.eq.1 )then
        call pythia_option("PartonLevel:MPI = off")
      else
        call pythia_option("PartonLevel:MPI = on")
      endif

!>> hadronisation on/off
      if( nohad.eq.1 )then
        call pythia_option("HadronLevel:All = off")
      else
        call pythia_option("HadronLevel:All = on")
      endif

!>> finally, call to initialise pythia
      call pythia_init(trim(LHEFILE))

      return
      end

      
