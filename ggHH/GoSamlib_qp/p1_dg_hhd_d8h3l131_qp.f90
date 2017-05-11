module p1_dg_hhd_d8h3l131_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p1_dg_hhd/helicity3d8h3l131.f90
   ! generator: buildfortran_tn3.py
   use p1_dg_hhd_config_qp, only: ki
   use p1_dg_hhd_util_qp, only: cond_t, d => metric_tensor
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
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd8h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd8
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd8(1)=dotproduct(k2,ninjaE3)
      acd8(2)=dotproduct(ninjaE3,spvak1k2)
      acd8(3)=dotproduct(ninjaE3,spvak1k5)
      acd8(4)=abb8(25)
      acd8(5)=dotproduct(l4,ninjaE3)
      acd8(6)=abb8(24)
      acd8(7)=dotproduct(ninjaA,ninjaE3)
      acd8(8)=abb8(21)
      acd8(9)=acd8(4)*acd8(1)
      acd8(10)=acd8(6)*acd8(5)
      acd8(11)=acd8(8)*acd8(7)
      acd8(9)=2.0_ki*acd8(11)+acd8(9)+acd8(10)
      acd8(9)=acd8(9)*acd8(3)*acd8(2)
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=acd8(9)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd8h3_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(72) :: acd8
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd8(1)=dotproduct(k2,ninjaE3)
      acd8(2)=dotproduct(ninjaE3,spvak1k2)
      acd8(3)=dotproduct(ninjaE4,spvak1k5)
      acd8(4)=abb8(25)
      acd8(5)=dotproduct(ninjaE3,spvak1k5)
      acd8(6)=dotproduct(ninjaE4,spvak1k2)
      acd8(7)=dotproduct(k2,ninjaE4)
      acd8(8)=dotproduct(l4,ninjaE3)
      acd8(9)=abb8(24)
      acd8(10)=dotproduct(l4,ninjaE4)
      acd8(11)=dotproduct(ninjaA,ninjaE3)
      acd8(12)=abb8(21)
      acd8(13)=dotproduct(ninjaA,ninjaE4)
      acd8(14)=dotproduct(ninjaA,spvak1k2)
      acd8(15)=dotproduct(ninjaA,spvak1k5)
      acd8(16)=abb8(31)
      acd8(17)=dotproduct(ninjaE3,spvak1l3)
      acd8(18)=abb8(22)
      acd8(19)=abb8(26)
      acd8(20)=dotproduct(k2,ninjaA)
      acd8(21)=abb8(35)
      acd8(22)=dotproduct(l3,ninjaE3)
      acd8(23)=abb8(39)
      acd8(24)=dotproduct(l4,ninjaA)
      acd8(25)=abb8(33)
      acd8(26)=dotproduct(ninjaA,ninjaA)
      acd8(27)=abb8(10)
      acd8(28)=dotproduct(ninjaE3,spvak2k5)
      acd8(29)=abb8(11)
      acd8(30)=dotproduct(ninjaE3,spval4k5)
      acd8(31)=abb8(13)
      acd8(32)=abb8(14)
      acd8(33)=dotproduct(ninjaE3,spval3k5)
      acd8(34)=abb8(17)
      acd8(35)=abb8(19)
      acd8(36)=dotproduct(ninjaE3,spvak1l4)
      acd8(37)=abb8(30)
      acd8(38)=abb8(15)
      acd8(39)=dotproduct(l3,ninjaA)
      acd8(40)=abb8(27)
      acd8(41)=abb8(28)
      acd8(42)=dotproduct(ninjaA,spvak1l3)
      acd8(43)=abb8(9)
      acd8(44)=dotproduct(ninjaA,spvak2k5)
      acd8(45)=dotproduct(ninjaA,spval4k5)
      acd8(46)=dotproduct(ninjaA,spval3k5)
      acd8(47)=dotproduct(ninjaA,spvak1l4)
      acd8(48)=abb8(20)
      acd8(49)=abb8(23)
      acd8(50)=abb8(29)
      acd8(51)=acd8(9)*acd8(10)
      acd8(52)=acd8(4)*acd8(7)
      acd8(53)=2.0_ki*acd8(12)
      acd8(53)=acd8(53)*acd8(13)
      acd8(51)=acd8(53)+acd8(51)+acd8(52)
      acd8(51)=acd8(51)*acd8(5)
      acd8(52)=acd8(9)*acd8(8)
      acd8(53)=acd8(4)*acd8(1)
      acd8(52)=acd8(52)+acd8(53)
      acd8(53)=acd8(52)*acd8(3)
      acd8(51)=acd8(51)+acd8(53)+acd8(16)
      acd8(53)=2.0_ki*acd8(11)
      acd8(54)=acd8(53)*acd8(3)
      acd8(54)=acd8(54)+acd8(15)
      acd8(55)=acd8(12)*acd8(54)
      acd8(55)=acd8(55)+acd8(51)
      acd8(55)=acd8(2)*acd8(55)
      acd8(56)=acd8(53)*acd8(12)
      acd8(57)=acd8(56)+acd8(52)
      acd8(58)=acd8(6)*acd8(57)
      acd8(59)=acd8(14)*acd8(12)
      acd8(58)=acd8(59)+acd8(19)+acd8(58)
      acd8(58)=acd8(5)*acd8(58)
      acd8(59)=acd8(17)*acd8(18)
      acd8(55)=acd8(55)+acd8(59)+acd8(58)
      acd8(58)=acd8(12)*acd8(15)
      acd8(58)=acd8(58)+acd8(16)
      acd8(58)=acd8(58)*acd8(53)
      acd8(60)=acd8(52)*acd8(15)
      acd8(61)=acd8(37)*acd8(36)
      acd8(62)=acd8(34)*acd8(33)
      acd8(63)=acd8(31)*acd8(30)
      acd8(64)=acd8(29)*acd8(28)
      acd8(65)=acd8(22)*acd8(23)
      acd8(66)=acd8(17)*acd8(32)
      acd8(67)=acd8(8)*acd8(25)
      acd8(68)=acd8(1)*acd8(21)
      acd8(58)=acd8(65)+acd8(66)+acd8(67)+acd8(60)+acd8(61)+acd8(62)+acd8(63)+a&
      &cd8(64)+acd8(58)+acd8(68)
      acd8(60)=acd8(9)*acd8(24)
      acd8(61)=acd8(4)*acd8(20)
      acd8(60)=acd8(35)+acd8(60)+acd8(61)
      acd8(61)=ninjaP+acd8(26)
      acd8(61)=acd8(61)*acd8(12)
      acd8(61)=acd8(61)+acd8(60)
      acd8(62)=acd8(5)*acd8(61)
      acd8(63)=acd8(2)*acd8(27)
      acd8(62)=acd8(63)+acd8(62)+acd8(58)
      acd8(62)=acd8(2)*acd8(62)
      acd8(63)=acd8(53)*acd8(59)
      acd8(57)=acd8(14)*acd8(57)
      acd8(64)=acd8(19)*acd8(53)
      acd8(57)=acd8(64)+acd8(57)
      acd8(57)=acd8(5)*acd8(57)
      acd8(57)=acd8(62)+acd8(63)+acd8(57)
      acd8(62)=acd8(2)*acd8(5)*acd8(12)
      acd8(51)=ninjaP*acd8(51)
      acd8(60)=acd8(15)*acd8(60)
      acd8(63)=acd8(15)*acd8(26)
      acd8(54)=ninjaP*acd8(54)
      acd8(54)=acd8(63)+acd8(54)
      acd8(54)=acd8(12)*acd8(54)
      acd8(63)=acd8(37)*acd8(47)
      acd8(64)=acd8(34)*acd8(46)
      acd8(65)=acd8(32)*acd8(42)
      acd8(66)=acd8(31)*acd8(45)
      acd8(67)=acd8(29)*acd8(44)
      acd8(68)=acd8(23)*acd8(39)
      acd8(69)=acd8(24)*acd8(25)
      acd8(70)=acd8(20)*acd8(21)
      acd8(71)=acd8(26)*acd8(16)
      acd8(72)=acd8(14)*acd8(27)
      acd8(51)=2.0_ki*acd8(72)+acd8(54)+acd8(60)+acd8(71)+acd8(70)+acd8(69)+acd&
      &8(68)+acd8(67)+acd8(66)+acd8(65)+acd8(64)+acd8(48)+acd8(63)+acd8(51)
      acd8(51)=acd8(2)*acd8(51)
      acd8(54)=acd8(14)*acd8(58)
      acd8(52)=acd8(6)*acd8(52)
      acd8(56)=acd8(6)*acd8(56)
      acd8(52)=acd8(56)+acd8(19)+acd8(52)
      acd8(52)=ninjaP*acd8(52)
      acd8(56)=acd8(14)*acd8(61)
      acd8(58)=acd8(26)*acd8(19)
      acd8(52)=acd8(56)+acd8(50)+acd8(58)+acd8(52)
      acd8(52)=acd8(5)*acd8(52)
      acd8(56)=acd8(18)*acd8(42)
      acd8(58)=acd8(15)*acd8(19)
      acd8(56)=acd8(58)+acd8(43)+acd8(56)
      acd8(53)=acd8(56)*acd8(53)
      acd8(56)=acd8(22)*acd8(40)
      acd8(58)=acd8(26)*acd8(18)
      acd8(58)=acd8(49)+acd8(58)
      acd8(58)=acd8(17)*acd8(58)
      acd8(60)=acd8(8)*acd8(41)
      acd8(61)=acd8(1)*acd8(38)
      acd8(59)=ninjaP*acd8(59)
      acd8(51)=acd8(51)+acd8(52)+acd8(54)+acd8(59)+acd8(53)+acd8(61)+acd8(60)+a&
      &cd8(56)+acd8(58)
      brack(ninjaidxt1mu0)=acd8(57)
      brack(ninjaidxt1mu2)=acd8(62)
      brack(ninjaidxt0mu0)=acd8(51)
      brack(ninjaidxt0mu2)=acd8(55)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p1_dg_hhd_d8h3_ninja_t3_qp")
      use iso_c_binding, only: c_int
      use ninjago_qp_module, only: ki => ki_nin
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd8h3_qp
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
	     vecA(1:4) = - a(0:3)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module p1_dg_hhd_d8h3l131_qp
