module mod_reshuffle
  use mod_types
  implicit none

  real(xprec),parameter:: xsmall = 1.0e-10_xprec

contains
  !> this is a copy of a powheg routine "lhfm_reshuffle" in a special
  !> case (all momenta in a heavy-resonance rest-frame)
  subroutine reshuffle_momenta(Ecm,npart,nmass,pin,pout)
    implicit none
    real(xprec),intent(in):: Ecm
    integer,intent(in):: npart
    real(xprec),dimension(:),intent(in):: nmass
    real(xprec),dimension(:,:),intent(in):: pin
    real(xprec),dimension(:,:),allocatable:: pout
    integer:: ipart,mu
    real(xprec):: scale,delta
    real(xprec):: en,den,d2en
    logical:: rescale

    ! initialise
    scale= one
    rescale= .true.

    ! find a rescaling factor for the three-momenta (Newton method generalized to 2nd derivative)
    do while ( rescale )
      call reshuffle_total_en(scale,npart,nmass,pin,en,den,d2en)
      delta= Ecm - en
      if( abs(delta)/Ecm.lt.xsmall )then
        ! accept scale factor and proceed to calculating momenta
        rescale= .false.
      else
        ! continue searching for a scale factor
        scale= scale + delta/den - (delta/den)**2*d2en/(two*den)
      endif
    enddo

    ! assign new momenta
    do ipart=1,npart
      do mu=1,3
        pout(mu,ipart)= pin(mu,ipart) * scale
      enddo
      pout(4,ipart)= sqrt( pout(1,ipart)**2 + pout(2,ipart)**2 + pout(3,ipart)**2 + nmass(ipart)**2 )
    enddo

    return
  end subroutine reshuffle_momenta

  !> calculate new total energy and its derivatives wrt. scale factor
  subroutine reshuffle_total_en(sc,npart,nmass,pin,energy,denergy,d2energy)
    implicit none
    real(xprec),intent(in):: sc
    integer,intent(in):: npart
    real(xprec),dimension(:),intent(in):: nmass
    real(xprec),dimension(:,:),intent(in):: pin
    real(xprec),intent(out):: energy,denergy,d2energy
    integer:: ipart
    real(xprec):: kpart,mpart,Epart

    energy= zero
    denergy= zero
    d2energy= zero

    do ipart=1,npart
      kpart= sqrt( pin(1,ipart)**2 + pin(2,ipart)**2 + pin(3,ipart)**2 )
      mpart= nmass(ipart)
      Epart= sqrt( (sc*kpart)**2 + mpart**2 )
      energy=   energy   + Epart
      denergy=  denergy  + kpart**2 * sc / Epart
      d2energy= d2energy + kpart**2 * mpart**2 / Epart**3
    enddo

    return
  end subroutine reshuffle_total_en
    

end module mod_reshuffle
