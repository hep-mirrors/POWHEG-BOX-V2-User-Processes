      subroutine reshuffle_momenta(Ecm,npart,nmass,pin,pout)
      implicit none
      real*8 Ecm
      integer npart
      real*8 nmass(1:4),pin(1:4,1:4),pout(1:4,1:4)
      real*8 scale,en,den,d2en,delta
      logical rescale
      real*8 xsmall
      parameter ( xsmall = 1d-10 )
      integer ipart,mu

      scale=1d0
      rescale=.true.


!     check if everything is ok with the input
      if( Ecm.ne.Ecm )then
        write(*,*)'ERROR: reshuffle_momenta.f'
        write(*,*)'>>> Ecm=',Ecm
        stop
      endif
      if( npart.lt.1 )then
        write(*,*)'ERROR: reshuffle_momenta.f'
        write(*,*)'npart=',npart
      endif

!     find a rescaling factor for the three-momenta (Newton method generalized to 2nd derivative)
      do while ( rescale )
        call reshuffle_total_en(scale,npart,nmass,pin,en,den,d2en)
        delta= Ecm - en
        if( abs(delta)/Ecm.lt.xsmall )then
!     accept scale factor and proceed to calculating momenta
          rescale= .false.
        else
!     continue searching for a scale factor
          scale= scale + delta/den - (delta/den)**2*d2en/(2d0*den)
        endif
      enddo

!     assign new momenta
      pout= 0d0
      do ipart=1,npart
        do mu=1,3
          pout(mu,ipart)= pin(mu,ipart) * scale
        enddo
        pout(4,ipart)= sqrt( pout(1,ipart)**2 + pout(2,ipart)**2 + pout(3,ipart)**2 + nmass(ipart)**2 )
      enddo

      return
      end
      

      subroutine reshuffle_total_en(sc,npart,nmass,pin,energy,denergy,d2energy)
      implicit none
      real*8 sc
      integer npart
      real*8 nmass(1:4)
      real*8 pin(1:4,1:4)
      real*8 energy,denergy,d2energy
      integer ipart
      real*8 kpart,mpart,Epart

      energy= 0d0
      denergy= 0d0
      d2energy= 0d0

      do ipart=1,npart
        kpart= sqrt( pin(1,ipart)**2 + pin(2,ipart)**2 + pin(3,ipart)**2 )
        mpart= nmass(ipart)
        Epart= sqrt( (sc*kpart)**2 + mpart**2 )
        energy=   energy   + Epart
        denergy=  denergy  + kpart**2 * sc / Epart
        d2energy= d2energy + kpart**2 * mpart**2 / Epart**3
      enddo

      return
      end
