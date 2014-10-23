module     p0_dbaru_epnebbbarg_d244h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d244h5l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd244h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(105) :: acd244
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd244(1)=dotproduct(k2,ninjaA)
      acd244(2)=dotproduct(ninjaE3,spvak1k2)
      acd244(3)=abb244(36)
      acd244(4)=dotproduct(ninjaE3,spvak1k3)
      acd244(5)=abb244(29)
      acd244(6)=dotproduct(ninjaE3,spvak4k2)
      acd244(7)=abb244(80)
      acd244(8)=dotproduct(k2,ninjaE3)
      acd244(9)=dotproduct(ninjaA,spvak1k2)
      acd244(10)=dotproduct(ninjaA,spvak1k3)
      acd244(11)=dotproduct(ninjaA,spvak4k2)
      acd244(12)=abb244(71)
      acd244(13)=dotproduct(l5,ninjaA)
      acd244(14)=abb244(31)
      acd244(15)=abb244(28)
      acd244(16)=abb244(74)
      acd244(17)=dotproduct(l5,ninjaE3)
      acd244(18)=abb244(141)
      acd244(19)=dotproduct(l6,ninjaA)
      acd244(20)=dotproduct(l6,ninjaE3)
      acd244(21)=dotproduct(k7,ninjaA)
      acd244(22)=dotproduct(k7,ninjaE3)
      acd244(23)=abb244(128)
      acd244(24)=dotproduct(ninjaA,ninjaE3)
      acd244(25)=abb244(81)
      acd244(26)=dotproduct(ninjaA,spval5k2)
      acd244(27)=abb244(46)
      acd244(28)=abb244(45)
      acd244(29)=abb244(90)
      acd244(30)=dotproduct(ninjaA,spval6l5)
      acd244(31)=abb244(24)
      acd244(32)=abb244(43)
      acd244(33)=abb244(75)
      acd244(34)=dotproduct(ninjaE3,spval5k2)
      acd244(35)=dotproduct(ninjaE3,spval6l5)
      acd244(36)=dotproduct(ninjaE3,spvak7k2)
      acd244(37)=abb244(27)
      acd244(38)=dotproduct(ninjaE3,spvak7l5)
      acd244(39)=abb244(47)
      acd244(40)=dotproduct(ninjaE3,spval6k2)
      acd244(41)=abb244(42)
      acd244(42)=dotproduct(ninjaA,spvak7k2)
      acd244(43)=abb244(39)
      acd244(44)=abb244(85)
      acd244(45)=abb244(34)
      acd244(46)=abb244(44)
      acd244(47)=abb244(83)
      acd244(48)=abb244(77)
      acd244(49)=dotproduct(ninjaA,spvak7l5)
      acd244(50)=dotproduct(ninjaA,spval6k2)
      acd244(51)=abb244(16)
      acd244(52)=dotproduct(ninjaE3,spvak4l6)
      acd244(53)=abb244(17)
      acd244(54)=dotproduct(ninjaE3,spvak2k3)
      acd244(55)=abb244(18)
      acd244(56)=dotproduct(ninjaE3,spvak1l6)
      acd244(57)=abb244(20)
      acd244(58)=dotproduct(ninjaE3,spval5k3)
      acd244(59)=abb244(21)
      acd244(60)=abb244(22)
      acd244(61)=dotproduct(ninjaE3,spvak1l5)
      acd244(62)=abb244(23)
      acd244(63)=abb244(25)
      acd244(64)=dotproduct(ninjaE3,spvak1k7)
      acd244(65)=abb244(26)
      acd244(66)=abb244(37)
      acd244(67)=dotproduct(ninjaE3,spvak4k7)
      acd244(68)=abb244(30)
      acd244(69)=dotproduct(ninjaE3,spvak4l5)
      acd244(70)=abb244(32)
      acd244(71)=abb244(33)
      acd244(72)=abb244(41)
      acd244(73)=dotproduct(ninjaE3,spval6k3)
      acd244(74)=abb244(35)
      acd244(75)=dotproduct(ninjaE3,spvak7k3)
      acd244(76)=abb244(38)
      acd244(77)=abb244(40)
      acd244(78)=acd244(40)*acd244(48)
      acd244(79)=acd244(38)*acd244(47)
      acd244(80)=acd244(17)+acd244(20)
      acd244(81)=acd244(80)-acd244(22)
      acd244(82)=acd244(81)*acd244(16)
      acd244(83)=acd244(36)*acd244(44)
      acd244(84)=acd244(35)*acd244(33)
      acd244(85)=acd244(34)*acd244(29)
      acd244(86)=acd244(8)*acd244(7)
      acd244(78)=acd244(82)+acd244(83)+acd244(84)+acd244(85)+acd244(86)+acd244(&
      &78)+acd244(79)
      acd244(79)=acd244(11)*acd244(78)
      acd244(82)=acd244(40)*acd244(46)
      acd244(83)=acd244(38)*acd244(45)
      acd244(84)=acd244(81)*acd244(15)
      acd244(85)=acd244(36)*acd244(43)
      acd244(86)=acd244(35)*acd244(32)
      acd244(87)=acd244(34)*acd244(28)
      acd244(88)=acd244(8)*acd244(5)
      acd244(82)=acd244(84)+acd244(85)+acd244(86)+acd244(87)+acd244(88)+acd244(&
      &82)+acd244(83)
      acd244(83)=acd244(10)*acd244(82)
      acd244(84)=acd244(40)*acd244(41)
      acd244(85)=acd244(38)*acd244(39)
      acd244(81)=acd244(81)*acd244(14)
      acd244(86)=acd244(36)*acd244(37)
      acd244(87)=acd244(35)*acd244(31)
      acd244(88)=acd244(34)*acd244(27)
      acd244(89)=acd244(8)*acd244(3)
      acd244(81)=acd244(81)+acd244(86)+acd244(87)+acd244(88)+acd244(89)+acd244(&
      &84)+acd244(85)
      acd244(84)=acd244(9)*acd244(81)
      acd244(85)=acd244(46)*acd244(50)
      acd244(86)=acd244(45)*acd244(49)
      acd244(87)=acd244(42)*acd244(43)
      acd244(88)=acd244(30)*acd244(32)
      acd244(89)=acd244(26)*acd244(28)
      acd244(90)=acd244(1)*acd244(5)
      acd244(91)=-acd244(21)+acd244(13)+acd244(19)
      acd244(92)=acd244(15)*acd244(91)
      acd244(85)=acd244(92)+acd244(90)+acd244(89)+acd244(88)+acd244(87)+acd244(&
      &85)+acd244(86)
      acd244(85)=acd244(4)*acd244(85)
      acd244(86)=acd244(48)*acd244(50)
      acd244(87)=acd244(47)*acd244(49)
      acd244(88)=acd244(42)*acd244(44)
      acd244(89)=acd244(30)*acd244(33)
      acd244(90)=acd244(26)*acd244(29)
      acd244(92)=acd244(1)*acd244(7)
      acd244(93)=acd244(16)*acd244(91)
      acd244(86)=acd244(93)+acd244(92)+acd244(90)+acd244(89)+acd244(88)+acd244(&
      &87)+acd244(71)+acd244(86)
      acd244(86)=acd244(6)*acd244(86)
      acd244(87)=acd244(41)*acd244(50)
      acd244(88)=acd244(39)*acd244(49)
      acd244(89)=acd244(37)*acd244(42)
      acd244(90)=acd244(30)*acd244(31)
      acd244(92)=acd244(26)*acd244(27)
      acd244(93)=acd244(1)*acd244(3)
      acd244(91)=acd244(14)*acd244(91)
      acd244(87)=acd244(91)+acd244(93)+acd244(92)+acd244(90)+acd244(89)+acd244(&
      &88)+acd244(63)+acd244(87)
      acd244(87)=acd244(2)*acd244(87)
      acd244(80)=-acd244(18)*acd244(80)
      acd244(88)=acd244(75)*acd244(76)
      acd244(89)=acd244(73)*acd244(74)
      acd244(90)=acd244(69)*acd244(70)
      acd244(91)=acd244(67)*acd244(68)
      acd244(92)=acd244(64)*acd244(65)
      acd244(93)=acd244(61)*acd244(62)
      acd244(94)=acd244(58)*acd244(59)
      acd244(95)=acd244(56)*acd244(57)
      acd244(96)=acd244(54)*acd244(55)
      acd244(97)=acd244(52)*acd244(53)
      acd244(98)=acd244(24)*acd244(25)
      acd244(99)=acd244(40)*acd244(77)
      acd244(100)=acd244(38)*acd244(72)
      acd244(101)=acd244(36)*acd244(66)
      acd244(102)=acd244(35)*acd244(60)
      acd244(103)=acd244(34)*acd244(51)
      acd244(104)=acd244(22)*acd244(23)
      acd244(105)=acd244(8)*acd244(12)
      acd244(79)=acd244(87)+acd244(86)+acd244(85)+acd244(84)+acd244(83)+acd244(&
      &79)+acd244(105)+acd244(104)+acd244(103)+acd244(102)+acd244(101)+acd244(1&
      &00)+acd244(99)+2.0_ki*acd244(98)+acd244(97)+acd244(96)+acd244(95)+acd244&
      &(94)+acd244(93)+acd244(92)+acd244(91)+acd244(90)+acd244(88)+acd244(89)+a&
      &cd244(80)
      acd244(80)=acd244(4)*acd244(82)
      acd244(78)=acd244(6)*acd244(78)
      acd244(81)=acd244(2)*acd244(81)
      acd244(78)=acd244(81)+acd244(80)+acd244(78)
      brack(ninjaidxt3mu0)=acd244(78)
      brack(ninjaidxt2mu0)=acd244(79)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d244h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd244h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7+k6
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d244h5l131
