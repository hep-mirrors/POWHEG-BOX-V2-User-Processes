module     p0_dbaru_epnebbbarg_d127h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d127h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd127h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd127
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd127(1)=dotproduct(ninjaE3,spvak1k2)
      acd127(2)=dotproduct(ninjaE3,spvak2k7)
      acd127(3)=dotproduct(ninjaE3,spvak4k3)
      acd127(4)=abb127(12)
      acd127(5)=dotproduct(ninjaE3,spvak2l6)
      acd127(6)=abb127(36)
      acd127(7)=dotproduct(ninjaE3,spvak2l5)
      acd127(8)=abb127(37)
      acd127(9)=acd127(4)*acd127(2)
      acd127(10)=acd127(6)*acd127(5)
      acd127(11)=acd127(8)*acd127(7)
      acd127(9)=acd127(11)+acd127(9)+acd127(10)
      acd127(9)=acd127(9)*acd127(3)*acd127(1)
      brack(ninjaidxt2mu0)=acd127(9)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd127h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(87) :: acd127
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd127(1)=dotproduct(k2,ninjaE3)
      acd127(2)=abb127(31)
      acd127(3)=dotproduct(ninjaE3,spvak1k2)
      acd127(4)=dotproduct(ninjaE3,spvak2k7)
      acd127(5)=dotproduct(ninjaE4,spvak4k3)
      acd127(6)=abb127(12)
      acd127(7)=dotproduct(ninjaE3,spvak4k3)
      acd127(8)=dotproduct(ninjaE4,spvak2k7)
      acd127(9)=dotproduct(ninjaE4,spvak2l5)
      acd127(10)=abb127(37)
      acd127(11)=dotproduct(ninjaE4,spvak2l6)
      acd127(12)=abb127(36)
      acd127(13)=dotproduct(ninjaE3,spvak2l5)
      acd127(14)=dotproduct(ninjaE3,spvak2l6)
      acd127(15)=dotproduct(ninjaE4,spvak1k2)
      acd127(16)=abb127(19)
      acd127(17)=dotproduct(ninjaE3,spvak1k3)
      acd127(18)=abb127(25)
      acd127(19)=dotproduct(ninjaE3,spvak4k2)
      acd127(20)=abb127(23)
      acd127(21)=dotproduct(k1,ninjaE3)
      acd127(22)=abb127(30)
      acd127(23)=abb127(42)
      acd127(24)=abb127(32)
      acd127(25)=abb127(47)
      acd127(26)=abb127(21)
      acd127(27)=abb127(46)
      acd127(28)=abb127(35)
      acd127(29)=dotproduct(k3,ninjaE3)
      acd127(30)=dotproduct(k4,ninjaE3)
      acd127(31)=dotproduct(ninjaA,ninjaE3)
      acd127(32)=abb127(29)
      acd127(33)=dotproduct(ninjaA,spvak1k2)
      acd127(34)=dotproduct(ninjaA,spvak2k7)
      acd127(35)=dotproduct(ninjaA,spvak4k3)
      acd127(36)=dotproduct(ninjaA,spvak2l5)
      acd127(37)=dotproduct(ninjaA,spvak2l6)
      acd127(38)=abb127(17)
      acd127(39)=abb127(14)
      acd127(40)=abb127(15)
      acd127(41)=abb127(22)
      acd127(42)=abb127(33)
      acd127(43)=abb127(26)
      acd127(44)=abb127(38)
      acd127(45)=dotproduct(ninjaE3,spvak3k2)
      acd127(46)=dotproduct(ninjaE3,spvak1k4)
      acd127(47)=abb127(24)
      acd127(48)=abb127(20)
      acd127(49)=dotproduct(k1,ninjaA)
      acd127(50)=dotproduct(k2,ninjaA)
      acd127(51)=dotproduct(ninjaA,spvak1k3)
      acd127(52)=dotproduct(ninjaA,spvak4k2)
      acd127(53)=abb127(27)
      acd127(54)=dotproduct(k3,ninjaA)
      acd127(55)=dotproduct(k4,ninjaA)
      acd127(56)=dotproduct(ninjaA,ninjaA)
      acd127(57)=abb127(16)
      acd127(58)=abb127(61)
      acd127(59)=abb127(28)
      acd127(60)=dotproduct(ninjaA,spvak3k2)
      acd127(61)=dotproduct(ninjaA,spvak1k4)
      acd127(62)=abb127(13)
      acd127(63)=abb127(40)
      acd127(64)=abb127(18)
      acd127(65)=abb127(39)
      acd127(66)=abb127(43)
      acd127(67)=abb127(34)
      acd127(68)=acd127(14)*acd127(12)
      acd127(69)=acd127(13)*acd127(10)
      acd127(70)=acd127(4)*acd127(6)
      acd127(68)=acd127(70)+acd127(68)+acd127(69)
      acd127(69)=acd127(68)*acd127(15)
      acd127(70)=acd127(12)*acd127(11)
      acd127(71)=acd127(10)*acd127(9)
      acd127(72)=acd127(6)*acd127(8)
      acd127(70)=acd127(70)+acd127(71)+acd127(72)
      acd127(70)=acd127(70)*acd127(3)
      acd127(70)=acd127(70)+acd127(16)
      acd127(69)=acd127(69)+acd127(70)
      acd127(69)=acd127(7)*acd127(69)
      acd127(71)=acd127(3)*acd127(68)*acd127(5)
      acd127(72)=-acd127(19)*acd127(20)
      acd127(73)=acd127(1)*acd127(2)
      acd127(74)=acd127(17)*acd127(18)
      acd127(69)=acd127(69)+acd127(71)+acd127(74)+acd127(72)+acd127(73)
      acd127(71)=acd127(68)*acd127(33)
      acd127(72)=acd127(20)*acd127(45)
      acd127(73)=acd127(18)*acd127(46)
      acd127(74)=acd127(19)*acd127(44)
      acd127(75)=acd127(1)*acd127(32)
      acd127(76)=acd127(21)*acd127(24)
      acd127(77)=2.0_ki*acd127(31)
      acd127(78)=acd127(77)*acd127(16)
      acd127(71)=acd127(72)+acd127(74)+acd127(75)-acd127(73)+acd127(71)+acd127(&
      &76)+acd127(78)
      acd127(72)=acd127(12)*acd127(37)
      acd127(73)=acd127(10)*acd127(36)
      acd127(74)=acd127(6)*acd127(34)
      acd127(72)=acd127(72)+acd127(73)+acd127(74)+acd127(39)
      acd127(73)=acd127(3)*acd127(72)
      acd127(74)=acd127(17)*acd127(43)
      acd127(73)=acd127(73)+acd127(74)+acd127(71)
      acd127(73)=acd127(7)*acd127(73)
      acd127(74)=acd127(29)+acd127(30)
      acd127(75)=acd127(74)*acd127(26)
      acd127(76)=acd127(18)*acd127(77)
      acd127(78)=acd127(14)*acd127(48)
      acd127(79)=acd127(13)*acd127(47)
      acd127(80)=acd127(4)*acd127(42)
      acd127(81)=-acd127(21)*acd127(26)
      acd127(76)=acd127(81)+acd127(80)+acd127(79)+acd127(78)+acd127(76)+acd127(&
      &75)
      acd127(76)=acd127(17)*acd127(76)
      acd127(78)=acd127(19)*acd127(28)
      acd127(79)=acd127(1)*acd127(22)
      acd127(80)=acd127(14)*acd127(27)
      acd127(81)=acd127(13)*acd127(25)
      acd127(82)=acd127(4)*acd127(23)
      acd127(78)=acd127(82)+acd127(81)+acd127(80)+acd127(78)+acd127(79)
      acd127(78)=acd127(21)*acd127(78)
      acd127(79)=acd127(35)*acd127(68)
      acd127(80)=acd127(14)*acd127(41)
      acd127(81)=acd127(13)*acd127(40)
      acd127(82)=acd127(4)*acd127(38)
      acd127(79)=acd127(79)+acd127(82)+acd127(80)+acd127(81)
      acd127(79)=acd127(3)*acd127(79)
      acd127(80)=acd127(74)*acd127(28)
      acd127(81)=-acd127(20)*acd127(77)
      acd127(81)=acd127(81)-acd127(80)
      acd127(81)=acd127(19)*acd127(81)
      acd127(82)=acd127(74)*acd127(22)
      acd127(83)=acd127(2)*acd127(77)
      acd127(83)=acd127(83)-acd127(82)
      acd127(83)=acd127(1)*acd127(83)
      acd127(73)=acd127(73)+acd127(79)+acd127(76)+acd127(78)+acd127(81)+acd127(&
      &83)
      acd127(70)=ninjaP*acd127(70)
      acd127(68)=acd127(68)*ninjaP
      acd127(76)=acd127(15)*acd127(68)
      acd127(78)=acd127(33)*acd127(72)
      acd127(79)=acd127(52)*acd127(44)
      acd127(81)=acd127(50)*acd127(32)
      acd127(83)=acd127(16)*acd127(56)
      acd127(84)=acd127(49)*acd127(24)
      acd127(85)=acd127(51)*acd127(43)
      acd127(86)=acd127(20)*acd127(60)
      acd127(87)=-acd127(18)*acd127(61)
      acd127(70)=acd127(78)+acd127(87)+acd127(86)+acd127(85)+acd127(84)+acd127(&
      &83)+acd127(81)+acd127(64)+acd127(79)+acd127(76)+acd127(70)
      acd127(70)=acd127(7)*acd127(70)
      acd127(71)=acd127(35)*acd127(71)
      acd127(76)=acd127(28)*acd127(52)
      acd127(78)=acd127(22)*acd127(50)
      acd127(79)=acd127(37)*acd127(27)
      acd127(81)=acd127(36)*acd127(25)
      acd127(83)=acd127(34)*acd127(23)
      acd127(84)=-acd127(26)*acd127(51)
      acd127(76)=acd127(78)+acd127(84)+acd127(76)+acd127(83)+acd127(81)+acd127(&
      &53)+acd127(79)
      acd127(76)=acd127(21)*acd127(76)
      acd127(78)=ninjaP+acd127(56)
      acd127(79)=acd127(18)*acd127(78)
      acd127(81)=acd127(37)*acd127(48)
      acd127(83)=acd127(36)*acd127(47)
      acd127(84)=acd127(34)*acd127(42)
      acd127(85)=-acd127(55)+acd127(49)-acd127(54)
      acd127(86)=-acd127(26)*acd127(85)
      acd127(87)=acd127(35)*acd127(43)
      acd127(79)=acd127(87)+acd127(86)+acd127(84)+acd127(81)+acd127(83)+acd127(&
      &79)
      acd127(79)=acd127(17)*acd127(79)
      acd127(68)=acd127(5)*acd127(68)
      acd127(72)=acd127(35)*acd127(72)
      acd127(81)=acd127(37)*acd127(41)
      acd127(83)=acd127(36)*acd127(40)
      acd127(84)=acd127(34)*acd127(38)
      acd127(68)=acd127(72)+acd127(84)+acd127(83)+acd127(62)+acd127(81)+acd127(&
      &68)
      acd127(68)=acd127(3)*acd127(68)
      acd127(72)=acd127(2)*acd127(50)
      acd127(81)=-acd127(20)*acd127(52)
      acd127(83)=acd127(18)*acd127(51)
      acd127(72)=acd127(83)+acd127(81)+acd127(59)+acd127(72)
      acd127(72)=acd127(72)*acd127(77)
      acd127(77)=acd127(49)*acd127(27)
      acd127(81)=acd127(51)*acd127(48)
      acd127(83)=acd127(33)*acd127(41)
      acd127(77)=acd127(83)+acd127(81)+acd127(66)+acd127(77)
      acd127(77)=acd127(14)*acd127(77)
      acd127(81)=acd127(49)*acd127(25)
      acd127(83)=acd127(51)*acd127(47)
      acd127(84)=acd127(33)*acd127(40)
      acd127(81)=acd127(84)+acd127(83)+acd127(65)+acd127(81)
      acd127(81)=acd127(13)*acd127(81)
      acd127(83)=acd127(49)*acd127(23)
      acd127(84)=acd127(51)*acd127(42)
      acd127(86)=acd127(33)*acd127(38)
      acd127(83)=acd127(86)+acd127(84)+acd127(63)+acd127(83)
      acd127(83)=acd127(4)*acd127(83)
      acd127(84)=-acd127(20)*acd127(78)
      acd127(86)=acd127(28)*acd127(85)
      acd127(84)=acd127(86)+acd127(67)+acd127(84)
      acd127(84)=acd127(19)*acd127(84)
      acd127(78)=acd127(2)*acd127(78)
      acd127(85)=acd127(22)*acd127(85)
      acd127(78)=acd127(85)+acd127(57)+acd127(78)
      acd127(78)=acd127(1)*acd127(78)
      acd127(74)=-acd127(58)*acd127(74)
      acd127(80)=-acd127(52)*acd127(80)
      acd127(75)=acd127(51)*acd127(75)
      acd127(82)=-acd127(50)*acd127(82)
      acd127(68)=acd127(70)+acd127(68)+acd127(79)+acd127(71)+acd127(76)+acd127(&
      &83)+acd127(81)+acd127(77)+acd127(78)+acd127(84)+acd127(82)+acd127(75)+ac&
      &d127(80)+acd127(72)+acd127(74)
      brack(ninjaidxt1mu0)=acd127(73)
      brack(ninjaidxt0mu0)=acd127(68)
      brack(ninjaidxt0mu2)=acd127(69)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d127h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd127h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
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
end module     p0_dbaru_epnebbbarg_d127h3l131
