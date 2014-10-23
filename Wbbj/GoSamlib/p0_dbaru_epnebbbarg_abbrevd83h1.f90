module     p0_dbaru_epnebbbarg_abbrevd83h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(101), public :: abb83
   complex(ki), public :: R2d83
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
      abb83(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb83(2)=NC**(-1)
      abb83(3)=sqrt2**(-1)
      abb83(4)=es56**(-1)
      abb83(5)=spak2k7**(-1)
      abb83(6)=spak2l5**(-1)
      abb83(7)=spbl6k2**(-1)
      abb83(8)=c4*abb83(2)**2
      abb83(9)=c1*abb83(2)
      abb83(8)=-abb83(9)+abb83(8)+c2
      abb83(9)=TR*gW
      abb83(9)=abb83(5)*i_*CVDU*abb83(4)*abb83(3)*abb83(1)*abb83(9)**2
      abb83(10)=-abb83(8)*abb83(9)*spbk7k3
      abb83(11)=-spak1l6*abb83(10)*spbl5k3
      abb83(12)=mB**2*abb83(7)*abb83(6)
      abb83(13)=-abb83(12)*abb83(10)
      abb83(14)=spbk3k2*spak1k2
      abb83(15)=abb83(14)*abb83(13)
      abb83(16)=abb83(11)+abb83(15)
      abb83(17)=abb83(16)*spak3k4
      abb83(18)=-abb83(10)*spbk7l5
      abb83(19)=abb83(18)*spak1l6
      abb83(20)=spbk7k2*spak1k2
      abb83(21)=abb83(13)*abb83(20)
      abb83(19)=abb83(19)-abb83(21)
      abb83(22)=abb83(19)*spak4k7
      abb83(17)=abb83(22)+abb83(17)
      abb83(22)=es71*abb83(17)
      abb83(23)=spak4k7*spbk7k2
      abb83(24)=-abb83(18)*abb83(23)
      abb83(25)=-abb83(10)*spak3k4
      abb83(26)=abb83(25)*spbl5k3
      abb83(27)=-spbk7k2*abb83(26)
      abb83(24)=abb83(24)+abb83(27)
      abb83(24)=spak1k7*spak2l6*abb83(24)
      abb83(22)=abb83(24)+abb83(22)
      abb83(22)=16.0_ki*abb83(22)
      abb83(8)=abb83(9)*abb83(8)
      abb83(9)=-abb83(12)*abb83(8)
      abb83(12)=abb83(9)*spak1k4
      abb83(24)=spak2k4*spbk7k2
      abb83(27)=abb83(12)*abb83(24)
      abb83(28)=abb83(8)*spbk7l5
      abb83(29)=abb83(28)*spak4l6
      abb83(30)=abb83(29)*spak1k4
      abb83(27)=abb83(27)-abb83(30)
      abb83(27)=abb83(27)*spbk4k3
      abb83(30)=es12+es71
      abb83(31)=abb83(30)-es712
      abb83(32)=abb83(13)*abb83(31)
      abb83(33)=abb83(18)*spal6k7
      abb83(33)=abb83(32)-abb83(33)
      abb83(34)=abb83(33)*spak1k4
      abb83(35)=abb83(14)*abb83(9)
      abb83(36)=abb83(8)*spbl5k3
      abb83(37)=abb83(36)*spak1l6
      abb83(35)=abb83(35)-abb83(37)
      abb83(38)=-spak1k4*abb83(35)
      abb83(39)=abb83(38)*spbk7k1
      abb83(27)=abb83(39)+abb83(27)-abb83(34)
      abb83(34)=abb83(13)*abb83(24)
      abb83(39)=abb83(18)*spak4l6
      abb83(34)=abb83(34)+abb83(39)
      abb83(40)=abb83(34)*spak1k7
      abb83(41)=abb83(36)*spak1k4
      abb83(42)=abb83(41)*spak2l6
      abb83(43)=abb83(42)*spbk7k2
      abb83(40)=abb83(43)+abb83(40)+abb83(27)
      abb83(43)=32.0_ki*abb83(40)
      abb83(44)=32.0_ki*spak1k7
      abb83(34)=abb83(34)*abb83(44)
      abb83(45)=spak3k4*spbk7k3**2
      abb83(46)=abb83(9)*abb83(45)
      abb83(47)=abb83(44)*abb83(46)
      abb83(48)=64.0_ki*spak1k4*abb83(13)
      abb83(49)=-es712*abb83(17)
      abb83(50)=abb83(30)*spak4k7
      abb83(19)=abb83(19)*abb83(50)
      abb83(51)=abb83(30)*spak3k4
      abb83(16)=abb83(16)*abb83(51)
      abb83(16)=abb83(49)+abb83(19)+abb83(16)
      abb83(16)=16.0_ki*abb83(16)
      abb83(19)=abb83(37)*abb83(24)
      abb83(49)=abb83(9)*spbk3k2
      abb83(52)=abb83(49)*spak2k4
      abb83(53)=abb83(52)*abb83(20)
      abb83(19)=abb83(19)-abb83(53)
      abb83(53)=-32.0_ki*abb83(19)
      abb83(17)=-8.0_ki*es12*abb83(17)
      abb83(54)=-abb83(10)*spak4l6
      abb83(55)=spbl5k2*spak1k2
      abb83(56)=abb83(55)*abb83(54)
      abb83(57)=16.0_ki*abb83(56)
      abb83(58)=-spak4k7*abb83(21)
      abb83(15)=spak3k4*abb83(15)
      abb83(15)=abb83(15)+abb83(58)-abb83(40)
      abb83(15)=16.0_ki*abb83(15)
      abb83(40)=32.0_ki*spak1k4
      abb83(58)=abb83(40)*abb83(13)
      abb83(19)=16.0_ki*abb83(19)
      abb83(56)=8.0_ki*abb83(56)
      abb83(59)=spak1k2**2
      abb83(60)=abb83(59)*abb83(13)
      abb83(61)=-spbk7k2*abb83(60)
      abb83(62)=abb83(18)*spak1k2
      abb83(63)=spak1l6*abb83(62)
      abb83(61)=abb83(61)+abb83(63)
      abb83(61)=spak4k7*abb83(61)
      abb83(60)=spbk3k2*abb83(60)
      abb83(11)=spak1k2*abb83(11)
      abb83(11)=abb83(60)+abb83(11)
      abb83(11)=spak3k4*abb83(11)
      abb83(11)=abb83(61)+abb83(11)
      abb83(11)=spbk7k1*abb83(11)
      abb83(60)=abb83(18)*spak4k7
      abb83(26)=abb83(60)+abb83(26)
      abb83(60)=spak2l6*abb83(20)*abb83(26)
      abb83(11)=abb83(60)+abb83(11)
      abb83(11)=8.0_ki*abb83(11)
      abb83(60)=abb83(21)*spak2k4
      abb83(39)=abb83(39)*spak1k2
      abb83(39)=abb83(60)+abb83(39)
      abb83(60)=16.0_ki*abb83(39)
      abb83(61)=16.0_ki*spak1k2
      abb83(46)=-abb83(46)*abb83(61)
      abb83(39)=8.0_ki*abb83(39)
      abb83(45)=abb83(8)*abb83(45)
      abb83(61)=16.0_ki*spak1k7*abb83(45)
      abb83(63)=abb83(10)*abb83(40)
      abb83(64)=-abb83(10)*spak4k7
      abb83(65)=abb83(20)*abb83(64)
      abb83(14)=-abb83(14)*abb83(25)
      abb83(14)=abb83(65)+abb83(14)
      abb83(14)=8.0_ki*abb83(14)
      abb83(65)=-16.0_ki*abb83(10)
      abb83(66)=abb83(65)*spak1k4
      abb83(67)=8.0_ki*spak1k2
      abb83(45)=-abb83(45)*abb83(67)
      abb83(68)=abb83(28)*spak2l6
      abb83(69)=-spak2k3*abb83(13)
      abb83(69)=abb83(69)+abb83(68)
      abb83(69)=spbk7k2*abb83(69)
      abb83(70)=abb83(9)*abb83(24)
      abb83(71)=abb83(70)-abb83(29)
      abb83(72)=spbk7k4*abb83(71)
      abb83(73)=-spak3l6*abb83(18)
      abb83(69)=abb83(73)+abb83(72)+abb83(69)
      abb83(69)=spak1k7*abb83(69)
      abb83(72)=abb83(8)*spak1l6
      abb83(73)=abb83(72)*spbk7l5
      abb83(74)=abb83(9)*abb83(20)
      abb83(75)=abb83(73)+abb83(74)
      abb83(76)=-es71*abb83(75)
      abb83(69)=abb83(76)+abb83(69)
      abb83(69)=16.0_ki*abb83(69)
      abb83(76)=es712-es71
      abb83(77)=abb83(76)-es12
      abb83(78)=16.0_ki*abb83(75)*abb83(77)
      abb83(79)=-abb83(10)*spak3l6
      abb83(80)=abb83(8)*spak4l6
      abb83(81)=spbk7k4*abb83(80)
      abb83(81)=abb83(79)+abb83(81)
      abb83(81)=abb83(55)*abb83(81)
      abb83(82)=es12*abb83(75)
      abb83(81)=abb83(82)+abb83(81)
      abb83(81)=8.0_ki*abb83(81)
      abb83(82)=-16.0_ki*abb83(74)
      abb83(83)=abb83(9)*spbk7k2
      abb83(84)=-abb83(59)*abb83(83)
      abb83(73)=-spak1k2*abb83(73)
      abb83(73)=abb83(84)+abb83(73)
      abb83(73)=spbk7k1*abb83(73)
      abb83(74)=abb83(74)*spak2k4
      abb83(29)=abb83(29)*spak1k2
      abb83(29)=abb83(74)-abb83(29)
      abb83(74)=-spbk7k4*abb83(29)
      abb83(84)=-abb83(20)*abb83(68)
      abb83(85)=spak3l6*abb83(62)
      abb83(21)=spak2k3*abb83(21)
      abb83(21)=abb83(21)+abb83(85)+abb83(74)+abb83(84)+abb83(73)
      abb83(21)=8.0_ki*abb83(21)
      abb83(73)=8.0_ki*abb83(8)
      abb83(74)=-abb83(20)*abb83(73)
      abb83(84)=abb83(37)*spak1k2
      abb83(59)=abb83(59)*abb83(49)
      abb83(59)=abb83(84)-abb83(59)
      abb83(59)=abb83(59)*spbk7k1
      abb83(29)=abb83(29)*spbk4k3
      abb83(62)=abb83(62)*spal6k7
      abb83(84)=abb83(36)*spak2l6
      abb83(20)=abb83(84)*abb83(20)
      abb83(85)=abb83(32)*spak1k2
      abb83(20)=-abb83(59)-abb83(20)-abb83(62)+abb83(85)-abb83(29)
      abb83(29)=16.0_ki*abb83(20)
      abb83(59)=abb83(13)*spak1k2
      abb83(62)=-32.0_ki*abb83(59)
      abb83(20)=-8.0_ki*abb83(20)
      abb83(59)=16.0_ki*abb83(59)
      abb83(85)=spak1k2*abb83(65)
      abb83(67)=abb83(10)*abb83(67)
      abb83(40)=abb83(40)*abb83(49)
      abb83(86)=abb83(36)*spbk7k2
      abb83(87)=abb83(28)*spbk3k2
      abb83(86)=abb83(86)+abb83(87)
      abb83(88)=abb83(86)*spak4k7
      abb83(89)=-spak1l6*abb83(88)
      abb83(90)=abb83(9)*spak1k2
      abb83(91)=spbk3k2**2*abb83(90)
      abb83(37)=-spbk3k2*abb83(37)
      abb83(37)=abb83(91)+abb83(37)
      abb83(37)=spak3k4*abb83(37)
      abb83(37)=abb83(89)+abb83(37)
      abb83(37)=16.0_ki*abb83(37)
      abb83(89)=16.0_ki*abb83(49)
      abb83(91)=-spak1k4*abb83(89)
      abb83(92)=abb83(41)*spbk7k2
      abb83(87)=-spak1k4*abb83(87)
      abb83(87)=abb83(87)-abb83(92)
      abb83(87)=spak2l6*abb83(87)
      abb83(92)=abb83(75)*spbk3k1
      abb83(93)=-spak1k4*abb83(92)
      abb83(27)=abb83(93)+abb83(87)-abb83(27)
      abb83(27)=8.0_ki*abb83(27)
      abb83(87)=16.0_ki*abb83(41)
      abb83(41)=8.0_ki*abb83(41)
      abb83(93)=abb83(72)*spbl5k2
      abb83(94)=-spak1k7*abb83(83)
      abb83(12)=-spbk4k2*abb83(12)
      abb83(95)=-spak1k3*abb83(49)
      abb83(12)=abb83(95)+abb83(12)+abb83(94)-abb83(93)
      abb83(12)=16.0_ki*abb83(12)
      abb83(93)=16.0_ki*abb83(93)
      abb83(75)=8.0_ki*abb83(75)
      abb83(94)=spbl5k4*spak1k4
      abb83(55)=abb83(94)+abb83(55)
      abb83(55)=abb83(8)*abb83(55)
      abb83(28)=-spak1k7*abb83(28)
      abb83(94)=spak1k3*abb83(36)
      abb83(28)=abb83(94)+abb83(28)+abb83(55)
      abb83(28)=8.0_ki*abb83(28)
      abb83(55)=spak2l6*abb83(86)
      abb83(71)=spbk4k3*abb83(71)
      abb83(33)=abb83(92)+abb83(71)+abb83(55)-abb83(33)
      abb83(33)=spak1k7*abb83(33)
      abb83(30)=es23-es123+abb83(30)
      abb83(30)=abb83(35)*abb83(30)
      abb83(55)=-spak1k3*spbk3k2*abb83(84)
      abb83(30)=abb83(55)+abb83(30)+abb83(33)
      abb83(30)=8.0_ki*abb83(30)
      abb83(33)=16.0_ki*abb83(35)
      abb83(13)=abb83(13)*abb83(44)
      abb83(35)=8.0_ki*abb83(35)
      abb83(44)=-spak1k7*abb83(65)
      abb83(55)=spbk4k2*abb83(90)
      abb83(65)=-spbl5k4*abb83(72)
      abb83(55)=abb83(55)+abb83(65)
      abb83(55)=8.0_ki*abb83(55)
      abb83(38)=spbk3k1*abb83(38)
      abb83(42)=spbk3k2*abb83(42)
      abb83(38)=abb83(42)+abb83(38)
      abb83(38)=8.0_ki*abb83(38)
      abb83(42)=16.0_ki*abb83(32)
      abb83(65)=-spak4k7*abb83(42)
      abb83(64)=8.0_ki*abb83(31)*abb83(64)
      abb83(71)=abb83(9)*abb83(77)
      abb83(86)=16.0_ki*abb83(71)
      abb83(90)=abb83(77)*abb83(73)
      abb83(89)=-spak4k7*abb83(89)
      abb83(92)=-spak4k7*spbk3k2*abb83(73)
      abb83(94)=-abb83(10)*spal6k7
      abb83(95)=abb83(80)*spbk4k3
      abb83(94)=abb83(94)-abb83(95)
      abb83(95)=-abb83(24)*abb83(94)
      abb83(31)=abb83(54)*abb83(31)
      abb83(54)=abb83(95)-abb83(31)
      abb83(95)=16.0_ki*abb83(54)
      abb83(31)=16.0_ki*abb83(31)
      abb83(54)=-8.0_ki*abb83(54)
      abb83(96)=-abb83(80)*abb83(77)*spbk7k4
      abb83(79)=-abb83(77)*abb83(79)
      abb83(79)=abb83(96)+abb83(79)
      abb83(79)=8.0_ki*abb83(79)
      abb83(94)=-8.0_ki*abb83(23)*abb83(94)
      abb83(96)=abb83(80)*spbk3k2
      abb83(97)=16.0_ki*abb83(96)
      abb83(96)=-8.0_ki*abb83(96)
      abb83(98)=spal6k7*spbk7k2
      abb83(99)=-spak3l6*spbk3k2
      abb83(98)=abb83(98)+abb83(99)
      abb83(98)=abb83(8)*abb83(98)
      abb83(80)=-spbk4k2*abb83(80)
      abb83(80)=abb83(80)+abb83(98)
      abb83(80)=8.0_ki*abb83(80)
      abb83(42)=spak3k4*abb83(42)
      abb83(98)=32.0_ki*abb83(70)
      abb83(99)=-16.0_ki*abb83(70)
      abb83(10)=-abb83(51)*abb83(10)
      abb83(25)=es712*abb83(25)
      abb83(25)=-abb83(10)+abb83(25)
      abb83(25)=8.0_ki*abb83(25)
      abb83(51)=16.0_ki*abb83(8)*abb83(24)
      abb83(100)=-abb83(24)*abb83(73)
      abb83(101)=spak4k7*abb83(83)
      abb83(49)=spak3k4*abb83(49)
      abb83(49)=abb83(101)+abb83(49)
      abb83(49)=16.0_ki*abb83(49)
      abb83(101)=spak3k4*spbk3k2
      abb83(23)=abb83(23)+abb83(101)
      abb83(23)=abb83(23)*abb83(73)
      abb83(26)=-es712*abb83(26)
      abb83(18)=abb83(18)*abb83(50)
      abb83(10)=spbl5k3*abb83(10)
      abb83(10)=abb83(26)+abb83(18)+abb83(10)
      abb83(10)=8.0_ki*spak2l6*abb83(10)
      abb83(18)=abb83(84)*abb83(24)
      abb83(24)=spbk4k3*abb83(83)*spak2k4**2
      abb83(18)=abb83(18)+abb83(24)
      abb83(24)=-16.0_ki*abb83(18)
      abb83(26)=abb83(32)*spak2k4
      abb83(26)=16.0_ki*abb83(26)
      abb83(18)=8.0_ki*abb83(18)
      abb83(50)=abb83(77)*abb83(68)
      abb83(68)=spbk7k4*spak2k4*abb83(71)
      abb83(71)=spak2k3*abb83(32)
      abb83(50)=abb83(71)+abb83(50)+abb83(68)
      abb83(50)=8.0_ki*abb83(50)
      abb83(68)=-spbk4k3*abb83(70)
      abb83(32)=abb83(68)+abb83(32)
      abb83(32)=spak4k7*abb83(32)
      abb83(36)=-abb83(36)*abb83(101)
      abb83(36)=-abb83(88)+abb83(36)
      abb83(36)=spak2l6*abb83(36)
      abb83(32)=abb83(36)+abb83(32)
      abb83(32)=8.0_ki*abb83(32)
      abb83(36)=16.0_ki*abb83(52)
      abb83(52)=8.0_ki*abb83(52)
      abb83(68)=-es234+es34-abb83(76)
      abb83(68)=abb83(9)*abb83(68)
      abb83(8)=spbl5k2*spak2l6*abb83(8)
      abb83(70)=-spbl5k1*abb83(72)
      abb83(8)=abb83(70)+abb83(8)+abb83(68)
      abb83(8)=8.0_ki*abb83(8)
      abb83(9)=16.0_ki*abb83(9)
      R2d83=0.0_ki
      rat2 = rat2 + R2d83
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='83' value='", &
          & R2d83, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd83h1
