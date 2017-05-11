module     p0_gg_hhg_d59h4l132
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d59h4l132.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2x0mu0 = 0
   integer, parameter :: ninjaidxt1x0mu0 = 1
   integer, parameter :: ninjaidxt1x1mu0 = 2
   integer, parameter :: ninjaidxt0x0mu0 = 3
   integer, parameter :: ninjaidxt0x0mu2 = 4
   integer, parameter :: ninjaidxt0x1mu0 = 5
   integer, parameter :: ninjaidxt0x2mu0 = 6
   public :: numerator_t2
contains
!---#[ subroutine brack_21:
   pure subroutine brack_21(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd59h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd59
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=0.0_ki
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd59h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(74) :: acd59
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd59(1)=dotproduct(k1,ninjaE3)
      acd59(2)=dotproduct(k2,ninjaE3)
      acd59(3)=dotproduct(ninjaE3,spvak1k2)
      acd59(4)=abb59(24)
      acd59(5)=dotproduct(ninjaE3,spvak5k2)
      acd59(6)=abb59(101)
      acd59(7)=dotproduct(l3,ninjaE3)
      acd59(8)=abb59(52)
      acd59(9)=abb59(48)
      acd59(10)=dotproduct(ninjaA0,ninjaE3)
      acd59(11)=abb59(33)
      acd59(12)=dotproduct(ninjaE3,spvak2k5)
      acd59(13)=abb59(71)
      acd59(14)=dotproduct(ninjaE3,spval3k2)
      acd59(15)=abb59(98)
      acd59(16)=abb59(50)
      acd59(17)=abb59(106)
      acd59(18)=abb59(44)
      acd59(19)=abb59(107)
      acd59(20)=dotproduct(k5,ninjaE3)
      acd59(21)=abb59(27)
      acd59(22)=abb59(102)
      acd59(23)=abb59(31)
      acd59(24)=abb59(100)
      acd59(25)=abb59(68)
      acd59(26)=abb59(63)
      acd59(27)=abb59(60)
      acd59(28)=dotproduct(ninjaE3,spvak5l3)
      acd59(29)=abb59(30)
      acd59(30)=abb59(130)
      acd59(31)=abb59(118)
      acd59(32)=dotproduct(ninjaE3,spvak1l3)
      acd59(33)=abb59(147)
      acd59(34)=dotproduct(ninjaE3,spvak1k5)
      acd59(35)=abb59(140)
      acd59(36)=abb59(91)
      acd59(37)=abb59(96)
      acd59(38)=abb59(29)
      acd59(39)=abb59(112)
      acd59(40)=abb59(65)
      acd59(41)=abb59(79)
      acd59(42)=abb59(46)
      acd59(43)=abb59(85)
      acd59(44)=abb59(109)
      acd59(45)=abb59(137)
      acd59(46)=abb59(13)
      acd59(47)=abb59(110)
      acd59(48)=abb59(129)
      acd59(49)=abb59(51)
      acd59(50)=abb59(111)
      acd59(51)=abb59(22)
      acd59(52)=abb59(58)
      acd59(53)=abb59(39)
      acd59(54)=abb59(47)
      acd59(55)=abb59(70)
      acd59(56)=abb59(121)
      acd59(57)=abb59(77)
      acd59(58)=abb59(142)
      acd59(59)=abb59(8)
      acd59(60)=abb59(17)
      acd59(61)=abb59(88)
      acd59(62)=abb59(116)
      acd59(63)=abb59(145)
      acd59(64)=abb59(143)
      acd59(65)=acd59(34)*acd59(35)
      acd59(66)=acd59(32)*acd59(33)
      acd59(67)=acd59(1)*acd59(6)
      acd59(68)=acd59(20)*acd59(22)
      acd59(69)=acd59(14)*acd59(31)
      acd59(70)=acd59(7)*acd59(19)
      acd59(71)=acd59(12)*acd59(30)
      acd59(72)=2.0_ki*acd59(10)
      acd59(73)=acd59(24)*acd59(72)
      acd59(74)=acd59(2)*acd59(17)
      acd59(65)=acd59(74)+acd59(73)+acd59(71)+acd59(70)+acd59(69)+acd59(68)+acd&
      &59(67)+acd59(65)+acd59(66)
      acd59(65)=acd59(2)*acd59(65)
      acd59(66)=acd59(34)*acd59(58)
      acd59(67)=acd59(32)*acd59(57)
      acd59(68)=acd59(20)*acd59(47)
      acd59(69)=acd59(14)*acd59(56)
      acd59(70)=acd59(7)*acd59(39)
      acd59(71)=acd59(12)*acd59(55)
      acd59(73)=acd59(50)*acd59(72)
      acd59(66)=acd59(73)+acd59(71)+acd59(70)+acd59(69)+acd59(68)+acd59(66)+acd&
      &59(67)
      acd59(66)=acd59(66)*acd59(72)
      acd59(67)=acd59(34)*acd59(64)
      acd59(68)=acd59(32)*acd59(63)
      acd59(69)=acd59(20)*acd59(48)
      acd59(70)=acd59(14)*acd59(62)
      acd59(71)=acd59(5)*acd59(61)
      acd59(67)=acd59(71)+acd59(70)+acd59(69)+acd59(67)+acd59(68)
      acd59(67)=acd59(12)*acd59(67)
      acd59(68)=acd59(34)*acd59(45)
      acd59(69)=acd59(32)*acd59(44)
      acd59(70)=acd59(1)*acd59(9)
      acd59(71)=acd59(20)*acd59(37)
      acd59(73)=acd59(14)*acd59(43)
      acd59(68)=acd59(73)+acd59(71)+acd59(70)+acd59(68)+acd59(69)
      acd59(68)=acd59(7)*acd59(68)
      acd59(69)=acd59(7)*acd59(40)
      acd59(70)=acd59(12)*acd59(59)
      acd59(71)=-acd59(52)*acd59(72)
      acd59(73)=acd59(2)*acd59(26)
      acd59(69)=acd59(73)+acd59(71)+acd59(69)+acd59(70)
      acd59(69)=acd59(3)*acd59(69)
      acd59(65)=acd59(69)+acd59(65)+acd59(66)+acd59(68)+acd59(67)
      acd59(65)=acd59(5)*acd59(65)
      acd59(66)=acd59(28)*acd59(29)
      acd59(67)=acd59(1)*acd59(4)
      acd59(68)=acd59(20)*acd59(21)
      acd59(69)=acd59(14)*acd59(27)
      acd59(70)=acd59(7)*acd59(18)
      acd59(71)=acd59(12)*acd59(25)
      acd59(73)=acd59(23)*acd59(72)
      acd59(74)=acd59(2)*acd59(16)
      acd59(66)=acd59(74)+acd59(73)+acd59(71)+acd59(70)+acd59(69)+acd59(68)+acd&
      &59(66)+acd59(67)
      acd59(66)=acd59(2)*acd59(66)
      acd59(67)=acd59(28)*acd59(54)
      acd59(68)=acd59(1)*acd59(11)
      acd59(69)=acd59(20)*acd59(46)
      acd59(70)=acd59(14)*acd59(53)
      acd59(71)=acd59(7)*acd59(38)
      acd59(73)=acd59(12)*acd59(51)
      acd59(74)=acd59(49)*acd59(72)
      acd59(67)=acd59(74)+acd59(73)+acd59(71)+acd59(70)+acd59(69)+acd59(67)+acd&
      &59(68)
      acd59(67)=acd59(67)*acd59(72)
      acd59(68)=acd59(28)*acd59(42)
      acd59(69)=acd59(1)*acd59(8)
      acd59(70)=acd59(20)*acd59(36)
      acd59(71)=acd59(14)*acd59(41)
      acd59(68)=acd59(71)+acd59(70)+acd59(68)+acd59(69)
      acd59(68)=acd59(7)*acd59(68)
      acd59(69)=acd59(20)-acd59(1)
      acd59(70)=acd59(13)*acd59(69)
      acd59(71)=acd59(14)*acd59(60)
      acd59(70)=acd59(71)+acd59(70)
      acd59(70)=acd59(12)*acd59(70)
      acd59(66)=acd59(66)+acd59(67)+acd59(68)+acd59(70)
      acd59(66)=acd59(3)*acd59(66)
      acd59(67)=-acd59(12)*acd59(14)*acd59(15)*acd59(69)
      acd59(65)=acd59(65)+acd59(67)+acd59(66)
      brack(ninjaidxt0x0mu0)=acd59(65)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d59h4_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd59h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3
	     vecA0(1:4) = - a0(0:3) - qshift(1:4)
	     vecA1(1:4) = - a1(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_gg_hhg_d59h4l132
