module     p8_cbarc_epnemumnmubarg_abbrevd41h2
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh2
   implicit none
   private
   complex(ki), dimension(103), public :: abb41
   complex(ki), public :: R2d41
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p8_cbarc_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_color, only: TR
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb41(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb41(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb41(3)=sqrt2**(-1)
      abb41(4)=es12**(-1)
      abb41(5)=spak2k7**(-1)
      abb41(6)=spbk7k6*spbk3k1
      abb41(7)=spbk7k3*spbk6k1
      abb41(8)=abb41(6)+abb41(7)
      abb41(9)=abb41(5)*spak2k5
      abb41(10)=Nfrat*gW**4*c1*TR*i_*abb41(1)*abb41(2)*abb41(3)*abb41(4)
      abb41(11)=abb41(9)*abb41(10)
      abb41(12)=abb41(11)*spak2k4
      abb41(13)=abb41(8)*abb41(12)
      abb41(14)=8.0_ki*abb41(13)
      abb41(15)=spbk7k6*spbk7k3
      abb41(16)=spbk3k1*spak3k4
      abb41(17)=abb41(15)*abb41(16)
      abb41(18)=-spak2k5*abb41(17)
      abb41(19)=spbk6k5*spak2k5**2
      abb41(20)=abb41(16)*spbk7k3
      abb41(21)=abb41(19)*abb41(20)
      abb41(22)=abb41(5)*abb41(21)
      abb41(18)=abb41(18)-15.0_ki*abb41(22)
      abb41(22)=2.0_ki*abb41(10)
      abb41(18)=abb41(18)*abb41(22)
      abb41(23)=abb41(20)*spak2k5
      abb41(24)=abb41(10)*spbk7k6
      abb41(25)=abb41(23)*abb41(24)
      abb41(26)=-32.0_ki*abb41(25)
      abb41(25)=-14.0_ki*abb41(25)
      abb41(27)=spbk6k1*spak5k6
      abb41(28)=spbk7k1*spak5k7
      abb41(29)=abb41(27)+abb41(28)
      abb41(30)=abb41(24)*spbk7k3
      abb41(31)=abb41(30)*spak2k4
      abb41(32)=abb41(29)*abb41(31)
      abb41(32)=32.0_ki*abb41(32)
      abb41(33)=spbk7k1*spbk6k3
      abb41(34)=abb41(33)+abb41(6)
      abb41(34)=8.0_ki*abb41(34)
      abb41(35)=abb41(34)+7.0_ki*abb41(7)
      abb41(36)=4.0_ki*abb41(12)
      abb41(35)=abb41(35)*abb41(36)
      abb41(37)=abb41(29)*spbk4k3
      abb41(38)=spak2k4**2
      abb41(39)=-spbk7k6*abb41(37)*abb41(38)
      abb41(21)=-abb41(21)+abb41(39)
      abb41(21)=abb41(5)*abb41(21)
      abb41(39)=abb41(15)*spak2k4
      abb41(40)=abb41(29)*abb41(39)
      abb41(21)=abb41(40)+abb41(21)
      abb41(40)=16.0_ki*abb41(10)
      abb41(21)=abb41(21)*abb41(40)
      abb41(41)=-32.0_ki*abb41(13)
      abb41(12)=16.0_ki*abb41(12)
      abb41(8)=abb41(33)-abb41(8)
      abb41(8)=abb41(8)*abb41(12)
      abb41(42)=abb41(33)-abb41(7)
      abb41(12)=abb41(42)*abb41(12)
      abb41(42)=abb41(22)*abb41(9)
      abb41(43)=abb41(42)*spak2k4
      abb41(34)=9.0_ki*abb41(7)+abb41(34)
      abb41(34)=abb41(34)*abb41(43)
      abb41(33)=abb41(33)+abb41(7)
      abb41(33)=8.0_ki*abb41(33)+9.0_ki*abb41(6)
      abb41(33)=abb41(33)*abb41(43)
      abb41(13)=-16.0_ki*abb41(13)
      abb41(43)=abb41(15)*abb41(43)
      abb41(44)=spak2k7*abb41(17)
      abb41(45)=spak2k5*spbk6k5
      abb41(46)=abb41(20)*abb41(45)
      abb41(44)=abb41(44)+8.0_ki*abb41(46)
      abb41(44)=abb41(44)*abb41(10)
      abb41(46)=abb41(7)*abb41(10)*spak2k4
      abb41(46)=16.0_ki*abb41(46)
      abb41(47)=8.0_ki*abb41(7)-abb41(6)
      abb41(47)=spak2k4*abb41(47)
      abb41(48)=abb41(45)*spbk3k1
      abb41(49)=spak2k4*spbk4k3
      abb41(50)=-spbk6k1*abb41(49)
      abb41(50)=abb41(48)+abb41(50)
      abb41(51)=abb41(5)*spak2k4
      abb41(50)=abb41(50)*abb41(51)
      abb41(47)=abb41(47)+9.0_ki*abb41(50)
      abb41(47)=abb41(47)*abb41(10)
      abb41(50)=16.0_ki*spak2k6
      abb41(52)=abb41(17)*abb41(50)
      abb41(53)=spbk7k5*abb41(23)
      abb41(52)=abb41(52)+7.0_ki*abb41(53)
      abb41(52)=abb41(52)*abb41(10)
      abb41(53)=spak2k4*spbk7k1
      abb41(54)=abb41(10)*spbk7k3
      abb41(55)=abb41(53)*abb41(54)
      abb41(55)=14.0_ki*abb41(55)
      abb41(56)=spak2k6*abb41(6)
      abb41(57)=spak2k5*spbk3k1
      abb41(58)=spbk7k5*abb41(57)
      abb41(49)=-spbk7k1*abb41(49)
      abb41(49)=abb41(49)+2.0_ki*abb41(56)+abb41(58)
      abb41(49)=abb41(49)*abb41(51)
      abb41(56)=spbk7k3*abb41(53)
      abb41(49)=abb41(56)+abb41(49)
      abb41(56)=8.0_ki*abb41(10)
      abb41(49)=abb41(49)*abb41(56)
      abb41(58)=spbk7k6*spbk4k3
      abb41(59)=abb41(10)*abb41(5)
      abb41(38)=4.0_ki*abb41(38)*abb41(59)*abb41(58)
      abb41(31)=18.0_ki*abb41(31)
      abb41(60)=abb41(58)*spak2k4
      abb41(61)=-spbk7k3*abb41(45)
      abb41(61)=abb41(61)-3.0_ki*abb41(60)
      abb41(61)=abb41(61)*abb41(51)
      abb41(39)=3.0_ki*abb41(39)+abb41(61)
      abb41(39)=abb41(39)*abb41(22)
      abb41(61)=abb41(15)*spak2k3
      abb41(62)=abb41(29)*abb41(61)
      abb41(63)=spak2k4*spbk7k6
      abb41(64)=abb41(29)*abb41(63)
      abb41(65)=spbk7k4*abb41(64)
      abb41(62)=abb41(62)+abb41(65)
      abb41(40)=abb41(62)*abb41(40)
      abb41(62)=abb41(7)*spak2k3
      abb41(65)=abb41(45)*spbk7k1
      abb41(66)=-15.0_ki*abb41(62)-16.0_ki*abb41(65)
      abb41(66)=spak2k5*abb41(66)
      abb41(67)=spak2k4*spbk6k1
      abb41(68)=abb41(67)*spbk7k4
      abb41(69)=abb41(68)*spak2k5
      abb41(66)=abb41(66)-15.0_ki*abb41(69)
      abb41(70)=2.0_ki*abb41(59)
      abb41(66)=abb41(66)*abb41(70)
      abb41(71)=spak2k5*spbk7k1
      abb41(72)=abb41(24)*abb41(71)
      abb41(73)=-32.0_ki*abb41(72)
      abb41(72)=-16.0_ki*abb41(72)
      abb41(74)=-spak2k3*abb41(6)
      abb41(74)=-17.0_ki*abb41(65)-16.0_ki*abb41(62)+abb41(74)
      abb41(74)=spak2k5*abb41(74)
      abb41(69)=abb41(74)-17.0_ki*abb41(69)
      abb41(69)=abb41(5)*abb41(69)
      abb41(71)=spbk7k6*abb41(71)
      abb41(69)=abb41(71)+abb41(69)
      abb41(69)=abb41(69)*abb41(10)
      abb41(62)=abb41(68)+abb41(62)+abb41(65)
      abb41(62)=abb41(62)*abb41(56)
      abb41(65)=spak2k5*spbk7k5
      abb41(68)=7.0_ki*spak2k3
      abb41(71)=spbk7k3*abb41(68)
      abb41(74)=spbk7k6*abb41(50)
      abb41(65)=8.0_ki*abb41(65)+abb41(71)+abb41(74)
      abb41(65)=spbk7k1*abb41(65)
      abb41(53)=spbk7k4*abb41(53)
      abb41(53)=7.0_ki*abb41(53)+abb41(65)
      abb41(53)=abb41(53)*abb41(10)
      abb41(65)=abb41(63)*spbk7k4
      abb41(61)=abb41(61)+abb41(65)
      abb41(65)=9.0_ki*abb41(10)
      abb41(61)=abb41(61)*abb41(65)
      abb41(36)=-abb41(58)*abb41(36)
      abb41(19)=spbk7k3*abb41(19)
      abb41(60)=spak2k5*abb41(60)
      abb41(19)=3.0_ki*abb41(19)-2.0_ki*abb41(60)
      abb41(19)=abb41(5)*abb41(19)
      abb41(60)=-spak2k5*abb41(15)
      abb41(19)=abb41(60)+abb41(19)
      abb41(19)=abb41(19)*abb41(10)
      abb41(60)=abb41(9)*spbk6k5
      abb41(71)=abb41(20)*abb41(60)
      abb41(17)=3.0_ki*abb41(17)-5.0_ki*abb41(71)
      abb41(17)=3.0_ki*abb41(10)*spak5k7*abb41(17)
      abb41(71)=spak4k5*spbk4k3
      abb41(67)=abb41(67)*abb41(71)
      abb41(74)=abb41(16)*spbk6k3
      abb41(75)=abb41(74)*spak2k5
      abb41(76)=abb41(67)+15.0_ki*abb41(75)
      abb41(76)=abb41(76)*abb41(70)
      abb41(67)=-7.0_ki*abb41(75)-abb41(67)
      abb41(67)=abb41(67)*abb41(70)
      abb41(75)=abb41(27)*spbk6k3
      abb41(77)=abb41(28)*spbk6k3
      abb41(75)=abb41(75)+abb41(77)
      abb41(78)=abb41(7)*spak5k7
      abb41(79)=-16.0_ki*abb41(75)+15.0_ki*abb41(78)
      abb41(79)=spak2k4*abb41(79)
      abb41(48)=-spak4k5*abb41(48)
      abb41(48)=abb41(48)+abb41(79)
      abb41(48)=abb41(5)*abb41(48)
      abb41(79)=abb41(6)*spak4k5
      abb41(48)=abb41(79)+abb41(48)
      abb41(48)=abb41(48)*abb41(22)
      abb41(75)=abb41(75)-abb41(78)
      abb41(80)=abb41(51)*abb41(10)
      abb41(81)=-30.0_ki*abb41(75)*abb41(80)
      abb41(82)=spbk6k3*spak5k6
      abb41(83)=-abb41(71)+15.0_ki*abb41(82)
      abb41(83)=spbk6k1*abb41(83)
      abb41(84)=spak5k7*abb41(6)
      abb41(77)=-6.0_ki*abb41(84)-16.0_ki*abb41(78)+15.0_ki*abb41(77)+abb41(83)
      abb41(77)=spak2k4*abb41(77)
      abb41(83)=spak4k5*spbk6k5
      abb41(84)=spak3k4*spbk6k3
      abb41(85)=abb41(83)-15.0_ki*abb41(84)
      abb41(57)=abb41(85)*abb41(57)
      abb41(57)=abb41(57)+abb41(77)
      abb41(57)=abb41(5)*abb41(57)
      abb41(57)=-abb41(79)+abb41(57)
      abb41(57)=abb41(57)*abb41(10)
      abb41(77)=abb41(22)*abb41(51)
      abb41(79)=abb41(71)*spbk7k6
      abb41(85)=-abb41(77)*abb41(79)
      abb41(86)=abb41(74)*abb41(56)
      abb41(87)=spak2k5*spbk5k3
      abb41(88)=abb41(16)*abb41(87)
      abb41(89)=spbk7k1*spak4k7
      abb41(90)=spbk6k1*spak4k6
      abb41(89)=abb41(89)+abb41(90)
      abb41(90)=spbk4k3*abb41(89)
      abb41(91)=spbk5k1*abb41(71)
      abb41(90)=abb41(91)+abb41(90)
      abb41(90)=spak2k4*abb41(90)
      abb41(91)=spak2k6*abb41(74)
      abb41(88)=abb41(90)+15.0_ki*abb41(91)+7.0_ki*abb41(88)
      abb41(88)=abb41(5)*abb41(88)
      abb41(88)=abb41(20)+abb41(88)
      abb41(88)=abb41(88)*abb41(10)
      abb41(90)=spbk3k1*abb41(77)
      abb41(91)=abb41(80)*spbk3k1
      abb41(92)=32.0_ki*abb41(91)
      abb41(91)=-16.0_ki*abb41(91)
      abb41(60)=spbk7k6-abb41(60)
      abb41(16)=abb41(65)*abb41(16)*abb41(60)
      abb41(60)=abb41(71)*spbk6k5
      abb41(58)=abb41(58)*spak4k7
      abb41(58)=abb41(60)+abb41(58)
      abb41(60)=abb41(58)*abb41(77)
      abb41(37)=-abb41(37)*abb41(80)
      abb41(65)=spak2k3*abb41(75)
      abb41(75)=spbk4k1*abb41(83)
      abb41(77)=16.0_ki*abb41(28)
      abb41(93)=-spbk6k5*abb41(77)
      abb41(75)=abb41(75)+abb41(93)
      abb41(75)=spak2k5*abb41(75)
      abb41(93)=spak5k6*spbk6k4
      abb41(94)=spak5k7*spbk7k4
      abb41(93)=16.0_ki*abb41(93)-15.0_ki*abb41(94)
      abb41(93)=spbk6k1*abb41(93)
      abb41(94)=spbk6k4*abb41(77)
      abb41(93)=abb41(94)+abb41(93)
      abb41(93)=spak2k4*abb41(93)
      abb41(65)=abb41(93)+15.0_ki*abb41(65)+abb41(75)
      abb41(65)=abb41(5)*abb41(65)
      abb41(75)=-spak4k5*spbk4k1
      abb41(75)=6.0_ki*abb41(27)+abb41(75)+abb41(77)
      abb41(75)=spbk7k6*abb41(75)
      abb41(65)=abb41(75)+abb41(65)
      abb41(65)=abb41(65)*abb41(10)
      abb41(75)=abb41(11)*spbk6k1
      abb41(77)=30.0_ki*abb41(75)
      abb41(93)=-14.0_ki*abb41(75)
      abb41(42)=abb41(42)*spbk6k1
      abb41(75)=-16.0_ki*abb41(75)
      abb41(94)=abb41(11)*spbk7k6
      abb41(95)=4.0_ki*abb41(94)
      abb41(56)=spbk6k1*abb41(56)
      abb41(68)=-spbk3k1*abb41(68)
      abb41(50)=spbk6k1*abb41(50)
      abb41(96)=8.0_ki*spak2k5
      abb41(96)=spbk5k1*abb41(96)
      abb41(97)=spak2k4*spbk4k1
      abb41(50)=-7.0_ki*abb41(97)+abb41(96)+abb41(68)+abb41(50)
      abb41(50)=abb41(5)*abb41(50)
      abb41(50)=8.0_ki*spbk7k1+abb41(50)
      abb41(50)=abb41(50)*abb41(10)
      abb41(68)=9.0_ki*spbk6k1
      abb41(80)=-abb41(80)*abb41(68)
      abb41(68)=-spak2k3*abb41(59)*abb41(68)
      abb41(96)=spbk6k3*spak2k3
      abb41(97)=spak2k4*spbk6k4
      abb41(96)=abb41(96)+abb41(97)
      abb41(45)=-9.0_ki*abb41(45)+8.0_ki*abb41(96)
      abb41(45)=abb41(5)*abb41(45)
      abb41(45)=5.0_ki*spbk7k6+abb41(45)
      abb41(45)=abb41(45)*abb41(10)
      abb41(96)=-spbk4k1*abb41(11)
      abb41(9)=-abb41(58)*abb41(9)
      abb41(9)=abb41(79)+abb41(9)
      abb41(9)=abb41(9)*abb41(22)
      abb41(58)=-spbk6k3*spak2k6
      abb41(58)=abb41(58)-abb41(87)
      abb41(58)=abb41(5)*abb41(58)
      abb41(58)=-spbk7k3+abb41(58)
      abb41(58)=abb41(58)*abb41(10)
      abb41(87)=-spbk3k1*abb41(11)
      abb41(97)=abb41(59)*spak5k7
      abb41(98)=-6.0_ki*abb41(74)*abb41(97)
      abb41(99)=-12.0_ki*spbk6k1*abb41(97)
      abb41(100)=6.0_ki*spak5k6
      abb41(24)=abb41(100)*abb41(24)
      abb41(101)=-abb41(20)*abb41(24)
      abb41(11)=12.0_ki*abb41(11)
      abb41(102)=abb41(20)*abb41(11)
      abb41(103)=spbk7k3*abb41(29)
      abb41(6)=-abb41(6)*abb41(100)
      abb41(6)=abb41(103)+abb41(6)
      abb41(6)=spak2k4*abb41(6)
      abb41(6)=5.0_ki*abb41(23)+abb41(6)
      abb41(6)=abb41(6)*abb41(59)
      abb41(23)=-spbk7k1*abb41(24)
      abb41(24)=-spak5k6*abb41(74)
      abb41(20)=spak5k7*abb41(20)
      abb41(20)=abb41(24)+abb41(20)
      abb41(24)=6.0_ki*abb41(59)
      abb41(20)=abb41(20)*abb41(24)
      abb41(27)=13.0_ki*abb41(28)+abb41(27)
      abb41(27)=abb41(27)*abb41(59)
      abb41(28)=6.0_ki*spak3k4
      abb41(74)=abb41(30)*abb41(29)*abb41(28)
      abb41(7)=abb41(7)*spak3k4
      abb41(11)=-abb41(7)*abb41(11)
      abb41(7)=spak2k5*abb41(7)
      abb41(7)=-6.0_ki*abb41(7)+5.0_ki*abb41(64)
      abb41(7)=abb41(7)*abb41(59)
      abb41(28)=spbk7k1*abb41(54)*abb41(28)
      abb41(29)=abb41(84)*abb41(29)
      abb41(64)=-spak3k4*abb41(78)
      abb41(29)=abb41(64)+abb41(29)
      abb41(24)=abb41(29)*abb41(24)
      abb41(29)=-spak4k5*spbk5k1
      abb41(29)=abb41(29)-abb41(89)
      abb41(29)=abb41(29)*abb41(59)
      abb41(64)=spak5k6*abb41(84)
      abb41(78)=spbk7k3*spak5k7
      abb41(89)=spak3k4*abb41(78)
      abb41(64)=abb41(64)+abb41(89)
      abb41(64)=10.0_ki*abb41(64)*abb41(30)
      abb41(89)=abb41(71)*abb41(63)
      abb41(100)=spak2k5*spbk7k3*abb41(84)
      abb41(89)=-9.0_ki*abb41(100)+2.0_ki*abb41(89)
      abb41(89)=abb41(89)*abb41(70)
      abb41(100)=-abb41(83)-5.0_ki*abb41(84)
      abb41(100)=spbk7k3*abb41(100)
      abb41(103)=spak4k7*abb41(15)
      abb41(100)=abb41(100)+abb41(103)
      abb41(100)=spak2k5*abb41(100)
      abb41(78)=abb41(78)+abb41(82)
      abb41(78)=abb41(71)+5.0_ki*abb41(78)
      abb41(63)=abb41(78)*abb41(63)
      abb41(63)=abb41(100)+abb41(63)
      abb41(63)=abb41(5)*abb41(63)
      abb41(15)=-spak4k5*abb41(15)
      abb41(15)=abb41(15)+abb41(63)
      abb41(15)=abb41(15)*abb41(22)
      abb41(22)=8.0_ki*abb41(54)*abb41(84)
      abb41(63)=spak3k4*spbk7k3**2*abb41(10)
      abb41(51)=16.0_ki*abb41(51)*abb41(54)
      abb41(54)=9.0_ki*spak3k4
      abb41(30)=abb41(30)*abb41(54)
      abb41(10)=-10.0_ki*spak5k6*spbk7k6**2*abb41(10)
      abb41(78)=32.0_ki*abb41(94)
      abb41(94)=16.0_ki*abb41(94)
      abb41(100)=spbk4k3*spbk6k5*spak4k5**2
      abb41(54)=spak5k6*spbk6k3**2*abb41(54)
      abb41(79)=spak4k7*abb41(79)
      abb41(54)=abb41(79)+abb41(100)+abb41(54)
      abb41(54)=abb41(54)*abb41(59)
      abb41(70)=spak4k5*abb41(70)*spbk6k3
      abb41(79)=spbk7k6*spak4k5*abb41(59)
      abb41(83)=-abb41(83)-abb41(84)
      abb41(83)=abb41(83)*abb41(59)
      abb41(84)=spbk6k3*abb41(97)
      abb41(71)=abb41(71)+abb41(82)
      abb41(71)=abb41(71)*abb41(59)
      abb41(82)=24.0_ki*spbk7k6*abb41(97)
      abb41(59)=32.0_ki*abb41(59)
      R2d41=abb41(14)
      rat2 = rat2 + R2d41
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='41' value='", &
          & R2d41, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd41h2
