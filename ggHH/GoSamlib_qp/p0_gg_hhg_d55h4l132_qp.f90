module p0_gg_hhg_d55h4l132_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d55h4l132.f90
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
      use p0_gg_hhg_abbrevd55h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd55
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
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd55h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(71) :: acd55
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd55(1)=dotproduct(k1,ninjaE3)
      acd55(2)=dotproduct(k2,ninjaE3)
      acd55(3)=dotproduct(ninjaE3,spvak5k2)
      acd55(4)=abb55(125)
      acd55(5)=dotproduct(ninjaE3,spvak1k2)
      acd55(6)=abb55(101)
      acd55(7)=dotproduct(l3,ninjaE3)
      acd55(8)=abb55(123)
      acd55(9)=abb55(169)
      acd55(10)=dotproduct(k5,ninjaE3)
      acd55(11)=abb55(87)
      acd55(12)=dotproduct(ninjaA0,ninjaE3)
      acd55(13)=abb55(127)
      acd55(14)=abb55(65)
      acd55(15)=dotproduct(ninjaE3,spvak2k5)
      acd55(16)=abb55(156)
      acd55(17)=abb55(23)
      acd55(18)=dotproduct(ninjaE3,spval3k2)
      acd55(19)=abb55(159)
      acd55(20)=abb55(95)
      acd55(21)=abb55(130)
      acd55(22)=dotproduct(l4,ninjaE3)
      acd55(23)=abb55(104)
      acd55(24)=abb55(70)
      acd55(25)=abb55(124)
      acd55(26)=abb55(61)
      acd55(27)=abb55(86)
      acd55(28)=abb55(55)
      acd55(29)=abb55(21)
      acd55(30)=dotproduct(ninjaE3,spvak5k1)
      acd55(31)=abb55(51)
      acd55(32)=abb55(63)
      acd55(33)=abb55(9)
      acd55(34)=abb55(60)
      acd55(35)=abb55(54)
      acd55(36)=abb55(69)
      acd55(37)=abb55(79)
      acd55(38)=abb55(67)
      acd55(39)=abb55(122)
      acd55(40)=abb55(77)
      acd55(41)=abb55(157)
      acd55(42)=dotproduct(ninjaE3,spvak2l4)
      acd55(43)=abb55(161)
      acd55(44)=dotproduct(ninjaE3,spvak1k5)
      acd55(45)=abb55(126)
      acd55(46)=dotproduct(ninjaE3,spval4k5)
      acd55(47)=abb55(129)
      acd55(48)=abb55(34)
      acd55(49)=abb55(136)
      acd55(50)=dotproduct(ninjaE3,spvak2k1)
      acd55(51)=abb55(11)
      acd55(52)=abb55(40)
      acd55(53)=abb55(45)
      acd55(54)=abb55(49)
      acd55(55)=abb55(114)
      acd55(56)=abb55(13)
      acd55(57)=abb55(25)
      acd55(58)=dotproduct(ninjaE3,spvak5l3)
      acd55(59)=abb55(26)
      acd55(60)=abb55(43)
      acd55(61)=acd55(46)*acd55(47)
      acd55(62)=acd55(44)*acd55(45)
      acd55(63)=acd55(42)*acd55(43)
      acd55(64)=acd55(22)*acd55(36)
      acd55(65)=acd55(7)*acd55(33)
      acd55(66)=acd55(1)*acd55(13)
      acd55(67)=acd55(15)*acd55(41)
      acd55(68)=acd55(2)*acd55(25)
      acd55(69)=2.0_ki*acd55(12)
      acd55(70)=acd55(39)*acd55(69)
      acd55(61)=acd55(70)+acd55(68)+acd55(67)+acd55(66)+acd55(65)+acd55(64)+acd&
      &55(63)+acd55(61)+acd55(62)
      acd55(61)=acd55(61)*acd55(69)
      acd55(62)=acd55(7)*acd55(8)
      acd55(63)=acd55(2)*acd55(4)
      acd55(62)=acd55(63)+acd55(62)
      acd55(62)=acd55(1)*acd55(62)
      acd55(63)=acd55(15)*acd55(1)
      acd55(64)=acd55(16)*acd55(63)
      acd55(61)=acd55(61)+acd55(64)+acd55(62)
      acd55(61)=acd55(3)*acd55(61)
      acd55(62)=acd55(30)*acd55(31)
      acd55(64)=acd55(22)*acd55(23)
      acd55(65)=acd55(10)*acd55(24)
      acd55(66)=acd55(7)*acd55(21)
      acd55(67)=acd55(1)*acd55(6)
      acd55(68)=acd55(15)*acd55(29)
      acd55(70)=acd55(2)*acd55(20)
      acd55(62)=acd55(70)+acd55(68)+acd55(67)+acd55(66)+acd55(65)+acd55(62)+acd&
      &55(64)
      acd55(62)=acd55(2)*acd55(62)
      acd55(64)=acd55(22)*acd55(37)
      acd55(65)=acd55(10)*acd55(38)
      acd55(66)=acd55(7)*acd55(34)
      acd55(67)=acd55(1)*acd55(14)
      acd55(68)=acd55(15)*acd55(48)
      acd55(70)=acd55(2)*acd55(26)
      acd55(71)=acd55(40)*acd55(69)
      acd55(64)=acd55(71)+acd55(70)+acd55(68)+acd55(67)+acd55(66)+acd55(64)+acd&
      &55(65)
      acd55(64)=acd55(64)*acd55(69)
      acd55(65)=acd55(50)*acd55(51)
      acd55(66)=-acd55(46)*acd55(55)
      acd55(67)=acd55(44)*acd55(54)
      acd55(68)=acd55(42)*acd55(53)
      acd55(70)=acd55(15)*acd55(52)
      acd55(71)=acd55(2)*acd55(27)
      acd55(65)=acd55(71)+acd55(70)+acd55(68)+acd55(67)+acd55(65)+acd55(66)
      acd55(65)=acd55(3)*acd55(65)
      acd55(66)=acd55(58)*acd55(59)
      acd55(67)=acd55(30)*acd55(60)
      acd55(68)=acd55(18)*acd55(57)
      acd55(70)=acd55(1)*acd55(17)
      acd55(66)=acd55(70)+acd55(68)+acd55(66)+acd55(67)
      acd55(66)=acd55(15)*acd55(66)
      acd55(67)=acd55(7)*acd55(35)
      acd55(68)=acd55(15)*acd55(56)
      acd55(70)=acd55(2)*acd55(28)
      acd55(67)=acd55(70)+acd55(67)+acd55(68)
      acd55(67)=acd55(5)*acd55(67)
      acd55(68)=-acd55(30)*acd55(36)
      acd55(70)=acd55(10)*acd55(32)
      acd55(68)=acd55(68)+acd55(70)
      acd55(68)=acd55(7)*acd55(68)
      acd55(70)=acd55(10)*acd55(11)
      acd55(71)=acd55(7)*acd55(9)
      acd55(71)=acd55(70)+acd55(71)
      acd55(71)=acd55(1)*acd55(71)
      acd55(70)=-acd55(22)*acd55(70)
      acd55(62)=acd55(67)+acd55(65)+acd55(64)+acd55(62)+acd55(66)+acd55(71)+acd&
      &55(70)+acd55(68)
      acd55(62)=acd55(5)*acd55(62)
      acd55(63)=acd55(19)*acd55(63)
      acd55(64)=acd55(49)*acd55(69)*acd55(15)
      acd55(63)=acd55(63)+acd55(64)
      acd55(63)=acd55(18)*acd55(63)
      acd55(61)=acd55(62)+acd55(61)+acd55(63)
      brack(ninjaidxt0x0mu0)=acd55(61)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d55h4_ninja_t2_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd55h4_qp
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
end module p0_gg_hhg_d55h4l132_qp
