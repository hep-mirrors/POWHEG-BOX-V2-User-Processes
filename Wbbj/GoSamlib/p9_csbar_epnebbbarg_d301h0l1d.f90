module     p9_csbar_epnebbbarg_d301h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity0d301h0l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d301
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd301h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd301
      complex(ki) :: brack
      acd301(1)=abb301(21)
      brack=acd301(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd301h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd301
      complex(ki) :: brack
      acd301(1)=k1(iv1)
      acd301(2)=abb301(48)
      acd301(3)=k2(iv1)
      acd301(4)=abb301(40)
      acd301(5)=k3(iv1)
      acd301(6)=k4(iv1)
      acd301(7)=k7(iv1)
      acd301(8)=abb301(34)
      acd301(9)=e7(iv1)
      acd301(10)=abb301(35)
      acd301(11)=spvak4k1(iv1)
      acd301(12)=abb301(8)
      acd301(13)=spvak4k3(iv1)
      acd301(14)=abb301(23)
      acd301(15)=spval5k2(iv1)
      acd301(16)=abb301(18)
      acd301(17)=spval6k2(iv1)
      acd301(18)=abb301(36)
      acd301(19)=spval6l5(iv1)
      acd301(20)=abb301(61)
      acd301(21)=spvak7k2(iv1)
      acd301(22)=abb301(20)
      acd301(23)=spval6e7(iv1)
      acd301(24)=abb301(27)
      acd301(25)=-acd301(6)-acd301(5)+acd301(1)
      acd301(25)=acd301(2)*acd301(25)
      acd301(26)=acd301(4)*acd301(3)
      acd301(27)=acd301(8)*acd301(7)
      acd301(28)=acd301(10)*acd301(9)
      acd301(29)=acd301(12)*acd301(11)
      acd301(30)=acd301(14)*acd301(13)
      acd301(31)=acd301(16)*acd301(15)
      acd301(32)=acd301(18)*acd301(17)
      acd301(33)=acd301(20)*acd301(19)
      acd301(34)=acd301(22)*acd301(21)
      acd301(35)=acd301(24)*acd301(23)
      brack=acd301(25)+acd301(26)+acd301(27)+acd301(28)+acd301(29)+acd301(30)+a&
      &cd301(31)+acd301(32)+acd301(33)+acd301(34)+acd301(35)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd301h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(95) :: acd301
      complex(ki) :: brack
      acd301(1)=d(iv1,iv2)
      acd301(2)=abb301(15)
      acd301(3)=k1(iv1)
      acd301(4)=e7(iv2)
      acd301(5)=abb301(49)
      acd301(6)=spvak4k2(iv2)
      acd301(7)=abb301(52)
      acd301(8)=spvak4k7(iv2)
      acd301(9)=abb301(38)
      acd301(10)=spval6k7(iv2)
      acd301(11)=abb301(68)
      acd301(12)=k1(iv2)
      acd301(13)=e7(iv1)
      acd301(14)=spvak4k2(iv1)
      acd301(15)=spvak4k7(iv1)
      acd301(16)=spval6k7(iv1)
      acd301(17)=k2(iv1)
      acd301(18)=abb301(7)
      acd301(19)=spvae7k1(iv2)
      acd301(20)=abb301(67)
      acd301(21)=spvae7k2(iv2)
      acd301(22)=abb301(65)
      acd301(23)=spvae7k3(iv2)
      acd301(24)=abb301(30)
      acd301(25)=k2(iv2)
      acd301(26)=spvae7k1(iv1)
      acd301(27)=spvae7k2(iv1)
      acd301(28)=spvae7k3(iv1)
      acd301(29)=k3(iv1)
      acd301(30)=k3(iv2)
      acd301(31)=k4(iv1)
      acd301(32)=k4(iv2)
      acd301(33)=k7(iv1)
      acd301(34)=k7(iv2)
      acd301(35)=spvak4k1(iv2)
      acd301(36)=abb301(10)
      acd301(37)=spvak4k3(iv2)
      acd301(38)=abb301(26)
      acd301(39)=spval5k2(iv2)
      acd301(40)=abb301(31)
      acd301(41)=spval6k1(iv2)
      acd301(42)=abb301(33)
      acd301(43)=spval6k3(iv2)
      acd301(44)=abb301(46)
      acd301(45)=spval6l5(iv2)
      acd301(46)=abb301(16)
      acd301(47)=spvak7k1(iv2)
      acd301(48)=abb301(64)
      acd301(49)=spvak7k2(iv2)
      acd301(50)=abb301(69)
      acd301(51)=spvak7k3(iv2)
      acd301(52)=abb301(45)
      acd301(53)=spvak4k1(iv1)
      acd301(54)=spvak4k3(iv1)
      acd301(55)=spval5k2(iv1)
      acd301(56)=spval6k1(iv1)
      acd301(57)=spval6k3(iv1)
      acd301(58)=spval6l5(iv1)
      acd301(59)=spvak7k1(iv1)
      acd301(60)=spvak7k2(iv1)
      acd301(61)=spvak7k3(iv1)
      acd301(62)=abb301(19)
      acd301(63)=abb301(24)
      acd301(64)=abb301(25)
      acd301(65)=abb301(51)
      acd301(66)=abb301(13)
      acd301(67)=abb301(44)
      acd301(68)=spvak1k2(iv2)
      acd301(69)=abb301(29)
      acd301(70)=spvak1k7(iv2)
      acd301(71)=abb301(11)
      acd301(72)=spvak1k2(iv1)
      acd301(73)=spvak1k7(iv1)
      acd301(74)=spvak3k2(iv2)
      acd301(75)=spvak3k7(iv2)
      acd301(76)=spvak3k2(iv1)
      acd301(77)=spvak3k7(iv1)
      acd301(78)=acd301(55)*acd301(40)
      acd301(79)=acd301(56)*acd301(42)
      acd301(80)=acd301(57)*acd301(44)
      acd301(81)=acd301(58)*acd301(46)
      acd301(82)=acd301(59)*acd301(48)
      acd301(83)=acd301(60)*acd301(50)
      acd301(84)=acd301(61)*acd301(52)
      acd301(78)=acd301(84)+acd301(83)+acd301(82)+acd301(81)+acd301(80)+acd301(&
      &79)+acd301(78)
      acd301(78)=acd301(4)*acd301(78)
      acd301(79)=acd301(39)*acd301(40)
      acd301(80)=acd301(41)*acd301(42)
      acd301(81)=acd301(43)*acd301(44)
      acd301(82)=acd301(45)*acd301(46)
      acd301(83)=acd301(47)*acd301(48)
      acd301(84)=acd301(49)*acd301(50)
      acd301(85)=acd301(51)*acd301(52)
      acd301(79)=acd301(85)+acd301(84)+acd301(83)+acd301(82)+acd301(81)+acd301(&
      &80)+acd301(79)
      acd301(79)=acd301(13)*acd301(79)
      acd301(80)=acd301(5)*acd301(13)
      acd301(81)=acd301(14)*acd301(7)
      acd301(82)=acd301(15)*acd301(9)
      acd301(83)=acd301(16)*acd301(11)
      acd301(80)=-acd301(83)-acd301(82)+acd301(80)-acd301(81)
      acd301(81)=-acd301(32)-acd301(30)+acd301(12)
      acd301(80)=acd301(80)*acd301(81)
      acd301(81)=acd301(5)*acd301(4)
      acd301(82)=acd301(6)*acd301(7)
      acd301(83)=acd301(8)*acd301(9)
      acd301(84)=acd301(10)*acd301(11)
      acd301(81)=-acd301(81)+acd301(82)+acd301(83)+acd301(84)
      acd301(82)=acd301(31)+acd301(29)-acd301(3)
      acd301(81)=acd301(81)*acd301(82)
      acd301(82)=acd301(68)*acd301(53)
      acd301(83)=acd301(72)*acd301(35)
      acd301(84)=-acd301(74)*acd301(54)
      acd301(85)=-acd301(76)*acd301(37)
      acd301(82)=acd301(85)+acd301(84)+acd301(83)+acd301(82)
      acd301(82)=acd301(69)*acd301(82)
      acd301(83)=acd301(70)*acd301(53)
      acd301(84)=acd301(73)*acd301(35)
      acd301(85)=-acd301(75)*acd301(54)
      acd301(86)=-acd301(77)*acd301(37)
      acd301(83)=acd301(86)+acd301(85)+acd301(84)+acd301(83)
      acd301(83)=acd301(71)*acd301(83)
      acd301(84)=-acd301(26)*acd301(20)
      acd301(85)=acd301(27)*acd301(22)
      acd301(86)=acd301(28)*acd301(24)
      acd301(84)=acd301(86)+acd301(85)+acd301(84)
      acd301(85)=acd301(34)-acd301(25)
      acd301(84)=acd301(85)*acd301(84)
      acd301(85)=-acd301(19)*acd301(20)
      acd301(86)=acd301(21)*acd301(22)
      acd301(87)=acd301(23)*acd301(24)
      acd301(85)=acd301(87)+acd301(86)+acd301(85)
      acd301(86)=acd301(33)-acd301(17)
      acd301(85)=acd301(86)*acd301(85)
      acd301(86)=acd301(17)*acd301(4)
      acd301(87)=acd301(25)*acd301(13)
      acd301(86)=acd301(86)+acd301(87)
      acd301(86)=acd301(18)*acd301(86)
      acd301(87)=acd301(35)*acd301(13)
      acd301(88)=acd301(53)*acd301(4)
      acd301(87)=acd301(87)+acd301(88)
      acd301(87)=acd301(36)*acd301(87)
      acd301(88)=acd301(37)*acd301(13)
      acd301(89)=acd301(54)*acd301(4)
      acd301(88)=acd301(88)+acd301(89)
      acd301(88)=acd301(38)*acd301(88)
      acd301(89)=acd301(6)*acd301(53)
      acd301(90)=acd301(14)*acd301(35)
      acd301(89)=acd301(89)+acd301(90)
      acd301(89)=acd301(62)*acd301(89)
      acd301(90)=acd301(6)*acd301(54)
      acd301(91)=acd301(14)*acd301(37)
      acd301(90)=acd301(90)+acd301(91)
      acd301(90)=acd301(63)*acd301(90)
      acd301(91)=acd301(8)*acd301(53)
      acd301(92)=acd301(15)*acd301(35)
      acd301(91)=acd301(91)+acd301(92)
      acd301(91)=acd301(64)*acd301(91)
      acd301(92)=acd301(8)*acd301(54)
      acd301(93)=acd301(15)*acd301(37)
      acd301(92)=acd301(92)+acd301(93)
      acd301(92)=acd301(65)*acd301(92)
      acd301(93)=acd301(10)*acd301(53)
      acd301(94)=acd301(16)*acd301(35)
      acd301(93)=acd301(93)+acd301(94)
      acd301(93)=acd301(66)*acd301(93)
      acd301(94)=acd301(10)*acd301(54)
      acd301(95)=acd301(16)*acd301(37)
      acd301(94)=acd301(94)+acd301(95)
      acd301(94)=acd301(67)*acd301(94)
      acd301(95)=acd301(2)*acd301(1)
      brack=acd301(78)+acd301(79)+acd301(80)+acd301(81)+acd301(82)+acd301(83)+a&
      &cd301(84)+acd301(85)+acd301(86)+acd301(87)+acd301(88)+acd301(89)+acd301(&
      &90)+acd301(91)+acd301(92)+acd301(93)+acd301(94)+2.0_ki*acd301(95)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd301h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd301
      complex(ki) :: brack
      acd301(1)=d(iv1,iv2)
      acd301(2)=e7(iv3)
      acd301(3)=abb301(60)
      acd301(4)=spvae7k1(iv3)
      acd301(5)=abb301(12)
      acd301(6)=spvae7k2(iv3)
      acd301(7)=abb301(66)
      acd301(8)=spvae7k3(iv3)
      acd301(9)=abb301(28)
      acd301(10)=d(iv1,iv3)
      acd301(11)=e7(iv2)
      acd301(12)=spvae7k1(iv2)
      acd301(13)=spvae7k2(iv2)
      acd301(14)=spvae7k3(iv2)
      acd301(15)=d(iv2,iv3)
      acd301(16)=e7(iv1)
      acd301(17)=spvae7k1(iv1)
      acd301(18)=spvae7k2(iv1)
      acd301(19)=spvae7k3(iv1)
      acd301(20)=k1(iv1)
      acd301(21)=spvak4k2(iv3)
      acd301(22)=abb301(42)
      acd301(23)=spval6k2(iv3)
      acd301(24)=abb301(70)
      acd301(25)=spvak4k2(iv2)
      acd301(26)=spval6k2(iv2)
      acd301(27)=k1(iv2)
      acd301(28)=spvak4k2(iv1)
      acd301(29)=spval6k2(iv1)
      acd301(30)=k1(iv3)
      acd301(31)=k3(iv1)
      acd301(32)=k3(iv2)
      acd301(33)=k3(iv3)
      acd301(34)=k4(iv1)
      acd301(35)=k4(iv2)
      acd301(36)=k4(iv3)
      acd301(37)=spvak4k1(iv3)
      acd301(38)=abb301(9)
      acd301(39)=spvak4k3(iv3)
      acd301(40)=abb301(17)
      acd301(41)=spvak4k1(iv2)
      acd301(42)=spvak4k3(iv2)
      acd301(43)=abb301(22)
      acd301(44)=abb301(50)
      acd301(45)=spvak1k2(iv2)
      acd301(46)=abb301(14)
      acd301(47)=spvak1k2(iv3)
      acd301(48)=spvak3k2(iv2)
      acd301(49)=spvak3k2(iv3)
      acd301(50)=spvak4k1(iv1)
      acd301(51)=spvak4k3(iv1)
      acd301(52)=spvak1k2(iv1)
      acd301(53)=spvak3k2(iv1)
      acd301(54)=acd301(42)*acd301(49)
      acd301(55)=-acd301(41)*acd301(47)
      acd301(56)=acd301(39)*acd301(48)
      acd301(57)=-acd301(37)*acd301(45)
      acd301(54)=acd301(57)+acd301(56)+acd301(54)+acd301(55)
      acd301(54)=acd301(46)*acd301(54)
      acd301(55)=acd301(39)*acd301(44)
      acd301(56)=acd301(37)*acd301(43)
      acd301(55)=acd301(55)+acd301(56)
      acd301(56)=acd301(26)*acd301(55)
      acd301(57)=acd301(39)*acd301(40)
      acd301(58)=acd301(37)*acd301(38)
      acd301(57)=acd301(57)+acd301(58)
      acd301(58)=acd301(25)*acd301(57)
      acd301(59)=acd301(42)*acd301(44)
      acd301(60)=acd301(41)*acd301(43)
      acd301(59)=acd301(59)+acd301(60)
      acd301(60)=acd301(23)*acd301(59)
      acd301(61)=acd301(40)*acd301(42)
      acd301(62)=acd301(38)*acd301(41)
      acd301(61)=acd301(61)+acd301(62)
      acd301(62)=acd301(21)*acd301(61)
      acd301(63)=-acd301(36)+acd301(30)-acd301(33)
      acd301(64)=-acd301(26)*acd301(63)
      acd301(65)=-acd301(35)+acd301(27)-acd301(32)
      acd301(66)=-acd301(23)*acd301(65)
      acd301(64)=acd301(64)+acd301(66)
      acd301(64)=acd301(24)*acd301(64)
      acd301(66)=acd301(25)*acd301(63)
      acd301(67)=acd301(21)*acd301(65)
      acd301(66)=acd301(66)+acd301(67)
      acd301(66)=acd301(22)*acd301(66)
      acd301(67)=2.0_ki*acd301(3)
      acd301(68)=acd301(15)*acd301(67)
      acd301(54)=acd301(66)+acd301(64)+acd301(54)+acd301(62)+acd301(60)+acd301(&
      &58)+acd301(68)+acd301(56)
      acd301(54)=acd301(16)*acd301(54)
      acd301(56)=acd301(51)*acd301(49)
      acd301(58)=-acd301(50)*acd301(47)
      acd301(60)=acd301(39)*acd301(53)
      acd301(62)=-acd301(37)*acd301(52)
      acd301(56)=acd301(62)+acd301(60)+acd301(56)+acd301(58)
      acd301(56)=acd301(46)*acd301(56)
      acd301(55)=acd301(29)*acd301(55)
      acd301(57)=acd301(28)*acd301(57)
      acd301(58)=acd301(44)*acd301(51)
      acd301(60)=acd301(43)*acd301(50)
      acd301(58)=acd301(58)+acd301(60)
      acd301(60)=acd301(23)*acd301(58)
      acd301(62)=acd301(40)*acd301(51)
      acd301(64)=acd301(38)*acd301(50)
      acd301(62)=acd301(62)+acd301(64)
      acd301(64)=acd301(21)*acd301(62)
      acd301(66)=-acd301(29)*acd301(63)
      acd301(68)=-acd301(34)+acd301(20)-acd301(31)
      acd301(69)=-acd301(23)*acd301(68)
      acd301(66)=acd301(66)+acd301(69)
      acd301(66)=acd301(24)*acd301(66)
      acd301(63)=acd301(28)*acd301(63)
      acd301(69)=acd301(21)*acd301(68)
      acd301(63)=acd301(63)+acd301(69)
      acd301(63)=acd301(22)*acd301(63)
      acd301(69)=acd301(10)*acd301(67)
      acd301(55)=acd301(63)+acd301(66)+acd301(56)+acd301(64)+acd301(60)+acd301(&
      &57)+acd301(69)+acd301(55)
      acd301(55)=acd301(11)*acd301(55)
      acd301(56)=acd301(51)*acd301(48)
      acd301(57)=-acd301(50)*acd301(45)
      acd301(60)=acd301(42)*acd301(53)
      acd301(63)=-acd301(41)*acd301(52)
      acd301(56)=acd301(63)+acd301(60)+acd301(56)+acd301(57)
      acd301(56)=acd301(46)*acd301(56)
      acd301(57)=acd301(29)*acd301(59)
      acd301(59)=acd301(28)*acd301(61)
      acd301(58)=acd301(26)*acd301(58)
      acd301(60)=acd301(25)*acd301(62)
      acd301(61)=-acd301(29)*acd301(65)
      acd301(62)=-acd301(26)*acd301(68)
      acd301(61)=acd301(61)+acd301(62)
      acd301(61)=acd301(24)*acd301(61)
      acd301(62)=acd301(28)*acd301(65)
      acd301(63)=acd301(25)*acd301(68)
      acd301(62)=acd301(62)+acd301(63)
      acd301(62)=acd301(22)*acd301(62)
      acd301(63)=acd301(1)*acd301(67)
      acd301(56)=acd301(62)+acd301(61)+acd301(56)+acd301(60)+acd301(58)+acd301(&
      &59)+acd301(63)+acd301(57)
      acd301(56)=acd301(2)*acd301(56)
      acd301(57)=acd301(9)*acd301(19)
      acd301(58)=acd301(7)*acd301(18)
      acd301(59)=acd301(5)*acd301(17)
      acd301(57)=acd301(59)+acd301(57)+acd301(58)
      acd301(57)=acd301(15)*acd301(57)
      acd301(58)=acd301(9)*acd301(14)
      acd301(59)=acd301(7)*acd301(13)
      acd301(60)=acd301(5)*acd301(12)
      acd301(58)=acd301(60)+acd301(58)+acd301(59)
      acd301(58)=acd301(10)*acd301(58)
      acd301(59)=acd301(9)*acd301(8)
      acd301(60)=acd301(7)*acd301(6)
      acd301(61)=acd301(5)*acd301(4)
      acd301(59)=acd301(61)+acd301(59)+acd301(60)
      acd301(59)=acd301(1)*acd301(59)
      acd301(57)=acd301(59)+acd301(57)+acd301(58)
      brack=acd301(54)+acd301(55)+acd301(56)+2.0_ki*acd301(57)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd301h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = 0
      numerator = 0.0_ki
      deg = 0
      if(present(i1)) then
          iv1=i1
          deg=1
      else
          iv1=1
      end if
      if(present(i2)) then
          iv2=i2
          deg=2
      else
          iv2=1
      end if
      if(present(i3)) then
          iv3=i3
          deg=3
      else
          iv3=1
      end if
      t1 = 0
      if(deg.eq.0) then
         numerator = cond(epspow.eq.t1,brack_1,Q,mu2)
         return
      end if
      if(deg.eq.1) then
         numerator = cond(epspow.eq.t1,brack_2,Q,mu2)
         return
      end if
      if(deg.eq.2) then
         numerator = cond(epspow.eq.t1,brack_3,Q,mu2)
         return
      end if
      if(deg.eq.3) then
         numerator = cond(epspow.eq.t1,brack_4,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d301:
   subroutine     reconstruct_d301(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group11
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group11), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_301:
      coeffs%coeffs_301%c0 = derivative(czip)
      coeffs%coeffs_301%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_301%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_301%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_301%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_301%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_301%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_301%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_301%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_301%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_301%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_301%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_301%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_301%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_301%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_301%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_301%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_301%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_301%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_301%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_301%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_301%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_301%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_301%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_301%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_301%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_301%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_301%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_301%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_301%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_301%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_301%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_301%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_301%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_301%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_301:
   end subroutine reconstruct_d301
!---#] subroutine reconstruct_d301:
end module     p9_csbar_epnebbbarg_d301h0l1d
