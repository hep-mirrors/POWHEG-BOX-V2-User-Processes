      subroutine setreal(pin,rflav,amp2real)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'qcdcouple.f'
      include 'constants.f'
      include 'ckm.f'
      include 'cabibbo.f'
      include 'PhysPars.h'
      real * 8 pin(0:3,nlegreal)
      integer rflav(nlegreal)
      real * 8 amp2real
      real * 8 suppfact2e

      integer i,j
      double precision p(mxpart,4),msq

      ason2pi = st_alpha/2d0/pi

      call setzcoupl(rflav(1),rflav(2),
c          id1      iad1     id2      idw
     .     rflav(5),rflav(6),rflav(7),rflav(3))


      do i=1,2
         p(i,4) = pin(0,i)
         p(i,1:3) = pin(1:3,i)
      enddo

      do i=3,7
         p(i,4) = pin(0,i+2)
         p(i,1:3) = pin(1:3,i+2)
      enddo


      p(1,:)=-p(1,:)
      p(2,:)=-p(2,:)

!$$      p(1,:)=(/   0.00000000000000d0,        0.00000000000000d0, 
!$$     .      -48.3786093853011d0,       -48.3786093853011d0/)     
!$$      p(2,:)=(/   0.00000000000000d0,        0.00000000000000d0, 
!$$     .       6609.35267136495d0,       -6609.35267136495d0/)     
!$$      p(3,:)=(/   226.132578234349d0,        292.943706805419d0, 
!$$     .      -3739.89962585345d0,        3758.16460120557d0/)     
!$$      p(4,:)=(/  0.960605285713513d0,       -4.75750536842764d0,  
!$$     .     -58.2530420339767d0,        58.4548845354930d0/)     
!$$      p(5,:)=(/  -22.2361299989284d0,       -115.493636296217d0,  
!$$     .     -1702.76005220075d0,        1706.81721952673d0/)     
!$$      p(6,:)=(/  -29.9016976348494d0,        6.47490206943652d0,   
!$$     .    -670.434056295181d0,        671.131775226494d0/)     
!$$      p(7,:)=(/  -174.955355886285d0,       -179.167467210211d0,   
!$$     .    -389.627285596290d0,        463.162800255969d0/) 


      ! set Vsum here depending on rflav
      !reset to zero
!      write(*,*)'RFLAV',rflav
      if ((rflav(1).eq.0).and.(rflav(2).ne.0)) then
         Vsum = 0d0
c         Vsum(rflav(2)) = Vsq(rflav(2),-rflav(nlegreal))

c Assume that we produce the appropriate linear combination
c of up (or down) quarks. The flavour will be picked according
c to the CKM at the time of Houches event writing

         Vsum(rflav(2)) = 1

      elseif ((rflav(1).ne.0).and.(rflav(2).eq.0)) then
         Vsum = 0d0
c         Vsum(rflav(1)) = Vsq(rflav(1),-rflav(nlegreal))

         Vsum(rflav(1)) = 1

      endif

      call qqb_wz_g(p,msq)

!$$      write(*,*)'REAAAAAAAAAAALLLLLLL'
!$$      do i=-5,5
!$$         do j=-5,5
!$$            if (msq(i,j).ne.0d0) then
!$$            write(*,*)'msq',i,j,msq(i,j)
!$$            endif
!$$         enddo
!$$      enddo
!$$
!$$      stop

      amp2real = msq

!      write(*,*)'amp2real',amp2real

      amp2real = amp2real/ason2pi

      amp2real = amp2real * normbr

c      write(*,'(a,1x,d15.9,3x,9(i3,1x))') 'real',amp2real,rflav


      end
