module     p0_dbaru_epnebbbarg_d16h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d16h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d16
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd16h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd16
      complex(ki) :: brack
      acd16(1)=dotproduct(l5,qshift)
      acd16(2)=abb16(14)
      acd16(3)=dotproduct(l6,qshift)
      acd16(4)=dotproduct(qshift,qshift)
      acd16(5)=dotproduct(qshift,spvak4k2)
      acd16(6)=abb16(11)
      acd16(7)=dotproduct(qshift,spval5k2)
      acd16(8)=abb16(17)
      acd16(9)=dotproduct(qshift,spval6k2)
      acd16(10)=abb16(18)
      acd16(11)=abb16(13)
      acd16(12)=dotproduct(qshift,spvak1k2)
      acd16(13)=dotproduct(qshift,spvak4k3)
      acd16(14)=abb16(8)
      acd16(15)=abb16(10)
      acd16(16)=dotproduct(qshift,spvak1k3)
      acd16(17)=abb16(16)
      acd16(18)=abb16(12)
      acd16(19)=abb16(20)
      acd16(20)=abb16(9)
      acd16(21)=abb16(19)
      acd16(22)=abb16(15)
      acd16(23)=acd16(16)*acd16(21)
      acd16(24)=-acd16(12)*acd16(19)
      acd16(24)=acd16(20)+acd16(24)
      acd16(24)=acd16(13)*acd16(24)
      acd16(25)=-acd16(4)*acd16(10)
      acd16(23)=acd16(25)+acd16(24)-acd16(22)+acd16(23)
      acd16(23)=acd16(9)*acd16(23)
      acd16(24)=acd16(16)*acd16(17)
      acd16(25)=-acd16(12)*acd16(14)
      acd16(25)=acd16(15)+acd16(25)
      acd16(25)=acd16(13)*acd16(25)
      acd16(26)=-acd16(4)*acd16(8)
      acd16(24)=acd16(26)+acd16(25)-acd16(18)+acd16(24)
      acd16(24)=acd16(7)*acd16(24)
      acd16(25)=acd16(3)+acd16(1)
      acd16(25)=acd16(2)*acd16(25)
      acd16(26)=-acd16(5)*acd16(6)
      acd16(26)=acd16(11)+acd16(26)
      acd16(26)=acd16(4)*acd16(26)
      brack=acd16(23)+acd16(24)+acd16(25)+acd16(26)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd16h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd16
      complex(ki) :: brack
      acd16(1)=l5(iv1)
      acd16(2)=abb16(14)
      acd16(3)=l6(iv1)
      acd16(4)=qshift(iv1)
      acd16(5)=dotproduct(qshift,spvak4k2)
      acd16(6)=abb16(11)
      acd16(7)=dotproduct(qshift,spval5k2)
      acd16(8)=abb16(17)
      acd16(9)=dotproduct(qshift,spval6k2)
      acd16(10)=abb16(18)
      acd16(11)=abb16(13)
      acd16(12)=spvak4k2(iv1)
      acd16(13)=dotproduct(qshift,qshift)
      acd16(14)=spval5k2(iv1)
      acd16(15)=dotproduct(qshift,spvak1k2)
      acd16(16)=dotproduct(qshift,spvak4k3)
      acd16(17)=abb16(8)
      acd16(18)=abb16(10)
      acd16(19)=dotproduct(qshift,spvak1k3)
      acd16(20)=abb16(16)
      acd16(21)=abb16(12)
      acd16(22)=spval6k2(iv1)
      acd16(23)=abb16(20)
      acd16(24)=abb16(9)
      acd16(25)=abb16(19)
      acd16(26)=abb16(15)
      acd16(27)=spvak1k2(iv1)
      acd16(28)=spvak4k3(iv1)
      acd16(29)=spvak1k3(iv1)
      acd16(30)=acd16(25)*acd16(29)
      acd16(31)=acd16(28)*acd16(24)
      acd16(32)=acd16(15)*acd16(28)
      acd16(33)=-acd16(23)*acd16(32)
      acd16(34)=2.0_ki*acd16(4)
      acd16(35)=-acd16(10)*acd16(34)
      acd16(30)=acd16(35)+acd16(33)+acd16(30)+acd16(31)
      acd16(30)=acd16(9)*acd16(30)
      acd16(31)=acd16(20)*acd16(29)
      acd16(33)=acd16(28)*acd16(18)
      acd16(32)=-acd16(17)*acd16(32)
      acd16(35)=-acd16(8)*acd16(34)
      acd16(31)=acd16(35)+acd16(32)+acd16(31)+acd16(33)
      acd16(31)=acd16(7)*acd16(31)
      acd16(32)=-acd16(9)*acd16(23)
      acd16(33)=-acd16(7)*acd16(17)
      acd16(32)=acd16(33)+acd16(32)
      acd16(32)=acd16(27)*acd16(32)
      acd16(33)=acd16(15)*acd16(23)
      acd16(33)=acd16(24)-acd16(33)
      acd16(33)=acd16(22)*acd16(33)
      acd16(35)=acd16(15)*acd16(17)
      acd16(35)=acd16(18)-acd16(35)
      acd16(35)=acd16(14)*acd16(35)
      acd16(32)=acd16(33)+acd16(35)+acd16(32)
      acd16(32)=acd16(16)*acd16(32)
      acd16(33)=-acd16(6)*acd16(5)
      acd16(33)=acd16(11)+acd16(33)
      acd16(33)=acd16(33)*acd16(34)
      acd16(34)=acd16(19)*acd16(25)
      acd16(35)=-acd16(13)*acd16(10)
      acd16(34)=acd16(35)-acd16(26)+acd16(34)
      acd16(34)=acd16(22)*acd16(34)
      acd16(35)=acd16(19)*acd16(20)
      acd16(36)=-acd16(13)*acd16(8)
      acd16(35)=acd16(36)-acd16(21)+acd16(35)
      acd16(35)=acd16(14)*acd16(35)
      acd16(36)=acd16(3)+acd16(1)
      acd16(36)=acd16(2)*acd16(36)
      acd16(37)=-acd16(13)*acd16(6)*acd16(12)
      brack=acd16(30)+acd16(31)+acd16(32)+acd16(33)+acd16(34)+acd16(35)+acd16(3&
      &6)+acd16(37)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd16h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd16
      complex(ki) :: brack
      acd16(1)=d(iv1,iv2)
      acd16(2)=dotproduct(qshift,spvak4k2)
      acd16(3)=abb16(11)
      acd16(4)=dotproduct(qshift,spval5k2)
      acd16(5)=abb16(17)
      acd16(6)=dotproduct(qshift,spval6k2)
      acd16(7)=abb16(18)
      acd16(8)=abb16(13)
      acd16(9)=qshift(iv1)
      acd16(10)=spvak4k2(iv2)
      acd16(11)=spval5k2(iv2)
      acd16(12)=spval6k2(iv2)
      acd16(13)=qshift(iv2)
      acd16(14)=spvak4k2(iv1)
      acd16(15)=spval5k2(iv1)
      acd16(16)=spval6k2(iv1)
      acd16(17)=spvak1k2(iv2)
      acd16(18)=dotproduct(qshift,spvak4k3)
      acd16(19)=abb16(8)
      acd16(20)=spvak4k3(iv2)
      acd16(21)=dotproduct(qshift,spvak1k2)
      acd16(22)=abb16(10)
      acd16(23)=spvak1k3(iv2)
      acd16(24)=abb16(16)
      acd16(25)=spvak1k2(iv1)
      acd16(26)=spvak4k3(iv1)
      acd16(27)=spvak1k3(iv1)
      acd16(28)=abb16(20)
      acd16(29)=abb16(9)
      acd16(30)=abb16(19)
      acd16(31)=-acd16(4)*acd16(19)
      acd16(32)=-acd16(6)*acd16(28)
      acd16(31)=acd16(32)+acd16(31)
      acd16(32)=acd16(17)*acd16(26)
      acd16(33)=acd16(25)*acd16(20)
      acd16(32)=acd16(32)+acd16(33)
      acd16(31)=acd16(32)*acd16(31)
      acd16(32)=-acd16(5)*acd16(11)
      acd16(33)=-acd16(7)*acd16(12)
      acd16(32)=acd16(32)+acd16(33)
      acd16(32)=acd16(9)*acd16(32)
      acd16(33)=-acd16(5)*acd16(15)
      acd16(34)=-acd16(7)*acd16(16)
      acd16(33)=acd16(33)+acd16(34)
      acd16(33)=acd16(13)*acd16(33)
      acd16(32)=acd16(32)+acd16(33)
      acd16(33)=acd16(15)*acd16(19)
      acd16(34)=acd16(16)*acd16(28)
      acd16(33)=-acd16(33)-acd16(34)
      acd16(33)=acd16(17)*acd16(33)
      acd16(35)=acd16(11)*acd16(19)
      acd16(36)=acd16(12)*acd16(28)
      acd16(35)=acd16(35)+acd16(36)
      acd16(36)=-acd16(25)*acd16(35)
      acd16(33)=acd16(36)+acd16(33)
      acd16(33)=acd16(18)*acd16(33)
      acd16(36)=-acd16(5)*acd16(4)
      acd16(37)=-acd16(7)*acd16(6)
      acd16(38)=-acd16(2)*acd16(3)
      acd16(36)=acd16(8)+acd16(38)+acd16(37)+acd16(36)
      acd16(37)=2.0_ki*acd16(1)
      acd16(36)=acd16(37)*acd16(36)
      acd16(35)=-acd16(26)*acd16(35)
      acd16(37)=acd16(15)*acd16(20)
      acd16(38)=-acd16(19)*acd16(37)
      acd16(34)=-acd16(20)*acd16(34)
      acd16(34)=acd16(34)+acd16(38)+acd16(35)
      acd16(34)=acd16(21)*acd16(34)
      acd16(35)=acd16(23)*acd16(15)
      acd16(38)=acd16(27)*acd16(11)
      acd16(35)=acd16(38)+acd16(35)
      acd16(35)=acd16(24)*acd16(35)
      acd16(38)=-acd16(10)*acd16(9)
      acd16(39)=-acd16(14)*acd16(13)
      acd16(38)=acd16(39)+acd16(38)
      acd16(39)=2.0_ki*acd16(3)
      acd16(38)=acd16(39)*acd16(38)
      acd16(39)=acd16(11)*acd16(26)
      acd16(37)=acd16(39)+acd16(37)
      acd16(37)=acd16(22)*acd16(37)
      acd16(39)=acd16(12)*acd16(26)
      acd16(40)=acd16(16)*acd16(20)
      acd16(39)=acd16(39)+acd16(40)
      acd16(39)=acd16(29)*acd16(39)
      acd16(40)=acd16(23)*acd16(16)
      acd16(41)=acd16(27)*acd16(12)
      acd16(40)=acd16(40)+acd16(41)
      acd16(40)=acd16(30)*acd16(40)
      brack=acd16(31)+2.0_ki*acd16(32)+acd16(33)+acd16(34)+acd16(35)+acd16(36)+&
      &acd16(37)+acd16(38)+acd16(39)+acd16(40)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd16h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(32) :: acd16
      complex(ki) :: brack
      acd16(1)=d(iv1,iv2)
      acd16(2)=spvak4k2(iv3)
      acd16(3)=abb16(11)
      acd16(4)=spval5k2(iv3)
      acd16(5)=abb16(17)
      acd16(6)=spval6k2(iv3)
      acd16(7)=abb16(18)
      acd16(8)=d(iv1,iv3)
      acd16(9)=spvak4k2(iv2)
      acd16(10)=spval5k2(iv2)
      acd16(11)=spval6k2(iv2)
      acd16(12)=d(iv2,iv3)
      acd16(13)=spvak4k2(iv1)
      acd16(14)=spval5k2(iv1)
      acd16(15)=spval6k2(iv1)
      acd16(16)=spvak1k2(iv2)
      acd16(17)=spvak4k3(iv3)
      acd16(18)=abb16(8)
      acd16(19)=spvak1k2(iv3)
      acd16(20)=spvak4k3(iv2)
      acd16(21)=spvak1k2(iv1)
      acd16(22)=spvak4k3(iv1)
      acd16(23)=abb16(20)
      acd16(24)=-acd16(4)*acd16(18)
      acd16(25)=-acd16(6)*acd16(23)
      acd16(24)=acd16(25)+acd16(24)
      acd16(25)=acd16(21)*acd16(20)
      acd16(26)=acd16(22)*acd16(16)
      acd16(25)=acd16(25)+acd16(26)
      acd16(24)=acd16(25)*acd16(24)
      acd16(25)=2.0_ki*acd16(5)
      acd16(25)=-acd16(4)*acd16(25)
      acd16(26)=2.0_ki*acd16(7)
      acd16(26)=-acd16(6)*acd16(26)
      acd16(27)=2.0_ki*acd16(3)
      acd16(27)=-acd16(2)*acd16(27)
      acd16(25)=acd16(27)+acd16(26)+acd16(25)
      acd16(25)=acd16(1)*acd16(25)
      acd16(26)=2.0_ki*acd16(8)
      acd16(27)=-acd16(9)*acd16(26)
      acd16(28)=2.0_ki*acd16(12)
      acd16(29)=-acd16(13)*acd16(28)
      acd16(27)=acd16(29)+acd16(27)
      acd16(27)=acd16(3)*acd16(27)
      acd16(29)=acd16(21)*acd16(17)
      acd16(30)=acd16(22)*acd16(19)
      acd16(29)=acd16(29)+acd16(30)
      acd16(30)=-acd16(18)*acd16(29)
      acd16(31)=-acd16(5)*acd16(26)
      acd16(30)=acd16(31)+acd16(30)
      acd16(30)=acd16(10)*acd16(30)
      acd16(29)=-acd16(23)*acd16(29)
      acd16(26)=-acd16(7)*acd16(26)
      acd16(26)=acd16(26)+acd16(29)
      acd16(26)=acd16(11)*acd16(26)
      acd16(29)=acd16(17)*acd16(16)
      acd16(31)=acd16(20)*acd16(19)
      acd16(29)=acd16(29)+acd16(31)
      acd16(31)=-acd16(18)*acd16(29)
      acd16(32)=-acd16(5)*acd16(28)
      acd16(31)=acd16(32)+acd16(31)
      acd16(31)=acd16(14)*acd16(31)
      acd16(29)=-acd16(23)*acd16(29)
      acd16(28)=-acd16(7)*acd16(28)
      acd16(28)=acd16(28)+acd16(29)
      acd16(28)=acd16(15)*acd16(28)
      brack=acd16(24)+acd16(25)+acd16(26)+acd16(27)+acd16(28)+acd16(30)+acd16(3&
      &1)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd16h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k2
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
      if(present(i3)) then
          iv3=i3
          deg=3
      else
          iv3=1
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
      if(deg.eq.3) then
         numerator = cond(epspow.eq.t1,brack_4,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d16:
   subroutine     reconstruct_d16(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_16:
      coeffs%coeffs_16%c0 = derivative(czip)
      coeffs%coeffs_16%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_16%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_16%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_16%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_16%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_16%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_16%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_16%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_16%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_16%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_16%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_16%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_16%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_16%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_16%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_16%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_16%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_16%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_16%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_16%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_16%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_16%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_16%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_16%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_16%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_16%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_16%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_16%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_16%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_16%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_16%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_16%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_16%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_16%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_16:
   end subroutine reconstruct_d16
!---#] subroutine reconstruct_d16:
end module     p0_dbaru_epnebbbarg_d16h0l1d
