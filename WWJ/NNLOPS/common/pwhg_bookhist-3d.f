      subroutine inihists3
c WB: this routine sets flag 'NO' for each 3d-slot
c     then flag 'NO' will be changed by 'pwhgbook3' to 'YES'
      implicit none
      include 'pwhg_bookhist-common.h'
      integer i
      do I=1,nmb3d
         BOOK3(I)=' NO'
      enddo
      end

      SUBROUTINE SETUPMULTI3(N)
c WB: this routine sets up multiweights for 3d-histograms
      implicit none
      include 'pwhg_bookhist-common.h'
      integer i,N
      if(n.gt.maxmulti) then
         print*, 'Maximun number of multiple weights', maxmulti
         print*, N, 'Weights booked. Aborting'
         stop
      endif
      if(n.ge.1) then
         nmulti=n
      elseif(n.eq.0) then
         nmulti=1
      else
         print*, 'pwhginimultihist called with N<0'
      endif
      END  

      SUBROUTINE PWHGBOOK3(N,TIT,DELX,XMIN,XMAX,DELY,YMIN,YMAX
     $     ,DELZ,ZMIN,ZMAX)
      implicit real * 8 (a-h,o-z)
      include 'pwhg_bookhist-common.h'
      CHARACTER*(*) TIT
      NHIST3=MAX(N,NHIST3)
      TITLE3(N)=TIT                     
      BOOK3(N)='YES'
c      write(*,*) 'book', n, book3(n) 
C-- setup x-boundaries
      HDEL3(1,N)=DELX
      HMIN3(1,N)=XMIN  
      HMAX3(1,N)=XMAX
      NBIN3(1,N)=INT((XMAX-XMIN)/DELX)
C-- setup y-boundaries
      HDEL3(2,N)=DELY
      HMIN3(2,N)=YMIN  
      HMAX3(2,N)=YMAX
      NBIN3(2,N)=INT((YMAX-YMIN)/DELY)
C-- setup z-boundaries
      HDEL3(3,N)=DELZ
      HMIN3(3,N)=ZMIN  
      HMAX3(3,N)=ZMAX
      NBIN3(3,N)=INT((ZMAX-ZMIN)/DELZ)
C      print*, 'nbins',nbin3(3,n),nbin3(2,n),nbin3(1,n)
      IENT3(N)=0                      
      IOSCORE3(N)=0
      HAVG3(1,N)=0.
      HAVG3(2,N)=0.
      HINT3(:,N)=0.
      IF(NBIN3(1,N).gt.maxbinx.or.
     $     NBIN3(2,N).gt.maxbiny.or.
     $     NBIN3(3,N).gt.maxbinz) THEN
         write(*,*) 'Too many bins. Maxbins is (x,y,z)', 
     $        maxbinx, maxbiny, maxbinz
         STOP
      ENDIF
      DO 1 I=1,NBIN3(1,N)
      XHIS3(N,I)=HMIN3(1,N)+HDEL3(1,N)*(FLOAT(I)-0.5D0)
!      if (n ==1) write(*,*) 'xhis2',xhis2(n,i)
   1  CONTINUE
      DO 2 I=1,NBIN3(2,N)
      YHIS3(N,I)=HMIN3(2,N)+HDEL3(2,N)*(FLOAT(I)-0.5D0)
   2  CONTINUE
      DO 3 I=1,NBIN3(3,N)
      ZHIS3(N,I)=HMIN3(3,N)+HDEL3(3,N)*(FLOAT(I)-0.5D0)
   3  CONTINUE
C      DO 3 I=1,NBIN2(1,N)
      DO 4 K=1,NBIN3(3,N)
      DO 4 J=1,NBIN3(2,N)
      DO 4 I=1,NBIN3(1,N)
C      HIST2(N,I,J)=0.                   
      HIST3(:,I,J,K,N)=0. 
C      write(*,*) 'i,j,k,n',i,j,k,n
4     CONTINUE
      END        

      SUBROUTINE PWHGFILL3(N,X,Y,Z,WGT)
      implicit real * 8 (a-h,o-z)
      include 'pwhg_bookhist-common.h'
      real * 8 WGT(1:maxmulti)

c     !ER: set bins to "minus infinity". If we have an underflow or
c     overflow, we will use this information in accumup3 to avoid doing
c     invalid operations that might generate boundary violation in
c     entries of hist3
      binx(N)=-1000000
      biny(N)=-1000000
      binz(N)=-1000000
C-- find x-coordinate
      XI=((X-HMIN3(1,N))/HDEL3(1,N))+1.
C      write(*,*) 'xi',xi,nbin3(1,n) 
C      IF(XI.GT.100.OR.XI.LT.0.) THEN
      IF(XI.GT.NBIN3(1,N)+1.OR.XI.LT.0.) THEN
      IOSCORE3(N)=IOSCORE3(N)+1 
c      print*, 'returnX'
      RETURN              
      ENDIF  
      I=INT(XI)
C-- find y-coordinate
      YI=((Y-HMIN3(2,N))/HDEL3(2,N))+1.
