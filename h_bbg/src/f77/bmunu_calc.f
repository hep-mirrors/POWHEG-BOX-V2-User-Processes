c=======================================================================
c-----> this routine returns Bmunu computed using FORM
      function bmunu_calc(mu,nu,k1,k2,k3,k4)
      implicit none

      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'math_const.f'

      real*8 bmunu_calc
      integer mu,nu
      real*8 k1(0:3),k2(0:3),k3(0:3),k4(0:3)
      real*8 k24(0:3),k34(0:3)
      real*8 T12,T13,S23,MH2
      real*8 x12,x13
      real*8 square4,dot4
      real*8 msq_Hbb0,mh

      real*8 metric(0:3,0:3)
      data metric/1d0, 0d0, 0d0, 0d0,
     #            0d0,-1d0, 0d0, 0d0,
     #            0d0, 0d0,-1d0, 0d0,
     #            0d0, 0d0, 0d0,-1d0/
      save metric

      k24=k2+k4
      k34=k3+k4
      
      T12=square4( k1(0:3)-k2(0:3) )
      T13=square4( k1(0:3)-k3(0:3) )

      x12=one/T12
      x13=one/T13
      mh=ph_hmass

      bmunu_calc =
     $     - 8*dot4(k2,k3)*k34(mu)*k24(nu)*x12*x13
     $     - 8*dot4(k2,k3)*k34(nu)*k24(mu)*x12*x13
     $     + 4*dot4(k2,k3)*dot4(k34,k34)*metric(mu,nu)*x12**2
     $     + 8*dot4(k2,k3)*dot4(k34,k24)*metric(mu,nu)*x12*x13
     $     + 4*dot4(k2,k3)*dot4(k24,k24)*metric(mu,nu)*x13**2
     $     + 8*dot4(k2,k34)*k3(mu)*k34(nu)*x12**2
     $     + 8*dot4(k2,k34)*k3(nu)*k34(mu)*x12**2
     $     - 8*dot4(k2,k34)*dot4(k3,k34)*metric(mu,nu)*x12**2
     $     - 8*dot4(k2,k34)*dot4(k3,k24)*metric(mu,nu)*x12*x13
     $     + 8*dot4(k2,k24)*k3(mu)*k34(nu)*x12*x13
     $     + 8*dot4(k2,k24)*k3(nu)*k34(mu)*x12*x13
     $     - 8*dot4(k2,k24)*dot4(k3,k34)*metric(mu,nu)*x12*x13
     $     - 8*dot4(k2,k24)*dot4(k3,k24)*metric(mu,nu)*x13**2
     $     + 8*dot4(k3,k34)*k2(mu)*k24(nu)*x12*x13
     $     + 8*dot4(k3,k34)*k2(nu)*k24(mu)*x12*x13
     $     + 8*dot4(k3,k24)*k2(mu)*k24(nu)*x13**2
     $     + 8*dot4(k3,k24)*k2(nu)*k24(mu)*x13**2
     $     - 4*dot4(k34,k34)*k2(mu)*k3(nu)*x12**2
     $     - 4*dot4(k34,k34)*k2(nu)*k3(mu)*x12**2
     $     - 8*dot4(k34,k24)*k2(mu)*k3(nu)*x12*x13
     $     - 8*dot4(k34,k24)*k2(nu)*k3(mu)*x12*x13
     $     - 4*dot4(k24,k24)*k2(mu)*k3(nu)*x13**2
     $     - 4*dot4(k24,k24)*k2(nu)*k3(mu)*x13**2

      bmunu_calc = bmunu_calc * msq_Hbb0(mh) * 16d0 * pi**2 / mh**2 / Nc
      
!>>   add QCD coupling (H>bbg):
      bmunu_calc = bmunu_calc * (st_alpha/(two*pi))


      
      return
      end

