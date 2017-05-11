module p0_gg_hhg_d57h3l132_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity3d57h3l132.f90
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
      use p0_gg_hhg_abbrevd57h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd57
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
      use p0_gg_hhg_abbrevd57h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(70) :: acd57
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd57(1)=dotproduct(k1,ninjaE3)
      acd57(2)=dotproduct(k2,ninjaE3)
      acd57(3)=dotproduct(ninjaE3,spvak2k1)
      acd57(4)=abb57(95)
      acd57(5)=dotproduct(ninjaE3,spvak2k5)
      acd57(6)=abb57(157)
      acd57(7)=dotproduct(l3,ninjaE3)
      acd57(8)=abb57(146)
      acd57(9)=abb57(39)
      acd57(10)=dotproduct(k5,ninjaE3)
      acd57(11)=abb57(176)
      acd57(12)=dotproduct(ninjaA0,ninjaE3)
      acd57(13)=abb57(63)
      acd57(14)=abb57(148)
      acd57(15)=dotproduct(ninjaE3,spvak5k1)
      acd57(16)=abb57(160)
      acd57(17)=dotproduct(ninjaE3,spvak5l3)
      acd57(18)=abb57(149)
      acd57(19)=dotproduct(ninjaE3,spval3k2)
      acd57(20)=abb57(50)
      acd57(21)=abb57(97)
      acd57(22)=abb57(111)
      acd57(23)=dotproduct(l4,ninjaE3)
      acd57(24)=abb57(106)
      acd57(25)=abb57(78)
      acd57(26)=abb57(12)
      acd57(27)=abb57(142)
      acd57(28)=abb57(28)
      acd57(29)=abb57(42)
      acd57(30)=dotproduct(ninjaE3,spvak5k2)
      acd57(31)=abb57(87)
      acd57(32)=dotproduct(ninjaE3,spvak1k2)
      acd57(33)=abb57(73)
      acd57(34)=abb57(109)
      acd57(35)=abb57(52)
      acd57(36)=abb57(141)
      acd57(37)=abb57(72)
      acd57(38)=abb57(60)
      acd57(39)=abb57(35)
      acd57(40)=abb57(20)
      acd57(41)=abb57(17)
      acd57(42)=abb57(31)
      acd57(43)=abb57(56)
      acd57(44)=abb57(88)
      acd57(45)=abb57(162)
      acd57(46)=abb57(79)
      acd57(47)=abb57(139)
      acd57(48)=abb57(80)
      acd57(49)=dotproduct(ninjaE3,spvak2l4)
      acd57(50)=abb57(119)
      acd57(51)=abb57(30)
      acd57(52)=abb57(23)
      acd57(53)=abb57(26)
      acd57(54)=abb57(34)
      acd57(55)=abb57(53)
      acd57(56)=abb57(62)
      acd57(57)=abb57(69)
      acd57(58)=dotproduct(ninjaE3,spvak1k5)
      acd57(59)=dotproduct(ninjaE3,spval4k5)
      acd57(60)=abb57(113)
      acd57(61)=acd57(19)*acd57(48)
      acd57(62)=acd57(17)*acd57(47)
      acd57(63)=acd57(23)*acd57(40)
      acd57(64)=acd57(15)*acd57(45)
      acd57(65)=acd57(7)*acd57(36)
      acd57(66)=acd57(30)*acd57(46)
      acd57(67)=acd57(1)*acd57(14)
      acd57(68)=acd57(2)*acd57(27)
      acd57(69)=2.0_ki*acd57(12)
      acd57(70)=acd57(43)*acd57(69)
      acd57(61)=acd57(70)+acd57(68)+acd57(67)+acd57(66)+acd57(65)+acd57(64)+acd&
      &57(63)+acd57(61)+acd57(62)
      acd57(61)=acd57(61)*acd57(69)
      acd57(62)=acd57(19)*acd57(20)
      acd57(63)=acd57(17)*acd57(18)
      acd57(64)=acd57(15)*acd57(16)
      acd57(65)=acd57(7)*acd57(9)
      acd57(66)=acd57(2)*acd57(6)
      acd57(62)=acd57(66)+acd57(65)+acd57(64)+acd57(62)+acd57(63)
      acd57(62)=acd57(1)*acd57(62)
      acd57(61)=acd57(61)+acd57(62)
      acd57(61)=acd57(5)*acd57(61)
      acd57(62)=acd57(32)*acd57(33)
      acd57(63)=acd57(23)*acd57(24)
      acd57(64)=acd57(15)*acd57(29)
      acd57(65)=acd57(10)*acd57(25)
      acd57(66)=acd57(7)*acd57(22)
      acd57(67)=acd57(30)*acd57(31)
      acd57(68)=acd57(1)*acd57(4)
      acd57(70)=acd57(2)*acd57(21)
      acd57(62)=acd57(70)+acd57(68)+acd57(67)+acd57(66)+acd57(65)+acd57(64)+acd&
      &57(62)+acd57(63)
      acd57(62)=acd57(2)*acd57(62)
      acd57(63)=acd57(23)*acd57(39)
      acd57(64)=acd57(10)*acd57(41)
      acd57(65)=acd57(7)*acd57(35)
      acd57(66)=acd57(30)*acd57(44)
      acd57(67)=acd57(1)*acd57(13)
      acd57(68)=acd57(2)*acd57(26)
      acd57(70)=acd57(42)*acd57(69)
      acd57(63)=acd57(70)+acd57(68)+acd57(67)+acd57(66)+acd57(65)+acd57(63)+acd&
      &57(64)
      acd57(63)=acd57(63)*acd57(69)
      acd57(64)=acd57(32)*acd57(56)
      acd57(65)=acd57(19)*acd57(55)
      acd57(66)=acd57(17)*acd57(54)
      acd57(67)=acd57(15)*acd57(52)
      acd57(68)=acd57(30)*acd57(53)
      acd57(70)=acd57(2)*acd57(28)
      acd57(64)=acd57(70)+acd57(68)+acd57(67)+acd57(66)+acd57(64)+acd57(65)
      acd57(64)=acd57(5)*acd57(64)
      acd57(65)=acd57(59)*acd57(60)
      acd57(66)=acd57(49)*acd57(57)
      acd57(67)=-acd57(46)*acd57(58)
      acd57(68)=acd57(3)*acd57(51)
      acd57(65)=acd57(68)+acd57(67)+acd57(65)+acd57(66)
      acd57(65)=acd57(30)*acd57(65)
      acd57(66)=acd57(32)*acd57(38)
      acd57(67)=acd57(15)*acd57(37)
      acd57(68)=acd57(10)*acd57(34)
      acd57(66)=acd57(68)+acd57(66)+acd57(67)
      acd57(66)=acd57(7)*acd57(66)
      acd57(67)=acd57(10)*acd57(11)
      acd57(68)=acd57(7)*acd57(8)
      acd57(68)=acd57(67)+acd57(68)
      acd57(68)=acd57(1)*acd57(68)
      acd57(67)=-acd57(23)*acd57(67)
      acd57(62)=acd57(64)+acd57(63)+acd57(62)+acd57(68)+acd57(67)+acd57(66)+acd&
      &57(65)
      acd57(62)=acd57(3)*acd57(62)
      acd57(63)=acd57(30)*acd57(49)*acd57(50)*acd57(69)
      acd57(61)=acd57(62)+acd57(63)+acd57(61)
      brack(ninjaidxt0x0mu0)=acd57(61)
      brack(ninjaidxt0x0mu2)=0.0_ki
      brack(ninjaidxt0x1mu0)=0.0_ki
      brack(ninjaidxt0x2mu0)=0.0_ki
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d57h3_ninja_t2_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd57h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a0, a1, b, c
      complex(ki), dimension(0:2), intent(in) :: param
      complex(ki), dimension(4) :: vecA0, vecA1, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k5
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
end module p0_gg_hhg_d57h3l132_qp
