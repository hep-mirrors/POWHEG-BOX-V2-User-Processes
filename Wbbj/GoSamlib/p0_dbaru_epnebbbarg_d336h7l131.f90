module     p0_dbaru_epnebbbarg_d336h7l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity7d336h7l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd336h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(43) :: acd336
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd336(1)=dotproduct(k2,ninjaE3)
      acd336(2)=dotproduct(ninjaE3,spvak7k2)
      acd336(3)=abb336(20)
      acd336(4)=dotproduct(l5,ninjaE3)
      acd336(5)=abb336(19)
      acd336(6)=dotproduct(k7,ninjaE3)
      acd336(7)=abb336(16)
      acd336(8)=dotproduct(ninjaE3,spvak7l5)
      acd336(9)=abb336(12)
      acd336(10)=dotproduct(ninjaE3,spvak1k2)
      acd336(11)=abb336(13)
      acd336(12)=dotproduct(ninjaE3,spvak2l5)
      acd336(13)=abb336(21)
      acd336(14)=dotproduct(ninjaE3,spvak1l5)
      acd336(15)=abb336(23)
      acd336(16)=dotproduct(ninjaE3,spvak4l6)
      acd336(17)=abb336(25)
      acd336(18)=dotproduct(ninjaE3,spvak1k3)
      acd336(19)=abb336(26)
      acd336(20)=dotproduct(ninjaE3,spvak1l6)
      acd336(21)=abb336(31)
      acd336(22)=dotproduct(ninjaE3,spvak4k2)
      acd336(23)=abb336(36)
      acd336(24)=dotproduct(ninjaE3,spvak2k7)
      acd336(25)=abb336(39)
      acd336(26)=dotproduct(ninjaE3,spvak2k3)
      acd336(27)=abb336(40)
      acd336(28)=dotproduct(ninjaE3,spvak4l5)
      acd336(29)=abb336(42)
      acd336(30)=acd336(3)*acd336(1)
      acd336(31)=acd336(5)*acd336(4)
      acd336(32)=acd336(7)*acd336(6)
      acd336(33)=acd336(9)*acd336(8)
      acd336(34)=acd336(11)*acd336(10)
      acd336(35)=acd336(13)*acd336(12)
      acd336(36)=acd336(15)*acd336(14)
      acd336(37)=acd336(17)*acd336(16)
      acd336(38)=acd336(19)*acd336(18)
      acd336(39)=acd336(21)*acd336(20)
      acd336(40)=acd336(23)*acd336(22)
      acd336(41)=acd336(25)*acd336(24)
      acd336(42)=acd336(27)*acd336(26)
      acd336(43)=acd336(29)*acd336(28)
      acd336(30)=acd336(43)+acd336(42)+acd336(41)+acd336(40)+acd336(39)+acd336(&
      &38)+acd336(37)+acd336(36)+acd336(35)+acd336(34)+acd336(33)+acd336(32)+ac&
      &d336(30)+acd336(31)
      acd336(30)=acd336(2)*acd336(30)
      brack(ninjaidxt2mu0)=acd336(30)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd336h7
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(88) :: acd336
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd336(1)=dotproduct(k2,ninjaE3)
      acd336(2)=dotproduct(ninjaE4,spvak7k2)
      acd336(3)=abb336(20)
      acd336(4)=dotproduct(k2,ninjaE4)
      acd336(5)=dotproduct(ninjaE3,spvak7k2)
      acd336(6)=dotproduct(l5,ninjaE3)
      acd336(7)=abb336(19)
      acd336(8)=dotproduct(l5,ninjaE4)
      acd336(9)=dotproduct(k7,ninjaE3)
      acd336(10)=abb336(16)
      acd336(11)=dotproduct(k7,ninjaE4)
      acd336(12)=dotproduct(ninjaE4,spvak7l5)
      acd336(13)=abb336(12)
      acd336(14)=dotproduct(ninjaE4,spvak1k2)
      acd336(15)=abb336(13)
      acd336(16)=dotproduct(ninjaE4,spvak2k3)
      acd336(17)=abb336(40)
      acd336(18)=dotproduct(ninjaE4,spvak2l5)
      acd336(19)=abb336(21)
      acd336(20)=dotproduct(ninjaE4,spvak1l5)
      acd336(21)=abb336(23)
      acd336(22)=dotproduct(ninjaE4,spvak4l6)
      acd336(23)=abb336(25)
      acd336(24)=dotproduct(ninjaE4,spvak1k3)
      acd336(25)=abb336(26)
      acd336(26)=dotproduct(ninjaE4,spvak1l6)
      acd336(27)=abb336(31)
      acd336(28)=dotproduct(ninjaE4,spvak4k2)
      acd336(29)=abb336(36)
      acd336(30)=dotproduct(ninjaE4,spvak2k7)
      acd336(31)=abb336(39)
      acd336(32)=dotproduct(ninjaE4,spvak4l5)
      acd336(33)=abb336(42)
      acd336(34)=dotproduct(ninjaE3,spvak7l5)
      acd336(35)=dotproduct(ninjaE3,spvak1k2)
      acd336(36)=dotproduct(ninjaE3,spvak2k3)
      acd336(37)=dotproduct(ninjaE3,spvak2l5)
      acd336(38)=dotproduct(ninjaE3,spvak1l5)
      acd336(39)=dotproduct(ninjaE3,spvak4l6)
      acd336(40)=dotproduct(ninjaE3,spvak1k3)
      acd336(41)=dotproduct(ninjaE3,spvak1l6)
      acd336(42)=dotproduct(ninjaE3,spvak4k2)
      acd336(43)=dotproduct(ninjaE3,spvak2k7)
      acd336(44)=dotproduct(ninjaE3,spvak4l5)
      acd336(45)=abb336(50)
      acd336(46)=dotproduct(k2,ninjaA)
      acd336(47)=dotproduct(ninjaA,spvak7k2)
      acd336(48)=abb336(35)
      acd336(49)=dotproduct(l5,ninjaA)
      acd336(50)=abb336(28)
      acd336(51)=dotproduct(k7,ninjaA)
      acd336(52)=dotproduct(ninjaA,ninjaE3)
      acd336(53)=dotproduct(ninjaA,spvak7l5)
      acd336(54)=dotproduct(ninjaA,spvak1k2)
      acd336(55)=dotproduct(ninjaA,spvak2k3)
      acd336(56)=dotproduct(ninjaA,spvak2l5)
      acd336(57)=dotproduct(ninjaA,spvak1l5)
      acd336(58)=dotproduct(ninjaA,spvak4l6)
      acd336(59)=dotproduct(ninjaA,spvak1k3)
      acd336(60)=dotproduct(ninjaA,spvak1l6)
      acd336(61)=dotproduct(ninjaA,spvak4k2)
      acd336(62)=dotproduct(ninjaA,spvak2k7)
      acd336(63)=dotproduct(ninjaA,spvak4l5)
      acd336(64)=abb336(15)
      acd336(65)=abb336(17)
      acd336(66)=abb336(14)
      acd336(67)=abb336(32)
      acd336(68)=abb336(30)
      acd336(69)=abb336(29)
      acd336(70)=abb336(37)
      acd336(71)=dotproduct(ninjaA,ninjaA)
      acd336(72)=abb336(51)
      acd336(73)=acd336(33)*acd336(32)
      acd336(74)=acd336(31)*acd336(30)
      acd336(75)=acd336(29)*acd336(28)
      acd336(76)=acd336(27)*acd336(26)
      acd336(77)=acd336(25)*acd336(24)
      acd336(78)=acd336(23)*acd336(22)
      acd336(79)=acd336(21)*acd336(20)
      acd336(80)=acd336(19)*acd336(18)
      acd336(81)=acd336(17)*acd336(16)
      acd336(82)=acd336(15)*acd336(14)
      acd336(83)=acd336(13)*acd336(12)
      acd336(84)=acd336(10)*acd336(11)
      acd336(85)=acd336(7)*acd336(8)
      acd336(86)=acd336(3)*acd336(4)
      acd336(73)=acd336(76)+acd336(77)+acd336(78)+acd336(79)+acd336(73)+acd336(&
      &80)+acd336(81)+acd336(74)+acd336(75)+acd336(86)+acd336(82)+acd336(83)+ac&
      &d336(84)+acd336(85)
      acd336(73)=acd336(73)*acd336(5)
      acd336(74)=acd336(33)*acd336(44)
      acd336(75)=acd336(31)*acd336(43)
      acd336(76)=acd336(29)*acd336(42)
      acd336(77)=acd336(27)*acd336(41)
      acd336(78)=acd336(25)*acd336(40)
      acd336(79)=acd336(23)*acd336(39)
      acd336(80)=acd336(21)*acd336(38)
      acd336(81)=acd336(19)*acd336(37)
      acd336(82)=acd336(17)*acd336(36)
      acd336(83)=acd336(15)*acd336(35)
      acd336(84)=acd336(13)*acd336(34)
      acd336(85)=acd336(10)*acd336(9)
      acd336(86)=acd336(7)*acd336(6)
      acd336(87)=acd336(3)*acd336(1)
      acd336(74)=acd336(83)+acd336(82)+acd336(81)+acd336(80)+acd336(77)+acd336(&
      &76)+acd336(75)+acd336(74)+acd336(78)+acd336(79)+acd336(84)+acd336(85)+ac&
      &d336(86)+acd336(87)
      acd336(75)=acd336(74)*acd336(2)
      acd336(73)=acd336(73)+acd336(75)+acd336(45)
      acd336(74)=acd336(47)*acd336(74)
      acd336(75)=acd336(33)*acd336(63)
      acd336(76)=acd336(31)*acd336(62)
      acd336(77)=acd336(29)*acd336(61)
      acd336(78)=acd336(27)*acd336(60)
      acd336(79)=acd336(25)*acd336(59)
      acd336(80)=acd336(23)*acd336(58)
      acd336(81)=acd336(21)*acd336(57)
      acd336(82)=acd336(19)*acd336(56)
      acd336(83)=acd336(17)*acd336(55)
      acd336(84)=acd336(15)*acd336(54)
      acd336(85)=acd336(13)*acd336(53)
      acd336(86)=acd336(10)*acd336(51)
      acd336(87)=acd336(7)*acd336(49)
      acd336(88)=acd336(3)*acd336(46)
      acd336(75)=acd336(80)+acd336(81)+acd336(82)+acd336(64)+acd336(76)+acd336(&
      &77)+acd336(78)+acd336(79)+acd336(85)+acd336(86)+acd336(87)+acd336(88)+ac&
      &d336(75)+acd336(83)+acd336(84)
      acd336(76)=acd336(5)*acd336(75)
      acd336(77)=-acd336(6)-acd336(9)
      acd336(77)=acd336(50)*acd336(77)
      acd336(78)=acd336(45)*acd336(52)
      acd336(79)=acd336(42)*acd336(70)
      acd336(80)=acd336(41)*acd336(69)
      acd336(81)=acd336(40)*acd336(68)
      acd336(82)=acd336(39)*acd336(67)
      acd336(83)=acd336(36)*acd336(66)
      acd336(84)=acd336(35)*acd336(65)
      acd336(85)=acd336(1)*acd336(48)
      acd336(74)=acd336(76)+acd336(74)+acd336(85)+acd336(84)+acd336(83)+acd336(&
      &82)+acd336(81)+acd336(80)+2.0_ki*acd336(78)+acd336(79)+acd336(77)
      acd336(76)=ninjaP*acd336(73)
      acd336(75)=acd336(47)*acd336(75)
      acd336(77)=acd336(61)*acd336(70)
      acd336(78)=acd336(60)*acd336(69)
      acd336(79)=acd336(59)*acd336(68)
      acd336(80)=acd336(58)*acd336(67)
      acd336(81)=acd336(55)*acd336(66)
      acd336(82)=acd336(54)*acd336(65)
      acd336(83)=acd336(46)*acd336(48)
      acd336(84)=-acd336(51)-acd336(49)
      acd336(84)=acd336(50)*acd336(84)
      acd336(85)=acd336(45)*acd336(71)
      acd336(75)=acd336(75)+acd336(85)+acd336(84)+acd336(83)+acd336(82)+acd336(&
      &81)+acd336(80)+acd336(79)+acd336(78)+acd336(72)+acd336(77)+acd336(76)
      brack(ninjaidxt1mu0)=acd336(74)
      brack(ninjaidxt0mu0)=acd336(75)
      brack(ninjaidxt0mu2)=acd336(73)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d336h7_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd336h7
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k6+k5
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
end module     p0_dbaru_epnebbbarg_d336h7l131
