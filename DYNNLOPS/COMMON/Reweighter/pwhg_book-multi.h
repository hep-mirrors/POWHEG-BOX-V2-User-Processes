c     -*- Fortran -*-
C     AK 3d histos
      real * 8 hist3,xhis3,yhis3,zhis3
     &     ,hdel3,xproj3,yproj3,hmin3
     &     ,hmax3,havg3,hint3,hsig3
     &     ,uscore3d,oscore3d 
      integer nbin3,ihis3,ioscore3,ient3,nhist3
      integer binx, biny, binz,nmulti
      character * 3 book3
      character * 50 title3
      
      integer nmh3d,nmh23d,nmh33d,nmh43d,nmb3d,nxm3d,
     1     iuscore3,ient3d,maxbinx,maxbiny,maxbinz,maxbins,maxmulti
      parameter(nmh3d=6,nmh23d=2*nmh3d,nmh33d=3*nmh3d,
     1     nmh43d=4*nmh3d,nmb3d=5*nmh3d,nxm3d=25,
     $     maxbinx=25,maxbiny=25,maxbinz=25,
     $     maxbins=maxbinx*maxbiny*maxbinz,maxmulti=10)
      
C     common/histo3/hist3(nmb3d,nxm3d,nxm3d),xhis3(nmb3d,nxm3d),
      common/histo3/hist3(maxmulti,nxm3d,nxm3d,nxm3d,nmb3d),xhis3(nmb3d,nxm3d),
     &     yhis3(nmb3d,nxm3d) ,zhis3(nmb3d,nxm3d) 
     &     ,hdel3(3,nmb3d),xproj3(maxmulti,nmb3d,nxm3d),yproj3(maxmulti,nmb3d,nxm3d),
     &     hmin3(3,nmb3d),binx(nmh3d),biny(nmh3d),binz(nmh3d)
     &     ,hmax3(3,nmb3d),havg3(3,nmb3d),hint3(maxmulti,nmb3d),hsig3(3,nmb3d)
     &     ,nbin3(3,nmb3d),ihis3(nmb3d,nxm3d,nxm3d,nxm3d),ioscore3(nmb3d)
     &     ,ient3(nmb3d),nhist3,book3(nmb3d),nmulti,
     &     title3(nmb3d),iuscore3(nmb3d),uscore3d(nmb3d),oscore3d(nmb3d)
      

