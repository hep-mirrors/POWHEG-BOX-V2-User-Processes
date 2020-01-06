!>>>  Dummy function to avoid compilation errors.
      subroutine genericpdf(ndns,ih,xmu2,x,fx)
      implicit none
      include 'pwhg_pdf.h'
      integer ndns,ih
      real * 8 xmu2,x,fx(-pdf_nparton:pdf_nparton)
      write(*,*)
      write(*,*)'***************************************************'
      write(*,*)'PDF error:'
      write(*,*)'>> "genericpdf" called while using dummy pdf'
      write(*,*)'***************************************************'
      call pwhg_exit(-1)
      return
      end

!>>>  Dummy function to avoid compilation errors.
      subroutine getq2min(dum1,dum2)
      implicit none
      integer dum1
      real * 8 dum2
      write(*,*)
      write(*,*)'***************************************************'
      write(*,*)'PDF error:'
      write(*,*)'>> "getq2min" called while using dummy pdf'
      write(*,*)'***************************************************'
      call pwhg_exit(-1)
      end

!>>>  Dummy function to avoid compilation errors.
      subroutine genericpdfpar(ndns,ih,xlam,scheme,iorder,iret)
      implicit none
      include 'pwhg_pdf.h'
      integer ndns,ih
      real * 8 xlam,set_QCDlambda5
      character * 2 scheme
      integer iret,iorder
      !>> set order of QCD alpha evolution
      iorder= 1
      !>> evaluate lambdaQCD
      xlam= set_QCDlambda5(iorder)
      !>> using MSbar scheme
      scheme='MS'
      !>> iret=OK
      iret=0
      return
      end

      function whichpdfpk()
      character * 3 whichpdfpk
      whichpdfpk='mlm'  !>> this is to use existing facility (PDF=1 anyway)
      end

!>>>  Dummy function to avoid compilation errors.
      function alphaspdf(mu)
      implicit none
      real *8 alphaspdf,mu
      write(*,*)
      write(*,*)'***************************************************'
      write(*,*)'PDF error:'
      write(*,*)'>> "alphaspdf" called while using dummy pdf'
      write(*,*)'***************************************************'
      call pwhg_exit(-1)
      end

c#######################################################################
      function set_QCDlambda5(iord)
      implicit none
      real*8 set_QCDlambda5
      integer iord
      real*8 genericxlambdL,genericxlambdNL,genericxlambdNNL
      real*8 asmz,mz,lam5
      real*8 powheginput
      external powheginput
      
      asmz = powheginput('#asmz')
      if( asmz.lt.0d0 ) asmz=0.1181d0

      mz = powheginput('#mz')
      if( mz.lt.0d0 ) mz=91.1876d0
      
      if(iord.eq.0) then
!     !>> better to use the NLO formula anyhow;
!     !>> we don't have LO alpha around
         lam5=genericxlambdNL(asmz,mz,5)
      elseif(iord.eq.1) then
         lam5=genericxlambdNL(asmz,mz,5)
      elseif(iord.eq.2) then
         lam5=genericxlambdNNL(asmz,mz,5)
      endif

      write(*,*)'******************************************************'
      write(*,*)'>> strong coupling:'
      write(*,*)'   --> as(MZ) = ',asmz
      write(*,*)'   with MZ=',mz
      write(*,*)'>> then:'
      write(*,*)' Lambda 5 is ',lam5
      write(*,*)'******************************************************'

      set_QCDlambda5= lam5
      
      return
      end

c#######################################################################
      function genericxlambdL(as,q,nf)
      implicit none
      real * 8 genericxlambdL,as,q
      integer nf
      real * 8 pi,b,t,xlt,ot,as0,as1
      parameter (pi=3.14159265358979312D0)
      b  = (33-2*nf)/pi/12
      t  = 1/b/as
    1 xlt = log(t)
      ot = t
c-----------------------------------------------------------
c Value and Derivative of alfa with respect to t
      as0  = 1/b/t
      as1  = - 1/b/t**2
      t  = (as-as0)/as1 + t
      if(abs(ot-t)/ot.gt.0.00000001d0)goto 1
      genericxlambdL = q/exp(t/2)
      return
      end

      function genericxlambdNL(as,q,nf)
      implicit none
      real * 8 genericxlambdNL,as,q
      integer nf
      real * 8 pi,b,bp,t,xlt,ot,as0,as1
      parameter (pi=3.14159265358979312D0)
      b  = (33-2*nf)/pi/12
      bp = (153 - 19*nf) / pi / 2 / (33 - 2*nf)
      t  = 1/b/as
    1 xlt = log(t)
      ot = t
c-----------------------------------------------------------
c Value and Derivative of alfa with respect to t
      as0  = 1/b/t - bp*xlt/(b*t)**2
      as1  = - 1/b/t**2 -bp/b**2*(1-2*xlt)/t**3
      t  = (as-as0)/as1 + t
      if(abs(ot-t)/ot.gt.0.00000001d0)goto 1
      genericxlambdNL = q/exp(t/2)
      return
      end

      function genericxlambdNNL(as,q,nf)
      implicit none
      real * 8 genericxlambdNNL,as,q
      integer nf
      real * 8 pi,b0,b1,b2,t,xlt,ot,as0,as1
      integer icount
      parameter (pi=3.14159265358979312D0)
      b0  = (33.d0-2.d0*nf)/(12.d0*pi)
      b1  = (153.d0 - 19.d0*nf) / (24.d0*pi**2)
      b2  = (2857.d0/2.d0-5033.d0/18.d0*nf+325.d0/54.d0*nf**2)
     #     /(4.d0*pi)**3
      t  = 1/b0/as
      icount=0
    1 xlt = log(t)
      if(icount.gt.10000) then
          write(*,*) ' xlambd: cannot converge '
          stop
      endif
      icount=icount+1
      ot = t
c-----------------------------------------------------------
c Value and Derivative of alfa with respect to t
      as0  =   1/(t*b0)*(1-b1/b0**2*log(t)/t
     #         +(b1/b0**2*log(t)/t)**2
     #       -(b1**2*(log(t)+1)-b0*b2)/b0**4/t**2)
      as1  =
     5(-2*b1**2*log(t)**2/(b0**4*t**3)+2*(b1**2*(log(t)+1)-b0*b2)/(b0**4
     1   *t**3)+b1*log(t)/(b0**2*t**2)+2*b1**2*log(t)/(b0**4*t**3)-b1/(b
     2   0**2*t**2)-b1**2/(b0**4*t**3))/(b0*t)-(b1**2*log(t)**2/(b0**4*t
     3   **2)-(b1**2*(log(t)+1)-b0*b2)/(b0**4*t**2)-b1*log(t)/(b0**2*t)+
     4   1)/(b0*t**2)
      t  = (as-as0)/as1 + t
      if(abs(ot-t)/ot.gt.0.00000001d0)goto 1
      genericxlambdNNL = q/exp(t/2)
      return
      end


c-----------------------------------------------------------------------
      function alphasfrompdf(q)
      implicit none
      real*8 alphasfrompdf
      real*8 q
      
      write(*,*)'ERROR: alhpasfrompdf in "fakepdfif.f"'
      write(*,*)'>>> do not use this fake function!'
      stop

      return
      end
