module     p0_dbaru_epnebbbarg_d92h0l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d92h0l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd92h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd92
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd92h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(94) :: acd92
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd92(1)=dotproduct(k1,ninjaE3)
      acd92(2)=dotproduct(k2,ninjaE3)
      acd92(3)=abb92(168)
      acd92(4)=dotproduct(ninjaE3,spval6k2)
      acd92(5)=abb92(59)
      acd92(6)=dotproduct(ninjaE3,spvak4k2)
      acd92(7)=abb92(45)
      acd92(8)=abb92(101)
      acd92(9)=dotproduct(k3,ninjaE3)
      acd92(10)=abb92(109)
      acd92(11)=dotproduct(k4,ninjaE3)
      acd92(12)=dotproduct(l5,ninjaE3)
      acd92(13)=dotproduct(l6,ninjaE3)
      acd92(14)=dotproduct(k7,ninjaE3)
      acd92(15)=abb92(113)
      acd92(16)=dotproduct(ninjaE3,spvak1k2)
      acd92(17)=abb92(24)
      acd92(18)=dotproduct(ninjaE3,spvak4k3)
      acd92(19)=abb92(15)
      acd92(20)=dotproduct(ninjaE3,spvak2k7)
      acd92(21)=abb92(20)
      acd92(22)=abb92(19)
      acd92(23)=dotproduct(ninjaE3,spval5k2)
      acd92(24)=abb92(89)
      acd92(25)=abb92(25)
      acd92(26)=abb92(61)
      acd92(27)=abb92(17)
      acd92(28)=abb92(55)
      acd92(29)=abb92(80)
      acd92(30)=abb92(13)
      acd92(31)=abb92(21)
      acd92(32)=abb92(30)
      acd92(33)=abb92(35)
      acd92(34)=abb92(34)
      acd92(35)=abb92(23)
      acd92(36)=abb92(22)
      acd92(37)=abb92(48)
      acd92(38)=abb92(41)
      acd92(39)=dotproduct(k1,ninjaA)
      acd92(40)=dotproduct(k2,ninjaA)
      acd92(41)=dotproduct(ninjaA,spval6k2)
      acd92(42)=dotproduct(ninjaA,spvak4k2)
      acd92(43)=abb92(29)
      acd92(44)=dotproduct(k3,ninjaA)
      acd92(45)=dotproduct(k4,ninjaA)
      acd92(46)=dotproduct(l5,ninjaA)
      acd92(47)=dotproduct(l6,ninjaA)
      acd92(48)=dotproduct(k7,ninjaA)
      acd92(49)=dotproduct(ninjaA,spvak1k2)
      acd92(50)=dotproduct(ninjaA,spvak4k3)
      acd92(51)=dotproduct(ninjaA,spvak2k7)
      acd92(52)=dotproduct(ninjaA,spval5k2)
      acd92(53)=abb92(60)
      acd92(54)=abb92(153)
      acd92(55)=abb92(73)
      acd92(56)=abb92(123)
      acd92(57)=abb92(106)
      acd92(58)=dotproduct(ninjaA,ninjaE3)
      acd92(59)=abb92(27)
      acd92(60)=abb92(14)
      acd92(61)=abb92(16)
      acd92(62)=abb92(18)
      acd92(63)=abb92(33)
      acd92(64)=abb92(57)
      acd92(65)=abb92(36)
      acd92(66)=dotproduct(ninjaE3,spval6l5)
      acd92(67)=abb92(28)
      acd92(68)=dotproduct(ninjaE3,spval6k1)
      acd92(69)=abb92(31)
      acd92(70)=dotproduct(ninjaE3,spvak1l5)
      acd92(71)=abb92(39)
      acd92(72)=dotproduct(ninjaE3,spvak1l6)
      acd92(73)=abb92(43)
      acd92(74)=acd92(9)+acd92(11)
      acd92(75)=-acd92(10)*acd92(74)
      acd92(76)=-acd92(13)+acd92(1)-acd92(12)
      acd92(77)=acd92(76)*acd92(3)
      acd92(78)=acd92(20)*acd92(21)
      acd92(79)=acd92(18)*acd92(19)
      acd92(80)=acd92(14)*acd92(15)
      acd92(75)=-acd92(78)-acd92(79)-acd92(80)+acd92(77)+acd92(75)
      acd92(77)=-acd92(23)*acd92(24)
      acd92(78)=acd92(16)*acd92(17)
      acd92(79)=acd92(6)*acd92(25)
      acd92(80)=acd92(4)*acd92(22)
      acd92(81)=acd92(2)*acd92(8)
      acd92(77)=acd92(81)+acd92(80)+acd92(79)+acd92(78)+acd92(77)-acd92(75)
      acd92(77)=acd92(2)*acd92(77)
      acd92(78)=acd92(20)*acd92(35)
      acd92(79)=acd92(76)*acd92(5)
      acd92(80)=acd92(74)*acd92(26)
      acd92(81)=acd92(18)*acd92(33)
      acd92(82)=acd92(14)*acd92(28)
      acd92(78)=acd92(78)+acd92(81)+acd92(82)+acd92(79)+acd92(80)
      acd92(79)=acd92(6)*acd92(37)
      acd92(79)=acd92(79)+acd92(78)
      acd92(79)=acd92(4)*acd92(79)
      acd92(80)=acd92(24)*acd92(74)
      acd92(81)=acd92(20)*acd92(36)
      acd92(82)=acd92(18)*acd92(34)
      acd92(83)=acd92(14)*acd92(29)
      acd92(80)=acd92(83)+acd92(81)+acd92(82)+acd92(80)
      acd92(80)=acd92(23)*acd92(80)
      acd92(81)=-acd92(17)*acd92(74)
      acd92(82)=acd92(20)*acd92(31)
      acd92(83)=acd92(18)*acd92(30)
      acd92(84)=acd92(14)*acd92(27)
      acd92(81)=acd92(84)+acd92(82)+acd92(83)+acd92(81)
      acd92(81)=acd92(16)*acd92(81)
      acd92(76)=acd92(76)*acd92(7)
      acd92(82)=acd92(23)*acd92(38)
      acd92(83)=acd92(16)*acd92(32)
      acd92(82)=acd92(83)-acd92(76)+acd92(82)
      acd92(82)=acd92(6)*acd92(82)
      acd92(77)=acd92(77)+acd92(79)+acd92(82)+acd92(80)+acd92(81)
      acd92(79)=acd92(24)*acd92(52)
      acd92(80)=acd92(17)*acd92(49)
      acd92(79)=acd92(79)-acd92(80)
      acd92(80)=acd92(51)*acd92(21)
      acd92(81)=acd92(50)*acd92(19)
      acd92(82)=acd92(48)*acd92(15)
      acd92(83)=acd92(44)+acd92(45)
      acd92(84)=acd92(10)*acd92(83)
      acd92(85)=acd92(42)*acd92(25)
      acd92(86)=-acd92(47)+acd92(39)-acd92(46)
      acd92(87)=-acd92(3)*acd92(86)
      acd92(88)=acd92(41)*acd92(22)
      acd92(89)=acd92(40)*acd92(8)
      acd92(80)=2.0_ki*acd92(89)+acd92(88)+acd92(87)+acd92(85)+acd92(84)+acd92(&
      &82)+acd92(81)+acd92(53)+acd92(80)-acd92(79)
      acd92(80)=acd92(2)*acd92(80)
      acd92(81)=acd92(51)*acd92(35)
      acd92(82)=acd92(50)*acd92(33)
      acd92(84)=acd92(48)*acd92(28)
      acd92(85)=acd92(26)*acd92(83)
      acd92(87)=acd92(42)*acd92(37)
      acd92(88)=acd92(5)*acd92(86)
      acd92(89)=acd92(40)*acd92(22)
      acd92(81)=acd92(89)+acd92(88)+acd92(87)+acd92(85)+acd92(84)+acd92(82)+acd&
      &92(63)+acd92(81)
      acd92(81)=acd92(4)*acd92(81)
      acd92(78)=acd92(41)*acd92(78)
      acd92(75)=-acd92(40)*acd92(75)
      acd92(82)=acd92(83)-acd92(40)
      acd92(83)=acd92(24)*acd92(82)
      acd92(84)=acd92(51)*acd92(36)
      acd92(85)=acd92(50)*acd92(34)
      acd92(87)=acd92(48)*acd92(29)
      acd92(88)=acd92(42)*acd92(38)
      acd92(83)=acd92(88)+acd92(87)+acd92(85)+acd92(64)+acd92(84)+acd92(83)
      acd92(83)=acd92(23)*acd92(83)
      acd92(82)=-acd92(17)*acd92(82)
      acd92(84)=acd92(51)*acd92(31)
      acd92(85)=acd92(50)*acd92(30)
      acd92(87)=acd92(48)*acd92(27)
      acd92(88)=acd92(42)*acd92(32)
      acd92(82)=acd92(88)+acd92(87)+acd92(85)+acd92(60)+acd92(84)+acd92(82)
      acd92(82)=acd92(16)*acd92(82)
      acd92(84)=acd92(52)*acd92(38)
      acd92(85)=acd92(49)*acd92(32)
      acd92(86)=-acd92(7)*acd92(86)
      acd92(87)=acd92(41)*acd92(37)
      acd92(88)=acd92(40)*acd92(25)
      acd92(84)=acd92(88)+acd92(87)+acd92(86)+acd92(85)+acd92(65)+acd92(84)
      acd92(84)=acd92(6)*acd92(84)
      acd92(79)=acd92(79)-acd92(54)
      acd92(74)=acd92(79)*acd92(74)
      acd92(79)=acd92(52)*acd92(36)
      acd92(85)=acd92(49)*acd92(31)
      acd92(79)=acd92(85)+acd92(62)+acd92(79)
      acd92(79)=acd92(20)*acd92(79)
      acd92(85)=acd92(52)*acd92(34)
      acd92(86)=acd92(49)*acd92(30)
      acd92(85)=acd92(86)+acd92(61)+acd92(85)
      acd92(85)=acd92(18)*acd92(85)
      acd92(86)=acd92(52)*acd92(29)
      acd92(87)=acd92(49)*acd92(27)
      acd92(86)=acd92(87)+acd92(57)+acd92(86)
      acd92(86)=acd92(14)*acd92(86)
      acd92(87)=acd92(72)*acd92(73)
      acd92(88)=acd92(70)*acd92(71)
      acd92(89)=acd92(68)*acd92(69)
      acd92(90)=acd92(66)*acd92(67)
      acd92(91)=acd92(58)*acd92(59)
      acd92(92)=acd92(13)*acd92(56)
      acd92(93)=acd92(12)*acd92(55)
      acd92(94)=acd92(1)*acd92(43)
      acd92(76)=-acd92(42)*acd92(76)
      acd92(74)=acd92(80)+acd92(81)+acd92(84)+acd92(82)+acd92(83)+acd92(75)+acd&
      &92(78)+acd92(76)+acd92(86)+acd92(85)+acd92(79)+acd92(94)+acd92(93)+acd92&
      &(92)+2.0_ki*acd92(91)+acd92(90)+acd92(89)+acd92(87)+acd92(88)+acd92(74)
      brack(ninjaidxt1mu0)=acd92(77)
      brack(ninjaidxt0mu0)=acd92(74)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d92h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd92h0
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
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d92h0l131
