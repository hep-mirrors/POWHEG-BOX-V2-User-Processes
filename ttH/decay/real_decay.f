      subroutine sreal_decay(p,legs,wgt)
      implicit none
      include "nexternal_real_dec.inc"
      include "coupl.inc"
      double precision p(0:3,nexternal),wgt
      integer legs(nexternal)
      double precision P1(0:3,nexternal)
      integer i
 
c legs = external particle IDs      
c
c momenta p correspond to a b -> H  b e+ ve b~ e- ve~ c, but 
c amplitudes are for momenta p1 with  a b ->    b e+ ve b~ e- ve~ H c 
c
c -> need to rearrange:
c
      p1(:,1:2) = p(:,1:2) !incoming partons
      p1(:,9)   = p(:,3) ! Higgs
      p1(:,10) = p(:,10) !outgoing parton
      do i = 3,8
         p1(:,i) = p(:,i+1)
      enddo   
      
      ! qbq->...g:
      if ((legs(1).lt.0).and.(legs(2).gt.0).and.(legs(10).eq.0)) then 
         call real_dbdg_tth_dec(p1,wgt)         
         goto 20
      ! qqb->...g:
      elseif ((legs(1).gt.0).and.(legs(2).lt.0).and.(legs(10).eq.0)) then 
         call real_ddbg_tth_dec(p1,wgt)         
         goto 20
      ! qbg->...qb:
      elseif ((legs(1).lt.0).and.(legs(2).eq.0).and.(legs(10).lt.0)) then 
         call real_dbgdb_tth_dec(p1,wgt)         
         goto 20
      ! qg->...q:
      elseif ((legs(1).gt.0).and.(legs(2).eq.0).and.(legs(10).gt.0)) then 
         call real_dgd_tth_dec(p1,wgt)         
         goto 20
      ! gqb->...qb:
      elseif ((legs(1).eq.0).and.(legs(2).lt.0).and.(legs(10).lt.0)) then 
         call real_gdbdb_tth_dec(p1,wgt)         
         goto 20
      ! gq->...q:
      elseif ((legs(1).eq.0).and.(legs(2).gt.0).and.(legs(10).gt.0)) then 
         call real_gdd_tth_dec(p1,wgt)         
         goto 20
      ! gg->...g:
      elseif ((legs(1).eq.0).and.(legs(2).eq.0).and.(legs(10).eq.0)) then 
         call real_ggg_tth_dec(p1,wgt)         
         goto 20
      endif   
      
 20   continue
      return
      end
      
   
