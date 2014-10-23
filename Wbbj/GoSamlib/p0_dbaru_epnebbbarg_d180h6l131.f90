module     p0_dbaru_epnebbbarg_d180h6l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d180h6l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd180h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(41) :: acd180
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd180(1)=dotproduct(k2,ninjaE3)
      acd180(2)=dotproduct(ninjaE3,spvak1k2)
      acd180(3)=abb180(33)
      acd180(4)=dotproduct(ninjaE3,spvak1k3)
      acd180(5)=abb180(46)
      acd180(6)=dotproduct(ninjaE3,spvak4k2)
      acd180(7)=abb180(34)
      acd180(8)=dotproduct(l6,ninjaE3)
      acd180(9)=abb180(31)
      acd180(10)=abb180(26)
      acd180(11)=abb180(32)
      acd180(12)=dotproduct(k7,ninjaE3)
      acd180(13)=dotproduct(ninjaE3,spvak7k2)
      acd180(14)=abb180(16)
      acd180(15)=dotproduct(ninjaE3,spval6k2)
      acd180(16)=abb180(22)
      acd180(17)=dotproduct(ninjaE3,spval5l6)
      acd180(18)=abb180(27)
      acd180(19)=dotproduct(ninjaE3,spval5k2)
      acd180(20)=abb180(35)
      acd180(21)=dotproduct(ninjaE3,spvak7l6)
      acd180(22)=abb180(41)
      acd180(23)=abb180(19)
      acd180(24)=abb180(37)
      acd180(25)=abb180(52)
      acd180(26)=abb180(54)
      acd180(27)=abb180(57)
      acd180(28)=abb180(48)
      acd180(29)=abb180(40)
      acd180(30)=abb180(43)
      acd180(31)=abb180(45)
      acd180(32)=abb180(36)
      acd180(33)=acd180(8)+acd180(12)
      acd180(34)=acd180(11)*acd180(33)
      acd180(35)=acd180(21)*acd180(32)
      acd180(36)=acd180(19)*acd180(31)
      acd180(37)=acd180(17)*acd180(30)
      acd180(38)=acd180(15)*acd180(29)
      acd180(39)=acd180(13)*acd180(24)
      acd180(40)=acd180(1)*acd180(7)
      acd180(34)=acd180(40)+acd180(39)+acd180(38)+acd180(37)+acd180(35)+acd180(&
      &36)+acd180(34)
      acd180(34)=acd180(6)*acd180(34)
      acd180(35)=-acd180(10)*acd180(33)
      acd180(36)=acd180(21)*acd180(28)
      acd180(37)=acd180(19)*acd180(27)
      acd180(38)=acd180(17)*acd180(26)
      acd180(39)=acd180(15)*acd180(25)
      acd180(40)=acd180(13)*acd180(23)
      acd180(41)=acd180(1)*acd180(5)
      acd180(35)=acd180(41)+acd180(40)+acd180(39)+acd180(38)+acd180(36)+acd180(&
      &37)+acd180(35)
      acd180(35)=acd180(4)*acd180(35)
      acd180(33)=acd180(9)*acd180(33)
      acd180(36)=acd180(21)*acd180(22)
      acd180(37)=acd180(19)*acd180(20)
      acd180(38)=acd180(17)*acd180(18)
      acd180(39)=acd180(15)*acd180(16)
      acd180(40)=acd180(13)*acd180(14)
      acd180(41)=acd180(1)*acd180(3)
      acd180(33)=acd180(41)+acd180(40)+acd180(39)+acd180(38)+acd180(36)+acd180(&
      &37)+acd180(33)
      acd180(33)=acd180(2)*acd180(33)
      acd180(33)=acd180(33)+acd180(34)+acd180(35)
      brack(ninjaidxt2mu0)=acd180(33)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd180h6
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(91) :: acd180
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd180(1)=dotproduct(k2,ninjaE3)
      acd180(2)=dotproduct(ninjaE4,spvak1k2)
      acd180(3)=abb180(33)
      acd180(4)=dotproduct(ninjaE4,spvak1k3)
      acd180(5)=abb180(46)
      acd180(6)=dotproduct(ninjaE4,spvak4k2)
      acd180(7)=abb180(34)
      acd180(8)=dotproduct(k2,ninjaE4)
      acd180(9)=dotproduct(ninjaE3,spvak1k2)
      acd180(10)=dotproduct(ninjaE3,spvak1k3)
      acd180(11)=dotproduct(ninjaE3,spvak4k2)
      acd180(12)=dotproduct(l6,ninjaE3)
      acd180(13)=abb180(31)
      acd180(14)=abb180(26)
      acd180(15)=abb180(32)
      acd180(16)=dotproduct(l6,ninjaE4)
      acd180(17)=dotproduct(k7,ninjaE3)
      acd180(18)=dotproduct(k7,ninjaE4)
      acd180(19)=dotproduct(ninjaE3,spvak7l6)
      acd180(20)=abb180(41)
      acd180(21)=abb180(48)
      acd180(22)=abb180(36)
      acd180(23)=dotproduct(ninjaE3,spvak7k2)
      acd180(24)=abb180(16)
      acd180(25)=abb180(19)
      acd180(26)=abb180(37)
      acd180(27)=dotproduct(ninjaE4,spvak7l6)
      acd180(28)=dotproduct(ninjaE4,spvak7k2)
      acd180(29)=dotproduct(ninjaE4,spval6k2)
      acd180(30)=abb180(22)
      acd180(31)=dotproduct(ninjaE4,spval5k2)
      acd180(32)=abb180(35)
      acd180(33)=dotproduct(ninjaE4,spval5l6)
      acd180(34)=abb180(27)
      acd180(35)=abb180(52)
      acd180(36)=abb180(57)
      acd180(37)=abb180(54)
      acd180(38)=dotproduct(ninjaE3,spval6k2)
      acd180(39)=abb180(40)
      acd180(40)=dotproduct(ninjaE3,spval5k2)
      acd180(41)=abb180(45)
      acd180(42)=dotproduct(ninjaE3,spval5l6)
      acd180(43)=abb180(43)
      acd180(44)=abb180(28)
      acd180(45)=dotproduct(k2,ninjaA)
      acd180(46)=dotproduct(ninjaA,spvak1k2)
      acd180(47)=dotproduct(ninjaA,spvak1k3)
      acd180(48)=dotproduct(ninjaA,spvak4k2)
      acd180(49)=abb180(21)
      acd180(50)=dotproduct(l5,ninjaE3)
      acd180(51)=abb180(25)
      acd180(52)=dotproduct(l6,ninjaA)
      acd180(53)=abb180(24)
      acd180(54)=dotproduct(k7,ninjaA)
      acd180(55)=dotproduct(ninjaA,ninjaE3)
      acd180(56)=dotproduct(ninjaA,spvak7l6)
      acd180(57)=dotproduct(ninjaA,spvak7k2)
      acd180(58)=dotproduct(ninjaA,spval6k2)
      acd180(59)=dotproduct(ninjaA,spval5k2)
      acd180(60)=dotproduct(ninjaA,spval5l6)
      acd180(61)=abb180(14)
      acd180(62)=abb180(15)
      acd180(63)=abb180(29)
      acd180(64)=dotproduct(ninjaE3,spval5k3)
      acd180(65)=abb180(17)
      acd180(66)=abb180(18)
      acd180(67)=abb180(23)
      acd180(68)=abb180(30)
      acd180(69)=dotproduct(l5,ninjaA)
      acd180(70)=dotproduct(ninjaA,ninjaA)
      acd180(71)=dotproduct(ninjaA,spval5k3)
      acd180(72)=abb180(20)
      acd180(73)=acd180(43)*acd180(33)
      acd180(74)=acd180(41)*acd180(31)
      acd180(75)=acd180(39)*acd180(29)
      acd180(76)=acd180(26)*acd180(28)
      acd180(77)=acd180(22)*acd180(27)
      acd180(78)=acd180(7)*acd180(8)
      acd180(79)=acd180(16)+acd180(18)
      acd180(80)=acd180(79)*acd180(15)
      acd180(73)=acd180(75)+acd180(76)+acd180(77)+acd180(78)+acd180(80)+acd180(&
      &73)+acd180(74)
      acd180(73)=acd180(73)*acd180(11)
      acd180(74)=acd180(37)*acd180(33)
      acd180(75)=acd180(36)*acd180(31)
      acd180(76)=acd180(35)*acd180(29)
      acd180(77)=acd180(25)*acd180(28)
      acd180(78)=acd180(21)*acd180(27)
      acd180(80)=acd180(5)*acd180(8)
      acd180(81)=acd180(79)*acd180(14)
      acd180(74)=acd180(76)+acd180(77)+acd180(78)+acd180(80)-acd180(81)+acd180(&
      &74)+acd180(75)
      acd180(74)=acd180(74)*acd180(10)
      acd180(75)=acd180(34)*acd180(33)
      acd180(76)=acd180(32)*acd180(31)
      acd180(77)=acd180(30)*acd180(29)
      acd180(78)=acd180(24)*acd180(28)
      acd180(80)=acd180(20)*acd180(27)
      acd180(81)=acd180(3)*acd180(8)
      acd180(79)=acd180(79)*acd180(13)
      acd180(75)=acd180(75)+acd180(81)+acd180(79)+acd180(76)+acd180(77)+acd180(&
      &78)+acd180(80)
      acd180(75)=acd180(75)*acd180(9)
      acd180(76)=acd180(42)*acd180(43)
      acd180(77)=acd180(38)*acd180(39)
      acd180(78)=acd180(40)*acd180(41)
      acd180(79)=acd180(23)*acd180(26)
      acd180(80)=acd180(12)+acd180(17)
      acd180(81)=acd180(80)*acd180(15)
      acd180(82)=acd180(19)*acd180(22)
      acd180(83)=acd180(1)*acd180(7)
      acd180(76)=acd180(81)+acd180(79)+acd180(78)+acd180(76)+acd180(77)+acd180(&
      &82)+acd180(83)
      acd180(77)=acd180(76)*acd180(6)
      acd180(78)=acd180(42)*acd180(34)
      acd180(79)=acd180(38)*acd180(30)
      acd180(81)=acd180(40)*acd180(32)
      acd180(82)=acd180(80)*acd180(13)
      acd180(83)=acd180(23)*acd180(24)
      acd180(84)=acd180(19)*acd180(20)
      acd180(85)=acd180(1)*acd180(3)
      acd180(78)=acd180(85)+acd180(84)+acd180(83)+acd180(82)+acd180(78)+acd180(&
      &79)+acd180(81)
      acd180(79)=acd180(78)*acd180(2)
      acd180(81)=acd180(42)*acd180(37)
      acd180(82)=acd180(38)*acd180(35)
      acd180(83)=acd180(40)*acd180(36)
      acd180(84)=acd180(23)*acd180(25)
      acd180(85)=acd180(80)*acd180(14)
      acd180(86)=acd180(19)*acd180(21)
      acd180(87)=acd180(1)*acd180(5)
      acd180(81)=acd180(87)+acd180(86)-acd180(85)+acd180(84)+acd180(81)+acd180(&
      &82)+acd180(83)
      acd180(82)=acd180(81)*acd180(4)
      acd180(73)=acd180(73)+acd180(74)+acd180(75)+acd180(44)+acd180(77)+acd180(&
      &79)+acd180(82)
      acd180(74)=acd180(48)*acd180(76)
      acd180(75)=acd180(47)*acd180(81)
      acd180(76)=acd180(46)*acd180(78)
      acd180(77)=acd180(43)*acd180(60)
      acd180(78)=acd180(41)*acd180(59)
      acd180(79)=acd180(39)*acd180(58)
      acd180(81)=acd180(26)*acd180(57)
      acd180(82)=acd180(22)*acd180(56)
      acd180(83)=acd180(7)*acd180(45)
      acd180(84)=acd180(52)+acd180(54)
      acd180(85)=acd180(84)*acd180(15)
      acd180(77)=acd180(78)+acd180(79)+acd180(81)+acd180(82)+acd180(83)+acd180(&
      &77)+acd180(85)+acd180(68)
      acd180(78)=acd180(11)*acd180(77)
      acd180(79)=acd180(37)*acd180(60)
      acd180(81)=acd180(36)*acd180(59)
      acd180(82)=acd180(35)*acd180(58)
      acd180(83)=acd180(25)*acd180(57)
      acd180(85)=acd180(21)*acd180(56)
      acd180(86)=acd180(5)*acd180(45)
      acd180(87)=acd180(84)*acd180(14)
      acd180(79)=acd180(81)+acd180(82)+acd180(83)+acd180(85)+acd180(66)+acd180(&
      &79)+acd180(86)-acd180(87)
      acd180(81)=acd180(10)*acd180(79)
      acd180(82)=acd180(34)*acd180(60)
      acd180(83)=acd180(32)*acd180(59)
      acd180(85)=acd180(30)*acd180(58)
      acd180(86)=acd180(24)*acd180(57)
      acd180(87)=acd180(20)*acd180(56)
      acd180(88)=acd180(3)*acd180(45)
      acd180(89)=acd180(84)*acd180(13)
      acd180(82)=acd180(83)+acd180(85)+acd180(86)+acd180(87)+acd180(63)+acd180(&
      &82)+acd180(88)+acd180(89)
      acd180(83)=acd180(9)*acd180(82)
      acd180(80)=acd180(53)*acd180(80)
      acd180(85)=acd180(65)*acd180(64)
      acd180(86)=acd180(51)*acd180(50)
      acd180(87)=acd180(44)*acd180(55)
      acd180(88)=acd180(40)*acd180(67)
      acd180(89)=acd180(23)*acd180(62)
      acd180(90)=acd180(19)*acd180(61)
      acd180(91)=acd180(1)*acd180(49)
      acd180(74)=acd180(83)+acd180(81)+acd180(78)+acd180(76)+acd180(75)+acd180(&
      &74)+acd180(91)+acd180(90)+acd180(89)+acd180(88)+2.0_ki*acd180(87)+acd180&
      &(85)+acd180(86)+acd180(80)
      acd180(75)=ninjaP*acd180(73)
      acd180(76)=acd180(48)*acd180(77)
      acd180(77)=acd180(47)*acd180(79)
      acd180(78)=acd180(46)*acd180(82)
      acd180(79)=acd180(53)*acd180(84)
      acd180(80)=acd180(65)*acd180(71)
      acd180(81)=acd180(51)*acd180(69)
      acd180(82)=acd180(44)*acd180(70)
      acd180(83)=acd180(59)*acd180(67)
      acd180(84)=acd180(57)*acd180(62)
      acd180(85)=acd180(56)*acd180(61)
      acd180(86)=acd180(45)*acd180(49)
      acd180(75)=acd180(75)+acd180(78)+acd180(77)+acd180(76)+acd180(86)+acd180(&
      &85)+acd180(84)+acd180(83)+acd180(82)+acd180(81)+acd180(72)+acd180(80)+ac&
      &d180(79)
      brack(ninjaidxt1mu0)=acd180(74)
      brack(ninjaidxt0mu0)=acd180(75)
      brack(ninjaidxt0mu2)=acd180(73)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d180h6_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd180h6
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
      if (deg.le.(1+(-1))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d180h6l131
