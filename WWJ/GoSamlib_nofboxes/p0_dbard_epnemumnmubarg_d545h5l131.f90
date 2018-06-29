module     p0_dbard_epnemumnmubarg_d545h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity5d545h5l131.f90
   ! generator: buildfortran_tn3.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd545h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(20) :: acd545
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd545(1)=dotproduct(k3,ninjaE3)
      acd545(2)=dotproduct(ninjaE3,spvak1k2)
      acd545(3)=dotproduct(ninjaE3,spvak7k2)
      acd545(4)=abb545(41)
      acd545(5)=dotproduct(k4,ninjaE3)
      acd545(6)=dotproduct(k5,ninjaE3)
      acd545(7)=dotproduct(k6,ninjaE3)
      acd545(8)=dotproduct(ninjaE3,spvak4k6)
      acd545(9)=abb545(13)
      acd545(10)=dotproduct(ninjaE3,spvak4k3)
      acd545(11)=abb545(25)
      acd545(12)=dotproduct(ninjaE3,spvak5k6)
      acd545(13)=abb545(32)
      acd545(14)=dotproduct(ninjaE3,spvak5k3)
      acd545(15)=abb545(34)
      acd545(16)=-acd545(7)-acd545(6)+acd545(1)+acd545(5)
      acd545(16)=acd545(4)*acd545(16)
      acd545(17)=acd545(9)*acd545(8)
      acd545(18)=acd545(11)*acd545(10)
      acd545(19)=acd545(13)*acd545(12)
      acd545(20)=acd545(15)*acd545(14)
      acd545(16)=acd545(20)+acd545(19)+acd545(18)+acd545(17)+acd545(16)
      acd545(16)=acd545(16)*acd545(3)*acd545(2)
      brack(ninjaidxt2mu0)=acd545(16)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd545h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(103) :: acd545
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd545(1)=dotproduct(k3,ninjaE3)
      acd545(2)=dotproduct(ninjaE3,spvak1k2)
      acd545(3)=dotproduct(ninjaE4,spvak7k2)
      acd545(4)=abb545(41)
      acd545(5)=dotproduct(ninjaE3,spvak7k2)
      acd545(6)=dotproduct(ninjaE4,spvak1k2)
      acd545(7)=dotproduct(k3,ninjaE4)
      acd545(8)=dotproduct(k4,ninjaE3)
      acd545(9)=dotproduct(k4,ninjaE4)
      acd545(10)=dotproduct(k5,ninjaE3)
      acd545(11)=dotproduct(k5,ninjaE4)
      acd545(12)=dotproduct(k6,ninjaE3)
      acd545(13)=dotproduct(k6,ninjaE4)
      acd545(14)=dotproduct(ninjaE3,spvak5k2)
      acd545(15)=abb545(14)
      acd545(16)=dotproduct(ninjaE3,spvak4k6)
      acd545(17)=abb545(13)
      acd545(18)=dotproduct(ninjaE4,spvak4k6)
      acd545(19)=dotproduct(ninjaE4,spvak4k3)
      acd545(20)=abb545(25)
      acd545(21)=dotproduct(ninjaE4,spvak5k6)
      acd545(22)=abb545(32)
      acd545(23)=dotproduct(ninjaE4,spvak5k3)
      acd545(24)=abb545(34)
      acd545(25)=dotproduct(ninjaE3,spvak4k3)
      acd545(26)=dotproduct(ninjaE3,spvak5k6)
      acd545(27)=dotproduct(ninjaE3,spvak5k3)
      acd545(28)=abb545(43)
      acd545(29)=abb545(79)
      acd545(30)=dotproduct(ninjaE3,spvak4k2)
      acd545(31)=abb545(18)
      acd545(32)=dotproduct(ninjaE3,spvak3k2)
      acd545(33)=abb545(36)
      acd545(34)=dotproduct(ninjaE3,spvak6k2)
      acd545(35)=abb545(105)
      acd545(36)=dotproduct(k1,ninjaE3)
      acd545(37)=abb545(40)
      acd545(38)=abb545(28)
      acd545(39)=abb545(50)
      acd545(40)=abb545(23)
      acd545(41)=abb545(31)
      acd545(42)=abb545(162)
      acd545(43)=dotproduct(k3,ninjaA)
      acd545(44)=dotproduct(ninjaA,spvak1k2)
      acd545(45)=dotproduct(ninjaA,spvak7k2)
      acd545(46)=abb545(35)
      acd545(47)=dotproduct(k4,ninjaA)
      acd545(48)=dotproduct(k5,ninjaA)
      acd545(49)=dotproduct(k6,ninjaA)
      acd545(50)=dotproduct(k7,ninjaE3)
      acd545(51)=dotproduct(ninjaA,ninjaE3)
      acd545(52)=dotproduct(ninjaA,spvak4k6)
      acd545(53)=dotproduct(ninjaA,spvak4k3)
      acd545(54)=dotproduct(ninjaA,spvak5k6)
      acd545(55)=dotproduct(ninjaA,spvak5k3)
      acd545(56)=abb545(17)
      acd545(57)=abb545(38)
      acd545(58)=abb545(29)
      acd545(59)=abb545(15)
      acd545(60)=abb545(20)
      acd545(61)=abb545(27)
      acd545(62)=abb545(102)
      acd545(63)=abb545(24)
      acd545(64)=abb545(39)
      acd545(65)=dotproduct(ninjaE3,spvak1k7)
      acd545(66)=abb545(165)
      acd545(67)=dotproduct(k1,ninjaA)
      acd545(68)=dotproduct(ninjaA,spvak5k2)
      acd545(69)=dotproduct(ninjaA,spvak4k2)
      acd545(70)=dotproduct(ninjaA,spvak3k2)
      acd545(71)=dotproduct(ninjaA,spvak6k2)
      acd545(72)=abb545(21)
      acd545(73)=dotproduct(k7,ninjaA)
      acd545(74)=dotproduct(ninjaA,ninjaA)
      acd545(75)=abb545(37)
      acd545(76)=dotproduct(ninjaA,spvak1k7)
      acd545(77)=abb545(12)
      acd545(78)=abb545(30)
      acd545(79)=abb545(16)
      acd545(80)=abb545(19)
      acd545(81)=abb545(26)
      acd545(82)=abb545(104)
      acd545(83)=-acd545(7)-acd545(9)+acd545(11)+acd545(13)
      acd545(83)=acd545(83)*acd545(4)
      acd545(84)=acd545(24)*acd545(23)
      acd545(85)=acd545(22)*acd545(21)
      acd545(86)=acd545(20)*acd545(19)
      acd545(87)=acd545(17)*acd545(18)
      acd545(83)=acd545(83)-acd545(84)-acd545(85)-acd545(86)-acd545(87)
      acd545(83)=acd545(83)*acd545(5)
      acd545(84)=acd545(24)*acd545(27)
      acd545(85)=acd545(22)*acd545(26)
      acd545(86)=acd545(20)*acd545(25)
      acd545(87)=acd545(17)*acd545(16)
      acd545(84)=acd545(84)+acd545(85)+acd545(86)+acd545(87)
      acd545(85)=acd545(84)*acd545(3)
      acd545(83)=acd545(83)-acd545(85)+acd545(28)
      acd545(85)=-acd545(1)-acd545(8)+acd545(10)+acd545(12)
      acd545(86)=acd545(85)*acd545(4)
      acd545(87)=-acd545(3)*acd545(86)
      acd545(87)=acd545(87)-acd545(83)
      acd545(87)=acd545(2)*acd545(87)
      acd545(88)=acd545(34)*acd545(35)
      acd545(89)=acd545(32)*acd545(33)
      acd545(90)=acd545(30)*acd545(31)
      acd545(91)=acd545(14)*acd545(15)
      acd545(88)=acd545(88)+acd545(89)+acd545(90)+acd545(91)
      acd545(89)=acd545(84)*acd545(6)
      acd545(89)=acd545(89)+acd545(29)
      acd545(90)=-acd545(6)*acd545(86)
      acd545(90)=acd545(90)+acd545(89)
      acd545(90)=acd545(5)*acd545(90)
      acd545(87)=acd545(87)+acd545(90)+acd545(88)
      acd545(90)=2.0_ki*acd545(51)
      acd545(91)=acd545(90)+acd545(50)
      acd545(91)=acd545(91)*acd545(29)
      acd545(92)=acd545(28)*acd545(65)
      acd545(93)=acd545(34)*acd545(66)
      acd545(94)=acd545(32)*acd545(64)
      acd545(95)=acd545(30)*acd545(63)
      acd545(96)=acd545(14)*acd545(56)
      acd545(97)=acd545(36)*acd545(39)
      acd545(98)=acd545(86)*acd545(44)
      acd545(91)=-acd545(98)+acd545(92)+acd545(96)+acd545(97)+acd545(93)+acd545&
      &(94)+acd545(91)+acd545(95)
      acd545(92)=acd545(44)*acd545(84)
      acd545(93)=acd545(5)*acd545(62)
      acd545(92)=acd545(93)+acd545(92)+acd545(91)
      acd545(92)=acd545(5)*acd545(92)
      acd545(84)=acd545(84)*acd545(45)
      acd545(93)=acd545(36)-acd545(50)
      acd545(94)=acd545(93)*acd545(38)
      acd545(95)=acd545(27)*acd545(61)
      acd545(96)=acd545(26)*acd545(60)
      acd545(97)=acd545(25)*acd545(59)
      acd545(98)=acd545(16)*acd545(57)
      acd545(99)=acd545(85)*acd545(46)
      acd545(100)=acd545(90)*acd545(28)
      acd545(84)=acd545(96)+acd545(97)+acd545(98)+acd545(84)+acd545(94)+acd545(&
      &95)+acd545(99)-acd545(100)
      acd545(94)=acd545(24)*acd545(55)
      acd545(95)=acd545(22)*acd545(54)
      acd545(96)=acd545(20)*acd545(53)
      acd545(97)=acd545(17)*acd545(52)
      acd545(94)=acd545(58)+acd545(97)+acd545(96)+acd545(94)+acd545(95)
      acd545(95)=-acd545(49)-acd545(48)+acd545(43)+acd545(47)
      acd545(96)=acd545(4)*acd545(95)
      acd545(96)=acd545(96)+acd545(94)
      acd545(96)=acd545(5)*acd545(96)
      acd545(86)=acd545(86)*acd545(45)
      acd545(86)=acd545(96)-acd545(86)+acd545(84)
      acd545(86)=acd545(2)*acd545(86)
      acd545(96)=acd545(34)*acd545(42)
      acd545(97)=acd545(32)*acd545(41)
      acd545(98)=acd545(30)*acd545(40)
      acd545(99)=acd545(14)*acd545(37)
      acd545(96)=acd545(96)-acd545(97)+acd545(98)+acd545(99)
      acd545(93)=acd545(96)*acd545(93)
      acd545(96)=acd545(88)*acd545(90)
      acd545(86)=acd545(86)+acd545(92)+acd545(96)+acd545(93)
      acd545(89)=ninjaP*acd545(89)
      acd545(92)=acd545(44)*acd545(94)
      acd545(85)=acd545(85)*ninjaP
      acd545(93)=-acd545(6)*acd545(85)
      acd545(96)=acd545(44)*acd545(95)
      acd545(93)=acd545(93)+acd545(96)
      acd545(93)=acd545(4)*acd545(93)
      acd545(96)=acd545(71)*acd545(66)
      acd545(97)=acd545(70)*acd545(64)
      acd545(98)=acd545(69)*acd545(63)
      acd545(99)=acd545(68)*acd545(56)
      acd545(100)=acd545(67)*acd545(39)
      acd545(101)=acd545(74)+acd545(73)
      acd545(101)=acd545(29)*acd545(101)
      acd545(102)=acd545(28)*acd545(76)
      acd545(103)=acd545(45)*acd545(62)
      acd545(89)=acd545(93)+acd545(92)+2.0_ki*acd545(103)+acd545(89)+acd545(102&
      &)+acd545(101)+acd545(100)+acd545(99)+acd545(98)+acd545(97)+acd545(79)+ac&
      &d545(96)
      acd545(89)=acd545(5)*acd545(89)
      acd545(83)=-ninjaP*acd545(83)
      acd545(92)=acd545(45)*acd545(94)
      acd545(85)=-acd545(3)*acd545(85)
      acd545(93)=acd545(45)*acd545(95)
      acd545(85)=acd545(85)+acd545(93)
      acd545(85)=acd545(4)*acd545(85)
      acd545(93)=acd545(55)*acd545(61)
      acd545(94)=acd545(54)*acd545(60)
      acd545(96)=acd545(53)*acd545(59)
      acd545(97)=acd545(52)*acd545(57)
      acd545(98)=acd545(67)-acd545(73)
      acd545(99)=acd545(38)*acd545(98)
      acd545(100)=-acd545(28)*acd545(74)
      acd545(95)=-acd545(46)*acd545(95)
      acd545(83)=acd545(85)+acd545(92)+acd545(95)+acd545(100)+acd545(99)+acd545&
      &(97)+acd545(96)+acd545(94)+acd545(78)+acd545(93)+acd545(83)
      acd545(83)=acd545(2)*acd545(83)
      acd545(85)=acd545(45)*acd545(91)
      acd545(84)=acd545(44)*acd545(84)
      acd545(91)=acd545(42)*acd545(71)
      acd545(92)=acd545(41)*acd545(70)
      acd545(93)=acd545(40)*acd545(69)
      acd545(94)=acd545(37)*acd545(68)
      acd545(91)=acd545(91)-acd545(92)+acd545(93)+acd545(94)
      acd545(92)=-acd545(50)*acd545(91)
      acd545(93)=acd545(35)*acd545(71)
      acd545(94)=acd545(33)*acd545(70)
      acd545(95)=acd545(31)*acd545(69)
      acd545(96)=acd545(15)*acd545(68)
      acd545(93)=acd545(96)+acd545(95)+acd545(94)+acd545(75)+acd545(93)
      acd545(90)=acd545(93)*acd545(90)
      acd545(91)=acd545(72)+acd545(91)
      acd545(91)=acd545(36)*acd545(91)
      acd545(88)=ninjaP*acd545(88)
      acd545(93)=acd545(74)*acd545(35)
      acd545(94)=acd545(42)*acd545(98)
      acd545(93)=acd545(94)+acd545(82)+acd545(93)
      acd545(93)=acd545(34)*acd545(93)
      acd545(94)=acd545(74)*acd545(33)
      acd545(95)=-acd545(41)*acd545(98)
      acd545(94)=acd545(95)+acd545(81)+acd545(94)
      acd545(94)=acd545(32)*acd545(94)
      acd545(95)=acd545(74)*acd545(31)
      acd545(96)=acd545(40)*acd545(98)
      acd545(95)=acd545(96)+acd545(80)+acd545(95)
      acd545(95)=acd545(30)*acd545(95)
      acd545(96)=acd545(74)*acd545(15)
      acd545(97)=acd545(37)*acd545(98)
      acd545(96)=acd545(97)+acd545(77)+acd545(96)
      acd545(96)=acd545(14)*acd545(96)
      acd545(83)=acd545(83)+acd545(89)+acd545(84)+acd545(88)+acd545(91)+acd545(&
      &90)+acd545(92)+acd545(96)+acd545(95)+acd545(93)+acd545(94)+acd545(85)
      brack(ninjaidxt1mu0)=acd545(86)
      brack(ninjaidxt0mu0)=acd545(83)
      brack(ninjaidxt0mu2)=acd545(87)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d545h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd545h5
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
end module     p0_dbard_epnemumnmubarg_d545h5l131
