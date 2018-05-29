c -*- Fortran -*-
      integer, parameter:: dp=kind(0.d0) ! double precision
c---> reweighting scenarios
      integer nscen
      parameter (nscen=1)

c---  > Common part
      real*8 xbins,ybins,zbins
      real*8 num_hist3,den_hist3
      integer hist_sigTOT,hist_TOT,hist_sigAAA,hist_AAA,hist_sigXXX,hist_XXX
C      integer hist_NNLOsig,hist_MINLOhpt,hist_MINLOomh
      real*8 overall_kfact,resc,overall_kfactA
      real*8 w_MiNLO(maxmulti),w_NNLO(maxmulti)

      common/common_bins/xbins(2,nmh3d,maxbinx),ybins(2,nmh3d,maxbiny)
     $     ,zbins(2,nmh3d,maxbinz)
      common/reweighting_tables/num_hist3(maxmulti,2,nmh3d,maxbins3)
     $     ,den_hist3(maxmulti,2,nmh3d,maxbins3)
      common/table_index/hist_sigTOT,hist_TOT(ndist),hist_sigAAA,hist_AAA(ndist),hist_sigXXX,hist_XXX(ndist)
C      common/table_index/hist_NNLOsig(ndist),hist_MINLOhpt(ndist),hist_MINLOomh(ndist)
      common/rescalings/overall_kfact(maxmulti,maxmulti),resc(maxmulti,maxmulti,nscen),overall_kfactA(maxmulti,maxmulti)

c---> counters:
      integer RangeCounter,MaxRescalingExceeded
      common/counters/RangeCounter,MaxRescalingExceeded(maxmulti,maxmulti,nscen)

c---> conversion between NNLO and PWHG units ([fb], [pb])
      real*8 NNLOnorm
      !parameter (NNLOnorm=1d0) !check output of MCFM, output of PWHG
      parameter (NNLOnorm=1d-3)

c---> maxlines for 3d-histogram
      integer maxlines
C      parameter (maxlines=735379)
      parameter (maxlines=953113)
C      parameter (maxlines=700386)

c---> option flags and parameters:
      logical dump_on_last,kfact_resc
      parameter (dump_on_last=.false.)
      parameter (kfact_resc=.true.)
      
      real*8 maxrescaling
!      parameter (maxrescaling=5d0) !-- set maxrescaling
      parameter (maxrescaling=20d0) !-- set maxrescaling
      real*8 rfj_hpt, palg_hpt
      parameter (rfj_hpt =0.4d0)  !-- jet radius for evaluation of h(pT) function
      parameter (palg_hpt=1d0)    !-- jet algorithm for evaluation of h(pT) function

c-----> pointers to 3d-histograms (indices)
      integer pointer,pointerA,pointerX
      common/pointers_tables/pointer(ndist),pointerA(ndist),pointerX(ndist)
      
c----->
      integer maxmode,CScoeffs(9)
      parameter ( CScoeffs = (/ 1,2,3,4,5,6,7,8,9 /) ) !>> CS-coefficients (0..7) for reweighting; total=8
C     remove CS angles 
C      integer maxmode,CScoeffs(1)
C      parameter ( CScoeffs = (/ 9 /) ) !>> CS-coefficients (0..7) for reweighting; total=8

C      parameter (maxmode=10)    !>> maximal value: maxspectral
      
