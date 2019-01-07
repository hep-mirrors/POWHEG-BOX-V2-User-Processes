      program main_pythia8
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
      include 'nlegborn.h'
      include 'pwhg_rad.h'
!      include 'pwhg_rwl.h'
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      integer j,k,l,m,iret,kloop,kpy8
      integer maxev,maxevin
      common/mcmaxev/maxev
      integer allrad,nlowhich
      integer ntpdec,ntmdec,tpiddec(8),tmiddec(8)
      real * 8 tpdecsc,tmdecsc,tppdec(4,8),tmpdec(4,8)
      real * 8 wpdecsc,wmdecsc
      common/ctptmdec/tpdecsc,tmdecsc,tppdec,tmpdec,
     1     ntpdec,ntmdec,tpiddec,tmiddec
      integer POWHEGveto
      logical YR4settings
      common/py8settings/POWHEGveto,YR4settings
      real * 8 powheginput,scalupfac,phepdot
      logical weveto,nores,hvq_gen
      real * 8 ub_btilde_corr, ub_remn_corr, ub_corr
      external powheginput
      integer iun
      character * 100 tune
      character * 100 weightGluonToQuark, scaleGluonToQuark, renormMultFac
      character * 100 pdf
      real * 8 bzdRatCut
      integer bzd_status
      real * 8 bzd_r0,bzd_rc,bzd_rs,bzd_rcs,bzd_dfac,bzd_pt2
      common /bzd_read/bzd_r0,bzd_rc,bzd_rs,bzd_rcs,bzd_dfac,bzd_pt2,bzd_status
      real * 8 spaceShower4F

      WHCPRG='PYTHIA'

c     read allrad (default is 1)
      allrad = powheginput("#allrad")
c     whether we are analyzing a run with no resonance info
      nores = powheginput("#nores").eq.1
c     this flag must be present if we are running the hvq generator.
c     the hvq program generates charm, bottom or top depending upon the qmass value
      hvq_gen = powheginput("#qmass") > 0
