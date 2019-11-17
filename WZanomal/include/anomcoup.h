      double precision delg1_z,delg1_g,lambda_g,lambda_z,
     & delk_g,delk_z,tevscale
      double precision xdelg1_z,xdelg1_g,xlambda_g,xlambda_z,
     & xdelk_g,xdelk_z
      double precision delgQuL_z,delgQuR_z,delgQdL_z,delgQdR_z,
     & delgQL_w,delgQR_w
      double precision lambda, C3W, CHDD, CHWB, C1Hq,
     & C3Hq, C3Hl, CHu, CHd, CHud, Cll
      logical anomtgc
      integer nEFT, EFTswitch, EFTsu2
      common/anomcoup/delg1_z,delg1_g,lambda_g,
     & lambda_z,delk_g,delk_z,
     & tevscale,anomtgc, nEFT, EFTswitch, EFTsu2
      common/anomcoupquark/delgQuL_z,delgQuR_z,delgQdL_z,
     & delgQdR_z,delgQL_w,delgQR_w
      common/eftwilson/lambda, C3W, CHDD, CHWB, C1Hq,
     & C3Hq, C3Hl, CHu, CHd, CHud, Cll
