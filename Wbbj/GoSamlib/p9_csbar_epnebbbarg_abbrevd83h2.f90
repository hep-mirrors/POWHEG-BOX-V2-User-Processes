module     p9_csbar_epnebbbarg_abbrevd83h2
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(117), public :: abb83
   complex(ki), public :: R2d83
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb83(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb83(2)=NC**(-1)
      abb83(3)=es56**(-1)
      abb83(4)=spbl5k2**(-1)
      abb83(5)=spak2l6**(-1)
      abb83(6)=c3*abb83(2)
      abb83(7)=c4*abb83(2)**2
      abb83(6)=-c2+abb83(6)-abb83(7)
      abb83(7)=TR*gW
      abb83(7)=abb83(7)**2*i_*CVSC*abb83(3)*abb83(1)
      abb83(8)=-abb83(7)*abb83(6)
      abb83(9)=spak4l5*spbl6k1
      abb83(10)=abb83(9)*abb83(8)
      abb83(11)=abb83(10)*spak1k2
      abb83(12)=-abb83(6)*abb83(7)*mB**2*abb83(5)*abb83(4)
      abb83(13)=abb83(12)*spak2k4
      abb83(14)=abb83(13)*es12
      abb83(11)=abb83(11)+abb83(14)
      abb83(15)=-spbk4k3*abb83(11)
      abb83(16)=spbk7k3*abb83(12)
      abb83(17)=abb83(16)*spak2k7
      abb83(18)=-es12*abb83(17)
      abb83(6)=-abb83(7)*abb83(6)*spbk7k3
      abb83(7)=spal5k7*spbl6k1
      abb83(19)=abb83(7)*abb83(6)
      abb83(20)=spak1k2*abb83(19)
      abb83(15)=abb83(15)+abb83(20)+abb83(18)
      abb83(18)=spbk7k1*spak4k7
      abb83(15)=8.0_ki*abb83(18)*abb83(15)
      abb83(20)=abb83(13)*spbk4k3
      abb83(21)=abb83(20)*spak4e7
      abb83(22)=abb83(17)*spak4e7
      abb83(23)=abb83(22)+abb83(21)
      abb83(23)=spbe7k1*abb83(23)
      abb83(24)=spbe7k1*spae7k7
      abb83(25)=abb83(24)*spak2k4
      abb83(26)=abb83(25)*abb83(16)
      abb83(23)=abb83(26)+abb83(23)
      abb83(23)=abb83(23)*es12
      abb83(26)=abb83(8)*spak4e7
      abb83(27)=spak1k2*spbe7k1
      abb83(28)=abb83(26)*abb83(27)
      abb83(29)=spbk4k3*abb83(28)*abb83(9)
      abb83(30)=abb83(6)*spak4e7
      abb83(31)=abb83(7)*abb83(30)
      abb83(32)=abb83(31)*abb83(27)
      abb83(33)=abb83(6)*spae7k7
      abb83(34)=abb83(33)*abb83(27)
      abb83(35)=abb83(34)*abb83(9)
      abb83(23)=abb83(23)+abb83(29)-abb83(32)+abb83(35)
      abb83(29)=8.0_ki*abb83(23)
      abb83(32)=spbk3k1*abb83(11)
      abb83(36)=16.0_ki*abb83(32)
      abb83(37)=abb83(16)*es12
      abb83(25)=abb83(25)*abb83(37)
      abb83(25)=abb83(25)+abb83(35)
      abb83(25)=8.0_ki*abb83(25)
      abb83(35)=abb83(27)*spae7k7
      abb83(38)=abb83(16)*abb83(35)
      abb83(39)=-spbk3k1*abb83(38)
      abb83(40)=abb83(24)*abb83(6)
      abb83(41)=spbl6k3*spak2l5
      abb83(42)=-abb83(41)*abb83(40)
      abb83(39)=abb83(39)+abb83(42)
      abb83(39)=spak3k4*abb83(39)
      abb83(42)=spbk7l6*spak4k7
      abb83(43)=abb83(42)*abb83(6)
      abb83(44)=abb83(43)*spak2l5
      abb83(45)=abb83(44)*abb83(24)
      abb83(46)=abb83(18)*abb83(38)
      abb83(39)=abb83(46)-abb83(45)+abb83(39)
      abb83(39)=8.0_ki*abb83(39)
      abb83(46)=spbk3k1**2
      abb83(47)=abb83(46)*abb83(12)*spak1k2
      abb83(48)=abb83(41)*abb83(8)
      abb83(49)=spbk3k1*abb83(48)
      abb83(47)=abb83(47)+abb83(49)
      abb83(47)=spak3k4*abb83(47)
      abb83(49)=abb83(8)*spak2l5
      abb83(50)=abb83(42)*abb83(49)
      abb83(51)=abb83(50)*spbk3k1
      abb83(52)=abb83(48)*abb83(18)
      abb83(47)=abb83(52)+abb83(51)+abb83(47)
      abb83(47)=16.0_ki*abb83(47)
      abb83(52)=abb83(12)*spbk3k1
      abb83(53)=abb83(52)*spak4e7
      abb83(54)=abb83(53)*abb83(27)
      abb83(55)=abb83(26)*abb83(41)
      abb83(56)=abb83(55)*spbe7k1
      abb83(54)=abb83(54)+abb83(56)
      abb83(57)=-16.0_ki*abb83(54)
      abb83(41)=abb83(41)*spak3k4
      abb83(40)=abb83(41)*abb83(40)
      abb83(23)=abb83(40)+abb83(45)-abb83(23)
      abb83(23)=4.0_ki*abb83(23)
      abb83(40)=spak3k4*spbk3k1
      abb83(45)=-abb83(18)-abb83(40)
      abb83(45)=abb83(48)*abb83(45)
      abb83(32)=-abb83(51)+abb83(32)+abb83(45)
      abb83(32)=8.0_ki*abb83(32)
      abb83(45)=8.0_ki*abb83(56)
      abb83(51)=8.0_ki*abb83(54)
      abb83(54)=-4.0_ki*abb83(56)
      abb83(56)=abb83(33)*spak2l5
      abb83(58)=abb83(56)*abb83(42)
      abb83(41)=abb83(41)*abb83(33)
      abb83(41)=abb83(58)+abb83(41)
      abb83(58)=4.0_ki*spbk2k1*abb83(41)
      abb83(59)=spak2k4*spae7k7
      abb83(60)=abb83(16)*abb83(59)
      abb83(22)=abb83(22)+abb83(60)-abb83(55)
      abb83(55)=spbk2k1*abb83(22)
      abb83(61)=abb83(26)*abb83(9)
      abb83(62)=abb83(13)*spbk2k1
      abb83(63)=abb83(62)*spak4e7
      abb83(61)=abb83(61)+abb83(63)
      abb83(61)=abb83(61)*spbk4k3
      abb83(9)=abb83(33)*abb83(9)
      abb83(31)=abb83(61)+abb83(55)-abb83(31)+abb83(9)
      abb83(55)=-8.0_ki*abb83(31)
      abb83(61)=abb83(60)*spbk2k1
      abb83(9)=abb83(61)+abb83(9)
      abb83(9)=8.0_ki*abb83(9)
      abb83(40)=abb83(40)-abb83(18)
      abb83(61)=abb83(16)*spae7k7
      abb83(63)=8.0_ki*abb83(61)*abb83(40)
      abb83(64)=16.0_ki*abb83(53)
      abb83(31)=4.0_ki*abb83(31)
      abb83(53)=-8.0_ki*abb83(53)
      abb83(65)=16.0_ki*abb83(13)
      abb83(65)=-spbe7k3*abb83(65)
      abb83(66)=8.0_ki*spbe7k3
      abb83(67)=abb83(13)*abb83(66)
      abb83(44)=8.0_ki*abb83(44)
      abb83(68)=abb83(30)*spak2l5
      abb83(69)=8.0_ki*spbe7l6
      abb83(70)=-abb83(69)*abb83(68)
      abb83(71)=32.0_ki*spak2k4*abb83(16)
      abb83(72)=4.0_ki*spbe7l6
      abb83(68)=abb83(72)*abb83(68)
      abb83(40)=4.0_ki*abb83(40)
      abb83(73)=abb83(34)*abb83(40)
      abb83(74)=abb83(8)*spak1k2
      abb83(46)=-8.0_ki*spak3k4*abb83(46)*abb83(74)
      abb83(75)=abb83(28)*spbk3k1
      abb83(76)=8.0_ki*abb83(75)
      abb83(75)=-4.0_ki*abb83(75)
      abb83(40)=-abb83(33)*abb83(40)
      abb83(77)=abb83(26)*spbk3k1
      abb83(78)=-8.0_ki*abb83(77)
      abb83(77)=4.0_ki*abb83(77)
      abb83(79)=abb83(8)*spak2k4
      abb83(80)=abb83(79)*abb83(66)
      abb83(81)=4.0_ki*spbe7k3
      abb83(82)=-abb83(79)*abb83(81)
      abb83(83)=16.0_ki*abb83(6)
      abb83(84)=-spak2k4*abb83(83)
      abb83(85)=4.0_ki*abb83(34)
      abb83(86)=spak3k4*spbl6k3
      abb83(86)=abb83(86)+abb83(42)
      abb83(85)=abb83(86)*abb83(85)
      abb83(87)=abb83(8)*spbk3k1
      abb83(88)=abb83(87)*spak1k2
      abb83(86)=-abb83(88)*abb83(86)
      abb83(42)=-spbk4k3*abb83(42)*abb83(79)
      abb83(89)=-spbl6k3*abb83(18)*abb83(74)
      abb83(43)=-spak2k7*abb83(43)
      abb83(42)=abb83(43)+abb83(89)+abb83(42)+abb83(86)
      abb83(42)=8.0_ki*abb83(42)
      abb83(30)=abb83(30)*spak2k7
      abb83(26)=abb83(26)*spbk4k3
      abb83(43)=abb83(26)*spak2k4
      abb83(6)=abb83(59)*abb83(6)
      abb83(30)=abb83(30)+abb83(43)+abb83(6)
      abb83(30)=abb83(30)*spbe7l6
      abb83(28)=abb83(28)*spbl6k3
      abb83(28)=abb83(30)+abb83(28)
      abb83(30)=8.0_ki*abb83(28)
      abb83(43)=abb83(79)*spbl6k3
      abb83(86)=16.0_ki*abb83(43)
      abb83(89)=abb83(6)*abb83(69)
      abb83(28)=-4.0_ki*abb83(28)
      abb83(43)=-8.0_ki*abb83(43)
      abb83(90)=-abb83(10)*abb83(35)
      abb83(14)=-abb83(24)*abb83(14)
      abb83(14)=abb83(90)+abb83(14)
      abb83(14)=spbk7k4*abb83(14)
      abb83(90)=-spak2k3*abb83(24)*abb83(37)
      abb83(91)=spak3l5*spbl6k1
      abb83(34)=-abb83(34)*abb83(91)
      abb83(14)=abb83(34)+abb83(90)+abb83(14)
      abb83(14)=4.0_ki*abb83(14)
      abb83(34)=abb83(12)*spak2k7
      abb83(90)=es12*abb83(34)
      abb83(92)=-abb83(7)*abb83(74)
      abb83(90)=abb83(92)+abb83(90)
      abb83(90)=spbk7k1*abb83(90)
      abb83(11)=spbk4k1*abb83(11)
      abb83(92)=spak2k3*es12*abb83(52)
      abb83(88)=abb83(91)*abb83(88)
      abb83(11)=abb83(11)+abb83(88)+abb83(92)+abb83(90)
      abb83(11)=8.0_ki*abb83(11)
      abb83(88)=abb83(49)*spbk7l6
      abb83(24)=abb83(88)*abb83(24)
      abb83(90)=abb83(12)*spbk7k1
      abb83(92)=-abb83(35)*abb83(90)
      abb83(92)=abb83(24)+abb83(92)
      abb83(92)=8.0_ki*abb83(92)
      abb83(93)=-16.0_ki*spbl6k1*abb83(49)
      abb83(24)=-4.0_ki*abb83(24)
      abb83(94)=8.0_ki*abb83(49)
      abb83(95)=spbl6k1*abb83(94)
      abb83(96)=spak2k3*abb83(16)
      abb83(96)=-abb83(88)+abb83(96)
      abb83(96)=spae7k7*spbk2k1*abb83(96)
      abb83(97)=abb83(12)*spbk2k1
      abb83(98)=abb83(59)*abb83(97)
      abb83(99)=spae7k7*abb83(10)
      abb83(98)=abb83(98)+abb83(99)
      abb83(98)=spbk7k4*abb83(98)
      abb83(99)=abb83(33)*abb83(91)
      abb83(96)=abb83(99)+abb83(98)+abb83(96)
      abb83(96)=4.0_ki*abb83(96)
      abb83(90)=8.0_ki*spae7k7*abb83(90)
      abb83(98)=8.0_ki*spbk7e7
      abb83(99)=-abb83(34)*abb83(98)
      abb83(100)=-8.0_ki*abb83(88)
      abb83(101)=abb83(12)*spak2e7
      abb83(98)=abb83(101)*abb83(98)
      abb83(102)=4.0_ki*abb83(8)
      abb83(103)=abb83(102)*spbk7k1
      abb83(104)=abb83(35)*abb83(103)
      abb83(103)=-spae7k7*abb83(103)
      abb83(105)=abb83(102)*spbk7e7
      abb83(106)=spak2k7*abb83(105)
      abb83(105)=-spak2e7*abb83(105)
      abb83(107)=-spbk7l6*abb83(35)
      abb83(59)=abb83(59)*spbk7k4
      abb83(108)=-spbe7l6*abb83(59)
      abb83(107)=abb83(108)+abb83(107)
      abb83(107)=abb83(8)*abb83(107)
      abb83(33)=abb83(33)*spak2k3
      abb83(108)=-spbe7l6*abb83(33)
      abb83(107)=abb83(108)+abb83(107)
      abb83(107)=4.0_ki*abb83(107)
      abb83(108)=spak2k7*spbk7l6
      abb83(109)=-spak2k3*spbl6k3
      abb83(108)=abb83(109)+abb83(108)
      abb83(108)=abb83(8)*abb83(108)
      abb83(74)=spbl6k1*abb83(74)
      abb83(79)=-spbl6k4*abb83(79)
      abb83(74)=abb83(79)+abb83(74)+abb83(108)
      abb83(74)=8.0_ki*abb83(74)
      abb83(79)=8.0_ki*spbk4k3*abb83(50)
      abb83(26)=abb83(26)*spak2l5
      abb83(26)=abb83(26)+abb83(56)
      abb83(108)=-abb83(26)*abb83(69)
      abb83(109)=16.0_ki*abb83(48)
      abb83(69)=abb83(69)*abb83(56)
      abb83(61)=abb83(61)*spak2k3
      abb83(110)=-abb83(66)*abb83(61)
      abb83(111)=-32.0_ki*abb83(17)
      abb83(112)=16.0_ki*spbe7k3*abb83(101)
      abb83(26)=abb83(26)*abb83(72)
      abb83(113)=8.0_ki*abb83(48)
      abb83(101)=-abb83(66)*abb83(101)
      abb83(33)=abb83(81)*abb83(33)
      abb83(83)=spak2k7*abb83(83)
      abb83(114)=-spak2e7*abb83(8)*abb83(66)
      abb83(102)=spbe7k3*abb83(102)*spak2e7
      abb83(115)=spbk7k4*spae7k7*abb83(49)*abb83(72)
      abb83(116)=spbl6k4*abb83(94)
      abb83(66)=abb83(60)*abb83(66)
      abb83(6)=-abb83(6)*abb83(81)
      abb83(56)=abb83(56)*abb83(72)
      abb83(17)=abb83(17)-abb83(48)
      abb83(17)=spbk2k1*abb83(17)
      abb83(17)=-abb83(19)+abb83(17)
      abb83(17)=spak4k7*abb83(17)
      abb83(10)=abb83(62)+abb83(10)
      abb83(19)=abb83(10)*spbk4k3*spak4k7
      abb83(17)=abb83(19)+abb83(17)
      abb83(17)=8.0_ki*abb83(17)
      abb83(19)=-16.0_ki*spak4k7*abb83(52)
      abb83(62)=8.0_ki*spak4k7*abb83(87)
      abb83(34)=-spbk2k1*abb83(34)
      abb83(7)=abb83(8)*abb83(7)
      abb83(7)=abb83(34)+abb83(7)
      abb83(7)=8.0_ki*abb83(7)
      abb83(34)=spbk2k1*abb83(94)
      abb83(72)=8.0_ki*abb83(10)
      abb83(81)=-spak3k4*abb83(48)
      abb83(81)=-abb83(50)+abb83(81)
      abb83(81)=8.0_ki*spbk2k1*abb83(81)
      abb83(10)=16.0_ki*abb83(10)
      abb83(94)=abb83(18)*abb83(12)
      abb83(117)=-spak3k4*abb83(52)
      abb83(117)=abb83(117)+abb83(94)
      abb83(117)=16.0_ki*abb83(117)
      abb83(87)=spak3k4*abb83(87)
      abb83(18)=-abb83(8)*abb83(18)
      abb83(18)=abb83(87)+abb83(18)
      abb83(18)=8.0_ki*abb83(18)
      abb83(87)=-spak2k3*abb83(97)
      abb83(91)=-abb83(8)*abb83(91)
      abb83(87)=abb83(87)+abb83(91)
      abb83(87)=8.0_ki*abb83(87)
      abb83(91)=spbk7k2*spak4k7
      abb83(97)=spbk3k2*spak3k4
      abb83(97)=-abb83(91)+abb83(97)
      abb83(38)=abb83(38)*abb83(97)
      abb83(41)=spbe7k2*abb83(41)
      abb83(38)=abb83(41)+abb83(38)
      abb83(38)=4.0_ki*abb83(38)
      abb83(41)=abb83(52)*spak1k2
      abb83(52)=-abb83(41)-abb83(48)
      abb83(52)=spak3k4*abb83(52)
      abb83(94)=-spak1k2*abb83(94)
      abb83(50)=abb83(94)-abb83(50)+abb83(52)
      abb83(50)=spbk3k2*abb83(50)
      abb83(20)=abb83(20)+abb83(41)-abb83(48)
      abb83(20)=abb83(20)*abb83(91)
      abb83(41)=es712-es71
      abb83(16)=-abb83(16)*abb83(41)
      abb83(16)=abb83(37)+abb83(16)
      abb83(16)=spak4k7*abb83(16)
      abb83(16)=abb83(20)+abb83(50)+abb83(16)
      abb83(16)=8.0_ki*abb83(16)
      abb83(20)=abb83(21)+abb83(22)
      abb83(20)=abb83(20)*spbe7k2
      abb83(21)=abb83(27)*abb83(12)*spbk3k2*spak4e7
      abb83(20)=abb83(20)-abb83(21)
      abb83(21)=-8.0_ki*abb83(20)
      abb83(13)=abb83(13)*spbk3k2
      abb83(22)=16.0_ki*abb83(13)
      abb83(27)=abb83(60)*spbe7k2
      abb83(27)=8.0_ki*abb83(27)
      abb83(20)=4.0_ki*abb83(20)
      abb83(13)=-8.0_ki*abb83(13)
      abb83(37)=-spae7k7*abb83(88)
      abb83(48)=abb83(12)*abb83(59)
      abb83(37)=abb83(48)+abb83(37)+abb83(61)
      abb83(37)=spbe7k2*abb83(37)
      abb83(35)=spbk7k2*abb83(12)*abb83(35)
      abb83(35)=abb83(35)+abb83(37)
      abb83(35)=4.0_ki*abb83(35)
      abb83(37)=es234-es34-2.0_ki*es12+abb83(41)
      abb83(37)=abb83(12)*abb83(37)
      abb83(41)=spbl6k2*abb83(49)
      abb83(37)=abb83(41)+abb83(37)
      abb83(37)=8.0_ki*abb83(37)
      abb83(12)=16.0_ki*abb83(12)
      abb83(8)=-8.0_ki*abb83(8)
      R2d83=0.0_ki
      rat2 = rat2 + R2d83
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='83' value='", &
          & R2d83, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd83h2
