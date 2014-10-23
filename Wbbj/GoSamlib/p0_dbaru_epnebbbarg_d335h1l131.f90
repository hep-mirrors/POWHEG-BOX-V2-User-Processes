module     p0_dbaru_epnebbbarg_d335h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d335h1l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt2mu0 = 0
   integer, parameter :: ninjaidxt1mu0 = 1
   integer, parameter :: ninjaidxt0mu0 = 2
   integer, parameter :: ninjaidxt0mu2 = 3
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd335h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(39) :: acd335
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd335(1)=dotproduct(k2,ninjaE3)
      acd335(2)=dotproduct(ninjaE3,spvak2k7)
      acd335(3)=abb335(25)
      acd335(4)=dotproduct(l5,ninjaE3)
      acd335(5)=abb335(22)
      acd335(6)=dotproduct(k7,ninjaE3)
      acd335(7)=abb335(41)
      acd335(8)=dotproduct(ninjaE3,spvak1k3)
      acd335(9)=abb335(13)
      acd335(10)=abb335(24)
      acd335(11)=dotproduct(ninjaE3,spvak1k2)
      acd335(12)=abb335(14)
      acd335(13)=dotproduct(ninjaE3,spvak2k3)
      acd335(14)=abb335(15)
      acd335(15)=dotproduct(ninjaE3,spvak7l5)
      acd335(16)=abb335(16)
      acd335(17)=dotproduct(ninjaE3,spval6k2)
      acd335(18)=abb335(17)
      acd335(19)=dotproduct(ninjaE3,spvak4k2)
      acd335(20)=abb335(23)
      acd335(21)=dotproduct(ninjaE3,spvak1l5)
      acd335(22)=abb335(29)
      acd335(23)=dotproduct(ninjaE3,spvak2l5)
      acd335(24)=abb335(35)
      acd335(25)=dotproduct(ninjaE3,spval6k3)
      acd335(26)=abb335(40)
      acd335(27)=acd335(25)*acd335(26)
      acd335(28)=acd335(23)*acd335(24)
      acd335(29)=acd335(21)*acd335(22)
      acd335(30)=acd335(19)*acd335(20)
      acd335(31)=acd335(17)*acd335(18)
      acd335(32)=acd335(15)*acd335(16)
      acd335(33)=acd335(13)*acd335(14)
      acd335(34)=acd335(11)*acd335(12)
      acd335(35)=acd335(8)*acd335(9)
      acd335(36)=acd335(6)*acd335(7)
      acd335(37)=acd335(4)*acd335(5)
      acd335(38)=acd335(1)*acd335(3)
      acd335(39)=acd335(2)*acd335(10)
      acd335(27)=acd335(39)+acd335(38)+acd335(37)+acd335(36)+acd335(35)+acd335(&
      &34)+acd335(33)+acd335(32)+acd335(31)+acd335(30)+acd335(29)+acd335(27)+ac&
      &d335(28)
      acd335(27)=acd335(2)*acd335(27)
      brack(ninjaidxt2mu0)=acd335(27)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd335h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(74) :: acd335
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd335(1)=dotproduct(k2,ninjaE3)
      acd335(2)=dotproduct(ninjaE4,spvak2k7)
      acd335(3)=abb335(25)
      acd335(4)=dotproduct(k2,ninjaE4)
      acd335(5)=dotproduct(ninjaE3,spvak2k7)
      acd335(6)=dotproduct(l5,ninjaE3)
      acd335(7)=abb335(22)
      acd335(8)=dotproduct(l5,ninjaE4)
      acd335(9)=dotproduct(k7,ninjaE3)
      acd335(10)=abb335(41)
      acd335(11)=dotproduct(k7,ninjaE4)
      acd335(12)=dotproduct(ninjaE3,spvak1k3)
      acd335(13)=abb335(13)
      acd335(14)=dotproduct(ninjaE4,spvak1k3)
      acd335(15)=abb335(24)
      acd335(16)=dotproduct(ninjaE4,spvak1k2)
      acd335(17)=abb335(14)
      acd335(18)=dotproduct(ninjaE4,spvak2k3)
      acd335(19)=abb335(15)
      acd335(20)=dotproduct(ninjaE4,spvak7l5)
      acd335(21)=abb335(16)
      acd335(22)=dotproduct(ninjaE4,spval6k2)
      acd335(23)=abb335(17)
      acd335(24)=dotproduct(ninjaE4,spvak4k2)
      acd335(25)=abb335(23)
      acd335(26)=dotproduct(ninjaE4,spvak1l5)
      acd335(27)=abb335(29)
      acd335(28)=dotproduct(ninjaE4,spvak2l5)
      acd335(29)=abb335(35)
      acd335(30)=dotproduct(ninjaE4,spval6k3)
      acd335(31)=abb335(40)
      acd335(32)=dotproduct(ninjaE3,spvak1k2)
      acd335(33)=dotproduct(ninjaE3,spvak2k3)
      acd335(34)=dotproduct(ninjaE3,spvak7l5)
      acd335(35)=dotproduct(ninjaE3,spval6k2)
      acd335(36)=dotproduct(ninjaE3,spvak4k2)
      acd335(37)=dotproduct(ninjaE3,spvak1l5)
      acd335(38)=dotproduct(ninjaE3,spvak2l5)
      acd335(39)=dotproduct(ninjaE3,spval6k3)
      acd335(40)=abb335(27)
      acd335(41)=dotproduct(k2,ninjaA)
      acd335(42)=dotproduct(ninjaA,spvak2k7)
      acd335(43)=dotproduct(l5,ninjaA)
      acd335(44)=dotproduct(k7,ninjaA)
      acd335(45)=abb335(26)
      acd335(46)=dotproduct(ninjaA,ninjaE3)
      acd335(47)=dotproduct(ninjaA,spvak1k3)
      acd335(48)=dotproduct(ninjaA,spvak1k2)
      acd335(49)=dotproduct(ninjaA,spvak2k3)
      acd335(50)=dotproduct(ninjaA,spvak7l5)
      acd335(51)=dotproduct(ninjaA,spval6k2)
      acd335(52)=dotproduct(ninjaA,spvak4k2)
      acd335(53)=dotproduct(ninjaA,spvak1l5)
      acd335(54)=dotproduct(ninjaA,spvak2l5)
      acd335(55)=dotproduct(ninjaA,spval6k3)
      acd335(56)=abb335(19)
      acd335(57)=dotproduct(ninjaA,ninjaA)
      acd335(58)=abb335(20)
      acd335(59)=acd335(31)*acd335(30)
      acd335(60)=acd335(29)*acd335(28)
      acd335(61)=acd335(27)*acd335(26)
      acd335(62)=acd335(25)*acd335(24)
      acd335(63)=acd335(23)*acd335(22)
      acd335(64)=acd335(21)*acd335(20)
      acd335(65)=acd335(19)*acd335(18)
      acd335(66)=acd335(17)*acd335(16)
      acd335(67)=acd335(13)*acd335(14)
      acd335(68)=acd335(10)*acd335(11)
      acd335(69)=acd335(7)*acd335(8)
      acd335(70)=acd335(3)*acd335(4)
      acd335(71)=2.0_ki*acd335(15)
      acd335(72)=acd335(71)*acd335(2)
      acd335(59)=acd335(72)+acd335(64)+acd335(60)+acd335(61)+acd335(62)+acd335(&
      &63)+acd335(67)+acd335(68)+acd335(69)+acd335(70)+acd335(59)+acd335(65)+ac&
      &d335(66)
      acd335(59)=acd335(59)*acd335(5)
      acd335(60)=acd335(31)*acd335(39)
      acd335(61)=acd335(29)*acd335(38)
      acd335(62)=acd335(27)*acd335(37)
      acd335(63)=acd335(25)*acd335(36)
      acd335(64)=acd335(23)*acd335(35)
      acd335(65)=acd335(21)*acd335(34)
      acd335(66)=acd335(19)*acd335(33)
      acd335(67)=acd335(17)*acd335(32)
      acd335(68)=acd335(13)*acd335(12)
      acd335(69)=acd335(10)*acd335(9)
      acd335(70)=acd335(7)*acd335(6)
      acd335(72)=acd335(3)*acd335(1)
      acd335(60)=acd335(67)+acd335(66)+acd335(65)+acd335(64)+acd335(61)+acd335(&
      &60)+acd335(62)+acd335(63)+acd335(68)+acd335(69)+acd335(70)+acd335(72)
      acd335(61)=acd335(60)*acd335(2)
      acd335(59)=acd335(61)+acd335(59)
      acd335(61)=acd335(40)+acd335(59)
      acd335(60)=acd335(42)*acd335(60)
      acd335(62)=acd335(31)*acd335(55)
      acd335(63)=acd335(29)*acd335(54)
      acd335(64)=acd335(27)*acd335(53)
      acd335(65)=acd335(25)*acd335(52)
      acd335(66)=acd335(23)*acd335(51)
      acd335(67)=acd335(21)*acd335(50)
      acd335(68)=acd335(19)*acd335(49)
      acd335(69)=acd335(17)*acd335(48)
      acd335(70)=acd335(13)*acd335(47)
      acd335(72)=acd335(10)*acd335(44)
      acd335(73)=acd335(7)*acd335(43)
      acd335(74)=acd335(3)*acd335(41)
      acd335(62)=acd335(72)+acd335(73)+acd335(74)+acd335(56)+acd335(65)+acd335(&
      &66)+acd335(67)+acd335(68)+acd335(62)+acd335(69)+acd335(70)+acd335(63)+ac&
      &d335(64)
      acd335(63)=acd335(42)*acd335(71)
      acd335(63)=acd335(63)+acd335(62)
      acd335(63)=acd335(5)*acd335(63)
      acd335(64)=acd335(40)*acd335(46)
      acd335(65)=acd335(9)*acd335(45)
      acd335(60)=acd335(63)+acd335(60)+2.0_ki*acd335(64)+acd335(65)
      acd335(59)=ninjaP*acd335(59)
      acd335(63)=acd335(42)*acd335(15)
      acd335(62)=acd335(63)+acd335(62)
      acd335(62)=acd335(42)*acd335(62)
      acd335(63)=ninjaP+acd335(57)
      acd335(63)=acd335(40)*acd335(63)
      acd335(64)=acd335(44)*acd335(45)
      acd335(59)=acd335(62)+acd335(58)+acd335(64)+acd335(63)+acd335(59)
      brack(ninjaidxt1mu0)=acd335(60)
      brack(ninjaidxt0mu0)=acd335(59)
      brack(ninjaidxt0mu2)=acd335(61)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d335h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd335h1
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d335h1l131
