      subroutine sborn_sf_004(p_born,wgtjk)
      implicit none
      include "nexternal.inc"
      double precision p_born(0:3,nexternal-1),wgt,
     &    wgtjk(nexternal-1,nexternal-1)
      integer m,n
 
      do m=1,nexternal-2
      do n=m+1,nexternal-1
 
      if ( m.eq.           1  .and. n.eq.           2  ) then
         call sb_sf_004_004(p_born,wgt)
      elseif ( m.eq.           1  .and. n.eq.           7  ) then
         call sb_sf_004_005(p_born,wgt)
      elseif ( m.eq.           2  .and. n.eq.           1  ) then
         call sb_sf_004_006(p_born,wgt)
      elseif ( m.eq.           2  .and. n.eq.           7  ) then
         call sb_sf_004_007(p_born,wgt)
      elseif ( m.eq.           7  .and. n.eq.           1  ) then
         call sb_sf_004_008(p_born,wgt)
      elseif ( m.eq.           7  .and. n.eq.           2  ) then
         call sb_sf_004_009(p_born,wgt)
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
