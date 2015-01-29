      program main_pythia
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
 
      integer iev,temp,i
      external pydata
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      integer maxpr
      parameter (maxpr=6)
c     mcmaxev
      integer maxev
      common/mcmaxev/maxev
c     pythia6 common
      integer MSTU,MSTJ
      double precision PARU,PARJ
      COMMON/PYDAT1/MSTU(200),PARU(200),MSTJ(200),PARJ(200)
c     photos
      logical use_photos
      common/optionphotos/use_photos
      integer id_v
      logical ok
      real *8 kt2minqed
      common/showerqed/kt2minqed
c     veto QED shower from leptons above the SCALUP value
c     (in pythia6 the default Q_max is the resonance mass)
      integer photostrial,pythiatrial,trial_max
      real * 8 ptrel
      logical lepveto
c     powheg-nc/c-lo
      logical powheg_nc,powheg_c_lo
      common/wgammode/powheg_nc,powheg_c_lo
      real * 8 powheginput
      external powheginput
      integer ngamma
      common/ngamma/ngamma

      use_photos = powheginput("#use_photos") .eq. 1

      powheg_nc  = powheginput("#powheg-nc")  .eq. 1
c QED shower off for powheg_nc
      if(powheg_nc) use_photos=.false.
 
c This is needed by Photos seteps routine
      kt2minqed = powheginput("#kt2minqed")
      if (kt2minqed.le.0d0) kt2minqed  = 1d0  !dressed lepton

c     WHCPRG tells the analysis subroutine which program is calling the
c     analysis
      WHCPRG='PYTHIA'

      call getmaxev(maxev)

c Set up tune
      call setup_PYTHIA_tune

c Set up PYTHIA to accept user processes
      call PYINIT('USER','','',0d0)
      
c Set up initial parameter      
      call setup_PYTHIA_parameters

      if(use_photos) call phoini

      trial_max=10
      
      call PYABEG
      nevhep=0
      do iev=1,maxev
         call lhefreadev(97)
         if(nup.eq.0) then
            write(*,*) ' no event generated; skipping'
            goto 111
         endif
c$$$c DEBUG STARTS *******************************************
c$$$         if(use_photos) then
c$$$         write(*,*) ' incoming Les Houches event **********************'
c$$$         call printleshouches
c$$$         write(*,*) ' End incoming Les Houches event  *****************'
c$$$         endif
c$$$c DEBUG ENDS ********************************************

c     PHOTOS
         if(use_photos) then
            photostrial=0
            call seteps
c position of the W/Z resonance in the LH common block
            id_v=3
c Run PHOTOS until event ok.
c Photos overwrites the phhepevt common block (fills it with photons).
c Must restore it at each loop
 15         continue
c copy LH common to PHHEPEVT common, used by photos
            call lhuptophhepevt(iev)
c$$$            write(*,*) ' incoming hep block for photos **************'
c$$$            call  printphhepblock
c$$$            write(*,*) ' End incoming hep block for photos **************'
c$$$            call checkresmomphhep
c Photos adds photons to  PHHEPEVT common
            call photos_make(id_v)
c$$$            write(*,*) ' outgoing hep block for photos **************'
c$$$            call  printphhepblock
c$$$            call checkresmomphhep
c$$$            write(*,*) ' End outgoing hep block for photos **************'
c check if Photo's photons violate scalup veto
            call pass_veto(ok)

            if (.not.ok) then
               photostrial=photostrial+1
               if(photostrial.le.trial_max) then
                  goto 15
               else
                  write(*,*) 'rejected event thatcannot pass the veto'
                  continue
               endif
            endif
c Copy event from photos hepevt block to the LH block
            call phhepevttolhef
c$$$c DEBUG STARTS *******************************************
c$$$            if(ngamma.gt.1) then 
c$$$               write(*,*) ' outgoing Les Houches event **********************'
c$$$               call printleshouches
c$$$               write(*,*) ' End outgoing Les Houches event  *****************'
c$$$            endif
c$$$c DEBUG ENDS ********************************************
         endif

c     PYTHIA
         pythiatrial = 0
 888     continue
         pythiatrial = pythiatrial + 1
         if(pythiatrial.ge.trial_max) then
            write(*,*) 'rejected event that cannot pass the veto'
            cycle
         endif

         call pyevnt
c     Convert from PYJETS event record to HEPEVT event record
         temp=nevhep
         call pyhepc(1)
         nevhep=temp
c     Print out the event record
         IF (IEV.le.maxpr) THEN 
c     list the event
c            call pystat(2)      ! print cross sections, widths, branchings,...
c            CALL PYLIST(7)      ! print the HEPEUP common block
             CALL PYLIST(5)      ! print the HEPEVT common block
