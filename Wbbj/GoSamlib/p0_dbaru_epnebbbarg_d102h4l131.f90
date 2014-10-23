module     p0_dbaru_epnebbbarg_d102h4l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d102h4l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd102h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(11) :: acd102
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd102(1)=dotproduct(ninjaE3,spvak4k3)
      acd102(2)=dotproduct(ninjaE3,spval5k2)
      acd102(3)=dotproduct(ninjaE3,spvak7k2)
      acd102(4)=abb102(9)
      acd102(5)=dotproduct(ninjaE3,spval6k2)
      acd102(6)=abb102(13)
      acd102(7)=dotproduct(ninjaE3,spvak1k2)
      acd102(8)=abb102(26)
      acd102(9)=acd102(4)*acd102(2)
      acd102(10)=acd102(6)*acd102(5)
      acd102(11)=acd102(8)*acd102(7)
      acd102(9)=acd102(11)+acd102(9)+acd102(10)
      acd102(9)=acd102(9)*acd102(3)*acd102(1)
      brack(ninjaidxt2mu0)=acd102(9)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd102h4
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(90) :: acd102
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd102(1)=dotproduct(ninjaE3,spvak4k3)
      acd102(2)=dotproduct(ninjaE3,spval5k2)
      acd102(3)=dotproduct(ninjaE4,spvak7k2)
      acd102(4)=abb102(9)
      acd102(5)=dotproduct(ninjaE3,spvak7k2)
      acd102(6)=dotproduct(ninjaE4,spval5k2)
      acd102(7)=dotproduct(ninjaE4,spvak1k2)
      acd102(8)=abb102(26)
      acd102(9)=dotproduct(ninjaE4,spval6k2)
      acd102(10)=abb102(13)
      acd102(11)=dotproduct(ninjaE3,spvak1k2)
      acd102(12)=dotproduct(ninjaE3,spval6k2)
      acd102(13)=dotproduct(ninjaE4,spvak4k3)
      acd102(14)=abb102(36)
      acd102(15)=abb102(11)
      acd102(16)=abb102(15)
      acd102(17)=abb102(31)
      acd102(18)=dotproduct(ninjaE3,spvak4k2)
      acd102(19)=abb102(23)
      acd102(20)=dotproduct(k3,ninjaE3)
      acd102(21)=abb102(35)
      acd102(22)=abb102(22)
      acd102(23)=abb102(30)
      acd102(24)=abb102(27)
      acd102(25)=dotproduct(k4,ninjaE3)
      acd102(26)=dotproduct(ninjaA,ninjaE3)
      acd102(27)=dotproduct(ninjaA,spvak4k3)
      acd102(28)=dotproduct(ninjaA,spval5k2)
      acd102(29)=dotproduct(ninjaA,spvak7k2)
      acd102(30)=dotproduct(ninjaA,spvak1k2)
      acd102(31)=dotproduct(ninjaA,spval6k2)
      acd102(32)=abb102(37)
      acd102(33)=abb102(40)
      acd102(34)=abb102(10)
      acd102(35)=dotproduct(ninjaE3,spvak3k2)
      acd102(36)=abb102(25)
      acd102(37)=abb102(38)
      acd102(38)=dotproduct(ninjaE3,spvak1k3)
      acd102(39)=abb102(19)
      acd102(40)=dotproduct(ninjaE3,spval6k3)
      acd102(41)=abb102(29)
      acd102(42)=dotproduct(ninjaE3,spval5k3)
      acd102(43)=abb102(34)
      acd102(44)=dotproduct(k3,ninjaA)
      acd102(45)=dotproduct(ninjaA,spvak4k2)
      acd102(46)=dotproduct(k4,ninjaA)
      acd102(47)=dotproduct(ninjaA,ninjaA)
      acd102(48)=abb102(16)
      acd102(49)=dotproduct(ninjaA,spvak3k2)
      acd102(50)=dotproduct(ninjaA,spvak1k3)
      acd102(51)=dotproduct(ninjaA,spval6k3)
      acd102(52)=dotproduct(ninjaA,spval5k3)
      acd102(53)=abb102(12)
      acd102(54)=dotproduct(ninjaE3,spvak1k4)
      acd102(55)=abb102(14)
      acd102(56)=abb102(17)
      acd102(57)=dotproduct(ninjaE3,spval6k4)
      acd102(58)=abb102(18)
      acd102(59)=abb102(21)
      acd102(60)=abb102(20)
      acd102(61)=abb102(24)
      acd102(62)=dotproduct(ninjaE3,spval5k4)
      acd102(63)=abb102(33)
      acd102(64)=acd102(4)*acd102(2)
      acd102(65)=acd102(8)*acd102(11)
      acd102(66)=acd102(10)*acd102(12)
      acd102(64)=acd102(66)+acd102(64)+acd102(65)
      acd102(65)=acd102(5)*acd102(64)*acd102(13)
      acd102(66)=acd102(1)*acd102(64)*acd102(3)
      acd102(65)=acd102(65)+acd102(66)
      acd102(66)=acd102(19)*acd102(18)
      acd102(67)=acd102(15)*acd102(5)
      acd102(66)=acd102(66)-acd102(67)
      acd102(68)=acd102(14)*acd102(2)
      acd102(69)=acd102(16)*acd102(11)
      acd102(70)=acd102(17)*acd102(12)
      acd102(68)=acd102(66)+acd102(68)+acd102(69)+acd102(70)
      acd102(69)=acd102(1)*acd102(5)
      acd102(70)=acd102(69)*acd102(10)
      acd102(71)=acd102(70)*acd102(9)
      acd102(72)=acd102(69)*acd102(8)
      acd102(73)=acd102(72)*acd102(7)
      acd102(74)=acd102(69)*acd102(4)
      acd102(75)=acd102(74)*acd102(6)
      acd102(71)=acd102(75)+acd102(71)+acd102(73)
      acd102(73)=acd102(68)+acd102(71)+acd102(65)
      acd102(75)=acd102(32)*acd102(2)
      acd102(76)=acd102(34)*acd102(11)
      acd102(77)=-acd102(35)*acd102(24)
      acd102(78)=acd102(36)*acd102(12)
      acd102(79)=acd102(37)*acd102(18)
      acd102(75)=acd102(79)+acd102(78)+acd102(77)+acd102(76)+acd102(75)
      acd102(75)=acd102(1)*acd102(75)
      acd102(76)=acd102(21)*acd102(2)
      acd102(77)=acd102(22)*acd102(11)
      acd102(78)=acd102(23)*acd102(12)
      acd102(67)=acd102(76)+acd102(77)+acd102(78)-acd102(67)
      acd102(76)=acd102(25)+acd102(20)
      acd102(77)=-acd102(76)*acd102(67)
      acd102(78)=2.0_ki*acd102(26)
      acd102(79)=acd102(78)*acd102(68)
      acd102(80)=acd102(29)*acd102(1)
      acd102(81)=acd102(27)*acd102(5)
      acd102(80)=acd102(80)+acd102(81)
      acd102(81)=acd102(80)*acd102(64)
      acd102(82)=acd102(39)*acd102(38)
      acd102(83)=acd102(41)*acd102(40)
      acd102(84)=acd102(43)*acd102(42)
      acd102(82)=acd102(84)+acd102(82)+acd102(83)
      acd102(83)=acd102(5)*acd102(82)
      acd102(84)=acd102(76)*acd102(24)
      acd102(85)=acd102(18)*acd102(84)
      acd102(74)=acd102(28)*acd102(74)
      acd102(72)=acd102(30)*acd102(72)
      acd102(70)=acd102(31)*acd102(70)
      acd102(69)=acd102(33)*acd102(69)
      acd102(69)=acd102(69)+acd102(70)+acd102(72)+acd102(74)+acd102(85)+acd102(&
      &79)+acd102(75)+acd102(83)+acd102(77)+acd102(81)
      acd102(65)=acd102(65)+acd102(66)+acd102(71)
      acd102(65)=ninjaP*acd102(65)
      acd102(66)=acd102(24)*acd102(18)
      acd102(66)=-acd102(66)+acd102(67)
      acd102(67)=-acd102(46)-acd102(44)
      acd102(66)=acd102(66)*acd102(67)
      acd102(64)=acd102(27)*acd102(64)
      acd102(67)=-acd102(78)+acd102(76)
      acd102(67)=acd102(15)*acd102(67)
      acd102(64)=acd102(67)+acd102(64)+acd102(82)
      acd102(64)=acd102(29)*acd102(64)
      acd102(67)=acd102(47)*acd102(68)
      acd102(68)=acd102(50)*acd102(39)
      acd102(70)=acd102(51)*acd102(41)
      acd102(71)=acd102(52)*acd102(43)
      acd102(68)=acd102(71)+acd102(70)+acd102(68)
      acd102(68)=acd102(5)*acd102(68)
      acd102(70)=-acd102(21)*acd102(28)
      acd102(71)=-acd102(22)*acd102(30)
      acd102(72)=-acd102(23)*acd102(31)
      acd102(70)=acd102(72)+acd102(71)+acd102(70)
      acd102(70)=acd102(76)*acd102(70)
      acd102(71)=acd102(28)*acd102(4)
      acd102(72)=acd102(30)*acd102(8)
      acd102(74)=acd102(31)*acd102(10)
      acd102(71)=acd102(33)+acd102(74)+acd102(72)+acd102(71)
      acd102(71)=acd102(80)*acd102(71)
      acd102(72)=ninjaP*acd102(2)
      acd102(74)=acd102(28)*acd102(78)
      acd102(72)=acd102(72)+acd102(74)
      acd102(72)=acd102(14)*acd102(72)
      acd102(74)=ninjaP*acd102(11)
      acd102(75)=acd102(30)*acd102(78)
      acd102(74)=acd102(74)+acd102(75)
      acd102(74)=acd102(16)*acd102(74)
      acd102(75)=ninjaP*acd102(12)
      acd102(76)=acd102(31)*acd102(78)
      acd102(75)=acd102(75)+acd102(76)
      acd102(75)=acd102(17)*acd102(75)
      acd102(76)=acd102(19)*acd102(78)
      acd102(76)=acd102(84)+acd102(76)
      acd102(76)=acd102(45)*acd102(76)
      acd102(77)=acd102(27)*acd102(2)
      acd102(79)=acd102(28)*acd102(1)
      acd102(77)=acd102(77)+acd102(79)
      acd102(77)=acd102(32)*acd102(77)
      acd102(79)=acd102(27)*acd102(11)
      acd102(80)=acd102(30)*acd102(1)
      acd102(79)=acd102(79)+acd102(80)
      acd102(79)=acd102(34)*acd102(79)
      acd102(80)=acd102(27)*acd102(12)
      acd102(81)=acd102(31)*acd102(1)
      acd102(80)=acd102(80)+acd102(81)
      acd102(80)=acd102(36)*acd102(80)
      acd102(81)=acd102(18)*acd102(27)
      acd102(82)=acd102(45)*acd102(1)
      acd102(81)=acd102(81)+acd102(82)
      acd102(81)=acd102(37)*acd102(81)
      acd102(82)=-acd102(24)*acd102(27)
      acd102(82)=acd102(53)+acd102(82)
      acd102(82)=acd102(35)*acd102(82)
      acd102(78)=acd102(48)*acd102(78)
      acd102(83)=-acd102(49)*acd102(24)*acd102(1)
      acd102(84)=acd102(55)*acd102(54)
      acd102(85)=acd102(56)*acd102(18)
      acd102(86)=acd102(58)*acd102(57)
      acd102(87)=acd102(59)*acd102(38)
      acd102(88)=acd102(60)*acd102(40)
      acd102(89)=acd102(61)*acd102(42)
      acd102(90)=acd102(63)*acd102(62)
      acd102(64)=acd102(90)+acd102(89)+acd102(88)+acd102(87)+acd102(86)+acd102(&
      &85)+acd102(84)+acd102(83)+acd102(78)+acd102(81)+acd102(80)+acd102(79)+ac&
      &d102(77)+acd102(76)+acd102(67)+acd102(75)+acd102(74)+acd102(72)+acd102(6&
      &4)+acd102(71)+acd102(70)+acd102(68)+acd102(82)+acd102(66)+acd102(65)
      brack(ninjaidxt1mu0)=acd102(69)
      brack(ninjaidxt0mu0)=acd102(64)
      brack(ninjaidxt0mu2)=acd102(73)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d102h4_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd102h4
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k2
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
end module     p0_dbaru_epnebbbarg_d102h4l131
