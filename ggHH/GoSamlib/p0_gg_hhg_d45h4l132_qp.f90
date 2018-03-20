module     p0_gg_hhg_d45h4l132_qp
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/ggHH_new/ &
   ! &GoSam_POWHEG/Virtual/p0_gg_hhg/helicity4d45h4l132_qp.f90
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
      use p0_gg_hhg_abbrevd45h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(21) :: acd45
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd45(1)=dotproduct(k1,ninjaE3)
      acd45(2)=dotproduct(k2,ninjaE3)
      acd45(3)=dotproduct(k5,ninjaE3)
      acd45(4)=dotproduct(ninjaE3,spvak1k2)
      acd45(5)=abb45(9)
      acd45(6)=abb45(30)
      acd45(7)=dotproduct(ninjaE3,spvak1k5)
      acd45(8)=dotproduct(ninjaE3,spvak5k2)
      acd45(9)=abb45(48)
      acd45(10)=dotproduct(ninjaE3,spval3k2)
      acd45(11)=dotproduct(ninjaE3,spvak1l3)
      acd45(12)=abb45(56)
      acd45(13)=dotproduct(ninjaE3,spvak5k1)
      acd45(14)=abb45(49)
      acd45(15)=dotproduct(ninjaE3,spvak5l3)
      acd45(16)=dotproduct(ninjaA0,ninjaE3)
      acd45(17)=dotproduct(ninjaE3,spvak2k5)
      acd45(18)=acd45(7)*acd45(14)
      acd45(19)=acd45(15)*acd45(18)
      acd45(20)=acd45(3)*acd45(11)*acd45(12)
      acd45(19)=acd45(19)+acd45(20)
      acd45(19)=acd45(10)*acd45(19)
      acd45(18)=-acd45(13)*acd45(18)
      acd45(20)=acd45(3)*acd45(1)*acd45(5)
      acd45(18)=acd45(18)+acd45(20)
      acd45(18)=acd45(4)*acd45(18)
      acd45(20)=acd45(7)*acd45(8)*acd45(9)
      acd45(21)=acd45(4)*acd45(3)*acd45(6)
      acd45(20)=acd45(20)+acd45(21)
      acd45(20)=acd45(2)*acd45(20)
      acd45(18)=acd45(20)+acd45(18)+acd45(19)
      acd45(18)=acd45(2)*acd45(18)
      acd45(19)=acd45(4)*acd45(14)*acd45(8)*acd45(16)*acd45(17)
      acd45(18)=2.0_ki*acd45(19)+acd45(18)
      brack(ninjaidxt2x0mu0)=0.0_ki
      brack(ninjaidxt1x0mu0)=acd45(18)
      brack(ninjaidxt1x1mu0)=0.0_ki
   end subroutine brack_21