C      write(*,*) 'yi',yi 
C      IF(YI.GT.100.OR.YI.LT.0.) THEN
      IF(YI.GT.nbin3(2,n)+1.OR.YI.LT.0.) THEN
      IOSCORE3(N)=IOSCORE3(N)+1 
c      print*, 'returnY'
      RETURN              
      ENDIF
      J=INT(YI)
C-- find y-coordinate
      ZI=((Z-HMIN3(3,N))/HDEL3(3,N))+1.
C      write(*,*) 'zi',zi 
C      IF(YI.GT.100.OR.YI.LT.0.) THEN
      IF(ZI.GT.nbin3(3,n)+1.OR.ZI.LT.0.) THEN
      IOSCORE3(N)=IOSCORE3(N)+1 
c      print*, 'returnZ'
      RETURN              
      ENDIF
      K=INT(ZI)

      IF(I.GT.0.AND.I.LE.NBIN3(1,N).AND.J.GT.0.AND.J.LE.NBIN3(2,N)
     $     .AND.K.GT.0.AND.K.LE.NBIN3(3,N))
     *                                             THEN        
      IENT3(N)=IENT3(N)+1
      IHIS3(N,I,J,K)=IHIS3(N,I,J,K)+1

      HIST3(:,I,J,K,N)=HIST3(:,I,J,K,N)+WGT(:)/(HDEL3(1,N)*HDEL3(2,N)*HDEL3(3,N))
c      stop
      binx(N)=i
      biny(N)=j
      binz(N)=k
      ELSE
      IOSCORE3(N)=IOSCORE3(N)+1
c     !ER: probably the following 3 lines are not needed, but they can't be
c     wrong either. The logic is, if I have an under/over flow, then bins are
c     set to "minus infinity".
      binx(N)=-1000000
      biny(N)=-1000000
      binz(N)=-1000000
      ENDIF
      END

      SUBROUTINE PWHGOPERA3(I,OPER,J,K,X,Y)
      implicit real * 8 (a-h,o-z)
      include 'pwhg_bookhist-common.h'
      CHARACTER OPER*1
      IF(NBIN3(1,I).NE.NBIN3(1,J).OR.NBIN3(2,I).NE.NBIN3(2,J)
     $     .OR.NBIN3(3,I).NE.NBIN3(3,J).
     &     AND.(OPER.EQ.'+'.OR.OPER.EQ.'-'.OR.OPER.EQ.         
     &     '*'.OR.OPER.EQ.'/'.OR.OPER.EQ.'M')) GO TO 10
      
      DO L3=1,NBIN3(3,I)
         DO L2=1,NBIN3(2,I)
            DO L1=1,NBIN3(1,I)
               IF(OPER.EQ.'+') THEN
                  
                  HIST3(:,L1,L2,L3,K)=X*HIST3(:,L1,L2,L3,I) + Y*HIST3(:,L1,L2,L3,J)
               ELSEIF(OPER.EQ.'-') THEN
                  
                  HIST3(:,L1,L2,L3,K)=X*HIST3(:,L1,L2,L3,I) - Y*HIST3(:,L1,L2,L3,J)
               ELSEIF(OPER.EQ.'*') THEN
                  
                  HIST3(:,L1,L2,L3,K)=X*HIST3(:,L1,L2,L3,I) * Y*HIST3(:,L1,L2,L3,J)
               ELSEIF(OPER.EQ.'/') THEN
                  
                  IF(Y.EQ.0..OR.HIST3(1,L1,L2,L3,J).EQ.0.) THEN
                     
                     HIST3(:,L1,L2,L3,K)=0.
                  ELSE
                     
                     HIST3(:,L1,L2,L3,K)=X*HIST3(:,L1,L2,L3,I) / (Y*HIST3(:,L1,L2,L3,J))
                  ENDIF
               ELSEIF(OPER.EQ.'F') THEN
                  
                  HIST3(:,L1,L2,L3,K)=X*HIST3(:,L1,L2,L3,I)
               ELSEIF(OPER.EQ.'R') THEN
                  
                  IF(HIST3(1,L1,L2,L3,I).GT.0.) THEN
                     
                     HIST3(:,L1,L2,L3,K)=X*SQRT(HIST3(:,L1,L2,L3,I))
                  ELSE
                     
                     HIST3(:,L1,L2,L3,K)=0.
                  ENDIF
               ELSEIF(OPER.EQ.'S') THEN
                  
                  HIST3(:,L1,L2,L3,K)=X*HIST3(:,L1,L2,L3,I)**2
               ELSEIF(OPER.EQ.'L') THEN
                  
                  IF(HIST3(1,L1,L2,L3,I).EQ.0..OR.J.EQ.0.) THEN
                     
                     HIST3(:,L1,L2,L3,K)=0.
                  ELSE
                     
                     HIST3(:,L1,L2,L3,K)=X*LOG10(Y*HIST3(:,L1,L2,L3,I))
                  ENDIF
               ELSE
                  WRITE(98,5) OPER
 5                FORMAT(' ****** OPERATION ="',A1,'" UNKNOWN ********'/)
                  RETURN
               ENDIF
            END DO
         END DO
      END DO
      RETURN
 10   WRITE(98,20) I,J
 20   FORMAT(' ****** INCOMPATIBLE OPERATION HIST2 ',I2,' &',I2,
     &     '*******'/)
      END
      
      SUBROUTINE PWHGFINAL3(N)
      implicit real * 8 (a-h,o-z)
      include 'pwhg_bookhist-common.h'
      real * 8 XIN(1:maxmulti)
      IF(BOOK3(N).NE.'YES') RETURN
      XIN=0.               

