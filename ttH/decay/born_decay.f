c
      subroutine sborn_decay(p,legs,wgt)
      implicit none
      include "nexternal_born_dec.inc"
      include "coupl.inc"
      double precision wgt
      double precision p(0:3,nexternal)
      double precision p1(0:3,nexternal)
      integer legs(nexternal)
      integer i


c legs = external particle IDs      
c
c momenta p correspond to a b -> H  b e+ ve b~ e- ve~ , but 
c amplitudes are for momenta p1 with  a b ->    b e+ ve b~ e- ve~ H  
c
c -> need to rearrange:
c
      p1(:,1:2) = p(:,1:2) !incoming partons
      p1(:,9)   = p(:,3) ! Higgs
      do i = 3,8
         p1(:,i) = p(:,i+1)
      enddo   


      if (legs(1).lt.0) then !qbq->Htt
         call BORN_DBD_TTH_DEC(P1,wgt)
         goto 20
      elseif (legs(1).gt.0) then !qqb->Htt
         call BORN_DDB_TTH_DEC(P1,wgt)
         goto 20
      else ! gg->Htt
         call BORN_GG_TTH_DEC(P1,wgt)
         goto 20
      endif    

 20   continue
      return
      end
      
 