!---#] subroutine brack_21:
!---#[ subroutine brack_22:
   pure subroutine brack_22(ninjaA0, ninjaA1, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd45h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA0, ninjaA1, ninjaE3, ninja&
      &E4
      complex(ki), dimension(0:2), intent(in) :: ninjaP
      complex(ki), dimension(86) :: acd45
      complex(ki), dimension (0:*), intent(inout) :: brack
      complex(ki) :: ninjaP0, ninjaP1, ninjaP2
      ninjaP0 = ninjaP(0)
      ninjaP1 = ninjaP(1)
      ninjaP2 = ninjaP(2)
      acd45(1)=dotproduct(ninjaE3,spvak1k2)
      acd45(2)=dotproduct(ninjaE3,spvak2k5)
      acd45(3)=dotproduct(ninjaE3,spvak5k2)
      acd45(4)=abb45(49)
      acd45(5)=dotproduct(k1,ninjaA1)
      acd45(6)=dotproduct(k2,ninjaE3)
      acd45(7)=dotproduct(k5,ninjaE3)
      acd45(8)=abb45(9)
      acd45(9)=dotproduct(k1,ninjaE3)
      acd45(10)=dotproduct(k2,ninjaA1)
      acd45(11)=dotproduct(k5,ninjaA1)
      acd45(12)=dotproduct(ninjaA1,spvak1k2)
      acd45(13)=abb45(30)
      acd45(14)=dotproduct(ninjaE3,spvak1k5)
      acd45(15)=abb45(48)
      acd45(16)=dotproduct(ninjaE3,spvak1l3)
      acd45(17)=dotproduct(ninjaE3,spval3k2)
      acd45(18)=abb45(56)
      acd45(19)=dotproduct(ninjaE3,spvak5l3)
      acd45(20)=dotproduct(ninjaE3,spvak5k1)
      acd45(21)=dotproduct(ninjaA1,spvak1k5)
      acd45(22)=dotproduct(ninjaA1,spvak5k2)
      acd45(23)=dotproduct(ninjaA1,spvak1l3)
      acd45(24)=dotproduct(ninjaA1,spval3k2)
      acd45(25)=dotproduct(ninjaA1,spvak5l3)
      acd45(26)=dotproduct(ninjaA1,spvak5k1)
      acd45(27)=dotproduct(ninjaA0,ninjaA1)
      acd45(28)=dotproduct(ninjaA0,ninjaE3)
      acd45(29)=dotproduct(ninjaA1,spvak2k5)
      acd45(30)=dotproduct(ninjaA1,ninjaA1)
      acd45(31)=dotproduct(k1,ninjaA0)
      acd45(32)=dotproduct(k2,ninjaA0)
      acd45(33)=dotproduct(k5,ninjaA0)
      acd45(34)=dotproduct(ninjaA0,spvak1k2)
      acd45(35)=abb45(39)
      acd45(36)=abb45(26)
      acd45(37)=dotproduct(ninjaA0,spvak1k5)
      acd45(38)=dotproduct(ninjaA0,spvak5k2)
      acd45(39)=abb45(28)
      acd45(40)=abb45(38)
      acd45(41)=dotproduct(ninjaA0,spvak1l3)
      acd45(42)=dotproduct(ninjaA0,spval3k2)
      acd45(43)=abb45(11)
      acd45(44)=abb45(22)
      acd45(45)=abb45(55)
      acd45(46)=dotproduct(ninjaA0,spvak5l3)
      acd45(47)=dotproduct(ninjaA0,spvak5k1)
      acd45(48)=abb45(7)
      acd45(49)=abb45(40)
      acd45(50)=abb45(50)
      acd45(51)=dotproduct(ninjaA0,ninjaA0)
      acd45(52)=abb45(31)
      acd45(53)=abb45(46)
      acd45(54)=dotproduct(ninjaA0,spvak2k5)
      acd45(55)=abb45(25)
      acd45(56)=acd45(2)*acd45(3)
      acd45(57)=acd45(4)*acd45(1)
      acd45(58)=acd45(56)*acd45(57)
      acd45(59)=acd45(4)*acd45(19)*acd45(17)
      acd45(60)=acd45(57)*acd45(20)
      acd45(59)=acd45(59)-acd45(60)
      acd45(60)=acd45(14)*acd45(59)
      acd45(61)=acd45(9)*acd45(8)
      acd45(62)=acd45(61)*acd45(1)
      acd45(63)=acd45(18)*acd45(16)
      acd45(64)=acd45(63)*acd45(17)
      acd45(62)=acd45(62)+acd45(64)
      acd45(62)=acd45(62)*acd45(7)
      acd45(65)=2.0_ki*acd45(3)
      acd45(66)=acd45(14)*acd45(6)
      acd45(65)=acd45(15)*acd45(65)*acd45(66)
      acd45(67)=acd45(7)*acd45(6)
      acd45(68)=acd45(67)*acd45(1)
      acd45(69)=acd45(68)*acd45(13)
      acd45(60)=acd45(65)+2.0_ki*acd45(69)+acd45(62)+acd45(60)
      acd45(62)=acd45(10)*acd45(60)
      acd45(65)=acd45(61)*acd45(67)
      acd45(69)=2.0_ki*acd45(28)
      acd45(70)=acd45(4)*acd45(69)*acd45(56)
      acd45(71)=acd45(66)*acd45(4)
      acd45(72)=acd45(71)*acd45(20)
      acd45(73)=acd45(6)**2
      acd45(74)=acd45(73)*acd45(13)
      acd45(75)=acd45(74)*acd45(7)
      acd45(65)=-acd45(72)+acd45(65)+acd45(70)+acd45(75)
      acd45(70)=acd45(12)*acd45(65)
      acd45(72)=acd45(1)*acd45(6)
      acd45(61)=acd45(61)*acd45(72)
      acd45(64)=acd45(64)*acd45(6)
      acd45(74)=acd45(74)*acd45(1)
      acd45(61)=acd45(74)+acd45(61)+acd45(64)
      acd45(64)=acd45(11)*acd45(61)
      acd45(74)=ninjaP1+2.0_ki*acd45(27)
      acd45(74)=acd45(58)*acd45(74)
      acd45(59)=acd45(6)*acd45(59)
      acd45(75)=acd45(73)*acd45(15)
      acd45(76)=acd45(75)*acd45(3)
      acd45(59)=acd45(76)+acd45(59)
      acd45(76)=acd45(21)*acd45(59)
      acd45(77)=acd45(69)*acd45(57)
      acd45(78)=acd45(77)*acd45(2)
      acd45(75)=acd45(75)*acd45(14)
      acd45(75)=acd45(78)+acd45(75)
      acd45(78)=acd45(22)*acd45(75)
      acd45(63)=acd45(63)*acd45(67)
      acd45(79)=acd45(71)*acd45(19)
      acd45(63)=acd45(79)+acd45(63)
      acd45(79)=acd45(24)*acd45(63)
      acd45(80)=acd45(18)*acd45(17)
      acd45(81)=acd45(23)*acd45(67)*acd45(80)
      acd45(82)=-acd45(26)*acd45(57)*acd45(66)
      acd45(77)=acd45(77)*acd45(3)
      acd45(83)=acd45(29)*acd45(77)
      acd45(84)=acd45(68)*acd45(8)
      acd45(85)=acd45(5)*acd45(84)
      acd45(71)=acd45(71)*acd45(17)
      acd45(86)=acd45(25)*acd45(71)
      acd45(62)=acd45(83)+acd45(82)+acd45(86)+acd45(81)+acd45(85)+acd45(79)+acd&
      &45(78)+acd45(76)+acd45(64)+acd45(70)+acd45(62)+acd45(74)
      acd45(64)=acd45(30)+ninjaP2
      acd45(64)=acd45(58)*acd45(64)
      acd45(70)=acd45(44)*acd45(69)
      acd45(57)=-acd45(47)*acd45(57)
      acd45(74)=acd45(48)*acd45(19)
      acd45(76)=acd45(49)*acd45(3)
      acd45(78)=acd45(50)*acd45(17)
      acd45(57)=acd45(78)+acd45(76)+acd45(74)+acd45(57)+acd45(70)
      acd45(57)=acd45(66)*acd45(57)
      acd45(66)=acd45(35)*acd45(9)
      acd45(70)=acd45(40)*acd45(69)
      acd45(74)=acd45(41)*acd45(80)
      acd45(76)=acd45(43)*acd45(16)
      acd45(66)=acd45(76)+acd45(74)+acd45(70)+acd45(66)
      acd45(66)=acd45(67)*acd45(66)
      acd45(60)=acd45(32)*acd45(60)
      acd45(65)=acd45(34)*acd45(65)
      acd45(61)=acd45(33)*acd45(61)
      acd45(67)=ninjaP0+acd45(51)
      acd45(67)=acd45(58)*acd45(67)
      acd45(70)=acd45(52)*acd45(1)
      acd45(74)=acd45(53)*acd45(3)
      acd45(70)=acd45(70)+acd45(74)
      acd45(70)=4.0_ki*acd45(70)
      acd45(70)=acd45(70)*acd45(28)**2
      acd45(59)=acd45(37)*acd45(59)
      acd45(74)=acd45(38)*acd45(75)
      acd45(73)=acd45(73)*acd45(1)
      acd45(68)=acd45(73)-acd45(68)
      acd45(68)=acd45(39)*acd45(68)
      acd45(63)=acd45(42)*acd45(63)
      acd45(69)=acd45(72)*acd45(69)
      acd45(73)=acd45(6)*acd45(16)*acd45(17)
      acd45(69)=acd45(69)+acd45(73)
      acd45(69)=acd45(45)*acd45(69)
      acd45(73)=acd45(54)*acd45(77)
      acd45(75)=acd45(31)*acd45(84)
      acd45(72)=-acd45(36)*acd45(9)*acd45(72)
      acd45(71)=acd45(46)*acd45(71)
      acd45(56)=acd45(55)*acd45(1)*acd45(56)
      acd45(56)=acd45(56)+acd45(73)+acd45(71)+acd45(72)+acd45(75)+acd45(69)+acd&
      &45(63)+acd45(68)+acd45(74)+acd45(59)+acd45(61)+acd45(60)+acd45(65)+acd45&
      &(57)+acd45(66)+acd45(70)+acd45(67)
      brack(ninjaidxt0x0mu0)=acd45(56)
      brack(ninjaidxt0x0mu2)=acd45(58)
      brack(ninjaidxt0x1mu0)=acd45(62)
      brack(ninjaidxt0x2mu0)=acd45(64)
   end subroutine brack_22
!---#] subroutine brack_22:
!---#[ subroutine numerator_t2:
   subroutine numerator_t2(ncut, a0, a1, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d45h4_qp_ninja_t2")
      use iso_c_binding, only: c_int
      use quadninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd45h4_qp
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
end module     p0_gg_hhg_d45h4l132_qp
