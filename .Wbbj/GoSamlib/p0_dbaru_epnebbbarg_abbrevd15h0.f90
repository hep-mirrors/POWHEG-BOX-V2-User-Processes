module     p0_dbaru_epnebbbarg_abbrevd15h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(110), public :: abb15
   complex(ki), public :: R2d15
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb15(1)=1.0_ki/(-es71+es712-es12)
      abb15(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb15(3)=NC**(-1)
      abb15(4)=es56**(-1)
      abb15(5)=spbl5k2**(-1)
      abb15(6)=spbl6k2**(-1)
      abb15(7)=spak2l5**(-1)
      abb15(8)=spak2l6**(-1)
      abb15(9)=c1*abb15(3)
      abb15(10)=c4*abb15(3)**2
      abb15(9)=abb15(9)-abb15(10)
      abb15(10)=mB*abb15(1)
      abb15(11)=abb15(10)*spbe7k2
      abb15(12)=TR*gW
      abb15(12)=abb15(12)**2*i_*CVDU*abb15(4)*abb15(2)
      abb15(13)=abb15(9)*abb15(11)*abb15(12)
      abb15(14)=abb15(5)*abb15(13)
      abb15(15)=abb15(14)*spak1k4
      abb15(16)=abb15(15)*spak1l6
      abb15(17)=abb15(6)*abb15(13)
      abb15(18)=abb15(17)*spak1k4
      abb15(19)=abb15(18)*spak1l5
      abb15(16)=abb15(16)+abb15(19)
      abb15(19)=spbk7k3*spae7k7
      abb15(20)=spbk2k1*abb15(16)*abb15(19)
      abb15(21)=-abb15(13)*spak1l5
      abb15(22)=abb15(19)*spak4l6
      abb15(23)=abb15(22)*abb15(21)
      abb15(13)=-abb15(13)*spak1l6
      abb15(24)=abb15(19)*spak4l5
      abb15(25)=abb15(24)*abb15(13)
      abb15(23)=abb15(20)+abb15(23)+abb15(25)
      abb15(23)=es71*abb15(23)
      abb15(25)=-abb15(9)*abb15(12)*spbk3k2
      abb15(26)=spak4l6*spak1l5
      abb15(27)=spak4l5*spak1l6
      abb15(26)=abb15(27)+abb15(26)
      abb15(27)=spak1k2*spae7k7
      abb15(26)=-abb15(27)*abb15(26)*abb15(11)*abb15(25)
      abb15(28)=-abb15(6)*abb15(25)
      abb15(29)=-abb15(11)*abb15(28)
      abb15(30)=spak1l5*spak1k4
      abb15(31)=abb15(30)*abb15(29)
      abb15(32)=-abb15(5)*abb15(25)
      abb15(11)=-abb15(11)*abb15(32)
      abb15(33)=abb15(11)*spak1l6
      abb15(34)=abb15(33)*spak1k4
      abb15(31)=abb15(31)+abb15(34)
      abb15(34)=abb15(31)*spae7k7
      abb15(35)=es12*abb15(34)
      abb15(26)=abb15(35)+abb15(26)
      abb15(26)=spbk7k1*abb15(26)
      abb15(35)=abb15(14)*spak1l6
      abb15(36)=abb15(22)*abb15(35)
      abb15(37)=-es71*abb15(36)
      abb15(38)=abb15(27)*spbk7k1
      abb15(39)=-spak4l6*abb15(33)*abb15(38)
      abb15(37)=abb15(37)+abb15(39)
      abb15(37)=spbl6k2*abb15(37)
      abb15(39)=abb15(17)*spak1l5
      abb15(40)=abb15(24)*abb15(39)
      abb15(41)=-es71*abb15(40)
      abb15(42)=abb15(29)*spak1l5
      abb15(43)=-spak4l5*abb15(42)*abb15(38)
      abb15(41)=abb15(41)+abb15(43)
      abb15(41)=spbl5k2*abb15(41)
      abb15(23)=abb15(41)+abb15(37)+abb15(26)+abb15(23)
      abb15(23)=4.0_ki*abb15(23)
      abb15(26)=abb15(28)*abb15(5)
      abb15(37)=abb15(1)*mB**3
      abb15(41)=abb15(37)*abb15(26)
      abb15(43)=2.0_ki*abb15(41)
      abb15(44)=abb15(25)*abb15(37)
      abb15(45)=abb15(5)**2
      abb15(46)=abb15(45)*abb15(44)
      abb15(47)=abb15(46)*abb15(7)
      abb15(48)=spak2l6*abb15(47)
      abb15(49)=abb15(6)**2
      abb15(44)=-abb15(49)*abb15(44)
      abb15(50)=abb15(44)*abb15(8)
      abb15(51)=-spak2l5*abb15(50)
      abb15(48)=abb15(51)+abb15(48)-abb15(43)
      abb15(51)=spak1k7*spbk7k2**2
      abb15(48)=abb15(51)*abb15(48)
      abb15(32)=-abb15(10)*abb15(32)
      abb15(52)=spak1l6*spbk7k2
      abb15(53)=abb15(52)*abb15(32)
      abb15(28)=-abb15(10)*abb15(28)
      abb15(54)=spak1l5*spbk7k2
      abb15(55)=abb15(54)*abb15(28)
      abb15(53)=abb15(53)+abb15(55)
      abb15(55)=es12+es71
      abb15(56)=-abb15(53)*abb15(55)
      abb15(9)=-abb15(12)*abb15(9)
      abb15(10)=abb15(9)*abb15(10)
      abb15(12)=-abb15(6)*abb15(10)
      abb15(57)=abb15(12)*spak1l5
      abb15(58)=-abb15(5)*abb15(10)
      abb15(59)=abb15(58)*spak1l6
      abb15(60)=abb15(57)+abb15(59)
      abb15(61)=abb15(60)*abb15(51)
      abb15(62)=-abb15(10)*spak1l5
      abb15(63)=abb15(52)*abb15(62)
      abb15(61)=-2.0_ki*abb15(63)+abb15(61)
      abb15(61)=spbk3k1*abb15(61)
      abb15(63)=-spbl6k3*abb15(12)
      abb15(64)=spbl5k3*abb15(58)
      abb15(63)=abb15(63)+abb15(64)
      abb15(63)=spal5l6*abb15(51)*abb15(63)
      abb15(48)=abb15(63)+abb15(61)+abb15(48)+abb15(56)
      abb15(48)=spak4k7*abb15(48)
      abb15(56)=abb15(28)*abb15(30)
      abb15(61)=abb15(32)*spak1k4
      abb15(63)=abb15(61)*spak1l6
      abb15(56)=abb15(56)+abb15(63)
      abb15(63)=abb15(55)-es712
      abb15(64)=abb15(56)*abb15(63)
      abb15(65)=abb15(52)*abb15(58)
      abb15(66)=spak1k4*abb15(65)
      abb15(30)=abb15(12)*abb15(30)
      abb15(67)=spbk7k2*abb15(30)
      abb15(66)=abb15(66)+abb15(67)
      abb15(66)=spbk3k1*spak1k7*abb15(66)
      abb15(64)=abb15(66)+abb15(64)
      abb15(64)=spbk2k1*abb15(64)
      abb15(66)=spal6k7*abb15(54)
      abb15(67)=spal5k7*abb15(52)
      abb15(66)=abb15(67)+abb15(66)
      abb15(67)=spbk3k1*spak1k4
      abb15(66)=-abb15(10)*abb15(67)*abb15(66)
      abb15(68)=spbk3k1*spak1l6**2
      abb15(69)=spak4k7*spbk7k2
      abb15(70)=-abb15(58)*abb15(69)*abb15(68)
      abb15(71)=spal6k7*abb15(67)*abb15(65)
      abb15(70)=abb15(70)+abb15(71)
      abb15(70)=spbl6k2*abb15(70)
      abb15(71)=spbk3k1*spak1l5**2
      abb15(72)=-abb15(12)*abb15(69)*abb15(71)
      abb15(73)=abb15(54)*abb15(12)
      abb15(74)=spal5k7*abb15(67)*abb15(73)
      abb15(72)=abb15(72)+abb15(74)
      abb15(72)=spbl5k2*abb15(72)
      abb15(48)=abb15(72)+abb15(70)+abb15(66)+abb15(64)+abb15(48)
      abb15(48)=8.0_ki*abb15(48)
      abb15(64)=abb15(17)*spbl6k3
      abb15(66)=abb15(14)*spbl5k3
      abb15(64)=abb15(64)-abb15(66)
      abb15(64)=abb15(64)*spal5l6
      abb15(37)=spbe7k2*abb15(37)
      abb15(49)=abb15(49)*abb15(37)
      abb15(66)=-abb15(49)*abb15(25)
      abb15(70)=abb15(66)*abb15(8)
      abb15(72)=abb15(70)*spak2l5
      abb15(45)=abb15(45)*abb15(37)
      abb15(25)=-abb15(45)*abb15(25)
      abb15(74)=abb15(25)*abb15(7)
      abb15(75)=abb15(74)*spak2l6
      abb15(72)=abb15(72)+abb15(75)
      abb15(26)=-abb15(37)*abb15(26)
      abb15(75)=2.0_ki*abb15(26)
      abb15(76)=abb15(64)+abb15(72)-abb15(75)
      abb15(77)=spak1k7*spbk7k2
      abb15(76)=abb15(76)*abb15(77)*spak4e7
      abb15(78)=abb15(14)*spak4e7
      abb15(79)=abb15(68)*abb15(78)
      abb15(80)=abb15(67)*spal6e7
      abb15(81)=abb15(80)*abb15(35)
      abb15(79)=abb15(79)-abb15(81)
      abb15(79)=abb15(79)*spbl6k2
      abb15(81)=abb15(17)*spak4e7
      abb15(82)=abb15(71)*abb15(81)
      abb15(83)=abb15(67)*spal5e7
      abb15(84)=abb15(83)*abb15(39)
      abb15(82)=abb15(82)-abb15(84)
      abb15(82)=abb15(82)*spbl5k2
      abb15(16)=abb15(16)*spbk3k1
      abb15(84)=spbk2k1*abb15(16)*spak1e7
      abb15(85)=abb15(52)*abb15(14)
      abb15(86)=abb15(39)*spbk7k2
      abb15(85)=abb15(85)+abb15(86)
      abb15(85)=abb15(85)*spak1k7
      abb15(86)=2.0_ki*spak1l6
      abb15(87)=abb15(86)*abb15(21)
      abb15(85)=abb15(85)+abb15(87)
      abb15(85)=abb15(85)*spbk3k1
      abb15(87)=spak4e7*abb15(85)
      abb15(83)=abb15(83)*abb15(13)
      abb15(80)=abb15(80)*abb15(21)
      abb15(33)=abb15(42)+abb15(33)
      abb15(42)=abb15(33)*spak4e7
      abb15(88)=abb15(55)*abb15(42)
      abb15(76)=abb15(83)+abb15(80)-abb15(87)+abb15(88)-abb15(84)+abb15(79)+abb&
      &15(82)+abb15(76)
      abb15(79)=8.0_ki*abb15(76)
      abb15(80)=spbk7k3*spak1k7
      abb15(82)=spae7k7*spbk7k2
      abb15(83)=abb15(80)*abb15(82)
      abb15(84)=abb15(83)*abb15(17)
      abb15(87)=abb15(82)*spak1k2
      abb15(88)=abb15(87)*abb15(29)
      abb15(84)=abb15(84)-abb15(88)
      abb15(84)=abb15(84)*spak4l5
      abb15(89)=abb15(83)*abb15(14)
      abb15(90)=abb15(87)*abb15(11)
      abb15(89)=abb15(89)-abb15(90)
      abb15(89)=abb15(89)*spak4l6
      abb15(84)=abb15(84)+abb15(89)
      abb15(89)=8.0_ki*abb15(84)
      abb15(91)=abb15(28)*spal5k7
      abb15(92)=abb15(32)*spal6k7
      abb15(91)=abb15(91)+abb15(92)
      abb15(92)=spbk7k2*spak1k4
      abb15(93)=abb15(92)*abb15(91)
      abb15(53)=abb15(53)*spak4k7
      abb15(53)=abb15(93)-abb15(53)
      abb15(93)=16.0_ki*abb15(53)
      abb15(94)=abb15(11)*spak1k4
      abb15(95)=abb15(94)*spal6e7
      abb15(96)=abb15(29)*spak1k4
      abb15(97)=abb15(96)*spal5e7
      abb15(42)=-abb15(42)+abb15(95)+abb15(97)
      abb15(95)=16.0_ki*abb15(42)
      abb15(97)=abb15(25)*abb15(87)
      abb15(45)=-abb15(45)*abb15(9)
      abb15(98)=abb15(45)*abb15(83)
      abb15(97)=abb15(97)+abb15(98)
      abb15(97)=abb15(97)*abb15(7)
      abb15(37)=-abb15(37)*abb15(5)*abb15(9)*abb15(6)
      abb15(98)=abb15(37)*abb15(83)
      abb15(99)=abb15(87)*abb15(26)
      abb15(98)=abb15(99)-abb15(98)
      abb15(99)=abb15(98)*abb15(8)
      abb15(97)=abb15(97)-abb15(99)
      abb15(99)=-spak4l6*abb15(97)
      abb15(100)=abb15(66)*abb15(87)
      abb15(9)=-abb15(49)*abb15(9)
      abb15(49)=abb15(9)*abb15(83)
      abb15(49)=abb15(100)+abb15(49)
      abb15(49)=abb15(49)*abb15(8)
      abb15(83)=abb15(98)*abb15(7)
      abb15(49)=abb15(49)-abb15(83)
      abb15(83)=-spak4l5*abb15(49)
      abb15(76)=abb15(83)+abb15(99)-abb15(76)
      abb15(76)=8.0_ki*abb15(76)
      abb15(83)=abb15(8)*spak1k4
      abb15(98)=abb15(83)*abb15(41)
      abb15(99)=abb15(7)*spak1k4
      abb15(100)=abb15(46)*abb15(99)
      abb15(98)=abb15(98)-abb15(100)
      abb15(100)=-spal6k7*abb15(98)
      abb15(101)=abb15(99)*abb15(41)
      abb15(102)=abb15(44)*abb15(83)
      abb15(101)=abb15(101)+abb15(102)
      abb15(102)=-spal5k7*abb15(101)
      abb15(100)=abb15(102)+abb15(100)
      abb15(100)=spbk7k2*abb15(100)
      abb15(102)=-abb15(46)*abb15(52)
      abb15(103)=abb15(41)*abb15(54)
      abb15(102)=abb15(102)+abb15(103)
      abb15(102)=abb15(7)*abb15(102)
      abb15(103)=abb15(41)*abb15(52)
      abb15(104)=abb15(44)*abb15(54)
      abb15(103)=abb15(103)+abb15(104)
      abb15(103)=abb15(8)*abb15(103)
      abb15(102)=abb15(102)+abb15(103)
      abb15(102)=spak4k7*abb15(102)
      abb15(100)=abb15(102)+abb15(100)
      abb15(100)=16.0_ki*abb15(100)
      abb15(102)=abb15(66)*spak1l5
      abb15(103)=abb15(26)*spak1l6
      abb15(102)=abb15(103)-abb15(102)
      abb15(102)=abb15(102)*abb15(8)
      abb15(103)=abb15(25)*spak1l6
      abb15(104)=abb15(26)*spak1l5
      abb15(103)=abb15(104)-abb15(103)
      abb15(103)=abb15(103)*abb15(7)
      abb15(102)=abb15(102)+abb15(103)
      abb15(103)=spak4e7*abb15(102)
      abb15(25)=abb15(25)*abb15(99)
      abb15(104)=abb15(83)*abb15(26)
      abb15(104)=abb15(104)-abb15(25)
      abb15(104)=abb15(104)*spal6e7
      abb15(66)=abb15(66)*abb15(83)
      abb15(83)=abb15(99)*abb15(26)
      abb15(83)=abb15(83)-abb15(66)
      abb15(83)=abb15(83)*spal5e7
      abb15(83)=-abb15(103)+abb15(104)+abb15(83)
      abb15(83)=16.0_ki*abb15(83)
      abb15(99)=abb15(14)*spak1k7
      abb15(103)=abb15(82)*abb15(99)
      abb15(104)=spae7k7*abb15(21)
      abb15(104)=abb15(104)+abb15(103)
      abb15(104)=spbk7k3*abb15(104)
      abb15(90)=abb15(104)-abb15(90)
      abb15(90)=spak4l6*abb15(90)
      abb15(104)=abb15(17)*spak1k7
      abb15(105)=abb15(104)*abb15(82)
      abb15(106)=spae7k7*abb15(13)
      abb15(106)=abb15(106)+abb15(105)
      abb15(106)=spbk7k3*abb15(106)
      abb15(88)=abb15(106)-abb15(88)
      abb15(88)=spak4l5*abb15(88)
      abb15(33)=abb15(33)*spak2k4
      abb15(106)=abb15(82)*abb15(33)
      abb15(36)=-spbl6k2*abb15(36)
      abb15(40)=-spbl5k2*abb15(40)
      abb15(20)=abb15(40)+abb15(36)+abb15(20)+abb15(88)+abb15(106)+abb15(90)
      abb15(20)=8.0_ki*abb15(20)
      abb15(36)=abb15(15)*spbl5k3
      abb15(40)=abb15(18)*spbl6k3
      abb15(88)=abb15(36)-abb15(40)
      abb15(88)=abb15(88)*spal5l6
      abb15(90)=abb15(66)*spak2l5
      abb15(106)=abb15(25)*spak2l6
      abb15(107)=abb15(75)*spak1k4
      abb15(90)=-abb15(107)+abb15(90)+abb15(106)
      abb15(88)=-abb15(90)+abb15(16)+abb15(88)
      abb15(106)=-abb15(82)*abb15(88)
      abb15(34)=-spbk7k1*abb15(34)
      abb15(34)=abb15(34)-abb15(84)+abb15(106)
      abb15(34)=4.0_ki*abb15(34)
      abb15(53)=8.0_ki*abb15(53)
      abb15(42)=8.0_ki*abb15(42)
      abb15(25)=abb15(25)*abb15(55)
      abb15(21)=-abb15(67)*abb15(21)
      abb15(84)=spbk7e7*spak4k7
      abb15(106)=abb15(77)*abb15(84)
      abb15(108)=-abb15(47)*abb15(106)
      abb15(109)=abb15(77)*spak2k4
      abb15(110)=-abb15(74)*abb15(109)
      abb15(21)=abb15(110)+abb15(21)+abb15(108)+abb15(25)
      abb15(21)=spak2l6*abb15(21)
      abb15(25)=abb15(66)*abb15(55)
      abb15(13)=-abb15(67)*abb15(13)
      abb15(66)=abb15(50)*abb15(106)
      abb15(108)=-abb15(70)*abb15(109)
      abb15(13)=abb15(108)+abb15(13)+abb15(66)+abb15(25)
      abb15(13)=spak2l5*abb15(13)
      abb15(25)=es712*abb15(88)
      abb15(66)=abb15(28)*spak1l5
      abb15(88)=abb15(32)*spak1l6
      abb15(66)=abb15(66)+abb15(88)
      abb15(66)=abb15(66)*abb15(84)
      abb15(33)=abb15(66)-abb15(33)
      abb15(66)=abb15(33)-abb15(107)
      abb15(88)=-abb15(16)+abb15(66)
      abb15(88)=es71*abb15(88)
      abb15(16)=-2.0_ki*abb15(16)+abb15(66)
      abb15(16)=es12*abb15(16)
      abb15(66)=abb15(18)*abb15(55)
      abb15(107)=-abb15(17)*abb15(109)
      abb15(108)=abb15(12)*abb15(84)
      abb15(110)=abb15(77)*abb15(108)
      abb15(66)=abb15(110)+abb15(107)+abb15(66)
      abb15(66)=spbl6k3*abb15(66)
      abb15(55)=-abb15(15)*abb15(55)
      abb15(107)=abb15(14)*abb15(109)
      abb15(109)=abb15(58)*abb15(84)
      abb15(110)=-abb15(77)*abb15(109)
      abb15(55)=abb15(110)+abb15(107)+abb15(55)
      abb15(55)=spbl5k3*abb15(55)
      abb15(55)=abb15(66)+abb15(55)
      abb15(55)=spal5l6*abb15(55)
      abb15(65)=abb15(73)+abb15(65)
      abb15(65)=abb15(65)*spak1k7
      abb15(66)=abb15(86)*abb15(62)
      abb15(66)=abb15(66)-abb15(65)
      abb15(66)=abb15(66)*abb15(84)
      abb15(73)=-spak1k4*abb15(59)
      abb15(30)=abb15(73)-abb15(30)
      abb15(73)=spbk7e7*spak1k7
      abb15(86)=abb15(73)*spbk2k1
      abb15(30)=abb15(30)*abb15(86)
      abb15(30)=abb15(30)+abb15(66)
      abb15(30)=spbk3k1*abb15(30)
      abb15(66)=abb15(77)*abb15(75)
      abb15(66)=abb15(66)+abb15(85)
      abb15(66)=spak2k4*abb15(66)
      abb15(85)=abb15(14)*spak2k4
      abb15(85)=abb15(85)-abb15(109)
      abb15(68)=-abb15(68)*abb15(85)
      abb15(107)=spak2l6*abb15(67)*abb15(35)
      abb15(110)=abb15(67)*spbk7e7
      abb15(59)=-spal6k7*abb15(110)*abb15(59)
      abb15(59)=abb15(59)+abb15(107)+abb15(68)
      abb15(59)=spbl6k2*abb15(59)
      abb15(68)=abb15(17)*spak2k4
      abb15(68)=abb15(68)-abb15(108)
      abb15(71)=-abb15(71)*abb15(68)
      abb15(107)=spak2l5*abb15(67)*abb15(39)
      abb15(57)=-spal5k7*abb15(110)*abb15(57)
      abb15(57)=abb15(57)+abb15(107)+abb15(71)
      abb15(57)=spbl5k2*abb15(57)
      abb15(56)=-spbk2k1*spbk7e7*abb15(56)
      abb15(31)=-spbk7k1*abb15(31)
      abb15(31)=abb15(56)+abb15(31)
      abb15(31)=spak2k7*abb15(31)
      abb15(56)=-spal6k7*abb15(62)
      abb15(10)=spal5k7*spak1l6*abb15(10)
      abb15(10)=abb15(10)+abb15(56)
      abb15(10)=abb15(110)*abb15(10)
      abb15(43)=abb15(106)*abb15(43)
      abb15(10)=abb15(31)+abb15(57)+abb15(59)+abb15(25)+abb15(13)+abb15(21)+abb&
      &15(55)+abb15(16)+abb15(88)+abb15(66)+abb15(43)+abb15(10)+abb15(30)
      abb15(10)=4.0_ki*abb15(10)
      abb15(13)=spbk7e7*spak1k4
      abb15(16)=abb15(13)*abb15(91)
      abb15(21)=abb15(94)*spak2l6
      abb15(25)=abb15(96)*spak2l5
      abb15(16)=abb15(16)-abb15(33)-abb15(21)-abb15(25)
      abb15(21)=8.0_ki*abb15(16)
      abb15(25)=spak1l6*abb15(46)
      abb15(30)=-spak1l5*abb15(41)
      abb15(25)=abb15(25)+abb15(30)
      abb15(25)=abb15(7)*abb15(25)
      abb15(30)=-spak1l6*abb15(41)
      abb15(31)=-spak1l5*abb15(44)
      abb15(30)=abb15(30)+abb15(31)
      abb15(30)=abb15(8)*abb15(30)
      abb15(25)=abb15(30)+abb15(25)
      abb15(25)=abb15(84)*abb15(25)
      abb15(30)=-spak2k4*abb15(102)
      abb15(31)=abb15(41)*abb15(13)
      abb15(33)=abb15(31)*abb15(8)
      abb15(43)=-abb15(13)*abb15(47)
      abb15(43)=abb15(43)+abb15(33)
      abb15(43)=spal6k7*abb15(43)
      abb15(31)=abb15(31)*abb15(7)
      abb15(44)=abb15(13)*abb15(50)
      abb15(44)=abb15(31)+abb15(44)
      abb15(44)=spal5k7*abb15(44)
      abb15(25)=abb15(44)+abb15(43)+abb15(30)-abb15(90)+abb15(25)
      abb15(25)=8.0_ki*abb15(25)
      abb15(16)=-4.0_ki*abb15(16)
      abb15(30)=-spak2k4*abb15(97)
      abb15(43)=abb15(19)*abb15(99)
      abb15(44)=abb15(27)*abb15(11)
      abb15(43)=abb15(44)-abb15(43)
      abb15(44)=spbk7l6*spak4l6
      abb15(46)=spbk7l5*spak4l5
      abb15(44)=abb15(44)+abb15(46)
      abb15(43)=-abb15(43)*abb15(44)
      abb15(46)=abb15(15)*abb15(19)
      abb15(55)=-es71*abb15(46)
      abb15(56)=-abb15(94)*abb15(38)
      abb15(30)=abb15(56)+abb15(30)+abb15(55)+abb15(43)
      abb15(30)=4.0_ki*abb15(30)
      abb15(43)=abb15(77)*spbk7k3
      abb15(52)=abb15(52)*spbl6k3
      abb15(54)=abb15(54)*spbl5k3
      abb15(43)=-abb15(54)+abb15(43)-abb15(52)
      abb15(43)=abb15(43)*spak4k7
      abb15(52)=abb15(77)*abb15(67)
      abb15(54)=spal6k7*spbl6k3
      abb15(55)=spal5k7*spbl5k3
      abb15(54)=abb15(54)+abb15(55)
      abb15(55)=abb15(54)*abb15(92)
      abb15(43)=abb15(43)+abb15(52)+abb15(55)
      abb15(52)=-abb15(58)*abb15(43)
      abb15(55)=abb15(98)-abb15(61)
      abb15(55)=abb15(55)*abb15(63)
      abb15(56)=abb15(41)*abb15(8)
      abb15(56)=abb15(56)-abb15(47)
      abb15(57)=abb15(32)-abb15(56)
      abb15(59)=abb15(69)*spak1k2
      abb15(57)=abb15(59)*abb15(57)
      abb15(52)=abb15(52)+abb15(57)+abb15(55)
      abb15(52)=8.0_ki*abb15(52)
      abb15(55)=spbl5k3*spak1l5
      abb15(57)=abb15(55)-abb15(80)
      abb15(57)=abb15(57)*abb15(78)
      abb15(61)=spak4e7*abb15(35)*spbl6k3
      abb15(62)=abb15(36)*spal5e7
      abb15(66)=abb15(67)*spak1e7
      abb15(69)=abb15(66)*abb15(14)
      abb15(71)=abb15(15)*spbl6k3
      abb15(78)=abb15(71)*spal6e7
      abb15(11)=abb15(74)-abb15(11)
      abb15(74)=spak1k2*spak4e7
      abb15(88)=abb15(11)*abb15(74)
      abb15(90)=abb15(74)*abb15(26)
      abb15(91)=abb15(90)*abb15(8)
      abb15(57)=-abb15(61)+abb15(62)-abb15(57)-abb15(91)+abb15(69)+abb15(78)+ab&
      &b15(88)
      abb15(57)=8.0_ki*abb15(57)
      abb15(61)=-8.0_ki*abb15(46)
      abb15(46)=4.0_ki*abb15(46)
      abb15(62)=abb15(8)*abb15(26)
      abb15(11)=abb15(62)-abb15(11)
      abb15(11)=spak1k2*abb15(11)
      abb15(62)=-abb15(14)*abb15(80)
      abb15(11)=abb15(62)+abb15(11)
      abb15(11)=spak2k4*abb15(11)
      abb15(47)=abb15(47)+abb15(32)
      abb15(47)=abb15(13)*abb15(47)
      abb15(15)=spbk7k3*abb15(15)
      abb15(15)=-abb15(33)+abb15(15)+abb15(47)
      abb15(15)=spak2k7*abb15(15)
      abb15(33)=abb15(84)*spak1k2
      abb15(47)=abb15(33)*abb15(56)
      abb15(54)=abb15(54)*abb15(13)
      abb15(56)=abb15(110)*spak1k7
      abb15(54)=abb15(56)+abb15(54)
      abb15(56)=abb15(58)*abb15(54)
      abb15(62)=abb15(14)*abb15(67)
      abb15(32)=-abb15(32)*abb15(84)
      abb15(32)=abb15(32)+abb15(62)
      abb15(32)=spak1k2*abb15(32)
      abb15(62)=spak2k4*abb15(35)
      abb15(69)=-spak1l6*abb15(109)
      abb15(62)=abb15(69)+abb15(62)
      abb15(62)=spbl6k3*abb15(62)
      abb15(55)=abb15(85)*abb15(55)
      abb15(69)=-spak2l6*abb15(71)
      abb15(36)=-spak2l5*abb15(36)
      abb15(71)=abb15(80)*abb15(109)
      abb15(11)=abb15(15)+abb15(36)+abb15(69)+abb15(55)+abb15(62)+abb15(11)+abb&
      &15(32)+abb15(71)+abb15(56)+abb15(47)
      abb15(11)=4.0_ki*abb15(11)
      abb15(15)=-spak2k4*abb15(49)
      abb15(32)=abb15(104)*abb15(19)
      abb15(27)=abb15(27)*abb15(29)
      abb15(27)=abb15(27)-abb15(32)
      abb15(27)=-abb15(27)*abb15(44)
      abb15(32)=abb15(18)*abb15(19)
      abb15(36)=-es71*abb15(32)
      abb15(38)=-abb15(96)*abb15(38)
      abb15(15)=abb15(38)+abb15(15)+abb15(36)+abb15(27)
      abb15(15)=4.0_ki*abb15(15)
      abb15(27)=-abb15(12)*abb15(43)
      abb15(36)=abb15(28)*spak1k4
      abb15(36)=abb15(36)-abb15(101)
      abb15(36)=-abb15(36)*abb15(63)
      abb15(38)=abb15(41)*abb15(7)
      abb15(38)=abb15(38)+abb15(50)
      abb15(41)=abb15(28)-abb15(38)
      abb15(41)=abb15(59)*abb15(41)
      abb15(27)=abb15(27)+abb15(41)+abb15(36)
      abb15(27)=8.0_ki*abb15(27)
      abb15(36)=spbl6k3*spak1l6
      abb15(41)=abb15(36)-abb15(80)
      abb15(41)=abb15(41)*abb15(81)
      abb15(43)=spak4e7*abb15(39)*spbl5k3
      abb15(44)=abb15(40)*spal6e7
      abb15(47)=abb15(66)*abb15(17)
      abb15(49)=abb15(18)*spbl5k3
      abb15(55)=abb15(49)*spal5e7
      abb15(29)=abb15(70)-abb15(29)
      abb15(56)=abb15(29)*abb15(74)
      abb15(59)=abb15(90)*abb15(7)
      abb15(41)=-abb15(43)+abb15(44)-abb15(41)-abb15(59)+abb15(47)+abb15(55)+ab&
      &b15(56)
      abb15(41)=8.0_ki*abb15(41)
      abb15(43)=-8.0_ki*abb15(32)
      abb15(32)=4.0_ki*abb15(32)
      abb15(26)=abb15(7)*abb15(26)
      abb15(26)=abb15(26)-abb15(29)
      abb15(26)=spak1k2*abb15(26)
      abb15(29)=-abb15(17)*abb15(80)
      abb15(26)=abb15(29)+abb15(26)
      abb15(26)=spak2k4*abb15(26)
      abb15(29)=abb15(50)-abb15(28)
      abb15(13)=-abb15(13)*abb15(29)
      abb15(18)=spbk7k3*abb15(18)
      abb15(13)=-abb15(31)+abb15(18)+abb15(13)
      abb15(13)=spak2k7*abb15(13)
      abb15(18)=abb15(33)*abb15(38)
      abb15(29)=abb15(12)*abb15(54)
      abb15(31)=abb15(17)*abb15(67)
      abb15(28)=-abb15(28)*abb15(84)
      abb15(28)=abb15(28)+abb15(31)
      abb15(28)=spak1k2*abb15(28)
      abb15(31)=abb15(68)*abb15(36)
      abb15(33)=spak2k4*abb15(39)
      abb15(36)=-spak1l5*abb15(108)
      abb15(33)=abb15(36)+abb15(33)
      abb15(33)=spbl5k3*abb15(33)
      abb15(36)=-spak2l6*abb15(40)
      abb15(38)=-spak2l5*abb15(49)
      abb15(40)=abb15(80)*abb15(108)
      abb15(13)=abb15(13)+abb15(38)+abb15(36)+abb15(33)+abb15(31)+abb15(26)+abb&
      &15(28)+abb15(40)+abb15(29)+abb15(18)
      abb15(13)=4.0_ki*abb15(13)
      abb15(18)=-spbk7l6*abb15(105)
      abb15(26)=spbk7l5*abb15(103)
      abb15(18)=abb15(26)+abb15(18)
      abb15(18)=spal5l6*abb15(18)
      abb15(9)=abb15(9)*abb15(8)
      abb15(26)=abb15(9)*spak2l5
      abb15(28)=abb15(45)*abb15(7)
      abb15(29)=abb15(28)*spak2l6
      abb15(26)=abb15(29)+abb15(26)+2.0_ki*abb15(37)
      abb15(29)=abb15(26)*abb15(51)*spae7k7
      abb15(31)=abb15(39)+abb15(35)
      abb15(33)=abb15(82)*abb15(31)
      abb15(35)=es12*abb15(33)
      abb15(18)=abb15(35)+abb15(29)+abb15(18)
      abb15(18)=4.0_ki*abb15(18)
      abb15(29)=-16.0_ki*spbk2k1*abb15(65)
      abb15(35)=16.0_ki*spak1e7
      abb15(36)=spbk2k1*abb15(31)*abb15(35)
      abb15(38)=-8.0_ki*abb15(33)
      abb15(39)=es12*abb15(31)
      abb15(40)=abb15(60)*abb15(86)
      abb15(39)=abb15(39)+abb15(40)
      abb15(39)=8.0_ki*abb15(39)
      abb15(40)=4.0_ki*abb15(14)
      abb15(44)=-abb15(87)*abb15(40)
      abb15(45)=16.0_ki*abb15(77)
      abb15(47)=abb15(58)*abb15(45)
      abb15(49)=abb15(35)*abb15(14)
      abb15(50)=-spak1k2*abb15(14)
      abb15(51)=-abb15(58)*abb15(73)
      abb15(50)=abb15(51)+abb15(50)
      abb15(50)=8.0_ki*abb15(50)
      abb15(51)=4.0_ki*abb15(17)
      abb15(54)=-abb15(87)*abb15(51)
      abb15(45)=abb15(12)*abb15(45)
      abb15(35)=abb15(35)*abb15(17)
      abb15(55)=-spak1k2*abb15(17)
      abb15(12)=-abb15(12)*abb15(73)
      abb15(12)=abb15(12)+abb15(55)
      abb15(12)=8.0_ki*abb15(12)
      abb15(55)=-spae7k7*abb15(40)
      abb15(56)=-spae7k7*abb15(51)
      abb15(58)=abb15(22)*abb15(14)
      abb15(59)=-4.0_ki*abb15(58)
      abb15(22)=-abb15(22)*abb15(51)
      abb15(60)=-abb15(24)*abb15(40)
      abb15(24)=abb15(24)*abb15(17)
      abb15(62)=-4.0_ki*abb15(24)
      abb15(63)=abb15(82)*spak2k4
      abb15(40)=-abb15(63)*abb15(40)
      abb15(51)=-abb15(63)*abb15(51)
      abb15(64)=-abb15(64)-abb15(72)
      abb15(63)=abb15(63)*abb15(64)
      abb15(33)=spbk3k1*abb15(33)
      abb15(64)=abb15(82)*abb15(75)
      abb15(33)=abb15(64)+abb15(33)
      abb15(33)=spak2k4*abb15(33)
      abb15(33)=abb15(33)+abb15(63)
      abb15(33)=4.0_ki*abb15(33)
      abb15(24)=abb15(24)+abb15(58)
      abb15(58)=8.0_ki*abb15(24)
      abb15(28)=abb15(28)*abb15(19)
      abb15(37)=abb15(37)*abb15(19)
      abb15(63)=abb15(37)*abb15(8)
      abb15(28)=abb15(28)+abb15(63)
      abb15(63)=spak4l6*abb15(28)
      abb15(9)=abb15(9)*abb15(19)
      abb15(19)=abb15(37)*abb15(7)
      abb15(9)=abb15(9)+abb15(19)
      abb15(19)=spak4l5*abb15(9)
      abb15(19)=abb15(63)+abb15(19)
      abb15(19)=8.0_ki*abb15(19)
      abb15(24)=4.0_ki*abb15(24)
      abb15(37)=4.0_ki*spak2k4
      abb15(28)=abb15(28)*abb15(37)
      abb15(9)=abb15(9)*abb15(37)
      abb15(14)=abb15(14)*spbk7l5
      abb15(17)=spbk7l6*abb15(17)
      abb15(14)=-abb15(14)+abb15(17)
      abb15(14)=spal5l6*abb15(14)
      abb15(17)=spbk7k1*abb15(31)
      abb15(14)=abb15(17)+abb15(14)
      abb15(14)=spae7k7*abb15(14)
      abb15(17)=-abb15(82)*abb15(26)
      abb15(14)=abb15(17)+abb15(14)
      abb15(14)=4.0_ki*abb15(14)
      R2d15=0.0_ki
      rat2 = rat2 + R2d15
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='15' value='", &
          & R2d15, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd15h0