c     read nlowhich (default is 0). This flag ment:
c     0 all that can radiate is active
c     1 only radiation in production
c     2 only radiation in ??? (check in ttb_NLO_dec
c     It is relevant for the ttb_NLO_dec generator. Here
c     we keep it zero.
      nlowhich=0

      if(powheginput("#LOevents") == 1) then
         allrad = 0
         weveto = .false.
      elseif(nores) then
c     this covers the nores case. allrad must be 0 now (see previous if)
         allrad = powheginput("#allrad")
         if(allrad == 1) then
            write(*,*) " you ca
     $n't use allrad=1 with nores=1, exiting ..."
         endif
         allrad = 0
         if(hvq_gen) then
            write(*,*) " you ca
     $n't use nores=1 with the hvq generator, exiting ..."
            call exit(-1)
         endif
      elseif(hvq_gen) then
         weveto = .false.
c     The hvq program does not generate radiation in decay.  In all
c     cases Pythia should not veto radiation in decays. The following
c     should not matter.
         nlowhich = 1
      elseif(allrad.ne.0) then
c     allrad 1 is for running bbar4l in default mode, and also for ttb_NLO_dec
         allrad=1
c     weveto means the we examine radiation in resonance decays to set
c     Pythia showering scales for resonances. If false, Pythia does not
c     veto radiation in resonance decays. Only production radiation is
c     vetoed according to scalup
         weveto = .true.
      else
c     this covers the allrad 0 case
      endif


      weveto=.true.
!      if(powheginput('#pythiaveto') == 1) then
!         weveto=.false.
!      else      
!        print*,'This binary has to be run with `pythiaveto 1`'
!        call exit(-1)
!      endif
      

      scalupfac=powheginput('#scalupfac')
      if(scalupfac.lt.0) scalupfac=1

c read in btilde and remn corrections factors (used together with ubexcess_correct at the generation stage)

      ub_btilde_corr = powheginput('#ub_btilde_corr')
      if (ub_btilde_corr < 0d0) then
        ub_btilde_corr = 1d0
      endif
      ub_remn_corr = powheginput('#ub_remn_corr')
      if (ub_remn_corr < 0d0) then
        ub_remn_corr = 1d0
      endif

      call opencountunit(maxev,iun)
!      call opencount(maxev)

      call init_hist

      call lhefreadhdr(iun)
!      call lhefreadhdr(97)

      if(powheginput("#pyMEC").eq.0) then
         call pythia_option("TimeShower:MEcorrections = off")
      endif

      if(powheginput("#pyMEaf").eq.0) then
         call pythia_option("TimeShower:MEafterFirst = off")
      endif

      YR4settings = powheginput("#YRShowerSettings").eq.1
      if (.not.YR4settings) then 
         call powheginputstring("#pythiatune", tune)
         if(tune=="") then
          call pythia_option("Tune:pp = 14")
         else
          call pythia_option("Tune:pp = "//tune)
         endif
      else
         print*,'Ignoring pythiatune settings on account of YR4settings'
      endif

      call powheginputstring("#pythiapdf", pdf)
      if(pdf=="") then
        call pythia_option("PDF:pSet = LHAPDF6:NNPDF30_nlo_as_0118")
      else if (pdf=="none") then
!       do nothing
      else
        call pythia_option("PDF:pSet = "//pdf)
      endif

      POWHEGveto = powheginput("#powheghooks")
      if (YR4settings) then 
         print*,'powheghooks is overriden to 0 when 
     $        YRShowerSettigns are in action'
         POWHEGveto = 0
      endif

      bzdRatCut = powheginput("#bzdRatCut")

      call powheginputstring("#weightGluonToQuark", weightGluonToQuark )
      if (.not. weightGluonToQuark == "") then
         call pythia_option("TimeShower:weightGluonToQuark = "//weightGluonToQuark)
      endif
      call powheginputstring("#scaleGluonToQuark", scaleGluonToQuark )
      if (.not. scaleGluonToQuark == "") then
         call pythia_option("TimeShower:scaleGluonToQuark = "//scaleGluonToQuark)
      endif
      call powheginputstring("#renormMultFac", renormMultFac )
      if (.not. renormMultFac == "") then
         call pythia_option("TimeShower:renormMultFac = "//renormMultFac)
      endif

      spaceShower4F = powheginput("#spaceShower4F")
      if (spaceShower4F == 1) then
         call pythia_option("SpaceShower:nQuarkIn = 4")
      endif

      call pythia_init

      nevhep=0
      kpy8 = 0
      maxevin = powheginput('#maxev')
      if (maxevin>0.and.maxevin<=maxev) then
        maxev = maxevin
      endif
      do l=1,maxev

         call lhefreadev(iun)
!         call lhefreadev(97)
c rescale the weight of the event depending on the rad_type (1..btilde, 2..remn)
c   using the ub_..._corr factors
         if (rad_type == 1) then
            ub_corr = ub_btilde_corr
         else if (rad_type == 2) then
            ub_corr = ub_remn_corr
         else 
            ub_corr = 1d0
         endif
!         rwl_weights(1:rwl_num_weights)=
!     c         ub_corr * rwl_weights(1:rwl_num_weights)

c         print*, "rwl_weights:", rwl_weights(1:rwl_num_weights)
         scalup=scalupfac*scalup
         m=1
         if ( bzdRatCut > 0d0 .and. bzd_r0/(bzd_rc+bzd_rs-bzd_rcs) > bzdRatCut ) then
            cycle
         endif

         call copylh
         do kloop=1,1000000
c Insist to shower this event;
            call pythia_next(iret)
            call resetlh
            call checklh
            kpy8 = kpy8+1
            
            if(iret.ne.1) then
               write(*,*) ' return code ',iret
               if(m.eq.1) then
                  write(*,*) ' Pythia could not shower this event'
                  call printleshouches
               endif
               write(*,*) ' retry'
               if(m.gt.4) then
                  write(*,*) ' after 5 attempts'
                  write(*,*) ' abandoning the event'
                  exit
               endif
               m=m+1
            else
               call pythia_to_hepevt(nmxhep,nhep,isthep,
     1              idhep,jmohep,jdahep,phep,vhep)
               exit
            endif
         enddo

         if(iret.eq.1) then
            if(nevhep.lt.10) then
               do j=1,nhep
                  write(*,100)j,isthep(j),idhep(j),jmohep(1,j),
     1           jmohep(2,j),jdahep(1,j),jdahep(2,j), (phep(k,j),k=1,5)
               enddo
            endif
            call pyanal
            if(nevhep.gt.0.and.mod(nevhep,1000).eq.0) then
               write(*,*)'# of events processed=',kpy8
               write(*,*)'# of events generated=',nevhep
               call pyaend
            endif 
         endif
      enddo

      write(*,*) 'At the end NEVHEP is ',nevhep
!:      write(*,*) 'At the end: #warnings= ',mstu(27),' #errors= ',mstu(23)
c---user's terminal calculations
      call pyaend
!      call finalize
 100  format(i4,2x,i5,2x,i5,2x,i4,1x,i4,2x,i4,1x,i4,2x,5(d10.4,1x))
      end


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

      subroutine pyaend
      character * 20 pwgprefix
      integer lprefix
      common/cpwgprefix/pwgprefix,lprefix
      include 'pwhg_rnd.h'

      call pwhgsetout

      if(rnd_cwhichseed.eq.'none') then
         call pwhgtopout(pwgprefix(1:lprefix)//
     1                   'POWHEG+PYTHIA8-output')
      else
         call pwhgtopout(pwgprefix(1:lprefix)//
     1                   '-'//rnd_cwhichseed //'-'//
     2                   'POWHEG+PYTHIA8-output')
      endif

      end

      subroutine printleshouches
c useful for debugging
      call lhefwritev(6)
      end

c...lhefeader(nlf)
c...writes event information to a les houches events file on unit nlf. 
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
     & mothup(2,i),icolup(1,i),icolup(2,i),(pup(j,i),j=1,5),
     & vtimup(i),spinup(i)
 200  continue
      write(nlf,'(a)')'</event>'      
 210  format(1p,2(1x,i8),4(1x,e12.5))
 220  format(1p,i8,5(1x,i5),5(1x,e16.9),1x,e12.5,1x,e10.3)
      end

      subroutine copylh
      implicit none
      include 'LesHouches.h'
      integer idbmupz,pdfgupz,pdfsupz,idwtupz,nprupz,lprupz
      double precision ebmupz,xsecupz,xerrupz,xmaxupz
      common /heprups/ idbmupz(2),ebmupz(2),pdfgupz(2),pdfsupz(2),
     &                idwtupz,nprupz,xsecupz(maxpup),xerrupz(maxpup),
     &                xmaxupz(maxpup),lprupz(maxpup)
      integer nupz,idprupz,idupz,istupz,mothupz,icolupz
      double precision xwgtupz,scalupz,aqedupz,aqcdupz,pupz,vtimupz,spinupz
      common/hepeups/nupz,idprupz,xwgtupz,scalupz,aqedupz,aqcdupz,
     &              idupz(maxnup),istupz(maxnup),mothupz(2,maxnup),
     &              icolupz(2,maxnup),pupz(5,maxnup),vtimupz(maxnup),
     &              spinupz(maxnup)
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

      subroutine checklh
      implicit none
      include 'LesHouches.h'
      integer idbmupz,pdfgupz,pdfsupz,idwtupz,nprupz,lprupz
      double precision ebmupz,xsecupz,xerrupz,xmaxupz
      common /heprups/ idbmupz(2),ebmupz(2),pdfgupz(2),pdfsupz(2),
     &                idwtupz,nprupz,xsecupz(maxpup),xerrupz(maxpup),
     &                xmaxupz(maxpup),lprupz(maxpup)
      integer nupz,idprupz,idupz,istupz,mothupz,icolupz
      double precision xwgtupz,scalupz,aqedupz,aqcdupz,pupz,vtimupz,spinupz
      common/hepeups/nupz,idprupz,xwgtupz,scalupz,aqedupz,aqcdupz,
     &              idupz(maxnup),istupz(maxnup),mothupz(2,maxnup),
     &              icolupz(2,maxnup),pupz(5,maxnup),vtimupz(maxnup),
     &              spinupz(maxnup)
      if(sum(abs(idbmupz - idbmup)).ne.0
     1 .or. sum(abs(pdfgupz - pdfgup)).ne.0
     2 .or. sum(abs(pdfsupz - pdfsup)).ne.0
     3 .or. idwtupz - idwtup .ne.0
     4 .or. nprupz  - nprup .ne.0
     5 .or. sum(abs(lprupz  - lprup)).ne.0 ) goto 998



      if(    sum(abs(ebmupz  -       ebmup  ))  .ne.0
     1 .or.  sum(abs(xsecupz -       xsecup ))  .ne.0
     1 .or.  sum(abs(xerrupz -       xerrup ))  .ne.0
     1 .or.  sum(abs(xmaxupz -       xmaxup ))  .ne.0) goto 998


      if( nupz   -    nup     .ne.0
     1 .or. idprupz    -      idprup   .ne.0
     1 .or. sum(abs( idupz      -      idup  )).ne.0
     1 .or. sum(abs( istupz     -      istup )).ne.0
     1 .or. sum(abs( mothupz    -      mothup)).ne.0
     1 .or. sum(abs( icolupz    -      icolup)).ne.0 ) goto 998

      if(    xwgtupz    -      xwgtup   .ne.0
     1 .or.  scalupz    -      scalup   .ne.0
     1 .or.  aqedupz    -      aqedup   .ne.0
     1 .or.  aqcdupz    -      aqcdup   .ne.0
     1 .or.  sum(abs( pupz       -      pup   )).ne.0
     1 .or.  sum(abs( vtimupz    -      vtimup)).ne.0
     1 .or.  sum(abs( spinupz    -      spinup)).ne.0) goto 998
      return
 998  write(*,*) ' checklh: fails ...'
      call exit(-1)

      end
      
      subroutine resetlh
      implicit none
      include 'LesHouches.h'
      integer idbmupz,pdfgupz,pdfsupz,idwtupz,nprupz,lprupz
      double precision ebmupz,xsecupz,xerrupz,xmaxupz
      common /heprups/ idbmupz(2),ebmupz(2),pdfgupz(2),pdfsupz(2),
     &                idwtupz,nprupz,xsecupz(maxpup),xerrupz(maxpup),
     &                xmaxupz(maxpup),lprupz(maxpup)
      integer nupz,idprupz,idupz,istupz,mothupz,icolupz
      double precision xwgtupz,scalupz,aqedupz,aqcdupz,pupz,vtimupz,spinupz
      common/hepeups/nupz,idprupz,xwgtupz,scalupz,aqedupz,aqcdupz,
     &              idupz(maxnup),istupz(maxnup),mothupz(2,maxnup),
     &              icolupz(2,maxnup),pupz(5,maxnup),vtimupz(maxnup),
     &              spinupz(maxnup)
      idprup = idprupz
      end

      subroutine pythia_option(string)
      character * (*) string
      character * 1 null
      null=char(0)
      call  pythia_option0(trim(string)//null)
      end

      subroutine getparallelparms(parallelstage,xgriditeration)
      implicit none
      integer parallelstage,xgriditeration
      parallelstage = 5
      xgriditeration = 0
      end
