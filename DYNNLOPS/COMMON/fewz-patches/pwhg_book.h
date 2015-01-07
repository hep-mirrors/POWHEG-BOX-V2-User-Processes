c     -*- Fortran -*-
      real * 8  hist,xhis,hdel,hmin
     &     ,hmax,uscore,oscore,havg,hint,hsig
      character * 3 book
      character * 50 title
      integer nmh,nmh2,nmh3,nmh4,nmb,nxm,nbin,
     1     ihis,iuscore,ioscore,ient,nhist     
      parameter(nmh=300,nmh2=2*nmh,nmh3=3*nmh,
     1     nmh4=4*nmh,nmb=5*nmh,nxm=5000)
C     GZ 
C     1          nmh4=4*nmh,nmb=5*nmh,nxm=1000)
      common/histo/hist(nmb,nxm),xhis(nmb,nxm),hdel(nmb),hmin(nmb)
     &     ,hmax(nmb),uscore(nmb),oscore(nmb)
     &     ,nbin(nmb),ient(nmb),havg(nmb),hint(nmb),hsig(nmb)
     &     ,ihis(nmb,nxm),iuscore(nmb),ioscore(nmb),nhist
     &     ,book(nmb),title(nmb)
      
      
      real * 8 hist2,xhis2,yhis2
     &     ,hdel2,xproj,yproj,hmin2
     &     ,hmax2,havg2,hint2,hsig2
     &     ,uscore2d,oscore2d 
      integer nbin2,ihis2,ioscore2,ient2,nhist2
      character * 3 book2
      character * 50 title2
      
      integer nmh2d,nmh22d,nmh32d,nmh42d,nmb2d,nxm2d,
     1     iuscore2,ient2d
      parameter(nmh2d=3,nmh22d=2*nmh2d,nmh32d=3*nmh2d,
     1     nmh42d=4*nmh2d,nmb2d=5*nmh2d,nxm2d=50)
      
C     common/histo2/hist2(nmb2d,nxm2d,nxm2d),xhis2(nmb2d,nxm2d),
      common/histo2/hist2(nxm2d,nxm2d,nmb2d),xhis2(nmb2d,nxm2d),
     &     yhis2(nmb2d,nxm2d) 
     &     ,hdel2(2,nmb2d),xproj(nmb2d,nxm2d),yproj(nmb2d,nxm2d),
     &     hmin2(2,nmb2d)
     &     ,hmax2(2,nmb2d),havg2(2,nmb2d),hint2(nmb2d),hsig2(2,nmb2d)
     &     ,nbin2(2,nmb2d),ihis2(nmb2d,nxm2d,nxm2d),ioscore2(nmb2d)
     &     ,ient2(nmb2d),nhist2,book2(nmb2d),
     &     title2(nmb2d),iuscore2(nmb2d),uscore2d(nmb2d),oscore2d(nmb2d)
      
      
C     AK 3d histos
      real * 8 hist3,xhis3,yhis3,zhis3
     &     ,hdel3,xproj3,yproj3,hmin3
     &     ,hmax3,havg3,hint3,hsig3
     &     ,uscore3d,oscore3d 
      integer nbin3,ihis3,ioscore3,ient3,nhist3
      integer binx, biny, binz, nfill, maxfill
      character * 3 book3
      character * 50 title3
      
      integer nmh3d,nmh23d,nmh33d,nmh43d,nmb3d,nxm3d,
     1     iuscore3,ient3d,maxbinx,maxbiny,maxbinz,maxbins
      parameter(nmh3d=6,nmh23d=2*nmh3d,nmh33d=3*nmh3d,
     1     nmh43d=4*nmh3d,nmb3d=5*nmh3d,nxm3d=25,
     $     maxbinx=25,maxbiny=25,maxbinz=25,
     $     maxbins=maxbinx*maxbiny*maxbinz,
     $     maxfill=1000)
      
C     common/histo3/hist3(nmb3d,nxm3d,nxm3d),xhis3(nmb3d,nxm3d),
      common/histo3/hist3(nxm3d,nxm3d,nxm3d,nmb3d),xhis3(nmb3d,nxm3d),
     &     yhis3(nmb3d,nxm3d) ,zhis3(nmb3d,nxm3d) 
     &     ,hdel3(3,nmb3d),xproj3(nmb3d,nxm3d),yproj3(nmb3d,nxm3d),
     &     hmin3(3,nmb3d),binx(nmh3d,maxfill),biny(nmh3d,maxfill),binz(nmh3d,maxfill)
     &     ,hmax3(3,nmb3d),havg3(3,nmb3d),hint3(nmb3d),hsig3(3,nmb3d)
     &     ,nbin3(3,nmb3d),ihis3(nmb3d,nxm3d,nxm3d,nxm3d),ioscore3(nmb3d)
     &     ,ient3(nmb3d),nhist3,book3(nmb3d),nfill,
     &     title3(nmb3d),iuscore3(nmb3d),uscore3d(nmb3d),oscore3d(nmb3d)
      

