      subroutine sreal_proc_res(p,legs,chan,wgt)
      implicit none
      include "nexternal.inc"
      include "coupl.inc"
      double precision p(0:3,nexternal),wgt
      integer legs(nexternal),lstr
      character*4 chan
      character*140 str
      
      call convert_to_string(nexternal,legs,str,lstr)
      
#ifdef DEBUGQ
      print*
      print*, "[DEBUG] str = ", str
      !print*, "p1",p(0:3,1)
      !print*, "p2",p(0:3,2)
      !print*, "p3",p(0:3,3)
      !print*, "p4",p(0:3,4)
      !print*, "p5",p(0:3,5)
      !print*, "legs",legs
      print*, chan,wgt
#endif
      
      ! here: only left handed squarks can become resonant
      if( chan.ne."ul35" .and. chan.ne."ul45" .and.
     &    chan.ne."ur35" .and. chan.ne."ur45" .and.
     &    chan.ne."dl35" .and. chan.ne."dl45" .and.
     &    chan.ne."dr35" .and. chan.ne."dr45") then
        print*,"wrong channel number: ", chan
        print*,"choose ul35, ul45, ur35, ur45, dl35, dl45, dr35, "//
     &         "dr45."
        stop
      endif

      wgt = 0D0
      if (str.eq."-1010000221000022-1") then
         !call srealmtrx_002_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."10100002210000221") then
         !call srealmtrx_004_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."-2010000221000022-2") then
         !call srealmtrx_006_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."20100002210000222") then
         !call srealmtrx_008_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."-4010000221000022-4") then
         !call srealmtrx_010_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."40100002210000224") then
         !call srealmtrx_012_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."-3010000221000022-3") then
         !call srealmtrx_014_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."30100002210000223") then
         !call srealmtrx_016_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt) 
         goto 20
      elseif (str.eq."-5010000221000022-5") then
         !call srealmtrx_018_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."50100002210000225") then
         !call srealmtrx_020_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."0-110000221000022-1") then
         !call srealmtrx_021_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."01100002210000221") then
         !call srealmtrx_022_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."0-210000221000022-2") then
         !call srealmtrx_023_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."02100002210000222") then
         !call srealmtrx_024_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."0-410000221000022-4") then
         !call srealmtrx_025_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."04100002210000224") then
         !call srealmtrx_026_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."0-310000221000022-3") then
         !call srealmtrx_027_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."03100002210000223") then
         !call srealmtrx_028_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."0-510000221000022-5") then
         !call srealmtrx_029_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif (str.eq."05100002210000225") then
         !call srealmtrx_030_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
         
      elseif(str.eq."-1010000221000023-1") then
         !call srealmtrx_002_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."10100002210000231") then
         !call srealmtrx_004_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-2010000221000023-2") then
         !call srealmtrx_006_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."20100002210000232") then
         !call srealmtrx_008_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-4010000221000023-4") then
         !call srealmtrx_010_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."40100002210000234") then
         !call srealmtrx_012_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-3010000221000023-3") then
         !call srealmtrx_014_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."30100002210000233") then
         !call srealmtrx_016_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt) 
         goto 20
      elseif(str.eq."-5010000221000023-5") then
         !call srealmtrx_018_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."50100002210000235") then
         !call srealmtrx_020_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-110000221000023-1") then
         !call srealmtrx_021_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."01100002210000231") then
         !call srealmtrx_022_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-210000221000023-2") then
         !call srealmtrx_023_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."02100002210000232") then
         !call srealmtrx_024_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-410000221000023-4") then
         !call srealmtrx_025_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."04100002210000234") then
         !call srealmtrx_026_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-310000221000023-3") then
         !call srealmtrx_027_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."03100002210000233") then
         !call srealmtrx_028_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-510000221000023-5") then
         !call srealmtrx_029_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."05100002210000235") then
         !call srealmtrx_030_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
         
      elseif(str.eq."-1010000231000023-1") then
         !call srealmtrx_002_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."10100002310000231") then
         !call srealmtrx_004_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-2010000231000023-2") then
         !call srealmtrx_006_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."20100002310000232") then
         !call srealmtrx_008_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-4010000231000023-4") then
         !call srealmtrx_010_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."40100002310000234") then
         !call srealmtrx_012_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-3010000231000023-3") then
         !call srealmtrx_014_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."30100002310000233") then
         !call srealmtrx_016_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt) 
         goto 20
      elseif(str.eq."-5010000231000023-5") then
         !call srealmtrx_018_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."50100002310000235") then
         !call srealmtrx_020_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-110000231000023-1") then
         !call srealmtrx_021_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."01100002310000231") then
         !call srealmtrx_022_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-210000231000023-2") then
         !call srealmtrx_023_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."02100002310000232") then
         !call srealmtrx_024_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-410000231000023-4") then
         !call srealmtrx_025_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."04100002310000234") then
         !call srealmtrx_026_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-310000231000023-3") then
         !call srealmtrx_027_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."03100002310000233") then
         !call srealmtrx_028_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-510000231000023-5") then
         !call srealmtrx_029_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."05100002310000235") then
         !call srealmtrx_030_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20

      elseif(str.eq."-1010000221000025-1") then
         !call srealmtrx_002_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."10100002210000251") then
         !call srealmtrx_004_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-2010000221000025-2") then
         !call srealmtrx_006_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."20100002210000252") then
         !call srealmtrx_008_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-4010000221000025-4") then
         !call srealmtrx_010_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."40100002210000254") then
         !call srealmtrx_012_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-3010000221000025-3") then
         !call srealmtrx_014_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."30100002210000253") then
         !call srealmtrx_016_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt) 
         goto 20
      elseif(str.eq."-5010000221000025-5") then
         !call srealmtrx_018_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."50100002210000255") then
         !call srealmtrx_020_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-110000221000025-1") then
         !call srealmtrx_021_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."01100002210000251") then
         !call srealmtrx_022_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-210000221000025-2") then
         !call srealmtrx_023_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."02100002210000252") then
         !call srealmtrx_024_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-410000221000025-4") then
         !call srealmtrx_025_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."04100002210000254") then
         !call srealmtrx_026_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-310000221000025-3") then
         !call srealmtrx_027_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."03100002210000253") then
         !call srealmtrx_028_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-510000221000025-5") then
         !call srealmtrx_029_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."05100002210000255") then
         !call srealmtrx_030_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20

      elseif(str.eq."-1010000221000035-1") then
         !call srealmtrx_002_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."10100002210000351") then
         !call srealmtrx_004_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-2010000221000035-2") then
         !call srealmtrx_006_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."20100002210000352") then
         !call srealmtrx_008_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-4010000221000035-4") then
         !call srealmtrx_010_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."40100002210000354") then
         !call srealmtrx_012_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-3010000221000035-3") then
         !call srealmtrx_014_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."30100002210000353") then
         !call srealmtrx_016_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt) 
         goto 20
      elseif(str.eq."-5010000221000035-5") then
         !call srealmtrx_018_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."50100002210000355") then
         !call srealmtrx_020_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-110000221000035-1") then
         !call srealmtrx_021_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."01100002210000351") then
         !call srealmtrx_022_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-210000221000035-2") then
         !call srealmtrx_023_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."02100002210000352") then
         !call srealmtrx_024_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-410000221000035-4") then
         !call srealmtrx_025_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."04100002210000354") then
         !call srealmtrx_026_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-310000221000035-3") then
         !call srealmtrx_027_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."03100002210000353") then
         !call srealmtrx_028_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-510000221000035-5") then
         !call srealmtrx_029_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."05100002210000355") then
         !call srealmtrx_030_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
         
      elseif(str.eq."-1010000231000025-1") then
         !call srealmtrx_002_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."10100002310000251") then
         !call srealmtrx_004_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-2010000231000025-2") then
         !call srealmtrx_006_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."20100002310000252") then
         !call srealmtrx_008_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-4010000231000025-4") then
         !call srealmtrx_010_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."40100002310000254") then
         !call srealmtrx_012_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-3010000231000025-3") then
         !call srealmtrx_014_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."30100002310000253") then
         !call srealmtrx_016_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt) 
         goto 20
      elseif(str.eq."-5010000231000025-5") then
         !call srealmtrx_018_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."50100002310000255") then
         !call srealmtrx_020_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-110000231000025-1") then
         !call srealmtrx_021_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."01100002310000251") then
         !call srealmtrx_022_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-210000231000025-2") then
         !call srealmtrx_023_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."02100002310000252") then
         !call srealmtrx_024_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-410000231000025-4") then
         !call srealmtrx_025_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."04100002310000254") then
         !call srealmtrx_026_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-310000231000025-3") then
         !call srealmtrx_027_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."03100002310000253") then
         !call srealmtrx_028_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-510000231000025-5") then
         !call srealmtrx_029_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."05100002310000255") then
         !call srealmtrx_030_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20

      elseif(str.eq."-1010000231000035-1") then
         !call srealmtrx_002_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."10100002310000351") then
         !call srealmtrx_004_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-2010000231000035-2") then
         !call srealmtrx_006_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."20100002310000352") then
         !call srealmtrx_008_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-4010000231000035-4") then
         !call srealmtrx_010_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."40100002310000354") then
         !call srealmtrx_012_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-3010000231000035-3") then
         !call srealmtrx_014_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."30100002310000353") then
         !call srealmtrx_016_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt) 
         goto 20
      elseif(str.eq."-5010000231000035-5") then
         !call srealmtrx_018_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."50100002310000355") then
         !call srealmtrx_020_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-110000231000035-1") then
         !call srealmtrx_021_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."01100002310000351") then
         !call srealmtrx_022_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-210000231000035-2") then
         !call srealmtrx_023_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."02100002310000352") then
         !call srealmtrx_024_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-410000231000035-4") then
         !call srealmtrx_025_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."04100002310000354") then
         !call srealmtrx_026_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-310000231000035-3") then
         !call srealmtrx_027_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."03100002310000353") then
         !call srealmtrx_028_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-510000231000035-5") then
         !call srealmtrx_029_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."05100002310000355") then
         !call srealmtrx_030_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20

      elseif(str.eq."-1010000251000025-1") then
         !call srealmtrx_002_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."10100002510000251") then
         !call srealmtrx_004_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-2010000251000025-2") then
         !call srealmtrx_006_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."20100002510000252") then
         !call srealmtrx_008_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-4010000251000025-4") then
         !call srealmtrx_010_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."40100002510000254") then
         !call srealmtrx_012_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-3010000251000025-3") then
         !call srealmtrx_014_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."30100002510000253") then
         !call srealmtrx_016_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt) 
         goto 20
      elseif(str.eq."-5010000251000025-5") then
         !call srealmtrx_018_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."50100002510000255") then
         !call srealmtrx_020_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-110000251000025-1") then
         !call srealmtrx_021_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."01100002510000251") then
         !call srealmtrx_022_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-210000251000025-2") then
         !call srealmtrx_023_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."02100002510000252") then
         !call srealmtrx_024_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-410000251000025-4") then
         !call srealmtrx_025_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."04100002510000254") then
         !call srealmtrx_026_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-310000251000025-3") then
         !call srealmtrx_027_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."03100002510000253") then
         !call srealmtrx_028_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-510000251000025-5") then
         !call srealmtrx_029_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."05100002510000255") then
         !call srealmtrx_030_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20

      elseif(str.eq."-1010000251000035-1") then
         !call srealmtrx_002_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."10100002510000351") then
         !call srealmtrx_004_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-2010000251000035-2") then
         !call srealmtrx_006_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."20100002510000352") then
         !call srealmtrx_008_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-4010000251000035-4") then
         !call srealmtrx_010_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."40100002510000354") then
         !call srealmtrx_012_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-3010000251000035-3") then
         !call srealmtrx_014_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."30100002510000353") then
         !call srealmtrx_016_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt) 
         goto 20
      elseif(str.eq."-5010000251000035-5") then
         !call srealmtrx_018_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."50100002510000355") then
         !call srealmtrx_020_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-110000251000035-1") then
         !call srealmtrx_021_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."01100002510000351") then
         !call srealmtrx_022_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-210000251000035-2") then
         !call srealmtrx_023_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."02100002510000352") then
         !call srealmtrx_024_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-410000251000035-4") then
         !call srealmtrx_025_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."04100002510000354") then
         !call srealmtrx_026_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-310000251000035-3") then
         !call srealmtrx_027_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."03100002510000353") then
         !call srealmtrx_028_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-510000251000035-5") then
         !call srealmtrx_029_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."05100002510000355") then
         !call srealmtrx_030_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-1010000351000035-1") then
         !call srealmtrx_002_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."10100003510000351") then
         !call srealmtrx_004_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-2010000351000035-2") then
         !call srealmtrx_006_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."20100003510000352") then
         !call srealmtrx_008_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-4010000351000035-4") then
         !call srealmtrx_010_RES(p,chan,wgt)
         call SMATRIX_UXG_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."40100003510000354") then
         !call srealmtrx_012_RES(p,chan,wgt)
         call SMATRIX_UG_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."-3010000351000035-3") then
         !call srealmtrx_014_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."30100003510000353") then
         !call srealmtrx_016_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt) 
         goto 20
      elseif(str.eq."-5010000351000035-5") then
         !call srealmtrx_018_RES(p,chan,wgt)
         call SMATRIX_DXG_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."50100003510000355") then
         !call srealmtrx_020_RES(p,chan,wgt)
         call SMATRIX_DG_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-110000351000035-1") then
         !call srealmtrx_021_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."01100003510000351") then
         !call srealmtrx_022_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-210000351000035-2") then
         !call srealmtrx_023_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."02100003510000352") then
         !call srealmtrx_024_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-410000351000035-4") then
         !call srealmtrx_025_RES(p,chan,wgt)
         call SMATRIX_GUX_NINJUX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."04100003510000354") then
         !call srealmtrx_026_RES(p,chan,wgt)
         call SMATRIX_GU_NINJU_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-310000351000035-3") then
         !call srealmtrx_027_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."03100003510000353") then
         !call srealmtrx_028_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."0-510000351000035-5") then
         !call srealmtrx_029_RES(p,chan,wgt)
         call SMATRIX_GDX_NINJDX_RES(p,chan,wgt)
         goto 20
      elseif(str.eq."05100003510000355") then
         !call srealmtrx_030_RES(p,chan,wgt)
         call SMATRIX_GD_NINJD_RES(p,chan,wgt)
         goto 20
      else
        wgt = 0d0
      endif   
      
 20   continue

       ! cut obvious small weights
      if(dsqrt(wgt).lt.1D-30) then
        wgt = 0D0
      endif

#ifdef DEBUGQ
      print*,"str, chan, wgt: ",trim(str)," ",chan,wgt
#endif
 
      return
      end
