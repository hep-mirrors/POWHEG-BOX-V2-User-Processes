module     p0_dbaru_epnebbbarg_d175h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d175h3l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d175
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd175h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd175
      complex(ki) :: brack
      acd175(1)=dotproduct(k2,qshift)
      acd175(2)=dotproduct(qshift,spvak2l5)
      acd175(3)=abb175(25)
      acd175(4)=dotproduct(qshift,spvak2l6)
      acd175(5)=abb175(33)
      acd175(6)=dotproduct(qshift,spvak2k7)
      acd175(7)=abb175(92)
      acd175(8)=abb175(36)
      acd175(9)=dotproduct(k3,qshift)
      acd175(10)=abb175(51)
      acd175(11)=dotproduct(k4,qshift)
      acd175(12)=dotproduct(l5,qshift)
      acd175(13)=abb175(76)
      acd175(14)=dotproduct(l6,qshift)
      acd175(15)=abb175(31)
      acd175(16)=dotproduct(k7,qshift)
      acd175(17)=dotproduct(qshift,qshift)
      acd175(18)=abb175(38)
      acd175(19)=dotproduct(qshift,spvak1k2)
      acd175(20)=abb175(22)
      acd175(21)=dotproduct(qshift,spvak4k2)
      acd175(22)=abb175(27)
      acd175(23)=dotproduct(qshift,spvak4k3)
      acd175(24)=abb175(41)
      acd175(25)=abb175(13)
      acd175(26)=abb175(24)
      acd175(27)=abb175(34)
      acd175(28)=abb175(59)
      acd175(29)=abb175(14)
      acd175(30)=abb175(23)
      acd175(31)=abb175(21)
      acd175(32)=abb175(100)
      acd175(33)=abb175(45)
      acd175(34)=abb175(20)
      acd175(35)=dotproduct(qshift,spvak1k3)
      acd175(36)=abb175(18)
      acd175(37)=dotproduct(qshift,spvak1l6)
      acd175(38)=abb175(16)
      acd175(39)=dotproduct(qshift,spvak2k3)
      acd175(40)=abb175(15)
      acd175(41)=abb175(73)
      acd175(42)=abb175(80)
      acd175(43)=dotproduct(qshift,spvak4l6)
      acd175(44)=abb175(19)
      acd175(45)=dotproduct(qshift,spval5l6)
      acd175(46)=abb175(40)
      acd175(47)=dotproduct(qshift,spvak7l6)
      acd175(48)=abb175(43)
      acd175(49)=abb175(17)
      acd175(50)=acd175(9)+acd175(11)
      acd175(51)=acd175(50)-acd175(1)
      acd175(52)=-acd175(7)*acd175(51)
      acd175(53)=acd175(23)*acd175(32)
      acd175(54)=acd175(21)*acd175(31)
      acd175(55)=acd175(19)*acd175(30)
      acd175(52)=acd175(55)+acd175(54)-acd175(33)+acd175(53)+acd175(52)
      acd175(52)=acd175(6)*acd175(52)
      acd175(53)=-acd175(5)*acd175(51)
      acd175(54)=acd175(23)*acd175(28)
      acd175(55)=acd175(21)*acd175(27)
      acd175(56)=acd175(19)*acd175(26)
      acd175(53)=acd175(56)+acd175(55)-acd175(29)+acd175(54)+acd175(53)
      acd175(53)=acd175(4)*acd175(53)
      acd175(51)=acd175(3)*acd175(51)
      acd175(54)=acd175(23)*acd175(24)
      acd175(55)=acd175(21)*acd175(22)
      acd175(56)=acd175(19)*acd175(20)
      acd175(51)=acd175(56)+acd175(55)-acd175(25)+acd175(54)+acd175(51)
      acd175(51)=acd175(2)*acd175(51)
      acd175(50)=-acd175(10)*acd175(50)
      acd175(54)=-acd175(47)*acd175(48)
      acd175(55)=-acd175(45)*acd175(46)
      acd175(56)=-acd175(43)*acd175(44)
      acd175(57)=-acd175(39)*acd175(40)
      acd175(58)=-acd175(37)*acd175(38)
      acd175(59)=-acd175(35)*acd175(36)
      acd175(60)=acd175(17)*acd175(18)
      acd175(61)=-acd175(14)*acd175(15)
      acd175(62)=acd175(16)+acd175(12)
      acd175(62)=acd175(13)*acd175(62)
      acd175(63)=-acd175(23)*acd175(42)
      acd175(64)=-acd175(21)*acd175(41)
      acd175(65)=-acd175(19)*acd175(34)
      acd175(66)=-acd175(1)*acd175(8)
      brack=acd175(49)+acd175(50)+acd175(51)+acd175(52)+acd175(53)+acd175(54)+a&
      &cd175(55)+acd175(56)+acd175(57)+acd175(58)+acd175(59)+acd175(60)+acd175(&
      &61)+acd175(62)+acd175(63)+acd175(64)+acd175(65)+acd175(66)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd175h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(77) :: acd175
      complex(ki) :: brack
      acd175(1)=k2(iv1)
      acd175(2)=dotproduct(qshift,spvak2l5)
      acd175(3)=abb175(25)
      acd175(4)=dotproduct(qshift,spvak2l6)
      acd175(5)=abb175(33)
      acd175(6)=dotproduct(qshift,spvak2k7)
      acd175(7)=abb175(92)
      acd175(8)=abb175(36)
      acd175(9)=k3(iv1)
      acd175(10)=abb175(51)
      acd175(11)=k4(iv1)
      acd175(12)=l5(iv1)
      acd175(13)=abb175(76)
      acd175(14)=l6(iv1)
      acd175(15)=abb175(31)
      acd175(16)=k7(iv1)
      acd175(17)=qshift(iv1)
      acd175(18)=abb175(38)
      acd175(19)=spvak2l5(iv1)
      acd175(20)=dotproduct(k2,qshift)
      acd175(21)=dotproduct(k3,qshift)
      acd175(22)=dotproduct(k4,qshift)
      acd175(23)=dotproduct(qshift,spvak1k2)
      acd175(24)=abb175(22)
      acd175(25)=dotproduct(qshift,spvak4k2)
      acd175(26)=abb175(27)
      acd175(27)=dotproduct(qshift,spvak4k3)
      acd175(28)=abb175(41)
      acd175(29)=abb175(13)
      acd175(30)=spvak2l6(iv1)
      acd175(31)=abb175(24)
      acd175(32)=abb175(34)
      acd175(33)=abb175(59)
      acd175(34)=abb175(14)
      acd175(35)=spvak2k7(iv1)
      acd175(36)=abb175(23)
      acd175(37)=abb175(21)
      acd175(38)=abb175(100)
      acd175(39)=abb175(45)
      acd175(40)=spvak1k2(iv1)
      acd175(41)=abb175(20)
      acd175(42)=spvak1k3(iv1)
      acd175(43)=abb175(18)
      acd175(44)=spvak1l6(iv1)
      acd175(45)=abb175(16)
      acd175(46)=spvak2k3(iv1)
      acd175(47)=abb175(15)
      acd175(48)=spvak4k2(iv1)
      acd175(49)=abb175(73)
      acd175(50)=spvak4k3(iv1)
      acd175(51)=abb175(80)
      acd175(52)=spvak4l6(iv1)
      acd175(53)=abb175(19)
      acd175(54)=spval5l6(iv1)
      acd175(55)=abb175(40)
      acd175(56)=spvak7l6(iv1)
      acd175(57)=abb175(43)
      acd175(58)=-acd175(50)*acd175(38)
      acd175(59)=-acd175(48)*acd175(37)
      acd175(60)=-acd175(40)*acd175(36)
      acd175(61)=acd175(9)+acd175(11)
      acd175(62)=acd175(1)-acd175(61)
      acd175(63)=-acd175(7)*acd175(62)
      acd175(58)=acd175(63)+acd175(60)+acd175(58)+acd175(59)
      acd175(58)=acd175(6)*acd175(58)
      acd175(59)=-acd175(50)*acd175(33)
      acd175(60)=-acd175(48)*acd175(32)
      acd175(63)=-acd175(40)*acd175(31)
      acd175(64)=-acd175(5)*acd175(62)
      acd175(59)=acd175(64)+acd175(63)+acd175(59)+acd175(60)
      acd175(59)=acd175(4)*acd175(59)
      acd175(60)=-acd175(50)*acd175(28)
      acd175(63)=-acd175(48)*acd175(26)
      acd175(64)=-acd175(40)*acd175(24)
      acd175(62)=acd175(3)*acd175(62)
      acd175(60)=acd175(62)+acd175(64)+acd175(60)+acd175(63)
      acd175(60)=acd175(2)*acd175(60)
      acd175(62)=-acd175(27)*acd175(38)
      acd175(63)=-acd175(25)*acd175(37)
      acd175(64)=-acd175(23)*acd175(36)
      acd175(65)=-acd175(22)+acd175(20)-acd175(21)
      acd175(66)=-acd175(7)*acd175(65)
      acd175(62)=acd175(66)+acd175(64)+acd175(63)+acd175(39)+acd175(62)
      acd175(62)=acd175(35)*acd175(62)
      acd175(63)=-acd175(27)*acd175(33)
      acd175(64)=-acd175(25)*acd175(32)
      acd175(66)=-acd175(23)*acd175(31)
      acd175(67)=-acd175(5)*acd175(65)
      acd175(63)=acd175(67)+acd175(66)+acd175(64)+acd175(34)+acd175(63)
      acd175(63)=acd175(30)*acd175(63)
      acd175(64)=-acd175(27)*acd175(28)
      acd175(66)=-acd175(25)*acd175(26)
      acd175(67)=-acd175(23)*acd175(24)
      acd175(65)=acd175(3)*acd175(65)
      acd175(64)=acd175(65)+acd175(67)+acd175(66)+acd175(29)+acd175(64)
      acd175(64)=acd175(19)*acd175(64)
      acd175(61)=acd175(10)*acd175(61)
      acd175(65)=acd175(56)*acd175(57)
      acd175(66)=acd175(54)*acd175(55)
      acd175(67)=acd175(52)*acd175(53)
      acd175(68)=acd175(46)*acd175(47)
      acd175(69)=acd175(44)*acd175(45)
      acd175(70)=acd175(42)*acd175(43)
      acd175(71)=acd175(17)*acd175(18)
      acd175(72)=acd175(14)*acd175(15)
      acd175(73)=-acd175(16)-acd175(12)
      acd175(73)=acd175(13)*acd175(73)
      acd175(74)=acd175(50)*acd175(51)
      acd175(75)=acd175(48)*acd175(49)
      acd175(76)=acd175(40)*acd175(41)
      acd175(77)=acd175(1)*acd175(8)
      brack=acd175(58)+acd175(59)+acd175(60)+acd175(61)+acd175(62)+acd175(63)+a&
      &cd175(64)+acd175(65)+acd175(66)+acd175(67)+acd175(68)+acd175(69)+acd175(&
      &70)-2.0_ki*acd175(71)+acd175(72)+acd175(73)+acd175(74)+acd175(75)+acd175&
      &(76)+acd175(77)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd175h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd175
      complex(ki) :: brack
      acd175(1)=d(iv1,iv2)
      acd175(2)=abb175(38)
      acd175(3)=k2(iv1)
      acd175(4)=spvak2l5(iv2)
      acd175(5)=abb175(25)
      acd175(6)=spvak2l6(iv2)
      acd175(7)=abb175(33)
      acd175(8)=spvak2k7(iv2)
      acd175(9)=abb175(92)
      acd175(10)=k2(iv2)
      acd175(11)=spvak2l5(iv1)
      acd175(12)=spvak2l6(iv1)
      acd175(13)=spvak2k7(iv1)
      acd175(14)=k3(iv1)
      acd175(15)=k3(iv2)
      acd175(16)=k4(iv1)
      acd175(17)=k4(iv2)
      acd175(18)=spvak1k2(iv2)
      acd175(19)=abb175(22)
      acd175(20)=spvak4k2(iv2)
      acd175(21)=abb175(27)
      acd175(22)=spvak4k3(iv2)
      acd175(23)=abb175(41)
      acd175(24)=spvak1k2(iv1)
      acd175(25)=spvak4k2(iv1)
      acd175(26)=spvak4k3(iv1)
      acd175(27)=abb175(24)
      acd175(28)=abb175(34)
      acd175(29)=abb175(59)
      acd175(30)=abb175(23)
      acd175(31)=abb175(21)
      acd175(32)=abb175(100)
      acd175(33)=acd175(26)*acd175(32)
      acd175(34)=acd175(25)*acd175(31)
      acd175(35)=acd175(24)*acd175(30)
      acd175(36)=-acd175(16)+acd175(3)-acd175(14)
      acd175(37)=acd175(9)*acd175(36)
      acd175(33)=acd175(37)+acd175(35)+acd175(33)+acd175(34)
      acd175(33)=acd175(8)*acd175(33)
      acd175(34)=acd175(26)*acd175(29)
      acd175(35)=acd175(25)*acd175(28)
      acd175(37)=acd175(24)*acd175(27)
      acd175(38)=acd175(7)*acd175(36)
      acd175(34)=acd175(38)+acd175(37)+acd175(34)+acd175(35)
      acd175(34)=acd175(6)*acd175(34)
      acd175(35)=acd175(26)*acd175(23)
      acd175(37)=acd175(25)*acd175(21)
      acd175(38)=acd175(24)*acd175(19)
      acd175(36)=-acd175(5)*acd175(36)
      acd175(35)=acd175(36)+acd175(38)+acd175(35)+acd175(37)
      acd175(35)=acd175(4)*acd175(35)
      acd175(36)=acd175(9)*acd175(13)
      acd175(37)=acd175(7)*acd175(12)
      acd175(38)=-acd175(5)*acd175(11)
      acd175(36)=acd175(38)+acd175(37)+acd175(36)
      acd175(37)=-acd175(17)+acd175(10)-acd175(15)
      acd175(36)=acd175(37)*acd175(36)
      acd175(37)=acd175(22)*acd175(32)
      acd175(38)=acd175(20)*acd175(31)
      acd175(39)=acd175(18)*acd175(30)
      acd175(37)=acd175(39)+acd175(37)+acd175(38)
      acd175(37)=acd175(13)*acd175(37)
      acd175(38)=acd175(22)*acd175(29)
      acd175(39)=acd175(20)*acd175(28)
      acd175(40)=acd175(18)*acd175(27)
      acd175(38)=acd175(40)+acd175(38)+acd175(39)
      acd175(38)=acd175(12)*acd175(38)
      acd175(39)=acd175(22)*acd175(23)
      acd175(40)=acd175(20)*acd175(21)
      acd175(41)=acd175(18)*acd175(19)
      acd175(39)=acd175(41)+acd175(39)+acd175(40)
      acd175(39)=acd175(11)*acd175(39)
      acd175(40)=acd175(1)*acd175(2)
      brack=acd175(33)+acd175(34)+acd175(35)+acd175(36)+acd175(37)+acd175(38)+a&
      &cd175(39)+2.0_ki*acd175(40)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd175h3
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
      qshift = k6
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
!---#[ subroutine reconstruct_d175:
   subroutine     reconstruct_d175(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_175:
      coeffs%coeffs_175%c0 = derivative(czip)
      coeffs%coeffs_175%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_175%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_175%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_175%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_175%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_175%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_175%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_175%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_175%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_175%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_175%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_175%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_175%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_175%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_175:
   end subroutine reconstruct_d175
!---#] subroutine reconstruct_d175:
end module     p0_dbaru_epnebbbarg_d175h3l1d
