module     p0_dbaru_epnebbbarg_d292h1l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d292h1l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt1mu0 = 0
   integer, parameter :: ninjaidxt0mu0 = 1
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd292
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd292h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(89) :: acd292
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd292(1)=dotproduct(k2,ninjaE3)
      acd292(2)=dotproduct(ninjaE3,spvak1k2)
      acd292(3)=dotproduct(ninjaE3,spvak2k7)
      acd292(4)=dotproduct(ninjaE3,spvak4k3)
      acd292(5)=abb292(160)
      acd292(6)=dotproduct(ninjaE3,spval6l5)
      acd292(7)=abb292(116)
      acd292(8)=dotproduct(ninjaE3,spval6k2)
      acd292(9)=dotproduct(ninjaE3,spvak1l5)
      acd292(10)=dotproduct(k1,ninjaE3)
      acd292(11)=abb292(163)
      acd292(12)=abb292(155)
      acd292(13)=dotproduct(k2,ninjaA)
      acd292(14)=abb292(109)
      acd292(15)=dotproduct(k7,ninjaE3)
      acd292(16)=dotproduct(ninjaA,ninjaE3)
      acd292(17)=abb292(119)
      acd292(18)=abb292(101)
      acd292(19)=dotproduct(ninjaE3,spvak4k2)
      acd292(20)=abb292(150)
      acd292(21)=abb292(149)
      acd292(22)=dotproduct(ninjaA,spvak1k2)
      acd292(23)=dotproduct(ninjaA,spvak2k7)
      acd292(24)=dotproduct(ninjaA,spvak4k3)
      acd292(25)=abb292(12)
      acd292(26)=dotproduct(ninjaE3,spval6k3)
      acd292(27)=abb292(82)
      acd292(28)=dotproduct(ninjaE3,spvak2k3)
      acd292(29)=abb292(69)
      acd292(30)=dotproduct(ninjaE3,spval5k2)
      acd292(31)=abb292(13)
      acd292(32)=abb292(34)
      acd292(33)=abb292(162)
      acd292(34)=abb292(59)
      acd292(35)=dotproduct(ninjaE3,spvak7k2)
      acd292(36)=abb292(153)
      acd292(37)=dotproduct(ninjaE3,spval6k7)
      acd292(38)=abb292(127)
      acd292(39)=dotproduct(ninjaE3,spvak1k7)
      acd292(40)=abb292(103)
      acd292(41)=dotproduct(ninjaE3,spvak1k3)
      acd292(42)=abb292(53)
      acd292(43)=dotproduct(l5,ninjaE3)
      acd292(44)=abb292(21)
      acd292(45)=dotproduct(l6,ninjaE3)
      acd292(46)=abb292(36)
      acd292(47)=abb292(138)
      acd292(48)=abb292(73)
      acd292(49)=abb292(72)
      acd292(50)=abb292(126)
      acd292(51)=abb292(81)
      acd292(52)=abb292(64)
      acd292(53)=dotproduct(ninjaA,spval6k2)
      acd292(54)=dotproduct(ninjaA,spval6l5)
      acd292(55)=dotproduct(ninjaA,spvak1l5)
      acd292(56)=abb292(47)
      acd292(57)=dotproduct(ninjaE3,spval6k1)
      acd292(58)=abb292(18)
      acd292(59)=abb292(30)
      acd292(60)=dotproduct(ninjaE3,spvak2l5)
      acd292(61)=abb292(49)
      acd292(62)=dotproduct(ninjaE3,spvak2k1)
      acd292(63)=abb292(52)
      acd292(64)=abb292(58)
      acd292(65)=dotproduct(ninjaE3,spvak2l6)
      acd292(66)=abb292(55)
      acd292(67)=abb292(76)
      acd292(68)=abb292(16)
      acd292(69)=dotproduct(ninjaE3,spvak1l6)
      acd292(70)=abb292(111)
      acd292(71)=abb292(42)
      acd292(72)=abb292(139)
      acd292(73)=abb292(108)
      acd292(74)=abb292(85)
      acd292(75)=acd292(6)*acd292(7)
      acd292(76)=-acd292(4)*acd292(75)
      acd292(77)=acd292(4)*acd292(5)
      acd292(78)=-acd292(1)*acd292(77)
      acd292(76)=acd292(76)+acd292(78)
      acd292(76)=acd292(2)*acd292(76)
      acd292(78)=acd292(9)*acd292(7)
      acd292(79)=acd292(4)*acd292(8)*acd292(78)
      acd292(76)=acd292(79)+acd292(76)
      acd292(76)=acd292(3)*acd292(76)
      acd292(79)=-acd292(5)*acd292(13)
      acd292(80)=-acd292(7)*acd292(54)
      acd292(79)=acd292(80)+acd292(56)+acd292(79)
      acd292(79)=acd292(4)*acd292(79)
      acd292(80)=acd292(65)*acd292(66)
      acd292(81)=acd292(62)*acd292(63)
      acd292(82)=acd292(60)*acd292(61)
      acd292(83)=acd292(57)*acd292(58)
      acd292(84)=acd292(45)*acd292(46)
      acd292(85)=acd292(28)*acd292(67)
      acd292(86)=-acd292(26)*acd292(64)
      acd292(87)=acd292(7)*acd292(24)
      acd292(87)=acd292(87)-acd292(59)
      acd292(88)=-acd292(6)*acd292(87)
      acd292(89)=-acd292(5)*acd292(24)
      acd292(89)=acd292(25)+acd292(89)
      acd292(89)=acd292(1)*acd292(89)
      acd292(79)=acd292(89)+acd292(79)+acd292(88)+acd292(86)+acd292(85)+acd292(&
      &84)+acd292(83)+acd292(82)+acd292(80)+acd292(81)
      acd292(79)=acd292(2)*acd292(79)
      acd292(80)=acd292(35)*acd292(36)
      acd292(81)=acd292(30)*acd292(31)
      acd292(82)=acd292(19)*acd292(34)
      acd292(83)=acd292(8)*acd292(33)
      acd292(84)=-acd292(5)*acd292(22)
      acd292(84)=acd292(32)+acd292(84)
      acd292(84)=acd292(4)*acd292(84)
      acd292(85)=acd292(1)*acd292(18)
      acd292(80)=acd292(85)+acd292(84)+acd292(83)+acd292(82)+acd292(80)+acd292(&
      &81)
      acd292(80)=acd292(1)*acd292(80)
      acd292(81)=acd292(69)*acd292(70)
      acd292(82)=acd292(10)*acd292(11)
      acd292(83)=acd292(41)*acd292(64)
      acd292(84)=acd292(9)*acd292(87)
      acd292(81)=acd292(84)+acd292(83)+acd292(81)+acd292(82)
      acd292(81)=acd292(8)*acd292(81)
      acd292(82)=acd292(43)*acd292(44)
      acd292(83)=acd292(53)*acd292(78)
      acd292(84)=-acd292(22)*acd292(75)
      acd292(85)=acd292(7)*acd292(55)
      acd292(85)=-acd292(50)+acd292(85)
      acd292(85)=acd292(8)*acd292(85)
      acd292(82)=acd292(85)+acd292(84)+acd292(82)+acd292(83)
      acd292(82)=acd292(4)*acd292(82)
      acd292(83)=acd292(57)*acd292(71)
      acd292(84)=acd292(45)*acd292(47)
      acd292(85)=-acd292(26)*acd292(72)
      acd292(83)=acd292(85)+acd292(83)+acd292(84)
      acd292(83)=acd292(9)*acd292(83)
      acd292(84)=acd292(69)*acd292(73)
      acd292(85)=acd292(10)*acd292(12)
      acd292(86)=acd292(41)*acd292(72)
      acd292(84)=acd292(86)+acd292(84)+acd292(85)
      acd292(84)=acd292(6)*acd292(84)
      acd292(79)=acd292(79)+acd292(80)+acd292(82)+acd292(81)+acd292(83)+acd292(&
      &84)
      acd292(79)=acd292(3)*acd292(79)
      acd292(80)=acd292(1)-acd292(15)
      acd292(80)=acd292(14)*acd292(80)
      acd292(81)=-acd292(19)*acd292(20)
      acd292(82)=2.0_ki*acd292(16)
      acd292(83)=acd292(17)*acd292(82)
      acd292(80)=acd292(83)+acd292(81)+acd292(80)
      acd292(80)=acd292(1)*acd292(80)
      acd292(81)=acd292(15)*acd292(20)
      acd292(83)=acd292(21)*acd292(82)
      acd292(81)=acd292(81)+acd292(83)
      acd292(81)=acd292(19)*acd292(81)
      acd292(83)=-acd292(6)*acd292(42)
      acd292(84)=acd292(8)*acd292(27)
      acd292(83)=acd292(84)+acd292(83)
      acd292(83)=acd292(41)*acd292(83)
      acd292(84)=acd292(39)*acd292(40)
      acd292(85)=acd292(37)*acd292(38)
      acd292(84)=acd292(84)+acd292(85)
      acd292(84)=acd292(4)*acd292(84)
      acd292(85)=acd292(9)*acd292(26)*acd292(42)
      acd292(80)=acd292(80)+acd292(84)+acd292(85)+acd292(83)+acd292(81)
      acd292(80)=acd292(1)*acd292(80)
      acd292(81)=acd292(28)*acd292(29)
      acd292(83)=-acd292(26)*acd292(27)
      acd292(77)=-acd292(23)*acd292(77)
      acd292(77)=acd292(77)+acd292(81)+acd292(83)
      acd292(77)=acd292(1)*acd292(77)
      acd292(83)=acd292(28)*acd292(49)
      acd292(84)=-acd292(26)*acd292(48)
      acd292(83)=acd292(83)+acd292(84)
      acd292(83)=acd292(83)*acd292(82)
      acd292(84)=acd292(37)*acd292(68)
      acd292(75)=-acd292(23)*acd292(75)
      acd292(75)=acd292(84)+acd292(75)
      acd292(75)=acd292(4)*acd292(75)
      acd292(81)=-acd292(15)*acd292(81)
      acd292(84)=acd292(26)*acd292(15)
      acd292(85)=acd292(27)*acd292(84)
      acd292(75)=acd292(77)+acd292(75)+acd292(83)+acd292(81)+acd292(85)
      acd292(75)=acd292(2)*acd292(75)
      acd292(77)=acd292(9)*acd292(37)
      acd292(81)=-acd292(6)*acd292(39)
      acd292(77)=acd292(81)+acd292(77)
      acd292(77)=acd292(74)*acd292(77)
      acd292(81)=acd292(39)*acd292(51)
      acd292(83)=acd292(37)*acd292(50)
      acd292(81)=acd292(81)+acd292(83)
      acd292(81)=acd292(81)*acd292(82)
      acd292(83)=-acd292(39)*acd292(68)
      acd292(78)=acd292(23)*acd292(78)
      acd292(78)=acd292(83)+acd292(78)
      acd292(78)=acd292(8)*acd292(78)
      acd292(77)=acd292(78)+acd292(81)+acd292(77)
      acd292(77)=acd292(4)*acd292(77)
      acd292(78)=acd292(82)*acd292(52)
      acd292(81)=acd292(15)*acd292(42)
      acd292(81)=acd292(81)-acd292(78)
      acd292(81)=acd292(6)*acd292(81)
      acd292(83)=-acd292(15)*acd292(27)
      acd292(82)=acd292(48)*acd292(82)
      acd292(82)=acd292(83)+acd292(82)
      acd292(82)=acd292(8)*acd292(82)
      acd292(81)=acd292(82)+acd292(81)
      acd292(81)=acd292(41)*acd292(81)
      acd292(82)=-acd292(42)*acd292(84)
      acd292(78)=acd292(26)*acd292(78)
      acd292(78)=acd292(82)+acd292(78)
      acd292(78)=acd292(9)*acd292(78)
      acd292(75)=acd292(79)+acd292(75)+acd292(80)+acd292(77)+acd292(78)+acd292(&
      &81)
      brack(ninjaidxt1mu0)=acd292(76)
      brack(ninjaidxt0mu0)=acd292(75)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d292h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd292h1
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
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d292h1l131
