module     p0_dbaru_epnebbbarg_d139h5l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d139h5l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd139h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(33) :: acd139
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd139(1)=dotproduct(k1,ninjaE3)
      acd139(2)=dotproduct(ninjaE3,spvak7k2)
      acd139(3)=abb139(30)
      acd139(4)=dotproduct(k2,ninjaE3)
      acd139(5)=abb139(23)
      acd139(6)=dotproduct(k3,ninjaE3)
      acd139(7)=abb139(35)
      acd139(8)=dotproduct(k4,ninjaE3)
      acd139(9)=dotproduct(l5,ninjaE3)
      acd139(10)=abb139(41)
      acd139(11)=dotproduct(l6,ninjaE3)
      acd139(12)=dotproduct(k7,ninjaE3)
      acd139(13)=abb139(32)
      acd139(14)=dotproduct(ninjaE3,spvak4k3)
      acd139(15)=abb139(15)
      acd139(16)=dotproduct(ninjaE3,spvak4k2)
      acd139(17)=abb139(17)
      acd139(18)=dotproduct(ninjaE3,spvak1k7)
      acd139(19)=abb139(18)
      acd139(20)=dotproduct(ninjaE3,spval6k2)
      acd139(21)=abb139(19)
      acd139(22)=dotproduct(ninjaE3,spval6l5)
      acd139(23)=abb139(37)
      acd139(24)=acd139(11)+acd139(9)
      acd139(24)=acd139(24)*acd139(10)
      acd139(25)=acd139(8)+acd139(6)
      acd139(25)=acd139(25)*acd139(7)
      acd139(26)=acd139(3)*acd139(1)
      acd139(27)=acd139(5)*acd139(4)
      acd139(28)=acd139(13)*acd139(12)
      acd139(29)=acd139(15)*acd139(14)
      acd139(30)=acd139(17)*acd139(16)
      acd139(31)=acd139(19)*acd139(18)
      acd139(32)=acd139(21)*acd139(20)
      acd139(33)=acd139(23)*acd139(22)
      acd139(24)=acd139(25)+acd139(24)+acd139(33)+acd139(32)+acd139(31)+acd139(&
      &30)+acd139(29)+acd139(28)+acd139(26)+acd139(27)
      acd139(24)=acd139(2)*acd139(24)
      brack(ninjaidxt2mu0)=acd139(24)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd139h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(79) :: acd139
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd139(1)=dotproduct(k1,ninjaE3)
      acd139(2)=dotproduct(ninjaE4,spvak7k2)
      acd139(3)=abb139(30)
      acd139(4)=dotproduct(k1,ninjaE4)
      acd139(5)=dotproduct(ninjaE3,spvak7k2)
      acd139(6)=dotproduct(k2,ninjaE3)
      acd139(7)=abb139(23)
      acd139(8)=dotproduct(k2,ninjaE4)
      acd139(9)=dotproduct(k3,ninjaE3)
      acd139(10)=abb139(35)
      acd139(11)=dotproduct(k3,ninjaE4)
      acd139(12)=dotproduct(k4,ninjaE3)
      acd139(13)=dotproduct(k4,ninjaE4)
      acd139(14)=dotproduct(l5,ninjaE3)
      acd139(15)=abb139(41)
      acd139(16)=dotproduct(l5,ninjaE4)
      acd139(17)=dotproduct(l6,ninjaE3)
      acd139(18)=dotproduct(l6,ninjaE4)
      acd139(19)=dotproduct(k7,ninjaE3)
      acd139(20)=abb139(32)
      acd139(21)=dotproduct(k7,ninjaE4)
      acd139(22)=dotproduct(ninjaE4,spvak4k3)
      acd139(23)=abb139(15)
      acd139(24)=dotproduct(ninjaE4,spvak4k2)
      acd139(25)=abb139(17)
      acd139(26)=dotproduct(ninjaE4,spvak1k7)
      acd139(27)=abb139(18)
      acd139(28)=dotproduct(ninjaE4,spval6k2)
      acd139(29)=abb139(19)
      acd139(30)=dotproduct(ninjaE4,spval6l5)
      acd139(31)=abb139(37)
      acd139(32)=dotproduct(ninjaE3,spvak4k3)
      acd139(33)=dotproduct(ninjaE3,spvak4k2)
      acd139(34)=dotproduct(ninjaE3,spvak1k7)
      acd139(35)=dotproduct(ninjaE3,spval6k2)
      acd139(36)=dotproduct(ninjaE3,spval6l5)
      acd139(37)=abb139(26)
      acd139(38)=dotproduct(k1,ninjaA)
      acd139(39)=dotproduct(ninjaA,spvak7k2)
      acd139(40)=abb139(25)
      acd139(41)=dotproduct(k2,ninjaA)
      acd139(42)=abb139(91)
      acd139(43)=dotproduct(k3,ninjaA)
      acd139(44)=abb139(107)
      acd139(45)=dotproduct(k4,ninjaA)
      acd139(46)=dotproduct(l5,ninjaA)
      acd139(47)=abb139(81)
      acd139(48)=dotproduct(l6,ninjaA)
      acd139(49)=dotproduct(k7,ninjaA)
      acd139(50)=abb139(13)
      acd139(51)=dotproduct(ninjaA,ninjaE3)
      acd139(52)=dotproduct(ninjaA,spvak4k3)
      acd139(53)=dotproduct(ninjaA,spvak4k2)
      acd139(54)=dotproduct(ninjaA,spvak1k7)
      acd139(55)=dotproduct(ninjaA,spval6k2)
      acd139(56)=dotproduct(ninjaA,spval6l5)
      acd139(57)=abb139(14)
      acd139(58)=abb139(24)
      acd139(59)=abb139(16)
      acd139(60)=abb139(47)
      acd139(61)=abb139(40)
      acd139(62)=dotproduct(ninjaA,ninjaA)
      acd139(63)=abb139(12)
      acd139(64)=acd139(11)+acd139(13)
      acd139(64)=acd139(64)*acd139(10)
      acd139(65)=acd139(16)+acd139(18)
      acd139(65)=acd139(65)*acd139(15)
      acd139(66)=acd139(31)*acd139(30)
      acd139(67)=acd139(29)*acd139(28)
      acd139(68)=acd139(27)*acd139(26)
      acd139(69)=acd139(25)*acd139(24)
      acd139(70)=acd139(23)*acd139(22)
      acd139(71)=acd139(20)*acd139(21)
      acd139(72)=acd139(7)*acd139(8)
      acd139(73)=acd139(3)*acd139(4)
      acd139(64)=acd139(65)+acd139(66)+acd139(67)+acd139(68)+acd139(69)+acd139(&
      &64)+acd139(70)+acd139(71)+acd139(72)+acd139(73)
      acd139(64)=acd139(64)*acd139(5)
      acd139(65)=acd139(9)+acd139(12)
      acd139(66)=acd139(65)*acd139(10)
      acd139(67)=acd139(14)+acd139(17)
      acd139(68)=acd139(67)*acd139(15)
      acd139(69)=acd139(31)*acd139(36)
      acd139(70)=acd139(29)*acd139(35)
      acd139(71)=acd139(27)*acd139(34)
      acd139(72)=acd139(25)*acd139(33)
      acd139(73)=acd139(23)*acd139(32)
      acd139(74)=acd139(20)*acd139(19)
      acd139(75)=acd139(7)*acd139(6)
      acd139(76)=acd139(3)*acd139(1)
      acd139(66)=acd139(72)+acd139(71)+acd139(68)+acd139(66)+acd139(69)+acd139(&
      &70)+acd139(73)+acd139(74)+acd139(75)+acd139(76)
      acd139(68)=acd139(66)*acd139(2)
      acd139(64)=acd139(64)+acd139(68)+acd139(37)
      acd139(66)=acd139(39)*acd139(66)
      acd139(68)=acd139(31)*acd139(56)
      acd139(69)=acd139(29)*acd139(55)
      acd139(70)=acd139(27)*acd139(54)
      acd139(71)=acd139(25)*acd139(53)
      acd139(72)=acd139(23)*acd139(52)
      acd139(73)=acd139(20)*acd139(49)
      acd139(74)=acd139(7)*acd139(41)
      acd139(75)=acd139(43)+acd139(45)
      acd139(76)=acd139(75)*acd139(10)
      acd139(77)=acd139(46)+acd139(48)
      acd139(78)=acd139(77)*acd139(15)
      acd139(79)=acd139(3)*acd139(38)
      acd139(68)=acd139(71)+acd139(72)+acd139(73)+acd139(74)+acd139(68)+acd139(&
      &69)+acd139(70)+acd139(76)+acd139(78)+acd139(79)+acd139(57)
      acd139(69)=acd139(5)*acd139(68)
      acd139(67)=acd139(47)*acd139(67)
      acd139(65)=acd139(44)*acd139(65)
      acd139(70)=acd139(37)*acd139(51)
      acd139(71)=acd139(36)*acd139(61)
      acd139(72)=acd139(35)*acd139(60)
      acd139(73)=acd139(33)*acd139(59)
      acd139(74)=acd139(32)*acd139(58)
      acd139(76)=acd139(19)*acd139(50)
      acd139(78)=acd139(6)*acd139(42)
      acd139(79)=acd139(1)*acd139(40)
      acd139(65)=acd139(69)+acd139(66)+acd139(79)+acd139(78)+acd139(76)+acd139(&
      &74)+acd139(73)+acd139(72)+2.0_ki*acd139(70)+acd139(71)+acd139(65)+acd139&
      &(67)
      acd139(66)=ninjaP*acd139(64)
      acd139(67)=acd139(39)*acd139(68)
      acd139(68)=acd139(56)*acd139(61)
      acd139(69)=acd139(55)*acd139(60)
      acd139(70)=acd139(53)*acd139(59)
      acd139(71)=acd139(52)*acd139(58)
      acd139(72)=acd139(49)*acd139(50)
      acd139(73)=acd139(41)*acd139(42)
      acd139(74)=acd139(38)*acd139(40)
      acd139(76)=acd139(47)*acd139(77)
      acd139(75)=acd139(44)*acd139(75)
      acd139(77)=acd139(37)*acd139(62)
      acd139(66)=acd139(67)+acd139(77)+acd139(75)+acd139(76)+acd139(74)+acd139(&
      &73)+acd139(72)+acd139(71)+acd139(70)+acd139(69)+acd139(63)+acd139(68)+ac&
      &d139(66)
      brack(ninjaidxt1mu0)=acd139(65)
      brack(ninjaidxt0mu0)=acd139(66)
      brack(ninjaidxt0mu2)=acd139(64)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d139h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd139h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k3+k2-k7-k4
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
end module     p0_dbaru_epnebbbarg_d139h5l131
