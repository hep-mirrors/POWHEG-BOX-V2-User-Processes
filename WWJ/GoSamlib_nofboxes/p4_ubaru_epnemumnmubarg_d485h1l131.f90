module     p4_ubaru_epnemumnmubarg_d485h1l131
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p4_ubaru_epnemumnmubarg/helicity1d485h1l131.f90
   ! generator: buildfortran_tn3.py
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_util, only: cond_t, d => metric_tensor
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
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd485h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(6) :: acd485
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd485(1)=dotproduct(ninjaE3,spvak1k2)
      acd485(2)=dotproduct(ninjaE3,spvak2k7)
      acd485(3)=dotproduct(ninjaE3,spvak4k3)
      acd485(4)=dotproduct(ninjaE3,spvak5k6)
      acd485(5)=abb485(13)
      acd485(6)=-acd485(5)*acd485(4)*acd485(3)*acd485(2)*acd485(1)
      brack(ninjaidxt2mu0)=acd485(6)
   end subroutine brack_31
!---#] subroutine brack_31:
!---#[ subroutine brack_32:
   pure subroutine brack_32(ninjaA, ninjaE3, ninjaE4, ninjaP, brack)
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_color
      use p4_ubaru_epnemumnmubarg_abbrevd485h1
      implicit none
      complex(ki), dimension(4), intent(in) :: ninjaA, ninjaE3, ninjaE4
      complex(ki), intent(in) :: ninjaP
      complex(ki), dimension(127) :: acd485
      complex(ki), dimension (0:*), intent(inout) :: brack
      acd485(1)=dotproduct(k2,ninjaE3)
      acd485(2)=dotproduct(ninjaE3,spvak4k3)
      acd485(3)=abb485(52)
      acd485(4)=dotproduct(ninjaE3,spvak2k7)
      acd485(5)=dotproduct(ninjaE3,spvak5k6)
      acd485(6)=dotproduct(ninjaE4,spvak1k2)
      acd485(7)=abb485(13)
      acd485(8)=dotproduct(ninjaE3,spvak1k2)
      acd485(9)=dotproduct(ninjaE4,spvak5k6)
      acd485(10)=abb485(12)
      acd485(11)=dotproduct(ninjaE4,spvak4k3)
      acd485(12)=abb485(71)
      acd485(13)=dotproduct(ninjaE3,spvak1k6)
      acd485(14)=abb485(62)
      acd485(15)=dotproduct(ninjaE3,spvak4k2)
      acd485(16)=abb485(60)
      acd485(17)=dotproduct(ninjaE3,spvak5k2)
      acd485(18)=abb485(73)
      acd485(19)=dotproduct(ninjaE4,spvak2k7)
      acd485(20)=abb485(57)
      acd485(21)=abb485(22)
      acd485(22)=dotproduct(k1,ninjaE3)
      acd485(23)=abb485(17)
      acd485(24)=abb485(36)
      acd485(25)=dotproduct(k7,ninjaE3)
      acd485(26)=dotproduct(ninjaA,ninjaE3)
      acd485(27)=abb485(38)
      acd485(28)=abb485(68)
      acd485(29)=abb485(16)
      acd485(30)=abb485(58)
      acd485(31)=abb485(72)
      acd485(32)=abb485(55)
      acd485(33)=abb485(27)
      acd485(34)=dotproduct(k3,ninjaE3)
      acd485(35)=dotproduct(k4,ninjaE3)
      acd485(36)=abb485(56)
      acd485(37)=dotproduct(ninjaA,spvak2k7)
      acd485(38)=dotproduct(ninjaA,spvak4k3)
      acd485(39)=dotproduct(ninjaA,spvak5k6)
      acd485(40)=dotproduct(ninjaA,spvak1k2)
      acd485(41)=dotproduct(ninjaE3,spvak1k7)
      acd485(42)=abb485(59)
      acd485(43)=abb485(50)
      acd485(44)=abb485(14)
      acd485(45)=abb485(65)
      acd485(46)=abb485(66)
      acd485(47)=dotproduct(ninjaE3,spvak3k2)
      acd485(48)=dotproduct(ninjaE3,spvak7k2)
      acd485(49)=abb485(61)
      acd485(50)=abb485(69)
      acd485(51)=abb485(45)
      acd485(52)=dotproduct(ninjaE3,spvak1k3)
      acd485(53)=abb485(67)
      acd485(54)=dotproduct(k1,ninjaA)
      acd485(55)=dotproduct(k2,ninjaA)
      acd485(56)=abb485(28)
      acd485(57)=abb485(34)
      acd485(58)=abb485(9)
      acd485(59)=abb485(35)
      acd485(60)=dotproduct(k7,ninjaA)
      acd485(61)=abb485(32)
      acd485(62)=dotproduct(ninjaA,ninjaA)
      acd485(63)=abb485(29)
      acd485(64)=dotproduct(ninjaA,spvak1k6)
      acd485(65)=dotproduct(ninjaA,spvak4k2)
      acd485(66)=dotproduct(ninjaA,spvak5k2)
      acd485(67)=abb485(21)
      acd485(68)=abb485(47)
      acd485(69)=abb485(48)
      acd485(70)=abb485(37)
      acd485(71)=abb485(43)
      acd485(72)=dotproduct(k3,ninjaA)
      acd485(73)=abb485(23)
      acd485(74)=abb485(39)
      acd485(75)=abb485(64)
      acd485(76)=dotproduct(k4,ninjaA)
      acd485(77)=abb485(31)
      acd485(78)=abb485(53)
      acd485(79)=abb485(46)
      acd485(80)=abb485(19)
      acd485(81)=abb485(63)
      acd485(82)=abb485(18)
      acd485(83)=abb485(24)
      acd485(84)=abb485(26)
      acd485(85)=abb485(42)
      acd485(86)=dotproduct(ninjaA,spvak1k7)
      acd485(87)=dotproduct(ninjaA,spvak3k2)
      acd485(88)=dotproduct(ninjaA,spvak7k2)
      acd485(89)=dotproduct(ninjaA,spvak1k3)
      acd485(90)=abb485(7)
      acd485(91)=abb485(33)
      acd485(92)=abb485(41)
      acd485(93)=abb485(40)
      acd485(94)=abb485(25)
      acd485(95)=abb485(11)
      acd485(96)=abb485(54)
      acd485(97)=abb485(49)
      acd485(98)=acd485(17)*acd485(18)
      acd485(99)=acd485(13)*acd485(14)
      acd485(100)=acd485(15)*acd485(16)
      acd485(98)=acd485(100)+acd485(98)+acd485(99)
      acd485(99)=acd485(7)*acd485(5)*acd485(6)
      acd485(100)=acd485(7)*acd485(8)
      acd485(101)=-acd485(9)*acd485(100)
      acd485(101)=-acd485(99)+acd485(10)+acd485(101)
      acd485(101)=acd485(2)*acd485(101)
      acd485(102)=acd485(100)*acd485(11)
      acd485(102)=acd485(12)-acd485(102)
      acd485(102)=acd485(5)*acd485(102)
      acd485(101)=acd485(101)+acd485(102)+acd485(98)
      acd485(101)=acd485(4)*acd485(101)
      acd485(102)=-acd485(1)*acd485(3)
      acd485(103)=acd485(100)*acd485(19)
      acd485(103)=acd485(20)-acd485(103)
      acd485(103)=acd485(5)*acd485(103)
      acd485(102)=acd485(102)+acd485(103)
      acd485(102)=acd485(2)*acd485(102)
      acd485(103)=acd485(15)*acd485(21)
      acd485(104)=acd485(5)*acd485(103)
      acd485(101)=acd485(101)+acd485(104)+acd485(102)
      acd485(102)=acd485(25)+acd485(22)
      acd485(104)=acd485(24)*acd485(102)
      acd485(105)=acd485(41)*acd485(42)
      acd485(106)=acd485(16)*acd485(47)
      acd485(107)=acd485(3)*acd485(48)
      acd485(108)=acd485(17)*acd485(49)
      acd485(109)=acd485(13)*acd485(45)
      acd485(110)=acd485(100)*acd485(39)
      acd485(111)=acd485(8)*acd485(44)
      acd485(104)=-acd485(109)-acd485(108)-acd485(106)-acd485(105)-acd485(107)+&
      &acd485(110)-acd485(111)+acd485(104)
      acd485(105)=acd485(15)*acd485(46)
      acd485(105)=acd485(105)-acd485(104)
      acd485(106)=2.0_ki*acd485(26)
      acd485(107)=acd485(10)*acd485(106)
      acd485(108)=acd485(1)*acd485(27)
      acd485(109)=acd485(7)*acd485(40)
      acd485(109)=acd485(109)-acd485(43)
      acd485(110)=-acd485(5)*acd485(109)
      acd485(107)=acd485(110)+acd485(108)+acd485(107)+acd485(105)
      acd485(107)=acd485(2)*acd485(107)
      acd485(108)=acd485(17)*acd485(31)
      acd485(110)=acd485(13)*acd485(29)
      acd485(111)=acd485(15)*acd485(30)
      acd485(108)=-acd485(111)+acd485(108)-acd485(110)
      acd485(110)=acd485(34)+acd485(35)
      acd485(111)=-acd485(110)*acd485(108)
      acd485(112)=acd485(98)*acd485(106)
      acd485(113)=-acd485(1)*acd485(108)
      acd485(114)=acd485(8)*acd485(50)
      acd485(115)=acd485(53)*acd485(52)
      acd485(114)=acd485(114)+acd485(115)
      acd485(115)=acd485(15)*acd485(51)
      acd485(116)=acd485(100)*acd485(38)
      acd485(115)=-acd485(115)+acd485(116)-acd485(114)
      acd485(116)=acd485(12)*acd485(106)
      acd485(117)=acd485(1)*acd485(28)
      acd485(116)=acd485(117)+acd485(116)-acd485(115)
      acd485(116)=acd485(5)*acd485(116)
      acd485(107)=acd485(107)+acd485(116)+acd485(113)+acd485(112)-acd485(111)
      acd485(107)=acd485(4)*acd485(107)
      acd485(112)=acd485(25)*acd485(36)
      acd485(113)=-acd485(37)*acd485(100)
      acd485(116)=acd485(20)*acd485(106)
      acd485(117)=-acd485(1)*acd485(32)
      acd485(112)=acd485(117)+acd485(116)+acd485(112)+acd485(113)
      acd485(112)=acd485(5)*acd485(112)
      acd485(113)=acd485(25)*acd485(23)
      acd485(116)=acd485(22)*acd485(23)
      acd485(113)=acd485(113)-acd485(116)
      acd485(117)=-acd485(3)*acd485(106)
      acd485(117)=acd485(117)-acd485(113)
      acd485(117)=acd485(1)*acd485(117)
      acd485(112)=acd485(117)+acd485(112)
      acd485(112)=acd485(2)*acd485(112)
      acd485(103)=acd485(106)*acd485(103)
      acd485(117)=acd485(1)*acd485(15)*acd485(33)
      acd485(103)=acd485(103)+acd485(117)
      acd485(103)=acd485(5)*acd485(103)
      acd485(103)=acd485(107)+acd485(103)+acd485(112)
      acd485(107)=-acd485(39)*acd485(40)
      acd485(112)=-acd485(9)*acd485(8)*ninjaP
      acd485(107)=acd485(107)+acd485(112)
      acd485(107)=acd485(7)*acd485(107)
      acd485(112)=ninjaP+acd485(62)
      acd485(117)=acd485(10)*acd485(112)
      acd485(118)=acd485(42)*acd485(86)
      acd485(119)=acd485(66)*acd485(49)
      acd485(120)=acd485(64)*acd485(45)
      acd485(121)=acd485(40)*acd485(44)
      acd485(122)=acd485(65)*acd485(46)
      acd485(123)=-acd485(54)-acd485(60)
      acd485(123)=acd485(24)*acd485(123)
      acd485(124)=acd485(55)*acd485(27)
      acd485(125)=acd485(16)*acd485(87)
      acd485(126)=acd485(3)*acd485(88)
      acd485(127)=acd485(39)*acd485(43)
      acd485(99)=-ninjaP*acd485(99)
      acd485(99)=acd485(99)+acd485(107)+acd485(127)+acd485(126)+acd485(125)+acd&
      &485(124)+acd485(123)+acd485(122)+acd485(121)+acd485(120)+acd485(119)+acd&
      &485(91)+acd485(118)+acd485(117)
      acd485(99)=acd485(2)*acd485(99)
      acd485(104)=-acd485(38)*acd485(104)
      acd485(107)=acd485(12)*acd485(112)
      acd485(117)=acd485(53)*acd485(89)
      acd485(118)=acd485(40)*acd485(50)
      acd485(119)=acd485(65)*acd485(51)
      acd485(120)=acd485(55)*acd485(28)
      acd485(100)=acd485(100)*ninjaP
      acd485(121)=-acd485(11)*acd485(100)
      acd485(122)=-acd485(38)*acd485(109)
      acd485(107)=acd485(122)+acd485(121)+acd485(120)+acd485(119)+acd485(118)+a&
      &cd485(92)+acd485(117)+acd485(107)
      acd485(107)=acd485(5)*acd485(107)
      acd485(117)=acd485(18)*acd485(66)
      acd485(118)=acd485(14)*acd485(64)
      acd485(119)=acd485(16)*acd485(65)
      acd485(120)=acd485(39)*acd485(12)
      acd485(121)=acd485(38)*acd485(10)
      acd485(117)=acd485(121)+acd485(120)+acd485(119)+acd485(118)+acd485(81)+ac&
      &d485(117)
      acd485(117)=acd485(117)*acd485(106)
      acd485(118)=acd485(16)*acd485(112)
      acd485(119)=-acd485(76)+acd485(55)-acd485(72)
      acd485(120)=acd485(30)*acd485(119)
      acd485(121)=acd485(39)*acd485(51)
      acd485(122)=acd485(38)*acd485(46)
      acd485(118)=acd485(122)+acd485(121)+acd485(120)+acd485(93)+acd485(118)
      acd485(118)=acd485(15)*acd485(118)
      acd485(120)=acd485(31)*acd485(66)
      acd485(121)=acd485(30)*acd485(65)
      acd485(122)=acd485(29)*acd485(64)
      acd485(120)=-acd485(122)+acd485(120)-acd485(121)
      acd485(121)=acd485(120)-acd485(75)
      acd485(121)=acd485(121)*acd485(110)
      acd485(122)=acd485(39)*acd485(28)
      acd485(123)=acd485(38)*acd485(27)
      acd485(120)=acd485(123)+acd485(122)+acd485(67)-acd485(120)
      acd485(120)=acd485(1)*acd485(120)
      acd485(114)=acd485(39)*acd485(114)
      acd485(122)=acd485(18)*acd485(112)
      acd485(123)=-acd485(31)*acd485(119)
      acd485(122)=acd485(123)+acd485(122)
      acd485(122)=acd485(17)*acd485(122)
      acd485(123)=acd485(14)*acd485(112)
      acd485(119)=acd485(29)*acd485(119)
      acd485(119)=acd485(119)+acd485(123)
      acd485(119)=acd485(13)*acd485(119)
      acd485(102)=acd485(58)*acd485(102)
      acd485(123)=acd485(47)*acd485(94)
      acd485(124)=acd485(41)*acd485(90)
      acd485(99)=acd485(99)+acd485(107)+acd485(120)+acd485(117)+acd485(118)+acd&
      &485(104)+acd485(119)+acd485(122)+acd485(123)+acd485(124)+acd485(102)+acd&
      &485(121)+acd485(114)
      acd485(99)=acd485(4)*acd485(99)
      acd485(102)=-acd485(37)*acd485(108)
      acd485(104)=-acd485(38)*acd485(113)
      acd485(107)=-acd485(38)*acd485(3)
      acd485(107)=acd485(63)+acd485(107)
      acd485(107)=acd485(107)*acd485(106)
      acd485(108)=acd485(48)*acd485(71)
      acd485(113)=acd485(1)-acd485(110)
      acd485(113)=acd485(59)*acd485(113)
      acd485(114)=acd485(22)*acd485(56)
      acd485(117)=acd485(25)*acd485(61)
      acd485(118)=acd485(39)*acd485(33)
      acd485(118)=acd485(70)+acd485(118)
      acd485(118)=acd485(15)*acd485(118)
      acd485(102)=acd485(107)+acd485(102)+acd485(118)+acd485(104)+acd485(117)-a&
      &cd485(108)+acd485(114)+acd485(113)
      acd485(102)=acd485(1)*acd485(102)
      acd485(104)=acd485(37)*acd485(105)
      acd485(105)=acd485(20)*acd485(112)
      acd485(107)=acd485(36)*acd485(60)
      acd485(113)=-acd485(55)*acd485(32)
      acd485(100)=-acd485(19)*acd485(100)
      acd485(109)=-acd485(37)*acd485(109)
      acd485(100)=acd485(109)+acd485(100)+acd485(113)+acd485(95)+acd485(107)+ac&
      &d485(105)
      acd485(100)=acd485(5)*acd485(100)
      acd485(105)=-acd485(3)*acd485(112)
      acd485(107)=acd485(54)-acd485(60)
      acd485(107)=acd485(23)*acd485(107)
      acd485(109)=-acd485(39)*acd485(32)
      acd485(113)=acd485(37)*acd485(27)
      acd485(105)=acd485(113)+acd485(109)+acd485(68)+acd485(107)+acd485(105)
      acd485(105)=acd485(1)*acd485(105)
      acd485(107)=-acd485(3)*acd485(55)
      acd485(109)=acd485(39)*acd485(20)
      acd485(113)=acd485(37)*acd485(10)
      acd485(107)=acd485(113)+acd485(109)+acd485(82)+acd485(107)
      acd485(107)=acd485(107)*acd485(106)
      acd485(109)=-acd485(55)*acd485(23)
      acd485(113)=acd485(39)*acd485(36)
      acd485(109)=acd485(113)+acd485(78)+acd485(109)
      acd485(109)=acd485(25)*acd485(109)
      acd485(113)=acd485(48)*acd485(96)
      acd485(114)=acd485(55)*acd485(116)
      acd485(100)=acd485(100)+acd485(105)+acd485(107)+acd485(104)+acd485(109)+a&
      &cd485(113)+acd485(114)
      acd485(100)=acd485(2)*acd485(100)
      acd485(98)=acd485(37)*acd485(98)
      acd485(104)=acd485(74)*acd485(110)
      acd485(105)=acd485(48)*acd485(85)
      acd485(107)=acd485(22)*acd485(57)
      acd485(109)=acd485(25)*acd485(77)
      acd485(113)=acd485(39)*acd485(21)
      acd485(113)=acd485(84)+acd485(113)
      acd485(113)=acd485(15)*acd485(113)
      acd485(114)=acd485(80)*acd485(106)
      acd485(98)=acd485(114)+acd485(98)+acd485(113)+acd485(109)+acd485(105)+acd&
      &485(107)+acd485(104)
      acd485(98)=acd485(98)*acd485(106)
      acd485(104)=-acd485(37)*acd485(115)
      acd485(105)=acd485(65)*acd485(21)
      acd485(107)=acd485(38)*acd485(20)
      acd485(109)=acd485(37)*acd485(12)
      acd485(105)=acd485(109)+acd485(107)+acd485(83)+acd485(105)
      acd485(105)=acd485(105)*acd485(106)
      acd485(106)=acd485(65)*acd485(33)
      acd485(107)=-acd485(38)*acd485(32)
      acd485(109)=acd485(37)*acd485(28)
      acd485(106)=acd485(109)+acd485(107)+acd485(69)+acd485(106)
      acd485(106)=acd485(1)*acd485(106)
      acd485(107)=acd485(21)*acd485(112)
      acd485(109)=acd485(55)*acd485(33)
      acd485(107)=acd485(109)+acd485(107)
      acd485(107)=acd485(15)*acd485(107)
      acd485(109)=acd485(38)*acd485(36)
      acd485(109)=acd485(109)+acd485(79)
      acd485(109)=acd485(25)*acd485(109)
      acd485(112)=acd485(48)*acd485(97)
      acd485(104)=acd485(106)+acd485(105)+acd485(104)+acd485(107)+acd485(112)+a&
      &cd485(109)
      acd485(104)=acd485(5)*acd485(104)
      acd485(105)=-acd485(37)*acd485(111)
      acd485(106)=acd485(25)*acd485(73)
      acd485(106)=acd485(106)+acd485(108)
      acd485(106)=acd485(110)*acd485(106)
      acd485(98)=acd485(99)+acd485(100)+acd485(104)+acd485(102)+acd485(98)+acd4&
      &85(105)+acd485(106)
      brack(ninjaidxt1mu0)=acd485(103)
      brack(ninjaidxt0mu0)=acd485(98)
      brack(ninjaidxt0mu2)=acd485(101)
   end subroutine brack_32
!---#] subroutine brack_32:
!---#[ subroutine numerator_t3:
   subroutine numerator_t3(ncut, a, b, c, param, deg, coeffs) &
   & bind(c, name="p4_ubaru_epnemumnmubarg_d485h1_ninja_t3")
      use iso_c_binding, only: c_int
      use ninjago_module, only: ki => ki_nin
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_abbrevd485h1
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
end module     p4_ubaru_epnemumnmubarg_d485h1l131
