      double precision ww_one,ww_two,ww_half
      parameter(ww_one=1d0,ww_two=2d0,ww_half=1d0/2d0)
      double precision ww_xn,ww_xnsq,ww_cf
      integer ww_nf,ww_mxpart
      parameter(ww_xn=3d0,ww_cf=4d0/3d0)
      parameter(ww_nf=4,ww_mxpart=12,ww_xnsq=9d0)
      double precision ww_v
      parameter (ww_v=8d0)
      double precision ww_spinave,ww_aveqq,ww_aveqg,ww_avegg
      parameter(ww_spinave=0.25d0)
      parameter(ww_aveqq=0.25d0/ww_xnsq,ww_aveqg=0.25d0/ww_xn/ww_v)
      parameter(ww_avegg=0.25d0/ww_v**2)
      double complex ww_czip,ww_cone,ww_im,ww_impi
      parameter (ww_czip=(0d0,0d0),ww_cone=(1d0,0d0),ww_im=(0d0,1d0))
      double precision ww_pi,ww_twopi,ww_fourpi,ww_pisq,ww_pisqo6
      parameter(ww_pi=3.14159265358979d0,ww_pisq=ww_pi*ww_pi)
      parameter(ww_twopi=2d0*ww_pi,ww_fourpi=4d0*ww_pi)
      parameter(ww_pisqo6=ww_pisq/6d0)
      parameter (ww_impi=(0d0,ww_pi))

