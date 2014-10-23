module     p0_dbaru_epnebbbarg_d84h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d84h4l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd84h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(9) :: acd84
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd84(1)=dotproduct(ninjaE3,spvak1k2)
      acd84(2)=dotproduct(ninjaE3,spvak4k3)
      acd84(3)=dotproduct(ninjaE3,spval6k2)
      acd84(4)=dotproduct(ninjaE3,spvak7k2)
      acd84(5)=abb84(7)
      acd84(6)=dotproduct(ninjaE3,spval5k2)
      acd84(7)=abb84(16)
      acd84(8)=acd84(5)*acd84(3)
      acd84(9)=acd84(7)*acd84(6)
      acd84(8)=acd84(8)+acd84(9)
      acd84(8)=acd84(1)*acd84(8)*acd84(4)*acd84(2)
      brack(ninjaidxt2mu0)=acd84(8)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd84h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(88) :: acd84
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd84(1)=dotproduct(ninjaE3,spvak1k2)
      acd84(2)=dotproduct(ninjaE3,spvak4k3)
      acd84(3)=dotproduct(ninjaE3,spval6k2)
      acd84(4)=dotproduct(ninjaE4,spvak7k2)
      acd84(5)=abb84(7)
      acd84(6)=dotproduct(ninjaE3,spvak7k2)
      acd84(7)=dotproduct(ninjaE4,spval6k2)
      acd84(8)=dotproduct(ninjaE4,spval5k2)
      acd84(9)=abb84(16)
      acd84(10)=dotproduct(ninjaE3,spval5k2)
      acd84(11)=dotproduct(ninjaE4,spvak4k3)
      acd84(12)=dotproduct(ninjaE4,spvak1k2)
      acd84(13)=abb84(36)
      acd84(14)=abb84(38)
      acd84(15)=dotproduct(ninjaE3,spvak4k2)
      acd84(16)=abb84(28)
      acd84(17)=dotproduct(k1,ninjaE3)
      acd84(18)=abb84(37)
      acd84(19)=abb84(39)
      acd84(20)=abb84(25)
      acd84(21)=dotproduct(k3,ninjaE3)
      acd84(22)=abb84(35)
      acd84(23)=abb84(34)
      acd84(24)=dotproduct(k4,ninjaE3)
      acd84(25)=dotproduct(ninjaA,ninjaE3)
      acd84(26)=dotproduct(ninjaA,spvak1k2)
      acd84(27)=dotproduct(ninjaA,spvak4k3)
      acd84(28)=dotproduct(ninjaA,spval6k2)
      acd84(29)=dotproduct(ninjaA,spvak7k2)
      acd84(30)=dotproduct(ninjaA,spval5k2)
      acd84(31)=abb84(9)
      acd84(32)=abb84(22)
      acd84(33)=abb84(27)
      acd84(34)=abb84(8)
      acd84(35)=abb84(40)
      acd84(36)=abb84(10)
      acd84(37)=abb84(29)
      acd84(38)=dotproduct(ninjaE3,spvak3k2)
      acd84(39)=dotproduct(ninjaE3,spvak1k3)
      acd84(40)=abb84(21)
      acd84(41)=abb84(26)
      acd84(42)=dotproduct(k1,ninjaA)
      acd84(43)=dotproduct(ninjaA,spvak4k2)
      acd84(44)=abb84(19)
      acd84(45)=dotproduct(k3,ninjaA)
      acd84(46)=dotproduct(k4,ninjaA)
      acd84(47)=dotproduct(k7,ninjaE3)
      acd84(48)=abb84(30)
      acd84(49)=abb84(18)
      acd84(50)=abb84(13)
      acd84(51)=dotproduct(ninjaA,ninjaA)
      acd84(52)=abb84(12)
      acd84(53)=dotproduct(ninjaA,spvak1k3)
      acd84(54)=dotproduct(ninjaA,spvak3k2)
      acd84(55)=abb84(20)
      acd84(56)=abb84(33)
      acd84(57)=abb84(24)
      acd84(58)=abb84(11)
      acd84(59)=abb84(41)
      acd84(60)=abb84(23)
      acd84(61)=acd84(9)*acd84(8)
      acd84(62)=acd84(5)*acd84(7)
      acd84(61)=acd84(61)+acd84(62)
      acd84(61)=acd84(61)*acd84(1)
      acd84(62)=acd84(10)*acd84(9)
      acd84(63)=acd84(3)*acd84(5)
      acd84(62)=acd84(62)+acd84(63)
      acd84(63)=acd84(12)*acd84(62)
      acd84(61)=acd84(61)+acd84(63)
      acd84(63)=acd84(2)*acd84(61)
      acd84(64)=-acd84(15)*acd84(16)
      acd84(65)=acd84(1)*acd84(9)
      acd84(66)=acd84(65)*acd84(11)
      acd84(66)=acd84(14)+acd84(66)
      acd84(66)=acd84(10)*acd84(66)
      acd84(67)=acd84(1)*acd84(5)
      acd84(68)=acd84(11)*acd84(67)
      acd84(68)=acd84(13)+acd84(68)
      acd84(68)=acd84(3)*acd84(68)
      acd84(63)=acd84(63)+acd84(68)+acd84(64)+acd84(66)
      acd84(63)=acd84(6)*acd84(63)
      acd84(64)=acd84(10)*acd84(65)
      acd84(66)=acd84(3)*acd84(67)
      acd84(64)=acd84(64)+acd84(66)
      acd84(64)=acd84(2)*acd84(4)*acd84(64)
      acd84(63)=acd84(64)+acd84(63)
      acd84(64)=acd84(15)*acd84(37)
      acd84(66)=acd84(16)*acd84(38)
      acd84(64)=acd84(64)-acd84(66)
      acd84(68)=acd84(5)*acd84(28)
      acd84(69)=acd84(9)*acd84(30)
      acd84(68)=acd84(31)+acd84(68)+acd84(69)
      acd84(69)=acd84(1)*acd84(68)
      acd84(70)=acd84(9)*acd84(26)
      acd84(70)=acd84(70)+acd84(36)
      acd84(71)=acd84(10)*acd84(70)
      acd84(72)=acd84(5)*acd84(26)
      acd84(72)=acd84(72)+acd84(34)
      acd84(73)=acd84(3)*acd84(72)
      acd84(74)=acd84(6)*acd84(35)
      acd84(69)=acd84(74)+acd84(73)+acd84(71)+acd84(69)+acd84(64)
      acd84(69)=acd84(2)*acd84(69)
      acd84(71)=acd84(21)+acd84(24)
      acd84(73)=-acd84(23)*acd84(71)
      acd84(74)=acd84(39)*acd84(41)
      acd84(75)=acd84(17)*acd84(19)
      acd84(76)=2.0_ki*acd84(25)
      acd84(77)=acd84(76)*acd84(14)
      acd84(73)=acd84(74)+acd84(75)+acd84(77)+acd84(73)
      acd84(74)=acd84(9)*acd84(27)
      acd84(74)=acd84(74)+acd84(33)
      acd84(75)=acd84(1)*acd84(74)
      acd84(75)=acd84(75)+acd84(73)
      acd84(75)=acd84(10)*acd84(75)
      acd84(77)=-acd84(22)*acd84(71)
      acd84(78)=acd84(39)*acd84(40)
      acd84(79)=acd84(17)*acd84(18)
      acd84(80)=acd84(76)*acd84(13)
      acd84(77)=acd84(78)+acd84(79)+acd84(80)+acd84(77)
      acd84(78)=acd84(5)*acd84(27)
      acd84(78)=acd84(78)+acd84(32)
      acd84(79)=acd84(1)*acd84(78)
      acd84(79)=acd84(79)+acd84(77)
      acd84(79)=acd84(3)*acd84(79)
      acd84(71)=acd84(17)-acd84(71)
      acd84(71)=acd84(71)*acd84(20)
      acd84(80)=acd84(76)*acd84(16)
      acd84(71)=acd84(71)+acd84(80)
      acd84(80)=acd84(71)*acd84(15)
      acd84(69)=acd84(79)-acd84(80)+acd84(75)+acd84(69)
      acd84(69)=acd84(6)*acd84(69)
      acd84(75)=acd84(1)*acd84(29)
      acd84(62)=acd84(2)*acd84(75)*acd84(62)
      acd84(62)=acd84(62)+acd84(69)
      acd84(69)=ninjaP+acd84(51)
      acd84(79)=acd84(14)*acd84(69)
      acd84(81)=acd84(26)*acd84(74)
      acd84(82)=acd84(41)*acd84(53)
      acd84(83)=acd84(19)*acd84(42)
      acd84(84)=acd84(45)+acd84(46)
      acd84(85)=-acd84(23)*acd84(84)
      acd84(86)=acd84(27)*acd84(36)
      acd84(65)=acd84(65)*ninjaP
      acd84(87)=acd84(11)*acd84(65)
      acd84(79)=acd84(87)+acd84(86)+acd84(85)+acd84(83)+acd84(58)+acd84(82)+acd&
      &84(81)+acd84(79)
      acd84(79)=acd84(10)*acd84(79)
      acd84(81)=acd84(13)*acd84(69)
      acd84(82)=acd84(26)*acd84(78)
      acd84(83)=acd84(40)*acd84(53)
      acd84(85)=acd84(18)*acd84(42)
      acd84(86)=-acd84(22)*acd84(84)
      acd84(87)=acd84(27)*acd84(34)
      acd84(67)=acd84(67)*ninjaP
      acd84(88)=acd84(11)*acd84(67)
      acd84(81)=acd84(88)+acd84(87)+acd84(86)+acd84(85)+acd84(56)+acd84(83)+acd&
      &84(82)+acd84(81)
      acd84(81)=acd84(3)*acd84(81)
      acd84(61)=ninjaP*acd84(61)
      acd84(82)=acd84(30)*acd84(70)
      acd84(83)=acd84(28)*acd84(72)
      acd84(85)=acd84(43)*acd84(37)
      acd84(86)=-acd84(16)*acd84(54)
      acd84(87)=acd84(26)*acd84(31)
      acd84(88)=acd84(29)*acd84(35)
      acd84(61)=2.0_ki*acd84(88)+acd84(87)+acd84(85)+acd84(86)+acd84(83)+acd84(&
      &82)+acd84(61)
      acd84(61)=acd84(2)*acd84(61)
      acd84(82)=acd84(30)*acd84(73)
      acd84(83)=acd84(28)*acd84(77)
      acd84(69)=-acd84(16)*acd84(69)
      acd84(84)=-acd84(42)+acd84(84)
      acd84(84)=acd84(20)*acd84(84)
      acd84(85)=acd84(27)*acd84(37)
      acd84(69)=acd84(85)+acd84(84)+acd84(60)+acd84(69)
      acd84(69)=acd84(15)*acd84(69)
      acd84(84)=acd84(30)*acd84(74)
      acd84(85)=acd84(28)*acd84(78)
      acd84(86)=acd84(27)*acd84(31)
      acd84(84)=acd84(86)+acd84(55)+acd84(85)+acd84(84)
      acd84(84)=acd84(1)*acd84(84)
      acd84(71)=-acd84(43)*acd84(71)
      acd84(85)=acd84(47)*acd84(49)
      acd84(86)=acd84(39)*acd84(59)
      acd84(76)=acd84(52)*acd84(76)
      acd84(87)=acd84(17)*acd84(44)
      acd84(66)=-acd84(27)*acd84(66)
      acd84(88)=acd84(27)*acd84(35)
      acd84(88)=acd84(57)+acd84(88)
      acd84(88)=acd84(6)*acd84(88)
      acd84(61)=acd84(88)+acd84(61)+acd84(81)+acd84(79)+acd84(84)+acd84(69)+acd&
      &84(66)+acd84(83)+acd84(82)+acd84(87)+acd84(76)+acd84(85)+acd84(86)+acd84&
      &(71)
      acd84(61)=acd84(6)*acd84(61)
      acd84(64)=acd84(29)*acd84(64)
      acd84(66)=acd84(68)*acd84(75)
      acd84(68)=acd84(29)*acd84(70)
      acd84(65)=acd84(4)*acd84(65)
      acd84(65)=acd84(68)+acd84(65)
      acd84(65)=acd84(10)*acd84(65)
      acd84(68)=acd84(29)*acd84(72)
      acd84(67)=acd84(4)*acd84(67)
      acd84(67)=acd84(68)+acd84(67)
      acd84(67)=acd84(3)*acd84(67)
      acd84(64)=acd84(67)+acd84(65)+acd84(64)+acd84(66)
      acd84(64)=acd84(2)*acd84(64)
      acd84(65)=acd84(29)*acd84(73)
      acd84(66)=acd84(74)*acd84(75)
      acd84(67)=acd84(47)*acd84(50)
      acd84(65)=acd84(66)+acd84(67)+acd84(65)
      acd84(65)=acd84(10)*acd84(65)
      acd84(66)=acd84(29)*acd84(77)
      acd84(67)=acd84(78)*acd84(75)
      acd84(68)=acd84(47)*acd84(48)
      acd84(66)=acd84(67)+acd84(68)+acd84(66)
      acd84(66)=acd84(3)*acd84(66)
      acd84(67)=-acd84(29)*acd84(80)
      acd84(61)=acd84(61)+acd84(64)+acd84(66)+acd84(67)+acd84(65)
      brack(ninjaidxt1mu0)=acd84(62)
      brack(ninjaidxt0mu0)=acd84(61)
      brack(ninjaidxt0mu2)=acd84(63)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d84h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd84h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d84h4l131
