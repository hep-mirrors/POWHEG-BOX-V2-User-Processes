c -*- Fortran -*-

c-----: Common part
      integer maxmulti,nmulti
      parameter (maxmulti=50)
      common/commonpart/nmulti

c-----: 1D-histograms
      integer nhist,maxbins
      parameter (nhist=500,maxbins=500)
      character*50 stringhist(nhist)
      real*8 xhistarr(maxbins+1,nhist),
     $     yhistarr(maxmulti,0:maxbins+1,nhist)
      integer nhits(0:maxbins+1,nhist),nbins(nhist),jhist,
     $     ient1(nhist)
      real*8   yhistarr1(maxmulti,0:maxbins+1,nhist),
     $       errhistarr1(maxmulti,0:maxbins+1,nhist),
     $         yhistarr2(maxmulti,0:maxbins+1,nhist),
     $       errhistarr2(maxmulti,0:maxbins+1,nhist),
     $         yhistarr3(maxmulti,0:maxbins+1,nhist),
     $       errhistarr3(maxmulti,0:maxbins+1,nhist),
     $         yhistarr4(maxmulti,0:maxbins+1,nhist),
     $       errhistarr4(maxmulti,0:maxbins+1,nhist)
      common/histnew/xhistarr,yhistarr,
     $       yhistarr1,errhistarr1,
     $       yhistarr2,errhistarr2,
     $       yhistarr3,errhistarr3,
     $       yhistarr4,errhistarr4,
     $       nhits,nbins,jhist,ient1,
     $       stringhist
      save /histnew/

CCc-----: 3D-histograms
CC      real * 8 hist3,xhis3,yhis3,zhis3
CC     &     ,hdel3,xproj3,yproj3,hmin3
CC     &     ,hmax3,havg3,hint3,hsig3
CC     &     ,uscore3d,oscore3d 
CC      integer nbin3,ihis3,ioscore3,ient3,nhist3
CC      integer binx, biny, binz
CC      character*3 book3
CC      character*50 title3
CC      integer nmh3d,nmh23d,nmh33d,nmh43d,nmb3d,nxm3d,
CC     $     iuscore3,ient3d,maxbinx,maxbiny,maxbinz,maxbins3
CC      parameter(nmh3d=81,nmh23d=2*nmh3d,nmh33d=3*nmh3d,
CC     $     nmh43d=4*nmh3d,nmb3d=5*nmh3d,nxm3d=25,
CC     $     maxbinx=37,maxbiny=13,maxbinz=21,
CC     $     maxbins3=maxbinx*maxbiny*maxbinz)
CC      common/histo3/hist3(maxmulti,maxbinx,maxbiny,maxbinz,nmb3d),xhis3(nmb3d,maxbinx),
CC     $     yhis3(nmb3d,maxbiny),zhis3(nmb3d,maxbinz),
CC     $     hdel3(3,nmb3d),xproj3(maxmulti,nmb3d,maxbinx),yproj3(maxmulti,nmb3d,maxbiny),
CC     $     hmin3(3,nmb3d),binx(nmh3d),biny(nmh3d),binz(nmh3d),
CC     $     hmax3(3,nmb3d),havg3(3,nmb3d),hint3(maxmulti,nmb3d),hsig3(3,nmb3d),
CC     $     nbin3(3,nmb3d),ihis3(nmb3d,maxbinx,maxbiny,maxbinz),ioscore3(nmb3d),
CC     $     ient3(nmb3d),nhist3,book3(nmb3d),
CC     $     title3(nmb3d),iuscore3(nmb3d),uscore3d(nmb3d),oscore3d(nmb3d)
CCc--------------------------- added for R+V sum:
CC      real*8 hist3v,hist3r
CC      common/histo3v/hist3v(maxmulti,maxbinx,maxbiny,maxbinz,nmb3d)
CC      common/histo3r/hist3r(maxmulti,maxbinx,maxbiny,maxbinz,nmb3d)

