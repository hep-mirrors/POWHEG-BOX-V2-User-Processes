module     p0_gg_hhg_d23h3l132
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d23h3l132.f90
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
      use p0_gg_hhg_abbrevd23h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(16) :: acd23
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd23(1)=dotproduct(k2,ninjaE3)
      acd23(2)=dotproduct(ninjaE3,spvak2k1)
      acd23(3)=dotproduct(ninjaE3,spvak5k2)
      acd23(4)=abb23(22)
      acd23(5)=dotproduct(ninjaE3,spvak2k5)
      acd23(6)=abb23(30)
      acd23(7)=dotproduct(l4,ninjaE3)
      acd23(8)=abb23(20)
      acd23(9)=abb23(59)
      acd23(10)=dotproduct(ninjaA0,ninjaE3)
      acd23(11)=abb23(10)
      acd23(12)=abb23(14)
      acd23(13)=acd23(6)*acd23(1)
      acd23(14)=acd23(9)*acd23(7)
      acd23(15)=2.0_ki*acd23(10)
      acd23(16)=acd23(12)*acd23(15)
      acd23(13)=acd23(16)+acd23(14)+acd23(13)
      acd23(13)=acd23(13)*acd23(5)
      acd23(14)=acd23(4)*acd23(1)
      acd23(16)=acd23(8)*acd23(7)
      acd23(15)=acd23(11)*acd23(15)
      acd23(14)=acd23(15)+acd23(16)+acd23(14)
      acd23(14)=acd23(14)*acd23(2)
      acd23(13)=acd23(14)+acd23(13)
      acd23(13)=acd23(3)*acd23(13)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd23(13)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd23h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(76) :: acd23
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd23(1)=dotproduct(ninjaE3,spvak2k1)
      acd23(2)=dotproduct(ninjaE3,spvak5k2)
      acd23(3)=abb23(10)
      acd23(4)=dotproduct(ninjaE3,spvak2k5)
      acd23(5)=abb23(14)
      acd23(6)=dotproduct(k2,ninjaA1)
      acd23(7)=abb23(22)
      acd23(8)=abb23(30)
      acd23(9)=dotproduct(k2,ninjaE3)
      acd23(10)=dotproduct(ninjaA1,spvak2k1)
      acd23(11)=dotproduct(ninjaA1,spvak5k2)
      acd23(12)=dotproduct(ninjaA1,spvak2k5)
      acd23(13)=dotproduct(l4,ninjaA1)
      acd23(14)=abb23(20)
      acd23(15)=abb23(59)
      acd23(16)=dotproduct(l4,ninjaE3)
      acd23(17)=dotproduct(ninjaA0,ninjaA1)
      acd23(18)=dotproduct(ninjaA0,ninjaE3)
      acd23(19)=dotproduct(ninjaA1,ninjaA1)
      acd23(20)=dotproduct(k2,ninjaA0)
      acd23(21)=abb23(48)
      acd23(22)=abb23(37)
      acd23(23)=abb23(36)
      acd23(24)=dotproduct(ninjaA0,spvak2k1)
      acd23(25)=dotproduct(ninjaA0,spvak5k2)
      acd23(26)=dotproduct(ninjaA0,spvak2k5)
      acd23(27)=abb23(50)
      acd23(28)=dotproduct(l3,ninjaE3)
      acd23(29)=abb23(29)
      acd23(30)=abb23(49)
      acd23(31)=dotproduct(l4,ninjaA0)
      acd23(32)=abb23(44)
      acd23(33)=dotproduct(k5,ninjaE3)
      acd23(34)=abb23(26)
      acd23(35)=dotproduct(ninjaA0,ninjaA0)
      acd23(36)=abb23(41)
      acd23(37)=dotproduct(ninjaE3,spvak2l3)
      acd23(38)=abb23(11)
      acd23(39)=dotproduct(ninjaE3,spval3k5)
      acd23(40)=abb23(42)
      acd23(41)=dotproduct(ninjaE3,spval3k1)
      acd23(42)=abb23(45)
      acd23(43)=dotproduct(ninjaE3,spvak5k1)
      acd23(44)=abb23(54)
      acd23(45)=abb23(17)
      acd23(46)=abb23(12)
      acd23(47)=abb23(31)
      acd23(48)=dotproduct(ninjaE3,spvak2l4)
      acd23(49)=abb23(19)
      acd23(50)=dotproduct(ninjaE3,spval4k5)
      acd23(51)=abb23(27)
      acd23(52)=abb23(55)
      acd23(53)=abb23(56)
      acd23(54)=dotproduct(ninjaE3,spval4k1)
      acd23(55)=abb23(57)
      acd23(56)=acd23(4)*acd23(2)
      acd23(57)=acd23(56)*acd23(5)
      acd23(58)=acd23(1)*acd23(2)
      acd23(59)=acd23(58)*acd23(3)
      acd23(57)=acd23(57)+acd23(59)
      acd23(59)=acd23(7)*acd23(1)
      acd23(60)=acd23(8)*acd23(4)
      acd23(59)=acd23(59)+acd23(60)
      acd23(59)=acd23(59)*acd23(9)
      acd23(60)=acd23(14)*acd23(1)
      acd23(61)=acd23(15)*acd23(4)
      acd23(60)=acd23(60)+acd23(61)
      acd23(60)=acd23(60)*acd23(16)
      acd23(61)=acd23(3)*acd23(1)
      acd23(62)=acd23(5)*acd23(4)
      acd23(61)=acd23(62)+acd23(61)
      acd23(61)=acd23(18)*acd23(61)
      acd23(59)=acd23(60)+acd23(59)+2.0_ki*acd23(61)
      acd23(60)=acd23(11)*acd23(59)
      acd23(61)=2.0_ki*acd23(18)
      acd23(62)=acd23(61)*acd23(2)
      acd23(63)=acd23(3)*acd23(62)
      acd23(64)=acd23(16)*acd23(2)
      acd23(65)=acd23(64)*acd23(14)
      acd23(66)=acd23(9)*acd23(2)
      acd23(67)=acd23(66)*acd23(7)
      acd23(63)=acd23(67)+acd23(63)+acd23(65)
      acd23(65)=acd23(10)*acd23(63)
      acd23(62)=acd23(5)*acd23(62)
      acd23(67)=acd23(64)*acd23(15)
      acd23(68)=acd23(66)*acd23(8)
      acd23(62)=acd23(68)+acd23(62)+acd23(67)
      acd23(67)=acd23(12)*acd23(62)
      acd23(68)=ninjaP1+2.0_ki*acd23(17)
      acd23(68)=acd23(57)*acd23(68)
      acd23(69)=acd23(56)*acd23(8)
      acd23(70)=acd23(58)*acd23(7)
      acd23(69)=acd23(69)+acd23(70)
      acd23(70)=acd23(6)*acd23(69)
      acd23(71)=acd23(56)*acd23(15)
      acd23(72)=acd23(58)*acd23(14)
      acd23(71)=acd23(71)+acd23(72)
      acd23(72)=acd23(13)*acd23(71)
      acd23(60)=acd23(72)+acd23(70)+acd23(67)+acd23(65)+acd23(60)+acd23(68)
      acd23(65)=acd23(19)+ninjaP2
      acd23(65)=acd23(57)*acd23(65)
      acd23(67)=acd23(30)*acd23(28)
      acd23(68)=acd23(36)*acd23(61)
      acd23(70)=acd23(46)*acd23(37)
      acd23(72)=acd23(49)*acd23(48)
      acd23(73)=acd23(51)*acd23(50)
      acd23(74)=acd23(52)*acd23(39)
      acd23(75)=acd23(53)*acd23(41)
      acd23(76)=acd23(55)*acd23(54)
      acd23(67)=acd23(76)+acd23(75)+acd23(74)+acd23(73)+acd23(72)+acd23(70)+acd&
      &23(68)+acd23(67)
      acd23(67)=acd23(2)*acd23(67)
      acd23(68)=acd23(23)*acd23(9)
      acd23(70)=acd23(34)*acd23(33)
      acd23(72)=acd23(38)*acd23(37)
      acd23(73)=-acd23(40)*acd23(39)
      acd23(74)=-acd23(42)*acd23(41)
      acd23(75)=acd23(44)*acd23(43)
      acd23(68)=acd23(75)+acd23(74)+acd23(73)+acd23(72)+acd23(70)+acd23(68)
      acd23(68)=acd23(61)*acd23(68)
      acd23(59)=acd23(25)*acd23(59)
      acd23(63)=acd23(24)*acd23(63)
      acd23(62)=acd23(26)*acd23(62)
      acd23(70)=ninjaP0+acd23(35)
      acd23(70)=acd23(57)*acd23(70)
      acd23(69)=acd23(20)*acd23(69)
      acd23(72)=acd23(18)**2
      acd23(73)=acd23(28)*acd23(18)
      acd23(72)=2.0_ki*acd23(72)+acd23(73)
      acd23(72)=acd23(29)*acd23(72)
      acd23(71)=acd23(31)*acd23(71)
      acd23(61)=acd23(61)+acd23(9)
      acd23(61)=acd23(22)*acd23(16)*acd23(61)
      acd23(73)=acd23(21)*acd23(9)**2
      acd23(66)=acd23(27)*acd23(66)
      acd23(64)=acd23(32)*acd23(64)
      acd23(58)=acd23(45)*acd23(58)
      acd23(56)=acd23(47)*acd23(56)
      acd23(56)=acd23(56)+acd23(58)+acd23(64)+acd23(66)+acd23(73)+acd23(71)+2.0&
      &_ki*acd23(72)+acd23(61)+acd23(69)+acd23(62)+acd23(59)+acd23(63)+acd23(67&
      &)+acd23(68)+acd23(70)
      brack(ninjaidxt0x0mu0)=acd23(56)
      brack(ninjaidxt0x0mu2)=acd23(57)
      brack(ninjaidxt0x1mu0)=acd23(60)
      brack(ninjaidxt0x2mu0)=acd23(65)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d23h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd23h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA0(1:4) = - a0(0:3)
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
end module     p0_gg_hhg_d23h3l132
