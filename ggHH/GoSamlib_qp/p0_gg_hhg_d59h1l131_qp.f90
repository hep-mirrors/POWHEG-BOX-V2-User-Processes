module p0_gg_hhg_d59h1l131_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d59h1l131.f90
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
      use p0_gg_hhg_abbrevd59h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd59
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd59h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(78) :: acd59
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd59(1)=dotproduct(ninjaE3,spvak2k5)
      acd59(2)=abb59(80)
      acd59(3)=dotproduct(ninjaE3,spvak2k1)
      acd59(4)=abb59(35)
      acd59(5)=dotproduct(ninjaE3,spvak2l3)
      acd59(6)=abb59(17)
      acd59(7)=dotproduct(k1,ninjaE3)
      acd59(8)=abb59(23)
      acd59(9)=abb59(69)
      acd59(10)=dotproduct(k2,ninjaE3)
      acd59(11)=abb59(68)
      acd59(12)=abb59(30)
      acd59(13)=abb59(79)
      acd59(14)=dotproduct(l3,ninjaE3)
      acd59(15)=abb59(25)
      acd59(16)=abb59(39)
      acd59(17)=dotproduct(k5,ninjaE3)
      acd59(18)=abb59(57)
      acd59(19)=dotproduct(ninjaA,ninjaE3)
      acd59(20)=abb59(27)
      acd59(21)=dotproduct(ninjaE3,spval3k1)
      acd59(22)=abb59(55)
      acd59(23)=abb59(9)
      acd59(24)=abb59(62)
      acd59(25)=dotproduct(ninjaE3,spvak5k1)
      acd59(26)=abb59(82)
      acd59(27)=abb59(19)
      acd59(28)=dotproduct(k1,ninjaA)
      acd59(29)=dotproduct(ninjaA,spvak2k5)
      acd59(30)=dotproduct(ninjaA,spvak2k1)
      acd59(31)=dotproduct(ninjaA,spvak2l3)
      acd59(32)=abb59(70)
      acd59(33)=abb59(13)
      acd59(34)=abb59(32)
      acd59(35)=dotproduct(k2,ninjaA)
      acd59(36)=abb59(67)
      acd59(37)=abb59(31)
      acd59(38)=abb59(33)
      acd59(39)=dotproduct(l3,ninjaA)
      acd59(40)=abb59(63)
      acd59(41)=abb59(15)
      acd59(42)=abb59(71)
      acd59(43)=dotproduct(k5,ninjaA)
      acd59(44)=abb59(61)
      acd59(45)=abb59(41)
      acd59(46)=dotproduct(ninjaA,ninjaA)
      acd59(47)=abb59(49)
      acd59(48)=abb59(14)
      acd59(49)=abb59(16)
      acd59(50)=dotproduct(ninjaA,spval3k1)
      acd59(51)=dotproduct(ninjaA,spvak5k1)
      acd59(52)=abb59(22)
      acd59(53)=abb59(8)
      acd59(54)=abb59(29)
      acd59(55)=abb59(52)
      acd59(56)=abb59(74)
      acd59(57)=abb59(12)
      acd59(58)=abb59(11)
      acd59(59)=dotproduct(ninjaE3,spvak1k5)
      acd59(60)=abb59(26)
      acd59(61)=acd59(5)*acd59(6)
      acd59(62)=acd59(3)*acd59(4)
      acd59(63)=acd59(1)*acd59(2)
      acd59(61)=acd59(63)+acd59(61)+acd59(62)
      acd59(61)=acd59(1)*acd59(61)
      acd59(62)=acd59(25)*acd59(26)
      acd59(63)=acd59(21)*acd59(22)
      acd59(64)=2.0_ki*acd59(19)
      acd59(65)=acd59(64)*acd59(2)
      acd59(66)=acd59(17)*acd59(18)
      acd59(67)=acd59(14)*acd59(15)
      acd59(68)=acd59(10)*acd59(11)
      acd59(62)=acd59(68)+acd59(65)+acd59(62)+acd59(63)+acd59(66)+acd59(67)
      acd59(63)=acd59(5)*acd59(24)
      acd59(65)=acd59(3)*acd59(23)
      acd59(66)=acd59(1)*acd59(20)
      acd59(63)=acd59(66)+acd59(65)+acd59(63)+acd59(62)
      acd59(63)=acd59(1)*acd59(63)
      acd59(65)=acd59(17)-acd59(7)
      acd59(66)=acd59(8)*acd59(65)
      acd59(67)=acd59(64)*acd59(4)
      acd59(68)=acd59(14)*acd59(16)
      acd59(69)=acd59(10)*acd59(12)
      acd59(66)=acd59(69)+acd59(67)+acd59(68)+acd59(66)
      acd59(67)=acd59(5)*acd59(27)
      acd59(67)=acd59(67)+acd59(66)
      acd59(67)=acd59(3)*acd59(67)
      acd59(68)=acd59(65)+acd59(14)
      acd59(68)=acd59(68)*acd59(9)
      acd59(69)=acd59(64)*acd59(6)
      acd59(70)=acd59(10)*acd59(13)
      acd59(69)=-acd59(68)+acd59(69)+acd59(70)
      acd59(70)=acd59(5)*acd59(69)
      acd59(63)=acd59(63)+acd59(70)+acd59(67)
      acd59(63)=acd59(1)*acd59(63)
      acd59(67)=acd59(26)*acd59(51)
      acd59(70)=acd59(22)*acd59(50)
      acd59(71)=acd59(18)*acd59(43)
      acd59(72)=acd59(15)*acd59(39)
      acd59(73)=acd59(11)*acd59(35)
      acd59(74)=acd59(46)+ninjaP
      acd59(75)=acd59(2)*acd59(74)
      acd59(76)=acd59(31)*acd59(24)
      acd59(77)=acd59(30)*acd59(23)
      acd59(78)=acd59(29)*acd59(20)
      acd59(67)=3.0_ki*acd59(78)+acd59(77)+acd59(76)+acd59(75)+acd59(73)+acd59(&
      &72)+acd59(71)+acd59(70)+acd59(52)+acd59(67)
      acd59(67)=acd59(1)*acd59(67)
      acd59(70)=2.0_ki*acd59(29)
      acd59(62)=acd59(62)*acd59(70)
      acd59(71)=acd59(16)*acd59(39)
      acd59(72)=acd59(12)*acd59(35)
      acd59(73)=acd59(4)*acd59(74)
      acd59(75)=acd59(31)*acd59(27)
      acd59(76)=acd59(43)-acd59(28)
      acd59(77)=acd59(8)*acd59(76)
      acd59(78)=acd59(23)*acd59(70)
      acd59(71)=acd59(78)+acd59(77)+acd59(75)+acd59(73)+acd59(72)+acd59(54)+acd&
      &59(71)
      acd59(71)=acd59(3)*acd59(71)
      acd59(72)=acd59(13)*acd59(35)
      acd59(73)=acd59(6)*acd59(74)
      acd59(74)=acd59(30)*acd59(27)
      acd59(75)=-acd59(39)-acd59(76)
      acd59(75)=acd59(9)*acd59(75)
      acd59(70)=acd59(24)*acd59(70)
      acd59(70)=acd59(70)+acd59(75)+acd59(74)+acd59(73)+acd59(55)+acd59(72)
      acd59(70)=acd59(5)*acd59(70)
      acd59(72)=acd59(31)*acd59(6)
      acd59(73)=acd59(30)*acd59(4)
      acd59(72)=acd59(73)+acd59(47)+acd59(72)
      acd59(72)=acd59(72)*acd59(64)
      acd59(73)=acd59(31)*acd59(13)
      acd59(74)=acd59(30)*acd59(12)
      acd59(73)=acd59(74)+acd59(36)+acd59(73)
      acd59(73)=acd59(10)*acd59(73)
      acd59(74)=acd59(25)*acd59(56)
      acd59(75)=acd59(21)*acd59(53)
      acd59(76)=acd59(8)*acd59(30)
      acd59(77)=acd59(32)-acd59(76)
      acd59(77)=acd59(7)*acd59(77)
      acd59(76)=acd59(44)+acd59(76)
      acd59(76)=acd59(17)*acd59(76)
      acd59(78)=acd59(30)*acd59(16)
      acd59(78)=acd59(40)+acd59(78)
      acd59(78)=acd59(14)*acd59(78)
      acd59(68)=-acd59(31)*acd59(68)
      acd59(62)=acd59(67)+acd59(71)+acd59(70)+acd59(62)+acd59(68)+acd59(73)+acd&
      &59(78)+acd59(76)+acd59(72)+acd59(77)+acd59(74)+acd59(75)
      acd59(62)=acd59(1)*acd59(62)
      acd59(66)=acd59(29)*acd59(66)
      acd59(67)=acd59(59)*acd59(60)
      acd59(68)=acd59(7)*acd59(33)
      acd59(70)=acd59(48)*acd59(64)
      acd59(71)=acd59(17)*acd59(45)
      acd59(72)=acd59(14)*acd59(41)
      acd59(73)=acd59(10)*acd59(37)
      acd59(74)=acd59(29)*acd59(27)
      acd59(74)=acd59(58)+acd59(74)
      acd59(74)=acd59(5)*acd59(74)
      acd59(75)=acd59(3)*acd59(57)
      acd59(66)=acd59(75)+acd59(74)+acd59(66)+acd59(73)+acd59(72)+acd59(71)+acd&
      &59(70)+acd59(67)+acd59(68)
      acd59(66)=acd59(3)*acd59(66)
      acd59(67)=acd59(29)*acd59(69)
      acd59(65)=-acd59(34)*acd59(65)
      acd59(64)=acd59(49)*acd59(64)
      acd59(68)=acd59(14)*acd59(42)
      acd59(69)=acd59(10)*acd59(38)
      acd59(64)=acd59(67)+acd59(69)+acd59(68)+acd59(64)+acd59(65)
      acd59(64)=acd59(5)*acd59(64)
      acd59(62)=acd59(62)+acd59(64)+acd59(66)
      brack(ninjaidxt1mu0)=acd59(63)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd59(62)
      brack(ninjaidxt0mu2)=acd59(61)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d59h1_ninja_t3_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd59h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3
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
end module p0_gg_hhg_d59h1l131_qp
