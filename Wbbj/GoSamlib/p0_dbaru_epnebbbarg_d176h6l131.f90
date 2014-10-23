module     p0_dbaru_epnebbbarg_d176h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d176h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd176h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(20) :: acd176
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd176(1)=dotproduct(k2,ninjaE3)
      acd176(2)=dotproduct(ninjaE3,spvak1k2)
      acd176(3)=abb176(27)
      acd176(4)=dotproduct(ninjaE3,spvak4k2)
      acd176(5)=abb176(24)
      acd176(6)=dotproduct(ninjaE3,spvak1k3)
      acd176(7)=abb176(37)
      acd176(8)=dotproduct(ninjaE3,spvak7l6)
      acd176(9)=abb176(21)
      acd176(10)=dotproduct(ninjaE3,spval5l6)
      acd176(11)=abb176(26)
      acd176(12)=abb176(34)
      acd176(13)=abb176(42)
      acd176(14)=abb176(50)
      acd176(15)=abb176(28)
      acd176(16)=acd176(3)*acd176(2)
      acd176(17)=acd176(5)*acd176(4)
      acd176(18)=acd176(7)*acd176(6)
      acd176(16)=acd176(18)+acd176(16)+acd176(17)
      acd176(16)=acd176(1)*acd176(16)
      acd176(17)=acd176(9)*acd176(2)
      acd176(18)=acd176(12)*acd176(4)
      acd176(19)=acd176(13)*acd176(6)
      acd176(17)=acd176(19)+acd176(18)+acd176(17)
      acd176(17)=acd176(8)*acd176(17)
      acd176(18)=acd176(11)*acd176(2)
      acd176(19)=acd176(14)*acd176(4)
      acd176(20)=acd176(15)*acd176(6)
      acd176(18)=acd176(20)+acd176(19)+acd176(18)
      acd176(18)=acd176(10)*acd176(18)
      acd176(16)=acd176(18)+acd176(17)+acd176(16)
      brack(ninjaidxt2mu0)=acd176(16)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd176h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(112) :: acd176
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd176(1)=dotproduct(k2,ninjaE3)
      acd176(2)=dotproduct(ninjaE4,spvak1k2)
      acd176(3)=abb176(27)
      acd176(4)=dotproduct(ninjaE4,spvak4k2)
      acd176(5)=abb176(24)
      acd176(6)=dotproduct(ninjaE4,spvak1k3)
      acd176(7)=abb176(37)
      acd176(8)=dotproduct(k2,ninjaE4)
      acd176(9)=dotproduct(ninjaE3,spvak1k2)
      acd176(10)=dotproduct(ninjaE3,spvak4k2)
      acd176(11)=dotproduct(ninjaE3,spvak1k3)
      acd176(12)=dotproduct(ninjaE4,spvak7l6)
      acd176(13)=abb176(21)
      acd176(14)=dotproduct(ninjaE4,spval5l6)
      acd176(15)=abb176(26)
      acd176(16)=dotproduct(ninjaE3,spvak7l6)
      acd176(17)=abb176(34)
      acd176(18)=abb176(42)
      acd176(19)=abb176(50)
      acd176(20)=abb176(28)
      acd176(21)=dotproduct(ninjaE3,spval5l6)
      acd176(22)=abb176(31)
      acd176(23)=dotproduct(k2,ninjaA)
      acd176(24)=dotproduct(ninjaA,spvak1k2)
      acd176(25)=dotproduct(ninjaA,spvak4k2)
      acd176(26)=dotproduct(ninjaA,spvak1k3)
      acd176(27)=abb176(39)
      acd176(28)=dotproduct(l5,ninjaE3)
      acd176(29)=abb176(29)
      acd176(30)=dotproduct(l6,ninjaE3)
      acd176(31)=abb176(23)
      acd176(32)=dotproduct(k7,ninjaE3)
      acd176(33)=abb176(17)
      acd176(34)=dotproduct(ninjaA,ninjaE3)
      acd176(35)=dotproduct(ninjaA,spvak7l6)
      acd176(36)=dotproduct(ninjaA,spval5l6)
      acd176(37)=abb176(14)
      acd176(38)=dotproduct(ninjaE3,spvak7k2)
      acd176(39)=abb176(15)
      acd176(40)=dotproduct(ninjaE3,spvak1l6)
      acd176(41)=abb176(18)
      acd176(42)=dotproduct(ninjaE3,spvak2l6)
      acd176(43)=abb176(19)
      acd176(44)=dotproduct(ninjaE3,spvak7k3)
      acd176(45)=abb176(20)
      acd176(46)=abb176(53)
      acd176(47)=dotproduct(ninjaE3,spvak2l5)
      acd176(48)=abb176(22)
      acd176(49)=abb176(40)
      acd176(50)=abb176(25)
      acd176(51)=abb176(30)
      acd176(52)=dotproduct(ninjaE3,spval5k7)
      acd176(53)=abb176(32)
      acd176(54)=dotproduct(ninjaE3,spval5k3)
      acd176(55)=abb176(33)
      acd176(56)=dotproduct(ninjaE3,spvak7l5)
      acd176(57)=abb176(41)
      acd176(58)=dotproduct(ninjaE3,spval5k2)
      acd176(59)=abb176(44)
      acd176(60)=dotproduct(ninjaE3,spvak4l6)
      acd176(61)=abb176(49)
      acd176(62)=dotproduct(ninjaE3,spvak2k7)
      acd176(63)=abb176(51)
      acd176(64)=dotproduct(ninjaE3,spvak2k3)
      acd176(65)=abb176(54)
      acd176(66)=dotproduct(l5,ninjaA)
      acd176(67)=dotproduct(l6,ninjaA)
      acd176(68)=dotproduct(k7,ninjaA)
      acd176(69)=dotproduct(ninjaA,ninjaA)
      acd176(70)=dotproduct(ninjaA,spvak7k2)
      acd176(71)=dotproduct(ninjaA,spvak1l6)
      acd176(72)=dotproduct(ninjaA,spvak2l6)
      acd176(73)=dotproduct(ninjaA,spvak7k3)
      acd176(74)=dotproduct(ninjaA,spvak2l5)
      acd176(75)=dotproduct(ninjaA,spval5k7)
      acd176(76)=dotproduct(ninjaA,spval5k3)
      acd176(77)=dotproduct(ninjaA,spvak7l5)
      acd176(78)=dotproduct(ninjaA,spval5k2)
      acd176(79)=dotproduct(ninjaA,spvak4l6)
      acd176(80)=dotproduct(ninjaA,spvak2k7)
      acd176(81)=dotproduct(ninjaA,spvak2k3)
      acd176(82)=abb176(16)
      acd176(83)=acd176(15)*acd176(9)
      acd176(84)=acd176(19)*acd176(10)
      acd176(85)=acd176(20)*acd176(11)
      acd176(83)=acd176(85)+acd176(83)+acd176(84)
      acd176(84)=acd176(83)*acd176(14)
      acd176(85)=acd176(7)*acd176(1)
      acd176(86)=acd176(18)*acd176(16)
      acd176(87)=acd176(20)*acd176(21)
      acd176(85)=acd176(87)+acd176(85)+acd176(86)
      acd176(86)=acd176(85)*acd176(6)
      acd176(87)=acd176(5)*acd176(1)
      acd176(88)=acd176(17)*acd176(16)
      acd176(89)=acd176(19)*acd176(21)
      acd176(87)=acd176(89)+acd176(87)+acd176(88)
      acd176(88)=acd176(87)*acd176(4)
      acd176(89)=acd176(3)*acd176(9)
      acd176(90)=acd176(5)*acd176(10)
      acd176(91)=acd176(7)*acd176(11)
      acd176(89)=acd176(91)+acd176(89)+acd176(90)
      acd176(90)=acd176(89)*acd176(8)
      acd176(91)=acd176(3)*acd176(1)
      acd176(92)=acd176(13)*acd176(16)
      acd176(93)=acd176(15)*acd176(21)
      acd176(91)=acd176(93)+acd176(91)+acd176(92)
      acd176(92)=acd176(91)*acd176(2)
      acd176(93)=acd176(13)*acd176(9)
      acd176(94)=acd176(17)*acd176(10)
      acd176(95)=acd176(18)*acd176(11)
      acd176(93)=acd176(95)+acd176(93)+acd176(94)
      acd176(94)=acd176(93)*acd176(12)
      acd176(84)=acd176(84)+acd176(86)+acd176(88)+acd176(90)+acd176(92)+acd176(&
      &94)
      acd176(86)=acd176(22)+acd176(84)
      acd176(88)=acd176(23)*acd176(89)
      acd176(89)=acd176(24)*acd176(91)
      acd176(87)=acd176(25)*acd176(87)
      acd176(85)=acd176(26)*acd176(85)
      acd176(90)=acd176(35)*acd176(93)
      acd176(83)=acd176(36)*acd176(83)
      acd176(91)=acd176(27)*acd176(1)
      acd176(92)=acd176(37)*acd176(9)
      acd176(93)=acd176(46)*acd176(16)
      acd176(94)=acd176(49)*acd176(10)
      acd176(95)=acd176(50)*acd176(11)
      acd176(96)=acd176(51)*acd176(21)
      acd176(97)=acd176(28)*acd176(29)
      acd176(98)=acd176(30)*acd176(31)
      acd176(99)=acd176(32)*acd176(33)
      acd176(100)=acd176(34)*acd176(22)
      acd176(101)=acd176(38)*acd176(39)
      acd176(102)=acd176(40)*acd176(41)
      acd176(103)=acd176(42)*acd176(43)
      acd176(104)=acd176(44)*acd176(45)
      acd176(105)=acd176(47)*acd176(48)
      acd176(106)=acd176(52)*acd176(53)
      acd176(107)=acd176(54)*acd176(55)
      acd176(108)=acd176(56)*acd176(57)
      acd176(109)=acd176(58)*acd176(59)
      acd176(110)=acd176(60)*acd176(61)
      acd176(111)=acd176(62)*acd176(63)
      acd176(112)=acd176(64)*acd176(65)
      acd176(83)=acd176(112)+acd176(111)+acd176(110)+acd176(109)+acd176(108)+ac&
      &d176(107)+acd176(106)+acd176(105)+acd176(104)+acd176(103)+acd176(102)+ac&
      &d176(101)+2.0_ki*acd176(100)+acd176(99)+acd176(98)+acd176(97)+acd176(96)&
      &+acd176(95)+acd176(94)+acd176(93)+acd176(92)+acd176(91)+acd176(83)+acd17&
      &6(90)+acd176(85)+acd176(87)+acd176(88)+acd176(89)
      acd176(84)=ninjaP*acd176(84)
      acd176(85)=acd176(24)*acd176(13)
      acd176(87)=acd176(25)*acd176(17)
      acd176(88)=acd176(26)*acd176(18)
      acd176(85)=acd176(46)+acd176(88)+acd176(85)+acd176(87)
      acd176(85)=acd176(35)*acd176(85)
      acd176(87)=acd176(24)*acd176(15)
      acd176(88)=acd176(25)*acd176(19)
      acd176(89)=acd176(26)*acd176(20)
      acd176(87)=acd176(51)+acd176(89)+acd176(87)+acd176(88)
      acd176(87)=acd176(36)*acd176(87)
      acd176(88)=acd176(24)*acd176(3)
      acd176(89)=acd176(25)*acd176(5)
      acd176(90)=acd176(26)*acd176(7)
      acd176(88)=acd176(27)+acd176(90)+acd176(88)+acd176(89)
      acd176(88)=acd176(23)*acd176(88)
      acd176(89)=acd176(69)+ninjaP
      acd176(89)=acd176(22)*acd176(89)
      acd176(90)=acd176(37)*acd176(24)
      acd176(91)=acd176(49)*acd176(25)
      acd176(92)=acd176(50)*acd176(26)
      acd176(93)=acd176(66)*acd176(29)
      acd176(94)=acd176(67)*acd176(31)
      acd176(95)=acd176(68)*acd176(33)
      acd176(96)=acd176(70)*acd176(39)
      acd176(97)=acd176(71)*acd176(41)
      acd176(98)=acd176(72)*acd176(43)
      acd176(99)=acd176(73)*acd176(45)
      acd176(100)=acd176(74)*acd176(48)
      acd176(101)=acd176(75)*acd176(53)
      acd176(102)=acd176(76)*acd176(55)
      acd176(103)=acd176(77)*acd176(57)
      acd176(104)=acd176(78)*acd176(59)
      acd176(105)=acd176(79)*acd176(61)
      acd176(106)=acd176(80)*acd176(63)
      acd176(107)=acd176(81)*acd176(65)
      acd176(84)=acd176(82)+acd176(107)+acd176(106)+acd176(105)+acd176(104)+acd&
      &176(103)+acd176(102)+acd176(101)+acd176(100)+acd176(99)+acd176(98)+acd17&
      &6(97)+acd176(96)+acd176(95)+acd176(94)+acd176(93)+acd176(92)+acd176(91)+&
      &acd176(90)+acd176(88)+acd176(89)+acd176(87)+acd176(85)+acd176(84)
      brack(ninjaidxt1mu0)=acd176(83)
      brack(ninjaidxt0mu0)=acd176(84)
      brack(ninjaidxt0mu2)=acd176(86)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d176h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd176h6
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = + a(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d176h6l131
