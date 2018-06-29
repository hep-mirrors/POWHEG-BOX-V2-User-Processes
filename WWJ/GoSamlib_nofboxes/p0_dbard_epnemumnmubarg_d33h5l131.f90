module     p0_dbard_epnemumnmubarg_d33h5l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity5d33h5l131.f90
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
      use p0_dbard_epnemumnmubarg_abbrevd33h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(8) :: acd33
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd33(1)=dotproduct(ninjaE3,spvak1k2)
      acd33(2)=dotproduct(ninjaE3,spvak4k3)
      acd33(3)=dotproduct(ninjaE3,spvak5k6)
      acd33(4)=abb33(27)
      acd33(5)=dotproduct(ninjaE3,spvak7k2)
      acd33(6)=abb33(47)
      acd33(7)=acd33(4)*acd33(1)
      acd33(8)=-acd33(6)*acd33(5)
      acd33(7)=acd33(7)+acd33(8)
      acd33(7)=acd33(7)*acd33(3)*acd33(2)
      brack(ninjaidxt2mu0)=acd33(7)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd33h5
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(116) :: acd33
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd33(1)=dotproduct(ninjaE3,spvak4k2)
      acd33(2)=abb33(34)
      acd33(3)=dotproduct(ninjaE3,spvak5k6)
      acd33(4)=dotproduct(ninjaE3,spvak1k2)
      acd33(5)=dotproduct(ninjaE4,spvak4k3)
      acd33(6)=abb33(27)
      acd33(7)=dotproduct(ninjaE3,spvak4k3)
      acd33(8)=dotproduct(ninjaE4,spvak1k2)
      acd33(9)=dotproduct(ninjaE4,spvak7k2)
      acd33(10)=abb33(47)
      acd33(11)=dotproduct(ninjaE3,spvak7k2)
      acd33(12)=dotproduct(ninjaE4,spvak5k6)
      acd33(13)=abb33(32)
      acd33(14)=dotproduct(ninjaE3,spvak5k2)
      acd33(15)=abb33(50)
      acd33(16)=dotproduct(ninjaE3,spvak7k3)
      acd33(17)=abb33(43)
      acd33(18)=dotproduct(ninjaE3,spvak1k3)
      acd33(19)=abb33(35)
      acd33(20)=dotproduct(k1,ninjaE3)
      acd33(21)=abb33(21)
      acd33(22)=dotproduct(k2,ninjaE3)
      acd33(23)=abb33(46)
      acd33(24)=abb33(14)
      acd33(25)=abb33(37)
      acd33(26)=abb33(12)
      acd33(27)=abb33(39)
      acd33(28)=abb33(30)
      acd33(29)=dotproduct(k5,ninjaE3)
      acd33(30)=dotproduct(k6,ninjaE3)
      acd33(31)=dotproduct(k7,ninjaE3)
      acd33(32)=abb33(13)
      acd33(33)=dotproduct(ninjaA,ninjaE3)
      acd33(34)=dotproduct(ninjaA,spvak5k6)
      acd33(35)=dotproduct(ninjaA,spvak1k2)
      acd33(36)=dotproduct(ninjaA,spvak4k3)
      acd33(37)=dotproduct(ninjaA,spvak7k2)
      acd33(38)=abb33(7)
      acd33(39)=abb33(22)
      acd33(40)=dotproduct(ninjaE3,spvak1k7)
      acd33(41)=abb33(33)
      acd33(42)=abb33(17)
      acd33(43)=dotproduct(ninjaE3,spvak6k2)
      acd33(44)=abb33(45)
      acd33(45)=abb33(26)
      acd33(46)=abb33(29)
      acd33(47)=dotproduct(ninjaE3,spvak7k1)
      acd33(48)=abb33(48)
      acd33(49)=abb33(8)
      acd33(50)=abb33(51)
      acd33(51)=abb33(19)
      acd33(52)=dotproduct(ninjaE3,spvak1k6)
      acd33(53)=abb33(23)
      acd33(54)=dotproduct(ninjaE3,spvak7k6)
      acd33(55)=abb33(24)
      acd33(56)=dotproduct(k1,ninjaA)
      acd33(57)=abb33(18)
      acd33(58)=dotproduct(k2,ninjaA)
      acd33(59)=dotproduct(ninjaA,spvak4k2)
      acd33(60)=dotproduct(ninjaA,spvak5k2)
      acd33(61)=dotproduct(ninjaA,spvak7k3)
      acd33(62)=dotproduct(ninjaA,spvak1k3)
      acd33(63)=abb33(36)
      acd33(64)=dotproduct(k5,ninjaA)
      acd33(65)=abb33(31)
      acd33(66)=dotproduct(k6,ninjaA)
      acd33(67)=dotproduct(k7,ninjaA)
      acd33(68)=abb33(25)
      acd33(69)=dotproduct(ninjaA,ninjaA)
      acd33(70)=abb33(20)
      acd33(71)=dotproduct(ninjaA,spvak1k7)
      acd33(72)=dotproduct(ninjaA,spvak6k2)
      acd33(73)=dotproduct(ninjaA,spvak1k6)
      acd33(74)=dotproduct(ninjaA,spvak7k6)
      acd33(75)=dotproduct(ninjaA,spvak7k1)
      acd33(76)=abb33(10)
      acd33(77)=abb33(28)
      acd33(78)=abb33(9)
      acd33(79)=abb33(11)
      acd33(80)=abb33(15)
      acd33(81)=abb33(44)
      acd33(82)=acd33(15)*acd33(14)
      acd33(83)=acd33(2)*acd33(1)
      acd33(84)=acd33(17)*acd33(16)
      acd33(85)=acd33(19)*acd33(18)
      acd33(82)=acd33(82)+acd33(83)+acd33(84)+acd33(85)
      acd33(83)=-acd33(5)*acd33(3)
      acd33(84)=-acd33(12)*acd33(7)
      acd33(83)=-acd33(84)-acd33(83)
      acd33(84)=acd33(4)*acd33(6)
      acd33(85)=acd33(11)*acd33(10)
      acd33(84)=acd33(84)-acd33(85)
      acd33(83)=acd33(84)*acd33(83)
      acd33(85)=acd33(7)*acd33(3)
      acd33(86)=acd33(85)*acd33(6)
      acd33(87)=acd33(86)*acd33(8)
      acd33(85)=acd33(85)*acd33(10)
      acd33(88)=acd33(85)*acd33(9)
      acd33(83)=acd33(82)+acd33(87)-acd33(88)+acd33(83)
      acd33(87)=acd33(13)*acd33(7)
      acd33(88)=acd33(87)+acd33(83)
      acd33(89)=acd33(21)*acd33(20)
      acd33(90)=acd33(32)*acd33(31)
      acd33(91)=acd33(41)*acd33(40)
      acd33(92)=acd33(43)*acd33(15)
      acd33(93)=acd33(48)*acd33(47)
      acd33(89)=-acd33(89)-acd33(90)-acd33(91)+acd33(92)-acd33(93)
      acd33(90)=acd33(24)*acd33(22)
      acd33(91)=acd33(38)*acd33(1)
      acd33(92)=acd33(39)*acd33(4)
      acd33(93)=acd33(42)*acd33(14)
      acd33(94)=acd33(44)*acd33(11)
      acd33(95)=acd33(45)*acd33(16)
      acd33(96)=acd33(46)*acd33(18)
      acd33(90)=acd33(96)+acd33(95)+acd33(94)+acd33(93)+acd33(92)+acd33(91)+acd&
      &33(90)-acd33(89)
      acd33(90)=acd33(3)*acd33(90)
      acd33(91)=acd33(52)*acd33(53)
      acd33(92)=acd33(54)*acd33(55)
      acd33(91)=acd33(91)+acd33(92)
      acd33(92)=2.0_ki*acd33(33)
      acd33(93)=acd33(13)*acd33(92)
      acd33(94)=acd33(25)*acd33(22)
      acd33(95)=acd33(49)*acd33(4)
      acd33(96)=acd33(50)*acd33(14)
      acd33(97)=acd33(51)*acd33(11)
      acd33(93)=acd33(97)+acd33(96)+acd33(95)+acd33(94)+acd33(93)+acd33(91)
      acd33(93)=acd33(7)*acd33(93)
      acd33(94)=acd33(23)*acd33(1)
      acd33(95)=acd33(26)*acd33(14)
      acd33(96)=acd33(27)*acd33(16)
      acd33(97)=acd33(28)*acd33(18)
      acd33(94)=acd33(94)-acd33(95)+acd33(96)-acd33(97)
      acd33(95)=acd33(30)+acd33(29)
      acd33(96)=acd33(95)-acd33(22)
      acd33(97)=-acd33(94)*acd33(96)
      acd33(98)=acd33(92)*acd33(82)
      acd33(99)=acd33(34)*acd33(7)
      acd33(100)=acd33(36)*acd33(3)
      acd33(99)=acd33(99)+acd33(100)
      acd33(100)=acd33(99)*acd33(84)
      acd33(86)=acd33(35)*acd33(86)
      acd33(85)=-acd33(37)*acd33(85)
      acd33(85)=acd33(85)+acd33(86)+acd33(90)+acd33(93)+acd33(98)+acd33(100)+ac&
      &d33(97)
      acd33(86)=acd33(56)*acd33(21)
      acd33(90)=acd33(67)*acd33(32)
      acd33(93)=acd33(71)*acd33(41)
      acd33(97)=-acd33(72)*acd33(15)
      acd33(98)=acd33(75)*acd33(48)
      acd33(86)=acd33(76)+acd33(98)+acd33(97)+acd33(93)+acd33(90)+acd33(86)
      acd33(86)=acd33(3)*acd33(86)
      acd33(84)=acd33(36)*acd33(84)
      acd33(84)=acd33(84)-acd33(89)
      acd33(84)=acd33(34)*acd33(84)
      acd33(89)=-acd33(66)-acd33(64)+acd33(58)
      acd33(89)=acd33(94)*acd33(89)
      acd33(83)=ninjaP*acd33(83)
      acd33(82)=acd33(87)+acd33(82)
      acd33(82)=acd33(69)*acd33(82)
      acd33(87)=acd33(35)*acd33(6)
      acd33(90)=-acd33(37)*acd33(10)
      acd33(87)=acd33(90)+acd33(87)
      acd33(87)=acd33(99)*acd33(87)
      acd33(90)=acd33(36)*acd33(91)
      acd33(91)=acd33(73)*acd33(53)
      acd33(93)=acd33(74)*acd33(55)
      acd33(91)=acd33(77)+acd33(93)+acd33(91)
      acd33(91)=acd33(7)*acd33(91)
      acd33(93)=acd33(26)*acd33(96)
      acd33(94)=acd33(15)*acd33(92)
      acd33(93)=acd33(94)+acd33(93)
      acd33(93)=acd33(60)*acd33(93)
      acd33(94)=acd33(36)*acd33(92)
      acd33(97)=ninjaP*acd33(7)
      acd33(94)=acd33(94)+acd33(97)
      acd33(94)=acd33(13)*acd33(94)
      acd33(97)=-acd33(23)*acd33(96)
      acd33(98)=acd33(2)*acd33(92)
      acd33(97)=acd33(98)+acd33(97)
      acd33(97)=acd33(59)*acd33(97)
      acd33(98)=-acd33(27)*acd33(96)
      acd33(99)=acd33(17)*acd33(92)
      acd33(98)=acd33(99)+acd33(98)
      acd33(98)=acd33(61)*acd33(98)
      acd33(96)=acd33(28)*acd33(96)
      acd33(99)=acd33(19)*acd33(92)
      acd33(96)=acd33(99)+acd33(96)
      acd33(96)=acd33(62)*acd33(96)
      acd33(99)=acd33(22)*acd33(34)
      acd33(100)=acd33(58)*acd33(3)
      acd33(99)=acd33(99)+acd33(100)
      acd33(99)=acd33(24)*acd33(99)
      acd33(100)=acd33(36)*acd33(22)
      acd33(101)=acd33(58)*acd33(7)
      acd33(100)=acd33(100)+acd33(101)
      acd33(100)=acd33(25)*acd33(100)
      acd33(101)=acd33(1)*acd33(34)
      acd33(102)=acd33(59)*acd33(3)
      acd33(101)=acd33(101)+acd33(102)
      acd33(101)=acd33(38)*acd33(101)
      acd33(102)=acd33(4)*acd33(34)
      acd33(103)=acd33(35)*acd33(3)
      acd33(102)=acd33(102)+acd33(103)
      acd33(102)=acd33(39)*acd33(102)
      acd33(103)=acd33(14)*acd33(34)
      acd33(104)=acd33(60)*acd33(3)
      acd33(103)=acd33(103)+acd33(104)
      acd33(103)=acd33(42)*acd33(103)
      acd33(104)=acd33(11)*acd33(34)
      acd33(105)=acd33(37)*acd33(3)
      acd33(104)=acd33(104)+acd33(105)
      acd33(104)=acd33(44)*acd33(104)
      acd33(105)=acd33(16)*acd33(34)
      acd33(106)=acd33(61)*acd33(3)
      acd33(105)=acd33(105)+acd33(106)
      acd33(105)=acd33(45)*acd33(105)
      acd33(106)=acd33(18)*acd33(34)
      acd33(107)=acd33(62)*acd33(3)
      acd33(106)=acd33(106)+acd33(107)
      acd33(106)=acd33(46)*acd33(106)
      acd33(107)=acd33(4)*acd33(36)
      acd33(108)=acd33(35)*acd33(7)
      acd33(107)=acd33(107)+acd33(108)
      acd33(107)=acd33(49)*acd33(107)
      acd33(108)=acd33(36)*acd33(14)
      acd33(109)=acd33(60)*acd33(7)
      acd33(108)=acd33(108)+acd33(109)
      acd33(108)=acd33(50)*acd33(108)
      acd33(109)=acd33(11)*acd33(36)
      acd33(110)=acd33(37)*acd33(7)
      acd33(109)=acd33(109)+acd33(110)
      acd33(109)=acd33(51)*acd33(109)
      acd33(95)=-acd33(65)*acd33(95)
      acd33(110)=acd33(57)*acd33(20)
      acd33(111)=acd33(63)*acd33(22)
      acd33(112)=acd33(68)*acd33(31)
      acd33(92)=acd33(70)*acd33(92)
      acd33(113)=acd33(78)*acd33(40)
      acd33(114)=acd33(79)*acd33(14)
      acd33(115)=acd33(80)*acd33(43)
      acd33(116)=acd33(81)*acd33(47)
      acd33(82)=acd33(116)+acd33(115)+acd33(114)+acd33(113)+acd33(92)+acd33(112&
      &)+acd33(111)+acd33(110)+acd33(95)+acd33(109)+acd33(108)+acd33(107)+acd33&
      &(106)+acd33(105)+acd33(104)+acd33(103)+acd33(102)+acd33(101)+acd33(100)+&
      &acd33(99)+acd33(82)+acd33(96)+acd33(98)+acd33(97)+acd33(94)+acd33(93)+ac&
      &d33(83)+acd33(84)+acd33(86)+acd33(89)+acd33(91)+acd33(87)+acd33(90)
      brack(ninjaidxt1mu0)=acd33(85)
      brack(ninjaidxt0mu0)=acd33(82)
      brack(ninjaidxt0mu2)=acd33(88)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_dbard_epnemumnmubarg_d33h5_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd33h5
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
end module     p0_dbard_epnemumnmubarg_d33h5l131
