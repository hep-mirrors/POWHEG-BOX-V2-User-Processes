      subroutine sborn_cl_003(p_born,wgtmunu,wgt)
      implicit none
      include "nexternal.inc"
      double precision p_born(0:3,nexternal-1),wgt(0:nexternal-1),
     &    wgtmunu(0:3,0:3,nexternal-1)
      double complex wgt1(2),wm(6),wp(6),wms(6),wps(6),cwgtmunu(0:3,0:3)
      integer i,j,leg
 
      do leg=1,nexternal-1
 
      wgt1(1)=(0d0,0d0)
      wgt1(2)=(0d0,0d0)
      wgt(0) = 0d0
      do i=1,4
         wm(i) = 0d0
         wp(i) = 0d0
         wms(i)= 0d0
         wps(i)= 0d0
      enddo
      
      if ( leg.eq.           1  ) then
         call sb_cl_003_001(p_born,wgt1)
         wgt(0)=dble(wgt1(1))+dimag(wgt1(1))
      elseif ( leg.eq.           2  ) then
         call VXXXXX(p_born(0,leg),0d0, 1,-1,Wp)
         call VXXXXX(p_born(0,leg),0d0,-1,-1,Wm)
         call VXXXXX(p_born(0,leg),0d0, 1, 1,Wps)
         call VXXXXX(p_born(0,leg),0d0,-1, 1,Wms)
         call sb_cl_003_002(p_born,wgt1)
         wgt(0)=dble(wgt1(1))+dimag(wgt1(1))
      elseif ( leg.eq.           5  ) then
         call sb_cl_003_003(p_born,wgt1)
         wgt(0)=dble(wgt1(1))+dimag(wgt1(1))
      elseif ( leg.eq.           6  ) then
         call sb_cl_003_004(p_born,wgt1)
         wgt(0)=dble(wgt1(1))+dimag(wgt1(1))
      elseif ( leg.eq.           7  ) then
         call sb_cl_003_005(p_born,wgt1)
         wgt(0)=dble(wgt1(1))+dimag(wgt1(1))
      endif
 
      wgt(leg)=wgt(0)
      do i=0,3
         do j=0,3
            if (leg.le.2) then
               cwgtmunu(i,j)= dble(wgt1(1))*wms(i+1)*wm(j+1)+
     &                       dimag(wgt1(1))*wps(i+1)*wp(j+1)+
     &                              wgt1(2)*wps(i+1)*wm(j+1)+
     &                      dconjg(wgt1(2))*wms(i+1)*wp(j+1)
            else
               cwgtmunu(i,j)= dble(wgt1(1))*wm(i+1)*wms(j+1)+
     &                       dimag(wgt1(1))*wp(i+1)*wps(j+1)+
     &                              wgt1(2)*wp(i+1)*wms(j+1)+
     &                      dconjg(wgt1(2))*wm(i+1)*wps(j+1)
            endif
      !      if (dble(cwgtmunu(i,j)).ne.0d0) then
      !        if(dimag(cwgtmunu(i,j))/dble(cwgtmunu(i,j)).gt.1d-15) then
      !           write (*,*) "ERROR in sborn_cl_003: Bmunu is complex"
      !           stop
      !         endif
      !      endif
            wgtmunu(i,j,leg)=dble(cwgtmunu(i,j))
         enddo
      enddo
 
      enddo ! loop over legs
 
      return
      end
