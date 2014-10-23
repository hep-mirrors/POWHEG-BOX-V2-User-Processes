module     p0_dbaru_epnebbbarg_abbrevd81h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(117), public :: abb81
   complex(ki), public :: R2d81
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
      abb81(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb81(2)=NC**(-1)
      abb81(3)=sqrt2**(-1)
      abb81(4)=es56**(-1)
      abb81(5)=spak2k7**(-1)
      abb81(6)=spbl5k2**(-1)
      abb81(7)=spak2l6**(-1)
      abb81(8)=c4*abb81(2)**2
      abb81(9)=c3*abb81(2)
      abb81(10)=c2+abb81(8)-abb81(9)
      abb81(11)=abb81(4)*i_*CVDU*abb81(3)*abb81(1)
      abb81(12)=TR*gW
      abb81(12)=abb81(12)**2
      abb81(13)=abb81(11)*abb81(12)*abb81(5)
      abb81(14)=abb81(13)*spak1k2
      abb81(15)=abb81(10)*abb81(14)
      abb81(16)=spak2k4*spbk7k2
      abb81(17)=abb81(16)*abb81(15)
      abb81(18)=spak4l5*spbl6k2
      abb81(19)=abb81(18)*spbk4k3
      abb81(20)=abb81(17)*abb81(19)
      abb81(21)=spbk7k3*abb81(15)
      abb81(22)=abb81(21)*spbl6k2
      abb81(23)=abb81(22)*spal5k7
      abb81(24)=abb81(23)*abb81(16)
      abb81(25)=es712-es71
      abb81(26)=abb81(25)-es12
      abb81(22)=-abb81(22)*abb81(26)
      abb81(27)=abb81(22)*spak4l5
      abb81(20)=-abb81(20)+abb81(24)+abb81(27)
      abb81(24)=16.0_ki*abb81(20)
      abb81(27)=16.0_ki*abb81(27)
      abb81(28)=abb81(6)*abb81(7)*mB**2
      abb81(29)=abb81(13)*abb81(28)
      abb81(30)=abb81(29)*abb81(10)
      abb81(31)=abb81(30)*spak1k4
      abb81(32)=abb81(31)*spbk4k3
      abb81(8)=abb81(8)+c2
      abb81(33)=-spbk7k3*abb81(8)
      abb81(34)=abb81(9)*spbk7k3
      abb81(33)=abb81(34)+abb81(33)
      abb81(29)=abb81(29)*abb81(33)
      abb81(33)=abb81(29)*spak1k7
      abb81(32)=abb81(32)-abb81(33)
      abb81(35)=abb81(32)*abb81(16)
      abb81(36)=abb81(29)*spak1k4
      abb81(37)=-abb81(36)*abb81(26)
      abb81(35)=abb81(35)+abb81(37)
      abb81(38)=-32.0_ki*abb81(35)
      abb81(37)=32.0_ki*abb81(37)
      abb81(39)=-64.0_ki*abb81(36)
      abb81(14)=abb81(14)*abb81(28)
      abb81(40)=-abb81(8)*abb81(14)*spbk7k3
      abb81(34)=abb81(34)*abb81(14)
      abb81(34)=abb81(34)+abb81(40)
      abb81(40)=-abb81(34)*abb81(25)
      abb81(41)=abb81(34)*es12
      abb81(40)=abb81(40)+abb81(41)
      abb81(42)=abb81(40)*spbk3k2
      abb81(43)=-abb81(13)*abb81(10)*spbk7k3
      abb81(44)=spbl6k3*spak1l5
      abb81(45)=abb81(26)*abb81(43)*abb81(44)
      abb81(42)=abb81(45)-abb81(42)
      abb81(42)=abb81(42)*spak3k4
      abb81(45)=spbk7k2*spak4k7
      abb81(46)=abb81(45)*abb81(34)
      abb81(47)=spbk7l6*spak1l5
      abb81(48)=abb81(47)*spak4k7
      abb81(49)=abb81(48)*abb81(43)
      abb81(46)=abb81(46)-abb81(49)
      abb81(50)=abb81(25)*abb81(46)
      abb81(41)=abb81(41)*abb81(45)
      abb81(49)=abb81(49)*es12
      abb81(41)=abb81(42)-abb81(50)+abb81(41)-abb81(49)
      abb81(42)=16.0_ki*abb81(41)
      abb81(14)=abb81(14)*abb81(10)
      abb81(49)=abb81(14)*spbk3k2
      abb81(8)=abb81(9)-abb81(8)
      abb81(8)=abb81(13)*abb81(8)
      abb81(9)=abb81(8)*spbl6k3
      abb81(13)=abb81(9)*spak1l5
      abb81(49)=abb81(49)-abb81(13)
      abb81(50)=-abb81(16)*abb81(49)
      abb81(51)=32.0_ki*abb81(50)
      abb81(20)=-abb81(20)-abb81(41)
      abb81(20)=8.0_ki*abb81(20)
      abb81(41)=16.0_ki*abb81(50)
      abb81(35)=16.0_ki*abb81(35)
      abb81(36)=32.0_ki*abb81(36)
      abb81(50)=8.0_ki*abb81(50)
      abb81(52)=abb81(34)*spbk7k2
      abb81(53)=abb81(43)*abb81(47)
      abb81(52)=abb81(52)-abb81(53)
      abb81(52)=abb81(52)*spak2k4
      abb81(53)=-16.0_ki*abb81(52)
      abb81(52)=8.0_ki*abb81(52)
      abb81(54)=-abb81(21)*abb81(26)
      abb81(55)=spak3k4*spbk3k2
      abb81(56)=abb81(55)-abb81(45)
      abb81(57)=8.0_ki*abb81(54)*abb81(56)
      abb81(58)=abb81(15)*spbk3k2
      abb81(16)=abb81(58)*abb81(16)
      abb81(59)=-16.0_ki*abb81(16)
      abb81(60)=32.0_ki*spak1k4*abb81(43)
      abb81(16)=8.0_ki*abb81(16)
      abb81(61)=16.0_ki*spak1k4
      abb81(62)=abb81(61)*abb81(43)
      abb81(63)=spak3k4*spbl6k3
      abb81(64)=spbk7l6*spak4k7
      abb81(64)=abb81(63)+abb81(64)
      abb81(54)=8.0_ki*abb81(54)*abb81(64)
      abb81(17)=abb81(17)*spbl6k3
      abb81(65)=abb81(43)*spak2k4
      abb81(66)=spak1k7*spbk7l6
      abb81(67)=abb81(66)*abb81(65)
      abb81(68)=spak1k4*spbk7l6
      abb81(69)=abb81(68)*abb81(8)*spbk4k3
      abb81(70)=abb81(69)*spak2k4
      abb81(71)=-abb81(10)*abb81(11)
      abb81(72)=abb81(12)*spbk7k3
      abb81(73)=-abb81(72)*abb81(71)
      abb81(74)=abb81(68)*abb81(73)
      abb81(17)=abb81(17)+abb81(67)+abb81(70)+abb81(74)
      abb81(67)=-16.0_ki*abb81(17)
      abb81(70)=16.0_ki*abb81(74)
      abb81(17)=8.0_ki*abb81(17)
      abb81(74)=abb81(15)*spbl6k2
      abb81(75)=abb81(26)*spbk7k4
      abb81(76)=spak4l5*abb81(74)*abb81(75)
      abb81(22)=-spak3l5*abb81(22)
      abb81(22)=abb81(76)+abb81(22)
      abb81(22)=8.0_ki*abb81(22)
      abb81(75)=abb81(31)*abb81(75)
      abb81(76)=-spak1k3*abb81(29)*abb81(26)
      abb81(75)=abb81(75)+abb81(76)
      abb81(75)=16.0_ki*abb81(75)
      abb81(76)=abb81(14)*spbk7k2
      abb81(77)=abb81(8)*abb81(47)
      abb81(76)=abb81(76)+abb81(77)
      abb81(78)=abb81(26)*abb81(76)
      abb81(79)=-16.0_ki*abb81(78)
      abb81(78)=8.0_ki*abb81(78)
      abb81(80)=abb81(26)*abb81(15)
      abb81(81)=-8.0_ki*spbk7k2*abb81(80)
      abb81(82)=spak1k3*abb81(73)
      abb81(80)=abb81(82)+abb81(80)
      abb81(80)=spbk7l6*abb81(80)
      abb81(71)=-abb81(12)*abb81(71)
      abb81(82)=abb81(71)*spbk7k4
      abb81(68)=abb81(68)*abb81(82)
      abb81(68)=abb81(68)+abb81(80)
      abb81(68)=8.0_ki*abb81(68)
      abb81(80)=abb81(76)*spbk4k3*spak2k4
      abb81(83)=abb81(73)*abb81(47)
      abb81(83)=abb81(83)+abb81(40)
      abb81(80)=abb81(80)+abb81(83)
      abb81(84)=16.0_ki*abb81(80)
      abb81(85)=16.0_ki*abb81(83)
      abb81(11)=abb81(11)*abb81(28)
      abb81(28)=spbk7k3**2
      abb81(12)=abb81(10)*abb81(12)*abb81(28)*abb81(11)
      abb81(86)=16.0_ki*spak1k3*abb81(12)
      abb81(87)=32.0_ki*abb81(34)
      abb81(80)=-8.0_ki*abb81(80)
      abb81(34)=-16.0_ki*abb81(34)
      abb81(28)=abb81(71)*abb81(28)
      abb81(28)=8.0_ki*abb81(28)
      abb81(88)=-spak1k3*abb81(28)
      abb81(89)=16.0_ki*abb81(21)
      abb81(21)=-8.0_ki*abb81(21)
      abb81(90)=abb81(26)*abb81(14)
      abb81(47)=abb81(71)*abb81(47)
      abb81(71)=abb81(90)+abb81(47)
      abb81(90)=-8.0_ki*spbk7k4*abb81(71)
      abb81(12)=-abb81(12)*abb81(61)
      abb81(28)=spak1k4*abb81(28)
      abb81(83)=-8.0_ki*abb81(83)
      abb81(91)=-abb81(15)*abb81(19)
      abb81(23)=abb81(91)+abb81(23)
      abb81(23)=8.0_ki*abb81(45)*abb81(23)
      abb81(91)=16.0_ki*abb81(18)
      abb81(92)=abb81(91)*abb81(58)
      abb81(32)=-16.0_ki*abb81(45)*abb81(32)
      abb81(93)=abb81(31)*spbk3k2
      abb81(94)=32.0_ki*abb81(93)
      abb81(95)=abb81(13)*spbk3k2
      abb81(96)=spbk3k2**2
      abb81(97)=abb81(96)*abb81(14)
      abb81(95)=abb81(95)-abb81(97)
      abb81(95)=abb81(95)*spak3k4
      abb81(97)=abb81(13)*abb81(45)
      abb81(77)=abb81(77)*spak4k7
      abb81(98)=abb81(77)*spbk3k2
      abb81(95)=abb81(95)+abb81(97)+abb81(98)
      abb81(97)=16.0_ki*abb81(95)
      abb81(98)=abb81(18)*abb81(58)
      abb81(95)=abb81(98)-abb81(95)
      abb81(95)=8.0_ki*abb81(95)
      abb81(93)=16.0_ki*abb81(93)
      abb81(46)=-8.0_ki*abb81(46)
      abb81(96)=-8.0_ki*spak3k4*abb81(15)*abb81(96)
      abb81(64)=-abb81(58)*abb81(64)
      abb81(98)=-spbl6k3*abb81(15)*abb81(45)
      abb81(69)=-spak4k7*abb81(69)
      abb81(99)=abb81(43)*spak4k7
      abb81(100)=-abb81(99)*abb81(66)
      abb81(64)=abb81(100)+abb81(69)+abb81(98)+abb81(64)
      abb81(64)=8.0_ki*abb81(64)
      abb81(61)=abb81(61)*abb81(9)
      abb81(69)=8.0_ki*spak1k4
      abb81(69)=-abb81(9)*abb81(69)
      abb81(98)=-spal5k7*spbk7k2*abb81(74)
      abb81(100)=spak3l5*spbl6k2
      abb81(58)=abb81(58)*abb81(100)
      abb81(15)=spbk4k2*abb81(15)*abb81(18)
      abb81(15)=abb81(15)+abb81(98)+abb81(58)
      abb81(15)=8.0_ki*abb81(15)
      abb81(58)=spak1k7*spbk7k2*abb81(30)
      abb81(98)=abb81(30)*spbk3k2
      abb81(101)=spak1k3*abb81(98)
      abb81(31)=spbk4k2*abb81(31)
      abb81(31)=abb81(31)+abb81(58)+abb81(101)
      abb81(31)=16.0_ki*abb81(31)
      abb81(58)=abb81(8)*spak1l5
      abb81(101)=-16.0_ki*spbl6k2*abb81(58)
      abb81(102)=8.0_ki*abb81(8)
      abb81(103)=abb81(102)*spak1l5
      abb81(104)=spbl6k2*abb81(103)
      abb81(76)=-8.0_ki*abb81(76)
      abb81(105)=-spbl6k4*spak1k4
      abb81(66)=abb81(105)+abb81(66)
      abb81(66)=abb81(8)*abb81(66)
      abb81(9)=-spak1k3*abb81(9)
      abb81(9)=abb81(9)+abb81(74)+abb81(66)
      abb81(9)=8.0_ki*abb81(9)
      abb81(66)=abb81(45)*abb81(14)
      abb81(66)=abb81(66)+abb81(77)
      abb81(74)=8.0_ki*spbk4k3*abb81(66)
      abb81(105)=16.0_ki*abb81(49)
      abb81(33)=-32.0_ki*abb81(33)
      abb81(106)=8.0_ki*abb81(49)
      abb81(43)=16.0_ki*spak1k7*abb81(43)
      abb81(107)=-spbk4k2*abb81(14)
      abb81(58)=spbl6k4*abb81(58)
      abb81(58)=abb81(107)+abb81(58)
      abb81(58)=8.0_ki*abb81(58)
      abb81(29)=abb81(29)*spak4k7
      abb81(107)=-es12*abb81(25)
      abb81(108)=es12**2
      abb81(107)=abb81(108)+abb81(107)
      abb81(107)=abb81(29)*abb81(107)
      abb81(10)=abb81(10)*abb81(11)*abb81(72)
      abb81(11)=abb81(55)*abb81(10)
      abb81(72)=es12*abb81(11)
      abb81(63)=spak1l5*abb81(63)
      abb81(63)=abb81(48)+abb81(63)
      abb81(63)=spbk2k1*abb81(73)*abb81(63)
      abb81(63)=abb81(63)+abb81(72)+abb81(107)
      abb81(63)=8.0_ki*abb81(63)
      abb81(72)=abb81(30)*es12
      abb81(107)=spak2k4*spbk3k2
      abb81(109)=abb81(72)*abb81(107)
      abb81(110)=abb81(13)*spak2k4
      abb81(111)=abb81(110)*spbk2k1
      abb81(112)=spal5k7*spbl6k2
      abb81(65)=abb81(65)*abb81(112)
      abb81(19)=abb81(19)*abb81(8)
      abb81(113)=abb81(19)*spak2k4
      abb81(114)=abb81(73)*abb81(18)
      abb81(65)=abb81(113)+abb81(114)-abb81(109)+abb81(111)-abb81(65)
      abb81(109)=16.0_ki*abb81(65)
      abb81(111)=abb81(91)*abb81(73)
      abb81(29)=abb81(29)*abb81(26)
      abb81(11)=-abb81(11)+abb81(29)
      abb81(11)=16.0_ki*abb81(11)
      abb81(29)=abb81(107)*abb81(30)
      abb81(113)=32.0_ki*abb81(29)
      abb81(65)=-8.0_ki*abb81(65)
      abb81(29)=-16.0_ki*abb81(29)
      abb81(114)=-abb81(99)*abb81(26)
      abb81(55)=abb81(73)*abb81(55)
      abb81(55)=abb81(55)+abb81(114)
      abb81(55)=8.0_ki*abb81(55)
      abb81(114)=16.0_ki*abb81(107)
      abb81(114)=abb81(8)*abb81(114)
      abb81(115)=-abb81(107)*abb81(102)
      abb81(116)=-abb81(72)*abb81(25)
      abb81(108)=abb81(30)*abb81(108)
      abb81(82)=-abb81(18)*abb81(82)
      abb81(47)=-spbk2k1*abb81(47)
      abb81(117)=-abb81(73)*abb81(100)
      abb81(47)=abb81(117)+abb81(47)+abb81(82)+abb81(108)+abb81(116)
      abb81(47)=8.0_ki*abb81(47)
      abb81(25)=abb81(30)*abb81(25)
      abb81(25)=-abb81(72)+abb81(25)
      abb81(25)=16.0_ki*abb81(25)
      abb81(26)=abb81(26)*abb81(102)
      abb81(82)=-spbk3k2*abb81(72)
      abb81(108)=spbk2k1*abb81(13)
      abb81(19)=abb81(108)+abb81(82)+abb81(19)
      abb81(19)=spak4k7*abb81(19)
      abb81(82)=-abb81(99)*abb81(112)
      abb81(19)=abb81(82)+abb81(19)
      abb81(19)=8.0_ki*abb81(19)
      abb81(82)=16.0_ki*spak4k7*abb81(98)
      abb81(99)=spbk3k2*spak4k7*abb81(102)
      abb81(108)=abb81(102)*abb81(112)
      abb81(112)=-spbk2k1*abb81(103)
      abb81(18)=abb81(102)*abb81(18)
      abb81(13)=spak3k4*abb81(13)
      abb81(13)=abb81(77)+abb81(13)
      abb81(13)=spbk2k1*abb81(13)
      abb81(72)=-abb81(72)*abb81(56)
      abb81(13)=abb81(13)+abb81(72)
      abb81(13)=8.0_ki*abb81(13)
      abb81(8)=abb81(91)*abb81(8)
      abb81(45)=-abb81(30)*abb81(45)
      abb81(72)=spak3k4*abb81(98)
      abb81(45)=abb81(45)+abb81(72)
      abb81(45)=16.0_ki*abb81(45)
      abb81(56)=abb81(56)*abb81(102)
      abb81(72)=-abb81(102)*abb81(100)
      abb81(40)=-spak4k7*abb81(40)
      abb81(10)=-spbk3k2*spak1k2*abb81(10)
      abb81(44)=-abb81(73)*abb81(44)
      abb81(10)=abb81(10)+abb81(44)
      abb81(10)=spak3k4*abb81(10)
      abb81(44)=-abb81(73)*abb81(48)
      abb81(10)=abb81(10)+abb81(44)+abb81(40)
      abb81(40)=8.0_ki*spbk7k1
      abb81(10)=abb81(10)*abb81(40)
      abb81(14)=abb81(107)*abb81(14)
      abb81(14)=abb81(14)-abb81(110)
      abb81(44)=16.0_ki*spbk7k1*abb81(14)
      abb81(14)=-abb81(14)*abb81(40)
      abb81(40)=abb81(71)*abb81(40)
      abb81(48)=spak3k4*abb81(49)
      abb81(48)=abb81(48)-abb81(66)
      abb81(48)=spbk3k1*abb81(48)
      abb81(49)=spbk7k1*spak4k7*abb81(49)
      abb81(48)=abb81(49)+abb81(48)
      abb81(48)=8.0_ki*abb81(48)
      abb81(49)=spbl6k1*abb81(103)
      abb81(30)=16.0_ki*abb81(30)
      R2d81=0.0_ki
      rat2 = rat2 + R2d81
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='81' value='", &
          & R2d81, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd81h2
