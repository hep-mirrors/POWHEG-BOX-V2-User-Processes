      program main_pythia
      implicit none
      include 'LesHouches.h'
      include 'hepevt.h'
 
      integer iev,temp,i
      external pydata
      character * 6 WHCPRG
      common/cWHCPRG/WHCPRG
      integer maxpr
c DEBUG *****
      parameter (maxpr=1)
c END DEBUG **********
c     mcmaxev
      integer maxev
      common/mcmaxev/maxev
      integer id_z

      logical ok

      real * 8 powheginput
      external powheginput
      real * 8 ptrel
      real * 8 ptrel1
      real *8 kt2minqed
      common/showerqed/kt2minqed
      logical use_photos
      common/optionphotos/use_photos
c
c     veto QED shower from leptons above the SCALUP value
c     (in pythia6 the default Q_max is the resonance mass)
      logical lepveto,lepveto1
      integer photostrial,pythiatrial,trial_max     
c if EWK corrections are ON in PowHeg, QEDPS has to be vetoed
c if EWK corrections are OFF in PowHeg, QEDPS should not be vetoed
      logical mustveto_gamma,not_finite_kin_lh
      common/optionpwhggamma/mustveto_gamma
      integer iun
c This is needed by Photos seteps routine
      kt2minqed = powheginput("#kt2minqed")
      if (kt2minqed.le.0d0) kt2minqed  = 0.001d0**2
c     initialize parameters for QED lepton-shower veto 
      trial_max=100

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

      call PYABEG
      nevhep=0
      do iev=1,maxev
c Count the number of trials for showering each LH event
 1       call lhefreadev(97)
         if(not_finite_kin_lh()) goto 1
c$$$c DEBUG STARTS *******************************************
c$$$         write(*,*) ' incoming Les Houches event **********************'
c$$$         call printleshouches
c$$$         write(*,*) ' End incoming Les Houches event  *****************'
c$$$c DEBUG ENDS ********************************************

         if(nup.eq.0) then
            write(*,*) ' no event generated; skipping'
            goto 111
         endif

         if(use_photos) then
            photostrial=0
            call seteps
c position of the Z resonance in the LH common block
            id_z=3
c Run PHOTOS until event ok.
c Photos overwrites the phhepevt common block
c (fills it with photons).
c Must restore it at each loop
 15         continue
c copy LH common to PHHEPEVT common, used by photos
            call lhuptophhepevt(iev)
c$$$            write(*,*) ' incoming hep block for photos **************'
c$$$            call  printphhepblock
c$$$            write(*,*) ' End incoming hep block for photos **************'
c$$$            call checkresmomphhep
c Photos adds photons to  PHHEPEVT common
            call photos_make(id_z)
c$$$            write(*,*) ' outgoing hep block for photos **************'
c$$$            call  printphhepblock
c$$$            call checkresmomphhep
c$$$            write(*,*) ' End outgoing hep block for photos **************'
            if(mustveto_gamma) then
c check if Photo's photons violate scalup veto
               call pass_veto(ok)
               if (.not.ok) then
                  photostrial=photostrial+1
                  if(photostrial.le.trial_max) then
                     goto 15
                  else
                     write(*,*) 'rejected event that cannot pass the veto'
                     continue
                  endif
               endif
            endif
c Copy event from photos hepevt block to the LH block
            call phhepevttolhef
c$$$c DEBUG STARTS *******************************************
c$$$         write(*,*) ' incoming Les Houches event **********************'
c$$$         call printleshouches
c$$$         write(*,*) ' End incoming Les Houches event  *****************'
c$$$c DEBUG ENDS ********************************************

         endif
c PYTHIA
         pythiatrial = 0
 888     call pyevnt
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
c
c if QED shower from MC parton shower, here it applies veto 
c
         if( .not. use_photos .and. mustveto_gamma) then
c examine_res_photons checks if the photons from the resonance violate scalup.
            call examine_res_photons(lepveto,ptrel)
