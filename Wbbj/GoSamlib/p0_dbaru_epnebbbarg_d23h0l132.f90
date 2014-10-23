module     p0_dbaru_epnebbbarg_d23h0l132
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d23h0l132.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1x0mu0 = 0
   integer, parameter :: ninjaidxt0x0mu0 = 1
   integer, parameter :: ninjaidxt0x1mu0 = 2
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(48) :: acd23
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd23(1)=dotproduct(k1,ninjaE3)
      acd23(2)=dotproduct(ninjaE3,spvak4k3)
      acd23(3)=abb23(48)
      acd23(4)=dotproduct(k2,ninjaE3)
      acd23(5)=abb23(54)
      acd23(6)=dotproduct(k3,ninjaE3)
      acd23(7)=abb23(49)
      acd23(8)=dotproduct(k4,ninjaE3)
      acd23(9)=dotproduct(l5,ninjaE3)
      acd23(10)=abb23(38)
      acd23(11)=dotproduct(l6,ninjaE3)
      acd23(12)=dotproduct(k7,ninjaE3)
      acd23(13)=abb23(22)
      acd23(14)=dotproduct(ninjaE3,spval6k2)
      acd23(15)=abb23(14)
      acd23(16)=dotproduct(ninjaE3,spval5k2)
      acd23(17)=abb23(16)
      acd23(18)=dotproduct(ninjaE3,spvak2k7)
      acd23(19)=abb23(17)
      acd23(20)=dotproduct(ninjaE3,spvak1k3)
      acd23(21)=abb23(19)
      acd23(22)=dotproduct(ninjaE3,spval5l6)
      acd23(23)=abb23(24)
      acd23(24)=dotproduct(ninjaE3,spvak1k4)
      acd23(25)=abb23(30)
      acd23(26)=dotproduct(ninjaE3,spval5k7)
      acd23(27)=abb23(34)
      acd23(28)=dotproduct(ninjaE3,spvak7k2)
      acd23(29)=abb23(59)
      acd23(30)=dotproduct(ninjaE3,spval6k7)
      acd23(31)=abb23(63)
      acd23(32)=dotproduct(ninjaE3,spval6l5)
      acd23(33)=abb23(72)
      acd23(34)=-acd23(11)-acd23(9)
      acd23(34)=acd23(34)*acd23(10)
      acd23(35)=-acd23(8)-acd23(6)
      acd23(35)=acd23(35)*acd23(7)
      acd23(36)=acd23(3)*acd23(1)
      acd23(37)=acd23(5)*acd23(4)
      acd23(38)=acd23(13)*acd23(12)
      acd23(39)=acd23(15)*acd23(14)
      acd23(40)=acd23(17)*acd23(16)
      acd23(41)=acd23(19)*acd23(18)
      acd23(42)=acd23(21)*acd23(20)
      acd23(43)=acd23(23)*acd23(22)
      acd23(44)=acd23(25)*acd23(24)
      acd23(45)=acd23(27)*acd23(26)
      acd23(46)=acd23(29)*acd23(28)
      acd23(47)=acd23(31)*acd23(30)
      acd23(48)=acd23(33)*acd23(32)
      acd23(34)=acd23(35)+acd23(34)+acd23(48)+acd23(47)+acd23(46)+acd23(45)+acd&
      &23(44)+acd23(43)+acd23(42)+acd23(41)+acd23(40)+acd23(39)+acd23(38)+acd23&
      &(36)+acd23(37)
      acd23(34)=acd23(2)*acd23(34)
      brack(ninjaidxt1x0mu0)=acd23(34)
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd23h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(92) :: acd23
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd23(1)=dotproduct(k1,ninjaA1)
      acd23(2)=dotproduct(ninjaE3,spvak4k3)
      acd23(3)=abb23(48)
      acd23(4)=dotproduct(k1,ninjaE3)
      acd23(5)=dotproduct(ninjaA1,spvak4k3)
      acd23(6)=dotproduct(k2,ninjaA1)
      acd23(7)=abb23(54)
      acd23(8)=dotproduct(k2,ninjaE3)
      acd23(9)=dotproduct(k3,ninjaA1)
      acd23(10)=abb23(49)
      acd23(11)=dotproduct(k3,ninjaE3)
      acd23(12)=dotproduct(k4,ninjaA1)
      acd23(13)=dotproduct(k4,ninjaE3)
      acd23(14)=dotproduct(l5,ninjaA1)
      acd23(15)=abb23(38)
      acd23(16)=dotproduct(l5,ninjaE3)
      acd23(17)=dotproduct(l6,ninjaA1)
      acd23(18)=dotproduct(l6,ninjaE3)
      acd23(19)=dotproduct(k7,ninjaA1)
      acd23(20)=abb23(22)
      acd23(21)=dotproduct(k7,ninjaE3)
      acd23(22)=dotproduct(ninjaE3,spval6k2)
      acd23(23)=abb23(14)
      acd23(24)=dotproduct(ninjaE3,spval5k2)
      acd23(25)=abb23(16)
      acd23(26)=dotproduct(ninjaE3,spvak2k7)
      acd23(27)=abb23(17)
      acd23(28)=dotproduct(ninjaE3,spvak1k3)
      acd23(29)=abb23(19)
      acd23(30)=dotproduct(ninjaE3,spval5l6)
      acd23(31)=abb23(24)
      acd23(32)=dotproduct(ninjaE3,spvak1k4)
      acd23(33)=abb23(30)
      acd23(34)=dotproduct(ninjaE3,spval5k7)
      acd23(35)=abb23(34)
      acd23(36)=dotproduct(ninjaE3,spvak7k2)
      acd23(37)=abb23(59)
      acd23(38)=dotproduct(ninjaE3,spval6k7)
      acd23(39)=abb23(63)
      acd23(40)=dotproduct(ninjaE3,spval6l5)
      acd23(41)=abb23(72)
      acd23(42)=dotproduct(ninjaA1,spval6k2)
      acd23(43)=dotproduct(ninjaA1,spval5k2)
      acd23(44)=dotproduct(ninjaA1,spvak2k7)
      acd23(45)=dotproduct(ninjaA1,spvak1k3)
      acd23(46)=dotproduct(ninjaA1,spval5l6)
      acd23(47)=dotproduct(ninjaA1,spvak1k4)
      acd23(48)=dotproduct(ninjaA1,spval5k7)
      acd23(49)=dotproduct(ninjaA1,spvak7k2)
      acd23(50)=dotproduct(ninjaA1,spval6k7)
      acd23(51)=dotproduct(ninjaA1,spval6l5)
      acd23(52)=dotproduct(k1,ninjaA0)
      acd23(53)=dotproduct(ninjaA0,spvak4k3)
      acd23(54)=dotproduct(k2,ninjaA0)
      acd23(55)=dotproduct(k3,ninjaA0)
      acd23(56)=abb23(37)
      acd23(57)=dotproduct(k4,ninjaA0)
      acd23(58)=dotproduct(l5,ninjaA0)
      acd23(59)=dotproduct(l6,ninjaA0)
      acd23(60)=dotproduct(k7,ninjaA0)
      acd23(61)=dotproduct(ninjaA0,ninjaE3)
      acd23(62)=abb23(26)
      acd23(63)=dotproduct(ninjaA0,spval6k2)
      acd23(64)=dotproduct(ninjaA0,spval5k2)
      acd23(65)=dotproduct(ninjaA0,spvak2k7)
      acd23(66)=dotproduct(ninjaA0,spvak1k3)
      acd23(67)=dotproduct(ninjaA0,spval5l6)
      acd23(68)=dotproduct(ninjaA0,spvak1k4)
      acd23(69)=dotproduct(ninjaA0,spval5k7)
      acd23(70)=dotproduct(ninjaA0,spvak7k2)
      acd23(71)=dotproduct(ninjaA0,spval6k7)
      acd23(72)=dotproduct(ninjaA0,spval6l5)
      acd23(73)=abb23(15)
      acd23(74)=abb23(18)
      acd23(75)=acd23(11)+acd23(13)
      acd23(76)=acd23(75)*acd23(10)
      acd23(77)=acd23(16)+acd23(18)
      acd23(77)=acd23(77)*acd23(15)
      acd23(78)=acd23(41)*acd23(40)
      acd23(79)=acd23(39)*acd23(38)
      acd23(80)=acd23(37)*acd23(36)
      acd23(81)=acd23(35)*acd23(34)
      acd23(82)=acd23(33)*acd23(32)
      acd23(83)=acd23(31)*acd23(30)
      acd23(84)=acd23(29)*acd23(28)
      acd23(85)=acd23(27)*acd23(26)
      acd23(86)=acd23(25)*acd23(24)
      acd23(87)=acd23(23)*acd23(22)
      acd23(88)=acd23(20)*acd23(21)
      acd23(89)=acd23(7)*acd23(8)
      acd23(90)=acd23(3)*acd23(4)
      acd23(76)=acd23(90)+acd23(78)+acd23(79)+acd23(80)+acd23(81)-acd23(76)-acd&
      &23(77)+acd23(86)+acd23(87)+acd23(88)+acd23(89)+acd23(82)+acd23(83)+acd23&
      &(84)+acd23(85)
      acd23(77)=acd23(5)*acd23(76)
      acd23(78)=acd23(41)*acd23(51)
      acd23(79)=acd23(39)*acd23(50)
      acd23(80)=acd23(37)*acd23(49)
      acd23(81)=acd23(35)*acd23(48)
      acd23(82)=acd23(33)*acd23(47)
      acd23(83)=acd23(31)*acd23(46)
      acd23(84)=acd23(29)*acd23(45)
      acd23(85)=acd23(27)*acd23(44)
      acd23(86)=acd23(25)*acd23(43)
      acd23(87)=acd23(23)*acd23(42)
      acd23(88)=acd23(20)*acd23(19)
      acd23(89)=acd23(7)*acd23(6)
      acd23(90)=acd23(3)*acd23(1)
      acd23(91)=-acd23(17)-acd23(14)
      acd23(91)=acd23(15)*acd23(91)
      acd23(92)=-acd23(12)-acd23(9)
      acd23(92)=acd23(10)*acd23(92)
      acd23(78)=acd23(92)+acd23(91)+acd23(90)+acd23(89)+acd23(88)+acd23(87)+acd&
      &23(86)+acd23(85)+acd23(84)+acd23(83)+acd23(82)+acd23(81)+acd23(80)+acd23&
      &(78)+acd23(79)
      acd23(78)=acd23(2)*acd23(78)
      acd23(77)=acd23(77)+acd23(78)
      acd23(76)=acd23(53)*acd23(76)
      acd23(78)=acd23(41)*acd23(72)
      acd23(79)=acd23(39)*acd23(71)
      acd23(80)=acd23(37)*acd23(70)
      acd23(81)=acd23(35)*acd23(69)
      acd23(82)=acd23(33)*acd23(68)
      acd23(83)=acd23(31)*acd23(67)
      acd23(84)=acd23(29)*acd23(66)
      acd23(85)=acd23(27)*acd23(65)
      acd23(86)=acd23(25)*acd23(64)
      acd23(87)=acd23(23)*acd23(63)
      acd23(88)=acd23(20)*acd23(60)
      acd23(89)=acd23(7)*acd23(54)
      acd23(90)=acd23(3)*acd23(52)
      acd23(91)=-acd23(59)-acd23(58)
      acd23(91)=acd23(15)*acd23(91)
      acd23(92)=-acd23(57)-acd23(55)
      acd23(92)=acd23(10)*acd23(92)
      acd23(78)=acd23(92)+acd23(91)+acd23(90)+acd23(89)+acd23(88)+acd23(87)+acd&
      &23(86)+acd23(85)+acd23(84)+acd23(83)+acd23(82)+acd23(81)+acd23(80)+acd23&
      &(79)+acd23(73)+acd23(78)
      acd23(78)=acd23(2)*acd23(78)
      acd23(75)=acd23(56)*acd23(75)
      acd23(79)=acd23(61)*acd23(62)
      acd23(80)=acd23(28)*acd23(74)
      acd23(75)=acd23(78)+acd23(76)+2.0_ki*acd23(79)+acd23(80)+acd23(75)
      brack(ninjaidxt0x0mu0)=acd23(75)
      brack(ninjaidxt0x1mu0)=acd23(77)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d23h0_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd23h0
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k4
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_dbaru_epnebbbarg_d23h0l132
