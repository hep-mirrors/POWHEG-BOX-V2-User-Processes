module     p0_gg_hhg_d27h4l132_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d27h4l132_qp.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki => ki_qp
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
      use p0_gg_hhg_abbrevd27h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd27
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd27(1)=dotproduct(k2,ninjaE3)
      acd27(2)=dotproduct(ninjaE3,spvak1k2)
      acd27(3)=abb27(15)
      acd27(4)=dotproduct(ninjaA0,ninjaE3)
      acd27(5)=abb27(23)
      acd27(6)=dotproduct(ninjaE3,spvak5k2)
      acd27(7)=dotproduct(ninjaE3,spvak1k5)
      acd27(8)=abb27(58)
      acd27(9)=dotproduct(ninjaE3,spvak1l3)
      acd27(10)=dotproduct(ninjaE3,spval3k2)
      acd27(11)=abb27(59)
      acd27(12)=dotproduct(ninjaE3,spvak2k5)
      acd27(13)=abb27(29)
      acd27(14)=dotproduct(ninjaE3,spvak2l3)
      acd27(15)=abb27(61)
      acd27(16)=dotproduct(ninjaE3,spval3k5)
      acd27(17)=dotproduct(ninjaE3,spvak5l3)
      acd27(18)=2.0_ki*acd27(4)
      acd27(19)=acd27(5)*acd27(18)
      acd27(20)=acd27(1)*acd27(3)
      acd27(19)=acd27(20)+acd27(19)
      acd27(19)=acd27(2)*acd27(19)
      acd27(20)=-acd27(10)*acd27(9)*acd27(11)
      acd27(21)=acd27(6)*acd27(7)*acd27(8)
      acd27(19)=acd27(20)+acd27(21)+acd27(19)
      acd27(19)=acd27(1)*acd27(19)
      acd27(20)=-acd27(15)*acd27(9)*acd27(16)
      acd27(18)=-acd27(7)*acd27(11)*acd27(18)
      acd27(18)=acd27(20)+acd27(18)
      acd27(18)=acd27(6)*acd27(18)
      acd27(20)=acd27(10)*acd27(15)
      acd27(21)=-acd27(14)*acd27(20)
      acd27(22)=acd27(6)*acd27(12)*acd27(13)
      acd27(21)=acd27(21)+acd27(22)
      acd27(21)=acd27(2)*acd27(21)
      acd27(20)=-acd27(7)*acd27(17)*acd27(20)
      acd27(18)=acd27(19)+acd27(21)+acd27(20)+acd27(18)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd27(18)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd27h4_qp
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
      acd27(2)=dotproduct(ninjaE3,spvak1k2)
      acd27(3)=abb27(23)
      acd27(4)=dotproduct(ninjaE3,spvak5k2)
      acd27(5)=dotproduct(ninjaE3,spvak1k5)
      acd27(6)=abb27(59)
      acd27(7)=dotproduct(k2,ninjaA1)
      acd27(8)=abb27(15)
      acd27(9)=dotproduct(ninjaA0,ninjaE3)
      acd27(10)=dotproduct(ninjaE3,spvak1l3)
      acd27(11)=dotproduct(ninjaE3,spval3k2)
      acd27(12)=abb27(58)
      acd27(13)=dotproduct(ninjaA1,spvak1k2)
      acd27(14)=dotproduct(ninjaA0,ninjaA1)
      acd27(15)=dotproduct(ninjaA1,spvak1l3)
      acd27(16)=dotproduct(ninjaA1,spvak5k2)
      acd27(17)=dotproduct(ninjaA1,spval3k2)
      acd27(18)=dotproduct(ninjaA1,spvak1k5)
      acd27(19)=dotproduct(ninjaE3,spvak2k5)
      acd27(20)=abb27(29)
      acd27(21)=dotproduct(ninjaE3,spvak2l3)
      acd27(22)=abb27(61)
      acd27(23)=dotproduct(ninjaE3,spval3k5)
      acd27(24)=dotproduct(ninjaA1,spval3k5)
      acd27(25)=dotproduct(ninjaE3,spvak5l3)
      acd27(26)=dotproduct(ninjaA1,spvak2k5)
      acd27(27)=dotproduct(ninjaA1,spvak2l3)
      acd27(28)=dotproduct(ninjaA1,spvak5l3)
      acd27(29)=dotproduct(ninjaA1,ninjaA1)
      acd27(30)=dotproduct(k2,ninjaA0)
      acd27(31)=dotproduct(ninjaA0,spvak1k2)
      acd27(32)=dotproduct(ninjaA0,ninjaA0)
      acd27(33)=abb27(53)
      acd27(34)=dotproduct(ninjaA0,spvak1l3)
      acd27(35)=dotproduct(ninjaA0,spvak5k2)
      acd27(36)=dotproduct(ninjaA0,spval3k2)
      acd27(37)=dotproduct(ninjaA0,spvak1k5)
      acd27(38)=abb27(12)
      acd27(39)=abb27(13)
      acd27(40)=abb27(27)
      acd27(41)=abb27(19)
      acd27(42)=abb27(35)
      acd27(43)=abb27(44)
      acd27(44)=dotproduct(ninjaA0,spval3k5)
      acd27(45)=dotproduct(ninjaA0,spvak2k5)
      acd27(46)=dotproduct(ninjaA0,spvak2l3)
      acd27(47)=dotproduct(ninjaA0,spvak5l3)
      acd27(48)=abb27(18)
      acd27(49)=abb27(22)
      acd27(50)=abb27(28)
      acd27(51)=abb27(14)
      acd27(52)=abb27(16)
      acd27(53)=abb27(36)
      acd27(54)=abb27(57)
      acd27(55)=abb27(60)
      acd27(56)=acd27(5)*acd27(4)
      acd27(57)=acd27(56)*acd27(6)
      acd27(58)=acd27(2)*acd27(1)
      acd27(59)=acd27(58)*acd27(3)
      acd27(57)=acd27(57)-acd27(59)
      acd27(59)=acd27(56)*acd27(12)
      acd27(60)=acd27(58)*acd27(8)
      acd27(61)=2.0_ki*acd27(9)
      acd27(62)=acd27(61)*acd27(3)
      acd27(63)=acd27(2)*acd27(62)
      acd27(64)=acd27(10)*acd27(6)
      acd27(65)=acd27(64)*acd27(11)
      acd27(59)=2.0_ki*acd27(60)-acd27(65)+acd27(59)+acd27(63)
      acd27(60)=acd27(7)*acd27(59)
      acd27(63)=-acd27(21)*acd27(13)
      acd27(65)=-acd27(27)*acd27(2)
      acd27(66)=-acd27(28)*acd27(5)
      acd27(63)=acd27(66)+acd27(65)+acd27(63)
      acd27(65)=acd27(11)*acd27(22)
      acd27(63)=acd27(65)*acd27(63)
      acd27(62)=acd27(1)*acd27(62)
      acd27(66)=acd27(8)*acd27(1)**2
      acd27(67)=acd27(19)*acd27(20)
      acd27(68)=acd27(67)*acd27(4)
      acd27(62)=acd27(68)+acd27(62)+acd27(66)
      acd27(66)=acd27(13)*acd27(62)
      acd27(68)=acd27(61)*acd27(6)
      acd27(69)=acd27(12)*acd27(1)
      acd27(68)=acd27(68)-acd27(69)
      acd27(69)=acd27(5)*acd27(68)
      acd27(70)=acd27(23)*acd27(22)
      acd27(71)=acd27(70)*acd27(10)
      acd27(67)=acd27(67)*acd27(2)
      acd27(67)=acd27(71)-acd27(67)+acd27(69)
      acd27(69)=-acd27(16)*acd27(67)
      acd27(71)=-ninjaP1-2.0_ki*acd27(14)
      acd27(71)=acd27(57)*acd27(71)
      acd27(72)=acd27(21)*acd27(2)
      acd27(73)=acd27(25)*acd27(5)
      acd27(72)=acd27(72)+acd27(73)
      acd27(72)=acd27(72)*acd27(22)
      acd27(64)=acd27(64)*acd27(1)
      acd27(64)=acd27(72)+acd27(64)
      acd27(72)=-acd27(17)*acd27(64)
      acd27(68)=acd27(4)*acd27(68)
      acd27(73)=acd27(65)*acd27(25)
      acd27(68)=acd27(73)+acd27(68)
      acd27(73)=-acd27(18)*acd27(68)
      acd27(70)=acd27(70)*acd27(4)
      acd27(74)=acd27(1)*acd27(11)*acd27(6)
      acd27(70)=acd27(70)+acd27(74)
      acd27(74)=-acd27(15)*acd27(70)
      acd27(75)=acd27(22)*acd27(4)
      acd27(76)=-acd27(24)*acd27(10)*acd27(75)
      acd27(77)=acd27(20)*acd27(4)
      acd27(78)=acd27(26)*acd27(2)*acd27(77)
      acd27(60)=acd27(78)+acd27(76)+acd27(74)+acd27(73)+acd27(72)+acd27(69)+acd&
      &27(66)+acd27(63)+acd27(71)+acd27(60)
      acd27(63)=-acd27(29)-ninjaP2
      acd27(63)=acd27(57)*acd27(63)
      acd27(66)=acd27(41)*acd27(61)
      acd27(69)=acd27(45)*acd27(77)
      acd27(71)=-acd27(46)*acd27(65)
      acd27(72)=acd27(48)*acd27(4)
      acd27(73)=acd27(49)*acd27(11)
      acd27(74)=acd27(50)*acd27(19)
      acd27(66)=acd27(74)+acd27(73)+acd27(72)+acd27(71)+acd27(69)+acd27(66)
      acd27(66)=acd27(2)*acd27(66)
      acd27(69)=acd27(39)*acd27(1)
      acd27(71)=-acd27(44)*acd27(75)
      acd27(72)=acd27(51)*acd27(4)
      acd27(73)=acd27(52)*acd27(23)
      acd27(74)=acd27(53)*acd27(11)
      acd27(69)=acd27(74)+acd27(73)+acd27(72)+acd27(71)+acd27(69)
      acd27(69)=acd27(10)*acd27(69)
      acd27(71)=acd27(40)*acd27(1)
      acd27(72)=acd27(43)*acd27(61)
      acd27(73)=-acd27(47)*acd27(65)
      acd27(74)=acd27(55)*acd27(11)
      acd27(71)=acd27(74)+acd27(73)+acd27(72)+acd27(71)
      acd27(71)=acd27(5)*acd27(71)
      acd27(59)=acd27(30)*acd27(59)
      acd27(65)=-acd27(21)*acd27(65)
      acd27(62)=acd27(65)+acd27(62)
      acd27(62)=acd27(31)*acd27(62)
      acd27(65)=-acd27(35)*acd27(67)
      acd27(67)=acd27(33)*acd27(1)
      acd27(72)=acd27(42)*acd27(4)
      acd27(67)=acd27(72)+acd27(67)
      acd27(61)=acd27(61)*acd27(67)
      acd27(67)=-ninjaP0-acd27(32)
      acd27(67)=acd27(57)*acd27(67)
      acd27(64)=-acd27(36)*acd27(64)
      acd27(68)=-acd27(37)*acd27(68)
      acd27(70)=-acd27(34)*acd27(70)
      acd27(58)=acd27(38)*acd27(58)
      acd27(56)=acd27(54)*acd27(56)
      acd27(56)=acd27(56)+acd27(58)+acd27(70)+acd27(68)+acd27(64)+acd27(65)+acd&
      &27(59)+acd27(62)+acd27(66)+acd27(69)+acd27(71)+acd27(67)+acd27(61)
      brack(ninjaidxt0x0mu0)=acd27(56)
      brack(ninjaidxt0x0mu2)=-acd27(57)
      brack(ninjaidxt0x1mu0)=acd27(60)
      brack(ninjaidxt0x2mu0)=acd27(63)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d27h4_qp_ninja_t2")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd27h4_qp
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
end module     p0_gg_hhg_d27h4l132_qp
