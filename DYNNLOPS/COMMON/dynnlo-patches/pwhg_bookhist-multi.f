      SUBROUTINE pwhgINIMULTIHIST(N)
      implicit none
      include 'pwhg_book-multi.h'
      integer i,N
      DO 3 I=1,nmb3d
   3  BOOK3(I)=' NO'
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


C     BEGIN AK

      SUBROUTINE PWHGBOOK3(N,TIT,DELX,XMIN,XMAX,DELY,YMIN,YMAX
     $     ,DELZ,ZMIN,ZMAX)
      implicit real * 8 (a-h,o-z)
      include 'pwhg_book-multi.h'
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
c      print*, 'nbins',nbin3(3,n),nbin3(2,n),nbin3(1,n)
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
4     CONTINUE
      END        

      SUBROUTINE PWHGFILL3(N,X,Y,Z,WGT)
      implicit real * 8 (a-h,o-z)
      include 'pwhg_book-multi.h'
      real * 8 WGT(1:maxmulti)
!      if (n ==1 ) write(*,*) x,y
C-- find x-coordinate
      XI=((X-HMIN3(1,N))/HDEL3(1,N))+1.
C      IF(XI.GT.100.OR.XI.LT.0.) THEN
      IF(XI.GT.NBIN3(1,N)+1.OR.XI.LT.0.) THEN
      IOSCORE3(N)=IOSCORE3(N)+1 
      RETURN              
      ENDIF  
      I=INT(XI)
C-- find y-coordinate
      YI=((Y-HMIN3(2,N))/HDEL3(2,N))+1.
C      IF(YI.GT.100.OR.YI.LT.0.) THEN
      IF(YI.GT.nbin3(2,n)+1.OR.YI.LT.0.) THEN
      IOSCORE3(N)=IOSCORE3(N)+1 
      RETURN              
      ENDIF
      J=INT(YI)
C-- find y-coordinate
      ZI=((Z-HMIN3(3,N))/HDEL3(3,N))+1.
C      IF(YI.GT.100.OR.YI.LT.0.) THEN
      IF(ZI.GT.nbin3(3,n)+1.OR.ZI.LT.0.) THEN
      IOSCORE3(N)=IOSCORE3(N)+1 
      RETURN              
      ENDIF
      K=INT(ZI)

      IF(I.GT.0.AND.I.LE.NBIN3(1,N).AND.J.GT.0.AND.J.LE.NBIN3(2,N)
     $     .AND.K.GT.0.AND.K.LE.NBIN3(3,N))
     *                                             THEN        
!         if (n == 1) write(*,*) 'filling', i,j
      IENT3(N)=IENT3(N)+1
      IHIS3(N,I,J,K)=IHIS3(N,I,J,K)+1
      HIST3(:,I,J,K,N)=HIST3(:,I,J,K,N)+WGT(:)/(HDEL3(1,N)*HDEL3(2,N)*HDEL3(3,N))
c      print*, WGT, HIST3(:,I,J,K,N)
c      stop
      binx(N)=i
      biny(N)=j
      binz(N)=k
      ELSE
      IOSCORE3(N)=IOSCORE3(N)+1
      ENDIF
      END

      SUBROUTINE PWHGOPERA3(I,OPER,J,K,X,Y)
      implicit real * 8 (a-h,o-z)
      include 'pwhg_book-multi.h'
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
      include 'pwhg_book-multi.h'
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
      include 'pwhg_book-multi.h'
      IF(BOOK3(N).NE.'YES')RETURN
      DO 1, K=1,NBIN3(3,N)
      DO 1, J=1,NBIN3(2,N)
      DO 1, I=1,NBIN3(1,N)
    1 HIST3(:,I,J,K,N)=HIST3(:,I,J,K,N)/HINT3(:,N)*X
      HINT3(:,N)=X                      
      END  

      SUBROUTINE PWHGPRINT3(N)
      implicit real * 8 (a-h,o-z)
      include 'pwhg_book-multi.h'
      integer imon,iday,iyear,ini,itime(3),l,m,iun
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
      do i=1,nmb3d
