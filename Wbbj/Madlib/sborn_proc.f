      subroutine sborn_proc(p_born,legs,wgt,wgtjk,wgtmunu)
      implicit none
      include "nexternal.inc"
      include "coupl.inc"
      double precision wgt
      double precision p_born(0:3,nexternal-1),wgt2(nexternal-1),
     &   wgtmunu(0:3,0:3,nexternal-1),wgtjk(nexternal-1,nexternal-1)
      double precision p_born1(0:3,nexternal-1),wgt1(0:nexternal-1),
     &   wgtmunu1(0:3,0:3,nexternal-1),wgtjk1(nexternal-1,nexternal-1)
      integer legs(nexternal-1),lstr,i
      character*140 str
      integer ic(nexternal-1),legs1(nexternal-1)
      logical mtc,even
      logical calculatedBorn
      integer skip
      common/cBorn/calculatedBorn,skip
 
      calculatedBorn=.false.
      
      do i=1,nexternal-1
         ic(i)=i
      enddo
      mtc=.false.
 10   call nexper(nexternal-1- 4,ic( 4+1),mtc,even)
      do i= 4+1,nexternal-1
         ic(i)=ic(i)+ 4
      enddo
      CALL SWITCHMOM (P_born,P_born1,IC,NEXTERNAL-1)
      CALL SWITCHLEGS(legs,legs1,IC,NEXTERNAL-1)
      
      call convert_to_string(nexternal-1,legs1,str,lstr)
      
      if (str.eq."-12-11125-50") then
         call sborn_cl_001(p_born1,wgtmunu1,wgt1)
         call sborn_sf_001(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."-14-11125-50") then
         call sborn_cl_002(p_born1,wgtmunu1,wgt1)
         call sborn_sf_002(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."-10-11125-5-2") then
         call sborn_cl_003(p_born1,wgtmunu1,wgt1)
         call sborn_sf_003(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."-10-11125-5-4") then
         call sborn_cl_004(p_born1,wgtmunu1,wgt1)
         call sborn_sf_004(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."2-1-11125-50") then
         call sborn_cl_005(p_born1,wgtmunu1,wgt1)
         call sborn_sf_005(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."2-3-11125-50") then
         call sborn_cl_006(p_born1,wgtmunu1,wgt1)
         call sborn_sf_006(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."20-11125-51") then
         call sborn_cl_007(p_born1,wgtmunu1,wgt1)
         call sborn_sf_007(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."20-11125-53") then
         call sborn_cl_008(p_born1,wgtmunu1,wgt1)
         call sborn_sf_008(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."4-1-11125-50") then
         call sborn_cl_009(p_born1,wgtmunu1,wgt1)
         call sborn_sf_009(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."4-3-11125-50") then
         call sborn_cl_010(p_born1,wgtmunu1,wgt1)
         call sborn_sf_010(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."40-11125-51") then
         call sborn_cl_011(p_born1,wgtmunu1,wgt1)
         call sborn_sf_011(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."40-11125-53") then
         call sborn_cl_012(p_born1,wgtmunu1,wgt1)
         call sborn_sf_012(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."-32-11125-50") then
         call sborn_cl_013(p_born1,wgtmunu1,wgt1)
         call sborn_sf_013(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."-34-11125-50") then
         call sborn_cl_014(p_born1,wgtmunu1,wgt1)
         call sborn_sf_014(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."-30-11125-5-2") then
         call sborn_cl_015(p_born1,wgtmunu1,wgt1)
         call sborn_sf_015(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."-30-11125-5-4") then
         call sborn_cl_016(p_born1,wgtmunu1,wgt1)
         call sborn_sf_016(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."0-1-11125-5-2") then
         call sborn_cl_017(p_born1,wgtmunu1,wgt1)
         call sborn_sf_017(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."0-1-11125-5-4") then
         call sborn_cl_018(p_born1,wgtmunu1,wgt1)
         call sborn_sf_018(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."02-11125-51") then
         call sborn_cl_019(p_born1,wgtmunu1,wgt1)
         call sborn_sf_019(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."02-11125-53") then
         call sborn_cl_020(p_born1,wgtmunu1,wgt1)
         call sborn_sf_020(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."04-11125-51") then
         call sborn_cl_021(p_born1,wgtmunu1,wgt1)
         call sborn_sf_021(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."04-11125-53") then
         call sborn_cl_022(p_born1,wgtmunu1,wgt1)
         call sborn_sf_022(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."0-3-11125-5-2") then
         call sborn_cl_023(p_born1,wgtmunu1,wgt1)
         call sborn_sf_023(p_born1,wgtjk1)
         goto 20
      elseif (str.eq."0-3-11125-5-4") then
         call sborn_cl_024(p_born1,wgtmunu1,wgt1)
         call sborn_sf_024(p_born1,wgtjk1)
         goto 20
      endif
      
      do while(mtc)
         do i= 4+1,nexternal-1
            ic(i)=ic(i)- 4
         enddo
         goto 10
      enddo
      if (.not.mtc) then
         write (*,*) "Error #1, in sborn_proc.f"
         stop
      endif
      
 20   wgt=0d0
      call switchborns(wgt1(1),wgt2,wgtjk1,wgtjk,wgtmunu1,wgtmunu,
     &     ic,nexternal-1)
      do i=1,nexternal-1
         if(wgt.eq.0d0 .and. wgt2(i).ne.0d0) then
            wgt=wgt2(i)
         elseif (wgt.ne.0d0 .and. wgt2(i).ne.0d0 .and.
     &           abs((wgt-wgt2(i))/wgt).gt.1d-7 ) then
            write (*,*) "Error #2 in sborn_proc ",i,wgt2
            stop
         endif
      enddo
      
      end
      
      
      
      
      
      subroutine born_color(legs,color)
      implicit none
      include "nexternal.inc"
      integer maxamps
      parameter (maxamps=6000)
      Double Precision amp2001(maxamps), jamp2001(0:maxamps)
      common/to_amps_001/amp2001,jamp2001
      Double Precision amp2002(maxamps), jamp2002(0:maxamps)
      common/to_amps_002/amp2002,jamp2002
      Double Precision amp2003(maxamps), jamp2003(0:maxamps)
      common/to_amps_003/amp2003,jamp2003
      Double Precision amp2004(maxamps), jamp2004(0:maxamps)
      common/to_amps_004/amp2004,jamp2004
      Double Precision amp2005(maxamps), jamp2005(0:maxamps)
      common/to_amps_005/amp2005,jamp2005
      Double Precision amp2006(maxamps), jamp2006(0:maxamps)
      common/to_amps_006/amp2006,jamp2006
      Double Precision amp2007(maxamps), jamp2007(0:maxamps)
      common/to_amps_007/amp2007,jamp2007
      Double Precision amp2008(maxamps), jamp2008(0:maxamps)
      common/to_amps_008/amp2008,jamp2008
      Double Precision amp2009(maxamps), jamp2009(0:maxamps)
      common/to_amps_009/amp2009,jamp2009
      Double Precision amp2010(maxamps), jamp2010(0:maxamps)
      common/to_amps_010/amp2010,jamp2010
      Double Precision amp2011(maxamps), jamp2011(0:maxamps)
      common/to_amps_011/amp2011,jamp2011
      Double Precision amp2012(maxamps), jamp2012(0:maxamps)
      common/to_amps_012/amp2012,jamp2012
      Double Precision amp2013(maxamps), jamp2013(0:maxamps)
      common/to_amps_013/amp2013,jamp2013
      Double Precision amp2014(maxamps), jamp2014(0:maxamps)
      common/to_amps_014/amp2014,jamp2014
      Double Precision amp2015(maxamps), jamp2015(0:maxamps)
      common/to_amps_015/amp2015,jamp2015
      Double Precision amp2016(maxamps), jamp2016(0:maxamps)
      common/to_amps_016/amp2016,jamp2016
      Double Precision amp2017(maxamps), jamp2017(0:maxamps)
      common/to_amps_017/amp2017,jamp2017
      Double Precision amp2018(maxamps), jamp2018(0:maxamps)
      common/to_amps_018/amp2018,jamp2018
      Double Precision amp2019(maxamps), jamp2019(0:maxamps)
      common/to_amps_019/amp2019,jamp2019
      Double Precision amp2020(maxamps), jamp2020(0:maxamps)
      common/to_amps_020/amp2020,jamp2020
      Double Precision amp2021(maxamps), jamp2021(0:maxamps)
      common/to_amps_021/amp2021,jamp2021
      Double Precision amp2022(maxamps), jamp2022(0:maxamps)
      common/to_amps_022/amp2022,jamp2022
      Double Precision amp2023(maxamps), jamp2023(0:maxamps)
      common/to_amps_023/amp2023,jamp2023
      Double Precision amp2024(maxamps), jamp2024(0:maxamps)
      common/to_amps_024/amp2024,jamp2024
      double precision jamp2cum(0:maxamps)
      integer ICOLUP(2,nexternal-1,maxamps)
      integer color(2,nexternal-1),color1(2,nexternal-1)
      double precision random,xtarget
      external random
      integer legs(nexternal-1),lstr,i,j
      character*140 str
      integer ic(nexternal-1),legs1(nexternal-1)
      integer iflow,ifl
      logical mtc,even
      
      do i=1,nexternal-1
         ic(i)=i
      enddo
      mtc=.false.
 10   call nexper(nexternal-1- 4,ic( 4+1),mtc,even)
      do i= 4+1,nexternal-1
         ic(i)=ic(i)+ 4
      enddo
      CALL SWITCHLEGS(legs,legs1,IC,NEXTERNAL-1)
      
      call convert_to_string(nexternal-1,legs1,str,lstr)
      
      if (str.eq."-12-11125-50") then
         include "leshouches_001.inc"
         iflow=nint(jamp2001(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2001(i)
         enddo
         goto 20
      elseif (str.eq."-14-11125-50") then
         include "leshouches_002.inc"
         iflow=nint(jamp2002(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2002(i)
         enddo
         goto 20
      elseif (str.eq."-10-11125-5-2") then
         include "leshouches_003.inc"
         iflow=nint(jamp2003(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2003(i)
         enddo
         goto 20
      elseif (str.eq."-10-11125-5-4") then
         include "leshouches_004.inc"
         iflow=nint(jamp2004(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2004(i)
         enddo
         goto 20
      elseif (str.eq."2-1-11125-50") then
         include "leshouches_005.inc"
         iflow=nint(jamp2005(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2005(i)
         enddo
         goto 20
      elseif (str.eq."2-3-11125-50") then
         include "leshouches_006.inc"
         iflow=nint(jamp2006(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2006(i)
         enddo
         goto 20
      elseif (str.eq."20-11125-51") then
         include "leshouches_007.inc"
         iflow=nint(jamp2007(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2007(i)
         enddo
         goto 20
      elseif (str.eq."20-11125-53") then
         include "leshouches_008.inc"
         iflow=nint(jamp2008(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2008(i)
         enddo
         goto 20
      elseif (str.eq."4-1-11125-50") then
         include "leshouches_009.inc"
         iflow=nint(jamp2009(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2009(i)
         enddo
         goto 20
      elseif (str.eq."4-3-11125-50") then
         include "leshouches_010.inc"
         iflow=nint(jamp2010(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2010(i)
         enddo
         goto 20
      elseif (str.eq."40-11125-51") then
         include "leshouches_011.inc"
         iflow=nint(jamp2011(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2011(i)
         enddo
         goto 20
      elseif (str.eq."40-11125-53") then
         include "leshouches_012.inc"
         iflow=nint(jamp2012(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2012(i)
         enddo
         goto 20
      elseif (str.eq."-32-11125-50") then
         include "leshouches_013.inc"
         iflow=nint(jamp2013(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2013(i)
         enddo
         goto 20
      elseif (str.eq."-34-11125-50") then
         include "leshouches_014.inc"
         iflow=nint(jamp2014(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2014(i)
         enddo
         goto 20
      elseif (str.eq."-30-11125-5-2") then
         include "leshouches_015.inc"
         iflow=nint(jamp2015(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2015(i)
         enddo
         goto 20
      elseif (str.eq."-30-11125-5-4") then
         include "leshouches_016.inc"
         iflow=nint(jamp2016(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2016(i)
         enddo
         goto 20
      elseif (str.eq."0-1-11125-5-2") then
         include "leshouches_017.inc"
         iflow=nint(jamp2017(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2017(i)
         enddo
         goto 20
      elseif (str.eq."0-1-11125-5-4") then
         include "leshouches_018.inc"
         iflow=nint(jamp2018(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2018(i)
         enddo
         goto 20
      elseif (str.eq."02-11125-51") then
         include "leshouches_019.inc"
         iflow=nint(jamp2019(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2019(i)
         enddo
         goto 20
      elseif (str.eq."02-11125-53") then
         include "leshouches_020.inc"
         iflow=nint(jamp2020(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2020(i)
         enddo
         goto 20
      elseif (str.eq."04-11125-51") then
         include "leshouches_021.inc"
         iflow=nint(jamp2021(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2021(i)
         enddo
         goto 20
      elseif (str.eq."04-11125-53") then
         include "leshouches_022.inc"
         iflow=nint(jamp2022(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2022(i)
         enddo
         goto 20
      elseif (str.eq."0-3-11125-5-2") then
         include "leshouches_023.inc"
         iflow=nint(jamp2023(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2023(i)
         enddo
         goto 20
      elseif (str.eq."0-3-11125-5-4") then
         include "leshouches_024.inc"
         iflow=nint(jamp2024(0))
         jamp2cum(0)=0d0
         do i=1,iflow
            jamp2cum(i)=jamp2cum(i-1)+jamp2024(i)
         enddo
         goto 20
      endif
      
      do while(mtc)
         do i= 4+1,nexternal-1
            ic(i)=ic(i)- 4
         enddo
         goto 10
      enddo
      if (.not.mtc) then
         write (*,*) "Error #1, in sborn_proc.f"
         stop
      endif
      
 20   continue
      xtarget=jamp2cum(iflow)*random()
      ifl=1
      do while (jamp2cum(ifl).lt.xtarget)
         ifl=ifl+1
      enddo
      do i=1,2
         do j=1,nexternal-1
            color1(i,j)=ICOLUP(i,j,ifl)
         enddo
      enddo
      call switchcolor(color1,color,
     &     ic,nexternal-1)
      
      end
      
      
      
      
      subroutine convert_to_string(npart,id,string,lstring)
      implicit none
      integer npart,lstring,i
      integer id(npart)
      character*140 string
      character*3 s
      
      do i=1,140
         string(i:i)=' '
      enddo
      lstring=0
      do i=1,npart
         if (id(i).eq.21) id(i)=0
         if (abs(id(i)).le.9) then
            s=char(abs(id(i))+48)
         elseif(abs(id(i)).le.99)then
            s=char(abs(id(i))/10+48)
     &           //char(mod(abs(id(i)),10)+48)
               elseif(abs(id(i)).le.999) then
                  s=char(abs(id(i))/100+48)
     &           //char((abs(id(i))-(abs(id(i))/100)*100)/10+48)
     &           //char(mod(abs(id(i))-(abs(id(i))/100)*100,10)+48)
         else
            write (*,*) 'error, particle ID is too large',abs(id(i))
         endif
         if (id(i).ge.0) then
            if (id(i).le.9) then
               string(lstring+1:lstring+1)=s
               lstring=lstring+1
            elseif (id(i).le.99) then
               string(lstring+1:lstring+2)=s
               lstring=lstring+2
            elseif (id(i).le.999) then
               string(lstring+1:lstring+3)=s
               lstring=lstring+3
            endif
         else
            if (abs(id(i)).le.9) then
               string(lstring+1:lstring+2)='-'//s
               lstring=lstring+2
            elseif (abs(id(i)).le.99) then
               string(lstring+1:lstring+3)='-'//s
               lstring=lstring+3
            elseif (abs(id(i)).le.999) then
               string(lstring+1:lstring+4)='-'//s
               lstring=lstring+4
            endif
         endif
      enddo
      end
