module     p0_dbaru_epnebbbarg_d124h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d124h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd124h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(14) :: acd124
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd124(1)=dotproduct(k2,ninjaE3)
      acd124(2)=dotproduct(ninjaE3,spvak4k3)
      acd124(3)=dotproduct(ninjaE3,spvak7k2)
      acd124(4)=abb124(20)
      acd124(5)=dotproduct(ninjaE3,spvak1k2)
      acd124(6)=abb124(12)
      acd124(7)=dotproduct(ninjaE3,spval5k2)
      acd124(8)=abb124(13)
      acd124(9)=dotproduct(ninjaE3,spval6k2)
      acd124(10)=abb124(43)
      acd124(11)=acd124(4)*acd124(1)
      acd124(12)=acd124(6)*acd124(5)
      acd124(13)=acd124(8)*acd124(7)
      acd124(14)=acd124(10)*acd124(9)
      acd124(11)=acd124(14)+acd124(13)+acd124(11)+acd124(12)
      acd124(11)=acd124(11)*acd124(3)*acd124(2)
      brack(ninjaidxt2mu0)=acd124(11)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd124h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(80) :: acd124
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd124(1)=dotproduct(k2,ninjaE3)
      acd124(2)=dotproduct(ninjaE3,spvak7k2)
      acd124(3)=dotproduct(ninjaE4,spvak4k3)
      acd124(4)=abb124(20)
      acd124(5)=dotproduct(ninjaE3,spvak4k3)
      acd124(6)=dotproduct(ninjaE4,spvak7k2)
      acd124(7)=dotproduct(k2,ninjaE4)
      acd124(8)=dotproduct(ninjaE3,spvak1k2)
      acd124(9)=abb124(12)
      acd124(10)=dotproduct(ninjaE4,spvak1k2)
      acd124(11)=dotproduct(ninjaE4,spval5k2)
      acd124(12)=abb124(13)
      acd124(13)=dotproduct(ninjaE4,spval6k2)
      acd124(14)=abb124(43)
      acd124(15)=dotproduct(ninjaE3,spval5k2)
      acd124(16)=dotproduct(ninjaE3,spval6k2)
      acd124(17)=abb124(31)
      acd124(18)=dotproduct(ninjaE3,spvak4k2)
      acd124(19)=abb124(28)
      acd124(20)=dotproduct(k2,ninjaA)
      acd124(21)=dotproduct(ninjaA,spvak7k2)
      acd124(22)=dotproduct(ninjaA,spvak4k3)
      acd124(23)=dotproduct(k7,ninjaE3)
      acd124(24)=abb124(32)
      acd124(25)=abb124(35)
      acd124(26)=dotproduct(ninjaA,ninjaE3)
      acd124(27)=dotproduct(ninjaA,spvak1k2)
      acd124(28)=dotproduct(ninjaA,spval5k2)
      acd124(29)=dotproduct(ninjaA,spval6k2)
      acd124(30)=dotproduct(ninjaE3,spvak2k3)
      acd124(31)=abb124(10)
      acd124(32)=abb124(36)
      acd124(33)=dotproduct(ninjaE3,spvak1k3)
      acd124(34)=abb124(11)
      acd124(35)=dotproduct(ninjaE3,spvak1k7)
      acd124(36)=abb124(14)
      acd124(37)=dotproduct(ninjaE3,spval6k3)
      acd124(38)=abb124(15)
      acd124(39)=abb124(26)
      acd124(40)=dotproduct(ninjaE3,spvak2k7)
      acd124(41)=abb124(27)
      acd124(42)=dotproduct(ninjaE3,spval5k7)
      acd124(43)=abb124(29)
      acd124(44)=dotproduct(ninjaE3,spval5k3)
      acd124(45)=abb124(34)
      acd124(46)=dotproduct(ninjaE3,spval6k7)
      acd124(47)=abb124(40)
      acd124(48)=dotproduct(k7,ninjaA)
      acd124(49)=dotproduct(ninjaA,spvak4k2)
      acd124(50)=dotproduct(ninjaA,ninjaA)
      acd124(51)=abb124(24)
      acd124(52)=dotproduct(ninjaA,spvak2k3)
      acd124(53)=dotproduct(ninjaA,spvak1k3)
      acd124(54)=dotproduct(ninjaA,spvak1k7)
      acd124(55)=dotproduct(ninjaA,spval6k3)
      acd124(56)=dotproduct(ninjaA,spvak2k7)
      acd124(57)=dotproduct(ninjaA,spval5k7)
      acd124(58)=dotproduct(ninjaA,spval5k3)
      acd124(59)=dotproduct(ninjaA,spval6k7)
      acd124(60)=acd124(14)*acd124(13)
      acd124(61)=acd124(12)*acd124(11)
      acd124(62)=acd124(9)*acd124(10)
      acd124(63)=acd124(4)*acd124(7)
      acd124(60)=acd124(60)+acd124(61)+acd124(62)+acd124(63)
      acd124(60)=acd124(60)*acd124(5)
      acd124(61)=acd124(14)*acd124(16)
      acd124(62)=acd124(12)*acd124(15)
      acd124(63)=acd124(9)*acd124(8)
      acd124(64)=acd124(4)*acd124(1)
      acd124(61)=acd124(61)+acd124(62)+acd124(63)+acd124(64)
      acd124(62)=acd124(61)*acd124(3)
      acd124(60)=acd124(60)+acd124(62)+acd124(17)
      acd124(62)=acd124(2)*acd124(60)
      acd124(63)=acd124(61)*acd124(6)
      acd124(64)=acd124(5)*acd124(63)
      acd124(65)=acd124(18)*acd124(19)
      acd124(62)=acd124(62)+acd124(65)+acd124(64)
      acd124(64)=acd124(61)*acd124(22)
      acd124(65)=acd124(47)*acd124(46)
      acd124(66)=acd124(45)*acd124(44)
      acd124(67)=acd124(43)*acd124(42)
      acd124(68)=acd124(41)*acd124(40)
      acd124(69)=acd124(38)*acd124(37)
      acd124(70)=acd124(36)*acd124(35)
      acd124(71)=acd124(34)*acd124(33)
      acd124(72)=acd124(31)*acd124(30)
      acd124(73)=acd124(23)*acd124(24)
      acd124(74)=acd124(18)*acd124(39)
      acd124(75)=2.0_ki*acd124(26)
      acd124(76)=acd124(75)*acd124(17)
      acd124(64)=acd124(71)+acd124(72)+acd124(73)+acd124(74)+acd124(69)+acd124(&
      &70)+acd124(64)+acd124(76)+acd124(65)+acd124(66)+acd124(67)+acd124(68)
      acd124(65)=acd124(12)*acd124(28)
      acd124(66)=acd124(9)*acd124(27)
      acd124(67)=acd124(4)*acd124(20)
      acd124(68)=acd124(14)*acd124(29)
      acd124(65)=acd124(65)+acd124(66)+acd124(67)+acd124(68)
      acd124(66)=acd124(5)*acd124(65)
      acd124(67)=acd124(2)*acd124(32)
      acd124(66)=acd124(67)+acd124(66)+acd124(64)
      acd124(66)=acd124(2)*acd124(66)
      acd124(61)=acd124(5)*acd124(21)*acd124(61)
      acd124(67)=acd124(23)*acd124(25)
      acd124(68)=acd124(75)*acd124(19)
      acd124(67)=acd124(67)+acd124(68)
      acd124(68)=acd124(18)*acd124(67)
      acd124(61)=acd124(66)+acd124(68)+acd124(61)
      acd124(60)=ninjaP*acd124(60)
      acd124(66)=acd124(22)*acd124(65)
      acd124(68)=acd124(47)*acd124(59)
      acd124(69)=acd124(45)*acd124(58)
      acd124(70)=acd124(43)*acd124(57)
      acd124(71)=acd124(41)*acd124(56)
      acd124(72)=acd124(39)*acd124(49)
      acd124(73)=acd124(38)*acd124(55)
      acd124(74)=acd124(36)*acd124(54)
      acd124(76)=acd124(34)*acd124(53)
      acd124(77)=acd124(31)*acd124(52)
      acd124(78)=acd124(24)*acd124(48)
      acd124(79)=acd124(17)*acd124(50)
      acd124(80)=acd124(21)*acd124(32)
      acd124(60)=2.0_ki*acd124(80)+acd124(79)+acd124(78)+acd124(77)+acd124(76)+&
      &acd124(74)+acd124(73)+acd124(72)+acd124(71)+acd124(70)+acd124(68)+acd124&
      &(69)+acd124(60)+acd124(66)
      acd124(60)=acd124(2)*acd124(60)
      acd124(64)=acd124(21)*acd124(64)
      acd124(63)=ninjaP*acd124(63)
      acd124(65)=acd124(21)*acd124(65)
      acd124(63)=acd124(63)+acd124(65)
      acd124(63)=acd124(5)*acd124(63)
      acd124(65)=acd124(49)*acd124(67)
      acd124(66)=ninjaP+acd124(50)
      acd124(66)=acd124(19)*acd124(66)
      acd124(67)=acd124(25)*acd124(48)
      acd124(66)=acd124(67)+acd124(66)
      acd124(66)=acd124(18)*acd124(66)
      acd124(67)=acd124(51)*acd124(75)
      acd124(60)=acd124(60)+acd124(63)+acd124(64)+acd124(67)+acd124(66)+acd124(&
      &65)
      brack(ninjaidxt1mu0)=acd124(61)
      brack(ninjaidxt0mu0)=acd124(60)
      brack(ninjaidxt0mu2)=acd124(62)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d124h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd124h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k2
	     vecA(1:4) = + a(0:3) - qshift(1:4)
	     vecB(1:4) = + b(0:3)
	     vecC(1:4) = + c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d124h5l131
