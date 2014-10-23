module     p0_dbaru_epnebbbarg_abbrevd83h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(93), public :: abb83
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
      abb83(5)=spak2l5**(-1)
      abb83(6)=spak2k7**(-1)
      abb83(7)=spak2l6**(-1)
      abb83(8)=c4*abb83(2)**2
      abb83(9)=c1*abb83(2)
      abb83(8)=c2+abb83(8)-abb83(9)
      abb83(9)=-abb83(8)*spbk7k3
      abb83(10)=TR*gW
      abb83(10)=CVDU*i_*mB*abb83(4)*abb83(3)*abb83(1)*abb83(10)**2
      abb83(11)=abb83(10)*abb83(6)
      abb83(12)=abb83(7)*abb83(11)
      abb83(13)=abb83(12)*spak1k2
      abb83(14)=-abb83(13)*abb83(9)
      abb83(15)=abb83(14)*spbl5k3
      abb83(11)=abb83(5)*abb83(11)
      abb83(16)=abb83(11)*spak1k2
      abb83(17)=-abb83(16)*abb83(9)
      abb83(18)=abb83(17)*spbl6k3
      abb83(15)=abb83(15)+abb83(18)
      abb83(18)=abb83(15)*spak3k4
      abb83(19)=abb83(14)*spbk7l5
      abb83(20)=abb83(17)*spbk7l6
      abb83(19)=abb83(19)+abb83(20)
      abb83(20)=abb83(19)*spak4k7
      abb83(18)=abb83(18)+abb83(20)
      abb83(21)=16.0_ki*es71*abb83(18)
      abb83(22)=spbk7l6*abb83(5)
      abb83(23)=spbk7l5*abb83(7)
      abb83(22)=abb83(22)+abb83(23)
      abb83(23)=abb83(22)*abb83(8)*abb83(10)*spbk7k3
      abb83(24)=abb83(12)*abb83(8)
      abb83(25)=spbk7l5*spak2k4
      abb83(26)=abb83(25)*abb83(24)
      abb83(27)=abb83(11)*abb83(8)
      abb83(28)=spbk7l6*spak2k4
      abb83(29)=abb83(28)*abb83(27)
      abb83(26)=abb83(26)+abb83(29)
      abb83(29)=abb83(26)*spbk4k3
      abb83(23)=abb83(23)+abb83(29)
      abb83(29)=spak1k4*abb83(23)
      abb83(16)=-abb83(8)*abb83(16)
      abb83(30)=abb83(16)*spbl6k3
      abb83(8)=-abb83(8)*abb83(13)
      abb83(13)=abb83(8)*spbl5k3
      abb83(13)=abb83(30)+abb83(13)
      abb83(30)=-spak1k4*abb83(13)
      abb83(31)=abb83(30)*spbk7k1
      abb83(12)=-abb83(12)*abb83(9)
      abb83(32)=abb83(25)*abb83(12)
      abb83(11)=-abb83(11)*abb83(9)
      abb83(33)=abb83(28)*abb83(11)
      abb83(32)=abb83(32)+abb83(33)
      abb83(32)=abb83(32)*spak1k7
      abb83(29)=abb83(29)+abb83(31)-abb83(32)
      abb83(33)=32.0_ki*abb83(29)
      abb83(32)=32.0_ki*abb83(32)
      abb83(34)=-es712*abb83(18)
      abb83(35)=es12+es71
      abb83(20)=abb83(20)*abb83(35)
      abb83(15)=spak3k4*abb83(35)*abb83(15)
      abb83(15)=abb83(34)+abb83(15)+abb83(20)
      abb83(15)=16.0_ki*abb83(15)
      abb83(20)=-abb83(13)*spak2k4
      abb83(34)=-32.0_ki*spbk7k2*abb83(20)
      abb83(18)=-8.0_ki*es12*abb83(18)
      abb83(36)=abb83(14)*spbl5k2
      abb83(37)=abb83(17)*spbl6k2
      abb83(36)=abb83(37)+abb83(36)
      abb83(36)=spak2k4*abb83(36)
      abb83(37)=16.0_ki*abb83(36)
      abb83(29)=-16.0_ki*abb83(29)
      abb83(38)=16.0_ki*spbk7k2
      abb83(20)=abb83(20)*abb83(38)
      abb83(36)=-8.0_ki*abb83(36)
      abb83(39)=spak1k2**2
      abb83(40)=abb83(11)*abb83(39)
      abb83(41)=spbk7l6*abb83(40)
      abb83(42)=abb83(12)*abb83(39)
      abb83(43)=spbk7l5*abb83(42)
      abb83(41)=abb83(41)+abb83(43)
      abb83(41)=spak4k7*abb83(41)
      abb83(40)=spbl6k3*abb83(40)
      abb83(42)=spbl5k3*abb83(42)
      abb83(40)=abb83(40)+abb83(42)
      abb83(40)=spak3k4*abb83(40)
      abb83(40)=abb83(41)+abb83(40)
      abb83(40)=8.0_ki*spbk7k1*abb83(40)
      abb83(41)=abb83(25)*abb83(14)
      abb83(42)=abb83(17)*abb83(28)
      abb83(41)=abb83(41)+abb83(42)
      abb83(42)=16.0_ki*abb83(41)
      abb83(41)=-8.0_ki*abb83(41)
      abb83(26)=spbk7k4*abb83(26)
      abb83(43)=spbk7l6*abb83(11)
      abb83(44)=spbk7l5*abb83(12)
      abb83(43)=abb83(43)+abb83(44)
      abb83(43)=spak2k3*abb83(43)
      abb83(26)=abb83(43)+abb83(26)
      abb83(26)=spak1k7*abb83(26)
      abb83(43)=-abb83(16)*spbk7l6
      abb83(44)=-abb83(8)*spbk7l5
      abb83(43)=abb83(43)+abb83(44)
      abb83(44)=-es71*abb83(43)
      abb83(26)=abb83(44)+abb83(26)
      abb83(26)=16.0_ki*abb83(26)
      abb83(44)=abb83(35)-es712
      abb83(45)=-16.0_ki*abb83(43)*abb83(44)
      abb83(46)=es12*abb83(43)
      abb83(47)=spbk7k4*spak2k4
      abb83(48)=abb83(16)*abb83(47)
      abb83(49)=-spak2k3*abb83(17)
      abb83(48)=abb83(48)+abb83(49)
      abb83(48)=spbl6k2*abb83(48)
      abb83(47)=abb83(8)*abb83(47)
      abb83(49)=-spak2k3*abb83(14)
      abb83(47)=abb83(47)+abb83(49)
      abb83(47)=spbl5k2*abb83(47)
      abb83(46)=abb83(47)+abb83(46)+abb83(48)
      abb83(46)=8.0_ki*abb83(46)
      abb83(47)=abb83(27)*abb83(39)
      abb83(48)=-spbk7l6*abb83(47)
      abb83(39)=abb83(24)*abb83(39)
      abb83(49)=-spbk7l5*abb83(39)
      abb83(48)=abb83(48)+abb83(49)
      abb83(48)=spbk7k1*abb83(48)
      abb83(25)=-abb83(25)*abb83(8)
      abb83(28)=-abb83(28)*abb83(16)
      abb83(25)=abb83(25)+abb83(28)
      abb83(28)=-spbk7k4*abb83(25)
      abb83(19)=-spak2k3*abb83(19)
      abb83(19)=abb83(19)+abb83(48)+abb83(28)
      abb83(19)=8.0_ki*abb83(19)
      abb83(9)=-abb83(9)*abb83(22)*abb83(10)*spak1k2
      abb83(10)=abb83(47)*spbl6k3
      abb83(22)=abb83(39)*spbl5k3
      abb83(10)=abb83(10)+abb83(22)
      abb83(10)=abb83(10)*spbk7k1
      abb83(22)=abb83(25)*spbk4k3
      abb83(9)=abb83(10)+abb83(22)+abb83(9)
      abb83(10)=-16.0_ki*abb83(9)
      abb83(9)=8.0_ki*abb83(9)
      abb83(22)=abb83(24)*spbl5k3
      abb83(25)=abb83(27)*spbl6k3
      abb83(22)=abb83(22)+abb83(25)
      abb83(25)=spak1k4*abb83(22)
      abb83(28)=32.0_ki*abb83(25)
      abb83(39)=-spak4k7*abb83(43)
      abb83(47)=spak3k4*abb83(13)
      abb83(39)=abb83(39)+abb83(47)
      abb83(39)=spbk3k2*abb83(39)
      abb83(47)=spbk7k2*spak4k7
      abb83(48)=abb83(13)*abb83(47)
      abb83(39)=abb83(48)+abb83(39)
      abb83(39)=16.0_ki*abb83(39)
      abb83(25)=16.0_ki*abb83(25)
      abb83(48)=abb83(43)*spbk3k1
      abb83(23)=abb83(48)+abb83(23)
      abb83(48)=-spak1k4*abb83(23)
      abb83(31)=-abb83(31)+abb83(48)
      abb83(31)=8.0_ki*abb83(31)
      abb83(48)=spbl6k4*abb83(27)
      abb83(49)=spbl5k4*abb83(24)
      abb83(48)=abb83(49)+abb83(48)
      abb83(48)=spak1k4*abb83(48)
      abb83(49)=-spbk7l6*abb83(27)
      abb83(50)=-spbk7l5*abb83(24)
      abb83(49)=abb83(49)+abb83(50)
      abb83(49)=spak1k7*abb83(49)
      abb83(22)=spak1k3*abb83(22)
      abb83(22)=abb83(22)+abb83(49)+abb83(48)
      abb83(22)=16.0_ki*abb83(22)
      abb83(48)=-spbl6k2*abb83(16)
      abb83(49)=-spbl5k2*abb83(8)
      abb83(48)=abb83(48)+abb83(49)
      abb83(48)=16.0_ki*abb83(48)
      abb83(43)=8.0_ki*abb83(43)
      abb83(23)=spak1k7*abb83(23)
      abb83(35)=abb83(35)+es23-es123
      abb83(35)=abb83(13)*abb83(35)
      abb83(23)=abb83(23)+abb83(35)
      abb83(23)=8.0_ki*abb83(23)
      abb83(35)=-16.0_ki*abb83(13)
      abb83(13)=-8.0_ki*abb83(13)
      abb83(49)=spbl6k4*abb83(16)
      abb83(50)=spbl5k4*abb83(8)
      abb83(49)=abb83(49)+abb83(50)
      abb83(49)=8.0_ki*abb83(49)
      abb83(30)=8.0_ki*spbk3k1*abb83(30)
      abb83(50)=16.0_ki*spak1k7
      abb83(51)=spbk7k3**2
      abb83(52)=abb83(51)*abb83(50)*spak3k4
      abb83(53)=abb83(27)*abb83(52)
      abb83(54)=32.0_ki*spak1k4
      abb83(55)=-abb83(11)*abb83(54)
      abb83(56)=spbk3k2*spak3k4
      abb83(57)=abb83(56)-abb83(47)
      abb83(57)=8.0_ki*abb83(57)
      abb83(58)=-abb83(17)*abb83(57)
      abb83(59)=16.0_ki*spak1k4
      abb83(60)=abb83(11)*abb83(59)
      abb83(61)=8.0_ki*spak3k4
      abb83(51)=abb83(61)*abb83(51)
      abb83(62)=abb83(16)*abb83(51)
      abb83(63)=8.0_ki*spbk7k2
      abb83(64)=abb83(16)*abb83(63)
      abb83(65)=16.0_ki*abb83(17)
      abb83(17)=8.0_ki*abb83(17)
      abb83(66)=-abb83(11)*abb83(50)
      abb83(52)=abb83(24)*abb83(52)
      abb83(54)=-abb83(12)*abb83(54)
      abb83(57)=-abb83(14)*abb83(57)
      abb83(59)=abb83(12)*abb83(59)
      abb83(51)=abb83(8)*abb83(51)
      abb83(67)=abb83(8)*abb83(63)
      abb83(68)=16.0_ki*abb83(14)
      abb83(14)=8.0_ki*abb83(14)
      abb83(50)=-abb83(12)*abb83(50)
      abb83(11)=abb83(11)*abb83(44)
      abb83(69)=8.0_ki*spak4k7
      abb83(70)=abb83(11)*abb83(69)
      abb83(71)=8.0_ki*abb83(27)
      abb83(72)=-abb83(44)*abb83(71)
      abb83(73)=8.0_ki*spbk3k2
      abb83(74)=abb83(73)*spak4k7
      abb83(75)=-abb83(27)*abb83(74)
      abb83(12)=abb83(12)*abb83(44)
      abb83(76)=abb83(12)*abb83(69)
      abb83(77)=8.0_ki*abb83(24)
      abb83(78)=-abb83(44)*abb83(77)
      abb83(74)=-abb83(24)*abb83(74)
      abb83(79)=spbk4k3*spbk7k2
      abb83(80)=abb83(79)*spak2k4**2
      abb83(81)=abb83(27)*abb83(80)
      abb83(82)=-16.0_ki*abb83(81)
      abb83(83)=abb83(11)*spak2k4
      abb83(83)=16.0_ki*abb83(83)
      abb83(81)=8.0_ki*abb83(81)
      abb83(27)=abb83(27)*spak2k4
      abb83(84)=-abb83(44)*spbk7k4
      abb83(85)=abb83(27)*abb83(84)
      abb83(86)=-spak2k3*abb83(11)
      abb83(85)=abb83(85)+abb83(86)
      abb83(85)=8.0_ki*abb83(85)
      abb83(86)=-abb83(27)*abb83(79)
      abb83(86)=abb83(86)-abb83(11)
      abb83(86)=abb83(86)*abb83(69)
      abb83(87)=16.0_ki*spbk3k2
      abb83(88)=abb83(87)*abb83(27)
      abb83(89)=abb83(27)*abb83(73)
      abb83(44)=-es34-abb83(44)+es234
      abb83(90)=-abb83(44)*abb83(71)
      abb83(80)=abb83(24)*abb83(80)
      abb83(91)=-16.0_ki*abb83(80)
      abb83(92)=abb83(12)*spak2k4
      abb83(92)=16.0_ki*abb83(92)
      abb83(80)=8.0_ki*abb83(80)
      abb83(24)=abb83(24)*spak2k4
      abb83(84)=abb83(24)*abb83(84)
      abb83(93)=-spak2k3*abb83(12)
      abb83(84)=abb83(84)+abb83(93)
      abb83(84)=8.0_ki*abb83(84)
      abb83(79)=-abb83(24)*abb83(79)
      abb83(79)=abb83(79)-abb83(12)
      abb83(69)=abb83(79)*abb83(69)
      abb83(79)=abb83(87)*abb83(24)
      abb83(73)=abb83(24)*abb83(73)
      abb83(44)=-abb83(44)*abb83(77)
      abb83(11)=-abb83(11)*abb83(61)
      abb83(87)=abb83(27)*abb83(38)
      abb83(27)=-abb83(27)*abb83(63)
      abb83(47)=abb83(56)+abb83(47)
      abb83(56)=abb83(47)*abb83(71)
      abb83(12)=-abb83(12)*abb83(61)
      abb83(38)=abb83(24)*abb83(38)
      abb83(24)=-abb83(24)*abb83(63)
      abb83(47)=abb83(47)*abb83(77)
      abb83(16)=spbl6k1*abb83(16)
      abb83(8)=spbl5k1*abb83(8)
      abb83(8)=abb83(16)+abb83(8)
      abb83(8)=8.0_ki*abb83(8)
      R2d83=0.0_ki
      rat2 = rat2 + R2d83
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='83' value='", &
          & R2d83, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd83h3
