module     p0_dbaru_epnebbbarg_abbrevd123h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(76), public :: abb123
   complex(ki), public :: R2d123
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
      abb123(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb123(2)=1.0_ki/(-es71+es56-es567+es234)
      abb123(3)=es56**(-1)
      abb123(4)=spak2l5**(-1)
      abb123(5)=spak2l6**(-1)
      abb123(6)=spbl6k2**(-1)
      abb123(7)=NC*c1
      abb123(7)=abb123(7)-c4
      abb123(8)=abb123(3)*i_*CVDU*abb123(2)*abb123(1)
      abb123(9)=TR*gW
      abb123(10)=abb123(9)*mB
      abb123(10)=abb123(7)*abb123(8)*abb123(10)**2
      abb123(11)=-abb123(4)*abb123(10)
      abb123(12)=spbl5k2*abb123(6)
      abb123(13)=abb123(12)*spak1k2
      abb123(14)=abb123(13)*abb123(11)
      abb123(15)=spak3k4*spbe7k3
      abb123(16)=abb123(15)*spbk3k2
      abb123(17)=abb123(16)*abb123(14)
      abb123(18)=abb123(14)*spbk3k2
      abb123(19)=spak2k4*spbe7k2
      abb123(20)=abb123(18)*abb123(19)
      abb123(17)=abb123(17)-abb123(20)
      abb123(17)=abb123(17)*spal5e7
      abb123(12)=abb123(5)*abb123(12)*spak1l6*abb123(10)
      abb123(20)=-spak1l6*abb123(11)
      abb123(21)=abb123(12)+abb123(20)
      abb123(16)=spak2e7*abb123(16)*abb123(21)
      abb123(16)=abb123(17)-abb123(16)
      abb123(17)=spak1k2*spbk3k2
      abb123(22)=abb123(17)*abb123(11)
      abb123(23)=abb123(22)*abb123(15)
      abb123(7)=-abb123(7)*abb123(9)**2*abb123(8)*spak1l6
      abb123(8)=abb123(19)-abb123(15)
      abb123(9)=-abb123(8)*abb123(7)*spbk3k2
      abb123(24)=abb123(9)*spbl6l5
      abb123(25)=abb123(22)*abb123(19)
      abb123(23)=-abb123(25)+abb123(23)-abb123(24)
      abb123(23)=abb123(23)*spal6e7
      abb123(24)=abb123(11)*es12
      abb123(26)=spbk3k2*abb123(6)
      abb123(27)=abb123(24)*abb123(26)
      abb123(28)=-abb123(27)*abb123(8)
      abb123(29)=abb123(9)*spbl5k1
      abb123(28)=abb123(28)-abb123(29)
      abb123(28)=abb123(28)*spak1e7
      abb123(23)=abb123(28)+abb123(23)+abb123(16)
      abb123(28)=es712-es71
      abb123(29)=abb123(23)*abb123(28)
      abb123(16)=-es12*abb123(16)
      abb123(30)=abb123(24)*abb123(17)*abb123(8)
      abb123(9)=abb123(9)*es12
      abb123(31)=spbl6l5*abb123(9)
      abb123(30)=abb123(31)+abb123(30)
      abb123(30)=spal6e7*abb123(30)
      abb123(31)=abb123(11)*es12**2
      abb123(26)=abb123(8)*abb123(26)*abb123(31)
      abb123(9)=spbl5k1*abb123(9)
      abb123(9)=abb123(9)+abb123(26)
      abb123(9)=spak1e7*abb123(9)
      abb123(9)=abb123(30)+abb123(9)+abb123(29)+abb123(16)
      abb123(9)=4.0_ki*abb123(9)
      abb123(16)=abb123(11)*spak1k2
      abb123(26)=abb123(7)*spbl6l5
      abb123(29)=abb123(16)-abb123(26)
      abb123(30)=-spak2l6*abb123(29)
      abb123(32)=abb123(7)*spbl5k1
      abb123(33)=spak1k2*abb123(32)
      abb123(30)=abb123(33)-abb123(30)
      abb123(33)=spak1k2*abb123(6)
      abb123(34)=abb123(24)*abb123(33)
      abb123(10)=-abb123(10)*abb123(13)
      abb123(13)=abb123(34)-abb123(10)
      abb123(30)=2.0_ki*abb123(13)-2.0_ki*abb123(30)
      abb123(30)=abb123(30)*spak3k4*spbk3k2**2
      abb123(34)=spak3k4*spbk3k2
      abb123(35)=abb123(26)*abb123(34)
      abb123(36)=abb123(22)*spak3k4
      abb123(35)=abb123(35)-abb123(36)
      abb123(36)=spbk7k3*abb123(35)
      abb123(37)=spak2k4*spbk3k2
      abb123(38)=abb123(26)*abb123(37)
      abb123(39)=abb123(22)*spak2k4
      abb123(38)=abb123(38)-abb123(39)
      abb123(39)=-spbk7k2*abb123(38)
      abb123(36)=abb123(36)+abb123(39)
      abb123(36)=spal6k7*abb123(36)
      abb123(39)=abb123(32)*abb123(34)
      abb123(40)=abb123(27)*spak3k4
      abb123(39)=abb123(39)-abb123(40)
      abb123(40)=spbk7k3*abb123(39)
      abb123(41)=abb123(32)*abb123(37)
      abb123(42)=abb123(27)*spak2k4
      abb123(41)=abb123(41)-abb123(42)
      abb123(42)=-spbk7k2*abb123(41)
      abb123(40)=abb123(40)+abb123(42)
      abb123(40)=spak1k7*abb123(40)
      abb123(42)=abb123(37)*abb123(21)
      abb123(43)=abb123(28)-es12
      abb123(44)=abb123(42)*abb123(43)
      abb123(45)=spbk7k3*abb123(21)
      abb123(46)=abb123(45)*spak2k7
      abb123(47)=abb123(34)*abb123(46)
      abb123(48)=abb123(14)*spbk7k3
      abb123(49)=-abb123(34)*abb123(48)
      abb123(50)=abb123(14)*spbk7k2
      abb123(51)=abb123(37)*abb123(50)
      abb123(49)=abb123(49)+abb123(51)
      abb123(49)=spal5k7*abb123(49)
      abb123(30)=abb123(49)+abb123(47)+abb123(40)+abb123(36)+abb123(44)+abb123(&
      &30)
      abb123(30)=4.0_ki*abb123(30)
      abb123(36)=8.0_ki*abb123(23)
      abb123(40)=abb123(32)*spbk3k2
      abb123(27)=abb123(40)-abb123(27)
      abb123(40)=abb123(27)*spak1k4
      abb123(44)=abb123(26)*spbk3k2
      abb123(47)=abb123(44)-abb123(22)
      abb123(49)=abb123(47)*spak4l6
      abb123(51)=abb123(18)*spak4l5
      abb123(40)=-abb123(49)+abb123(51)+abb123(40)
      abb123(49)=abb123(42)+abb123(40)
      abb123(51)=8.0_ki*abb123(49)
      abb123(52)=spbe7k2*spak1k2
      abb123(53)=abb123(52)*abb123(11)
      abb123(54)=abb123(26)*spbe7k2
      abb123(53)=abb123(53)-abb123(54)
      abb123(55)=abb123(53)*spak4l6
      abb123(56)=es12*abb123(6)
      abb123(57)=abb123(11)*abb123(56)
      abb123(58)=abb123(57)*spbe7k2
      abb123(59)=abb123(32)*spbe7k2
      abb123(58)=abb123(58)-abb123(59)
      abb123(60)=abb123(58)*spak1k4
      abb123(61)=abb123(12)*abb123(19)
      abb123(62)=abb123(20)*abb123(19)
      abb123(55)=abb123(61)+abb123(62)+abb123(55)-abb123(60)
      abb123(55)=spbk4k3*abb123(55)
      abb123(60)=abb123(53)*spal6k7
      abb123(61)=abb123(58)*spak1k7
      abb123(63)=abb123(14)*spbe7k2
      abb123(64)=abb123(63)*spal5k7
      abb123(60)=abb123(61)+abb123(64)+abb123(60)
      abb123(60)=abb123(60)*spbk7k3
      abb123(22)=abb123(22)*spbe7k2
      abb123(61)=abb123(54)*spbk3k2
      abb123(22)=abb123(22)-abb123(61)
      abb123(22)=abb123(22)*spak2l6
      abb123(46)=spbe7k2*abb123(46)
      abb123(61)=spbe7k2*spbk3k2
      abb123(64)=abb123(13)*abb123(61)
      abb123(63)=spbk4k3*abb123(63)*spak4l5
      abb123(65)=abb123(59)*abb123(17)
      abb123(22)=abb123(55)+abb123(60)+abb123(22)-abb123(46)+abb123(63)+abb123(&
      &65)-abb123(64)
      abb123(22)=spak4e7*abb123(22)
      abb123(46)=abb123(32)*spbe7k3
      abb123(55)=abb123(11)*spbe7k3
      abb123(56)=abb123(55)*abb123(56)
      abb123(46)=abb123(46)-abb123(56)
      abb123(60)=abb123(46)*spak1e7
      abb123(63)=abb123(26)*spbe7k3
      abb123(55)=abb123(55)*spak1k2
      abb123(63)=abb123(63)-abb123(55)
      abb123(64)=abb123(63)*spal6e7
      abb123(65)=abb123(12)*spbe7k3
      abb123(66)=abb123(20)*spbe7k3
      abb123(65)=abb123(65)+abb123(66)
      abb123(67)=abb123(65)*spak2e7
      abb123(68)=abb123(14)*spal5e7
      abb123(69)=abb123(68)*spbe7k3
      abb123(60)=abb123(67)-abb123(69)+abb123(60)+abb123(64)
      abb123(64)=2.0_ki*spak4k7
      abb123(64)=abb123(64)*abb123(60)*spbk7k2
      abb123(22)=abb123(64)-abb123(23)+abb123(22)
      abb123(23)=-4.0_ki*abb123(22)
      abb123(40)=-abb123(42)-3.0_ki*abb123(40)
      abb123(40)=8.0_ki*abb123(40)
      abb123(22)=2.0_ki*abb123(22)
      abb123(42)=-4.0_ki*abb123(49)
      abb123(49)=-spbe7k2*abb123(21)*spak2k4**2
      abb123(64)=abb123(19)*abb123(16)
      abb123(67)=abb123(19)*abb123(26)
      abb123(67)=-abb123(64)+abb123(67)
      abb123(67)=spak4l6*abb123(67)
      abb123(69)=abb123(57)*abb123(19)
      abb123(70)=-abb123(19)*abb123(32)
      abb123(70)=abb123(69)+abb123(70)
      abb123(70)=spak1k4*abb123(70)
      abb123(49)=abb123(70)+abb123(67)+abb123(49)
      abb123(49)=spbk4k3*abb123(49)
      abb123(17)=abb123(32)*abb123(17)
      abb123(10)=-spbk3k2*abb123(10)
      abb123(67)=abb123(14)*spak4l5
      abb123(70)=-spbk4k3*abb123(67)
      abb123(10)=abb123(70)-abb123(17)+abb123(10)
      abb123(10)=abb123(19)*abb123(10)
      abb123(70)=abb123(15)*abb123(7)
      abb123(7)=abb123(19)*abb123(7)
      abb123(71)=abb123(70)+abb123(7)
      abb123(72)=spbl6l5*abb123(71)
      abb123(16)=abb123(16)*abb123(15)
      abb123(72)=abb123(72)-abb123(64)-abb123(16)
      abb123(72)=spbk7k3*abb123(72)
      abb123(73)=spak2k4*spbe7k3
      abb123(26)=abb123(73)*abb123(26)
      abb123(55)=abb123(55)*spak2k4
      abb123(26)=abb123(26)-abb123(55)
      abb123(55)=-spbk7k2*abb123(26)
      abb123(55)=abb123(72)+abb123(55)
      abb123(55)=spal6k7*abb123(55)
      abb123(71)=spbl5k1*abb123(71)
      abb123(72)=abb123(57)*abb123(15)
      abb123(71)=abb123(71)-abb123(69)-abb123(72)
      abb123(71)=spbk7k3*abb123(71)
      abb123(74)=abb123(73)*abb123(32)
      abb123(56)=abb123(56)*spak2k4
      abb123(56)=abb123(74)-abb123(56)
      abb123(74)=-spbk7k2*abb123(56)
      abb123(71)=abb123(71)+abb123(74)
      abb123(71)=spak1k7*abb123(71)
      abb123(74)=abb123(20)*abb123(15)
      abb123(75)=abb123(19)+abb123(15)
      abb123(76)=abb123(75)*abb123(12)
      abb123(62)=abb123(76)+abb123(62)+abb123(74)
      abb123(62)=spak2k7*spbk7k3*abb123(62)
      abb123(11)=abb123(11)*abb123(33)*abb123(61)
      abb123(11)=-abb123(66)+abb123(11)
      abb123(11)=spak2k4*abb123(11)
      abb123(12)=abb123(12)*abb123(73)
      abb123(11)=-abb123(12)+abb123(11)
      abb123(11)=es12*abb123(11)
      abb123(20)=abb123(73)*abb123(20)
      abb123(12)=abb123(20)+abb123(12)
      abb123(20)=abb123(12)*abb123(28)
      abb123(19)=abb123(19)*abb123(44)
      abb123(19)=-abb123(25)+abb123(19)
      abb123(19)=spak2l6*abb123(19)
      abb123(25)=abb123(50)*abb123(73)
      abb123(33)=-abb123(75)*abb123(48)
      abb123(33)=abb123(33)+abb123(25)
      abb123(33)=spal5k7*abb123(33)
      abb123(10)=abb123(33)+abb123(19)+abb123(62)+abb123(71)+abb123(55)+abb123(&
      &49)+abb123(10)+abb123(20)+abb123(11)
      abb123(10)=2.0_ki*abb123(10)
      abb123(11)=abb123(46)*spak1k4
      abb123(19)=abb123(63)*spak4l6
      abb123(20)=abb123(67)*spbe7k3
      abb123(11)=abb123(12)+abb123(20)+abb123(11)-abb123(19)
      abb123(19)=4.0_ki*abb123(11)
      abb123(11)=2.0_ki*abb123(11)
      abb123(7)=abb123(70)-abb123(7)
      abb123(20)=-spbl6l5*abb123(7)
      abb123(16)=abb123(20)-abb123(64)+abb123(16)
      abb123(16)=spal6e7*abb123(16)
      abb123(7)=-spbl5k1*abb123(7)
      abb123(7)=abb123(7)-abb123(69)+abb123(72)
      abb123(7)=spak1e7*abb123(7)
      abb123(7)=abb123(16)+abb123(7)
      abb123(7)=spbk7k3*abb123(7)
      abb123(16)=-spal6e7*abb123(26)
      abb123(20)=-spak1e7*abb123(56)
      abb123(16)=abb123(16)+abb123(20)
      abb123(16)=spbk7k2*abb123(16)
      abb123(15)=-abb123(15)*abb123(45)
      abb123(12)=-spbk7k2*abb123(12)
      abb123(12)=abb123(12)+abb123(15)
      abb123(12)=spak2e7*abb123(12)
      abb123(8)=-abb123(8)*abb123(48)
      abb123(8)=abb123(8)+abb123(25)
      abb123(8)=spal5e7*abb123(8)
      abb123(7)=abb123(12)+abb123(8)+abb123(7)+abb123(16)
      abb123(7)=4.0_ki*abb123(7)
      abb123(8)=-8.0_ki*abb123(35)
      abb123(12)=8.0_ki*abb123(38)
      abb123(15)=8.0_ki*abb123(14)
      abb123(16)=abb123(34)*abb123(15)
      abb123(20)=-abb123(37)*abb123(15)
      abb123(25)=abb123(53)*spal6e7
      abb123(26)=abb123(58)*spak1e7
      abb123(33)=abb123(68)*spbe7k2
      abb123(25)=abb123(33)+abb123(25)+abb123(26)
      abb123(26)=abb123(25)*abb123(28)
      abb123(24)=-abb123(52)*abb123(24)
      abb123(28)=es12*abb123(54)
      abb123(24)=abb123(24)+abb123(28)
      abb123(24)=spal6e7*abb123(24)
      abb123(28)=-spbe7k2*abb123(6)*abb123(31)
      abb123(31)=es12*abb123(59)
      abb123(28)=abb123(28)+abb123(31)
      abb123(28)=spak1e7*abb123(28)
      abb123(31)=-es12*abb123(33)
      abb123(24)=abb123(31)+abb123(24)+abb123(28)+abb123(26)
      abb123(24)=4.0_ki*abb123(24)
      abb123(26)=abb123(29)*spal6k7
      abb123(28)=abb123(57)-abb123(32)
      abb123(31)=abb123(28)*spak1k7
      abb123(26)=abb123(26)+abb123(31)
      abb123(31)=-spbk7k2*abb123(26)
      abb123(33)=abb123(29)*spak4l6
      abb123(35)=abb123(28)*spak1k4
      abb123(33)=abb123(67)+abb123(33)-abb123(35)
      abb123(35)=-spbk4k2*abb123(33)
      abb123(37)=es234-es34-abb123(43)
      abb123(37)=abb123(21)*abb123(37)
      abb123(38)=spak3l6*abb123(47)
      abb123(27)=-spak1k3*abb123(27)
      abb123(43)=-spal5k7*abb123(50)
      abb123(18)=-spak3l5*abb123(18)
      abb123(18)=abb123(18)+abb123(27)+abb123(38)+abb123(35)+abb123(43)+abb123(&
      &31)+abb123(37)
      abb123(18)=4.0_ki*abb123(18)
      abb123(27)=8.0_ki*abb123(25)
      abb123(31)=4.0_ki*abb123(25)
      abb123(35)=16.0_ki*abb123(21)
      abb123(25)=-2.0_ki*abb123(25)
      abb123(37)=-spak2k7*abb123(21)
      abb123(38)=spal5k7*abb123(14)
      abb123(26)=abb123(38)+abb123(37)+abb123(26)
      abb123(26)=spbk7e7*abb123(26)
      abb123(37)=-spak2k4*abb123(21)
      abb123(33)=abb123(37)-abb123(33)
      abb123(33)=spbe7k4*abb123(33)
      abb123(37)=-spbe7k2*abb123(13)
      abb123(38)=spak2l6*abb123(53)
      abb123(43)=spak3l6*abb123(63)
      abb123(44)=-spak1k3*abb123(46)
      abb123(45)=-spak2k3*abb123(65)
      abb123(32)=abb123(52)*abb123(32)
      abb123(14)=-spak3l5*spbe7k3*abb123(14)
      abb123(14)=abb123(45)+abb123(14)+abb123(44)+abb123(43)+abb123(33)+abb123(&
      &38)+abb123(32)+abb123(26)+abb123(37)
      abb123(14)=2.0_ki*abb123(14)
      abb123(26)=spal6e7*abb123(29)
      abb123(32)=spak1e7*abb123(28)
      abb123(33)=-spak2e7*abb123(21)
      abb123(26)=abb123(33)+abb123(68)+abb123(26)+abb123(32)
      abb123(26)=4.0_ki*spbk7e7*abb123(26)
      abb123(29)=-8.0_ki*abb123(29)
      abb123(13)=-spbk3k2*abb123(13)
      abb123(32)=-spak2l6*abb123(47)
      abb123(13)=abb123(32)+abb123(17)+abb123(13)
      abb123(13)=16.0_ki*abb123(13)
      abb123(17)=4.0_ki*abb123(60)
      abb123(32)=-2.0_ki*abb123(60)
      abb123(21)=-8.0_ki*abb123(34)*abb123(21)
      abb123(33)=-8.0_ki*abb123(39)
      abb123(34)=8.0_ki*abb123(41)
      abb123(28)=-8.0_ki*abb123(28)
      R2d123=0.0_ki
      rat2 = rat2 + R2d123
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='123' value='", &
          & R2d123, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd123h1
