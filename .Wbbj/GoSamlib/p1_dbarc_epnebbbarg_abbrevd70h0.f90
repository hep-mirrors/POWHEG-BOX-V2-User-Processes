module     p1_dbarc_epnebbbarg_abbrevd70h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(106), public :: abb70
   complex(ki), public :: R2d70
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb70(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb70(2)=es56**(-1)
      abb70(3)=spbl5k2**(-1)
      abb70(4)=spbl6k2**(-1)
      abb70(5)=TR*gW
      abb70(5)=abb70(5)**2*mB*CVDC*abb70(2)*abb70(1)
      abb70(6)=i_*c2
      abb70(7)=abb70(5)*abb70(6)
      abb70(8)=abb70(4)*abb70(7)
      abb70(9)=abb70(8)*spak1l5
      abb70(10)=spbl5k2*spak4l5
      abb70(11)=abb70(10)*abb70(9)
      abb70(12)=abb70(3)*abb70(7)
      abb70(13)=abb70(12)*spak1l6
      abb70(14)=spbl6k2*spak4l6
      abb70(15)=abb70(14)*abb70(13)
      abb70(16)=spak1l6*abb70(7)
      abb70(17)=abb70(16)*spak4l5
      abb70(7)=spak1l5*abb70(7)
      abb70(18)=abb70(7)*spak4l6
      abb70(11)=abb70(18)+abb70(11)+abb70(15)+abb70(17)
      abb70(15)=abb70(13)+abb70(9)
      abb70(17)=spak1k4*spbk2k1
      abb70(18)=abb70(15)*abb70(17)
      abb70(19)=-abb70(18)+abb70(11)
      abb70(20)=spak4k7*spbk7k2
      abb70(21)=abb70(20)*spbk4k3
      abb70(22)=abb70(21)*abb70(19)
      abb70(13)=abb70(13)*spbl6k2
      abb70(7)=abb70(7)+abb70(13)
      abb70(13)=abb70(7)*spal6k7
      abb70(9)=abb70(9)*spbl5k2
      abb70(9)=abb70(16)+abb70(9)
      abb70(16)=abb70(9)*spal5k7
      abb70(13)=abb70(13)+abb70(16)
      abb70(16)=abb70(20)*spbk7k3
      abb70(23)=-abb70(16)*abb70(13)
      abb70(24)=abb70(15)*spbk2k1
      abb70(16)=abb70(16)*spak1k7
      abb70(25)=-abb70(24)*abb70(16)
      abb70(22)=abb70(25)+abb70(22)+abb70(23)
      abb70(22)=4.0_ki*abb70(22)
      abb70(6)=abb70(6)*spbe7k2
      abb70(23)=abb70(5)*abb70(6)
      abb70(25)=spak1l6*abb70(23)
      abb70(26)=abb70(25)*abb70(3)
      abb70(27)=abb70(26)*spbl6k2
      abb70(23)=spak1l5*abb70(23)
      abb70(27)=abb70(27)+abb70(23)
      abb70(27)=spal6k7*abb70(27)
      abb70(28)=abb70(23)*abb70(4)
      abb70(29)=abb70(28)*spbl5k2
      abb70(29)=abb70(29)+abb70(25)
      abb70(29)=spal5k7*abb70(29)
      abb70(27)=abb70(27)+abb70(29)
      abb70(29)=spak4e7*spbk7k3
      abb70(27)=abb70(29)*abb70(27)
      abb70(30)=spbk4k3*spak4e7
      abb70(31)=abb70(30)*abb70(25)
      abb70(32)=spae7k7*spbk7k3
      abb70(33)=abb70(32)*abb70(25)
      abb70(31)=abb70(31)+abb70(33)
      abb70(31)=abb70(31)*spak4l5
      abb70(34)=abb70(30)*abb70(23)
      abb70(35)=abb70(32)*abb70(23)
      abb70(34)=abb70(34)+abb70(35)
      abb70(34)=abb70(34)*spak4l6
      abb70(36)=abb70(30)*abb70(28)
      abb70(37)=abb70(28)*abb70(32)
      abb70(36)=abb70(36)+abb70(37)
      abb70(36)=abb70(36)*abb70(10)
      abb70(38)=abb70(30)*abb70(26)
      abb70(39)=abb70(26)*abb70(32)
      abb70(38)=abb70(38)+abb70(39)
      abb70(38)=abb70(38)*abb70(14)
      abb70(40)=abb70(26)+abb70(28)
      abb70(41)=abb70(40)*abb70(30)
      abb70(42)=abb70(41)*abb70(17)
      abb70(43)=abb70(29)*abb70(40)
      abb70(44)=spbk2k1*abb70(43)*spak1k7
      abb70(45)=abb70(40)*abb70(32)
      abb70(46)=abb70(45)*abb70(17)
      abb70(27)=abb70(46)+abb70(42)+abb70(44)-abb70(31)-abb70(34)-abb70(36)-abb&
      &70(38)+abb70(27)
      abb70(31)=4.0_ki*abb70(27)
      abb70(11)=spbk3k2*abb70(11)
      abb70(34)=abb70(15)*spbk3k2
      abb70(36)=abb70(34)*abb70(17)
      abb70(11)=-abb70(36)+abb70(11)
      abb70(36)=8.0_ki*abb70(11)
      abb70(38)=abb70(45)*abb70(20)
      abb70(42)=abb70(32)*spak3k4
      abb70(44)=abb70(42)*abb70(40)
      abb70(47)=abb70(44)*spbk3k2
      abb70(38)=abb70(38)-abb70(47)
      abb70(47)=4.0_ki*abb70(38)
      abb70(48)=8.0_ki*abb70(15)
      abb70(49)=spak3k4*spbk3k2**2
      abb70(48)=abb70(48)*abb70(49)
      abb70(50)=spak4e7*spbk3k2
      abb70(51)=abb70(40)*abb70(50)
      abb70(52)=8.0_ki*abb70(51)
      abb70(53)=abb70(39)*abb70(14)
      abb70(54)=abb70(37)*abb70(10)
      abb70(55)=abb70(35)*spak4l6
      abb70(56)=abb70(33)*spak4l5
      abb70(46)=abb70(53)+abb70(56)-abb70(46)+abb70(54)+abb70(55)
      abb70(46)=4.0_ki*abb70(46)
      abb70(27)=abb70(38)+abb70(27)
      abb70(27)=2.0_ki*abb70(27)
      abb70(38)=-abb70(15)*abb70(49)
      abb70(11)=abb70(38)-abb70(11)
      abb70(11)=4.0_ki*abb70(11)
      abb70(38)=4.0_ki*abb70(40)
      abb70(49)=abb70(38)*abb70(50)
      abb70(51)=2.0_ki*abb70(51)
      abb70(53)=8.0_ki*spbe7k3
      abb70(54)=-abb70(18)*abb70(53)
      abb70(55)=4.0_ki*spbe7k3
      abb70(18)=abb70(18)*abb70(55)
      abb70(56)=abb70(20)*abb70(32)
      abb70(57)=abb70(24)*abb70(56)
      abb70(58)=abb70(34)*spbk2k1
      abb70(59)=-abb70(42)*abb70(58)
      abb70(57)=abb70(57)+abb70(59)
      abb70(57)=4.0_ki*abb70(57)
      abb70(59)=8.0_ki*abb70(50)*abb70(24)
      abb70(60)=4.0_ki*abb70(24)
      abb70(50)=abb70(50)*abb70(60)
      abb70(61)=abb70(15)*abb70(20)
      abb70(15)=4.0_ki*abb70(15)
      abb70(62)=abb70(17)*abb70(15)
      abb70(62)=abb70(62)+abb70(61)
      abb70(62)=4.0_ki*spbk7k3*abb70(62)
      abb70(29)=-abb70(29)*abb70(38)
      abb70(43)=-2.0_ki*abb70(43)
      abb70(63)=-spbl6k3*abb70(44)
      abb70(64)=abb70(45)*spak4k7
      abb70(65)=-spbk7l6*abb70(64)
      abb70(63)=abb70(63)+abb70(65)
      abb70(63)=2.0_ki*abb70(63)
      abb70(65)=abb70(34)*spak3k4
      abb70(66)=abb70(65)+abb70(61)
      abb70(67)=-spbl6k3*abb70(66)
      abb70(68)=abb70(12)*spak1k4
      abb70(69)=-abb70(21)*abb70(68)
      abb70(70)=-abb70(12)*abb70(16)
      abb70(69)=abb70(69)+abb70(70)
      abb70(70)=abb70(34)*spak4k7
      abb70(71)=-spbk7l6*abb70(70)
      abb70(67)=abb70(71)+2.0_ki*abb70(69)+abb70(67)
      abb70(67)=4.0_ki*abb70(67)
      abb70(69)=spak1k7*spbk7k3
      abb70(71)=spak4e7*abb70(5)*abb70(69)
      abb70(72)=abb70(5)*spak1k4
      abb70(30)=abb70(72)*abb70(30)
      abb70(30)=abb70(71)+abb70(30)
      abb70(71)=abb70(6)*abb70(3)
      abb70(73)=abb70(71)*abb70(30)
      abb70(74)=abb70(32)*spak1k4
      abb70(75)=abb70(74)*abb70(5)
      abb70(76)=abb70(75)*abb70(71)
      abb70(73)=abb70(73)+abb70(76)
      abb70(77)=abb70(40)*spak4e7
      abb70(78)=abb70(77)*spbl6k3
      abb70(73)=abb70(78)+2.0_ki*abb70(73)
      abb70(78)=4.0_ki*abb70(73)
      abb70(79)=abb70(12)*spbk3k2
      abb70(80)=16.0_ki*spak1k4
      abb70(81)=abb70(80)*abb70(79)
      abb70(76)=8.0_ki*abb70(76)
      abb70(73)=2.0_ki*abb70(73)
      abb70(82)=8.0_ki*abb70(79)
      abb70(83)=spak1k4*abb70(82)
      abb70(84)=-abb70(53)*abb70(68)
      abb70(85)=abb70(55)*abb70(12)
      abb70(86)=-spak1k4*abb70(85)
      abb70(87)=abb70(12)*abb70(56)
      abb70(88)=-abb70(79)*abb70(42)
      abb70(87)=abb70(87)+abb70(88)
      abb70(87)=4.0_ki*abb70(87)
      abb70(88)=spak4e7*abb70(82)
      abb70(89)=4.0_ki*spak4e7
      abb70(90)=abb70(79)*abb70(89)
      abb70(91)=abb70(80)*spbk7k3
      abb70(92)=abb70(12)*abb70(91)
      abb70(93)=-spbl5k3*abb70(44)
      abb70(94)=-spbk7l5*abb70(64)
      abb70(93)=abb70(93)+abb70(94)
      abb70(93)=2.0_ki*abb70(93)
      abb70(94)=-spbl5k3*abb70(66)
      abb70(95)=abb70(8)*spak1k4
      abb70(21)=-abb70(21)*abb70(95)
      abb70(16)=-abb70(8)*abb70(16)
      abb70(16)=abb70(21)+abb70(16)
      abb70(21)=-spbk7l5*abb70(70)
      abb70(16)=abb70(21)+2.0_ki*abb70(16)+abb70(94)
      abb70(16)=4.0_ki*abb70(16)
      abb70(6)=abb70(6)*abb70(4)
      abb70(21)=abb70(6)*abb70(30)
      abb70(30)=abb70(75)*abb70(6)
      abb70(21)=abb70(21)+abb70(30)
      abb70(75)=abb70(77)*spbl5k3
      abb70(21)=abb70(75)+2.0_ki*abb70(21)
      abb70(75)=4.0_ki*abb70(21)
      abb70(94)=abb70(8)*spbk3k2
      abb70(80)=abb70(80)*abb70(94)
      abb70(30)=8.0_ki*abb70(30)
      abb70(21)=2.0_ki*abb70(21)
      abb70(96)=8.0_ki*abb70(94)
      abb70(97)=spak1k4*abb70(96)
      abb70(98)=-abb70(53)*abb70(95)
      abb70(99)=abb70(55)*abb70(8)
      abb70(100)=-spak1k4*abb70(99)
      abb70(56)=abb70(8)*abb70(56)
      abb70(42)=-abb70(94)*abb70(42)
      abb70(42)=abb70(56)+abb70(42)
      abb70(42)=4.0_ki*abb70(42)
      abb70(56)=spak4e7*abb70(96)
      abb70(89)=abb70(94)*abb70(89)
      abb70(91)=abb70(8)*abb70(91)
      abb70(23)=spak4l6*abb70(23)
      abb70(25)=spak4l5*abb70(25)
      abb70(14)=abb70(26)*abb70(14)
      abb70(10)=abb70(28)*abb70(10)
      abb70(10)=abb70(10)+abb70(14)+abb70(25)+abb70(23)
      abb70(10)=spae7k7*abb70(10)
      abb70(14)=abb70(40)*spae7k7
      abb70(17)=-abb70(17)*abb70(14)
      abb70(10)=abb70(17)+abb70(10)
      abb70(10)=spbk7k4*abb70(10)
      abb70(17)=-spak1k3*spbk2k1*abb70(45)
      abb70(23)=spbl6k2*abb70(39)
      abb70(23)=abb70(35)+abb70(23)
      abb70(23)=spak3l6*abb70(23)
      abb70(25)=spbl5k2*abb70(37)
      abb70(25)=abb70(33)+abb70(25)
      abb70(25)=spak3l5*abb70(25)
      abb70(10)=abb70(25)+abb70(23)+abb70(17)+abb70(10)
      abb70(10)=2.0_ki*abb70(10)
      abb70(17)=spbk4k2*abb70(19)
      abb70(19)=spak3l6*abb70(7)
      abb70(23)=spak3l5*abb70(9)
      abb70(19)=abb70(23)+abb70(19)
      abb70(19)=spbk3k2*abb70(19)
      abb70(13)=-spbk7k2*abb70(13)
      abb70(23)=spak1k7*spbk7k2
      abb70(25)=-abb70(24)*abb70(23)
      abb70(26)=-spak1k3*abb70(58)
      abb70(13)=abb70(17)+abb70(25)+abb70(26)+abb70(13)+abb70(19)
      abb70(13)=4.0_ki*abb70(13)
      abb70(17)=spbk7k2*spae7k7
      abb70(19)=abb70(17)*abb70(38)
      abb70(25)=2.0_ki*abb70(14)
      abb70(26)=spbk7k2*abb70(25)
      abb70(28)=abb70(60)*spbk7e7
      abb70(33)=-spak1k7*abb70(28)
      abb70(35)=abb70(17)*abb70(60)
      abb70(28)=spak1e7*abb70(28)
      abb70(37)=spbk7k2*abb70(15)
      abb70(39)=-spbk7l6*abb70(14)
      abb70(40)=abb70(32)*spak1k3
      abb70(5)=abb70(40)*abb70(5)
      abb70(58)=spae7k7*abb70(72)*spbk7k4
      abb70(5)=abb70(58)+abb70(5)
      abb70(58)=-abb70(71)*abb70(5)
      abb70(39)=2.0_ki*abb70(58)+abb70(39)
      abb70(39)=2.0_ki*abb70(39)
      abb70(23)=2.0_ki*abb70(23)
      abb70(58)=-abb70(12)*abb70(23)
      abb70(71)=2.0_ki*spak1k3
      abb70(72)=-abb70(79)*abb70(71)
      abb70(101)=2.0_ki*spbk4k2
      abb70(68)=-abb70(68)*abb70(101)
      abb70(7)=abb70(68)+abb70(72)+abb70(58)-abb70(7)
      abb70(7)=4.0_ki*abb70(7)
      abb70(58)=4.0_ki*spbk7e7
      abb70(68)=abb70(58)*abb70(12)
      abb70(72)=-spak1k7*abb70(68)
      abb70(17)=4.0_ki*abb70(17)
      abb70(102)=abb70(12)*abb70(17)
      abb70(68)=spak1e7*abb70(68)
      abb70(14)=-spbk7l5*abb70(14)
      abb70(5)=-abb70(6)*abb70(5)
      abb70(5)=2.0_ki*abb70(5)+abb70(14)
      abb70(5)=2.0_ki*abb70(5)
      abb70(6)=-abb70(8)*abb70(23)
      abb70(14)=-abb70(94)*abb70(71)
      abb70(23)=-abb70(95)*abb70(101)
      abb70(6)=abb70(23)+abb70(14)+abb70(6)-abb70(9)
      abb70(6)=4.0_ki*abb70(6)
      abb70(9)=abb70(58)*abb70(8)
      abb70(14)=-spak1k7*abb70(9)
      abb70(17)=abb70(8)*abb70(17)
      abb70(9)=spak1e7*abb70(9)
      abb70(23)=abb70(55)*abb70(24)*abb70(40)
      abb70(55)=spbk4k3*abb70(61)
      abb70(58)=-abb70(69)*abb70(60)
      abb70(55)=abb70(55)+abb70(58)
      abb70(55)=4.0_ki*abb70(55)
      abb70(58)=2.0_ki*spbe7k3
      abb70(58)=abb70(58)*abb70(24)*spak1e7
      abb70(41)=abb70(58)-abb70(41)-abb70(45)
      abb70(58)=4.0_ki*abb70(41)
      abb70(61)=8.0_ki*abb70(34)
      abb70(71)=4.0_ki*abb70(45)
      abb70(41)=2.0_ki*abb70(41)
      abb70(34)=4.0_ki*abb70(34)
      abb70(95)=abb70(40)*abb70(85)
      abb70(69)=16.0_ki*abb70(69)
      abb70(101)=-abb70(12)*abb70(69)
      abb70(53)=abb70(53)*spak1e7
      abb70(103)=abb70(12)*abb70(53)
      abb70(104)=spak1e7*abb70(85)
      abb70(40)=abb70(40)*abb70(99)
      abb70(69)=-abb70(8)*abb70(69)
      abb70(53)=abb70(8)*abb70(53)
      abb70(105)=spak1e7*abb70(99)
      abb70(106)=spbk7k4*abb70(25)
      abb70(15)=spbk4k2*abb70(15)
      abb70(32)=-abb70(32)*abb70(18)
      abb70(85)=-abb70(74)*abb70(85)
      abb70(74)=-abb70(74)*abb70(99)
      abb70(45)=2.0_ki*abb70(45)
      abb70(99)=-8.0_ki*spbk2k1*abb70(70)
      abb70(82)=-spak4k7*abb70(82)
      abb70(96)=-spak4k7*abb70(96)
      abb70(24)=abb70(20)*abb70(24)
      abb70(65)=-spbk2k1*abb70(65)
      abb70(24)=abb70(24)+abb70(65)
      abb70(24)=8.0_ki*abb70(24)
      abb70(65)=abb70(12)*abb70(20)
      abb70(79)=-spak3k4*abb70(79)
      abb70(65)=abb70(65)+abb70(79)
      abb70(65)=8.0_ki*abb70(65)
      abb70(20)=abb70(8)*abb70(20)
      abb70(79)=-spak3k4*abb70(94)
      abb70(20)=abb70(20)+abb70(79)
      abb70(20)=8.0_ki*abb70(20)
      abb70(44)=spbk3k1*abb70(44)
      abb70(64)=-spbk7k1*abb70(64)
      abb70(44)=abb70(44)+abb70(64)
      abb70(44)=2.0_ki*abb70(44)
      abb70(64)=spbk3k1*abb70(66)
      abb70(66)=-spbk7k1*abb70(70)
      abb70(64)=abb70(64)+abb70(66)
      abb70(64)=4.0_ki*abb70(64)
      abb70(38)=-spbk3k1*spak4e7*abb70(38)
      abb70(66)=-2.0_ki*spbk3k1*abb70(77)
      abb70(25)=-spbk7k1*abb70(25)
      abb70(12)=-8.0_ki*abb70(12)
      abb70(8)=-8.0_ki*abb70(8)
      R2d70=0.0_ki
      rat2 = rat2 + R2d70
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='70' value='", &
          & R2d70, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd70h0
