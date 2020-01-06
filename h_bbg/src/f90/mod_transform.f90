module mod_transform
  use mod_types
  implicit none

contains
  !> boost momenta
  function boost_momenta(bvec,npart,pin) result(pout)
    implicit none
    real(xprec),dimension(:,:),allocatable:: pout
    real(xprec),intent(in):: bvec(1:4)
    integer,intent(in):: npart
    real(xprec),dimension(:,:),intent(in):: pin
    real(xprec):: mass,gamma,betadotvec,beta(1:3)
    integer:: j,ipart

    ! allocate output
    allocate( pout(1:4,1:npart) )

    ! prepare boost
    mass= sqrt(abs( bvec(4)**2 -bvec(1)**2 -bvec(2)**2 -bvec(3)**2 ))
    gamma= bvec(4)/mass

    ! boost
    do ipart=1,npart
      betadotvec= zero
      do j=1,3
        beta(j)= -bvec(j)/bvec(4)
        betadotvec= betadotvec + pin(j,ipart)*beta(j)
      enddo
      pout(4,ipart)= gamma*( pin(4,ipart) - betadotvec )
      do j=1,3
        pout(j,ipart)= pin(j,ipart) + gamma*beta(j)*(gamma/(gamma+one)*betadotvec - pin(4,ipart) )
      enddo
    enddo

    return
  end function boost_momenta

  !> rotate momenta
  function rotate_momenta(costh,phi,npart,pin) result(pout)
    implicit none
    real(xprec),dimension(:,:),allocatable:: pout
    real(xprec),intent(in):: costh,phi
    integer,intent(in):: npart
    real(xprec),dimension(:,:),intent(in):: pin
    real(xprec):: Rmatrix(1:3,1:3)
    real(xprec):: xcth,xsth,xcphi,xsphi
    integer:: ipart,j,k

    ! allocate output
    allocate( pout(1:4,1:npart) )

    ! angles
    xcth= costh
    xsth= sqrt(abs( one - costh**2 ))
    xcphi= cos(phi)
    xsphi= sin(phi)

    ! rotation matrix
    Rmatrix(1,1)= +xcphi    
    Rmatrix(2,1)= -xsphi*xcth
    Rmatrix(3,1)= +xsphi*xsth
    Rmatrix(1,2)= +xsphi
    Rmatrix(2,2)= +xcphi*xcth
    Rmatrix(3,2)= -xcphi*xsth
    Rmatrix(1,3)= zero
    Rmatrix(2,3)= +xsth
    Rmatrix(3,3)= +xcth

    ! rotate momenta
    do ipart=1,npart
      do j=1,3
        pout(j,ipart)=zero
        do k=1,3
          pout(j,ipart)= pout(j,ipart) + Rmatrix(k,j)*pin(k,ipart)
        enddo
      enddo
      !>> energy component remains unchanged
      pout(4,ipart)= pin(4,ipart)
    enddo

    return
  end function rotate_momenta

end module mod_transform