C-- projection on the x-axis
      DO 2 K=1,NBIN3(3,N)
         DO 1 J=1,NBIN3(2,N)
            DO 1 I=1,NBIN3(1,N)
 1             XPROJ3(:,N,K)=XPROJ3(:,N,K)+HIST3(:,I,J,K,N)
 2             XIN(:)=XIN(:)+XPROJ3(:,N,K)

      IF(XIN(1).EQ.0.) GO TO 10
      HINT3(:,N)=XIN(:)*HDEL3(1,N)*HDEL3(2,N)*HDEL3(3,N)
      RETURN
 10   BOOK3(N)=' NO'

      END               

      SUBROUTINE PWHGNORM3(N,X)    
      implicit real * 8 (a-h,o-z)
      include 'pwhg_bookhist-common.h'
      IF(BOOK3(N).NE.'YES')RETURN
      DO 1, K=1,NBIN3(3,N)
      DO 1, J=1,NBIN3(2,N)
      DO 1, I=1,NBIN3(1,N)
    1 HIST3(:,I,J,K,N)=HIST3(:,I,J,K,N)/HINT3(:,N)*X
      HINT3(:,N)=X                      
      END  

      SUBROUTINE PWHGPRINT3(N,iun,imulti)
      implicit real * 8 (a-h,o-z)
      include 'pwhg_bookhist-common.h'
      integer imon,iday,iyear,ini,itime(3),l,m,iun
      integer imulti !-- WB:
      CHARACTER CTIME*8
      save imon,iday,iyear,ctime,ini
      DATA INI/0/    
      data ctime/'        '/
      real * 8 tmp, hbinx,hbiny,hbinz
      IF(INI.EQ.0) THEN
      CALL IDATE(ITIME)
      imon=itime(2)
      iday=itime(1)
      iyear=itime(3)
      INI=1
      ENDIF
c      do i=1,nmb3d
c         print*, i, 'book3(n)', book3(i)
c      enddo
      IF(BOOK3(N).NE.'YES') RETURN
      hbinx=(xhis3(n,2)-xhis3(n,1))/2d0
      hbiny=(yhis3(n,2)-yhis3(n,1))/2d0
      hbinz=(zhis3(n,2)-zhis3(n,1))/2d0
      l = lenocc(TITLE3(N))
