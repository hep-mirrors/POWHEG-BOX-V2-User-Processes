module     p0_gg_hhg_d29h4l132_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d29h4l132_qp.f90
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
      use p0_gg_hhg_abbrevd29h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(22) :: acd29
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd29(1)=dotproduct(k2,ninjaE3)
      acd29(2)=dotproduct(ninjaE3,spvak1k2)
      acd29(3)=abb29(15)
      acd29(4)=dotproduct(ninjaA0,ninjaE3)
      acd29(5)=abb29(23)
      acd29(6)=dotproduct(ninjaE3,spvak5k2)
      acd29(7)=dotproduct(ninjaE3,spvak1k5)
      acd29(8)=abb29(58)
      acd29(9)=dotproduct(ninjaE3,spvak1l4)
      acd29(10)=dotproduct(ninjaE3,spval4k2)
      acd29(11)=abb29(59)
      acd29(12)=dotproduct(ninjaE3,spvak2k5)
      acd29(13)=abb29(29)
      acd29(14)=dotproduct(ninjaE3,spvak2l4)
      acd29(15)=abb29(61)
      acd29(16)=dotproduct(ninjaE3,spval4k5)
      acd29(17)=dotproduct(ninjaE3,spvak5l4)
      acd29(18)=2.0_ki*acd29(4)
      acd29(19)=acd29(5)*acd29(18)
      acd29(20)=acd29(1)*acd29(3)
      acd29(19)=acd29(20)+acd29(19)
      acd29(19)=acd29(2)*acd29(19)
      acd29(20)=-acd29(10)*acd29(9)*acd29(11)
      acd29(21)=acd29(6)*acd29(7)*acd29(8)
      acd29(19)=acd29(20)+acd29(21)+acd29(19)
      acd29(19)=acd29(1)*acd29(19)
      acd29(20)=-acd29(15)*acd29(9)*acd29(16)
      acd29(18)=-acd29(7)*acd29(11)*acd29(18)
      acd29(18)=acd29(20)+acd29(18)
      acd29(18)=acd29(6)*acd29(18)
      acd29(20)=acd29(10)*acd29(15)
      acd29(21)=-acd29(14)*acd29(20)
      acd29(22)=acd29(6)*acd29(12)*acd29(13)
      acd29(21)=acd29(21)+acd29(22)
      acd29(21)=acd29(2)*acd29(21)
      acd29(20)=-acd29(7)*acd29(17)*acd29(20)
      acd29(18)=acd29(19)+acd29(21)+acd29(20)+acd29(18)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd29(18)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd29h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(78) :: acd29
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd29(1)=dotproduct(k2,ninjaE3)
      acd29(2)=dotproduct(ninjaE3,spvak1k2)
      acd29(3)=abb29(23)
      acd29(4)=dotproduct(ninjaE3,spvak5k2)
      acd29(5)=dotproduct(ninjaE3,spvak1k5)
      acd29(6)=abb29(59)
      acd29(7)=dotproduct(k2,ninjaA1)
      acd29(8)=abb29(15)
      acd29(9)=dotproduct(ninjaA0,ninjaE3)
      acd29(10)=dotproduct(ninjaE3,spvak1l4)
      acd29(11)=dotproduct(ninjaE3,spval4k2)
      acd29(12)=abb29(58)
      acd29(13)=dotproduct(ninjaA1,spvak1k2)
      acd29(14)=dotproduct(ninjaA0,ninjaA1)
      acd29(15)=dotproduct(ninjaA1,spvak1l4)
      acd29(16)=dotproduct(ninjaA1,spvak5k2)
      acd29(17)=dotproduct(ninjaA1,spval4k2)
      acd29(18)=dotproduct(ninjaA1,spvak1k5)
      acd29(19)=dotproduct(ninjaE3,spvak2k5)
      acd29(20)=abb29(29)
      acd29(21)=dotproduct(ninjaE3,spvak2l4)
      acd29(22)=abb29(61)
      acd29(23)=dotproduct(ninjaE3,spval4k5)
      acd29(24)=dotproduct(ninjaA1,spval4k5)
      acd29(25)=dotproduct(ninjaE3,spvak5l4)
      acd29(26)=dotproduct(ninjaA1,spvak2k5)
      acd29(27)=dotproduct(ninjaA1,spvak2l4)
      acd29(28)=dotproduct(ninjaA1,spvak5l4)
      acd29(29)=dotproduct(ninjaA1,ninjaA1)
      acd29(30)=dotproduct(k2,ninjaA0)
      acd29(31)=dotproduct(ninjaA0,spvak1k2)
      acd29(32)=dotproduct(ninjaA0,ninjaA0)
      acd29(33)=abb29(53)
      acd29(34)=dotproduct(ninjaA0,spvak1l4)
      acd29(35)=dotproduct(ninjaA0,spvak5k2)
      acd29(36)=dotproduct(ninjaA0,spval4k2)
      acd29(37)=dotproduct(ninjaA0,spvak1k5)
      acd29(38)=abb29(12)
      acd29(39)=abb29(13)
      acd29(40)=abb29(27)
      acd29(41)=abb29(19)
      acd29(42)=abb29(35)
      acd29(43)=abb29(44)
      acd29(44)=dotproduct(ninjaA0,spval4k5)
      acd29(45)=dotproduct(ninjaA0,spvak2k5)
      acd29(46)=dotproduct(ninjaA0,spvak2l4)
      acd29(47)=dotproduct(ninjaA0,spvak5l4)
      acd29(48)=abb29(18)
      acd29(49)=abb29(22)
      acd29(50)=abb29(28)
      acd29(51)=abb29(14)
      acd29(52)=abb29(16)
      acd29(53)=abb29(36)
      acd29(54)=abb29(57)
      acd29(55)=abb29(60)
      acd29(56)=acd29(5)*acd29(4)
      acd29(57)=acd29(56)*acd29(6)
      acd29(58)=acd29(2)*acd29(1)
      acd29(59)=acd29(58)*acd29(3)
      acd29(57)=acd29(57)-acd29(59)
      acd29(59)=acd29(56)*acd29(12)
      acd29(60)=acd29(58)*acd29(8)
      acd29(61)=2.0_ki*acd29(9)
      acd29(62)=acd29(61)*acd29(3)
      acd29(63)=acd29(2)*acd29(62)
      acd29(64)=acd29(10)*acd29(6)
      acd29(65)=acd29(64)*acd29(11)
      acd29(59)=2.0_ki*acd29(60)-acd29(65)+acd29(59)+acd29(63)
      acd29(60)=acd29(7)*acd29(59)
      acd29(63)=-acd29(21)*acd29(13)
      acd29(65)=-acd29(27)*acd29(2)
      acd29(66)=-acd29(28)*acd29(5)
      acd29(63)=acd29(66)+acd29(65)+acd29(63)
      acd29(65)=acd29(11)*acd29(22)
      acd29(63)=acd29(65)*acd29(63)
      acd29(62)=acd29(1)*acd29(62)
      acd29(66)=acd29(8)*acd29(1)**2
      acd29(67)=acd29(19)*acd29(20)
      acd29(68)=acd29(67)*acd29(4)
      acd29(62)=acd29(68)+acd29(62)+acd29(66)
      acd29(66)=acd29(13)*acd29(62)
      acd29(68)=acd29(61)*acd29(6)
      acd29(69)=acd29(12)*acd29(1)
      acd29(68)=acd29(68)-acd29(69)
      acd29(69)=acd29(5)*acd29(68)
      acd29(70)=acd29(23)*acd29(22)
      acd29(71)=acd29(70)*acd29(10)
      acd29(67)=acd29(67)*acd29(2)
      acd29(67)=acd29(71)-acd29(67)+acd29(69)
      acd29(69)=-acd29(16)*acd29(67)
      acd29(71)=-ninjaP1-2.0_ki*acd29(14)
      acd29(71)=acd29(57)*acd29(71)
      acd29(72)=acd29(21)*acd29(2)
      acd29(73)=acd29(25)*acd29(5)
      acd29(72)=acd29(72)+acd29(73)
      acd29(72)=acd29(72)*acd29(22)
      acd29(64)=acd29(64)*acd29(1)
      acd29(64)=acd29(72)+acd29(64)
      acd29(72)=-acd29(17)*acd29(64)
      acd29(68)=acd29(4)*acd29(68)
      acd29(73)=acd29(65)*acd29(25)
      acd29(68)=acd29(73)+acd29(68)
      acd29(73)=-acd29(18)*acd29(68)
      acd29(70)=acd29(70)*acd29(4)
      acd29(74)=acd29(1)*acd29(11)*acd29(6)
      acd29(70)=acd29(70)+acd29(74)
      acd29(74)=-acd29(15)*acd29(70)
      acd29(75)=acd29(22)*acd29(4)
      acd29(76)=-acd29(24)*acd29(10)*acd29(75)
      acd29(77)=acd29(20)*acd29(4)
      acd29(78)=acd29(26)*acd29(2)*acd29(77)
      acd29(60)=acd29(78)+acd29(76)+acd29(74)+acd29(73)+acd29(72)+acd29(69)+acd&
      &29(66)+acd29(63)+acd29(71)+acd29(60)
      acd29(63)=-acd29(29)-ninjaP2
      acd29(63)=acd29(57)*acd29(63)
      acd29(66)=acd29(41)*acd29(61)
      acd29(69)=acd29(45)*acd29(77)
      acd29(71)=-acd29(46)*acd29(65)
      acd29(72)=acd29(48)*acd29(4)
      acd29(73)=acd29(49)*acd29(11)
      acd29(74)=acd29(50)*acd29(19)
      acd29(66)=acd29(74)+acd29(73)+acd29(72)+acd29(71)+acd29(69)+acd29(66)
      acd29(66)=acd29(2)*acd29(66)
      acd29(69)=acd29(39)*acd29(1)
      acd29(71)=-acd29(44)*acd29(75)
      acd29(72)=acd29(51)*acd29(4)
      acd29(73)=acd29(52)*acd29(23)
      acd29(74)=acd29(53)*acd29(11)
      acd29(69)=acd29(74)+acd29(73)+acd29(72)+acd29(71)+acd29(69)
      acd29(69)=acd29(10)*acd29(69)
      acd29(71)=acd29(40)*acd29(1)
      acd29(72)=acd29(43)*acd29(61)
      acd29(73)=-acd29(47)*acd29(65)
      acd29(74)=acd29(55)*acd29(11)
      acd29(71)=acd29(74)+acd29(73)+acd29(72)+acd29(71)
      acd29(71)=acd29(5)*acd29(71)
      acd29(59)=acd29(30)*acd29(59)
      acd29(65)=-acd29(21)*acd29(65)
      acd29(62)=acd29(65)+acd29(62)
      acd29(62)=acd29(31)*acd29(62)
      acd29(65)=-acd29(35)*acd29(67)
      acd29(67)=acd29(33)*acd29(1)
      acd29(72)=acd29(42)*acd29(4)
      acd29(67)=acd29(72)+acd29(67)
      acd29(61)=acd29(61)*acd29(67)
      acd29(67)=-ninjaP0-acd29(32)
      acd29(67)=acd29(57)*acd29(67)
      acd29(64)=-acd29(36)*acd29(64)
      acd29(68)=-acd29(37)*acd29(68)
      acd29(70)=-acd29(34)*acd29(70)
      acd29(58)=acd29(38)*acd29(58)
      acd29(56)=acd29(54)*acd29(56)
      acd29(56)=acd29(56)+acd29(58)+acd29(70)+acd29(68)+acd29(64)+acd29(65)+acd&
      &29(59)+acd29(62)+acd29(66)+acd29(69)+acd29(71)+acd29(67)+acd29(61)
      brack(ninjaidxt0x0mu0)=acd29(56)
      brack(ninjaidxt0x0mu2)=-acd29(57)
      brack(ninjaidxt0x1mu0)=acd29(60)
      brack(ninjaidxt0x2mu0)=acd29(63)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d29h4_qp_ninja_t2")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd29h4_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3+k5+k4
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
end module     p0_gg_hhg_d29h4l132_qp
