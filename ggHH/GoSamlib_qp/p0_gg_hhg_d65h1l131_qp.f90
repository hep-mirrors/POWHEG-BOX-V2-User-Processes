module p0_gg_hhg_d65h1l131_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d65h1l131.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd65h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd65
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd65(1)=dotproduct(k2,ninjaE3)
      acd65(2)=dotproduct(ninjaE3,spvak2k1)
      acd65(3)=dotproduct(ninjaE3,spvak2k5)
      acd65(4)=abb65(33)
      acd65(5)=dotproduct(l4,ninjaE3)
      acd65(6)=abb65(30)
      acd65(7)=dotproduct(ninjaA,ninjaE3)
      acd65(8)=abb65(65)
      acd65(9)=acd65(4)*acd65(1)
      acd65(10)=-acd65(6)*acd65(5)
      acd65(11)=acd65(8)*acd65(7)
      acd65(9)=2.0_ki*acd65(11)+acd65(9)+acd65(10)
      acd65(9)=acd65(2)*acd65(9)*acd65(3)**2
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd65(9)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd65h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(83) :: acd65
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd65(1)=dotproduct(k2,ninjaE3)
      acd65(2)=dotproduct(ninjaE3,spvak2k1)
      acd65(3)=dotproduct(ninjaE3,spvak2k5)
      acd65(4)=dotproduct(ninjaE4,spvak2k5)
      acd65(5)=abb65(33)
      acd65(6)=dotproduct(ninjaE4,spvak2k1)
      acd65(7)=dotproduct(k2,ninjaE4)
      acd65(8)=dotproduct(l4,ninjaE3)
      acd65(9)=abb65(30)
      acd65(10)=dotproduct(l4,ninjaE4)
      acd65(11)=dotproduct(ninjaA,ninjaE3)
      acd65(12)=abb65(65)
      acd65(13)=dotproduct(ninjaA,ninjaE4)
      acd65(14)=dotproduct(ninjaA,spvak2k1)
      acd65(15)=dotproduct(ninjaA,spvak2k5)
      acd65(16)=abb65(13)
      acd65(17)=dotproduct(ninjaE3,spvak2l3)
      acd65(18)=abb65(44)
      acd65(19)=abb65(49)
      acd65(20)=dotproduct(k2,ninjaA)
      acd65(21)=abb65(37)
      acd65(22)=dotproduct(l3,ninjaE3)
      acd65(23)=abb65(43)
      acd65(24)=dotproduct(l4,ninjaA)
      acd65(25)=abb65(39)
      acd65(26)=dotproduct(ninjaA,ninjaA)
      acd65(27)=abb65(10)
      acd65(28)=abb65(19)
      acd65(29)=dotproduct(ninjaE3,spval3k5)
      acd65(30)=abb65(23)
      acd65(31)=dotproduct(ninjaE3,spvak2l4)
      acd65(32)=abb65(31)
      acd65(33)=dotproduct(ninjaE3,spval4k5)
      acd65(34)=abb65(48)
      acd65(35)=dotproduct(k1,ninjaE3)
      acd65(36)=abb65(47)
      acd65(37)=abb65(63)
      acd65(38)=abb65(35)
      acd65(39)=dotproduct(l3,ninjaA)
      acd65(40)=abb65(58)
      acd65(41)=abb65(46)
      acd65(42)=abb65(16)
      acd65(43)=abb65(41)
      acd65(44)=dotproduct(ninjaA,spvak2l3)
      acd65(45)=abb65(17)
      acd65(46)=abb65(18)
      acd65(47)=abb65(51)
      acd65(48)=dotproduct(ninjaA,spval3k5)
      acd65(49)=dotproduct(ninjaA,spvak2l4)
      acd65(50)=dotproduct(ninjaA,spval4k5)
      acd65(51)=abb65(11)
      acd65(52)=abb65(36)
      acd65(53)=abb65(38)
      acd65(54)=dotproduct(ninjaE3,spvak1k5)
      acd65(55)=abb65(12)
      acd65(56)=abb65(32)
      acd65(57)=abb65(53)
      acd65(58)=abb65(29)
      acd65(59)=abb65(50)
      acd65(60)=abb65(52)
      acd65(61)=acd65(9)*acd65(10)
      acd65(62)=acd65(5)*acd65(7)
      acd65(63)=2.0_ki*acd65(12)
      acd65(64)=acd65(63)*acd65(13)
      acd65(61)=-acd65(64)+acd65(61)-acd65(62)
      acd65(61)=acd65(61)*acd65(2)
      acd65(62)=acd65(8)*acd65(9)
      acd65(64)=acd65(1)*acd65(5)
      acd65(62)=acd65(62)-acd65(64)
      acd65(64)=2.0_ki*acd65(11)
      acd65(65)=acd65(64)*acd65(12)
      acd65(66)=acd65(62)-acd65(65)
      acd65(67)=-acd65(6)*acd65(66)
      acd65(68)=acd65(14)*acd65(12)
      acd65(67)=-acd65(61)+acd65(68)-acd65(19)+acd65(67)
      acd65(67)=acd65(3)*acd65(67)
      acd65(68)=2.0_ki*acd65(4)
      acd65(68)=-acd65(68)*acd65(62)
      acd65(69)=acd65(4)*acd65(11)*acd65(12)
      acd65(68)=4.0_ki*acd65(69)+acd65(68)+acd65(16)
      acd65(63)=acd65(15)*acd65(63)
      acd65(63)=acd65(63)+acd65(68)
      acd65(63)=acd65(2)*acd65(63)
      acd65(69)=acd65(17)*acd65(18)
      acd65(63)=acd65(67)+acd65(69)+acd65(63)
      acd65(63)=acd65(3)*acd65(63)
      acd65(67)=acd65(34)*acd65(33)
      acd65(70)=acd65(29)*acd65(30)
      acd65(71)=acd65(22)*acd65(23)
      acd65(72)=acd65(31)*acd65(32)
      acd65(73)=acd65(17)*acd65(27)
      acd65(74)=acd65(8)*acd65(25)
      acd65(75)=acd65(1)*acd65(21)
      acd65(76)=acd65(64)*acd65(16)
      acd65(67)=acd65(70)+acd65(67)+acd65(71)+acd65(72)+acd65(73)+acd65(74)+acd&
      &65(75)+acd65(76)
      acd65(70)=2.0_ki*acd65(15)
      acd65(71)=-acd65(66)*acd65(70)
      acd65(71)=acd65(71)+acd65(67)
      acd65(71)=acd65(2)*acd65(71)
      acd65(72)=ninjaP+acd65(26)
      acd65(72)=acd65(72)*acd65(12)
      acd65(73)=acd65(9)*acd65(24)
      acd65(74)=acd65(5)*acd65(20)
      acd65(72)=-acd65(72)-acd65(28)+acd65(73)-acd65(74)
      acd65(73)=-acd65(2)*acd65(72)
      acd65(74)=acd65(66)*acd65(14)
      acd65(75)=acd65(64)*acd65(19)
      acd65(74)=acd65(75)+acd65(74)
      acd65(73)=acd65(73)-acd65(74)
      acd65(73)=acd65(3)*acd65(73)
      acd65(75)=acd65(64)*acd65(69)
      acd65(71)=acd65(73)+acd65(75)+acd65(71)
      acd65(71)=acd65(3)*acd65(71)
      acd65(73)=acd65(2)*acd65(12)*acd65(3)**2
      acd65(75)=-acd65(72)*acd65(70)
      acd65(68)=ninjaP*acd65(68)
      acd65(76)=acd65(34)*acd65(50)
      acd65(77)=acd65(32)*acd65(49)
      acd65(78)=acd65(30)*acd65(48)
      acd65(79)=acd65(27)*acd65(44)
      acd65(80)=acd65(24)*acd65(25)
      acd65(81)=acd65(23)*acd65(39)
      acd65(82)=acd65(20)*acd65(21)
      acd65(83)=acd65(16)*acd65(26)
      acd65(68)=acd65(75)+acd65(83)+acd65(82)+acd65(81)+acd65(80)+acd65(79)+acd&
      &65(78)+acd65(77)+acd65(53)+acd65(76)+acd65(68)
      acd65(68)=acd65(2)*acd65(68)
      acd65(75)=acd65(14)*acd65(67)
      acd65(62)=-acd65(6)*acd65(62)
      acd65(65)=acd65(6)*acd65(65)
      acd65(61)=-acd65(61)+acd65(65)-acd65(19)+acd65(62)
      acd65(61)=ninjaP*acd65(61)
      acd65(62)=-acd65(14)*acd65(72)
      acd65(65)=-acd65(26)*acd65(19)
      acd65(61)=acd65(62)+acd65(59)+acd65(65)+acd65(61)
      acd65(61)=acd65(3)*acd65(61)
      acd65(62)=acd65(18)*acd65(44)
      acd65(62)=acd65(46)+acd65(62)
      acd65(62)=acd65(62)*acd65(64)
      acd65(65)=-acd65(74)*acd65(70)
      acd65(70)=acd65(35)*acd65(36)
      acd65(72)=acd65(22)*acd65(41)
      acd65(74)=acd65(31)*acd65(60)
      acd65(76)=acd65(18)*acd65(26)
      acd65(76)=acd65(58)+acd65(76)
      acd65(76)=acd65(17)*acd65(76)
      acd65(77)=acd65(8)*acd65(43)
      acd65(78)=acd65(1)*acd65(38)
      acd65(79)=ninjaP*acd65(69)
      acd65(61)=acd65(61)+acd65(68)+acd65(65)+acd65(75)+acd65(62)+acd65(79)+acd&
      &65(78)+acd65(77)+acd65(76)+acd65(74)+acd65(70)+acd65(72)
      acd65(61)=acd65(3)*acd65(61)
      acd65(62)=-acd65(15)*acd65(66)
      acd65(62)=acd65(62)+acd65(67)
      acd65(62)=acd65(15)*acd65(62)
      acd65(65)=acd65(54)*acd65(55)
      acd65(66)=acd65(29)*acd65(56)
      acd65(67)=acd65(22)*acd65(40)
      acd65(68)=acd65(31)*acd65(57)
      acd65(70)=acd65(17)*acd65(52)
      acd65(72)=acd65(8)*acd65(42)
      acd65(74)=acd65(1)*acd65(37)
      acd65(64)=acd65(45)*acd65(64)
      acd65(75)=acd65(2)*acd65(51)
      acd65(62)=acd65(75)+acd65(62)+acd65(64)+acd65(74)+acd65(72)+acd65(70)+acd&
      &65(68)+acd65(67)+acd65(65)+acd65(66)
      acd65(62)=acd65(2)*acd65(62)
      acd65(64)=acd65(31)*acd65(47)
      acd65(65)=acd65(15)*acd65(69)
      acd65(64)=acd65(64)+acd65(65)
      acd65(64)=acd65(11)*acd65(64)
      acd65(61)=acd65(61)+2.0_ki*acd65(64)+acd65(62)
      brack(ninjaidxt1mu0)=acd65(71)
      brack(ninjaidxt1mu2)=acd65(73)
      brack(ninjaidxt0mu0)=acd65(61)
      brack(ninjaidxt0mu2)=acd65(63)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d65h1_ninja_t3_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd65h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3-k4
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module p0_gg_hhg_d65h1l131_qp
