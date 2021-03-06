module     p12_sbars_epnemumnmubarg_abbrevd177h6
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh6
   implicit none
   private
   complex(ki), dimension(124), public :: abb177
   complex(ki), public :: R2d177
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p12_sbars_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_color, only: TR
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb177(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb177(2)=1.0_ki/(-mZ**2+es712+i_*mZ*wZ)
      abb177(3)=NC**(-1)
      abb177(4)=sqrt2**(-1)
      abb177(5)=es345**(-1)
      abb177(6)=es71**(-1)
      abb177(7)=spbk7k2**(-1)
      abb177(8)=1.0_ki/(es34-es56+es712-es345)
      abb177(9)=es712**(-1)
      abb177(10)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb177(11)=es456**(-1)
      abb177(12)=1.0_ki/(-es34+es56+es712-es456)
      abb177(13)=NC-abb177(3)
      abb177(14)=gSr*abb177(2)
      abb177(15)=-abb177(14)*abb177(13)
      abb177(16)=abb177(4)*gW**2
      abb177(17)=i_*TR*c1*abb177(7)
      abb177(18)=abb177(17)*spak1k7*abb177(16)
      abb177(19)=abb177(18)*abb177(10)
      abb177(20)=abb177(6)*abb177(19)
      abb177(21)=abb177(1)*spbk2k1
      abb177(22)=abb177(20)*abb177(21)
      abb177(23)=-abb177(22)*abb177(15)
      abb177(24)=gWWZ*spak2k5
      abb177(25)=abb177(24)*abb177(23)
      abb177(26)=spbk6k3*spak4k5
      abb177(27)=abb177(25)*abb177(26)
      abb177(28)=1.0_ki/3.0_ki*abb177(9)
      abb177(29)=abb177(26)*abb177(28)
      abb177(22)=-abb177(22)*abb177(13)
      abb177(30)=abb177(29)*abb177(22)
      abb177(31)=abb177(30)*spak2k5
      abb177(27)=abb177(27)-abb177(31)
      abb177(31)=abb177(27)*spbk5k1
      abb177(32)=abb177(26)*gWWZ
      abb177(33)=abb177(32)*abb177(23)
      abb177(30)=abb177(33)-abb177(30)
      abb177(33)=abb177(30)*spbk4k1
      abb177(34)=abb177(33)*spak2k4
      abb177(35)=abb177(25)*spbk6k3
      abb177(36)=abb177(28)*spbk6k3
      abb177(37)=abb177(22)*abb177(36)
      abb177(38)=abb177(37)*spak2k5
      abb177(35)=abb177(35)-abb177(38)
      abb177(38)=abb177(35)*spbk6k1
      abb177(18)=-abb177(1)*abb177(6)*abb177(18)*abb177(13)
      abb177(39)=abb177(18)*spbk2k1
      abb177(40)=2.0_ki/3.0_ki*abb177(9)
      abb177(41)=abb177(39)*abb177(40)
      abb177(42)=abb177(41)*spbk6k1
      abb177(43)=abb177(8)*spbk6k3
      abb177(44)=abb177(43)*spak2k5
      abb177(45)=abb177(42)*abb177(44)
      abb177(38)=abb177(38)-abb177(45)
      abb177(38)=abb177(38)*spak4k6
      abb177(23)=abb177(23)*gWWZ
      abb177(45)=abb177(23)*spak4k5
      abb177(46)=abb177(28)*spak4k5
      abb177(47)=abb177(22)*abb177(46)
      abb177(45)=abb177(45)-abb177(47)
      abb177(48)=-abb177(20)*abb177(13)
      abb177(49)=-spbk2k1*abb177(48)
      abb177(50)=abb177(11)*spak4k5
      abb177(51)=abb177(49)*abb177(50)
      abb177(52)=abb177(51)*abb177(40)
      abb177(52)=abb177(52)+abb177(45)
      abb177(53)=abb177(52)*spbk6k4
      abb177(54)=spbk3k1*spak2k4
      abb177(55)=abb177(54)*abb177(53)
      abb177(56)=abb177(28)*spak2k5
      abb177(57)=abb177(56)*abb177(22)
      abb177(57)=abb177(57)-abb177(25)
      abb177(58)=abb177(57)*spbk6k1
      abb177(59)=spak4k7*spbk7k3
      abb177(60)=abb177(58)*abb177(59)
      abb177(31)=-abb177(31)+abb177(34)+abb177(60)+abb177(38)-abb177(55)
      abb177(34)=abb177(57)*spbk6k2
      abb177(20)=abb177(13)*abb177(14)*abb177(20)
      abb177(38)=spbk2k1*abb177(20)
      abb177(55)=2.0_ki*abb177(38)
      abb177(60)=abb177(50)*gel
      abb177(61)=spbk6k4*abb177(60)*abb177(55)
      abb177(62)=gnel*abb177(12)
      abb177(63)=abb177(62)*spbk6k3
      abb177(55)=abb177(63)*abb177(55)
      abb177(64)=abb177(55)*spak3k5
      abb177(34)=abb177(64)+abb177(34)-abb177(61)
      abb177(61)=abb177(23)*spbk6k3
      abb177(37)=abb177(61)-abb177(37)
      abb177(61)=abb177(37)*spak3k5
      abb177(64)=-abb177(61)+abb177(34)
      abb177(22)=abb177(22)*abb177(28)
      abb177(22)=abb177(22)-abb177(23)
      abb177(23)=abb177(22)*spak1k5
      abb177(65)=abb177(23)*spbk6k1
      abb177(66)=abb177(22)*spak5k7
      abb177(67)=abb177(66)*spbk7k6
      abb177(65)=-abb177(67)+abb177(64)+abb177(65)
      abb177(68)=abb177(65)*abb177(54)
      abb177(69)=abb177(30)*spbk6k1
      abb177(70)=abb177(69)*spak2k6
      abb177(71)=abb177(30)*spbk3k1
      abb177(72)=abb177(71)*spak2k3
      abb177(73)=abb177(8)*abb177(39)*abb177(36)
      abb177(74)=spbk3k1*spak2k5
      abb177(75)=abb177(73)*abb177(74)
      abb177(76)=-spbk2k1*abb177(18)*abb177(14)
      abb177(77)=abb177(76)*gmul
      abb177(78)=abb177(77)*abb177(44)
      abb177(79)=abb177(78)*spbk3k1
      abb177(75)=abb177(75)-abb177(79)
      abb177(79)=2.0_ki*spak3k4
      abb177(75)=abb177(75)*abb177(79)
      abb177(80)=abb177(60)*abb177(38)
      abb177(49)=abb177(11)*abb177(49)*abb177(46)
      abb177(49)=abb177(49)+abb177(80)
      abb177(80)=2.0_ki*spbk6k5
      abb177(81)=abb177(49)*abb177(80)
      abb177(82)=abb177(74)*abb177(81)
      abb177(83)=spak1k4*spbk3k1
      abb177(84)=abb177(58)*abb177(83)
      abb177(55)=abb177(55)*spak5k6
      abb177(85)=spbk6k1*spak2k4
      abb177(86)=abb177(55)*abb177(85)
      abb177(87)=abb177(85)*spbk3k2
      abb177(88)=abb177(87)*abb177(57)
      abb177(25)=abb177(25)*spak4k5
      abb177(47)=abb177(47)*spak2k5
      abb177(25)=abb177(25)-abb177(47)
      abb177(47)=spbk5k3*spbk6k1
      abb177(89)=abb177(25)*abb177(47)
      abb177(90)=2.0_ki*spbk6k1
      abb177(91)=abb177(90)*abb177(76)
      abb177(92)=abb177(44)*spak4k6
      abb177(93)=abb177(92)*gmul
      abb177(94)=abb177(91)*abb177(93)
      abb177(95)=abb177(76)*spak4k5
      abb177(96)=gnmul*abb177(5)
      abb177(97)=abb177(95)*abb177(96)
      abb177(90)=abb177(97)*abb177(90)
      abb177(98)=abb177(90)*spbk4k3
      abb177(99)=abb177(98)*spak2k4
      abb177(90)=abb177(90)*spbk5k3
      abb177(100)=abb177(90)*spak2k5
      abb177(68)=-abb177(100)+abb177(68)+abb177(75)-abb177(82)-abb177(99)-abb17&
      &7(86)-abb177(84)+abb177(94)-abb177(88)-abb177(70)+abb177(72)+abb177(89)+&
      &abb177(31)
      abb177(70)=2.0_ki*abb177(68)
      abb177(72)=-abb177(54)*abb177(67)
      abb177(31)=abb177(72)+abb177(31)
      abb177(31)=es12*abb177(31)
      abb177(72)=spbk2k1**2
      abb177(75)=abb177(72)*abb177(1)
      abb177(82)=abb177(75)*abb177(20)
      abb177(84)=abb177(82)*gWWZ
      abb177(75)=-abb177(75)*abb177(48)
      abb177(86)=abb177(75)*abb177(28)
      abb177(86)=abb177(86)+abb177(84)
      abb177(88)=abb177(86)*spak5k7
      abb177(89)=spbk7k3*spak2k4
      abb177(94)=-abb177(89)*abb177(88)
      abb177(99)=abb177(82)*abb177(24)
      abb177(100)=abb177(75)*abb177(56)
      abb177(100)=abb177(100)+abb177(99)
      abb177(101)=abb177(100)*abb177(59)
      abb177(102)=abb177(99)*spbk6k3
      abb177(103)=abb177(75)*abb177(36)
      abb177(104)=abb177(103)*spak2k5
      abb177(102)=abb177(102)+abb177(104)
      abb177(18)=abb177(18)*abb177(72)
      abb177(104)=abb177(18)*abb177(44)
      abb177(105)=abb177(40)*abb177(104)
      abb177(105)=-abb177(102)+abb177(105)
      abb177(105)=spak4k6*abb177(105)
      abb177(94)=abb177(105)+abb177(94)+abb177(101)
      abb177(94)=spbk7k6*abb177(94)
      abb177(101)=abb177(84)*spak4k5
      abb177(105)=abb177(75)*abb177(46)
      abb177(101)=abb177(101)+abb177(105)
      abb177(48)=-abb177(72)*abb177(48)
      abb177(40)=abb177(48)*abb177(40)*abb177(50)
      abb177(40)=abb177(101)+abb177(40)
      abb177(40)=spbk6k4*abb177(89)*abb177(40)
      abb177(26)=abb177(99)*abb177(26)
      abb177(75)=abb177(75)*abb177(29)
      abb177(106)=abb177(75)*spak2k5
      abb177(26)=abb177(26)+abb177(106)
      abb177(106)=spbk7k5*abb177(26)
      abb177(82)=abb177(82)*abb177(32)
      abb177(75)=abb177(82)+abb177(75)
      abb177(82)=abb177(75)*spak2k4
      abb177(107)=-spbk7k4*abb177(82)
      abb177(40)=abb177(107)+abb177(106)+abb177(40)+abb177(94)
      abb177(40)=spak2k7*abb177(40)
      abb177(20)=-abb177(72)*abb177(20)
      abb177(72)=abb177(89)*spak2k7
      abb177(94)=abb177(72)*abb177(20)
      abb177(54)=abb177(54)*es12
      abb177(106)=abb177(54)*abb177(38)
      abb177(94)=abb177(94)+abb177(106)
      abb177(106)=spak3k5*spbk6k3*abb177(94)
      abb177(107)=abb177(85)*es12
      abb177(108)=-abb177(107)*abb177(38)*spbk6k3
      abb177(109)=abb177(20)*spak2k4
      abb177(110)=abb177(109)*spbk6k3
      abb177(111)=spak2k7*spbk7k6
      abb177(112)=-abb177(111)*abb177(110)
      abb177(108)=abb177(108)+abb177(112)
      abb177(108)=spak5k6*abb177(108)
      abb177(106)=abb177(108)+abb177(106)
      abb177(62)=2.0_ki*abb177(62)
      abb177(106)=abb177(62)*abb177(106)
      abb177(108)=-es12*abb177(69)
      abb177(112)=abb177(75)*abb177(111)
      abb177(108)=abb177(108)+abb177(112)
      abb177(108)=spak2k6*abb177(108)
      abb177(112)=es12*abb177(71)
      abb177(113)=spak2k7*spbk7k3
      abb177(114)=-abb177(75)*abb177(113)
      abb177(112)=abb177(112)+abb177(114)
      abb177(112)=spak2k3*abb177(112)
      abb177(114)=es12*spbk6k1
      abb177(115)=-spak2k5*abb177(95)*abb177(114)
      abb177(14)=abb177(14)*abb177(18)
      abb177(116)=abb177(14)*spak2k5
      abb177(117)=abb177(116)*spak4k5
      abb177(118)=-abb177(111)*abb177(117)
      abb177(115)=abb177(115)+abb177(118)
      abb177(115)=spbk5k3*abb177(115)
      abb177(95)=-abb177(95)*abb177(107)
      abb177(118)=abb177(14)*abb177(111)
      abb177(119)=spak2k4*spak4k5
      abb177(120)=-abb177(118)*abb177(119)
      abb177(95)=abb177(95)+abb177(120)
      abb177(95)=spbk4k3*abb177(95)
      abb177(95)=abb177(95)+abb177(115)
      abb177(96)=2.0_ki*abb177(96)
      abb177(95)=abb177(96)*abb177(95)
      abb177(115)=abb177(22)*spbk6k1
      abb177(120)=abb177(115)*abb177(54)
      abb177(86)=abb177(86)*abb177(85)
      abb177(121)=abb177(113)*abb177(86)
      abb177(120)=abb177(120)+abb177(121)
      abb177(120)=spak1k5*abb177(120)
      abb177(121)=abb177(25)*abb177(114)
      abb177(99)=abb177(99)*spak4k5
      abb177(105)=abb177(105)*spak2k5
      abb177(99)=abb177(99)+abb177(105)
      abb177(105)=-abb177(99)*abb177(111)
      abb177(105)=abb177(121)+abb177(105)
      abb177(105)=spbk5k3*abb177(105)
      abb177(121)=-abb177(37)*abb177(54)
      abb177(84)=abb177(84)*spbk6k3
      abb177(84)=abb177(84)+abb177(103)
      abb177(103)=abb177(84)*abb177(72)
      abb177(103)=abb177(121)+abb177(103)
      abb177(103)=spak3k5*abb177(103)
      abb177(121)=es12*spbk3k1
      abb177(58)=-abb177(58)*abb177(121)
      abb177(122)=-spbk3k1*abb177(100)*abb177(111)
      abb177(58)=abb177(58)+abb177(122)
      abb177(58)=spak1k4*abb177(58)
      abb177(122)=2.0_ki*gel
      abb177(94)=-abb177(122)*abb177(50)*spbk6k4*abb177(94)
      abb177(74)=abb177(74)*es12
      abb177(123)=-abb177(38)*abb177(74)
      abb177(20)=abb177(20)*spak2k5
      abb177(124)=-abb177(113)*abb177(20)
      abb177(123)=abb177(123)+abb177(124)
      abb177(60)=abb177(123)*abb177(60)
      abb177(123)=spak2k5*abb177(9)
      abb177(124)=abb177(48)*abb177(123)
      abb177(50)=abb177(50)*abb177(113)*abb177(124)
      abb177(51)=-abb177(9)*abb177(51)*abb177(74)
      abb177(50)=abb177(51)+abb177(50)
      abb177(50)=1.0_ki/3.0_ki*abb177(50)+abb177(60)
      abb177(50)=abb177(50)*abb177(80)
      abb177(51)=abb177(121)*abb177(44)
      abb177(60)=-abb177(76)*abb177(51)
      abb177(74)=-abb177(14)*abb177(44)*abb177(113)
      abb177(60)=abb177(60)+abb177(74)
      abb177(60)=gmul*abb177(60)
      abb177(39)=abb177(39)*abb177(51)
      abb177(51)=-abb177(113)*abb177(104)
      abb177(39)=abb177(39)+abb177(51)
      abb177(39)=abb177(9)*abb177(39)
      abb177(39)=1.0_ki/3.0_ki*abb177(39)+abb177(60)
      abb177(39)=abb177(39)*abb177(79)
      abb177(51)=abb177(57)*abb177(54)
      abb177(54)=abb177(100)*abb177(72)
      abb177(51)=abb177(51)+abb177(54)
      abb177(51)=spbk6k2*abb177(51)
      abb177(54)=-abb177(57)*abb177(107)
      abb177(60)=abb177(100)*spak2k4
      abb177(72)=-abb177(111)*abb177(60)
      abb177(54)=abb177(54)+abb177(72)
      abb177(54)=spbk3k2*abb177(54)
      abb177(72)=abb177(76)*abb177(114)
      abb177(72)=abb177(72)+abb177(118)
      abb177(72)=abb177(72)*abb177(93)
      abb177(31)=abb177(112)+abb177(108)+abb177(54)+abb177(51)+abb177(39)+abb17&
      &7(50)+abb177(94)+2.0_ki*abb177(72)+abb177(58)+abb177(103)+abb177(105)+ab&
      &b177(120)+abb177(40)+abb177(31)+abb177(106)+abb177(95)
      abb177(31)=4.0_ki*abb177(31)
      abb177(39)=-8.0_ki*abb177(68)
      abb177(40)=-4.0_ki*abb177(68)
      abb177(50)=spak2k6*abb177(30)
      abb177(51)=2.0_ki*spbk5k3
      abb177(54)=spak2k5*abb177(51)
      abb177(58)=spbk4k3*spak2k4
      abb177(54)=2.0_ki*abb177(58)+abb177(54)
      abb177(54)=abb177(97)*abb177(54)
      abb177(58)=abb177(83)-abb177(59)
      abb177(68)=spbk3k2*spak2k4
      abb177(68)=-abb177(68)-abb177(58)
      abb177(57)=-abb177(57)*abb177(68)
      abb177(44)=abb177(44)*abb177(41)
      abb177(35)=-abb177(35)+abb177(44)
      abb177(35)=spak4k6*abb177(35)
      abb177(25)=-spbk5k3*abb177(25)
      abb177(44)=spak2k4*abb177(55)
      abb177(72)=2.0_ki*abb177(77)
      abb177(72)=-abb177(92)*abb177(72)
      abb177(25)=abb177(35)+abb177(44)+abb177(50)+abb177(72)+abb177(25)+abb177(&
      &57)+abb177(54)
      abb177(25)=spbk7k6*abb177(25)
      abb177(35)=abb177(53)-abb177(64)+abb177(67)
      abb177(35)=abb177(89)*abb177(35)
      abb177(44)=-spak2k3*abb177(30)
      abb177(50)=-abb177(85)*abb177(23)
      abb177(44)=abb177(44)+abb177(50)
      abb177(44)=spbk7k3*abb177(44)
      abb177(27)=spbk7k5*abb177(27)
      abb177(50)=-spbk7k4*abb177(30)*spak2k4
      abb177(54)=spbk7k3*spak2k5
      abb177(57)=abb177(54)*abb177(81)
      abb177(54)=-abb177(73)*abb177(54)
      abb177(64)=spbk7k3*abb177(78)
      abb177(54)=abb177(54)+abb177(64)
      abb177(54)=abb177(54)*abb177(79)
      abb177(25)=abb177(50)+abb177(27)+abb177(54)+abb177(57)+abb177(44)+abb177(&
      &35)+abb177(25)
      abb177(25)=4.0_ki*abb177(25)
      abb177(27)=spbk3k1*abb177(65)
      abb177(35)=spbk6k4*abb177(52)*spbk3k1
      abb177(44)=abb177(55)*spbk6k1
      abb177(44)=abb177(44)+abb177(98)
      abb177(50)=spbk7k3*spbk6k1*abb177(66)
      abb177(27)=-abb177(35)+abb177(33)-abb177(44)+abb177(50)+abb177(27)
      abb177(27)=spak4k7*abb177(27)
      abb177(33)=gmul*spak4k6
      abb177(50)=abb177(43)*abb177(33)*abb177(91)
      abb177(47)=abb177(47)*abb177(45)
      abb177(47)=-abb177(90)+abb177(50)+abb177(47)
      abb177(50)=-spbk5k1*abb177(30)
      abb177(52)=abb177(37)*spbk6k1
      abb177(42)=abb177(42)*abb177(43)
      abb177(42)=abb177(52)-abb177(42)
      abb177(42)=abb177(42)*spak4k6
      abb177(50)=abb177(42)+abb177(50)+abb177(47)
      abb177(50)=spak5k7*abb177(50)
      abb177(52)=-spak6k7*abb177(69)
      abb177(54)=spak3k7*abb177(71)
      abb177(55)=-spbk6k1*abb177(83)
      abb177(55)=-abb177(87)+abb177(55)
      abb177(55)=abb177(66)*abb177(55)
      abb177(57)=spak5k7*spbk3k1
      abb177(64)=-abb177(57)*abb177(81)
      abb177(57)=abb177(73)*abb177(57)
      abb177(66)=abb177(77)*abb177(43)
      abb177(69)=spbk3k1*abb177(66)
      abb177(71)=-spak5k7*abb177(69)
      abb177(57)=abb177(57)+abb177(71)
      abb177(57)=abb177(57)*abb177(79)
      abb177(27)=abb177(54)+abb177(52)+abb177(57)+abb177(64)+abb177(55)+abb177(&
      &27)+abb177(50)
      abb177(27)=4.0_ki*abb177(27)
      abb177(50)=abb177(10)*abb177(16)
      abb177(17)=abb177(17)*spbk2k1
      abb177(52)=abb177(1)*abb177(17)
      abb177(54)=abb177(50)*abb177(52)
      abb177(55)=-abb177(54)*abb177(15)
      abb177(57)=abb177(55)*gWWZ
      abb177(64)=abb177(57)*spbk6k3
      abb177(54)=-abb177(54)*abb177(13)
      abb177(36)=abb177(54)*abb177(36)
      abb177(36)=abb177(36)-abb177(64)
      abb177(64)=-spak5k7*abb177(36)
      abb177(16)=abb177(52)*abb177(16)
      abb177(52)=spak5k7*spbk6k3
      abb177(71)=abb177(52)*abb177(9)*abb177(13)*abb177(16)
      abb177(18)=spbk6k3*abb177(18)*abb177(123)
      abb177(18)=abb177(71)-abb177(18)
      abb177(71)=abb177(8)*abb177(18)
      abb177(64)=2.0_ki/3.0_ki*abb177(71)+abb177(64)+abb177(102)
      abb177(64)=spak4k6*abb177(64)
      abb177(28)=abb177(54)*abb177(28)
      abb177(28)=abb177(28)-abb177(57)
      abb177(71)=abb177(28)*spak5k7
      abb177(72)=abb177(71)-abb177(100)
      abb177(58)=-abb177(72)*abb177(58)
      abb177(16)=-abb177(16)*abb177(15)
      abb177(72)=abb177(16)*spak4k5
      abb177(74)=-spak5k7*abb177(72)
      abb177(74)=abb177(117)+abb177(74)
      abb177(74)=spbk5k3*abb177(74)
      abb177(72)=-spak4k7*abb177(72)
      abb177(14)=abb177(14)*abb177(119)
      abb177(14)=abb177(14)+abb177(72)
      abb177(14)=spbk4k3*abb177(14)
      abb177(14)=abb177(14)+abb177(74)
      abb177(14)=abb177(96)*abb177(14)
      abb177(57)=abb177(57)*spak4k5
      abb177(46)=abb177(54)*abb177(46)
      abb177(46)=abb177(46)-abb177(57)
      abb177(57)=-spak5k7*abb177(46)
      abb177(57)=abb177(57)+abb177(99)
      abb177(57)=spbk5k3*abb177(57)
      abb177(72)=-spak2k4*abb177(71)
      abb177(72)=abb177(60)+abb177(72)
      abb177(72)=spbk3k2*abb177(72)
      abb177(74)=-spak2k6*abb177(75)
      abb177(17)=abb177(50)*abb177(17)
      abb177(50)=-abb177(17)*abb177(15)
      abb177(76)=abb177(50)*spak4k7
      abb177(77)=abb177(76)*spbk6k3
      abb177(77)=abb177(77)-abb177(110)
      abb177(62)=abb177(77)*abb177(62)
      abb177(77)=-spak5k6*abb177(62)
      abb177(78)=abb177(54)*abb177(29)
      abb177(85)=abb177(55)*abb177(32)
      abb177(78)=abb177(78)-abb177(85)
      abb177(85)=spak6k7*abb177(78)
      abb177(16)=abb177(16)*abb177(52)
      abb177(52)=abb177(116)*spbk6k3
      abb177(16)=abb177(52)-abb177(16)
      abb177(33)=abb177(8)*abb177(16)*abb177(33)
      abb177(14)=abb177(85)+abb177(77)+abb177(74)+abb177(72)-2.0_ki*abb177(33)+&
      &abb177(57)+abb177(64)+abb177(14)+abb177(58)
      abb177(14)=4.0_ki*abb177(14)
      abb177(33)=spak5k7*abb177(78)
      abb177(26)=abb177(33)-abb177(26)
      abb177(26)=4.0_ki*abb177(26)
      abb177(33)=-spak4k7*abb177(78)
      abb177(33)=abb177(82)+abb177(33)
      abb177(33)=4.0_ki*abb177(33)
      abb177(52)=abb177(109)-abb177(76)
      abb177(52)=abb177(122)*spak4k5*abb177(52)
      abb177(48)=-spak2k4*abb177(48)
      abb177(17)=abb177(13)*abb177(17)
      abb177(57)=-spak4k7*abb177(17)
      abb177(48)=abb177(48)+abb177(57)
      abb177(57)=abb177(9)*spak4k5
      abb177(48)=abb177(57)*abb177(48)
      abb177(48)=abb177(52)+2.0_ki/3.0_ki*abb177(48)
      abb177(48)=abb177(11)*abb177(48)
      abb177(52)=-spak2k4*abb177(101)
      abb177(46)=spak4k7*abb177(46)
      abb177(46)=abb177(52)+abb177(46)+abb177(48)
      abb177(46)=spbk6k4*abb177(46)
      abb177(48)=-spak2k4*abb177(84)
      abb177(36)=spak4k7*abb177(36)
      abb177(36)=abb177(62)+abb177(48)+abb177(36)
      abb177(36)=spak3k5*abb177(36)
      abb177(48)=spak2k4*abb177(88)
      abb177(52)=-spak4k7*abb177(71)
      abb177(48)=abb177(48)+abb177(52)
      abb177(48)=spbk7k6*abb177(48)
      abb177(28)=spak4k7*spbk6k1*abb177(28)
      abb177(28)=-abb177(86)+abb177(28)
      abb177(28)=spak1k5*abb177(28)
      abb177(50)=-spak5k7*abb177(50)
      abb177(20)=abb177(20)+abb177(50)
      abb177(20)=gel*spak4k5*abb177(20)
      abb177(50)=-spak4k5*abb177(124)
      abb177(17)=-spak5k7*abb177(17)*abb177(57)
      abb177(17)=abb177(50)+abb177(17)
      abb177(17)=1.0_ki/3.0_ki*abb177(17)+abb177(20)
      abb177(17)=abb177(80)*abb177(11)*abb177(17)
      abb177(16)=gmul*abb177(16)
      abb177(16)=-1.0_ki/3.0_ki*abb177(18)+abb177(16)
      abb177(16)=abb177(79)*abb177(8)*abb177(16)
      abb177(18)=-abb177(55)*abb177(24)
      abb177(20)=abb177(54)*abb177(56)
      abb177(18)=abb177(20)+abb177(18)
      abb177(18)=spak4k7*abb177(18)
      abb177(18)=-abb177(60)+abb177(18)
      abb177(18)=spbk6k2*abb177(18)
      abb177(20)=spak2k3*abb177(75)
      abb177(24)=-spak3k7*abb177(78)
      abb177(16)=abb177(24)+abb177(20)+abb177(18)+abb177(16)+abb177(17)+abb177(&
      &28)+abb177(36)+abb177(46)+abb177(48)
      abb177(16)=4.0_ki*abb177(16)
      abb177(17)=-abb177(61)-abb177(67)
      abb177(17)=spbk3k1*abb177(17)
      abb177(17)=-abb177(44)-abb177(35)+abb177(17)
      abb177(17)=spak1k4*abb177(17)
      abb177(18)=abb177(83)*abb177(34)
      abb177(20)=abb177(59)*abb177(115)
      abb177(20)=abb177(47)+abb177(20)+abb177(42)
      abb177(20)=spak1k5*abb177(20)
      abb177(24)=es234-es567
      abb177(24)=es12+2.0_ki*abb177(24)
      abb177(24)=abb177(30)*abb177(24)
      abb177(13)=-abb177(29)*abb177(13)
      abb177(15)=abb177(32)*abb177(15)
      abb177(13)=abb177(13)+abb177(15)
      abb177(13)=abb177(13)*abb177(21)*abb177(19)
      abb177(15)=spak1k5*spbk3k1
      abb177(19)=-abb177(15)*abb177(81)
      abb177(15)=abb177(73)*abb177(15)
      abb177(21)=-spak1k5*abb177(69)
      abb177(15)=abb177(15)+abb177(21)
      abb177(15)=abb177(15)*abb177(79)
      abb177(21)=-abb177(23)*abb177(87)
      abb177(13)=abb177(21)+abb177(15)+abb177(19)+abb177(20)+abb177(18)+abb177(&
      &24)+abb177(17)+abb177(13)
      abb177(13)=4.0_ki*abb177(13)
      abb177(15)=8.0_ki*abb177(30)
      abb177(17)=-abb177(43)*abb177(41)
      abb177(17)=2.0_ki*abb177(66)+abb177(17)+abb177(37)
      abb177(17)=spak4k6*abb177(17)
      abb177(18)=abb177(22)*abb177(68)
      abb177(19)=spbk5k3*abb177(45)
      abb177(20)=-abb177(97)*abb177(51)
      abb177(17)=abb177(20)+abb177(19)+abb177(18)+abb177(17)
      abb177(17)=4.0_ki*abb177(17)
      abb177(18)=-spbk6k5*abb177(49)
      abb177(19)=abb177(73)-abb177(66)
      abb177(19)=spak3k4*abb177(19)
      abb177(18)=abb177(18)+abb177(19)
      abb177(18)=8.0_ki*abb177(18)
      abb177(19)=-spak5k6*abb177(38)*abb177(63)
      abb177(20)=-spbk4k3*abb177(97)
      abb177(19)=abb177(19)+abb177(20)
      abb177(19)=8.0_ki*abb177(19)
      abb177(20)=-abb177(53)+abb177(65)
      abb177(20)=4.0_ki*abb177(20)
      R2d177=abb177(70)
      rat2 = rat2 + R2d177
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='177' value='", &
          & R2d177, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd177h6
