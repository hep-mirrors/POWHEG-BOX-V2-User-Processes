      subroutine setup_HERWIG_parameters
      include 'HERWIG65.INC'
      include 'LesHouches.h'
      logical uevent 
      parameter (uevent=.true.)
      real * 8 powheginput
      integer nushuf
      common/cnushuf/nushuf
      MAXPR = 1
      if(.not.uevent) PRSOF=0d0
c----DO NOT USE SOFT ME CORRECTION     
      SOFTME=.FALSE.
      if(powheginput("#toplepdec").eq.1d0) then
         brfrac(1)=0.
         brfrac(2)=0.
         brfrac(3)=1.
         brfrac(4)=0.
         brfrac(5)=0.
         brfrac(6)=0.
         brfrac(7)=0.
         brfrac(8)=1.
         brfrac(9)=0.
         brfrac(10)=0.
      endif
      nushuf=powheginput("#nushuf")
      if(nushuf.lt.0) then
         nushuf=0
      endif
      end


      subroutine getmaxev(maxev)
      integer maxev
      real * 8 powheginput,tmp
c the following is just for avoiding setting the prefix at
c a later stage
      tmp=powheginput("#dummy")
C--- Opens input file and counts number of events, setting MAXEV;
      call opencount(maxev)
      end

      subroutine UPINIT
      include 'HERWIG65.INC'
      include 'LesHouches.h'

      nevhep=0
c first call lhefreadhdr; this sets lprup;
      call lhefreadhdr(97)
      if(lprup(1).eq.1004) then
         call hwusta('D+      ')
         call hwusta('D-      ')
         call hwusta('D0      ')
         call hwusta('DBAR0   ')
      elseif(lprup(1).eq.1005) then
         call hwusta('B_D0    ')
         call hwusta('B_DBAR0 ')
         call hwusta('B-      ')
         call hwusta('B+      ')
      endif
C---CALL HWUSTA TO MAKE ANY PARTICLE STABLE
      CALL HWUSTA('B+      ')
      CALL HWUSTA('B-      ')
      CALL HWUSTA('B_D0    ')
      CALL HWUSTA('B_DBAR0 ')
      CALL HWUSTA('B_S0    ')
      CALL HWUSTA('B_SBAR0 ')
      CALL HWUSTA('SIGMA_B+')
      CALL HWUSTA('SIGMA_B-')
      CALL HWUSTA('XI_B0   ')
      CALL HWUSTA('XI_B+   ')
      CALL HWUSTA('XI_B-   ')
      CALL HWUSTA('B_C+    ')
      CALL HWUSTA('B_C-    ')
      CALL HWUSTA('UPSLON1S')
      CALL HWUSTA('SGM_BBR+')
      CALL HWUSTA('SGM_BBR-')
      CALL HWUSTA('LMD_BBR0')
      CALL HWUSTA('OMEGA_B-')
      CALL HWUSTA('XI_BBAR0')
      CALL HWUSTA('OMG_BBR+')
      CALL HWUSTA('LMBDA_B0')

      end

      subroutine UPEVNT
      implicit none
      include 'LesHouches.h'
      logical ini
      data ini/.true./
      save ini
      call lhefreadev(97)
      end


      subroutine hwabeg
      call init_hist
      end


      subroutine hwaend
      implicit none
      character * 20 pwgprefix
      integer lprefix
      common/cpwgprefix/pwgprefix,lprefix
      include 'pwhg_rnd.h'

      call pwhgsetout

      if(rnd_cwhichseed.eq.'none') then
         call pwhgtopout(pwgprefix(1:lprefix)//
     >                   'POWHEG+HERWIG-output')
      else
         call pwhgtopout(pwgprefix(1:lprefix)//
     >                   '-'//rnd_cwhichseed //'-'//
     >                   'POWHEG+HERWIG-output')
      endif

      end

      subroutine hwanal
      INCLUDE 'HERWIG65.INC'
      include 'LesHouches.h'
      if (ierror.ne.0) then
         return
      endif
      if(idwtup.eq.3) xwgtup=xwgtup*xsecup(1)
      call analysis(xwgtup)
      call pwhgaccumup 
      end
      
