      double complex function ww_a6loops(j1,j2,j3,j4,j5,j6,ww_za,ww_zb)
      implicit none
      include 'ww_constants.f'
      include 'ww_zprods_decl.f'
c---  DKS Eq. 3.15
      integer j1,j2,j3,j4,j5,j6
      double complex ww_a6loopa
      ww_a6loops=ww_a6loopa(j1,j2,j3,j4,j5,j6,ww_za,ww_zb)
     .          +ww_a6loopa(j1,j2,j6,j5,j4,j3,ww_za,ww_zb)
      return
      end
        
      double complex function ww_a6loopa(j1,j2,j3,j4,j5,j6,ww_za,ww_zb)
      implicit none
c---  DKS Eq. 2.10 for alpha = a
c---  note that (-i) included in A(alpha),A(tree,alpha)
c---  so no factor of (+i) in front of F(alpha)
      include 'ww_constants.f'
      include 'ww_sprods_com.f'
      include 'ww_zprods_decl.f'
      integer j1,j2,j3,j4,j5,j6
      double complex tree,ww_Vpole,ww_a6treea,ww_fa
      tree=ww_a6treea(j1,j2,j3,j4,j5,j6,ww_za,ww_zb)
      ww_a6loopa=tree*ww_Vpole(ww_s(1,2))
     $          +ww_fa(j1,j2,j3,j4,j5,j6,ww_za,ww_zb)

      return 
      end

              

        
