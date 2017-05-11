module     p0_gg_hhg_d45h3l132
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d45h3l132.f90
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
      use p0_gg_hhg_abbrevd45h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(13) :: acd45
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd45(1)=dotproduct(k1,ninjaE3)
      acd45(2)=dotproduct(ninjaE3,spvak2k1)
      acd45(3)=dotproduct(ninjaE3,spvak2k5)
      acd45(4)=dotproduct(ninjaE3,spvak5k2)
      acd45(5)=abb45(32)
      acd45(6)=dotproduct(k2,ninjaE3)
      acd45(7)=abb45(59)
      acd45(8)=dotproduct(l3,ninjaE3)
      acd45(9)=dotproduct(ninjaA0,ninjaE3)
      acd45(10)=abb45(28)
      acd45(11)=-acd45(8)+acd45(1)
      acd45(11)=acd45(11)*acd45(5)
      acd45(12)=acd45(7)*acd45(6)
      acd45(13)=acd45(10)*acd45(9)
      acd45(11)=acd45(11)+2.0_ki*acd45(13)+acd45(12)
      acd45(11)=acd45(4)*acd45(3)*acd45(2)*acd45(11)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd45(11)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd45h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(85) :: acd45
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd45(1)=dotproduct(ninjaE3,spvak2k1)
      acd45(2)=dotproduct(ninjaE3,spvak5k2)
      acd45(3)=dotproduct(ninjaE3,spvak2k5)
      acd45(4)=abb45(28)
      acd45(5)=dotproduct(k1,ninjaA1)
      acd45(6)=abb45(32)
      acd45(7)=dotproduct(k1,ninjaE3)
      acd45(8)=dotproduct(ninjaA1,spvak2k1)
      acd45(9)=dotproduct(ninjaA1,spvak5k2)
      acd45(10)=dotproduct(ninjaA1,spvak2k5)
      acd45(11)=dotproduct(k2,ninjaA1)
      acd45(12)=abb45(59)
      acd45(13)=dotproduct(k2,ninjaE3)
      acd45(14)=dotproduct(l3,ninjaA1)
      acd45(15)=dotproduct(l3,ninjaE3)
      acd45(16)=dotproduct(ninjaA0,ninjaA1)
      acd45(17)=dotproduct(ninjaA0,ninjaE3)
      acd45(18)=dotproduct(ninjaA1,ninjaA1)
      acd45(19)=dotproduct(k1,ninjaA0)
      acd45(20)=abb45(75)
      acd45(21)=dotproduct(k5,ninjaE3)
      acd45(22)=abb45(38)
      acd45(23)=abb45(93)
      acd45(24)=abb45(100)
      acd45(25)=abb45(13)
      acd45(26)=dotproduct(ninjaA0,spvak2k1)
      acd45(27)=dotproduct(ninjaA0,spvak5k2)
      acd45(28)=dotproduct(ninjaA0,spvak2k5)
      acd45(29)=abb45(53)
      acd45(30)=dotproduct(ninjaE3,spvak2l3)
      acd45(31)=abb45(106)
      acd45(32)=abb45(45)
      acd45(33)=dotproduct(ninjaE3,spvak5k1)
      acd45(34)=dotproduct(k2,ninjaA0)
      acd45(35)=abb45(107)
      acd45(36)=abb45(64)
      acd45(37)=abb45(63)
      acd45(38)=abb45(31)
      acd45(39)=abb45(91)
      acd45(40)=abb45(26)
      acd45(41)=dotproduct(ninjaE3,spvak1k2)
      acd45(42)=abb45(11)
      acd45(43)=abb45(23)
      acd45(44)=abb45(58)
      acd45(45)=dotproduct(l3,ninjaA0)
      acd45(46)=abb45(30)
      acd45(47)=abb45(88)
      acd45(48)=abb45(50)
      acd45(49)=abb45(54)
      acd45(50)=abb45(22)
      acd45(51)=abb45(34)
      acd45(52)=dotproduct(ninjaA0,ninjaA0)
      acd45(53)=abb45(33)
      acd45(54)=abb45(14)
      acd45(55)=abb45(24)
      acd45(56)=abb45(55)
      acd45(57)=abb45(104)
      acd45(58)=abb45(97)
      acd45(59)=abb45(101)
      acd45(60)=abb45(9)
      acd45(61)=abb45(12)
      acd45(62)=abb45(29)
      acd45(63)=dotproduct(ninjaE3,spvak1k5)
      acd45(64)=abb45(27)
      acd45(65)=dotproduct(ninjaE3,spval3k5)
      acd45(66)=abb45(35)
      acd45(67)=abb45(40)
      acd45(68)=abb45(65)
      acd45(69)=acd45(1)*acd45(2)
      acd45(70)=acd45(69)*acd45(3)*acd45(4)
      acd45(71)=acd45(7)-acd45(15)
      acd45(71)=acd45(71)*acd45(6)
      acd45(72)=2.0_ki*acd45(17)
      acd45(73)=acd45(72)*acd45(4)
      acd45(74)=acd45(13)*acd45(12)
      acd45(75)=acd45(71)+acd45(73)+acd45(74)
      acd45(76)=acd45(9)*acd45(75)
      acd45(77)=acd45(12)*acd45(11)
      acd45(78)=ninjaP1+2.0_ki*acd45(16)
      acd45(78)=acd45(4)*acd45(78)
      acd45(79)=-acd45(14)+acd45(5)
      acd45(79)=acd45(6)*acd45(79)
      acd45(77)=acd45(79)+acd45(77)+acd45(78)
      acd45(77)=acd45(2)*acd45(77)
      acd45(76)=acd45(77)+acd45(76)
      acd45(76)=acd45(3)*acd45(76)
      acd45(77)=acd45(2)*acd45(10)*acd45(75)
      acd45(76)=acd45(77)+acd45(76)
      acd45(76)=acd45(1)*acd45(76)
      acd45(75)=acd45(3)*acd45(2)*acd45(8)*acd45(75)
      acd45(75)=acd45(75)+acd45(76)
      acd45(76)=ninjaP2+acd45(18)
      acd45(76)=acd45(76)*acd45(70)
      acd45(77)=acd45(4)*acd45(28)
      acd45(77)=acd45(55)+acd45(77)
      acd45(77)=acd45(77)*acd45(72)
      acd45(78)=acd45(65)*acd45(66)
      acd45(79)=acd45(63)*acd45(64)
      acd45(80)=acd45(30)*acd45(61)
      acd45(81)=acd45(21)*acd45(51)
      acd45(82)=acd45(15)*acd45(48)
      acd45(83)=acd45(7)*acd45(29)
      acd45(84)=acd45(12)*acd45(28)
      acd45(84)=acd45(40)+acd45(84)
      acd45(84)=acd45(13)*acd45(84)
      acd45(85)=acd45(28)*acd45(71)
      acd45(77)=acd45(77)+acd45(85)+acd45(84)+acd45(83)+acd45(82)+acd45(81)+acd&
      &45(80)+acd45(78)+acd45(79)
      acd45(77)=acd45(2)*acd45(77)
      acd45(78)=acd45(33)*acd45(56)
      acd45(79)=acd45(21)*acd45(50)
      acd45(80)=acd45(15)*acd45(46)
      acd45(81)=acd45(7)*acd45(24)
      acd45(82)=acd45(13)*acd45(38)
      acd45(83)=acd45(53)*acd45(72)
      acd45(78)=acd45(83)+acd45(82)+acd45(81)+acd45(80)+acd45(78)+acd45(79)
      acd45(78)=acd45(78)*acd45(72)
      acd45(79)=acd45(12)*acd45(34)
      acd45(80)=ninjaP0+acd45(52)
      acd45(80)=acd45(4)*acd45(80)
      acd45(81)=-acd45(45)+acd45(19)
      acd45(81)=acd45(6)*acd45(81)
      acd45(79)=acd45(81)+acd45(80)+acd45(62)+acd45(79)
      acd45(79)=acd45(2)*acd45(79)
      acd45(73)=acd45(73)+acd45(71)
      acd45(73)=acd45(27)*acd45(73)
      acd45(80)=acd45(41)*acd45(67)
      acd45(81)=acd45(33)*acd45(68)
      acd45(82)=-acd45(21)*acd45(43)
      acd45(83)=acd45(12)*acd45(27)
      acd45(83)=acd45(43)+acd45(83)
      acd45(83)=acd45(13)*acd45(83)
      acd45(73)=acd45(79)+acd45(83)+acd45(82)+acd45(80)+acd45(81)+acd45(73)
      acd45(73)=acd45(3)*acd45(73)
      acd45(79)=acd45(41)*acd45(42)
      acd45(80)=acd45(33)*acd45(44)
      acd45(79)=acd45(79)-acd45(80)
      acd45(80)=acd45(21)*acd45(37)
      acd45(81)=acd45(15)*acd45(36)
      acd45(82)=acd45(7)*acd45(20)
      acd45(83)=acd45(13)*acd45(35)
      acd45(80)=acd45(83)+acd45(82)+acd45(81)+acd45(80)-acd45(79)
      acd45(80)=acd45(13)*acd45(80)
      acd45(81)=acd45(21)*acd45(49)
      acd45(82)=acd45(7)*acd45(22)
      acd45(79)=acd45(82)+acd45(81)+acd45(79)
      acd45(79)=acd45(21)*acd45(79)
      acd45(69)=acd45(60)*acd45(69)
      acd45(69)=acd45(69)+acd45(73)+acd45(77)+acd45(78)+acd45(80)+acd45(79)
      acd45(69)=acd45(1)*acd45(69)
      acd45(73)=acd45(15)+acd45(21)
      acd45(73)=acd45(47)*acd45(73)
      acd45(77)=acd45(33)*acd45(59)
      acd45(78)=acd45(7)*acd45(25)
      acd45(79)=acd45(13)*acd45(39)
      acd45(80)=acd45(54)*acd45(72)
      acd45(73)=acd45(80)+acd45(79)+acd45(78)+acd45(77)+acd45(73)
      acd45(73)=acd45(73)*acd45(72)
      acd45(71)=acd45(71)+acd45(74)
      acd45(71)=acd45(26)*acd45(71)
      acd45(74)=acd45(4)*acd45(26)
      acd45(74)=acd45(58)+acd45(74)
      acd45(74)=acd45(74)*acd45(72)
      acd45(77)=acd45(7)*acd45(32)
      acd45(71)=acd45(74)+acd45(77)+acd45(71)
      acd45(71)=acd45(2)*acd45(71)
      acd45(74)=-acd45(33)*acd45(24)
      acd45(77)=acd45(21)*acd45(23)
      acd45(74)=acd45(74)+acd45(77)
      acd45(74)=acd45(7)*acd45(74)
      acd45(71)=acd45(71)+acd45(74)+acd45(73)
      acd45(71)=acd45(3)*acd45(71)
      acd45(73)=acd45(7)*acd45(31)
      acd45(72)=-acd45(57)*acd45(72)
      acd45(72)=acd45(73)+acd45(72)
      acd45(72)=acd45(2)*acd45(30)*acd45(72)
      acd45(69)=acd45(69)+acd45(72)+acd45(71)
      brack(ninjaidxt0x0mu0)=acd45(69)
      brack(ninjaidxt0x0mu2)=acd45(70)
      brack(ninjaidxt0x1mu0)=acd45(75)
      brack(ninjaidxt0x2mu0)=acd45(76)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d45h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd45h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA0(1:4) = + a0(0:3) - qshift(1:4)
	     vecA1(1:4) = + a1(0:3)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_21,vecA0,vecA1,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_22,vecA0,vecA1,vecB,vecC,param,coeffs)
   end subroutine numerator_t2
!---#] subroutine numerator_t2:
end module     p0_gg_hhg_d45h3l132
