      subroutine setup_PYTHIA_tune
      implicit none
      real * 8 powheginput
      external powheginput
      integer itune
C   100       A : Rick Field's CDF Tune A                     (Oct 2002)
C   103      DW : Rick Field's CDF Tune DW                    (Apr 2006)
C   320 Perugia 0 : "Perugia" update of S0-Pro                (Feb 2009)

      itune=powheginput("#pytune")
      if(itune.gt.0) then
         call PYTUNE(itune)
      else
         call PYTUNE(320)
      endif
      end

      subroutine setup_PYTHIA_parameters
      implicit none
      include 'hepevt.h'
      include 'LesHouches.h'
      double precision parp,pari
      integer mstp,msti
      common/pypars/mstp(200),parp(200),msti(200),pari(200)
      integer MSTU,MSTJ
      double precision PARU,PARJ
      COMMON/PYDAT1/MSTU(200),PARU(200),MSTJ(200),PARJ(200)
      integer MDCY,MDME,KFDP
      double precision brat
      COMMON/PYDAT3/MDCY(500,3),MDME(8000,2),BRAT(8000),KFDP(8000,5)
      integer pycomp
      external pycomp
      integer maxev
      common/mcmaxev/maxev
      real * 8 powheginput
      external powheginput
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
c     multiple interactions
c     (MI can increase a lot the execution time)
c      if(.not.mult_inter) then
c         mstp(81)=20   !No Multiple interactions. Force a call to PYEVNW 
c      else
c         mstp(81)=21   ! MPI on in the PYEVNW MPI scenario
c      endif
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
c     photon radiation off quarks and leptons
c       mstj(41)=12              
c     No photon radiation off quarks and leptons
c       mstj(41)=11              
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

c      mstp(61)=0                !No IS shower
c      mstp(71)=0                !No FS shower
c      mstp(91)=0                !No Primordial kt
c      mstp(131)=0               !No Pile Up
c      mstp(111)=0               !No hadronization

c      mstp(64) =3 !use Lambda_MC for IS shower > 6.4.19
c      mstp(64) =1 !use Lambda_MSbar (default)

c     number of warnings printed on the shell
      mstu(26)=20
c     call PYLIST(12) to see the PYTHIA decay table
ccccccccccccccccccccccccccccccccccccccccccccccccccc

!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
c     tolerate 2% of killed events
      mstu(22)=maxev/50
!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
      if(powheginput("#nohad").gt.0) then
         write(*,*)' ****** switching hadronization off ****'
c     Hadronization off
         mstp(111)=0
c     primordial kt off
         mstp(91)=0
c     No multiple parton interactions
         if(mstp(81).eq.1) then
c     Q2 ordered shower
            mstp(81)=0
         elseif(mstp(81).eq.21) then
c     p_t^2 ordered shower
            mstp(81)=20
         endif
      endif
      end

      subroutine getmaxev(maxev)
      integer maxev
C--- Opens input file and counts number of events, setting MAXEV;
      call opencount(maxev)
      end

      subroutine UPINIT
      implicit none
      include 'hepevt.h'
      include 'LesHouches.h'
      double precision parp,pari
      integer mstp,msti
      common/pypars/mstp(200),parp(200),msti(200),pari(200)
      integer MSTU,MSTJ
      double precision PARU,PARJ
      COMMON/PYDAT1/MSTU(200),PARU(200),MSTJ(200),PARJ(200)
      integer MDCY,MDME,KFDP
      double precision brat
      COMMON/PYDAT3/MDCY(500,3),MDME(8000,2),BRAT(8000),KFDP(8000,5)
      integer pycomp
      external pycomp
      integer maxev
      common/mcmaxev/maxev
      nevhep=0
c read the header first, so lprup is set
      call lhefreadhdr(97)

c     Make PI0 stable as in herwig default
      mdcy(pycomp(111),1)=0

c  SISTEMARE *****************************************
      if (lprup(1).eq.10015)  mdcy(pycomp(15),1)=0

      end

      subroutine UPEVNT
      implicit none
      include 'hepevt.h'
      real * 8 powheginput
      external powheginput      
      logical changescalup,ini
      data ini/.true./
      integer oldnevhep
      data oldnevhep/-1/
      save changescalup,ini,oldnevhep
      
      if (ini) then
         changescalup = powheginput("#changescalup").eq.1d0 
         if (changescalup) then
            write(*,*) '*********************************'
            write(*,*) ' CHANGE SCALUP activated '
            write(*,*) '*********************************'
         endif
         ini=.false.
      endif

      if(nevhep.eq.oldnevhep) then
