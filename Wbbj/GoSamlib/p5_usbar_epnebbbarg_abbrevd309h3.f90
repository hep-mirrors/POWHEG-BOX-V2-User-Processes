module     p5_usbar_epnebbbarg_abbrevd309h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(77), public :: abb309
   complex(ki), public :: R2d309
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb309(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb309(2)=NC**(-1)
      abb309(3)=es234**(-1)
      abb309(4)=spak2l6**(-1)
      abb309(5)=spak2l5**(-1)
      abb309(6)=spbl5k2**(-1)
      abb309(7)=sqrt(mB**2)
      abb309(8)=spak2k4*abb309(2)**2
      abb309(9)=c4*abb309(8)
      abb309(10)=TR*gW
      abb309(10)=abb309(10)**2*i_*CVSU*abb309(3)*abb309(1)
      abb309(11)=abb309(10)*mB
      abb309(12)=abb309(9)*abb309(11)
      abb309(13)=spak2k4*abb309(2)
      abb309(11)=abb309(11)*abb309(13)
      abb309(14)=abb309(11)*c3
      abb309(11)=abb309(11)*c1
      abb309(11)=-abb309(11)+abb309(12)-abb309(14)
      abb309(12)=-abb309(11)*spbe7k1
      abb309(14)=spbk3k2*spbl5k1
      abb309(15)=abb309(12)*abb309(14)
      abb309(16)=-spae7k7*abb309(15)
      abb309(17)=abb309(9)*abb309(10)
      abb309(18)=abb309(10)*abb309(13)
      abb309(19)=abb309(18)*c3
      abb309(18)=abb309(18)*c1
      abb309(17)=-abb309(18)+abb309(17)-abb309(19)
      abb309(18)=abb309(7)*spbk3k2
      abb309(19)=abb309(18)*spbe7k1*abb309(17)
      abb309(20)=spae7k7*spbl5k1
      abb309(21)=-abb309(20)*abb309(19)
      abb309(16)=abb309(16)+abb309(21)
      abb309(16)=spbk7l6*abb309(16)
      abb309(21)=spbl6k1*spak1e7
      abb309(15)=abb309(21)*abb309(15)
      abb309(22)=abb309(19)*abb309(21)
      abb309(23)=spbl5k1*abb309(22)
      abb309(24)=abb309(2)*spak2k4**2
      abb309(25)=mB**3
      abb309(26)=abb309(24)*abb309(25)
      abb309(27)=c1+c3
      abb309(28)=abb309(26)*abb309(27)
      abb309(29)=abb309(13)**2
      abb309(30)=abb309(29)*c4
      abb309(31)=abb309(30)*abb309(25)
      abb309(28)=abb309(28)-abb309(31)
      abb309(10)=abb309(10)*spbk4k3
      abb309(31)=abb309(10)*abb309(5)
      abb309(32)=abb309(31)*spbe7k1
      abb309(33)=abb309(32)*abb309(4)
      abb309(34)=abb309(33)*abb309(28)
      abb309(35)=abb309(34)*abb309(6)
      abb309(36)=spbk7k2*abb309(20)*abb309(35)
      abb309(24)=abb309(24)*abb309(27)
      abb309(37)=mB**2
      abb309(38)=abb309(24)*abb309(37)
      abb309(39)=abb309(13)*mB
      abb309(40)=c4*abb309(39)**2
      abb309(38)=abb309(38)-abb309(40)
      abb309(33)=abb309(7)*abb309(33)*abb309(38)
      abb309(38)=-spbk7k1*spae7k7*abb309(33)
      abb309(15)=abb309(38)+abb309(36)+abb309(16)+abb309(15)+abb309(23)
      abb309(15)=spak1k2*abb309(15)
      abb309(16)=abb309(5)**2
      abb309(23)=abb309(26)*abb309(16)
      abb309(26)=abb309(10)*spbe7k1
      abb309(36)=-abb309(27)*abb309(23)*abb309(26)
      abb309(16)=abb309(16)*abb309(25)
      abb309(25)=abb309(26)*abb309(30)*abb309(16)
      abb309(25)=abb309(25)+abb309(36)
      abb309(36)=abb309(25)*abb309(6)
      abb309(38)=spbk7l6*spae7k7
      abb309(41)=abb309(36)*abb309(38)
      abb309(25)=abb309(25)*abb309(21)
      abb309(42)=spak1e7*spbl5k1
      abb309(43)=-abb309(34)*abb309(42)
      abb309(25)=abb309(43)+abb309(25)
      abb309(25)=abb309(6)*abb309(25)
      abb309(25)=abb309(25)-abb309(41)
      abb309(25)=es12*abb309(25)
      abb309(43)=-abb309(27)*abb309(32)*abb309(39)
      abb309(44)=abb309(9)*mB
      abb309(32)=abb309(44)*abb309(32)
      abb309(32)=abb309(32)+abb309(43)
      abb309(43)=abb309(38)*abb309(32)
      abb309(45)=abb309(32)*abb309(21)
      abb309(43)=abb309(43)-abb309(45)
      abb309(46)=spak4l5*spbl5k1*spak1k2*abb309(43)
      abb309(47)=-abb309(27)*abb309(26)*abb309(13)
      abb309(9)=abb309(9)*abb309(26)
      abb309(9)=abb309(9)+abb309(47)
      abb309(26)=abb309(38)-abb309(21)
      abb309(9)=abb309(26)*abb309(9)
      abb309(47)=abb309(7)*spbl5k1
      abb309(48)=-spak1k4*abb309(47)*abb309(9)
      abb309(49)=spbl5k1**2
      abb309(50)=-spak1e7*abb309(49)
      abb309(51)=spbk7l5*abb309(20)
      abb309(50)=abb309(50)+abb309(51)
      abb309(30)=abb309(24)-abb309(30)
      abb309(51)=abb309(10)*abb309(4)
      abb309(30)=abb309(30)*abb309(51)*mB
      abb309(52)=spbe7k1*abb309(30)
      abb309(50)=spak1l5*abb309(52)*abb309(50)
      abb309(15)=abb309(50)+abb309(25)+abb309(48)+abb309(46)+abb309(15)
      abb309(15)=4.0_ki*abb309(15)
      abb309(17)=abb309(17)*abb309(18)
      abb309(18)=abb309(17)*spbl5k1
      abb309(14)=abb309(11)*abb309(14)
      abb309(25)=abb309(27)*abb309(39)
      abb309(25)=abb309(25)-abb309(44)
      abb309(25)=abb309(31)*abb309(25)
      abb309(46)=abb309(25)*spak4l5
      abb309(48)=abb309(46)*spbl5k1
      abb309(18)=abb309(48)+abb309(18)-abb309(14)
      abb309(48)=-spak1k2*abb309(18)
      abb309(27)=abb309(10)*abb309(27)
      abb309(13)=abb309(13)*abb309(27)
      abb309(10)=abb309(10)*c4
      abb309(8)=abb309(10)*abb309(8)
      abb309(8)=abb309(13)-abb309(8)
      abb309(13)=abb309(8)*abb309(47)
      abb309(47)=spak1k4*abb309(13)
      abb309(47)=abb309(47)+abb309(48)
      abb309(47)=spbl6k1*abb309(47)
      abb309(23)=abb309(23)*abb309(27)
      abb309(10)=abb309(10)*abb309(29)*abb309(16)
      abb309(10)=abb309(23)-abb309(10)
      abb309(16)=spbl6k1*abb309(10)
      abb309(23)=abb309(31)*abb309(4)
      abb309(27)=abb309(23)*abb309(28)
      abb309(28)=spbl5k1*abb309(27)
      abb309(16)=abb309(28)+abb309(16)
      abb309(16)=es12*abb309(6)*abb309(16)
      abb309(28)=spak1l5*abb309(30)*abb309(49)
      abb309(16)=abb309(28)+abb309(16)+abb309(47)
      abb309(16)=8.0_ki*abb309(16)
      abb309(28)=-spbk7l5*spae7k7
      abb309(28)=abb309(42)+abb309(28)
      abb309(28)=8.0_ki*abb309(52)*abb309(28)
      abb309(29)=-16.0_ki*abb309(30)*spbl5k1
      abb309(31)=-abb309(21)*abb309(36)
      abb309(31)=abb309(31)+abb309(41)
      abb309(31)=8.0_ki*abb309(31)
      abb309(36)=abb309(10)*abb309(6)
      abb309(41)=-16.0_ki*spbl6k1*abb309(36)
      abb309(47)=spbe7l6*spak2e7
      abb309(18)=-abb309(47)*abb309(18)
      abb309(47)=abb309(47)*abb309(36)
      abb309(48)=abb309(27)*abb309(6)
      abb309(49)=abb309(48)*spbe7l5
      abb309(50)=abb309(49)*spak2e7
      abb309(47)=abb309(47)+abb309(50)
      abb309(47)=abb309(47)*spbk2k1
      abb309(13)=abb309(13)*spbe7l6
      abb309(50)=abb309(13)*spak4e7
      abb309(30)=abb309(30)*spbe7l5
      abb309(52)=spbl5k1*abb309(30)*spal5e7
      abb309(18)=abb309(47)+abb309(52)+abb309(50)+abb309(18)
      abb309(47)=-abb309(33)-abb309(34)
      abb309(47)=spak2e7*abb309(47)
      abb309(47)=abb309(47)-abb309(18)
      abb309(47)=8.0_ki*abb309(47)
      abb309(34)=-abb309(33)+abb309(34)
      abb309(34)=spak2e7*abb309(34)
      abb309(18)=abb309(34)+abb309(18)
      abb309(18)=4.0_ki*abb309(18)
      abb309(34)=abb309(44)*abb309(51)
      abb309(39)=abb309(51)*abb309(39)
      abb309(44)=abb309(39)*c3
      abb309(39)=abb309(39)*c1
      abb309(34)=-abb309(39)+abb309(34)-abb309(44)
      abb309(39)=abb309(34)*spbl5k1
      abb309(44)=abb309(25)*spbl6k1
      abb309(44)=abb309(44)-abb309(39)
      abb309(50)=8.0_ki*spak2e7
      abb309(51)=abb309(44)*abb309(50)
      abb309(52)=4.0_ki*spak2e7
      abb309(53)=-abb309(44)*abb309(52)
      abb309(54)=abb309(39)*spak4e7
      abb309(11)=abb309(11)*spbk3k2
      abb309(55)=-abb309(11)*abb309(5)
      abb309(56)=abb309(55)*spak2e7
      abb309(57)=abb309(56)*spbl6k1
      abb309(54)=abb309(54)+abb309(57)
      abb309(57)=8.0_ki*abb309(54)
      abb309(54)=-4.0_ki*abb309(54)
      abb309(24)=-abb309(24)*abb309(37)*abb309(23)
      abb309(23)=abb309(40)*abb309(23)
      abb309(23)=abb309(23)+abb309(24)
      abb309(23)=abb309(23)*abb309(7)
      abb309(24)=abb309(23)*spbk7e7
      abb309(37)=-spak2k7*abb309(24)
      abb309(40)=spak1k2*abb309(33)
      abb309(37)=-2.0_ki*abb309(40)+abb309(37)
      abb309(37)=4.0_ki*abb309(37)
      abb309(24)=abb309(52)*abb309(24)
      abb309(40)=4.0_ki*spae7k7
      abb309(30)=spbk7l5*abb309(40)*abb309(30)
      abb309(58)=-spbe7k1*abb309(34)
      abb309(20)=abb309(20)*abb309(58)
      abb309(59)=spbl6k1*spae7k7*abb309(32)
      abb309(59)=-abb309(20)+abb309(59)
      abb309(59)=4.0_ki*spak1k2*abb309(59)
      abb309(60)=abb309(40)*abb309(32)
      abb309(61)=-spbk7k1*spak1k2*abb309(60)
      abb309(62)=abb309(32)*abb309(50)
      abb309(63)=-abb309(32)*abb309(52)
      abb309(9)=4.0_ki*abb309(7)*abb309(9)
      abb309(8)=abb309(8)*abb309(7)
      abb309(64)=-8.0_ki*spbl6k1*abb309(8)
      abb309(65)=abb309(58)*abb309(42)
      abb309(45)=-abb309(65)+abb309(45)
      abb309(45)=spak1k2*abb309(45)
      abb309(66)=abb309(26)*spbe7l5
      abb309(67)=abb309(8)*abb309(66)
      abb309(13)=spak1e7*abb309(13)
      abb309(13)=abb309(45)+abb309(13)+abb309(67)
      abb309(13)=4.0_ki*abb309(13)
      abb309(44)=spak1k2*abb309(44)
      abb309(8)=spbl6l5*abb309(8)
      abb309(8)=abb309(44)+abb309(8)
      abb309(8)=8.0_ki*abb309(8)
      abb309(44)=abb309(42)*abb309(34)
      abb309(45)=-4.0_ki*abb309(44)
      abb309(67)=spbe7k1*abb309(55)
      abb309(68)=abb309(67)*spak1k2
      abb309(69)=-spbl6k1*abb309(68)
      abb309(69)=abb309(33)+abb309(69)
      abb309(69)=spae7k7*abb309(69)
      abb309(20)=spak1k4*abb309(20)
      abb309(20)=abb309(20)+abb309(69)
      abb309(20)=4.0_ki*abb309(20)
      abb309(69)=abb309(58)*abb309(40)
      abb309(70)=abb309(34)*spbe7l5
      abb309(71)=-abb309(40)*abb309(70)
      abb309(72)=spbk7k1*abb309(40)*abb309(68)
      abb309(50)=-abb309(67)*abb309(50)
      abb309(52)=abb309(67)*abb309(52)
      abb309(73)=4.0_ki*spak1e7
      abb309(74)=abb309(73)*abb309(32)
      abb309(75)=-8.0_ki*abb309(25)
      abb309(12)=abb309(12)*spbk3k2
      abb309(19)=abb309(12)+abb309(19)
      abb309(19)=abb309(19)*abb309(38)
      abb309(12)=-abb309(21)*abb309(12)
      abb309(43)=-spak4l5*abb309(43)
      abb309(76)=spbk7k2*spae7k7
      abb309(77)=spbk2k1*spak1e7
      abb309(77)=-abb309(76)+abb309(77)
      abb309(35)=abb309(35)*abb309(77)
      abb309(12)=abb309(43)+abb309(19)+abb309(12)-abb309(22)+abb309(35)
      abb309(12)=4.0_ki*abb309(12)
      abb309(11)=abb309(11)-abb309(17)
      abb309(19)=abb309(11)-abb309(46)
      abb309(22)=-spbl6k1*abb309(19)
      abb309(35)=-spbk2k1*abb309(48)
      abb309(22)=abb309(35)+abb309(22)
      abb309(22)=8.0_ki*abb309(22)
      abb309(35)=abb309(73)*abb309(58)
      abb309(34)=16.0_ki*abb309(34)
      abb309(11)=spbe7l5*abb309(11)*abb309(26)
      abb309(14)=spak1e7*abb309(14)
      abb309(17)=-abb309(42)*abb309(17)
      abb309(14)=abb309(14)+abb309(17)
      abb309(14)=spbe7l6*abb309(14)
      abb309(10)=-abb309(10)*abb309(21)
      abb309(17)=abb309(27)*abb309(42)
      abb309(10)=abb309(17)+abb309(10)
      abb309(10)=abb309(6)*abb309(10)
      abb309(17)=abb309(38)*abb309(36)
      abb309(10)=abb309(10)+abb309(17)
      abb309(10)=spbe7k2*abb309(10)
      abb309(17)=spbe7l6*abb309(36)
      abb309(17)=abb309(17)-abb309(49)
      abb309(17)=spbk2k1*abb309(17)
      abb309(17)=abb309(17)+abb309(33)
      abb309(17)=spak1e7*abb309(17)
      abb309(26)=-abb309(21)*abb309(68)
      abb309(33)=spak1k4*abb309(65)
      abb309(38)=-spbe7l6*abb309(42)
      abb309(38)=abb309(38)-abb309(66)
      abb309(38)=abb309(38)*abb309(46)
      abb309(42)=abb309(49)*abb309(76)
      abb309(10)=abb309(42)+abb309(10)+abb309(33)+abb309(38)+abb309(14)+abb309(&
      &26)+abb309(11)+abb309(17)
      abb309(10)=4.0_ki*abb309(10)
      abb309(11)=spbl6l5*abb309(19)
      abb309(14)=spak1k2*abb309(55)*spbl6k1
      abb309(17)=spak1k4*abb309(39)
      abb309(19)=spbl6k2*abb309(36)
      abb309(11)=abb309(19)+abb309(11)+abb309(17)+abb309(14)-abb309(23)-abb309(&
      &27)
      abb309(11)=8.0_ki*abb309(11)
      abb309(14)=-spak2k7*abb309(55)
      abb309(17)=-spak4k7*abb309(25)
      abb309(14)=abb309(17)+abb309(14)
      abb309(14)=spbk7e7*abb309(14)
      abb309(17)=-spak1k4*abb309(32)
      abb309(17)=abb309(68)+abb309(17)
      abb309(14)=2.0_ki*abb309(17)+abb309(14)
      abb309(14)=4.0_ki*abb309(14)
      abb309(17)=-abb309(25)*abb309(21)
      abb309(17)=abb309(44)+abb309(17)
      abb309(17)=4.0_ki*abb309(17)
      abb309(19)=-4.0_ki*abb309(21)*abb309(55)
      abb309(21)=spak4e7*abb309(25)
      abb309(21)=abb309(56)+abb309(21)
      abb309(21)=4.0_ki*spbk7e7*abb309(21)
      abb309(23)=abb309(25)*spbe7l6
      abb309(23)=-abb309(23)+abb309(70)
      abb309(23)=abb309(23)*abb309(40)
      abb309(26)=abb309(73)*spbe7l6
      abb309(25)=-abb309(25)*abb309(26)
      abb309(27)=-abb309(40)*abb309(55)*spbe7l6
      abb309(33)=-8.0_ki*abb309(55)
      abb309(26)=-abb309(55)*abb309(26)
      abb309(36)=spak2e7*abb309(67)
      abb309(32)=-spak4e7*abb309(32)
      abb309(32)=abb309(36)+abb309(32)
      abb309(32)=8.0_ki*abb309(32)
      R2d309=0.0_ki
      rat2 = rat2 + R2d309
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='309' value='", &
          & R2d309, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd309h3
