c
c provide POWHEG momenta in format required for NLOX and
c call NLOX amplitude routines
c
      subroutine ttW_interface(nlo,p,flav,born,virt)
      implicit none
      include 'nlegborn.h'
      include 'coupl.inc'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'PhysPars.h'
      include 'nlox_fortran_interface.f90'
      integer :: nlo, flav(nlegborn)
      real(kind(1d0)) :: p(0:3,nlegborn), born, virt, alphas, alphae
      real(kind(1d0)) :: pp(25), mu, rval(3), acc, born_nlox, virt_nlox
      ! Avoid parameters in NLOX interface
      integer :: next = 5, isub = 0
      character(len=9) :: typB = "tree_tree"
      character(len=9) ::  cpB = "g2e1_g2e1"
      character(len=9) :: typV = "tree_loop"
      character(len=9) ::  cpV = "g2e1_g4e1"
      integer :: ltyp = 9, lcp = 9

c local variables
      alphas = st_alpha
      alphae = 1d0

c renormalization scale
      mu = dsqrt(st_muren2) !value set in POWHEG

c initialize:
      born = 0d0
      virt = 0d0

c determine which channel we need:
      if( flav(1) > 0 ) then
        ! q, qbar, W, t, tb
        pp(:) = [ p(0:3,1), 0d0, p(0:3,2), 0d0, p(0:3,3), 0d0, p(0:3,4), 0d0, p(0:3,5), 0d0 ]
      else
        ! qbar, q, W, t, tb
        pp(:) = [ p(0:3,2), 0d0, p(0:3,1), 0d0, p(0:3,3), 0d0, p(0:3,4), 0d0, p(0:3,5), 0d0 ]
      endif

c calculate the matrix element squared using NLOX
      if( nlo == 0 ) then
        ! born or fakevirt
        call NLOX_OLP_EvalSubProcess(isub, typB, ltyp, cpB, lcp, pp, next,mu, rval, acc)
        born_nlox = rval(3)
        born = born_nlox*alphae*alphas**2
      else
        ! virtual
        call NLOX_OLP_EvalSubProcess(isub, typV, ltyp, cpV, lcp, pp, next,mu, rval, acc)
        virt_nlox = rval(3)
        if( acc < 0 ) virt_nlox = 0d0
        virt = virt_nlox*alphae*alphas**3
      endif

      return
      end
