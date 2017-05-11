module p0_gg_hhg_d13h1l131_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d13h1l131.f90
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
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(5) :: acd13
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd13(1)=dotproduct(ninjaA,ninjaE3)
      acd13(2)=dotproduct(ninjaE3,spvak2k1)
      acd13(3)=dotproduct(ninjaE3,spvak2k5)
      acd13(4)=abb13(18)
      acd13(5)=2.0_ki*acd13(4)*acd13(3)*acd13(2)*acd13(1)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd13(5)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(79) :: acd13
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd13(1)=dotproduct(ninjaA,ninjaE3)
      acd13(2)=dotproduct(ninjaE3,spvak2k5)
      acd13(3)=dotproduct(ninjaE4,spvak2k1)
      acd13(4)=abb13(18)
      acd13(5)=dotproduct(ninjaE3,spvak2k1)
      acd13(6)=dotproduct(ninjaE4,spvak2k5)
      acd13(7)=dotproduct(ninjaA,ninjaE4)
      acd13(8)=dotproduct(ninjaA,spvak2k5)
      acd13(9)=dotproduct(ninjaA,spvak2k1)
      acd13(10)=dotproduct(ninjaE3,spvak2l3)
      acd13(11)=abb13(13)
      acd13(12)=abb13(26)
      acd13(13)=dotproduct(ninjaE3,spvak2l4)
      acd13(14)=abb13(23)
      acd13(15)=abb13(27)
      acd13(16)=dotproduct(k2,ninjaE3)
      acd13(17)=abb13(46)
      acd13(18)=abb13(16)
      acd13(19)=abb13(36)
      acd13(20)=dotproduct(l3,ninjaE3)
      acd13(21)=abb13(37)
      acd13(22)=abb13(14)
      acd13(23)=abb13(29)
      acd13(24)=dotproduct(l4,ninjaE3)
      acd13(25)=abb13(21)
      acd13(26)=dotproduct(ninjaA,ninjaA)
      acd13(27)=abb13(11)
      acd13(28)=abb13(24)
      acd13(29)=abb13(20)
      acd13(30)=dotproduct(ninjaE3,spval4k1)
      acd13(31)=abb13(40)
      acd13(32)=dotproduct(ninjaE3,spval3k1)
      acd13(33)=abb13(43)
      acd13(34)=dotproduct(k2,ninjaA)
      acd13(35)=dotproduct(ninjaA,spvak2l4)
      acd13(36)=abb13(31)
      acd13(37)=dotproduct(l3,ninjaA)
      acd13(38)=abb13(22)
      acd13(39)=dotproduct(l4,ninjaA)
      acd13(40)=abb13(28)
      acd13(41)=dotproduct(k5,ninjaE3)
      acd13(42)=abb13(25)
      acd13(43)=dotproduct(ninjaA,spvak2l3)
      acd13(44)=abb13(32)
      acd13(45)=dotproduct(ninjaA,spval4k1)
      acd13(46)=dotproduct(ninjaA,spval3k1)
      acd13(47)=abb13(19)
      acd13(48)=abb13(17)
      acd13(49)=abb13(12)
      acd13(50)=abb13(15)
      acd13(51)=abb13(42)
      acd13(52)=abb13(44)
      acd13(53)=acd13(11)*acd13(10)
      acd13(54)=acd13(14)*acd13(13)
      acd13(53)=acd13(53)+acd13(54)
      acd13(54)=acd13(4)*acd13(5)
      acd13(55)=acd13(54)*acd13(8)
      acd13(56)=acd13(4)*acd13(2)
      acd13(57)=acd13(56)*acd13(9)
      acd13(55)=acd13(55)+acd13(57)
      acd13(57)=acd13(15)*acd13(5)
      acd13(57)=acd13(57)+acd13(55)+acd13(53)
      acd13(58)=2.0_ki*acd13(2)
      acd13(58)=acd13(58)*acd13(7)
      acd13(59)=2.0_ki*acd13(1)
      acd13(60)=acd13(6)*acd13(59)
      acd13(60)=acd13(58)+acd13(60)
      acd13(60)=acd13(54)*acd13(60)
      acd13(61)=acd13(3)*acd13(56)*acd13(59)
      acd13(62)=acd13(12)*acd13(2)
      acd13(60)=acd13(61)+acd13(62)+acd13(57)+acd13(60)
      acd13(62)=acd13(17)*acd13(16)
      acd13(63)=acd13(21)*acd13(20)
      acd13(64)=acd13(25)*acd13(24)
      acd13(65)=acd13(27)*acd13(10)
      acd13(66)=acd13(31)*acd13(30)
      acd13(67)=acd13(33)*acd13(32)
      acd13(68)=acd13(54)*ninjaP
      acd13(62)=acd13(68)+acd13(64)+acd13(65)+acd13(66)-acd13(67)+acd13(62)+acd&
      &13(63)
      acd13(63)=acd13(26)*acd13(54)
      acd13(64)=acd13(12)*acd13(59)
      acd13(65)=acd13(28)*acd13(13)
      acd13(66)=acd13(29)*acd13(5)
      acd13(63)=acd13(66)+acd13(65)+acd13(64)+acd13(63)+acd13(62)
      acd13(63)=acd13(2)*acd13(63)
      acd13(57)=acd13(59)*acd13(57)
      acd13(64)=acd13(18)*acd13(13)
      acd13(65)=acd13(19)*acd13(5)
      acd13(64)=acd13(64)+acd13(65)
      acd13(65)=acd13(16)*acd13(64)
      acd13(66)=acd13(22)*acd13(13)
      acd13(67)=acd13(23)*acd13(5)
      acd13(66)=acd13(66)-acd13(67)
      acd13(67)=acd13(20)*acd13(66)
      acd13(57)=acd13(57)+acd13(67)+acd13(65)+acd13(63)
      acd13(54)=acd13(2)*acd13(54)
      acd13(62)=acd13(8)*acd13(62)
      acd13(63)=acd13(39)*acd13(25)
      acd13(65)=acd13(45)*acd13(31)
      acd13(67)=-acd13(46)*acd13(33)
      acd13(63)=acd13(48)+acd13(67)+acd13(65)+acd13(63)
      acd13(63)=acd13(2)*acd13(63)
      acd13(65)=acd13(26)+ninjaP
      acd13(53)=acd13(65)*acd13(53)
      acd13(67)=acd13(18)*acd13(35)
      acd13(69)=acd13(19)*acd13(9)
      acd13(67)=acd13(36)+acd13(69)+acd13(67)
      acd13(67)=acd13(16)*acd13(67)
      acd13(69)=acd13(22)*acd13(35)
      acd13(70)=-acd13(23)*acd13(9)
      acd13(69)=acd13(38)+acd13(70)+acd13(69)
      acd13(69)=acd13(20)*acd13(69)
      acd13(70)=acd13(35)*acd13(14)
      acd13(71)=acd13(6)*acd13(68)
      acd13(70)=-acd13(44)+acd13(71)+acd13(70)
      acd13(70)=acd13(59)*acd13(70)
      acd13(56)=acd13(56)*ninjaP
      acd13(71)=acd13(59)*acd13(8)
      acd13(72)=acd13(4)*acd13(71)
      acd13(56)=acd13(72)+acd13(56)
      acd13(56)=acd13(9)*acd13(56)
      acd13(55)=acd13(26)*acd13(55)
      acd13(72)=acd13(2)*acd13(65)
      acd13(71)=acd13(71)+acd13(72)
      acd13(71)=acd13(12)*acd13(71)
      acd13(65)=acd13(5)*acd13(65)
      acd13(72)=acd13(9)*acd13(59)
      acd13(65)=acd13(72)+acd13(65)
      acd13(65)=acd13(15)*acd13(65)
      acd13(72)=acd13(13)*acd13(8)
      acd13(73)=acd13(35)*acd13(2)
      acd13(72)=acd13(72)+acd13(73)
      acd13(72)=acd13(28)*acd13(72)
      acd13(73)=acd13(8)*acd13(5)
      acd13(74)=acd13(9)*acd13(2)
      acd13(73)=acd13(73)+acd13(74)
      acd13(73)=acd13(29)*acd13(73)
      acd13(74)=acd13(17)*acd13(2)
      acd13(64)=acd13(74)+acd13(64)
      acd13(64)=acd13(34)*acd13(64)
      acd13(74)=acd13(21)*acd13(2)
      acd13(66)=acd13(74)+acd13(66)
      acd13(66)=acd13(37)*acd13(66)
      acd13(61)=ninjaP*acd13(61)
      acd13(58)=acd13(68)*acd13(58)
      acd13(59)=acd13(11)*acd13(59)
      acd13(68)=acd13(27)*acd13(2)
      acd13(59)=acd13(59)+acd13(68)
      acd13(59)=acd13(43)*acd13(59)
      acd13(68)=acd13(40)*acd13(24)
      acd13(74)=acd13(42)*acd13(41)
      acd13(75)=acd13(47)*acd13(10)
      acd13(76)=acd13(49)*acd13(13)
      acd13(77)=acd13(50)*acd13(5)
      acd13(78)=acd13(51)*acd13(30)
      acd13(79)=acd13(52)*acd13(32)
      acd13(53)=acd13(79)+acd13(78)+acd13(77)+acd13(76)+acd13(75)+acd13(74)+acd&
      &13(68)+acd13(59)+acd13(58)+acd13(61)+acd13(66)+acd13(64)+acd13(73)+acd13&
      &(72)+acd13(65)+acd13(71)+acd13(55)+acd13(56)+acd13(62)+acd13(63)+acd13(7&
      &0)+acd13(69)+acd13(67)+acd13(53)
      brack(ninjaidxt1mu0)=acd13(57)
      brack(ninjaidxt1mu2)=acd13(54)
      brack(ninjaidxt0mu0)=acd13(53)
      brack(ninjaidxt0mu2)=acd13(60)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d13h1_ninja_t3_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd13h1_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k3+k5
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module p0_gg_hhg_d13h1l131_qp