c            CALL PYLIST(2)      ! print the event
c            call PYLIST(1)      ! as PYLIST(2) but with less information
         ENDIF
         
c if QED shower from PYTHIA parton shower, here it applies veto 
         if(.not.use_photos) then
            if(mstj(41).gt.10) then
c     examine_res_photons checks if the photons from the resonance violate scalup.
c     works with pT orederd shower in PYEVNW
               call examine_res_photons(ptrel)
            else
c     if virtuality shower routines (PYEVNT) are used, call old veto routine 
               call scaleupveto_old(ptrel)
            endif
c     if pt_rel(gam-lep) is above SCALUP 
c     veto the event and retry to shower (a maximum of trial_max times)  
            if ((powheg_nc.and.ptrel.gt.0) .or. ptrel .gt.scalup) goto 888

            if(powheg_nc) then
c see if there are other shower photons not from resoannce decay
               call examine_other_photons(ptrel)
               if(ptrel.gt.0) goto 888
            endif

         else
c no photons from resonance decay are allowed
            call examine_res_photons(ptrel)
            if(ptrel.ge.0) goto 888
c no photons from other sources that violate scalup are allowed.
c The shower should take care of that, if pt ordered.
c Pherhaps it is better to veto them explicitly ...
            call examine_other_photons(ptrel)
            if(ptrel.gt.scalup) goto 888
         endif

         call PYANAL

         IF(nevhep.gt.0.and.MOD(nevhep,20000).EQ.0) THEN
            WRITE(*,*)'# of events processed=',iev
            WRITE(*,*)'# of events generated=',NEVHEP
            CALL PYAEND
         ENDIF 
      enddo
 111  continue
      write(*,*) 'At the end NEVHEP is ',nevhep
      write(*,*) 'At the end: #warnings= ',mstu(27),'#errors= ',mstu(23)
C---USER'S TERMINAL CALCULATIONS
      call PYAEND
      END
*
**
*
c Copy a LH event to the photos hep common block
      subroutine lhuptophhepevt(n)
      implicit none
      include 'LesHouches.h'
      include "PhotosHep.h"

      integer n
      logical qedrad
      common/ph_phoqed/qedrad(nmxhep)
      integer idtmp,mothtmp(2),coltmp(2)
      real*8 ptmp(5)

      nhep=nup
      nevhep=n
      isthep(1:nhep)=istup(1:nup)
      idhep(1:nhep)=idup(1:nup)
      jmohep(1:2,1:nhep)=mothup(1:2,1:nup)
      jdahep(1:2,1:nhep)=0
      phep(1:5,1:nhep)=pup(1:5,1:nup)
      qedrad(1:nhep)=.true.

      jdahep(1,3)=4
      if(idhep(6).eq.22.and.jmohep(1,6).eq.3) then
c     W/Zgamma(+j) events, if the photon comes from the resonance
         jdahep(2,3)=6
      elseif(nup.eq.7.and.idhep(7).eq.22.and.jmohep(1,7).eq.3) then
c     W/Zj+gamma events, if the photon comes from the resonance
c     exchange j <-> gamma in the lhe list
         idtmp=idup(6)
         idup(6)=idup(7)
         idup(7)=idtmp
         mothtmp(:)=mothup(:,6)
         mothup(:,6)=mothup(:,7)
         mothup(:,7)=mothtmp(:)
         ptmp(:)=pup(:,6)
         pup(:,6)=pup(:,7)
         pup(:,7)=ptmp(:)
         coltmp(:)=icolup(:,6)
         icolup(:,6)=icolup(:,7)
         icolup(:,7)=coltmp(:)
c     hep list
         idhep(1:nhep)=idup(1:nup)
         jmohep(1:2,1:nhep)=mothup(1:2,1:nup)
         jdahep(1:2,1:nhep)=0
         phep(1:5,1:nhep)=pup(1:5,1:nup)            
c     last daughter is the photon (now number 6) 
         jdahep(2,3)=6
      else
         jdahep(2,3)=5
      endif

      end
*
**
*
c Use the phhep common block to add the photos generated particles
c to the LH common block
      subroutine phhepevttolhef
      implicit none
      include 'LesHouches.h'
      include 'PhotosHep.h'

      integer i,j,mu,nold
      integer icoltmp(2,nhep)

      integer ngamma
      common/ngamma/ngamma

      ngamma=0

