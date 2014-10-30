module     p0_dbaru_epnebbbarg_abbrevd176h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(89), public :: abb176
   complex(ki), public :: R2d176
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
      abb176(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb176(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb176(3)=NC**(-1)
      abb176(4)=sqrt2**(-1)
      abb176(5)=es234**(-1)
      abb176(6)=es567**(-1)
      abb176(7)=spbl6k2**(-1)
      abb176(8)=spbk7k2**(-1)
      abb176(9)=sqrt(mB**2)
      abb176(10)=spak2l6**(-1)
      abb176(11)=spak2l5**(-1)
      abb176(12)=spbl5k2**(-1)
      abb176(13)=1.0_ki/(es34+es567-es12-es234)
      abb176(14)=c1*abb176(3)
      abb176(15)=c2*abb176(3)**2
      abb176(16)=abb176(14)-abb176(15)
      abb176(17)=TR*gW
      abb176(17)=abb176(6)*i_*CVDU*abb176(4)*abb176(2)*abb176(1)*abb176(17)**2
      abb176(18)=abb176(17)*abb176(5)
      abb176(19)=spal5k7*abb176(18)
      abb176(20)=-abb176(16)*abb176(19)*spak3k4
      abb176(21)=spbk3k2**2
      abb176(22)=abb176(21)*mB
      abb176(23)=abb176(22)*abb176(20)
      abb176(24)=spak1k7*abb176(7)
      abb176(25)=abb176(23)*abb176(24)
      abb176(26)=-abb176(8)*abb176(20)
      abb176(22)=-abb176(22)*abb176(26)
      abb176(27)=abb176(7)*spbl5k2
      abb176(28)=abb176(27)*spak1l5
      abb176(29)=abb176(22)*abb176(28)
      abb176(30)=abb176(25)+abb176(29)
      abb176(31)=-abb176(21)*abb176(26)
      abb176(32)=spak1l6*abb176(9)
      abb176(33)=abb176(31)*abb176(32)
      abb176(33)=abb176(33)+abb176(30)
      abb176(34)=4.0_ki*abb176(33)
      abb176(35)=abb176(15)*spbk3k2
      abb176(36)=abb176(19)*abb176(8)
      abb176(37)=abb176(35)*abb176(36)
      abb176(38)=abb176(36)*abb176(14)
      abb176(39)=abb176(38)*spbk3k2
      abb176(37)=abb176(37)-abb176(39)
      abb176(39)=abb176(37)*abb176(9)
      abb176(40)=mB*spbk3k2
      abb176(15)=abb176(15)*abb176(40)
      abb176(36)=abb176(15)*abb176(36)
      abb176(38)=abb176(38)*abb176(40)
      abb176(36)=abb176(36)-abb176(38)
      abb176(38)=abb176(39)-abb176(36)
      abb176(41)=spbl5k2**2
      abb176(42)=abb176(41)*spak1l5
      abb176(43)=abb176(38)*abb176(42)
      abb176(44)=abb176(40)*abb176(14)
      abb176(44)=abb176(44)-abb176(15)
      abb176(44)=abb176(19)*abb176(44)
      abb176(19)=abb176(9)*abb176(16)*abb176(19)*spbk3k2
      abb176(19)=abb176(19)-abb176(44)
      abb176(45)=abb176(19)*spak1k7
      abb176(46)=-spbl5k2*abb176(45)
      abb176(43)=abb176(46)+abb176(43)
      abb176(43)=spak2k4*abb176(43)
      abb176(17)=abb176(17)*abb176(16)
      abb176(46)=-abb176(9)*abb176(17)*spal5k7
      abb176(47)=-spal5k7*abb176(17)*mB
      abb176(46)=abb176(46)-abb176(47)
      abb176(48)=abb176(46)*spak1k7
      abb176(49)=spak1k4*abb176(13)
      abb176(50)=abb176(49)*spbl5k2
      abb176(51)=-abb176(50)*abb176(48)
      abb176(17)=abb176(17)*abb176(8)*spal5k7
      abb176(52)=-abb176(17)*abb176(9)
      abb176(53)=mB*abb176(17)
      abb176(54)=abb176(52)+abb176(53)
      abb176(55)=-abb176(54)*abb176(49)*abb176(42)
      abb176(51)=abb176(51)+abb176(55)
      abb176(51)=spbk3k1*abb176(51)
      abb176(43)=abb176(43)+abb176(51)
      abb176(43)=spal5l6*abb176(43)
      abb176(21)=abb176(21)*mB**3
      abb176(51)=-abb176(21)*abb176(26)
      abb176(55)=abb176(7)**2
      abb176(56)=abb176(55)*abb176(51)
      abb176(57)=spak1l5*spbl5k2
      abb176(58)=abb176(56)*abb176(57)
      abb176(59)=abb176(40)**2
      abb176(60)=-abb176(59)*abb176(26)
      abb176(61)=abb176(60)*abb176(32)
      abb176(62)=abb176(61)*abb176(7)
      abb176(21)=abb176(21)*abb176(20)
      abb176(55)=spak1k7*abb176(21)*abb176(55)
      abb176(58)=abb176(58)+abb176(62)+abb176(55)
      abb176(58)=abb176(58)*abb176(10)
      abb176(63)=abb176(12)*abb176(11)
      abb176(64)=abb176(61)*abb176(63)
      abb176(58)=abb176(58)-abb176(64)
      abb176(65)=es71+es12-es712
      abb176(58)=abb176(58)*abb176(65)
      abb176(59)=-abb176(20)*abb176(59)
      abb176(66)=abb176(9)*abb176(23)
      abb176(66)=abb176(66)+abb176(59)
      abb176(66)=abb176(66)*abb176(24)
      abb176(67)=abb176(9)*abb176(22)
      abb176(67)=abb176(67)-abb176(60)
      abb176(67)=abb176(67)*abb176(28)
      abb176(66)=abb176(66)+abb176(67)
      abb176(66)=abb176(9)*abb176(66)
      abb176(67)=abb176(49)*spbk3k1
      abb176(68)=abb176(67)*abb176(46)
      abb176(69)=abb176(19)*spak2k4
      abb176(68)=abb176(68)+abb176(69)
      abb176(69)=abb176(68)*spal6k7
      abb176(70)=abb176(57)*abb176(69)
      abb176(71)=abb176(40)*abb176(20)
      abb176(72)=abb176(27)*spak1k7
      abb176(73)=abb176(71)*abb176(72)
      abb176(74)=-abb176(40)*abb176(26)
      abb176(42)=abb176(42)*abb176(7)
      abb176(75)=abb176(74)*abb176(42)
      abb176(26)=-spbk3k2*abb176(26)
      abb176(76)=abb176(26)*abb176(32)
      abb176(77)=spbl5k2*abb176(76)
      abb176(73)=abb176(77)+abb176(73)+abb176(75)
      abb176(73)=spal5l6*abb176(73)
      abb176(75)=-abb176(71)*abb176(28)
      abb176(20)=spbk3k2*abb176(20)
      abb176(77)=-abb176(20)*abb176(32)
      abb176(75)=abb176(75)+abb176(77)
      abb176(75)=spal6k7*abb176(75)
      abb176(73)=abb176(75)+abb176(73)
      abb176(73)=spbl6k3*abb176(73)
      abb176(68)=spak1k7*abb176(68)
      abb176(75)=abb176(71)*abb176(24)
      abb176(77)=-spbl6k3*abb176(75)
      abb176(68)=abb176(68)+abb176(77)
      abb176(68)=spbk7k2*spal6k7*abb176(68)
      abb176(77)=abb176(49)*spbk4k3
      abb176(78)=abb176(46)*abb176(77)
      abb176(79)=spal5l6*spbl5k2
      abb176(80)=-abb176(78)*abb176(79)
      abb176(81)=abb176(78)*spal6k7
      abb176(82)=spbk7k2*abb176(81)
      abb176(80)=abb176(80)+abb176(82)
      abb176(80)=spak4k7*abb176(80)
      abb176(82)=spbl5k2*abb176(81)
      abb176(83)=abb176(54)*abb176(77)
      abb176(84)=-spal5l6*abb176(41)*abb176(83)
      abb176(82)=abb176(82)+abb176(84)
      abb176(82)=spak4l5*abb176(82)
      abb176(16)=-abb176(16)*abb176(8)
      abb176(18)=spak3k4*spal5k7**2*abb176(18)
      abb176(84)=abb176(18)*spbk3k2
      abb176(85)=-spbl5k2*abb176(32)*abb176(84)*abb176(16)
      abb176(26)=abb176(26)*abb176(9)
      abb176(86)=abb176(26)*abb176(57)
      abb176(87)=spak1k7*abb176(9)
      abb176(88)=abb176(20)*abb176(87)
      abb176(86)=abb176(86)+abb176(88)
      abb176(88)=spal6k7*abb176(86)
      abb176(85)=abb176(85)+abb176(88)
      abb176(85)=spbk7k3*abb176(85)
      abb176(35)=abb176(18)*abb176(35)
      abb176(84)=-abb176(14)*abb176(84)
      abb176(35)=abb176(35)+abb176(84)
      abb176(35)=abb176(35)*abb176(32)
      abb176(84)=-spal5l6*abb176(86)
      abb176(35)=abb176(35)+abb176(84)
      abb176(35)=spbl5k3*abb176(35)
      abb176(55)=spbl5k2*abb176(55)
      abb176(84)=spak1l5*abb176(51)*abb176(27)**2
      abb176(88)=abb176(27)*abb176(61)
      abb176(55)=abb176(88)+abb176(55)+abb176(84)
      abb176(55)=spak2l5*abb176(10)*abb176(55)
      abb176(59)=-abb176(59)*abb176(63)*abb176(87)
      abb176(84)=abb176(60)*abb176(9)
      abb176(88)=abb176(11)*spak1l5*abb176(84)
      abb176(64)=spbl6k2*abb176(64)
      abb176(59)=abb176(64)+abb176(88)+abb176(59)
      abb176(59)=spak2l6*abb176(59)
      abb176(64)=abb176(31)*abb176(9)**2
      abb176(60)=abb176(64)-abb176(60)
      abb176(60)=abb176(60)*abb176(32)
      abb176(64)=abb176(76)*spbl6k2
      abb176(88)=spbk7k3*spal6k7
      abb176(89)=-spbl5k3*spal5l6
      abb176(88)=abb176(88)+abb176(89)
      abb176(88)=abb176(88)*abb176(64)
      abb176(35)=abb176(59)+abb176(55)+abb176(88)+abb176(35)+abb176(85)+abb176(&
      &82)+abb176(80)+abb176(68)+abb176(73)+abb176(43)+abb176(70)+abb176(60)+ab&
      &b176(66)+abb176(58)
      abb176(35)=8.0_ki*abb176(35)
      abb176(25)=16.0_ki*abb176(25)
      abb176(30)=-16.0_ki*abb176(30)
      abb176(29)=16.0_ki*abb176(29)
      abb176(43)=-abb176(21)*abb176(24)
      abb176(43)=abb176(43)+abb176(61)
      abb176(43)=abb176(43)*abb176(63)
      abb176(55)=-abb176(10)*abb176(62)
      abb176(58)=abb176(51)*abb176(7)
      abb176(59)=abb176(58)*abb176(11)
      abb176(60)=-spak1l5*abb176(59)
      abb176(43)=abb176(43)+abb176(55)+abb176(60)
      abb176(43)=16.0_ki*abb176(43)
      abb176(33)=-8.0_ki*abb176(33)
      abb176(55)=8.0_ki*abb176(7)
      abb176(23)=spak1l5*abb176(23)*abb176(55)
      abb176(60)=8.0_ki*spak1l6
      abb176(61)=abb176(71)*abb176(60)
      abb176(62)=abb176(44)*abb176(28)
      abb176(19)=-spak1l6*abb176(19)
      abb176(19)=abb176(62)+abb176(19)
      abb176(19)=spak2k4*abb176(19)
      abb176(62)=abb176(44)*spak2k4
      abb176(66)=abb176(67)*abb176(47)
      abb176(62)=abb176(62)+abb176(66)
      abb176(24)=abb176(24)*abb176(62)
      abb176(66)=abb176(47)*abb176(77)
      abb176(68)=abb176(7)*abb176(66)*spak4k7
      abb176(24)=abb176(68)+abb176(24)
      abb176(24)=spbk7k2*abb176(24)
      abb176(46)=-spak1l6*abb176(46)
      abb176(68)=abb176(47)*abb176(28)
      abb176(46)=abb176(68)+abb176(46)
      abb176(46)=abb176(46)*abb176(67)
      abb176(28)=abb176(74)*abb176(28)
      abb176(28)=abb176(28)+abb176(75)
      abb176(68)=abb176(28)-abb176(76)
      abb176(70)=spbk7k3*abb176(68)
      abb176(73)=-spak4l6*abb176(78)
      abb176(75)=abb176(66)*abb176(27)
      abb176(76)=spak4l5*abb176(75)
      abb176(21)=spak1k2*abb176(7)*abb176(21)*abb176(63)
      abb176(19)=abb176(21)+abb176(73)+abb176(70)+abb176(76)+abb176(19)+abb176(&
      &46)+abb176(24)
      abb176(19)=8.0_ki*abb176(19)
      abb176(21)=8.0_ki*abb176(31)
      abb176(24)=-abb176(87)*abb176(21)
      abb176(21)=-spak1l5*abb176(9)*abb176(21)
      abb176(31)=-abb176(64)+abb176(86)
      abb176(31)=8.0_ki*abb176(31)
      abb176(46)=-abb176(38)*abb176(57)
      abb176(45)=abb176(45)+abb176(46)
      abb176(45)=spak2k4*abb176(45)
      abb176(46)=abb176(54)*abb176(57)
      abb176(46)=abb176(48)+abb176(46)
      abb176(46)=abb176(46)*abb176(67)
      abb176(37)=spak2k4*abb176(37)
      abb176(17)=abb176(17)*abb176(67)
      abb176(17)=abb176(37)+abb176(17)
      abb176(17)=abb176(32)*abb176(17)
      abb176(32)=abb176(52)*abb176(77)
      abb176(37)=-spak4l6*abb176(32)
      abb176(17)=abb176(37)+abb176(17)
      abb176(17)=spbl6k2*abb176(17)
      abb176(28)=-spbl6k3*abb176(28)
      abb176(37)=spak4k7*abb176(78)
      abb176(48)=abb176(83)*spbl5k2
      abb176(57)=spak4l5*abb176(48)
      abb176(64)=abb176(10)*abb176(7)
      abb176(64)=abb176(64)-abb176(63)
      abb176(64)=spak1k2*abb176(84)*abb176(64)
      abb176(17)=abb176(64)+abb176(57)+abb176(37)+abb176(28)+abb176(45)+abb176(&
      &46)+abb176(17)
      abb176(17)=8.0_ki*abb176(17)
      abb176(22)=8.0_ki*abb176(22)*abb176(72)
      abb176(28)=spbl5k2*abb176(74)*abb176(60)
      abb176(37)=abb176(38)*spbl5k2
      abb176(38)=spak1l6*abb176(37)
      abb176(44)=abb176(44)*abb176(72)
      abb176(45)=-abb176(36)*abb176(42)
      abb176(38)=abb176(38)+abb176(44)+abb176(45)
      abb176(38)=spak2k4*abb176(38)
      abb176(44)=abb176(47)*abb176(72)
      abb176(42)=-abb176(53)*abb176(42)
      abb176(42)=abb176(44)+abb176(42)
      abb176(42)=abb176(49)*abb176(42)
      abb176(44)=abb176(54)*abb176(50)
      abb176(45)=-spak1l6*abb176(44)
      abb176(42)=abb176(45)+abb176(42)
      abb176(42)=spbk3k1*abb176(42)
      abb176(45)=spbl5k3*abb176(68)
      abb176(46)=-spak4l6*abb176(48)
      abb176(47)=spak4k7*abb176(75)
      abb176(49)=abb176(53)*abb176(77)
      abb176(41)=-spak4l5*abb176(7)*abb176(41)*abb176(49)
      abb176(50)=spak1k2*abb176(59)
      abb176(38)=abb176(50)+abb176(46)+abb176(45)+abb176(41)+abb176(47)+abb176(&
      &38)+abb176(42)
      abb176(38)=8.0_ki*abb176(38)
      abb176(41)=spal5l6*abb176(48)
      abb176(41)=-abb176(81)+abb176(41)
      abb176(41)=16.0_ki*abb176(41)
      abb176(42)=-abb176(66)*abb176(55)
      abb176(32)=-8.0_ki*abb176(32)
      abb176(45)=8.0_ki*abb176(27)
      abb176(46)=abb176(49)*abb176(45)
      abb176(20)=abb176(9)*abb176(20)
      abb176(20)=-2.0_ki*abb176(20)+abb176(71)
      abb176(20)=spal6k7*abb176(20)
      abb176(47)=2.0_ki*abb176(26)-abb176(74)
      abb176(47)=abb176(47)*abb176(79)
      abb176(20)=abb176(20)+abb176(47)
      abb176(20)=8.0_ki*abb176(20)
      abb176(47)=-abb176(71)*abb176(55)
      abb176(26)=-8.0_ki*abb176(26)
      abb176(48)=abb176(74)*abb176(27)
      abb176(49)=-8.0_ki*abb176(48)
      abb176(37)=-spak2k4*abb176(37)
      abb176(44)=spbk3k1*abb176(44)
      abb176(37)=abb176(37)+abb176(44)
      abb176(37)=spal5l6*abb176(37)
      abb176(37)=abb176(69)-abb176(37)
      abb176(15)=-abb176(15)*abb176(18)
      abb176(18)=abb176(18)*abb176(40)
      abb176(14)=abb176(14)*abb176(18)
      abb176(14)=abb176(15)+abb176(14)
      abb176(14)=spbl5k3*abb176(14)
      abb176(14)=abb176(14)+abb176(84)+abb176(51)
      abb176(14)=abb176(7)*abb176(14)
      abb176(15)=abb176(58)*abb176(63)
      abb176(40)=abb176(56)*abb176(10)
      abb176(15)=abb176(15)-abb176(40)
      abb176(15)=abb176(15)*abb176(65)
      abb176(44)=spal6k7*abb176(7)*abb176(71)
      abb176(48)=-spal5l6*abb176(48)
      abb176(44)=abb176(44)+abb176(48)
      abb176(44)=spbl6k3*abb176(44)
      abb176(16)=spbk7k3*abb176(27)*abb176(18)*abb176(16)
      abb176(18)=-spak2l5*spbl5k2*abb176(40)
      abb176(14)=abb176(18)+abb176(16)+abb176(44)+abb176(15)+abb176(14)-2.0_ki*&
      &abb176(37)
      abb176(14)=8.0_ki*abb176(14)
      abb176(15)=-abb176(62)*abb176(55)
      abb176(16)=spak2k4*abb176(39)
      abb176(18)=-abb176(52)*abb176(67)
      abb176(16)=abb176(16)+abb176(18)
      abb176(16)=8.0_ki*abb176(16)
      abb176(18)=spak2k4*abb176(36)
      abb176(27)=abb176(53)*abb176(67)
      abb176(18)=abb176(18)+abb176(27)
      abb176(18)=abb176(18)*abb176(45)
      R2d176=abb176(34)
      rat2 = rat2 + R2d176
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='176' value='", &
          & R2d176, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd176h4