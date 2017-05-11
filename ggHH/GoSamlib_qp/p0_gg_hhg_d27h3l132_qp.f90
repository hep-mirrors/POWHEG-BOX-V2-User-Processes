module p0_gg_hhg_d27h3l132_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d27h3l132.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond_t, d => metric_tensor
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd27h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd27
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd27(1)=dotproduct(k2,ninjaE3)
      acd27(2)=dotproduct(ninjaE3,spvak2k1)
      acd27(3)=abb27(21)
      acd27(4)=dotproduct(l3,ninjaE3)
      acd27(5)=abb27(38)
      acd27(6)=dotproduct(k5,ninjaE3)
      acd27(7)=dotproduct(ninjaA0,ninjaE3)
      acd27(8)=abb27(26)
      acd27(9)=acd27(7)*acd27(8)
      acd27(10)=acd27(4)*acd27(5)
      acd27(9)=acd27(10)+2.0_ki*acd27(9)
      acd27(10)=-acd27(6)*acd27(9)
      acd27(11)=acd27(1)+acd27(6)
      acd27(11)=acd27(3)*acd27(11)
      acd27(9)=acd27(11)-acd27(9)
      acd27(9)=acd27(1)*acd27(9)
      acd27(9)=acd27(10)+acd27(9)
      acd27(9)=acd27(2)*acd27(9)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd27(9)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd27h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(78) :: acd27
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd27(1)=dotproduct(k2,ninjaE3)
      acd27(2)=dotproduct(ninjaE3,spvak2k1)
      acd27(3)=abb27(26)
      acd27(4)=dotproduct(k5,ninjaE3)
      acd27(5)=dotproduct(k2,ninjaA1)
      acd27(6)=abb27(21)
      acd27(7)=dotproduct(l3,ninjaE3)
      acd27(8)=abb27(38)
      acd27(9)=dotproduct(ninjaA0,ninjaE3)
      acd27(10)=dotproduct(ninjaA1,spvak2k1)
      acd27(11)=dotproduct(l3,ninjaA1)
      acd27(12)=dotproduct(k5,ninjaA1)
      acd27(13)=dotproduct(ninjaA0,ninjaA1)
      acd27(14)=dotproduct(ninjaA1,ninjaA1)
      acd27(15)=dotproduct(k1,ninjaE3)
      acd27(16)=abb27(62)
      acd27(17)=abb27(57)
      acd27(18)=abb27(16)
      acd27(19)=dotproduct(k2,ninjaA0)
      acd27(20)=dotproduct(ninjaA0,spvak2k1)
      acd27(21)=dotproduct(l3,ninjaA0)
      acd27(22)=dotproduct(k5,ninjaA0)
      acd27(23)=dotproduct(ninjaA0,ninjaA0)
      acd27(24)=abb27(28)
      acd27(25)=abb27(20)
      acd27(26)=abb27(37)
      acd27(27)=dotproduct(l4,ninjaE3)
      acd27(28)=abb27(23)
      acd27(29)=abb27(19)
      acd27(30)=abb27(11)
      acd27(31)=dotproduct(ninjaE3,spval4k5)
      acd27(32)=abb27(15)
      acd27(33)=dotproduct(ninjaE3,spvak2k5)
      acd27(34)=abb27(69)
      acd27(35)=dotproduct(ninjaE3,spvak5k1)
      acd27(36)=abb27(31)
      acd27(37)=dotproduct(ninjaE3,spvak2l4)
      acd27(38)=abb27(56)
      acd27(39)=dotproduct(ninjaE3,spvak5l4)
      acd27(40)=abb27(64)
      acd27(41)=dotproduct(ninjaE3,spvak2l3)
      acd27(42)=abb27(13)
      acd27(43)=abb27(22)
      acd27(44)=dotproduct(ninjaE3,spvak5k2)
      acd27(45)=abb27(24)
      acd27(46)=abb27(25)
      acd27(47)=dotproduct(ninjaE3,spval3k5)
      acd27(48)=abb27(29)
      acd27(49)=abb27(32)
      acd27(50)=dotproduct(ninjaE3,spval3k2)
      acd27(51)=abb27(33)
      acd27(52)=dotproduct(ninjaE3,spval4k2)
      acd27(53)=abb27(35)
      acd27(54)=abb27(39)
      acd27(55)=dotproduct(ninjaE3,spvak5l3)
      acd27(56)=abb27(41)
      acd27(57)=acd27(4)+acd27(1)
      acd27(58)=acd27(3)*acd27(2)
      acd27(59)=acd27(58)*acd27(57)
      acd27(60)=acd27(9)*acd27(3)
      acd27(61)=acd27(7)*acd27(8)
      acd27(60)=acd27(61)+2.0_ki*acd27(60)
      acd27(57)=acd27(57)*acd27(60)
      acd27(60)=acd27(4)*acd27(1)
      acd27(62)=acd27(1)**2
      acd27(60)=acd27(60)+acd27(62)
      acd27(60)=acd27(60)*acd27(6)
      acd27(57)=-acd27(60)+acd27(57)
      acd27(60)=-acd27(10)*acd27(57)
      acd27(62)=acd27(4)*acd27(2)
      acd27(63)=acd27(1)*acd27(2)
      acd27(64)=acd27(62)+2.0_ki*acd27(63)
      acd27(64)=acd27(64)*acd27(6)
      acd27(65)=2.0_ki*acd27(9)
      acd27(58)=acd27(65)*acd27(58)
      acd27(61)=acd27(61)*acd27(2)
      acd27(58)=acd27(58)+acd27(61)
      acd27(61)=acd27(64)-acd27(58)
      acd27(64)=acd27(5)*acd27(61)
      acd27(66)=-ninjaP1-2.0_ki*acd27(13)
      acd27(66)=acd27(59)*acd27(66)
      acd27(67)=acd27(63)*acd27(6)
      acd27(58)=acd27(58)-acd27(67)
      acd27(67)=-acd27(12)*acd27(58)
      acd27(68)=acd27(62)+acd27(63)
      acd27(68)=acd27(68)*acd27(8)
      acd27(69)=-acd27(11)*acd27(68)
      acd27(60)=acd27(69)+acd27(67)+acd27(60)+acd27(64)+acd27(66)
      acd27(64)=-acd27(14)-ninjaP2
      acd27(64)=acd27(59)*acd27(64)
      acd27(66)=acd27(28)*acd27(27)
      acd27(67)=acd27(30)*acd27(65)
      acd27(69)=acd27(42)*acd27(41)
      acd27(70)=acd27(43)*acd27(31)
      acd27(71)=acd27(45)*acd27(44)
      acd27(72)=acd27(46)*acd27(33)
      acd27(73)=acd27(48)*acd27(47)
      acd27(74)=acd27(49)*acd27(37)
      acd27(75)=acd27(51)*acd27(50)
      acd27(76)=acd27(53)*acd27(52)
      acd27(77)=acd27(54)*acd27(39)
      acd27(78)=acd27(56)*acd27(55)
      acd27(66)=acd27(78)+acd27(77)+acd27(76)+acd27(75)+acd27(74)+acd27(73)+acd&
      &27(72)+acd27(71)+acd27(70)+acd27(69)+acd27(67)+acd27(66)
      acd27(66)=acd27(2)*acd27(66)
      acd27(67)=-acd27(27)*acd27(18)
      acd27(69)=acd27(24)*acd27(1)
      acd27(70)=acd27(32)*acd27(31)
      acd27(71)=acd27(34)*acd27(33)
      acd27(72)=acd27(36)*acd27(35)
      acd27(73)=-acd27(38)*acd27(37)
      acd27(74)=acd27(40)*acd27(39)
      acd27(67)=acd27(74)+acd27(73)+acd27(72)+acd27(71)+acd27(70)+acd27(69)+acd&
      &27(67)
      acd27(67)=acd27(65)*acd27(67)
      acd27(57)=-acd27(20)*acd27(57)
      acd27(61)=acd27(19)*acd27(61)
      acd27(65)=-acd27(65)-acd27(15)
      acd27(65)=acd27(17)*acd27(65)
      acd27(69)=acd27(26)*acd27(2)
      acd27(65)=acd27(69)+acd27(65)
      acd27(65)=acd27(7)*acd27(65)
      acd27(69)=-ninjaP0-acd27(23)
      acd27(69)=acd27(59)*acd27(69)
      acd27(70)=acd27(9)**2
      acd27(71)=-acd27(15)*acd27(9)
      acd27(70)=-2.0_ki*acd27(70)+acd27(71)
      acd27(70)=acd27(18)*acd27(70)
      acd27(58)=-acd27(22)*acd27(58)
      acd27(68)=-acd27(21)*acd27(68)
      acd27(71)=acd27(16)*acd27(15)*acd27(1)
      acd27(63)=acd27(25)*acd27(63)
      acd27(62)=acd27(29)*acd27(62)
      acd27(57)=acd27(62)+acd27(63)+acd27(71)+acd27(68)+acd27(58)+2.0_ki*acd27(&
      &70)+acd27(57)+acd27(61)+acd27(66)+acd27(67)+acd27(69)+acd27(65)
      brack(ninjaidxt0x0mu0)=acd27(57)
      brack(ninjaidxt0x0mu2)=-acd27(59)
      brack(ninjaidxt0x1mu0)=acd27(60)
      brack(ninjaidxt0x2mu0)=acd27(64)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d27h3_ninja_t2_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd27h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3+k4
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
end module p0_gg_hhg_d27h3l132_qp
