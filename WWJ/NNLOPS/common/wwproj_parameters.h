c -*- Fortran -*-

c----- Number of bins after rebinning:
C      integer, parameter ::  nbin_yWW  = 18 ! number of bins -- binedges = nbin+1  
C      integer, parameter ::  nbin_dyWW = 12 
C      integer, parameter ::  nbin_ptWm = 21
C
      integer, parameter ::  nbin_yWW  = 14 ! number of bins -- binedges = nbin+1  
!      integer, parameter ::  nbin_dyWW = 14 ! half raneg 
      integer, parameter ::  nbin_dyWW = 28  ! full range 
      integer, parameter ::  nbin_ptWm = 15

      integer, parameter ::  ii_yWW  = 0 
      integer, parameter ::  ii_dyWW = 1 
      integer, parameter ::  ii_ptWm = 2 
      real *8 arr_yWW(nbin_yWW+1),arr_dyWW(nbin_dyWW+1),arr_PtWm(nbin_ptWm+1) 
      common/carray/arr_yWW,arr_dyWW,arr_PtWm

c---> jet-stuff
      integer maxtrack,maxjet,ntracks,jet
      parameter (maxtrack=2048,maxjet=2048)
      real*8 ptrack,pjet,ptjet,yjet
      common/jet_stuff/ntracks,jet(maxjet),
     $     ptrack(4,maxtrack),pjet(4,maxjet),ptjet(maxjet),yjet(maxjet)
c---> h(pT) profile function:
      logical h_scaler
      parameter (h_scaler=.true.)  !--- currently only .true. works
C 12/03/2018 
C      parameter (h_scaler=.false.)
      real*8 beta_const,mass_const
      integer gamma_const
      parameter (beta_const=1d0,mass_const=80.399d0,gamma_const=2)
