module     p0_gg_hhg_d43h0l131
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d43h0l131.f90
   ! generator: buildfortran_tn3.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond_t, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, parameter :: ninjaidxt3mu0 = 0
   integer, parameter :: ninjaidxt2mu0 = 1
   integer, parameter :: ninjaidxt1mu0 = 2
   integer, parameter :: ninjaidxt1mu2 = 3
   integer, parameter :: ninjaidxt0mu0 = 4
   integer, parameter :: ninjaidxt0mu2 = 5
   public :: numerator_t3
contains
!---#[ subroutine brack_31:
   pure subroutine brack_31(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd43h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(1) :: acd43
      complex(ki), dimension (0:*), intent(inout) :: brack
      brack(ninjaidxt3mu0)=0.0_ki
      brack(ninjaidxt2mu0)=0.0_ki
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd43h0
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(122) :: acd43
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd43(1)=dotproduct(k2,ninjaE3)
      acd43(2)=dotproduct(ninjaE3,spvak2k5)
      acd43(3)=abb43(44)
      acd43(4)=dotproduct(ninjaE3,spvak1k2)
      acd43(5)=abb43(29)
      acd43(6)=dotproduct(ninjaE3,spvak1l4)
      acd43(7)=abb43(70)
      acd43(8)=dotproduct(ninjaE3,spvak1k5)
      acd43(9)=abb43(78)
      acd43(10)=dotproduct(ninjaE3,spval4k2)
      acd43(11)=abb43(52)
      acd43(12)=dotproduct(k1,ninjaE3)
      acd43(13)=abb43(14)
      acd43(14)=dotproduct(l4,ninjaE3)
      acd43(15)=abb43(85)
      acd43(16)=dotproduct(ninjaE3,spvak2l4)
      acd43(17)=abb43(69)
      acd43(18)=abb43(90)
      acd43(19)=abb43(31)
      acd43(20)=dotproduct(ninjaE3,spval4k5)
      acd43(21)=abb43(68)
      acd43(22)=abb43(49)
      acd43(23)=abb43(41)
      acd43(24)=dotproduct(l3,ninjaE3)
      acd43(25)=abb43(83)
      acd43(26)=abb43(67)
      acd43(27)=dotproduct(ninjaA,ninjaE3)
      acd43(28)=abb43(33)
      acd43(29)=abb43(80)
      acd43(30)=abb43(24)
      acd43(31)=abb43(87)
      acd43(32)=abb43(75)
      acd43(33)=dotproduct(ninjaE3,spvak1l3)
      acd43(34)=abb43(88)
      acd43(35)=dotproduct(ninjaE3,spval3k2)
      acd43(36)=abb43(55)
      acd43(37)=abb43(97)
      acd43(38)=abb43(34)
      acd43(39)=abb43(96)
      acd43(40)=abb43(99)
      acd43(41)=abb43(86)
      acd43(42)=abb43(10)
      acd43(43)=abb43(21)
      acd43(44)=dotproduct(ninjaE3,spvak2l3)
      acd43(45)=abb43(12)
      acd43(46)=dotproduct(ninjaE3,spvak2k1)
      acd43(47)=abb43(23)
      acd43(48)=abb43(26)
      acd43(49)=abb43(38)
      acd43(50)=abb43(11)
      acd43(51)=abb43(61)
      acd43(52)=abb43(66)
      acd43(53)=abb43(72)
      acd43(54)=dotproduct(k1,ninjaA)
      acd43(55)=dotproduct(k2,ninjaA)
      acd43(56)=dotproduct(ninjaA,spvak2k5)
      acd43(57)=abb43(45)
      acd43(58)=dotproduct(l4,ninjaA)
      acd43(59)=abb43(46)
      acd43(60)=dotproduct(ninjaA,spvak2l4)
      acd43(61)=dotproduct(ninjaA,spvak1l4)
      acd43(62)=dotproduct(ninjaA,spval4k5)
      acd43(63)=dotproduct(ninjaA,spval4k2)
      acd43(64)=abb43(84)
      acd43(65)=abb43(42)
      acd43(66)=dotproduct(l3,ninjaA)
      acd43(67)=abb43(40)
      acd43(68)=dotproduct(ninjaA,ninjaA)
      acd43(69)=abb43(37)
      acd43(70)=dotproduct(ninjaA,spvak1k2)
      acd43(71)=dotproduct(ninjaA,spvak1k5)
      acd43(72)=dotproduct(ninjaA,spvak1l3)
      acd43(73)=dotproduct(ninjaA,spval3k2)
      acd43(74)=abb43(102)
      acd43(75)=abb43(32)
      acd43(76)=abb43(94)
      acd43(77)=abb43(89)
      acd43(78)=abb43(57)
      acd43(79)=abb43(39)
      acd43(80)=abb43(77)
      acd43(81)=abb43(60)
      acd43(82)=abb43(18)
      acd43(83)=abb43(104)
      acd43(84)=abb43(16)
      acd43(85)=abb43(36)
      acd43(86)=abb43(53)
      acd43(87)=abb43(95)
      acd43(88)=abb43(59)
      acd43(89)=dotproduct(ninjaA,spvak2l3)
      acd43(90)=dotproduct(ninjaA,spvak2k1)
      acd43(91)=abb43(28)
      acd43(92)=abb43(13)
      acd43(93)=abb43(79)
      acd43(94)=abb43(15)
      acd43(95)=abb43(25)
      acd43(96)=abb43(93)
      acd43(97)=abb43(65)
      acd43(98)=abb43(74)
      acd43(99)=abb43(50)
      acd43(100)=abb43(81)
      acd43(101)=acd43(10)*acd43(11)
      acd43(102)=acd43(6)*acd43(7)
      acd43(103)=acd43(8)*acd43(9)
      acd43(101)=-acd43(103)+acd43(101)-acd43(102)
      acd43(102)=acd43(4)*acd43(5)
      acd43(103)=acd43(1)*acd43(3)
      acd43(102)=acd43(103)+acd43(102)-acd43(101)
      acd43(102)=acd43(2)*acd43(102)
      acd43(103)=acd43(35)*acd43(36)
      acd43(104)=acd43(33)*acd43(34)
      acd43(103)=acd43(103)+acd43(104)
      acd43(104)=acd43(24)*acd43(25)
      acd43(105)=acd43(10)*acd43(32)
      acd43(106)=acd43(6)*acd43(30)
      acd43(107)=acd43(14)*acd43(26)
      acd43(108)=acd43(8)*acd43(31)
      acd43(109)=acd43(12)*acd43(13)
      acd43(110)=acd43(4)*acd43(28)
      acd43(111)=2.0_ki*acd43(27)
      acd43(112)=acd43(111)*acd43(3)
      acd43(104)=acd43(109)+acd43(110)+acd43(112)+acd43(103)+acd43(104)+acd43(1&
      &07)+acd43(108)+acd43(105)+acd43(106)
      acd43(105)=acd43(1)*acd43(23)
      acd43(105)=acd43(105)+acd43(104)
      acd43(105)=acd43(1)*acd43(105)
      acd43(106)=acd43(10)*acd43(22)
      acd43(107)=acd43(6)*acd43(19)
      acd43(106)=acd43(106)-acd43(107)
      acd43(107)=acd43(16)*acd43(17)
      acd43(108)=acd43(20)*acd43(21)
      acd43(109)=acd43(14)*acd43(15)
      acd43(107)=acd43(107)+acd43(109)+acd43(108)+acd43(106)
      acd43(107)=acd43(107)*acd43(12)
      acd43(108)=acd43(46)*acd43(47)
      acd43(109)=acd43(45)*acd43(44)
      acd43(110)=acd43(16)*acd43(42)
      acd43(112)=acd43(20)*acd43(49)
      acd43(108)=acd43(108)+acd43(109)+acd43(110)+acd43(112)
      acd43(109)=acd43(14)*acd43(38)
      acd43(110)=acd43(8)*acd43(48)
      acd43(112)=acd43(111)*acd43(5)
      acd43(109)=acd43(109)+acd43(110)+acd43(108)+acd43(112)
      acd43(109)=acd43(109)*acd43(4)
      acd43(101)=acd43(101)*acd43(111)
      acd43(106)=-acd43(24)*acd43(106)
      acd43(110)=acd43(35)*acd43(41)
      acd43(112)=acd43(33)*acd43(40)
      acd43(110)=acd43(110)-acd43(112)
      acd43(110)=acd43(110)*acd43(14)
      acd43(112)=acd43(24)*acd43(37)
      acd43(113)=acd43(14)*acd43(39)
      acd43(112)=acd43(112)+acd43(113)
      acd43(112)=acd43(112)*acd43(8)
      acd43(101)=acd43(107)+acd43(109)+acd43(110)+acd43(112)-acd43(101)+acd43(1&
      &06)
      acd43(106)=acd43(35)*acd43(53)
      acd43(107)=acd43(33)*acd43(52)
      acd43(109)=acd43(10)*acd43(51)
      acd43(110)=acd43(6)*acd43(50)
      acd43(112)=acd43(12)*acd43(18)
      acd43(113)=acd43(4)*acd43(43)
      acd43(106)=acd43(110)+acd43(106)+acd43(112)+acd43(113)+acd43(107)+acd43(1&
      &09)
      acd43(107)=acd43(1)*acd43(29)
      acd43(107)=acd43(107)+acd43(106)
      acd43(107)=acd43(2)*acd43(107)
      acd43(105)=acd43(107)+acd43(105)+acd43(101)
      acd43(105)=acd43(2)*acd43(105)
      acd43(107)=acd43(36)*acd43(73)
      acd43(109)=acd43(34)*acd43(72)
      acd43(110)=acd43(25)*acd43(66)
      acd43(112)=acd43(71)*acd43(31)
      acd43(113)=acd43(63)*acd43(32)
      acd43(114)=acd43(61)*acd43(30)
      acd43(115)=acd43(58)*acd43(26)
      acd43(116)=acd43(68)+ninjaP
      acd43(117)=acd43(3)*acd43(116)
      acd43(118)=acd43(54)*acd43(13)
      acd43(119)=acd43(70)*acd43(28)
      acd43(120)=acd43(55)*acd43(23)
      acd43(121)=2.0_ki*acd43(56)
      acd43(122)=acd43(29)*acd43(121)
      acd43(107)=acd43(122)+2.0_ki*acd43(120)+acd43(119)+acd43(118)+acd43(117)+&
      &acd43(115)+acd43(114)+acd43(113)+acd43(112)+acd43(110)+acd43(109)+acd43(&
      &75)+acd43(107)
      acd43(107)=acd43(1)*acd43(107)
      acd43(109)=acd43(49)*acd43(62)
      acd43(110)=acd43(47)*acd43(90)
      acd43(112)=acd43(45)*acd43(89)
      acd43(113)=acd43(42)*acd43(60)
      acd43(114)=acd43(71)*acd43(48)
      acd43(115)=acd43(58)*acd43(38)
      acd43(117)=acd43(5)*acd43(116)
      acd43(118)=acd43(55)*acd43(28)
      acd43(109)=acd43(118)+acd43(117)+acd43(115)+acd43(114)+acd43(113)+acd43(1&
      &12)+acd43(110)+acd43(91)+acd43(109)
      acd43(109)=acd43(4)*acd43(109)
      acd43(110)=acd43(53)*acd43(73)
      acd43(112)=acd43(52)*acd43(72)
      acd43(113)=acd43(63)*acd43(51)
      acd43(114)=acd43(61)*acd43(50)
      acd43(115)=acd43(54)*acd43(18)
      acd43(117)=acd43(70)*acd43(43)
      acd43(118)=acd43(55)*acd43(29)
      acd43(110)=acd43(118)+acd43(117)+acd43(115)+acd43(114)+acd43(113)+acd43(1&
      &12)+acd43(94)+acd43(110)
      acd43(110)=acd43(2)*acd43(110)
      acd43(112)=acd43(41)*acd43(73)
      acd43(113)=-acd43(40)*acd43(72)
      acd43(114)=acd43(71)*acd43(39)
      acd43(115)=acd43(54)*acd43(15)
      acd43(117)=acd43(70)*acd43(38)
      acd43(118)=acd43(55)*acd43(26)
      acd43(112)=acd43(118)+acd43(117)+acd43(115)+acd43(114)+acd43(113)+acd43(8&
      &1)+acd43(112)
      acd43(112)=acd43(14)*acd43(112)
      acd43(106)=acd43(106)*acd43(121)
      acd43(113)=acd43(37)*acd43(66)
      acd43(114)=acd43(58)*acd43(39)
      acd43(115)=acd43(9)*acd43(116)
      acd43(117)=acd43(70)*acd43(48)
      acd43(118)=acd43(55)*acd43(31)
      acd43(113)=acd43(118)+acd43(117)+acd43(115)+acd43(114)+acd43(96)+acd43(11&
      &3)
      acd43(113)=acd43(8)*acd43(113)
      acd43(114)=acd43(22)*acd43(63)
      acd43(115)=acd43(19)*acd43(61)
      acd43(114)=acd43(114)-acd43(115)
      acd43(115)=acd43(21)*acd43(62)
      acd43(117)=acd43(17)*acd43(60)
      acd43(118)=acd43(58)*acd43(15)
      acd43(119)=acd43(55)*acd43(13)
      acd43(115)=acd43(119)+acd43(118)+acd43(117)+acd43(64)+acd43(115)+acd43(11&
      &4)
      acd43(115)=acd43(12)*acd43(115)
      acd43(117)=-acd43(11)*acd43(63)
      acd43(118)=acd43(9)*acd43(71)
      acd43(119)=acd43(7)*acd43(61)
      acd43(120)=acd43(70)*acd43(5)
      acd43(121)=acd43(55)*acd43(3)
      acd43(117)=acd43(121)+acd43(120)+acd43(119)+acd43(118)+acd43(84)+acd43(11&
      &7)
      acd43(117)=acd43(117)*acd43(111)
      acd43(108)=acd43(70)*acd43(108)
      acd43(118)=acd43(71)*acd43(37)
      acd43(119)=acd43(55)*acd43(25)
      acd43(114)=acd43(119)+acd43(80)+acd43(118)-acd43(114)
      acd43(114)=acd43(24)*acd43(114)
      acd43(118)=-acd43(11)*acd43(116)
      acd43(119)=acd43(54)-acd43(66)
      acd43(120)=acd43(22)*acd43(119)
      acd43(121)=acd43(55)*acd43(32)
      acd43(118)=acd43(121)+acd43(120)+acd43(98)+acd43(118)
      acd43(118)=acd43(10)*acd43(118)
      acd43(116)=acd43(7)*acd43(116)
      acd43(119)=-acd43(19)*acd43(119)
      acd43(120)=acd43(55)*acd43(30)
      acd43(116)=acd43(120)+acd43(119)+acd43(95)+acd43(116)
      acd43(116)=acd43(6)*acd43(116)
      acd43(103)=acd43(55)*acd43(103)
      acd43(119)=acd43(54)*acd43(17)
      acd43(119)=acd43(93)+acd43(119)
      acd43(119)=acd43(16)*acd43(119)
      acd43(120)=acd43(54)*acd43(21)
      acd43(120)=acd43(97)+acd43(120)
      acd43(120)=acd43(20)*acd43(120)
      acd43(121)=acd43(58)*acd43(41)
      acd43(121)=acd43(100)+acd43(121)
      acd43(121)=acd43(35)*acd43(121)
      acd43(122)=-acd43(58)*acd43(40)
      acd43(122)=acd43(99)+acd43(122)
      acd43(122)=acd43(33)*acd43(122)
      acd43(103)=acd43(110)+acd43(107)+acd43(106)+acd43(109)+acd43(117)+acd43(1&
      &15)+acd43(113)+acd43(112)+acd43(116)+acd43(118)+acd43(114)+acd43(103)+ac&
      &d43(122)+acd43(121)+acd43(108)+acd43(119)+acd43(120)
      acd43(103)=acd43(2)*acd43(103)
      acd43(104)=acd43(56)*acd43(104)
      acd43(106)=acd43(35)*acd43(78)
      acd43(107)=acd43(33)*acd43(77)
      acd43(108)=acd43(24)*acd43(67)
      acd43(109)=acd43(8)*acd43(76)
      acd43(110)=acd43(12)*acd43(57)
      acd43(112)=acd43(69)*acd43(111)
      acd43(113)=acd43(4)*acd43(74)
      acd43(114)=acd43(56)*acd43(23)
      acd43(114)=acd43(65)+acd43(114)
      acd43(114)=acd43(1)*acd43(114)
      acd43(104)=acd43(114)+acd43(104)+acd43(113)+acd43(112)+acd43(110)+acd43(1&
      &09)+acd43(108)+acd43(106)+acd43(107)
      acd43(104)=acd43(1)*acd43(104)
      acd43(106)=acd43(20)*acd43(86)
      acd43(107)=acd43(35)*acd43(88)
      acd43(108)=acd43(33)*acd43(87)
      acd43(109)=acd43(24)*acd43(79)
      acd43(110)=acd43(8)*acd43(85)
      acd43(112)=acd43(12)*acd43(59)
      acd43(113)=acd43(82)*acd43(111)
      acd43(106)=acd43(113)+acd43(112)+acd43(110)+acd43(109)+acd43(108)+acd43(1&
      &06)+acd43(107)
      acd43(106)=acd43(106)*acd43(111)
      acd43(101)=acd43(56)*acd43(101)
      acd43(107)=acd43(46)*acd43(92)
      acd43(108)=acd43(83)*acd43(111)
      acd43(107)=acd43(107)+acd43(108)
      acd43(107)=acd43(4)*acd43(107)
      acd43(101)=acd43(103)+acd43(104)+acd43(101)+acd43(106)+acd43(107)
      brack(ninjaidxt1mu0)=acd43(105)
      brack(ninjaidxt1mu2)=0.0_ki
      brack(ninjaidxt0mu0)=acd43(101)
      brack(ninjaidxt0mu2)=acd43(102)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p0_gg_hhg_d43h0_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd43h0
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
      if (deg.le.(1+(0))) return
      call cond_t(epspow.eq.t1,brack_32,vecA,vecB,vecC,param,coeffs)
   end subroutine numerator_t3
!---#] subroutine numerator_t3:
end module     p0_gg_hhg_d43h0l131
