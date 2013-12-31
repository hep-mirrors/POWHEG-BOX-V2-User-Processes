      subroutine setup_HERWIG_parameters
      include 'HERWIG65.INC'
      include 'LesHouches.h'
      logical uevent 
      parameter (uevent=.true.)
C---USER CAN RESET PARAMETERS AT
C   THIS POINT, OTHERWISE DEFAULT
C   VALUES IN HWIGIN WILL BE USED.
c      PTMIN=100.
      MAXPR=2
      ptrms=2.5d0
      write(*,*)
      write(*,*) '*******************************************'
      write(*,*) '*******************************************'
      write(*,*) ' INITIAL p_T SPREADING OF ',ptrms,' GEV    '
      write(*,*) '*******************************************'
      write(*,*) '*******************************************'
      write(*,*)
      if(.not.uevent) then
         PRSOF=0d0
         write(*,*)
         write(*,*) '*******************************************'
         write(*,*) '*******************************************'
         write(*,*) ' NO UNDERLYING EVENT  WILL BE GENERATED    '
         write(*,*) '*******************************************'
         write(*,*) '*******************************************'
         write(*,*)   
      else
         write(*,*)
         write(*,*) '*******************************************'
         write(*,*) '*******************************************'
         write(*,*) ' UNDERLYING EVENT  WILL BE GENERATED     '
         write(*,*) '*******************************************'
         write(*,*) '*******************************************'
         write(*,*)   
      endif
c----DO NOT USE SOFT ME CORRECTION     
      SOFTME=.FALSE.
      end

      subroutine getmaxev(numev)
      integer numev
C---  Opens input file and counts number of events, setting MAXEV
      call opencount(numev)
      end
      
      subroutine UPINIT
      include 'HERWIG65.INC'
      include 'LesHouches.h'
      nevhep=0
c first call lhefreadhdr; this sets lprup;
      call lhefreadhdr(97)

C---CALL HWUSTA TO MAKE ANY PARTICLE STABLE
      CALL HWUSTA('PI0     ')
      if (lprup(1).eq.10015) then
         CALL HWUSTA('TAU-    ')
         CALL HWUSTA('TAU+    ')
      endif
      end
      

      subroutine UPEVNT
      include 'HERWIG65.INC'
      logical ini,changescalup
      data ini/.true./
      save ini,changescalup
      real * 8 powheginput
      external  powheginput
      if(ini) then
         if(powheginput("#changescalup").eq.1) then
            print *,"SCALUP is changed..."
            changescalup=.true.
         else
            changescalup=.false.
         endif
         ini=.false.
      endif      
      maxer=maxev
      call lhefreadev(97)
      if(changescalup) call py_change_scalup
      end


      subroutine hwabeg
      call init_hist
      end


      subroutine hwaend
      implicit none
      include 'pwhg_rnd.h'
      character * 20 pwgprefix
      integer lprefix
      common/cpwgprefix/pwgprefix,lprefix
      call pwhgsetout
      if(rnd_cwhichseed.eq.'none') then
         call pwhgtopout(pwgprefix(1:lprefix)//
     $                   'POWHEG+HERWIG-output')
      else
         call pwhgtopout(pwgprefix(1:lprefix)//
     $                   '-'//rnd_cwhichseed //'-'//
     $                   'POWHEG+HERWIG-output')
      endif
      end




      subroutine hwanal
      INCLUDE 'HERWIG65.INC'
      include 'LesHouches.h'
c     check parameters
      logical verbose
      parameter (verbose=.false.)

      if (ierror.ne.0) then
         if(verbose) then
            write(*,*) 'Killed event'
            write(*,*) 'Scalup= ',scalup
            call HWUPUP         !hepeup
            call hwuepr         !all the event
         endif
         return
      endif
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