c START CHECK *********************************************************
c Check that examine_ptotons yields the same result as old veto routine
c scalupveto1 (commented in the rest of the code
c               call scalupveto1(lepveto1,ptrel1)
c               if((lepveto.and..not.lepveto1)
c     1              .or.(lepveto1.and..not.lepveto)) then
c                  write(*,*) ' problems ... lepveto,lepveto1 differ'
c                  call printleshouches
c                  call printhepblock
c                  call scalupveto1(lepveto,ptrel)
c                  call examine_res_photons(lepveto1,ptrel1)
c               endif
c               if(abs((ptrel-ptrel1)/(ptrel+ptrel1)).gt.0.01) then
c                  write(*,*) ' problems ... ptrel,ptrel1',ptrel,ptrel1
c               endif
c END CHECK ***********************************************************

c     if pt_rel(gam-lep) is above SCALUP 
c     veto the event and retry to shower (a maximum of trial_max times)  
            if (lepveto) then
               pythiatrial=pythiatrial+1
               if(pythiatrial.le.trial_max) then
                  goto 888
               else
                  call printleshouches
                  write(*,*) 'cannot add photons that pass the veto'
               endif
            endif
         endif
         call PYANAL
         IF(nevhep.gt.0.and.MOD(nevhep,20000).EQ.0) THEN
            WRITE(*,*)'# of events processed=',NEVHEP
            CALL PYAEND
         ENDIF 
      enddo
 111  continue
      write(*,*) 'At the end NEVHEP is ',nevhep
C---USER'S TERMINAL CALCULATIONS
      call PYAEND
      END

      logical function not_finite_kin_lh()
      implicit none
      include 'LesHouches.h'
      logical pwhg_isfinite
      integer j,mu
      do j=1,nup
         do mu=1,5
            if(.not.pwhg_isfinite(pup(mu,j))) goto 998
         enddo
      enddo
      if(.not.pwhg_isfinite(scalup)) goto 998
      not_finite_kin_lh = .false.
      return
 998  not_finite_kin_lh = .true.
      end

c Use the phhep common block to add the photos generated particles
c to the LH common block
      subroutine phhepevttolhef
      implicit none
      include 'LesHouches.h'
      include "PhotosHep.h"

      integer icolpart(2)

c in case no photons were generated by photos
      if(nhep.eq.nup) return
c find the colour of the emitted parton, if any
      if(nup.eq.6) then
         icolpart(:) = icolup(:,6)
      endif

      nup=nhep
      istup(6:nup)=isthep(6:nup)
      idup(6:nup)=idhep(6:nup)
      mothup(:,6:nup)=jmohep(:,6:nup)
      pup(:,6:nup)=phep(:,6:nup)

      vtimup(1:nup)=0d0
      spinup(1:nup)=9d0

      if(nup.gt.5) then
         icolup(:,5:nup) = 0
      endif

c The following can happen only if the Les Houches radiated parton
c was a coloured one. Restore its colour
      if(nup.gt.6.and.idup(nup).ne.22) then
         icolup(:,nup) = icolpart(:)
      endif

      end

      subroutine lhuptophhepevt(n)
c Copy a LH event to the photos hep common block
      implicit none
      include 'LesHouches.h'
      include "PhotosHep.h"

      integer n

      logical qedrad
      common/ph_phoqed/qedrad(nmxhep)

      nhep=nup
      nevhep=n
      isthep(1:nhep)=istup(1:nup)
      idhep(1:nhep)=idup(1:nup)
      jmohep(1:2,1:nhep)=mothup(1:2,1:nup)
      jdahep(1:2,1:nhep)=0
      phep(1:5,1:nhep)=pup(1:5,1:nup)
      qedrad(1:nhep)=.true.

      jdahep(1,3) = 4
      if(nup.eq.6.and.jmohep(1,6).eq.3) then
         jdahep(2,3) = 6
      else
         jdahep(2,3) = 5
      endif
      end

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


      subroutine pass_veto(ok)
c returns true if all photos generated photons have
c relative pt (with respect to the emitting lepton)
c less than scalup
      implicit none
      include "LesHouches.h"
      logical ok
      include "PhotosHep.h"

      real * 8 beta
      real * 8 kt2minqed
      common/showerqed/kt2minqed

      integer jlep,iph,first_photos

      integer vdecaytemp,iz
      real*8 pt,cos_emrad
      real*8 vec(3)
      data vec/0d0,0d0,1d0/
      save vec
      real*8 plep(4),ppho(4)
      real*8 p_lep_ph(0:3,1:2)
      logical ini
      data ini/.true./
      save ini
      save vdecaytemp
      ok = .false.

      if (ini) then
          ini=.false.
          vdecaytemp=lprup(1)-10000
      endif

c Z is at 3
      iz = 3
c Photos puts its photon right after the last particle belonging to
c the resonance in the hep common block. In case of photon radiation,
c this is the 7th particle (2 incoming, Z, l+, l-,gamma, 7th particle)
c otherwise it is the 6th particle.
c If nup=6, and the 6th particle is from the Z, it is a LH photon.
      if(nup.eq.6.and.mothup(1,6).eq.iz) then
         first_photos = 7
      else
         first_photos = 6
      endif
c The last photos photon is jdahep(2,iz)
      do iph=first_photos,jdahep(2,iz)
c the leptons are 4 and 5
         do jlep=4,5
******************************************************************
            beta=(phep(4,1)-phep(4,2))/(phep(4,1)+phep(4,2))
c
c Boost photon and its mother lepton to the partonic CM
c
            p_lep_ph(0,1) = phep(4,iph)
            p_lep_ph(0,2) = phep(4,jlep)
            
            p_lep_ph(1:3,1) = phep(1:3,iph)
            p_lep_ph(1:3,2) = phep(1:3,jlep)
            
            call mboost(2,vec,-beta,p_lep_ph(0,1),p_lep_ph(0,1))
            
            ppho(4) = p_lep_ph(0,1)
            plep(4) = p_lep_ph(0,2)
            
            ppho(1:3) = p_lep_ph(1:3,1)
            plep(1:3) = p_lep_ph(1:3,2)
            
            cos_emrad =
     1           (ppho(1)*plep(1) + ppho(2)*plep(2) + ppho(3)*plep(3))/
     2           ( ppho(4) * sqrt(plep(1)**2+plep(2)**2+plep(3)**2) )

            pt = sqrt(1 - cos_emrad**2) * ppho(4)
            
            if (pt.gt.scalup) return
            
         enddo
      enddo

      ok = .true.

      end

      subroutine hepboost(m,vec,beta,vin,vout)
c     boosts the m vectors vin(1:4,m) into the vectors vout(1:4,m) (that can
c     be the same) in the direction of vec(3) (|vec|=1) with velocity
c     beta.  Lorents convention: (t,x,y,z).
      implicit none
      integer m
      real * 8 vec(3),beta,vin(1:5,m),vout(1:5,m)
      real * 8 betav,gamma
      real * 8 vdotb
      integer ipart,idim
      gamma=1/sqrt(1-beta**2)
      do ipart=1,m
         vdotb=vin(1,ipart)*vec(1)
     #         +vin(2,ipart)*vec(2)+vin(3,ipart)*vec(3)
         do idim=1,3
            vout(idim,ipart)=vin(idim,ipart)
     #           +vec(idim)*((gamma-1)*vdotb
     #           +gamma*beta*vin(4,ipart))
         enddo
         vout(4,ipart)=gamma*(vin(4,ipart)+vdotb*beta)
         vout(5,ipart)=vin(5,ipart)
      enddo
      end

      subroutine scalupveto1(lepveto,ptrel)
c     veto QED radiation from Z-decay leptons
c     above the SCALUP value
      implicit none
      include 'hepevt.h'
      include 'LesHouches.h'
      logical lepveto
      real * 8 ptrel,tmpptrel
      logical allfinal,allnotfinal
      integer k,j
      integer ihep,iz,lep(2),ilep,jgam,ngam(2),jdalep
      integer maxgam
      parameter (maxgam=20)
      integer jvecgam(maxgam,2)
      real *8 p_gamma(0:3),p_lepton(0:3)
      real * 8 beta,vec(3),p_lph(0:3,1:2)
      data vec/0d0,0d0,1d0/

c     find last Z
      do ihep=1,nhep
c W case:
c         if(abs(idhep(ihep)).eq.24) then
c end W case
         if(idhep(ihep).eq.23) then
            iz = ihep
         endif
      enddo

c PYTHIA seems to give a different hep record in case of transverse
c momentum ordering or Q2 ordering
c pt ordering:
c If no photons are radiated, the direct daughters of the Z are the final
c state leptons, with status=1;
c If there are photons, the direct daughters of the Z are the final
c state leptons, with status=2;
c the leptons daughters are a list starting with the lepton with status=1
c followed by its radiated photons.
c Q2 ordering:
c The direct daughters of the Z have all status=1. The first one is a lepton
c folowed by ots radiated photons, followed by the second lepton, again followed
c by its radiated photon.

c No less than 2 daughters
c photons come up as daughters of the leptons
      if(jdahep(2,iz)-jdahep(1,iz).lt.1) then
         write(*,*) ' scalupveto: error,jdahep(2,iz)-jdahep(1,iz).lt.1)'
         call exit(-1)
      endif

      allfinal =.true.
      allnotfinal = .true.
      do ihep=jdahep(1,iz),jdahep(2,iz)
c exclude case of a photon daughter of a photon; it means that the photon was
c already on the LH interface.
         if(idhep(ihep).eq.22.and.idhep(jmohep(1,ihep)).eq.22) then
c            write(*,*) 'LESHOUCHES GAMMA PRESENT'
c            call pylist(5)
            cycle
         endif
         if(isthep(ihep).ne.1) then
            allfinal = .false.
         else
            allnotfinal = .false.
         endif
      enddo

      if(.not.(allfinal.or.allnotfinal)) then
         write(*,*)
     1 ' scalupveto: error, some Z daughters are final, some not'
         call exit(-1)
      endif
c
c with pyevnt all daughters are with isthep=1
c
      if(allfinal) then
         ngam = 0
         lep = 0
         do ilep=jdahep(1,iz),jdahep(2,iz)
            if(idhep(ilep).ne.22) then
               if(lep(1).eq.0) then
                  lep(1)=ilep
               elseif(lep(2).eq.0) then
                  lep(2)=ilep
               else
                  goto 998
               endif
            endif
         enddo
         if(idhep(lep(1)).ne.-idhep(lep(2))) goto 998
         do k=1,2
            do jgam = jdahep(1,iz),jdahep(2,iz)
               if(idhep(jgam).eq.22.and..not.idhep(jmohep(1,jgam)).eq.22) then
                  if(idhep(jmohep(1,jgam)).eq.idhep(lep(k))) then
                     ngam(k) = ngam(k) + 1
                     if(ngam(k).gt.maxgam) then
                        write(*,*) ' scalupveto: more than',maxgam,' gamma'
                        write(*,*) ' increase maxgam'
c do not add this gamma, just ignore it
                        ngam(k) = ngam(k)-1
                     else
                        jvecgam(ngam(k),k) = jgam
                     endif
                  endif
               endif
            enddo
         enddo
c         write(*,*) 'Z daughters', jdahep(1,iz),jdahep(2,iz)
c         write(*,'(10(1x,i3))') idhep(jdahep(1,iz):jdahep(2,iz))
c         write(*,'(10(1x,i3))') jmohep(1,jdahep(1,iz):jdahep(2,iz))
c         write(*,'(10(1x,i3))') idhep(jmohep(1,jdahep(1,iz):jdahep(2,iz)))
      endif
c
c with pyevnw not all daughters are with isthep=1
c
      if(allnotfinal) then
         lep(1) = jdahep(1,iz)
         lep(2) = jdahep(1,iz) + 1
         ngam = 0
         do k=1,2
            ilep = lep(k)
c     In the W case, add the following
c     if(2*(idhep(lep)/2).eq.idhep(lep)) cycle
c     End W case
            if(isthep(ilep).ne.1) then
 10            continue
               do jdalep=jdahep(1,ilep),jdahep(2,ilep)
                  if(idhep(jdalep).eq.idhep(ilep)) exit
               enddo
               if(jdalep.gt.jdahep(2,ilep)) goto 999
c     Check that these are all photons
               do jgam=jdahep(1,ilep),jdahep(2,ilep)
                  if(idhep(jgam).eq.22) then
                     ngam(k) = ngam(k)+1
                     if(ngam(k).gt.maxgam) then
                        write(*,*) ' scalupveto: more than',maxgam,' gamma'
                        write(*,*) ' increase maxgam'
c do not add this gamma, just ignore it
                        ngam(k) = ngam(k)-1
                     else
                        jvecgam(ngam(k),k) = jgam
                        if(isthep(jgam).ne.1) goto 999
                     endif
                  endif
               enddo
               if(isthep(jdalep).eq.2) then
c it ain't over yet; back to 10
                  ilep = jdalep
                  goto 10
               endif
               lep(k) = jdalep
            else
               ngam(k) = 0
            endif
         enddo
c         write(*,*) 'Z daughters', jdahep(1,iz),jdahep(2,iz)
c         write(*,*) 'Z daughters flavours',
c     1        idhep(jdahep(1,iz):jdahep(2,iz))
c         write(*,*) 'Z daughters status',
c     1        isthep(jdahep(1,iz):jdahep(2,iz))
c         write(*,*) 'lep. 1 daughters flavours'
c         j = jdahep(1,iz)
c         write(*,'(10(1x,i3))') idhep(jdahep(1,j):jdahep(2,j))
c         write(*,*) 'lep. 1 daughters status',
c     1        isthep(jdahep(1,j):jdahep(2,j))
c         if(isthep(jdahep(1,j)).ne.1) then
c            j = jdahep(1,j)
c            write(*,*) 'lep. 1 daughters status second level',
c     1             isthep(jdahep(1,j):jdahep(2,j))
c            write(*,*) 'lep. 1 daughters flavour second level',
c     1             idhep(jdahep(1,j):jdahep(2,j))
c         endif
c         write(*,*) 'lep. 2 daughters flavours'
c         j = jdahep(2,iz)
c         write(*,'(10(1x,i3))') idhep(jdahep(1,j):jdahep(2,j))
c         write(*,*) 'lep. 2 daughters status',
c     1        isthep(jdahep(1,j):jdahep(2,j))
c         if(isthep(jdahep(1,j)).ne.1) then
c            j = jdahep(1,j)
c            write(*,*) 'lep. 2 daughters status second level',
c     1           isthep(jdahep(1,j):jdahep(2,j))
c            write(*,*) 'lep. 2 daughters flavour second level',
c     1           idhep(jdahep(1,j):jdahep(2,j))
c         endif
      endif


c      write(*,'(10(1x,i3))') idhep(lep(1)),
c     1     (idhep(jvecgam(j,1)),j=1,ngam(1)),
c     2     idhep(lep(2)),
c     1     (idhep(jvecgam(j,2)),j=1,ngam(2))


c     apply veto for QED shower from leptons above SCALUP
      ptrel = 0
      do k=1,2
c In the W case, add the following
c         if(2*(idhep(lep)/2).eq.idhep(lep)) cycle
c End W case
         do j=1,ngam(k)
            jgam=jvecgam(j,k)
            p_gamma(0)=phep(4,jgam)
            p_gamma(1:3)=phep(1:3,jgam)
            p_lepton(0)=phep(4,lep(k))
            p_lepton(1:3)=phep(1:3,lep(k))
c     the veto is applied with respect to the final lepton (after the shower)
c     uncomment the following to apply the veto to the recombined lepton
c            if(ngamma.gt.1) then
c               do k=gam+1,ngamma
c                  if(idhep(jmohep(1,gammavec(k))).eq.vdecaytemp) then
c                     p_lepton(0)=p_lepton(0)+phep(4,gammavec(k))
c                     do mu=1,3
c                        p_lepton(mu)=p_lepton(mu)
c     +                       +phep(mu,gammavec(k))
c                     enddo
c                  endif
c               enddo
c            endif

c     veto in the CoM frame
            beta=(pup(4,1)-pup(4,2))/(pup(4,1)+pup(4,2))
            p_lph(:,1)=p_lepton(:)
            p_lph(:,2)=p_gamma(:)
            call mboost(2,vec,-beta,p_lph(0,1),p_lph(0,1))
            p_lepton(:)=p_lph(:,1)
            p_gamma(:)=p_lph(:,2)
c     FSR ptrel
            call get_ptrelFSR(p_gamma,p_lepton,tmpptrel)
            ptrel = max(tmpptrel,ptrel)
         enddo
      enddo
      if((ptrel-scalup)/scalup.gt.0) then
c     write(*,*) 'vetoed event'
         lepveto=.true.
      else
         lepveto = .false.
      endif
      return
 998  continue
      write(*,*)
     1     ' scalupveto: error, some Z daughters mess:',
     2     idhep(jdahep(1,iz):jdahep(2,iz))
      call pylist(5)
      call exit(-1)

 999  continue
      write(*,*)
     1     ' scalupveto: error, some Z daughters mess:'
      write(*,*) 'Z daughters:',
     1     idhep(jdahep(1,iz):jdahep(2,iz))
      j=jdahep(1,iz)
      write(*,*) 'leptons 1 daughters:',
     1     idhep(jdahep(1,j):jdahep(2,j))
      j=jdahep(2,iz)
      write(*,*) 'leptons 2 daughters:',
     1     idhep(jdahep(1,j):jdahep(2,j))
      call exit(-1)

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
      include 'pwhg_lhrwgt.h'
      integer i,j
      write(nlf,'(a)')'<event>'
      write(nlf,210) nup,idprup,xwgtup,scalup,aqedup,aqcdup
      do 200 i=1,nup
         write(nlf,220) idup(i),istup(i),mothup(1,i),
     & mothup(2,i),icolup(1,i),icolup(2,i),(pup(j,i),j=1,5),
     & vtimup(i),spinup(i)
 200  continue
      write(nlf,'(a)')'</event>'      
 210  format(1p,2(1x,i6),4(1x,e12.5))
 220  format(1p,i8,5(1x,i5),5(1x,e16.9),1x,e12.5,1x,e10.3)
      end


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