c the main program increases nevhep after each pythia call.
c We enter here if pythia fails to shower an event, and tries with
c a new one. We should call pwhgaccumup in this case, since
c the analysis is not called, and not doing so spoils the cross
c section value.
         call pwhgaccumup
      endif
      oldnevhep = nevhep
      call lhefreadev(97)
      if (changescalup) then
         call py_change_scalup
      endif
      end


      subroutine upveto
c pythia routine to abort event
      end

      subroutine pyabeg
      call init_hist
      end

      subroutine pyaend
      character * 20 pwgprefix
      character * 100 filename
      integer lprefix
      common/cpwgprefix/pwgprefix,lprefix
      include 'pwhg_rnd.h'
      if(rnd_cwhichseed.ne.'none') then
         filename=pwgprefix(1:lprefix)//'POWHEG+PYTHIA-output-'
     1        //rnd_cwhichseed
      else
         filename=pwgprefix(1:lprefix)//'POWHEG+PYTHIA-output'
      endif
      call pwhgsetout
      call pwhgtopout(filename)
      end


      subroutine pyanal
      implicit none
      include 'hepevt.h'
      include 'LesHouches.h'
      integer mint
      double precision vint
      COMMON/PYINT1/MINT(400),VINT(400)
c     check parameters
      logical verbose
      parameter (verbose=.false.)
      
      if(mint(51).ne.0) then
         if(verbose) then
            write(*,*) 'Killed event'
            write(*,*) 'Scalup= ',scalup
            call pylist(7)      !hepeup
            call pylist(2)      !all the event
         endif
c Assuming that killed events will not end up in the
c analysis, they should be counted in order to get
c a correct cross section in the physical region.
         return
      endif
      nevhep=nevhep+1
      if(abs(idwtup).eq.3) xwgtup=xwgtup*xsecup(1)
      call analysis(xwgtup)
      call pwhgaccumup 
      end


      subroutine py_change_scalup
      implicit none
      include 'LesHouches.h'
c      include 'hepevt.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_rad.h'
      real * 8 ptmin,ptmin2,pcm(0:3,maxnup),beta,vec(3),ptkj2
      integer k,mu,j
      logical ini
      save ini
      data ini/.true./
      real * 8 dotp
      external dotp
      integer npart
      npart=0
      do k=3,nup
c     only light partons
         if (idup(k).eq.21.or.abs(idup(k)).le.5) then
            npart=npart+1
            do mu=1,3
               pcm(mu,npart)=pup(mu,k)
            enddo
            pcm(0,npart)=pup(4,k)
         endif
      enddo
c     compute min pt of light partons with respect to the incoming beam
      ptmin2=1d30
      do k=1,npart
         ptmin2=min(ptmin2,pcm(1,k)**2+pcm(2,k)**2)
      enddo

c     compute pt's of the final state partons with respect to each other
      beta=-(pup(3,1)+pup(3,2))/(pup(4,1)+pup(4,2))
      vec(1)=0
      vec(2)=0
      vec(3)=1
c     go in the CM frame   
      call mboost(npart,vec,beta,pcm,pcm)
      do k=1,npart-1
         do j=k+1,npart
            ptkj2 = 2*dotp(pcm(0,k),pcm(0,j))*
     $           pcm(0,k)*pcm(0,j)/(pcm(0,k)+pcm(0,j))**2
            ptmin2=min(ptmin2,ptkj2)
         enddo
      enddo
      ptmin=sqrt(ptmin2)
      if(scalup.gt.ptmin) then
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) 'scalup set to the min pt in the event'
            write(*,*) '*************************************'
            ini=.false.
         endif         
         scalup = ptmin
      endif
      end

      function dotp(p1,p2)
      implicit none
      real * 8 dotp,p1(0:3),p2(0:3)
      dotp = (p1(0)*p2(0) - p1(3)*p2(3)) - p1(1)*p2(1) - p1(2)*p2(2)
      end