c      iun=399


      write(iun,'(a,i3)')'# '//TITLE3(N)(1:l)//' index ',N-1-nmh33d
      WRITE(iun,10) (((XHIS3(N,I)-hbinx,XHIS3(N,I)+hbinx,YHIS3(N,J)-hbiny,
     $     YHIS3(N,J)+hbiny,ZHIS3(N,K)-hbinz,ZHIS3(N,K)+hbinz,HIST3(imulti,I,J,K,N)
     *     ,HIST3(imulti,I,J,K,N+nmh3d),K=1,NBIN3(3,N)),J=1,NBIN3(2,N)),I=1,NBIN3(1,N))
      
      write(iun,*) ''
      write(iun,*) ''


      RETURN
    7 FORMAT(4X,'HIST = ',I3,' ',I2,'/',I2,'/',I4,1X,A5/)
    9 FORMAT(4X,2D15.5)   
   10 FORMAT(4X,8D16.8)
   20 FORMAT(' ENTRIES=',I8,4X,' INTEGRAL =',E15.5,4x,
     *              'OVERSCORE=',I8,//)
      END

      SUBROUTINE PWHGPUTTAG3(J,NAME)
      implicit none
      include 'pwhg_bookhist-common.h'
      integer j
c Per marcare un istogramma
      CHARACTER * (*) NAME, TAG
      BOOK3(J) = NAME
      RETURN
      ENTRY pwhgGETTAG3(J,TAG)
      TAG = BOOK3(J)
      END

      subroutine pwhgbookup3(n,string,scale,delx,xl,xu,dely,yl,yu
     $     ,delz,zl,zu)
      implicit none
      include 'pwhg_bookhist-common.h'
      real * 8 delx,xl,xu
      real * 8 dely,yl,yu
      real * 8 delz,zl,zu
      integer n
      character * (*) string
      character * 3 scale
c     For each required histogram n, 5 histograms are booked:
c     n, n+nmh,n+nmh2,n+nmh3,n+nmh4 (nmh2=2*nmh, etc.)
c     Results from a correlated set of output configurations
c     are accumulated in n.
c     A call to pwhgaccumup causes
c     the histogram n to be summed to the n+nmh, its square is
c     summed into n+nmh2. and n is zeroed.
c
c     When the subroutine pwhgaddout is called, the statistical
c     analysis of the n+nmh and n+nmh2 content is performed, the
c     average (with respect to the number of calls to pwhgaccumup)
c     is added to the n+nmh3, and the error is summed in quadrature
c     to the n+nmh4; n+nmh and n+nmh2 are zeroed.
c
c     If instead pwhgsetout is called, the statistical
c     analysis of the n+nmh and n+nmh2 content is performed, the
c     average (with respect to the number of calls to pwhgaccumup)
c     is stored in the n+nmh3, and the error is stored in the n+nmh4;
c     n+nmh and n+nmh2 are left untouched
c.
C      write(*,*) 'in',n
      if(n.gt.nmh3d) then
         write(*,*) ' error3d: no more than ',nmh3d,' histograms'
         write(*,*) ' increase nmh3d in pwhg_bookhist-common.h'
         call exit(1)
      endif
      call pwhgbook3(n,  string,delx,xl,xu,dely,yl,yu,delz,zl,zu)
      call pwhgbook3(n+nmh3d,'tmp ',delx,xl,xu,dely,yl,yu,delz,zl,zu)
      call pwhgbook3(n+nmh23d,'tmp square',delx,xl,xu,dely,yl,yu
     $     ,delz,zl,zu)
c this is the histogram that will be output
      call pwhgbook3(n+nmh33d,string,delx,xl,xu,dely,yl,yu,delz,zl,zu)
c the scale for plotting (log or lin) is encoded in the title
      call pwhgbook3(n+nmh43d,scale//'error ',delx,xl,xu,dely,yl,yu
     $     ,delz,zl,zu)
      call pwhgputtag3(n,'YST')
c      print*, book3(10), 'L1069'
C      write(*,*) 'out'
c      print*, 'just booked'
c      print*, tag3d
      return
      end


C     END AK

      subroutine pwhgaccumup3
      implicit none
      include 'pwhg_bookhist-common.h'
      integer j,i
      character * 3 tag3d(nmh3d)
      real *8 dummy
      integer l,l1,l2,l3
      real * 8 xxx,tmp(1:maxmulti)

C AK 
      do j=1,nmh3d
         call pwhggettag3(j,tag3d(j))
      enddo
c     do l3=1,nbin3(3,j)
c     do l2=1,nbin3(2,j)
c     do l1=1,nbin3(1,j)
c      print*, 'nmulti', nmulti
      do i=1,nmulti
         do j=1,nmh3d
            if (tag3d(j).eq.'YST') then
               do l1=1,nbin3(1,j)
                  do l2=1,nbin3(2,j)
                     do l3=1,nbin3(3,j)
                        tmp(i) = hist3(i,l1,l2,l3,j)
                        if(tmp(i) /= 0d0)then
                           hist3(i,l1,l2,l3,j+nmh3d)
     $                          =hist3(i,l1,l2,l3,j+nmh3d)+tmp(i)
                           hist3(i,l1,l2,l3,j+nmh23d)
     $                          =hist3(i,l1,l2,l3,j+nmh23d)+tmp(i)**2
                           hist3(i,l1,l2,l3,j)=0d0
                        endif
                     enddo
                  enddo
               enddo

c$$$               if(binx(j).eq.-1000000.or.binx(j).eq.-1000000.or.binx(j).eq.-1000000) then
c$$$c     !ER: there was an under/over flow in histogram j: don't operate on
c$$$c     hist3, it's not safe to do so.
c$$$                  continue
c$$$               else
c$$$                  tmp(i) = hist3(i,binx(j),biny(j),binz(j),j)
c$$$c                  !--[wb] comment:
c$$$c                  if(j.eq.34) then
c$$$c                     print*,'x,tmp:',binx(j),tmp(i)
c$$$c                  endif
c$$$c                  !-- end of [wb]
c$$$                  if (tmp(i) /= 0d0) then 
c$$$                     hist3(i,binx(j),biny(j),binz(j),j+nmh3d)
c$$$     $                    =hist3(i,binx(j),biny(j),binz(j),j+nmh3d)+tmp(i)
c$$$                     hist3(i,binx(j),biny(j),binz(j),j+nmh23d)
c$$$     $                    =hist3(i,binx(j),biny(j),binz(j),j+nmh23d)+tmp(i)**2
c$$$                     hist3(i,binx(j),biny(j),binz(j),j)=0d0
c$$$                  endif
c$$$c     else
c$$$c     print*, 'Something wrong. Histogram is empty'
c$$$               endif
            endif
c     enddo
c     enddo
         enddo
c         print*, 'pwhg3d: y,e:',hist3(i,2,1,1,34+nmh3d),hist3(i,2,1,1,34+nmh23d)
c         print*,'&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&'
      enddo

      do j=1,nmh3d
!     write(*,*) 'here1',j 
         ient3(j+nmh3d)=ient3(j+nmh3d)+1
!     write(*,*) 'ient2a', ient2(j+nmh2d), j+nmh2d
         uscore3d(j+nmh3d)=uscore3d(j+nmh3d)+uscore3d(j)
         uscore3d(j+nmh23d)=uscore3d(j+nmh23d)+uscore3d(j)*uscore3d(j)
         oscore3d(j+nmh3d)=oscore3d(j+nmh3d)+oscore3d(j)
         oscore3d(j+nmh23d)=oscore3d(j+nmh23d)+oscore3d(j)*oscore3d(j)
         uscore3d(j)=0
         oscore3d(j)=0
!     write(*,*) 'here2',j 
!     endif
      enddo

      return
      end



      subroutine pwhgaddout3
c     When the subroutine pwhgaddout is called, the statistical
c     analysis of the n+nmh and n+nmh2 content is performed, the
c     average (with respect to the number of calls to pwhgaccumup)
c     is added to the n+nmh3, and the error is summed in quadrature
c     to the n+nmh4; n+nmh and n+nmh2 are zeroed.
      implicit none
      include 'pwhg_bookhist-common.h'
      integer j
      character * 3 tag
      real *8 dummy
      integer l,l1,l2,l3
      real * 8 xxx,xsum(1:maxmulti),xsumsq(1:maxmulti)
      logical set
      set=.false.
      goto 10
      entry pwhgsetout3
c     If instead pwhgsetout is called, the statistical
c     analysis of the n+nmh and n+nmh2 content is performed, the
c     average (with respect to the number of calls to pwhgaccumup)
c     is stored in the n+nmh3, and the error is stored in the n+nmh4;
c     n+nmh and n+nmh2 are left untouched
      set=.true.
 10   continue
c
C AK 
!      write(*,*) 'here' 
      do j=1,nmb3d
c     finish statistical analysis
         call pwhggettag3(j,tag)
         if(tag.eq.'YST') then
c     accumulates j+nmh rescaled in j (mean value) and set in j+nmh2 the
c     error estimate (squared standard deviation).  The rescaling factor
c     for the mean value is the number of calls to pwhgaccumup, which in
c     turn corresponds to the number of entries of any bin of the j+nmh2-th
c     histogram, as filled by pwhgaccumup.
            if(set) then
               do l3=1,nbin3(3,j)
                  do l2=1,nbin3(2,j)
                     do l1=1,nbin3(1,j)
                        hist3(:,l1,l2,l3,j+nmh33d)=0
                        hist3(:,l1,l2,l3,j+nmh43d)=0
                     enddo
                  enddo
               enddo
               oscore3d(j+nmh33d)=0
               uscore3d(j+nmh33d)=0
               oscore3d(j+nmh43d)=0
               uscore3d(j+nmh43d)=0
               ient3(j+nmh33d)=0
            endif
!            write(*,*) 'ient2b(j+nmh2d)',ient2(j+nmh2d),j+nmh2d
            xxx=1d0/ient3(j+nmh3d)
c            print*, xxx, sqrt(xxx), 1/xxx, 1/sqrt(xxx)
            do l3=1,nbin3(3,j)
               do l2=1,nbin3(2,j)
                  do l1=1,nbin3(1,j)
                     xsum(:)=hist3(:,l1,l2,l3,j+nmh3d)
!     if (j == 1) write(*,*) 'xsum', xsum,j,l1,l2 
                     xsumsq(:)=hist3(:,l1,l2,l3,j+nmh23d)
                     hist3(:,l1,l2,l3,j+nmh33d)=hist3(:,l1,l2,l3,j+nmh33d)+xsum(:)*xxx
                     hist3(:,l1,l2,l3,j+nmh43d)=sqrt(hist3(:,l1,l2,l3,j+nmh43d)**2
     1                    + xxx**2*(abs(xsumsq(:)-xsum(:)**2*XXX)))
                     
                  enddo
               enddo
            enddo
c            xsum=oscore3d(j+nmh3d)
c            xsumsq=oscore3d(j+nmh23d)
c            oscore3d(j+nmh33d)=oscore3d(j+nmh33d)+xxx*xsum
c            oscore3d(j+nmh43d)=sqrt(oscore3d(j+nmh43d)**2
c     1             + xxx**2*(abs(xsumsq-xsum**2*xxx)))
c            xsum=uscore3d(j+nmh3d)
c            xsumsq=uscore3d(j+nmh23d)
c            uscore3d(j+nmh33d)=uscore3d(j+nmh33d)+xxx*xsum
c            uscore3d(j+nmh43d)=sqrt(uscore3d(j+nmh43d)**2
c     1             + xxx**2*(abs(xsumsq-xsum**2*xxx)))
            ient3(j+nmh33d)=ient3(j+nmh33d)+ient3(j+nmh3d)
            if(.not.set) then
               do l3=1,nbin3(3,j)
                  do l2=1,nbin3(2,j)
                     do l1=1,nbin3(1,j)
                        hist3(:,l1,l2,l3,j+nmh3d)=0
                        hist3(:,l1,l2,l3,j+nmh23d)=0
                     enddo
                  enddo
               enddo
               oscore3d(j+nmh3d)=0
               oscore3d(j+nmh23d)=0
               uscore3d(j+nmh3d)=0
               uscore3d(j+nmh23d)=0
               ient3(j+nmh3d)=0
            endif
         endif
      enddo

      end

      subroutine pwhgtopout3(filename)
      implicit none
      include 'pwhg_bookhist-common.h'
      character * (*) filename
      character * 50 title0,scale
      character * 3 tag, WW
      integer i,ii,ini,iun
      ini=0
      print*,'---> 3D histograms: writing'


      do ii=1,nmulti
         call newunit(iun)
         write(WW,"(A1,I0.2)") 'W',ii
         open(unit=iun,
     $        file=trim(adjustl(filename))//'-'//trim(WW)//'-3D.top',
     $        status='unknown')
      
         do i=1,nmb3d
            call pwhggettag3(i,tag)
            if(tag.eq.'YST') then
               call pwhgprinthdr3(i,iun)
            endif
         enddo
         write(iun,'(a)') '###END-OF-HEADER---------------------------'
         write(iun,'(a)') ''
         write(iun,'(a)') ''

         do i=1,nmb3d
            call pwhggettag3(i,tag)

            if(tag.eq.'YST') then
               call pwhgfinal3(i+nmh33d)
               call pwhgfinal3(i+nmh43d)
               
               call pwhgprint3short(i+nmh33d,iun,ii)

C               write(*,"(i3.2)",advance='no') i
            endif
         enddo
         close(iun)
      enddo


      print*,''
      print*,'---> 3D histograms: finished'
      
      end            

c-----------------------------------------------------------------------------------------------
      subroutine pwhgprinthdr3(N,iun)
      implicit real*8 (a-h,o-z)
      include 'pwhg_bookhist-common.h'
      logical log
      
c---: write binvalues for the first histogram
      if(n.eq.1)then
         call printbinvalues3(1,iun)
      endif

c---: print other binvalues if they differ from the irst histogram:
      if(n.ne.1)then
         log=.true.
         do i=1,nbin3(1,n)
            if(xhis3(n,i).ne.xhis3(n-1,i)) log=.false.
         enddo
         do i=1,nbin3(2,n)
            if(yhis3(n,i).ne.yhis3(n-1,i)) log=.false.
         enddo
         do i=1,nbin3(3,n)
            if(zhis3(n,i).ne.zhis3(n-1,i)) log=.false.
         enddo
         if(log.eqv..false.) call printbinvalues3(n,iun)
      endif

      end

c-----------------------------------------------------------------------------------------------
      subroutine printbinvalues3(N,iun)
      implicit real*8 (a-h,o-z)
      include 'pwhg_bookhist-common.h'
      
c---: write binvalues for the N-th histogram
      hbinx=(xhis3(n,2)-xhis3(n,1))/2d0
      hbiny=(yhis3(n,2)-yhis3(n,1))/2d0
      hbinz=(zhis3(n,2)-zhis3(n,1))/2d0
      write(iun,'(a,i3)') '###HEADER: xbins --- index ',n-1
      do i=1,nbin3(1,n)
         write(iun,222) xhis3(N,i)-hbinx, xhis3(N,i)+hbinx
      enddo
      write(iun,'(a)') ''
      write(iun,'(a,i3)') '###HEADER: ybins --- index ',n-1
      do i=1,nbin3(2,n)
         write(iun,222) yhis3(N,i)-hbiny, yhis3(N,i)+hbiny
      enddo
      write(iun,'(a)') ''
      write(iun,'(a,i3)') '###HEADER: zbins --- index ',n-1
      do i=1,nbin3(3,n)
         write(iun,222) zhis3(N,i)-hbinz, zhis3(N,i)+hbinz
      enddo
      write(iun,'(a)') ''
      write(iun,'(a)') ''
 222  format(2x,2D12.5)

      end


c-----------------------------------------------------------------------------------------------
      subroutine pwhgprint3short(N,iun,imulti)
      implicit real * 8 (a-h,o-z)
      include 'pwhg_bookhist-common.h'
      integer imon,iday,iyear,ini,itime(3),l,m,iun
      integer imulti !-- WB:
      CHARACTER CTIME*8
      save imon,iday,iyear,ctime,ini
      DATA INI/0/    
      data ctime/'        '/
      real * 8 tmp, hbinx,hbiny,hbinz
      IF(INI.EQ.0) THEN
      CALL IDATE(ITIME)
      imon=itime(2)
      iday=itime(1)
      iyear=itime(3)
      INI=1
      ENDIF
c      do i=1,nmb3d
c         print*, i, 'book3(n)', book3(i)
c      enddo
      IF(BOOK3(N).NE.'YES') RETURN
      hbinx=(xhis3(n,2)-xhis3(n,1))/2d0
      hbiny=(yhis3(n,2)-yhis3(n,1))/2d0
      hbinz=(zhis3(n,2)-zhis3(n,1))/2d0
      l = lenocc(TITLE3(N))
c      iun=399

      write(iun,'(a,i3)')'# '//TITLE3(N)(1:l)//' index ',N-1-nmh33d
      WRITE(iun,10) (((
     $     HIST3(imulti,I,J,K,N),HIST3(imulti,I,J,K,N+nmh3d)
     $    ,K=1,NBIN3(3,N)),J=1,NBIN3(2,N)),I=1,NBIN3(1,N))
      
C      WRITE(iun,30) (((XHIS3(N,I)-hbinx,XHIS3(N,I)+hbinx,YHIS3(N,J)-hbiny,
C     $     YHIS3(N,J)+hbiny,ZHIS3(N,K)-hbinz,ZHIS3(N,K)+hbinz,HIST3(imulti,I,J,K,N)
C     *     ,HIST3(imulti,I,J,K,N+nmh3d),K=1,NBIN3(3,N)),J=1,NBIN3(2,N)),I=1,NBIN3(1,N))



      write(iun,'(a)') ''
      write(iun,'(a)') ''


      RETURN
    7 FORMAT(4X,'HIST = ',I3,' ',I2,'/',I2,'/',I4,1X,A5/)
    9 FORMAT(4X,2D15.5)   
   10 FORMAT(1x,2D16.8)
   20 FORMAT(' ENTRIES=',I8,4X,' INTEGRAL =',E15.5,4x,
     *              'OVERSCORE=',I8,//)
C   30 FORMAT(4X,8D16.8)
      END





c-----------------------------------------------------------------------------------------------
      subroutine pwhgaddoutV3

      implicit none
      include 'pwhg_bookhist-common.h'
      integer j
      character * 3 tag
      real *8 dummy
      integer l,l1,l2,l3
      real * 8 xxx,xsum(1:maxmulti),xsumsq(1:maxmulti)
      logical set
      set=.false.
      goto 10
      entry pwhgsetoutV3

      set=.true.
 10   continue

      do j=1,nmb3d
c     finish statistical analysis
         call pwhggettag3(j,tag)
         if(tag.eq.'YST') then

            if(set) then
               do l3=1,nbin3(3,j)
                  do l2=1,nbin3(2,j)
                     do l1=1,nbin3(1,j)
                        hist3v(:,l1,l2,l3,j+nmh33d)=0
                        hist3v(:,l1,l2,l3,j+nmh43d)=0
                     enddo
                  enddo
               enddo
               oscore3d(j+nmh33d)=0
               uscore3d(j+nmh33d)=0
               oscore3d(j+nmh43d)=0
               uscore3d(j+nmh43d)=0
               ient3(j+nmh33d)=0
            endif
            xxx=1d0/ient3(j+nmh3d)
            do l3=1,nbin3(3,j)
               do l2=1,nbin3(2,j)
                  do l1=1,nbin3(1,j)
                     xsum(:)=hist3(:,l1,l2,l3,j+nmh3d)
                     xsumsq(:)=hist3(:,l1,l2,l3,j+nmh23d)
c$$$                     hist3v(:,l1,l2,l3,j+nmh33d)=hist3(:,l1,l2,l3,j+nmh33d)+xsum(:)
c$$$                     hist3v(:,l1,l2,l3,j+nmh43d)=sqrt(
c$$$     $                       hist3(:,l1,l2,l3,j+nmh43d)**2
c$$$     $                    + (abs(xsumsq(:)-xsum(:)**2*XXX))
c$$$     $                    )
c     [WB] in our case we call addoutV3 only once, at the end of virtual
                     hist3v(:,l1,l2,l3,j+nmh33d)=xsum(:)
                     hist3v(:,l1,l2,l3,j+nmh43d)=
     $                    sqrt(abs(xsumsq(:)-xsum(:)**2*xxx))
                     hist3(:,l1,l2,l3,j+nmh3d)=0d0
                     hist3(:,l1,l2,l3,j+nmh23d)=0d0
                     hist3(:,l1,l2,l3,j+nmh33d)=0d0
                     hist3(:,l1,l2,l3,j+nmh43d)=0d0
C     [WB] think if the next line is needed:
                     ient3(j+nmh33d)=ient3(j+nmh33d)+ient3(j+nmh3d)
                     oscore3d(j+nmh3d)=0
                     oscore3d(j+nmh23d)=0
                     uscore3d(j+nmh3d)=0
                     uscore3d(j+nmh23d)=0
                     ient3(j+nmh3d)=0
                  enddo
               enddo
            enddo
         endif
      enddo

      end



      subroutine pwhgaddoutR3

      implicit none
      include 'pwhg_bookhist-common.h'
      integer j
      character * 3 tag
      real *8 dummy
      integer l,l1,l2,l3
      real * 8 xxx,xsum(1:maxmulti),xsumsq(1:maxmulti)
      logical set
      set=.false.
      goto 10
      entry pwhgsetoutR3

      set=.true.
 10   continue

      do j=1,nmb3d
c     finish statistical analysis
         call pwhggettag3(j,tag)
         if(tag.eq.'YST') then

            if(set) then
               do l3=1,nbin3(3,j)
                  do l2=1,nbin3(2,j)
                     do l1=1,nbin3(1,j)
                        hist3r(:,l1,l2,l3,j+nmh33d)=0
                        hist3r(:,l1,l2,l3,j+nmh43d)=0
                     enddo
                  enddo
               enddo
               oscore3d(j+nmh33d)=0
               uscore3d(j+nmh33d)=0
               oscore3d(j+nmh43d)=0
               uscore3d(j+nmh43d)=0
               ient3(j+nmh33d)=0
            endif
            xxx=1d0/ient3(j+nmh3d)
            do l3=1,nbin3(3,j)
               do l2=1,nbin3(2,j)
                  do l1=1,nbin3(1,j)
                     xsum(:)=hist3(:,l1,l2,l3,j+nmh3d)
                     xsumsq(:)=hist3(:,l1,l2,l3,j+nmh23d)
c$$$                     hist3r(:,l1,l2,l3,j+nmh33d)=hist3(:,l1,l2,l3,j+nmh33d)+xsum(:)
c$$$                     hist3r(:,l1,l2,l3,j+nmh43d)=sqrt(
c$$$     $                       hist3(:,l1,l2,l3,j+nmh43d)**2
c$$$     $                    + (abs(xsumsq(:)-xsum(:)**2*XXX))
c$$$     $                    )
c     [WB] in our case we call addoutV3 only once, at the end of virtual
                     hist3r(:,l1,l2,l3,j+nmh33d)=xsum(:)
                     hist3r(:,l1,l2,l3,j+nmh43d)=
     $                    sqrt(abs(xsumsq(:)-xsum(:)**2*xxx))
                     hist3(:,l1,l2,l3,j+nmh3d)=0d0
                     hist3(:,l1,l2,l3,j+nmh23d)=0d0
                     hist3(:,l1,l2,l3,j+nmh33d)=0d0
                     hist3(:,l1,l2,l3,j+nmh43d)=0d0
C     [WB] think if the next line is needed:
                     ient3(j+nmh33d)=ient3(j+nmh33d)+ient3(j+nmh3d)
                     oscore3d(j+nmh3d)=0
                     oscore3d(j+nmh23d)=0
                     uscore3d(j+nmh3d)=0
                     uscore3d(j+nmh23d)=0
                     ient3(j+nmh3d)=0
                  enddo
               enddo
            enddo
         endif
      enddo


      end
c-----------------------------------------------------------------------------------------------
      subroutine pwhgaddRV3
      implicit none
      include 'pwhg_bookhist-common.h'
      integer j
      character * 3 tag
      real *8 dummy
      integer l,l1,l2,l3
      real * 8 xxx,xsum(1:maxmulti),xsumsq(1:maxmulti)
      logical set


c$$$      print*,'3dREAL:y,e: ',hist3r(:,2,1,1,34+nmh33d),hist3r(:,2,1,1,34+nmh43d)
c$$$      print*,'3dVIRT:y,e: ',hist3v(:,2,1,1,34+nmh33d),hist3v(:,2,1,1,34+nmh43d)
      do j=1,nmb3d
         call pwhggettag3(j,tag)
         if(tag.eq.'YST') then
            do l3=1,nbin3(3,j)
               do l2=1,nbin3(2,j)
                  do l1=1,nbin3(1,j)
                     xsum(:)=hist3v(:,l1,l2,l3,j+nmh33d)+hist3r(:,l1,l2,l3,j+nmh33d)
                     xsumsq(:)=hist3v(:,l1,l2,l3,j+nmh43d)**2+hist3r(:,l1,l2,l3,j+nmh43d)**2
                     hist3(:,l1,l2,l3,j+nmh33d)=xsum(:)
                     hist3(:,l1,l2,l3,j+nmh43d)=sqrt((abs(xsumsq(:))))
                  enddo
               enddo
            enddo
         endif
      enddo

      end


c-----------------------------------------------------------------------------------------------
c [WB] we need corrected pwhgaccumup3 which accumulates all 3D bins; 
c      the function above accumulates only one bin - the one filled just before calling 'pwhgaccumup3',
c      this would be fine if we called 'pwhgaccumup3' 
c      every single time (in analysis file) but we want to aviod that.
      subroutine pwhgaccumup3wb
      implicit none
      include 'pwhg_bookhist-common.h'
      integer j,i
      character * 3 tag3d(nmh3d)
      real *8 dummy
      integer l,l1,l2,l3
      real * 8 xxx,tmp(1:maxmulti)

      do j=1,nmh3d
         call pwhggettag3(j,tag3d(j))
      enddo
      do j=1,nmh3d
         do l3=1,nbin3(3,j)
            do l2=1,nbin3(2,j)
               do l1=1,nbin3(1,j)
                  do i=1,nmulti
                     if (tag3d(j).eq.'YST') then
                        tmp(i) = hist3(i,l1,l2,l3,j)
                        if (tmp(i) /= 0d0) then 
                           hist3(i,l1,l2,l3,j+nmh3d)
     $                          =hist3(i,l1,l2,l3,j+nmh3d)+tmp(i)
                           hist3(i,l1,l2,l3,j+nmh23d)
     $                          =hist3(i,l1,l2,l3,j+nmh23d)+tmp(i)**2
                           hist3(i,l1,l2,l3,j)=0d0
                        endif
                     endif
                  enddo
               enddo
            enddo
         enddo
      enddo
c$$$      print*, 'pwhg3d: y,e:',hist3(1,2,1,1,34+nmh3d),hist3(1,2,1,1,34+nmh23d)
c$$$      print*,'&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&-&&'

      do j=1,nmh3d
         ient3(j+nmh3d)=ient3(j+nmh3d)+1
         uscore3d(j+nmh3d)=uscore3d(j+nmh3d)+uscore3d(j)
         uscore3d(j+nmh23d)=uscore3d(j+nmh23d)+uscore3d(j)*uscore3d(j)
         oscore3d(j+nmh3d)=oscore3d(j+nmh3d)+oscore3d(j)
         oscore3d(j+nmh23d)=oscore3d(j+nmh23d)+oscore3d(j)*oscore3d(j)
         uscore3d(j)=0
         oscore3d(j)=0
      enddo

      return
      end
