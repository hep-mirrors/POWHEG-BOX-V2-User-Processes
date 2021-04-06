c     -*- Fortran -*-
      
c     This file is optional (it's an hook) and it is included at the end
c     of rwl_setup_params_weights.  The following subroutine is process
c     dependent and it gets called at the end of
c     rwl_setup_params_weights. It is needed to read and (re-)assign
c     non-default parameters during on-the-fly reweigting at stage 4, by
c     resetting the non-default parameters before calling
c     {gen_btilderw,gen_sigremnantrw,gen_sigremnantrw}. By default,
c     powheg automatically deals only with the token "lhapdf", "facscfact"
c     and "renscfact" (see rwl_setup_param_weights.f)

      call rwl_setup_params_extraweights(count)
c     print*, 'rwl_setup_params_extraweights called: ',count
      