c in case no photons were generated by photos
      if(nhep.eq.nup) return

      nold=nup
      nup=nhep
      icoltmp(:,1:nold)=icolup(:,1:nold)
      do i=nold+1,nup
         icoltmp(:,i)=(/0,0/)
      enddo
      istup(1:nup)=isthep(1:nup)
      idup(1:nup)=idhep(1:nup)
      mothup(:,1:nup)=jmohep(:,1:nup)
      pup(:,1:nup)=phep(:,1:nup)

      vtimup(1:nup)=0d0
      spinup(1:nup)=9d0

      do i=1,nup
         if (idup(i).eq.22) then
            ngamma=ngamma+1
            if (icolup(1,i).ne.0.or.icolup(2,i).ne.0) then
               icolup(:,i)=(/0,0/)
               icolup(:,i+1:nup)=icoltmp(:,i:nup-1)
               icoltmp(:,i+1:nup)=icolup(:,i+1:nup)
            endif
         endif
      enddo

      end
*
**
*
      subroutine seteps
c set the photos cutoff parameter for radiation
      implicit none
      include "LesHouches.h"
      real * 8 kt2minqed
      common/showerqed/kt2minqed
      real * 8 alpha,xphcut
      common/phocop/alpha,xphcut

      xphcut = 2*sqrt( kt2minqed )/pup(5,3)

      end
*
**
*
      subroutine pass_veto(ok)
c returns true if all photos generated photons have relative pt 
c (with respect to the emitting lepton) less than scalup
      implicit none
      include "LesHouches.h"
      include "PhotosHep.h"

      logical ok
      real *8 kt2minqed
      common/showerqed/kt2minqed
      real * 8 beta
      real*8 vec(3)
      data vec/0d0,0d0,1d0/
      save vec
      real*8 plep(0:3),ppho(0:3),p_lep_ph(0:3,1:2)
      integer jlep,iph,first_photos
      real*8 pt,ptmin
      logical ini
      data ini/.true./
      save ini
      integer vdecaytemp,iv
      save vdecaytemp

      ok = .false.

      if (ini) then
          ini=.false.
          vdecaytemp=lprup(1)-10000
      endif

c W/Z is at 3
      iv = 3
c Photos puts its photon right after the last particle belonging to
c the resonance in the hep common block. In case of photon radiation,
c this is the 7th particle (2 incoming, W/Z, l+, l-,gamma, 7th particle)
c otherwise it is the 6th particle.
      if(idup(6).eq.22.and.mothup(1,6).eq.iv) then
         first_photos = 7
      else
         first_photos = 6
      endif
c The last photos photon is jdahep(2,iv)
      do iph=first_photos,jdahep(2,iv)
c the leptons are 4 and 5
         ptmin = -1
         do jlep=4,5
            if((idhep(jlep)/2)*2.eq.idhep(jlep)) then
c It is a neutrino, skip
               cycle
            endif

            beta=(phep(4,1)-phep(4,2))/(phep(4,1)+phep(4,2))
c Boost photon and its mother lepton to the partonic CM
            p_lep_ph(0,1) = phep(4,iph)
            p_lep_ph(0,2) = phep(4,jlep)
               
            p_lep_ph(1:3,1) = phep(1:3,iph)
            p_lep_ph(1:3,2) = phep(1:3,jlep)
               
            call mboost(2,vec,-beta,p_lep_ph(0,1),p_lep_ph(0,1))
            
            ppho(:) = p_lep_ph(:,1)
            plep(:) = p_lep_ph(:,2)
            
            call get_ptrelFSR(ppho,plep,pt)

            if(ptmin.lt.0) then
               ptmin = pt
            else
               ptmin = min(pt,ptmin)
            endif
         enddo
            
         if (ptmin**2.lt.kt2minqed) return

         if (ptmin.gt.scalup) return

      enddo
       
      ok = .true.

      end
*
**
*
      subroutine printleshouches
c useful for debugging
      call lhefwritev(6)
      end
*
**
*
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
*
**
*
      subroutine printphhepblock
      implicit none
      include "PhotosHep.h"
      integer j
      write(*,'(a)') '    j   id      ist   mo1  mo2    da1  da2   p'
      do j=1,nhep
         write(*,100) j,idhep(j),isthep(j),jmohep(1,j),jmohep(2,j),
     1             jdahep(1,j),jdahep(2,j), phep(:,j)
      enddo
 100  format(i4,3x,i6,2x,i3,2x,i4,1x,i4,3x,i4,1x,i4,3x(5(d10.4,2x)))
      end
*
**
*
      subroutine checkresmomphhep
      implicit none
      include "PhotosHep.h"
      real * 8 ptot(1:5)
      integer j
      ptot = phep(:,3)
      do j=1,nhep
         if(isthep(j).eq.1.and.jmohep(1,j).eq.3) then
            ptot = ptot - phep(:,j)
         endif
      enddo
      if(sum(abs(ptot(1:4)))/sum(abs(phep(1:4,3))).gt.1d-8) then
         write(*,*) ' checkresmomphhep:',sum(abs(ptot(1:4)))
      endif
      end
