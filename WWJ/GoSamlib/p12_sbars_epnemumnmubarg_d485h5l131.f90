module     p12_sbars_epnemumnmubarg_d485h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity5d485h5l131.f90
   ! generator: buildfortran_tn3.py
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd485h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(6) :: acd485
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd485(1)=dotproduct(ninjaE3,spvak1k2)
      acd485(2)=dotproduct(ninjaE3,spvak4k3)
      acd485(3)=dotproduct(ninjaE3,spvak5k6)
      acd485(4)=dotproduct(ninjaE3,spvak7k2)
      acd485(5)=abb485(6)
      acd485(6)=-acd485(5)*acd485(4)*acd485(3)*acd485(2)*acd485(1)
      brack(ninjaidxt2mu0)=acd485(6)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_abbrevd485h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(102) :: acd485
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd485(1)=dotproduct(ninjaE3,spvak7k2)
      acd485(2)=dotproduct(ninjaE3,spvak1k2)
      acd485(3)=dotproduct(ninjaE3,spvak4k3)
      acd485(4)=dotproduct(ninjaE4,spvak5k6)
      acd485(5)=abb485(6)
      acd485(6)=dotproduct(ninjaE3,spvak5k6)
      acd485(7)=dotproduct(ninjaE4,spvak4k3)
      acd485(8)=dotproduct(ninjaE4,spvak1k2)
      acd485(9)=abb485(34)
      acd485(10)=dotproduct(ninjaE3,spvak1k3)
      acd485(11)=abb485(54)
      acd485(12)=dotproduct(ninjaE3,spvak5k2)
      acd485(13)=abb485(29)
      acd485(14)=dotproduct(ninjaE3,spvak4k2)
      acd485(15)=abb485(51)
      acd485(16)=dotproduct(ninjaE4,spvak7k2)
      acd485(17)=abb485(9)
      acd485(18)=dotproduct(k1,ninjaE3)
      acd485(19)=abb485(31)
      acd485(20)=abb485(47)
      acd485(21)=abb485(28)
      acd485(22)=abb485(26)
      acd485(23)=abb485(40)
      acd485(24)=dotproduct(k2,ninjaE3)
      acd485(25)=abb485(18)
      acd485(26)=dotproduct(k3,ninjaE3)
      acd485(27)=dotproduct(k4,ninjaE3)
      acd485(28)=dotproduct(k7,ninjaE3)
      acd485(29)=dotproduct(ninjaA,ninjaE3)
      acd485(30)=dotproduct(ninjaA,spvak7k2)
      acd485(31)=dotproduct(ninjaA,spvak1k2)
      acd485(32)=dotproduct(ninjaA,spvak4k3)
      acd485(33)=dotproduct(ninjaA,spvak5k6)
      acd485(34)=abb485(49)
      acd485(35)=abb485(37)
      acd485(36)=abb485(36)
      acd485(37)=abb485(7)
      acd485(38)=abb485(50)
      acd485(39)=abb485(52)
      acd485(40)=dotproduct(ninjaE3,spvak3k2)
      acd485(41)=dotproduct(ninjaE3,spvak1k6)
      acd485(42)=abb485(53)
      acd485(43)=dotproduct(ninjaE3,spvak1k4)
      acd485(44)=abb485(33)
      acd485(45)=dotproduct(k1,ninjaA)
      acd485(46)=abb485(23)
      acd485(47)=abb485(21)
      acd485(48)=dotproduct(ninjaA,spvak1k3)
      acd485(49)=dotproduct(ninjaA,spvak5k2)
      acd485(50)=dotproduct(ninjaA,spvak4k2)
      acd485(51)=abb485(5)
      acd485(52)=dotproduct(k2,ninjaA)
      acd485(53)=abb485(48)
      acd485(54)=abb485(45)
      acd485(55)=abb485(44)
      acd485(56)=dotproduct(k3,ninjaA)
      acd485(57)=abb485(42)
      acd485(58)=dotproduct(k4,ninjaA)
      acd485(59)=dotproduct(k7,ninjaA)
      acd485(60)=abb485(41)
      acd485(61)=abb485(15)
      acd485(62)=dotproduct(ninjaA,ninjaA)
      acd485(63)=abb485(8)
      acd485(64)=abb485(17)
      acd485(65)=abb485(12)
      acd485(66)=abb485(39)
      acd485(67)=abb485(24)
      acd485(68)=dotproduct(ninjaA,spvak3k2)
      acd485(69)=dotproduct(ninjaA,spvak1k6)
      acd485(70)=dotproduct(ninjaA,spvak1k4)
      acd485(71)=abb485(20)
      acd485(72)=abb485(25)
      acd485(73)=abb485(13)
      acd485(74)=abb485(38)
      acd485(75)=abb485(27)
      acd485(76)=abb485(10)
      acd485(77)=abb485(30)
      acd485(78)=acd485(14)*acd485(15)
      acd485(79)=acd485(10)*acd485(11)
      acd485(78)=acd485(78)-acd485(79)
      acd485(79)=acd485(6)*acd485(5)
      acd485(80)=acd485(79)*acd485(8)
      acd485(81)=acd485(2)*acd485(5)
      acd485(82)=acd485(81)*acd485(4)
      acd485(80)=-acd485(9)+acd485(80)+acd485(82)
      acd485(82)=-acd485(3)*acd485(80)
      acd485(83)=acd485(79)*acd485(2)
      acd485(84)=-acd485(7)*acd485(83)
      acd485(85)=acd485(12)*acd485(13)
      acd485(82)=acd485(82)+acd485(85)+acd485(84)+acd485(78)
      acd485(82)=acd485(1)*acd485(82)
      acd485(84)=acd485(83)*acd485(16)
      acd485(85)=-acd485(12)*acd485(17)
      acd485(85)=-acd485(84)+acd485(85)
      acd485(85)=acd485(3)*acd485(85)
      acd485(82)=acd485(85)+acd485(82)
      acd485(85)=acd485(42)*acd485(41)
      acd485(86)=acd485(15)*acd485(40)
      acd485(87)=acd485(11)*acd485(43)
      acd485(88)=acd485(28)*acd485(19)
      acd485(85)=-acd485(86)-acd485(85)+acd485(87)-acd485(88)
      acd485(86)=acd485(14)*acd485(39)
      acd485(87)=acd485(18)*acd485(19)
      acd485(88)=acd485(10)*acd485(37)
      acd485(89)=acd485(5)*acd485(33)
      acd485(89)=acd485(89)-acd485(35)
      acd485(90)=acd485(89)*acd485(2)
      acd485(91)=2.0_ki*acd485(29)
      acd485(92)=acd485(91)*acd485(9)
      acd485(79)=acd485(79)*acd485(31)
      acd485(79)=-acd485(86)-acd485(92)+acd485(85)-acd485(87)-acd485(88)+acd485&
      &(90)+acd485(79)
      acd485(86)=acd485(12)*acd485(38)
      acd485(87)=acd485(1)*acd485(34)
      acd485(86)=acd485(87)+acd485(86)-acd485(79)
      acd485(86)=acd485(3)*acd485(86)
      acd485(87)=acd485(18)*acd485(20)
      acd485(88)=acd485(10)*acd485(44)
      acd485(90)=acd485(5)*acd485(32)
      acd485(90)=acd485(90)-acd485(36)
      acd485(92)=acd485(90)*acd485(2)
      acd485(87)=-acd485(92)+acd485(87)+acd485(88)
      acd485(87)=acd485(87)*acd485(6)
      acd485(88)=acd485(14)*acd485(23)
      acd485(92)=-acd485(10)*acd485(21)
      acd485(88)=acd485(88)+acd485(92)
      acd485(92)=acd485(26)+acd485(27)
      acd485(93)=acd485(92)-acd485(18)
      acd485(88)=acd485(93)*acd485(88)
      acd485(78)=acd485(78)*acd485(91)
      acd485(78)=-acd485(87)-acd485(78)+acd485(88)
      acd485(87)=acd485(91)*acd485(13)
      acd485(88)=-acd485(93)*acd485(22)
      acd485(87)=acd485(87)-acd485(88)
      acd485(88)=acd485(12)*acd485(87)
      acd485(86)=acd485(88)+acd485(86)-acd485(78)
      acd485(86)=acd485(1)*acd485(86)
      acd485(88)=acd485(28)-acd485(24)
      acd485(94)=acd485(88)*acd485(25)
      acd485(95)=-acd485(17)*acd485(91)
      acd485(95)=acd485(95)-acd485(94)
      acd485(95)=acd485(12)*acd485(95)
      acd485(83)=-acd485(30)*acd485(83)
      acd485(83)=acd485(83)+acd485(95)
      acd485(83)=acd485(3)*acd485(83)
      acd485(83)=acd485(83)+acd485(86)
      acd485(80)=-ninjaP*acd485(80)
      acd485(86)=-acd485(31)*acd485(89)
      acd485(89)=acd485(42)*acd485(69)
      acd485(95)=acd485(50)*acd485(39)
      acd485(96)=acd485(48)*acd485(37)
      acd485(97)=acd485(9)*acd485(62)
      acd485(98)=acd485(49)*acd485(38)
      acd485(99)=acd485(59)+acd485(45)
      acd485(99)=acd485(19)*acd485(99)
      acd485(100)=acd485(15)*acd485(68)
      acd485(101)=-acd485(11)*acd485(70)
      acd485(102)=acd485(30)*acd485(34)
      acd485(80)=2.0_ki*acd485(102)+acd485(101)+acd485(100)+acd485(99)+acd485(9&
      &8)+acd485(97)+acd485(96)+acd485(95)+acd485(73)+acd485(89)+acd485(80)+acd&
      &485(86)
      acd485(80)=acd485(3)*acd485(80)
      acd485(85)=-acd485(32)*acd485(85)
      acd485(86)=acd485(33)*acd485(44)
      acd485(89)=ninjaP+acd485(62)
      acd485(95)=-acd485(11)*acd485(89)
      acd485(96)=-acd485(58)+acd485(45)-acd485(56)
      acd485(97)=-acd485(21)*acd485(96)
      acd485(98)=acd485(32)*acd485(37)
      acd485(86)=acd485(98)+acd485(97)+acd485(95)+acd485(75)+acd485(86)
      acd485(86)=acd485(10)*acd485(86)
      acd485(95)=acd485(49)*acd485(13)
      acd485(97)=acd485(15)*acd485(50)
      acd485(98)=-acd485(11)*acd485(48)
      acd485(99)=acd485(32)*acd485(9)
      acd485(95)=acd485(99)+acd485(98)+acd485(97)+acd485(64)+acd485(95)
      acd485(95)=acd485(95)*acd485(91)
      acd485(97)=-acd485(31)*acd485(90)
      acd485(98)=acd485(45)*acd485(20)
      acd485(99)=acd485(48)*acd485(44)
      acd485(81)=-ninjaP*acd485(7)*acd485(81)
      acd485(81)=acd485(81)+acd485(99)+acd485(74)+acd485(98)+acd485(97)
      acd485(81)=acd485(6)*acd485(81)
      acd485(97)=acd485(23)*acd485(50)
      acd485(98)=acd485(22)*acd485(49)
      acd485(99)=acd485(21)*acd485(48)
      acd485(97)=-acd485(99)+acd485(97)-acd485(98)
      acd485(98)=acd485(97)-acd485(57)
      acd485(92)=-acd485(98)*acd485(92)
      acd485(98)=acd485(15)*acd485(89)
      acd485(99)=acd485(23)*acd485(96)
      acd485(100)=acd485(32)*acd485(39)
      acd485(98)=acd485(100)+acd485(99)+acd485(77)+acd485(98)
      acd485(98)=acd485(14)*acd485(98)
      acd485(99)=acd485(33)*acd485(20)
      acd485(100)=acd485(32)*acd485(19)
      acd485(97)=acd485(100)+acd485(51)+acd485(99)+acd485(97)
      acd485(97)=acd485(18)*acd485(97)
      acd485(99)=acd485(13)*acd485(89)
      acd485(96)=-acd485(22)*acd485(96)
      acd485(100)=acd485(32)*acd485(38)
      acd485(96)=acd485(100)+acd485(96)+acd485(76)+acd485(99)
      acd485(96)=acd485(12)*acd485(96)
      acd485(90)=-acd485(33)*acd485(90)
      acd485(99)=acd485(32)*acd485(35)
      acd485(90)=acd485(99)+acd485(72)+acd485(90)
      acd485(90)=acd485(2)*acd485(90)
      acd485(99)=acd485(28)*acd485(60)
      acd485(100)=acd485(32)*acd485(34)
      acd485(100)=acd485(71)+acd485(100)
      acd485(100)=acd485(1)*acd485(100)
      acd485(80)=acd485(100)+acd485(80)+acd485(96)+acd485(81)+acd485(95)+acd485&
      &(86)+acd485(90)+acd485(97)+acd485(98)+acd485(85)+acd485(99)+acd485(92)
      acd485(80)=acd485(1)*acd485(80)
      acd485(79)=-acd485(30)*acd485(79)
      acd485(81)=-acd485(17)*acd485(89)
      acd485(85)=acd485(52)-acd485(59)
      acd485(85)=acd485(25)*acd485(85)
      acd485(86)=acd485(30)*acd485(38)
      acd485(81)=acd485(86)+acd485(85)+acd485(81)
      acd485(81)=acd485(12)*acd485(81)
      acd485(85)=-acd485(49)*acd485(17)
      acd485(85)=acd485(65)+acd485(85)
      acd485(85)=acd485(85)*acd485(91)
      acd485(86)=acd485(25)*acd485(49)
      acd485(89)=acd485(53)+acd485(86)
      acd485(89)=acd485(24)*acd485(89)
      acd485(86)=acd485(61)-acd485(86)
      acd485(86)=acd485(28)*acd485(86)
      acd485(84)=-ninjaP*acd485(84)
      acd485(79)=acd485(81)+acd485(79)+acd485(84)+acd485(85)+acd485(89)+acd485(&
      &86)
      acd485(79)=acd485(3)*acd485(79)
      acd485(78)=-acd485(30)*acd485(78)
      acd485(81)=-acd485(32)*acd485(17)
      acd485(81)=acd485(67)+acd485(81)
      acd485(81)=acd485(81)*acd485(91)
      acd485(84)=acd485(30)*acd485(87)
      acd485(85)=acd485(55)*acd485(88)
      acd485(86)=-acd485(32)*acd485(94)
      acd485(81)=acd485(84)+acd485(81)+acd485(86)+acd485(85)
      acd485(81)=acd485(12)*acd485(81)
      acd485(84)=acd485(28)+acd485(24)
      acd485(85)=-acd485(93)*acd485(46)*acd485(84)
      acd485(86)=acd485(93)+acd485(84)
      acd485(86)=acd485(47)*acd485(86)
      acd485(87)=acd485(63)*acd485(91)
      acd485(86)=acd485(87)+acd485(86)
      acd485(86)=acd485(86)*acd485(91)
      acd485(84)=-acd485(54)*acd485(84)
      acd485(87)=acd485(66)*acd485(91)
      acd485(84)=acd485(87)+acd485(84)
      acd485(84)=acd485(6)*acd485(84)
      acd485(78)=acd485(80)+acd485(79)+acd485(81)+acd485(78)+acd485(84)+acd485(&
      &86)+acd485(85)
      brack(ninjaidxt1mu0)=acd485(83)
      brack(ninjaidxt0mu0)=acd485(78)
      brack(ninjaidxt0mu2)=acd485(82)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p12_sbars_epnemumnmubarg_d485h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_abbrevd485h5
      implicit none
      integer(c_int), intent(in) :: ncut, deg
      complex(ki), dimension(0:3), intent(in) :: a, b, c
      complex(ki), intent(in) :: param
      complex(ki), dimension(4) :: vecA, vecB, vecC
      complex(ki), dimension(0:*), intent(out) :: coeffs
      integer :: t1
      complex(ki), dimension(4) :: qshift
      qshift = k7
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
end module     p12_sbars_epnemumnmubarg_d485h5l131
