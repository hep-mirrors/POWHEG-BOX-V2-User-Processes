      subroutine sborn_sf_020(p_born,wgtjk)
      implicit none
      include "nexternal.inc"
      double precision p_born(0:3,nexternal-1),wgt,
     &    wgtjk(nexternal-1,nexternal-1)
      integer m,n
 
      do m=1,nexternal-2
      do n=m+1,nexternal-1
 
      if ( m.eq.           1  .and. n.eq.           2  ) then
         call sb_sf_020_006(p_born,wgt)
      elseif ( m.eq.           1  .and. n.eq.           5  ) then
         call sb_sf_020_007(p_born,wgt)
      elseif ( m.eq.           1  .and. n.eq.           6  ) then
         call sb_sf_020_008(p_born,wgt)
      elseif ( m.eq.           1  .and. n.eq.           7  ) then
         call sb_sf_020_009(p_born,wgt)
      elseif ( m.eq.           2  .and. n.eq.           1  ) then
         call sb_sf_020_010(p_born,wgt)
      elseif ( m.eq.           2  .and. n.eq.           5  ) then
         call sb_sf_020_011(p_born,wgt)
      elseif ( m.eq.           2  .and. n.eq.           6  ) then
         call sb_sf_020_012(p_born,wgt)
      elseif ( m.eq.           2  .and. n.eq.           7  ) then
         call sb_sf_020_013(p_born,wgt)
      elseif ( m.eq.           5  .and. n.eq.           1  ) then
         call sb_sf_020_014(p_born,wgt)
      elseif ( m.eq.           5  .and. n.eq.           2  ) then
         call sb_sf_020_015(p_born,wgt)
      elseif ( m.eq.           5  .and. n.eq.           6  ) then
         call sb_sf_020_016(p_born,wgt)
      elseif ( m.eq.           5  .and. n.eq.           7  ) then
         call sb_sf_020_017(p_born,wgt)
      elseif ( m.eq.           6  .and. n.eq.           1  ) then
         call sb_sf_020_018(p_born,wgt)
      elseif ( m.eq.           6  .and. n.eq.           2  ) then
         call sb_sf_020_019(p_born,wgt)
      elseif ( m.eq.           6  .and. n.eq.           5  ) then
         call sb_sf_020_020(p_born,wgt)
      elseif ( m.eq.           6  .and. n.eq.           7  ) then
         call sb_sf_020_021(p_born,wgt)
      elseif ( m.eq.           7  .and. n.eq.           1  ) then
         call sb_sf_020_022(p_born,wgt)
      elseif ( m.eq.           7  .and. n.eq.           2  ) then
         call sb_sf_020_023(p_born,wgt)
      elseif ( m.eq.           7  .and. n.eq.           5  ) then
         call sb_sf_020_024(p_born,wgt)
      elseif ( m.eq.           7  .and. n.eq.           6  ) then
         call sb_sf_020_025(p_born,wgt)
      else
         wgt=0d0
c         write (*,*)
c     &      "No corresponding color linked Born found in sborn_sf"
      endif
 
      wgtjk(m,n)=-wgt
      wgtjk(n,m)=wgtjk(m,n)
      enddo ! loop over color-links
      enddo ! loop over color-links
 
      do m=1,nexternal-1
         wgtjk(m,m)=0d0
         do n=1,nexternal-1
            if (n.ne.m) wgtjk(m,m)=wgtjk(m,m)-wgtjk(n,m)
         enddo
      enddo
 
 
      return
      end