c         print*, i, 'book3(n)', book3(i)
      enddo
      IF(BOOK3(N).NE.'YES') RETURN
      hbinx=(xhis3(n,2)-xhis3(n,1))/2d0
      hbiny=(yhis3(n,2)-yhis3(n,1))/2d0
      hbinz=(zhis3(n,2)-zhis3(n,1))/2d0
      l = lenocc(TITLE3(N))
      iun=399
      do m=1,nmulti
         write(iun,'(a,i3)')'# '//TITLE3(N)(1:l)//' index ',N-1-nmh33d
         WRITE(iun,10) (((XHIS3(N,I)-hbinx,XHIS3(N,I)+hbinx,YHIS3(N,J)-hbiny,
     $        YHIS3(N,J)+hbiny,ZHIS3(N,K)-hbinz,ZHIS3(N,K)+hbinz,HIST3(M,I,J,K,N)
     *        ,HIST3(M,I,J,K,N+nmh3d),K=1,NBIN3(3,N)),J=1,NBIN3(2,N)),I=1,NBIN3(1,N))
c     WRITE(399,20) IENT3(N-nmh33d),HINT3(N),IOSCORE3(N)
         write(iun,*) ''
         write(iun,*) ''
         iun=iun+100
      enddo
    7 FORMAT(4X,'HIST = ',I3,' ',I2,'/',I2,'/',I4,1X,A5/)
    9 FORMAT(4X,2D15.5)   
   10 FORMAT(4X,8D16.8)
   20 FORMAT(' ENTRIES=',I8,4X,' INTEGRAL =',E15.5,4x,
     *              'OVERSCORE=',I8,//)
      END

      SUBROUTINE PWHGPUTTAG3(J,NAME)
      implicit none
      include 'pwhg_book-multi.h'
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
      include 'pwhg_book-multi.h'
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
         write(*,*) ' increase nmh3d in pwhg_book-multi.h'
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
      return
      end


C     END AK

      subroutine pwhgaccumup3
      implicit none
      include 'pwhg_book-multi.h'
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
               tmp(i) = hist3(i,binx(j),biny(j),binz(j),j)
               if (tmp(i) /= 0d0) then 
                  hist3(i,binx(j),biny(j),binz(j),j+nmh3d)
     $                 =hist3(i,binx(j),biny(j),binz(j),j+nmh3d)+tmp(i)
                  hist3(i,binx(j),biny(j),binz(j),j+nmh23d)
     $                 =hist3(i,binx(j),biny(j),binz(j),j+nmh23d)+tmp(i)**2
                  hist3(i,binx(j),biny(j),binz(j),j)=0d0
c     else
c     print*, 'Something wrong. Histogram is empty'
               endif
            endif
c     enddo
c     enddo
         enddo
      enddo
      do j=1,nmh3d
!     write(*,*) 'here1',j 
         ient3(j+nmh3d)=ient3(j+nmh3d)+1
!         write(*,*) 'ient2a', ient2(j+nmh2d), j+nmh2d
         uscore3d(j+nmh3d)=uscore3d(j+nmh3d)+uscore3d(j)
         uscore3d(j+nmh23d)=uscore3d(j+nmh23d)+uscore3d(j)*uscore3d(j)
         oscore3d(j+nmh3d)=oscore3d(j+nmh3d)+oscore3d(j)
         oscore3d(j+nmh23d)=oscore3d(j+nmh23d)+oscore3d(j)*oscore3d(j)
         uscore3d(j)=0
         oscore3d(j)=0
!         write(*,*) 'here2',j 
!      endif
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
      include 'pwhg_book-multi.h'
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
                     hist3(:,l1,l2,l3,j+nmh33d)=hist3(:,l1,l2,l3,j+nmh33d)+xsum(:)
                     hist3(:,l1,l2,l3,j+nmh43d)=sqrt(hist3(:,l1,l2,l3,j+nmh43d)**2
     1                    + (abs(xsumsq(:)-xsum(:)**2*XXX)))
                     
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

      subroutine pwhgtopout3
      implicit none
      include 'pwhg_book-multi.h'
      character * 50 title0,scale
      character * 3 tag
      integer i,ini
      ini=0
       do i=1,nmb3d
          call pwhggettag3(i,tag)
c          print*, 'tag', tag
          if(tag.eq.'YST') then
             call pwhgfinal3(i+nmh33d)
             call pwhgfinal3(i+nmh43d)
c             call pwhggettitle(i,title0)
c             call pwhggettitle(i+nmh43d,scale)
             call pwhgprint3(i+nmh33d)
c             print*, HINT3(i), HINT3(i+nmh3d), HINT3(i+nmh23d), HINT3(i+nmh33d), HINT3(i+nmh43d)
          endif
       enddo

      end            



