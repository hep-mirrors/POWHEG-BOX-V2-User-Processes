CC    Modified to do full NNLO calculation
C
C     lowintHst is lowest order* Hst
C     
C     realvirt is real (V + 2 partons) + virtual (V + 1 parton)

C     Number of calls reduced by a factor of 5 for lowintHst


      subroutine integrate(myinit,myitmx,myncall,mybin,xinteg,xerr)
************************************************************************
*                                                                      *
*  This routine should perform the sweeps of vegasnr                     *
*                                                                      *
*    Input parameters:                                                 *
*       myinit  :  the vegasnr routine entry point                       *
*       myitmx  :  the number of vegasnr sweeps                          *
*      myncall  :  the number of iterations per sweep                  *
*          bin  :  whether or not the results should be histogrammed   *
*                                                                      *
*    Returned variables:                                               *
*       xinteg  :  value of integration                                *
*         xerr  :  integration error
*                                                                      *
************************************************************************
      implicit none
      include 'gridinfo.f'
      include 'scale.f'
      include 'facscale.f'
      include 'vegas_common.f'
      include 'runstring.f'
      integer myitmx,myncall,myinit,i,j,k
      logical mybin,bin
      double precision sig,sd,chi,sigr,sdr,sigdk,sddk,chidk,
     . xreal,xreal2,xinteg,xerr,adjust,myscale,myfacscale
      character*4 part,mypart
      common/part/part
      common/mypart/mypart
      common/bin/bin
      common/xreal/xreal,xreal2
      double precision lowint,virtint,realint
      double precision region(2*mxdim)
C
      integer order
      common/nnlo/order
      integer nproc
      common/nproc/nproc
      integer myncall0
      double precision realvirt2,realvirt4,lowintHst
!      character*30 runstring
!      common/runstring/runstring
      logical fldec
      common/fldec/fldec
C
      logical first,myreadin
      external lowint,virtint,realint
C      
      external realvirt2,realvirt4,lowintHst
C
      data first/.true./
      save first

c----> WB: gridstring
      character*30 gridstring
      common/grid_file_string/gridstring


CC    For lowestorder and lowintHst the number of calls is divided by 5

      myncall0=myncall/10

CC

           
c--- Initialize all integration results to zero, so that the
c--- total of virt and real may be combined at the end for 'tota'
      sig=0d0
      sigr=0d0
      sigdk=0d0
      sd=0d0
      sdr=0d0
      sddk=0d0
      xreal=0d0
      xreal2=0d0
      
    

c--- Put the vegasnr parameters in the common block
      itmx=myitmx
      ncall=myncall0
      bin=mybin
      

c--- Store value of part in mypart, which will be retained;
c--- also store value of scale in myscale, which will be retained;
c--- part and scale can be changed to make sure that the tota option works.
      mypart=part
      myscale=scale
      myfacscale=facscale
CC 
      myreadin=readin
CC
     
c--- If we're doing the tota integration, then set up the grid info
      if (mypart .eq. 'tota') then        
        if (first .and. (myinit .eq. 1)) then
           !-- wb: read grids from one file:
            call strcat(gridstring,'_dvegas_virt.grid',ingridfile)
            myreadin=readin
            print*,'=================> virt: CASE 1'
        else
          if (first .eqv. .true.) then
            readin=.false.
            writeout=.true.
            call strcat(runstring,'_dvegas_virt.grid',outgridfile)
            print*,'=================> virt: outgrid'
          else
            readin=.true.
            writeout=.false.
            call strcat(runstring,'_dvegas_virt.grid',ingridfile)
            print*,'=================> virt: CASE 2'
          endif
        endif
      endif        
      

CC   Virtint must contain lowest order * Hst factor

      if ((mypart .eq. 'virt') .or. (mypart .eq. 'tota'))  then
        part='virt'

C    Add two dimensions for convolutions
        ndim=ndim+2
!        write(*,*) ndim
        call boundregion(ndim,region)
        call vegasnr(region,ndim,lowintHst,myinit,myncall0,myitmx,
     .              0,sig,sd,chi)
        ndim=ndim-2
      endif

      if((order.eq.0).and.(fldec.eqv..false.)) goto 99


CC   Prepare the grid also for real only            

c--- If we're doing the tota integration, then set up the grid info
        if ((mypart .eq. 'tota') .or. (mypart .eq. 'real')) then
        if (first .and. (myinit .eq. 1)) then
c-- special input name for real grid
           !-- wb: read grids from one file:
          call strcat(gridstring,'_dvegas_real.grid',ingridfile)
          readin=myreadin
          print*,'=================> real: CASE 1'
        else
          if (first .eqv. .true.) then
           readin=.false.
           writeout=.true.
           call strcat(runstring,'_dvegas_real.grid',outgridfile)
           print*,'=================> real: outgrid'
          else
            readin=.true.
            writeout=.false.
            call strcat(runstring,'_dvegas_real.grid',ingridfile)
            print*,'=================> real: CASE 2'
          endif
        endif        
      endif 
 
CC Here real and virtual together

     
c--- Real integration should have three extra dimensions

      if ((mypart .eq. 'real').or.(mypart.eq.'tota')) then
        part='real'
        ndim=ndim+6
        xreal=0d0
        xreal2=0d0
        call boundregion(ndim,region)
!        if(nproc.eq.4.or.nproc.eq.44.or.nproc.eq.5.or.nproc.eq.6
!     & .or.nproc.eq.7) then  
         call vegasnr(region,ndim,realvirt4,myinit,myncall,myitmx,
     .              0,sigr,sdr,chi)

!        endif 
        ndim=ndim-6
        write(6,*) 
        ncall=myncall
      endif
      
 99   continue

c--- calculate integration variables to be returned
      xinteg=sig+sigr+sigdk
      xerr=dsqrt(sd**2+sdr**2+sddk**2)      
      
c--- return part and scale to their real values
      part=mypart
      scale=myscale
      first=.false.
      
      return
      end
      
      
      subroutine boundregion(idim,region)
c--- Initializes integration region [0,1] for each variable
c--- in the idim-dimensional integration range
      implicit none
      include 'mxdim.f'
      integer i,idim
      double precision region(2*mxdim)
      
      do i=1,idim
      region(i)=0d0
      region(i+idim)=1d0
      enddo
      
      return
      end
      
      
