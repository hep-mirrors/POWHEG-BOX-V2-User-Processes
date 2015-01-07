C     computes default damping function 
      subroutine get_zdamp(ptj1,damping_vec)
      implicit  none
      real*8  ptj1
      real*8  damping_vec!:
C - Z kinematics
      real*8  zmass
      common/zmass/zmass
C - Damping factor related quantities:
      real*8  ptj1_exp,ptj1_hfact,beta

      ptj1_exp=2d0
      beta=1d0 
      ptj1_hfact=zmass*beta

      damping_vec=(ptj1_hfact**ptj1_exp)
     $       /(ptj1_hfact**ptj1_exp+ptj1**ptj1_exp)


      end

