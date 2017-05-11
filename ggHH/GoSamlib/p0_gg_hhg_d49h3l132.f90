module     p0_gg_hhg_d49h3l132
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d49h3l132.f90
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
      use p0_gg_hhg_abbrevd49h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(13) :: acd49
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd49(1)=dotproduct(k1,ninjaE3)
      acd49(2)=dotproduct(ninjaE3,spvak2k1)
      acd49(3)=dotproduct(ninjaE3,spvak2k5)
      acd49(4)=dotproduct(ninjaE3,spvak5k2)
      acd49(5)=abb49(32)
      acd49(6)=dotproduct(k2,ninjaE3)
      acd49(7)=abb49(59)
      acd49(8)=dotproduct(l4,ninjaE3)
      acd49(9)=dotproduct(ninjaA0,ninjaE3)
      acd49(10)=abb49(28)
      acd49(11)=-acd49(8)+acd49(1)
      acd49(11)=acd49(11)*acd49(5)
      acd49(12)=acd49(7)*acd49(6)
      acd49(13)=acd49(10)*acd49(9)
      acd49(11)=acd49(11)+2.0_ki*acd49(13)+acd49(12)
      acd49(11)=acd49(4)*acd49(3)*acd49(2)*acd49(11)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd49(11)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd49h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(85) :: acd49
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd49(1)=dotproduct(ninjaE3,spvak2k1)
      acd49(2)=dotproduct(ninjaE3,spvak5k2)
      acd49(3)=dotproduct(ninjaE3,spvak2k5)
      acd49(4)=abb49(28)
      acd49(5)=dotproduct(k1,ninjaA1)
      acd49(6)=abb49(32)
      acd49(7)=dotproduct(k1,ninjaE3)
      acd49(8)=dotproduct(ninjaA1,spvak2k1)
      acd49(9)=dotproduct(ninjaA1,spvak5k2)
      acd49(10)=dotproduct(ninjaA1,spvak2k5)
      acd49(11)=dotproduct(k2,ninjaA1)
      acd49(12)=abb49(59)
      acd49(13)=dotproduct(k2,ninjaE3)
      acd49(14)=dotproduct(l4,ninjaA1)
      acd49(15)=dotproduct(l4,ninjaE3)
      acd49(16)=dotproduct(ninjaA0,ninjaA1)
      acd49(17)=dotproduct(ninjaA0,ninjaE3)
      acd49(18)=dotproduct(ninjaA1,ninjaA1)
      acd49(19)=dotproduct(k1,ninjaA0)
      acd49(20)=abb49(75)
      acd49(21)=dotproduct(k5,ninjaE3)
      acd49(22)=abb49(38)
      acd49(23)=abb49(93)
      acd49(24)=abb49(100)
      acd49(25)=abb49(13)
      acd49(26)=dotproduct(ninjaA0,spvak2k1)
      acd49(27)=dotproduct(ninjaA0,spvak5k2)
      acd49(28)=dotproduct(ninjaA0,spvak2k5)
      acd49(29)=abb49(53)
      acd49(30)=dotproduct(ninjaE3,spvak2l4)
      acd49(31)=abb49(106)
      acd49(32)=abb49(45)
      acd49(33)=dotproduct(ninjaE3,spvak5k1)
      acd49(34)=dotproduct(k2,ninjaA0)
      acd49(35)=abb49(107)
      acd49(36)=abb49(64)
      acd49(37)=abb49(63)
      acd49(38)=abb49(31)
      acd49(39)=abb49(91)
      acd49(40)=abb49(26)
      acd49(41)=dotproduct(ninjaE3,spvak1k2)
      acd49(42)=abb49(11)
      acd49(43)=abb49(23)
      acd49(44)=abb49(58)
      acd49(45)=dotproduct(l4,ninjaA0)
      acd49(46)=abb49(30)
      acd49(47)=abb49(88)
      acd49(48)=abb49(50)
      acd49(49)=abb49(54)
      acd49(50)=abb49(22)
      acd49(51)=abb49(34)
      acd49(52)=dotproduct(ninjaA0,ninjaA0)
      acd49(53)=abb49(33)
      acd49(54)=abb49(14)
      acd49(55)=abb49(24)
      acd49(56)=abb49(55)
      acd49(57)=abb49(104)
      acd49(58)=abb49(97)
      acd49(59)=abb49(101)
      acd49(60)=abb49(9)
      acd49(61)=abb49(12)
      acd49(62)=abb49(29)
      acd49(63)=dotproduct(ninjaE3,spvak1k5)
      acd49(64)=abb49(27)
      acd49(65)=dotproduct(ninjaE3,spval4k5)
      acd49(66)=abb49(35)
      acd49(67)=abb49(40)
      acd49(68)=abb49(65)
      acd49(69)=acd49(1)*acd49(2)
      acd49(70)=acd49(69)*acd49(3)*acd49(4)
      acd49(71)=acd49(7)-acd49(15)
      acd49(71)=acd49(71)*acd49(6)
      acd49(72)=2.0_ki*acd49(17)
      acd49(73)=acd49(72)*acd49(4)
      acd49(74)=acd49(13)*acd49(12)
      acd49(75)=acd49(71)+acd49(73)+acd49(74)
      acd49(76)=acd49(9)*acd49(75)
      acd49(77)=acd49(12)*acd49(11)
      acd49(78)=ninjaP1+2.0_ki*acd49(16)
      acd49(78)=acd49(4)*acd49(78)
      acd49(79)=-acd49(14)+acd49(5)
      acd49(79)=acd49(6)*acd49(79)
      acd49(77)=acd49(79)+acd49(77)+acd49(78)
      acd49(77)=acd49(2)*acd49(77)
      acd49(76)=acd49(77)+acd49(76)
      acd49(76)=acd49(3)*acd49(76)
      acd49(77)=acd49(2)*acd49(10)*acd49(75)
      acd49(76)=acd49(77)+acd49(76)
      acd49(76)=acd49(1)*acd49(76)
      acd49(75)=acd49(3)*acd49(2)*acd49(8)*acd49(75)
      acd49(75)=acd49(75)+acd49(76)
      acd49(76)=ninjaP2+acd49(18)
      acd49(76)=acd49(76)*acd49(70)
      acd49(77)=acd49(4)*acd49(28)
      acd49(77)=acd49(55)+acd49(77)
      acd49(77)=acd49(77)*acd49(72)
      acd49(78)=acd49(65)*acd49(66)
      acd49(79)=acd49(63)*acd49(64)
      acd49(80)=acd49(30)*acd49(61)
      acd49(81)=acd49(21)*acd49(51)
      acd49(82)=acd49(15)*acd49(48)
      acd49(83)=acd49(7)*acd49(29)
      acd49(84)=acd49(12)*acd49(28)
      acd49(84)=acd49(40)+acd49(84)
      acd49(84)=acd49(13)*acd49(84)
      acd49(85)=acd49(28)*acd49(71)
      acd49(77)=acd49(77)+acd49(85)+acd49(84)+acd49(83)+acd49(82)+acd49(81)+acd&
      &49(80)+acd49(78)+acd49(79)
      acd49(77)=acd49(2)*acd49(77)
      acd49(78)=acd49(33)*acd49(56)
      acd49(79)=acd49(21)*acd49(50)
      acd49(80)=acd49(15)*acd49(46)
      acd49(81)=acd49(7)*acd49(24)
      acd49(82)=acd49(13)*acd49(38)
      acd49(83)=acd49(53)*acd49(72)
      acd49(78)=acd49(83)+acd49(82)+acd49(81)+acd49(80)+acd49(78)+acd49(79)
      acd49(78)=acd49(78)*acd49(72)
      acd49(79)=acd49(12)*acd49(34)
      acd49(80)=ninjaP0+acd49(52)
      acd49(80)=acd49(4)*acd49(80)
      acd49(81)=-acd49(45)+acd49(19)
      acd49(81)=acd49(6)*acd49(81)
      acd49(79)=acd49(81)+acd49(80)+acd49(62)+acd49(79)
      acd49(79)=acd49(2)*acd49(79)
      acd49(73)=acd49(73)+acd49(71)
      acd49(73)=acd49(27)*acd49(73)
      acd49(80)=acd49(41)*acd49(67)
      acd49(81)=acd49(33)*acd49(68)
      acd49(82)=-acd49(21)*acd49(43)
      acd49(83)=acd49(12)*acd49(27)
      acd49(83)=acd49(43)+acd49(83)
      acd49(83)=acd49(13)*acd49(83)
      acd49(73)=acd49(79)+acd49(83)+acd49(82)+acd49(80)+acd49(81)+acd49(73)
      acd49(73)=acd49(3)*acd49(73)
      acd49(79)=acd49(41)*acd49(42)
      acd49(80)=acd49(33)*acd49(44)
      acd49(79)=acd49(79)-acd49(80)
      acd49(80)=acd49(21)*acd49(37)
      acd49(81)=acd49(15)*acd49(36)
      acd49(82)=acd49(7)*acd49(20)
      acd49(83)=acd49(13)*acd49(35)
      acd49(80)=acd49(83)+acd49(82)+acd49(81)+acd49(80)-acd49(79)
      acd49(80)=acd49(13)*acd49(80)
      acd49(81)=acd49(21)*acd49(49)
      acd49(82)=acd49(7)*acd49(22)
      acd49(79)=acd49(82)+acd49(81)+acd49(79)
      acd49(79)=acd49(21)*acd49(79)
      acd49(69)=acd49(60)*acd49(69)
      acd49(69)=acd49(69)+acd49(73)+acd49(77)+acd49(78)+acd49(80)+acd49(79)
      acd49(69)=acd49(1)*acd49(69)
      acd49(73)=acd49(15)+acd49(21)
      acd49(73)=acd49(47)*acd49(73)
      acd49(77)=acd49(33)*acd49(59)
      acd49(78)=acd49(7)*acd49(25)
      acd49(79)=acd49(13)*acd49(39)
      acd49(80)=acd49(54)*acd49(72)
      acd49(73)=acd49(80)+acd49(79)+acd49(78)+acd49(77)+acd49(73)
      acd49(73)=acd49(73)*acd49(72)
      acd49(71)=acd49(71)+acd49(74)
      acd49(71)=acd49(26)*acd49(71)
      acd49(74)=acd49(4)*acd49(26)
      acd49(74)=acd49(58)+acd49(74)
      acd49(74)=acd49(74)*acd49(72)
      acd49(77)=acd49(7)*acd49(32)
      acd49(71)=acd49(74)+acd49(77)+acd49(71)
      acd49(71)=acd49(2)*acd49(71)
      acd49(74)=-acd49(33)*acd49(24)
      acd49(77)=acd49(21)*acd49(23)
      acd49(74)=acd49(74)+acd49(77)
      acd49(74)=acd49(7)*acd49(74)
      acd49(71)=acd49(71)+acd49(74)+acd49(73)
      acd49(71)=acd49(3)*acd49(71)
      acd49(73)=acd49(7)*acd49(31)
      acd49(72)=-acd49(57)*acd49(72)
      acd49(72)=acd49(73)+acd49(72)
      acd49(72)=acd49(2)*acd49(30)*acd49(72)
      acd49(69)=acd49(69)+acd49(72)+acd49(71)
      brack(ninjaidxt0x0mu0)=acd49(69)
      brack(ninjaidxt0x0mu2)=acd49(70)
      brack(ninjaidxt0x1mu0)=acd49(75)
      brack(ninjaidxt0x2mu0)=acd49(76)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d49h3_ninja_t2")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd49h3
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
end module     p0_gg_hhg_d49h3l132
