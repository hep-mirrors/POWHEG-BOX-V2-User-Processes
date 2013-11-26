module     p1_dbarc_epnebbbarg_d1h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity2d1h2l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d1
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd1h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd1
      complex(ki) :: brack
      acd1(1)=dotproduct(k3,qshift)
      acd1(2)=abb1(25)
      acd1(3)=dotproduct(k4,qshift)
      acd1(4)=dotproduct(e7,qshift)
      acd1(5)=dotproduct(qshift,spvak4k3)
      acd1(6)=abb1(18)
      acd1(7)=abb1(12)
      acd1(8)=dotproduct(qshift,qshift)
      acd1(9)=abb1(20)
      acd1(10)=dotproduct(qshift,spvak1k2)
      acd1(11)=abb1(5)
      acd1(12)=dotproduct(qshift,spval5k2)
      acd1(13)=abb1(8)
      acd1(14)=dotproduct(qshift,spval5l6)
      acd1(15)=abb1(9)
      acd1(16)=dotproduct(qshift,spvae7k2)
      acd1(17)=abb1(7)
      acd1(18)=abb1(6)
      acd1(19)=dotproduct(qshift,spvak1k3)
      acd1(20)=abb1(10)
      acd1(21)=abb1(16)
      acd1(22)=abb1(14)
      acd1(23)=abb1(15)
      acd1(24)=acd1(6)*acd1(4)
      acd1(25)=acd1(11)*acd1(10)
      acd1(26)=acd1(13)*acd1(12)
      acd1(27)=acd1(15)*acd1(14)
      acd1(28)=acd1(17)*acd1(16)
      acd1(24)=-acd1(18)+acd1(28)+acd1(27)+acd1(26)+acd1(25)+acd1(24)
      acd1(24)=acd1(5)*acd1(24)
      acd1(25)=-acd1(1)-acd1(3)
      acd1(25)=acd1(2)*acd1(25)
      acd1(26)=-acd1(7)*acd1(4)
      acd1(27)=acd1(9)*acd1(8)
      acd1(28)=-acd1(20)*acd1(19)
      acd1(29)=-acd1(21)*acd1(12)
      acd1(30)=-acd1(22)*acd1(14)
      acd1(31)=-acd1(23)*acd1(16)
      brack=acd1(24)+acd1(25)+acd1(26)+acd1(27)+acd1(28)+acd1(29)+acd1(30)+acd1&
      &(31)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd1h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd1
      complex(ki) :: brack
      acd1(1)=k3(iv1)
      acd1(2)=abb1(25)
      acd1(3)=k4(iv1)
      acd1(4)=e7(iv1)
      acd1(5)=dotproduct(qshift,spvak4k3)
      acd1(6)=abb1(18)
      acd1(7)=abb1(12)
      acd1(8)=qshift(iv1)
      acd1(9)=abb1(20)
      acd1(10)=spvak4k3(iv1)
      acd1(11)=dotproduct(e7,qshift)
      acd1(12)=dotproduct(qshift,spvak1k2)
      acd1(13)=abb1(5)
      acd1(14)=dotproduct(qshift,spval5k2)
      acd1(15)=abb1(8)
      acd1(16)=dotproduct(qshift,spval5l6)
      acd1(17)=abb1(9)
      acd1(18)=dotproduct(qshift,spvae7k2)
      acd1(19)=abb1(7)
      acd1(20)=abb1(6)
      acd1(21)=spvak1k2(iv1)
      acd1(22)=spvak1k3(iv1)
      acd1(23)=abb1(10)
      acd1(24)=spval5k2(iv1)
      acd1(25)=abb1(16)
      acd1(26)=spval5l6(iv1)
      acd1(27)=abb1(14)
      acd1(28)=spvae7k2(iv1)
      acd1(29)=abb1(15)
      acd1(30)=-acd1(6)*acd1(4)
      acd1(31)=-acd1(24)*acd1(15)
      acd1(32)=-acd1(26)*acd1(17)
      acd1(33)=-acd1(28)*acd1(19)
      acd1(34)=-acd1(21)*acd1(13)
      acd1(30)=acd1(34)+acd1(33)+acd1(32)+acd1(30)+acd1(31)
      acd1(30)=acd1(5)*acd1(30)
      acd1(31)=-acd1(11)*acd1(6)
      acd1(32)=-acd1(12)*acd1(13)
      acd1(33)=-acd1(14)*acd1(15)
      acd1(34)=-acd1(16)*acd1(17)
      acd1(35)=-acd1(18)*acd1(19)
      acd1(31)=acd1(20)+acd1(35)+acd1(34)+acd1(33)+acd1(32)+acd1(31)
      acd1(31)=acd1(10)*acd1(31)
      acd1(32)=acd1(3)+acd1(1)
      acd1(32)=acd1(2)*acd1(32)
      acd1(33)=acd1(7)*acd1(4)
      acd1(34)=acd1(9)*acd1(8)
      acd1(35)=acd1(23)*acd1(22)
      acd1(36)=acd1(25)*acd1(24)
      acd1(37)=acd1(27)*acd1(26)
      acd1(38)=acd1(29)*acd1(28)
      brack=acd1(30)+acd1(31)+acd1(32)+acd1(33)-2.0_ki*acd1(34)+acd1(35)+acd1(3&
      &6)+acd1(37)+acd1(38)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd1h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd1
      complex(ki) :: brack
      acd1(1)=d(iv1,iv2)
      acd1(2)=abb1(20)
      acd1(3)=e7(iv1)
      acd1(4)=spvak4k3(iv2)
      acd1(5)=abb1(18)
      acd1(6)=e7(iv2)
      acd1(7)=spvak4k3(iv1)
      acd1(8)=spvak1k2(iv2)
      acd1(9)=abb1(5)
      acd1(10)=spval5k2(iv2)
      acd1(11)=abb1(8)
      acd1(12)=spval5l6(iv2)
      acd1(13)=abb1(9)
      acd1(14)=spvae7k2(iv2)
      acd1(15)=abb1(7)
      acd1(16)=spvak1k2(iv1)
      acd1(17)=spval5k2(iv1)
      acd1(18)=spval5l6(iv1)
      acd1(19)=spvae7k2(iv1)
      acd1(20)=acd1(3)*acd1(5)
      acd1(21)=acd1(16)*acd1(9)
      acd1(22)=acd1(17)*acd1(11)
      acd1(23)=acd1(18)*acd1(13)
      acd1(24)=acd1(19)*acd1(15)
      acd1(20)=acd1(24)+acd1(23)+acd1(22)+acd1(21)+acd1(20)
      acd1(20)=acd1(4)*acd1(20)
      acd1(21)=acd1(6)*acd1(5)
      acd1(22)=acd1(8)*acd1(9)
      acd1(23)=acd1(10)*acd1(11)
      acd1(24)=acd1(12)*acd1(13)
      acd1(25)=acd1(14)*acd1(15)
      acd1(21)=acd1(25)+acd1(24)+acd1(23)+acd1(22)+acd1(21)
      acd1(21)=acd1(7)*acd1(21)
      acd1(22)=acd1(2)*acd1(1)
      brack=acd1(20)+acd1(21)+2.0_ki*acd1(22)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd1h2
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k3+k2-k4
      numerator = 0.0_ki
      deg = 0
      if(present(i1)) then
          iv1=i1
          deg=1
      else
          iv1=1
      end if
      if(present(i2)) then
          iv2=i2
          deg=2
      else
          iv2=1
      end if
      t1 = 0
      if(deg.eq.0) then
         numerator = cond(epspow.eq.t1,brack_1,Q,mu2)
         return
      end if
      if(deg.eq.1) then
         numerator = cond(epspow.eq.t1,brack_2,Q,mu2)
         return
      end if
      if(deg.eq.2) then
         numerator = cond(epspow.eq.t1,brack_3,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d1:
   subroutine     reconstruct_d1(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_1:
      coeffs%coeffs_1%c0 = derivative(czip)
      coeffs%coeffs_1%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_1%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_1%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_1%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_1%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_1%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_1%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_1%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_1%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_1%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_1%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_1%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_1%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_1%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_1:
   end subroutine reconstruct_d1
!---#] subroutine reconstruct_d1:
end module     p1_dbarc_epnebbbarg_d1h2l1d
