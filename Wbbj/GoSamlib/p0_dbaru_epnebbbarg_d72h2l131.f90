module     p0_dbaru_epnebbbarg_d72h2l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d72h2l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd72h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd72
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd72h2
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(101) :: acd72
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd72(1)=dotproduct(k2,ninjaE3)
      acd72(2)=dotproduct(ninjaE3,spvak4k3)
      acd72(3)=dotproduct(ninjaE3,spvak1l5)
      acd72(4)=abb72(38)
      acd72(5)=dotproduct(ninjaE3,spvak1k7)
      acd72(6)=abb72(58)
      acd72(7)=dotproduct(ninjaE3,spvak1k2)
      acd72(8)=dotproduct(ninjaE3,spvak2k7)
      acd72(9)=abb72(16)
      acd72(10)=dotproduct(ninjaE3,spvak2l5)
      acd72(11)=abb72(18)
      acd72(12)=dotproduct(ninjaE3,spvak2l6)
      acd72(13)=abb72(78)
      acd72(14)=dotproduct(ninjaE3,spval5l6)
      acd72(15)=abb72(144)
      acd72(16)=dotproduct(k1,ninjaE3)
      acd72(17)=abb72(29)
      acd72(18)=abb72(20)
      acd72(19)=abb72(59)
      acd72(20)=abb72(61)
      acd72(21)=dotproduct(ninjaE3,spvak1k3)
      acd72(22)=abb72(42)
      acd72(23)=dotproduct(ninjaE3,spvak2k3)
      acd72(24)=abb72(26)
      acd72(25)=abb72(76)
      acd72(26)=dotproduct(ninjaE3,spvak1l6)
      acd72(27)=abb72(72)
      acd72(28)=abb72(143)
      acd72(29)=dotproduct(ninjaE3,spval5k2)
      acd72(30)=abb72(145)
      acd72(31)=dotproduct(k2,ninjaA)
      acd72(32)=dotproduct(ninjaA,spvak4k3)
      acd72(33)=dotproduct(ninjaA,spvak1l5)
      acd72(34)=dotproduct(ninjaA,spvak1k7)
      acd72(35)=abb72(23)
      acd72(36)=abb72(22)
      acd72(37)=abb72(49)
      acd72(38)=dotproduct(k3,ninjaE3)
      acd72(39)=dotproduct(k4,ninjaE3)
      acd72(40)=dotproduct(ninjaA,ninjaE3)
      acd72(41)=abb72(46)
      acd72(42)=abb72(75)
      acd72(43)=abb72(60)
      acd72(44)=dotproduct(ninjaA,spvak1k2)
      acd72(45)=dotproduct(ninjaA,spvak2k7)
      acd72(46)=dotproduct(ninjaA,spvak2l5)
      acd72(47)=dotproduct(ninjaA,spvak2l6)
      acd72(48)=dotproduct(ninjaA,spval5l6)
      acd72(49)=abb72(13)
      acd72(50)=abb72(33)
      acd72(51)=dotproduct(ninjaE3,spvak2k1)
      acd72(52)=abb72(35)
      acd72(53)=abb72(15)
      acd72(54)=abb72(28)
      acd72(55)=abb72(71)
      acd72(56)=abb72(30)
      acd72(57)=dotproduct(ninjaE3,spval6k2)
      acd72(58)=abb72(31)
      acd72(59)=abb72(69)
      acd72(60)=dotproduct(ninjaE3,spvak1k4)
      acd72(61)=abb72(83)
      acd72(62)=dotproduct(ninjaE3,spval6k7)
      acd72(63)=abb72(51)
      acd72(64)=abb72(52)
      acd72(65)=dotproduct(ninjaE3,spval6l5)
      acd72(66)=abb72(53)
      acd72(67)=abb72(68)
      acd72(68)=dotproduct(ninjaE3,spvak2k4)
      acd72(69)=abb72(39)
      acd72(70)=abb72(43)
      acd72(71)=abb72(34)
      acd72(72)=abb72(74)
      acd72(73)=abb72(79)
      acd72(74)=abb72(64)
      acd72(75)=abb72(37)
      acd72(76)=abb72(84)
      acd72(77)=abb72(80)
      acd72(78)=dotproduct(ninjaE3,spval5k3)
      acd72(79)=dotproduct(ninjaE3,spval5k1)
      acd72(80)=abb72(82)
      acd72(81)=acd72(9)*acd72(8)
      acd72(82)=acd72(11)*acd72(10)
      acd72(83)=acd72(13)*acd72(12)
      acd72(84)=acd72(15)*acd72(14)
      acd72(81)=-acd72(82)-acd72(81)+acd72(83)-acd72(84)
      acd72(82)=acd72(7)*acd72(2)
      acd72(83)=-acd72(82)*acd72(81)
      acd72(84)=acd72(4)*acd72(3)
      acd72(85)=acd72(6)*acd72(5)
      acd72(84)=acd72(84)+acd72(85)
      acd72(85)=acd72(1)*acd72(2)
      acd72(86)=acd72(85)*acd72(84)
      acd72(83)=acd72(83)+acd72(86)
      acd72(86)=-acd72(44)*acd72(81)
      acd72(87)=acd72(31)*acd72(84)
      acd72(88)=acd72(18)*acd72(16)
      acd72(89)=acd72(53)*acd72(3)
      acd72(90)=acd72(54)*acd72(21)
      acd72(91)=acd72(55)*acd72(23)
      acd72(92)=acd72(56)*acd72(12)
      acd72(93)=acd72(58)*acd72(57)
      acd72(94)=acd72(59)*acd72(5)
      acd72(95)=acd72(60)*acd72(41)
      acd72(96)=acd72(61)*acd72(26)
      acd72(97)=acd72(63)*acd72(62)
      acd72(98)=acd72(64)*acd72(14)
      acd72(99)=acd72(66)*acd72(65)
      acd72(100)=acd72(67)*acd72(29)
      acd72(101)=-acd72(68)*acd72(42)
      acd72(86)=acd72(87)+acd72(86)+acd72(101)+acd72(100)+acd72(99)+acd72(98)+a&
      &cd72(97)+acd72(96)+acd72(95)+acd72(94)+acd72(93)+acd72(92)+acd72(91)+acd&
      &72(90)+acd72(89)+acd72(88)
      acd72(86)=acd72(2)*acd72(86)
      acd72(87)=acd72(22)*acd72(21)
      acd72(88)=acd72(24)*acd72(23)
      acd72(89)=acd72(27)*acd72(26)
      acd72(87)=-acd72(89)+acd72(87)-acd72(88)
      acd72(88)=acd72(17)*acd72(1)
      acd72(89)=acd72(19)*acd72(8)
      acd72(90)=acd72(20)*acd72(10)
      acd72(91)=acd72(25)*acd72(12)
      acd72(92)=acd72(28)*acd72(14)
      acd72(93)=acd72(30)*acd72(29)
      acd72(88)=acd72(93)+acd72(92)+acd72(91)+acd72(90)+acd72(89)+acd72(88)+acd&
      &72(87)
      acd72(88)=acd72(16)*acd72(88)
      acd72(89)=acd72(37)*acd72(1)
      acd72(90)=2.0_ki*acd72(40)
      acd72(91)=acd72(43)*acd72(90)
      acd72(92)=acd72(76)*acd72(51)
      acd72(93)=acd72(77)*acd72(29)
      acd72(94)=acd72(78)*acd72(73)
      acd72(95)=acd72(80)*acd72(79)
      acd72(89)=acd72(95)+acd72(94)+acd72(93)+acd72(92)+acd72(91)+acd72(89)
      acd72(89)=acd72(26)*acd72(89)
      acd72(81)=-acd72(81)*acd72(7)
      acd72(84)=acd72(84)*acd72(1)
      acd72(81)=acd72(81)+acd72(84)
      acd72(81)=acd72(32)*acd72(81)
      acd72(84)=-acd72(41)*acd72(90)
      acd72(91)=-acd72(73)*acd72(14)
      acd72(92)=acd72(36)*acd72(1)
      acd72(93)=acd72(74)*acd72(29)
      acd72(84)=acd72(93)+acd72(92)+acd72(91)+acd72(84)
      acd72(84)=acd72(21)*acd72(84)
      acd72(91)=acd72(45)*acd72(9)
      acd72(92)=acd72(46)*acd72(11)
      acd72(93)=-acd72(47)*acd72(13)
      acd72(94)=acd72(48)*acd72(15)
      acd72(91)=acd72(49)+acd72(94)+acd72(93)+acd72(92)+acd72(91)
      acd72(82)=acd72(82)*acd72(91)
      acd72(91)=-acd72(39)-acd72(38)
      acd72(87)=acd72(87)*acd72(91)
      acd72(91)=acd72(52)*acd72(7)
      acd72(92)=acd72(70)*acd72(3)
      acd72(93)=acd72(75)*acd72(5)
      acd72(91)=acd72(93)+acd72(92)+acd72(91)
      acd72(91)=acd72(51)*acd72(91)
      acd72(90)=acd72(42)*acd72(90)
      acd72(92)=acd72(50)*acd72(7)
      acd72(90)=acd72(92)+acd72(90)
      acd72(90)=acd72(23)*acd72(90)
      acd72(92)=acd72(33)*acd72(4)
      acd72(93)=acd72(34)*acd72(6)
      acd72(92)=acd72(35)+acd72(93)+acd72(92)
      acd72(85)=acd72(85)*acd72(92)
      acd72(92)=acd72(3)*acd72(23)
      acd72(93)=-acd72(10)*acd72(21)
      acd72(92)=acd72(92)+acd72(93)
      acd72(92)=acd72(69)*acd72(92)
      acd72(93)=-acd72(5)*acd72(23)
      acd72(94)=acd72(8)*acd72(21)
      acd72(93)=acd72(93)+acd72(94)
      acd72(93)=acd72(71)*acd72(93)
      acd72(94)=-acd72(23)*acd72(26)
      acd72(95)=acd72(12)*acd72(21)
      acd72(94)=acd72(94)+acd72(95)
      acd72(94)=acd72(72)*acd72(94)
      acd72(81)=acd72(94)+acd72(93)+acd72(92)+acd72(88)+acd72(89)+acd72(82)+acd&
      &72(84)+acd72(85)+acd72(91)+acd72(90)+acd72(87)+acd72(86)+acd72(81)
      brack(ninjaidxt1mu0)=acd72(83)
      brack(ninjaidxt0mu0)=acd72(81)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d72h2_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd72h2
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d72h2l131
