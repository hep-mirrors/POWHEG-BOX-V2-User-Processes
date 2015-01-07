c     This subroutine computes the transformation from the lab frame to the CM frame in where the two quarks are aligned along the z-axis. The transformation can then be passed to the subroutine CM_to_lab                                                        
      subroutine lab_to_CM(CM,p1,p_out) !CM is the CM frame                                                                                                                                                                     
      real * 8 CM(4),p1(4),beta(3),beta2, gamma, dummy(4),p_out(4)
      integer i,j
      
      beta2=0.0 
      do i=1, 3
         beta(i)=CM(i)/CM(4)  !Relatvistisc beta
         beta2=beta2+beta(i)**2 !Beta squared 
c     print*, beta(i), gamma(i)               
      end do
      gamma=1/sqrt(1-beta2)     !Gamma factor
!     !Here we boost to the CM frame
      dummy(4)=gamma*p1(4)
      do i=1,3
         dummy(4)=dummy(4)-gamma*beta(i)*p1(i)
         dummy(i)=p1(i)-gamma*beta(i)*p1(4)
      end do
      do i=1,3
         do j=1,3
            dummy(i)=dummy(i)+(gamma-1)*beta(i)*beta(j)*p1(j)/beta2
         end do
      end do
      do i=1, 4
         p_out(i)=dummy(i)
      end do
      end
      

      subroutine boost(mass,p1,p_in,p_out)
c     take momenta p_in in frame in which one particle is at rest with mass "mass" 
c     and convert to frame in which the one particle has fourvector p1
      implicit none
      double precision mass,p1(4),p_in(4),p_out(4)
      double precision gam,beta(1:3),bdotp,one
      parameter(one=1d0)
      integer j,k
      gam=p1(4)/mass
      bdotp=0d0
      do j=1,3
         beta(j)=-p1(j)/p1(4)
         bdotp=bdotp+p_in(j)*beta(j)
      enddo
      p_out(4)=gam*(p_in(4)-bdotp)
      do k=1,3
         p_out(k)=p_in(k)+gam*beta(k)*(gam/(gam+one)*bdotp-p_in(4))
      enddo
      return
      end      

