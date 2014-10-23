module     p0_dbaru_epnebbbarg_d74h3l131
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d74h3l131.f90
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
      use p0_dbaru_epnebbbarg_abbrevd74h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd74
      complex(ki), dimension (0:*), intent(inout) :: brack
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd74h3
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(108) :: acd74
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd74(1)=dotproduct(k2,ninjaE3)
      acd74(2)=dotproduct(ninjaE3,spvak4k3)
      acd74(3)=abb74(31)
      acd74(4)=dotproduct(l6,ninjaE3)
      acd74(5)=abb74(42)
      acd74(6)=dotproduct(k7,ninjaE3)
      acd74(7)=dotproduct(ninjaE3,spvak2l6)
      acd74(8)=abb74(29)
      acd74(9)=dotproduct(ninjaE3,spvak2k7)
      acd74(10)=abb74(102)
      acd74(11)=dotproduct(ninjaE3,spvak1k2)
      acd74(12)=abb74(37)
      acd74(13)=abb74(38)
      acd74(14)=dotproduct(ninjaE3,spvak1k7)
      acd74(15)=abb74(44)
      acd74(16)=dotproduct(ninjaE3,spval6k2)
      acd74(17)=abb74(45)
      acd74(18)=dotproduct(ninjaE3,spvak1l6)
      acd74(19)=dotproduct(ninjaE3,spvak7k2)
      acd74(20)=dotproduct(k1,ninjaE3)
      acd74(21)=abb74(80)
      acd74(22)=abb74(64)
      acd74(23)=abb74(40)
      acd74(24)=dotproduct(ninjaE3,spvak4k2)
      acd74(25)=abb74(69)
      acd74(26)=abb74(92)
      acd74(27)=dotproduct(k2,ninjaA)
      acd74(28)=dotproduct(ninjaA,spvak4k3)
      acd74(29)=abb74(82)
      acd74(30)=dotproduct(k3,ninjaE3)
      acd74(31)=dotproduct(k4,ninjaE3)
      acd74(32)=dotproduct(l6,ninjaA)
      acd74(33)=abb74(27)
      acd74(34)=dotproduct(k7,ninjaA)
      acd74(35)=dotproduct(ninjaA,ninjaE3)
      acd74(36)=abb74(49)
      acd74(37)=dotproduct(ninjaA,spvak2l6)
      acd74(38)=dotproduct(ninjaA,spvak2k7)
      acd74(39)=abb74(60)
      acd74(40)=abb74(39)
      acd74(41)=dotproduct(ninjaE3,spvak2k3)
      acd74(42)=abb74(30)
      acd74(43)=abb74(96)
      acd74(44)=dotproduct(ninjaE3,spvak2k1)
      acd74(45)=abb74(76)
      acd74(46)=abb74(19)
      acd74(47)=abb74(21)
      acd74(48)=abb74(22)
      acd74(49)=abb74(46)
      acd74(50)=abb74(32)
      acd74(51)=abb74(28)
      acd74(52)=abb74(34)
      acd74(53)=abb74(86)
      acd74(54)=dotproduct(ninjaA,spvak1k2)
      acd74(55)=dotproduct(ninjaA,spvak1l6)
      acd74(56)=dotproduct(ninjaA,spvak1k7)
      acd74(57)=dotproduct(ninjaA,spval6k2)
      acd74(58)=dotproduct(ninjaA,spvak7k2)
      acd74(59)=abb74(12)
      acd74(60)=abb74(15)
      acd74(61)=abb74(35)
      acd74(62)=abb74(16)
      acd74(63)=abb74(51)
      acd74(64)=abb74(36)
      acd74(65)=abb74(72)
      acd74(66)=abb74(98)
      acd74(67)=dotproduct(ninjaE3,spval6k3)
      acd74(68)=abb74(97)
      acd74(69)=dotproduct(ninjaE3,spval6k1)
      acd74(70)=abb74(99)
      acd74(71)=abb74(13)
      acd74(72)=dotproduct(ninjaE3,spvak3k2)
      acd74(73)=abb74(101)
      acd74(74)=abb74(53)
      acd74(75)=abb74(75)
      acd74(76)=dotproduct(ninjaE3,spval5k7)
      acd74(77)=abb74(55)
      acd74(78)=dotproduct(ninjaE3,spvak2l5)
      acd74(79)=abb74(61)
      acd74(80)=dotproduct(ninjaE3,spval5l6)
      acd74(81)=abb74(65)
      acd74(82)=dotproduct(ninjaE3,spval5k2)
      acd74(83)=abb74(66)
      acd74(84)=abb74(73)
      acd74(85)=abb74(77)
      acd74(86)=dotproduct(ninjaE3,spvak7k3)
      acd74(87)=dotproduct(ninjaE3,spvak7k1)
      acd74(88)=acd74(4)+acd74(6)
      acd74(89)=acd74(5)*acd74(88)
      acd74(90)=acd74(9)*acd74(10)
      acd74(91)=acd74(7)*acd74(8)
      acd74(92)=acd74(1)*acd74(3)
      acd74(89)=acd74(92)+acd74(91)+acd74(90)+acd74(89)
      acd74(89)=acd74(1)*acd74(89)
      acd74(90)=acd74(17)*acd74(19)
      acd74(91)=acd74(15)*acd74(18)
      acd74(92)=acd74(11)*acd74(13)
      acd74(90)=-acd74(92)+acd74(90)+acd74(91)
      acd74(91)=-acd74(9)*acd74(90)
      acd74(92)=acd74(17)*acd74(16)
      acd74(93)=acd74(15)*acd74(14)
      acd74(94)=acd74(11)*acd74(12)
      acd74(92)=-acd74(94)+acd74(92)-acd74(93)
      acd74(93)=-acd74(7)*acd74(92)
      acd74(89)=acd74(89)+acd74(91)+acd74(93)
      acd74(89)=acd74(2)*acd74(89)
      acd74(91)=acd74(13)*acd74(54)
      acd74(93)=acd74(27)*acd74(10)
      acd74(94)=-acd74(17)*acd74(58)
      acd74(95)=-acd74(15)*acd74(55)
      acd74(91)=acd74(95)+acd74(94)+acd74(93)+acd74(73)+acd74(91)
      acd74(91)=acd74(9)*acd74(91)
      acd74(93)=acd74(12)*acd74(54)
      acd74(94)=acd74(27)*acd74(8)
      acd74(95)=-acd74(17)*acd74(57)
      acd74(96)=acd74(15)*acd74(56)
      acd74(93)=acd74(96)+acd74(95)+acd74(94)+acd74(62)+acd74(93)
      acd74(93)=acd74(7)*acd74(93)
      acd74(94)=acd74(10)*acd74(38)
      acd74(95)=acd74(8)*acd74(37)
      acd74(96)=acd74(27)*acd74(3)
      acd74(97)=acd74(34)+acd74(32)
      acd74(97)=acd74(5)*acd74(97)
      acd74(94)=acd74(97)+2.0_ki*acd74(96)+acd74(95)+acd74(40)+acd74(94)
      acd74(94)=acd74(1)*acd74(94)
      acd74(95)=acd74(5)*acd74(27)
      acd74(95)=acd74(95)-acd74(47)
      acd74(95)=acd74(95)*acd74(88)
      acd74(96)=-acd74(19)*acd74(38)
      acd74(97)=-acd74(16)*acd74(37)
      acd74(96)=acd74(96)+acd74(97)
      acd74(96)=acd74(17)*acd74(96)
      acd74(97)=-acd74(18)*acd74(38)
      acd74(98)=acd74(14)*acd74(37)
      acd74(97)=acd74(97)+acd74(98)
      acd74(97)=acd74(15)*acd74(97)
      acd74(98)=acd74(13)*acd74(38)
      acd74(99)=acd74(12)*acd74(37)
      acd74(98)=acd74(99)+acd74(60)+acd74(98)
      acd74(98)=acd74(11)*acd74(98)
      acd74(99)=acd74(82)*acd74(83)
      acd74(100)=acd74(80)*acd74(81)
      acd74(101)=acd74(78)*acd74(79)
      acd74(102)=acd74(76)*acd74(77)
      acd74(103)=acd74(51)*acd74(72)
      acd74(104)=acd74(24)*acd74(71)
      acd74(105)=acd74(18)*acd74(74)
      acd74(106)=acd74(14)*acd74(75)
      acd74(107)=2.0_ki*acd74(35)
      acd74(108)=acd74(52)*acd74(107)
      acd74(91)=acd74(94)+acd74(93)+acd74(91)+acd74(98)+acd74(97)+acd74(96)+acd&
      &74(108)+acd74(106)+acd74(105)+acd74(104)+acd74(103)+acd74(102)+acd74(101&
      &)+acd74(99)+acd74(100)+acd74(95)
      acd74(91)=acd74(2)*acd74(91)
      acd74(90)=-acd74(28)*acd74(90)
      acd74(93)=-acd74(20)+acd74(30)+acd74(31)
      acd74(94)=-acd74(26)*acd74(93)
      acd74(95)=acd74(70)*acd74(87)
      acd74(96)=-acd74(68)*acd74(86)
      acd74(97)=-acd74(19)*acd74(66)
      acd74(98)=acd74(44)*acd74(85)
      acd74(99)=acd74(41)*acd74(84)
      acd74(100)=acd74(18)*acd74(65)
      acd74(101)=acd74(53)*acd74(107)
      acd74(102)=acd74(11)*acd74(61)
      acd74(90)=acd74(90)+acd74(102)+acd74(101)+acd74(100)+acd74(99)+acd74(98)+&
      &acd74(97)+acd74(95)+acd74(96)+acd74(94)
      acd74(90)=acd74(9)*acd74(90)
      acd74(92)=-acd74(28)*acd74(92)
      acd74(94)=acd74(23)*acd74(93)
      acd74(95)=acd74(70)*acd74(69)
      acd74(96)=-acd74(68)*acd74(67)
      acd74(97)=-acd74(16)*acd74(66)
      acd74(98)=acd74(44)*acd74(64)
      acd74(99)=acd74(41)*acd74(63)
      acd74(100)=-acd74(14)*acd74(65)
      acd74(101)=acd74(50)*acd74(107)
      acd74(102)=acd74(11)*acd74(59)
      acd74(92)=acd74(92)+acd74(102)+acd74(101)+acd74(100)+acd74(99)+acd74(98)+&
      &acd74(97)+acd74(95)+acd74(96)+acd74(94)
      acd74(92)=acd74(7)*acd74(92)
      acd74(94)=acd74(28)*acd74(5)
      acd74(94)=acd74(94)+acd74(33)
      acd74(94)=acd74(94)*acd74(88)
      acd74(95)=acd74(21)*acd74(93)
      acd74(96)=acd74(44)*acd74(45)
      acd74(97)=acd74(41)*acd74(42)
      acd74(98)=acd74(36)*acd74(107)
      acd74(99)=acd74(28)*acd74(10)
      acd74(99)=acd74(43)+acd74(99)
      acd74(99)=acd74(9)*acd74(99)
      acd74(100)=acd74(28)*acd74(8)
      acd74(100)=acd74(39)+acd74(100)
      acd74(100)=acd74(7)*acd74(100)
      acd74(101)=acd74(28)*acd74(3)
      acd74(101)=acd74(29)+acd74(101)
      acd74(101)=acd74(1)*acd74(101)
      acd74(94)=acd74(101)+acd74(100)+acd74(99)+acd74(98)+acd74(96)+acd74(97)+a&
      &cd74(95)+acd74(94)
      acd74(94)=acd74(1)*acd74(94)
      acd74(95)=acd74(93)*acd74(22)
      acd74(96)=acd74(44)*acd74(49)
      acd74(97)=acd74(41)*acd74(48)
      acd74(98)=acd74(107)*acd74(46)
      acd74(95)=acd74(95)+acd74(98)+acd74(96)-acd74(97)
      acd74(88)=-acd74(95)*acd74(88)
      acd74(93)=-acd74(93)*acd74(25)
      acd74(95)=-acd74(51)*acd74(107)
      acd74(93)=acd74(95)+acd74(93)
      acd74(93)=acd74(24)*acd74(93)
      acd74(88)=acd74(91)+acd74(94)+acd74(92)+acd74(90)+acd74(88)+acd74(93)
      brack(ninjaidxt1mu0)=acd74(89)
      brack(ninjaidxt0mu0)=acd74(88)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbaru_epnebbbarg_d74h3_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd74h3
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = -k7-k6-k5
	     vecA(1:4) = - a(0:3) - qshift(1:4)
	     vecB(1:4) = - b(0:3)
	     vecC(1:4) = - c(0:3)
      if (deg.lt.0) return
      t1 = 0
      call cond_t(epspow.eq.t1,brack_31,vecA,vecB,vecC,param,coeffs)
      if (deg.le.(1+(-2))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_dbaru_epnebbbarg_d74h3l131
