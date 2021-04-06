c     This subroutine is called by the hook extraweightshook.h in
c     rwl_setup_param_weights.f.  It allows to perform stage4 on-the-fly
c     reweighting for parameters other than PDF and (muR,muF) scale
c     variation.

c     If you want to use it, rwl_setup_param_extraweights.f should be
c     compiled by the Makefile, and the hook file should be present in
c     your local process directory.
      
c     In this particular case, it deals with the parameter kappaq that
c     we use in setlocalscales.f

c     Howto:
c     1) include common_kappaQ in setlocalscales
c     2) use kappaQ where needed
      
c     kappar = st_renfact
c     kappaf = st_facfact
c     if(ckappaq.gt.0) kappaq = ckappaq

      subroutine rwl_setup_params_extraweights(count)
      implicit none
      integer count
      logical rwl_keypresent
      real * 8 val
      real *8 ckappaq
      common/common_kappaQ/ckappaq
      real *8 ckill_D3
      common/common_kill_D3/ckill_D3

      if(rwl_keypresent(count,'kappaQ',val)) then
         ckappaq = val
      else
         ckappaq = -1d0
      endif

      if(rwl_keypresent(count,'kill_D3',val)) then
         ckill_D3 = val
      else
         ckill_D3 = -1d0
      endif
       
      end


