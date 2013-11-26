module     p5_usbar_epnebbbarg_abbrevd223h1
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(61), public :: abb223
   complex(ki), public :: R2d223
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
      abb223(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb223(2)=1.0_ki/(es34+es567-es12-es234)
      abb223(3)=1.0_ki/(es71+es34+es56-es712-es234)
      abb223(4)=NC**(-1)
      abb223(5)=es56**(-1)
      abb223(6)=spak2l5**(-1)
      abb223(7)=spbl6k2**(-1)
      abb223(8)=mB**2
      abb223(9)=TR*gW
      abb223(9)=abb223(5)*i_*CVSU*abb223(3)*abb223(2)*abb223(1)*abb223(9)**2
      abb223(10)=abb223(8)*abb223(9)
      abb223(11)=abb223(10)*spbl5k2
      abb223(12)=abb223(11)*spbk3k1
      abb223(13)=abb223(12)*c4
      abb223(14)=abb223(7)*spak2e7
      abb223(15)=abb223(14)*abb223(13)
      abb223(9)=abb223(9)*spak2l6
      abb223(16)=spbk3k1*abb223(9)
      abb223(17)=abb223(16)*c4
      abb223(18)=abb223(17)*abb223(8)
      abb223(19)=abb223(6)*spak2e7
      abb223(20)=abb223(19)*abb223(18)
      abb223(21)=abb223(17)*spbl5k2
      abb223(22)=abb223(21)*spak2e7
      abb223(15)=-abb223(20)+abb223(22)-abb223(15)
      abb223(15)=abb223(15)*abb223(4)
      abb223(20)=abb223(12)*c1
      abb223(22)=abb223(20)*abb223(14)
      abb223(23)=abb223(16)*c1
      abb223(24)=abb223(8)*abb223(23)
      abb223(25)=abb223(24)*abb223(19)
      abb223(26)=spbl5k2*abb223(23)
      abb223(27)=abb223(26)*spak2e7
      abb223(15)=abb223(15)+abb223(25)+abb223(22)-abb223(27)
      abb223(15)=abb223(15)*abb223(4)
      abb223(22)=NC*c1
      abb223(12)=abb223(12)*abb223(22)
      abb223(12)=abb223(12)-abb223(13)
      abb223(25)=abb223(12)*abb223(14)
      abb223(16)=abb223(22)*abb223(16)
      abb223(8)=abb223(16)*abb223(8)
      abb223(8)=abb223(8)-abb223(18)
      abb223(27)=abb223(19)*abb223(8)
      abb223(28)=abb223(16)*spbl5k2
      abb223(28)=abb223(28)-abb223(21)
      abb223(29)=abb223(28)*spak2e7
      abb223(25)=-abb223(27)+abb223(29)-abb223(25)
      abb223(15)=abb223(15)+abb223(25)
      abb223(27)=abb223(4)*spbl6l5
      abb223(29)=abb223(27)*abb223(17)
      abb223(23)=spbl6l5*abb223(23)
      abb223(23)=abb223(23)-abb223(29)
      abb223(29)=abb223(23)*abb223(4)
      abb223(16)=abb223(16)-abb223(17)
      abb223(16)=abb223(16)*spbl6l5
      abb223(17)=abb223(29)-abb223(16)
      abb223(30)=spal6e7*abb223(17)
      abb223(30)=abb223(30)-abb223(15)
      abb223(31)=spak1k4*spbe7k1
      abb223(32)=spak3k4*spbe7k3
      abb223(33)=abb223(31)-abb223(32)
      abb223(30)=abb223(33)*abb223(30)
      abb223(34)=-2.0_ki*abb223(30)
      abb223(12)=abb223(12)*abb223(7)
      abb223(8)=abb223(8)*abb223(6)
      abb223(8)=abb223(12)+abb223(8)-abb223(28)
      abb223(12)=abb223(33)*spak2k7
      abb223(28)=abb223(8)*abb223(12)
      abb223(35)=abb223(31)*abb223(16)
      abb223(36)=abb223(32)*abb223(16)
      abb223(35)=abb223(35)-abb223(36)
      abb223(37)=abb223(35)*spal6k7
      abb223(28)=abb223(28)-abb223(37)
      abb223(37)=spak3e7*abb223(28)
      abb223(38)=abb223(16)*spal6e7
      abb223(39)=abb223(38)+abb223(25)
      abb223(40)=spak3k4*abb223(39)
      abb223(41)=abb223(40)*spbe7k4
      abb223(42)=2.0_ki*spak4k7
      abb223(43)=-abb223(42)*abb223(41)
      abb223(44)=2.0_ki*spak1k7
      abb223(40)=abb223(44)*spbe7k1*abb223(40)
      abb223(37)=abb223(40)+abb223(43)+abb223(37)
      abb223(37)=spbk7k3*abb223(37)
      abb223(28)=-spak1e7*abb223(28)
      abb223(39)=spak1k4*abb223(39)
      abb223(40)=abb223(39)*spbe7k4
      abb223(43)=abb223(42)*abb223(40)
      abb223(44)=2.0_ki*spak3k7
      abb223(39)=abb223(44)*spbe7k3*abb223(39)
      abb223(28)=abb223(39)+abb223(43)+abb223(28)
      abb223(28)=spbk7k1*abb223(28)
      abb223(39)=abb223(25)*abb223(32)
      abb223(43)=abb223(36)*spal6e7
      abb223(43)=abb223(43)+abb223(39)
      abb223(44)=es456-es712+es12-es123
      abb223(44)=-2.0_ki*abb223(44)
      abb223(43)=abb223(43)*abb223(44)
      abb223(44)=abb223(8)*spak4e7
      abb223(12)=abb223(44)*abb223(12)
      abb223(36)=spak4e7*abb223(36)
      abb223(45)=abb223(16)*spak4e7
      abb223(46)=-abb223(31)*abb223(45)
      abb223(36)=abb223(36)+abb223(46)
      abb223(36)=spal6k7*abb223(36)
      abb223(12)=abb223(12)+abb223(36)
      abb223(12)=spbk7k4*abb223(12)
      abb223(25)=abb223(25)*abb223(31)
      abb223(36)=abb223(31)*abb223(38)
      abb223(36)=abb223(25)+abb223(36)
      abb223(36)=es71*abb223(36)
      abb223(12)=2.0_ki*abb223(36)+abb223(12)+abb223(43)+abb223(28)+abb223(37)
      abb223(12)=2.0_ki*abb223(12)
      abb223(28)=abb223(8)*spak2k7
      abb223(36)=abb223(16)*spal6k7
      abb223(28)=abb223(36)-abb223(28)
      abb223(36)=-spbk7k3*spak3k4
      abb223(37)=spbk7k1*spak1k4
      abb223(36)=abb223(37)+abb223(36)
      abb223(28)=abb223(28)*abb223(36)
      abb223(10)=abb223(10)*spak2l6
      abb223(36)=abb223(10)*abb223(22)
      abb223(37)=c4*abb223(10)
      abb223(36)=abb223(36)-abb223(37)
      abb223(38)=abb223(36)*abb223(6)
      abb223(22)=abb223(11)*abb223(22)
      abb223(43)=abb223(11)*c4
      abb223(22)=abb223(22)-abb223(43)
      abb223(46)=abb223(22)*abb223(7)
      abb223(47)=c1*abb223(9)
      abb223(48)=abb223(47)*NC
      abb223(49)=abb223(48)*spbl5k2
      abb223(9)=c4*abb223(9)
      abb223(50)=abb223(9)*spbl5k2
      abb223(49)=abb223(49)-abb223(50)
      abb223(38)=-abb223(49)+abb223(38)+abb223(46)
      abb223(46)=spbk3k1**2
      abb223(51)=abb223(46)*abb223(38)
      abb223(52)=-spak1k2*abb223(51)
      abb223(48)=abb223(48)-abb223(9)
      abb223(48)=abb223(48)*spbl6l5
      abb223(46)=abb223(46)*abb223(48)
      abb223(53)=spak1l6*abb223(46)
      abb223(52)=abb223(53)+abb223(52)
      abb223(52)=spak3k4*abb223(52)
      abb223(51)=-spak2k3*abb223(51)
      abb223(46)=-spak3l6*abb223(46)
      abb223(46)=abb223(46)+abb223(51)
      abb223(46)=spak1k4*abb223(46)
      abb223(51)=abb223(8)*spak2k4
      abb223(53)=abb223(16)*spak4l6
      abb223(53)=abb223(53)+abb223(51)
      abb223(54)=es23-es123
      abb223(55)=es234-es567
      abb223(56)=es34-abb223(55)+abb223(54)
      abb223(53)=abb223(53)*abb223(56)
      abb223(28)=abb223(53)+abb223(46)+abb223(52)+abb223(28)
      abb223(28)=4.0_ki*abb223(28)
      abb223(35)=abb223(35)*spal6e7
      abb223(25)=abb223(35)+abb223(25)-abb223(39)
      abb223(35)=-8.0_ki*abb223(25)
      abb223(15)=abb223(15)*spbk7e7
      abb223(39)=spal6e7*spbk7e7
      abb223(17)=abb223(39)*abb223(17)
      abb223(15)=abb223(15)-abb223(17)
      abb223(17)=abb223(15)*abb223(42)
      abb223(18)=abb223(18)*abb223(6)
      abb223(13)=abb223(13)*abb223(7)
      abb223(13)=-abb223(21)+abb223(18)+abb223(13)
      abb223(13)=abb223(13)*abb223(4)
      abb223(18)=abb223(20)*abb223(7)
      abb223(20)=abb223(24)*abb223(6)
      abb223(13)=abb223(13)+abb223(26)-abb223(18)-abb223(20)
      abb223(18)=2.0_ki*abb223(4)
      abb223(20)=abb223(13)*abb223(18)
      abb223(20)=abb223(20)-abb223(8)
      abb223(21)=spak4e7*spbk7e7
      abb223(24)=abb223(21)*spak2k7
      abb223(26)=abb223(20)*abb223(24)
      abb223(46)=spak2k3*spbe7k3
      abb223(52)=spak1k2*spbe7k1
      abb223(46)=abb223(46)+abb223(52)
      abb223(52)=spbe7k4*spak2k4
      abb223(53)=abb223(52)+abb223(46)
      abb223(44)=abb223(53)*abb223(44)
      abb223(53)=spak4l6*spbe7k4
      abb223(56)=spak3l6*spbe7k3
      abb223(57)=spak1l6*spbe7k1
      abb223(53)=-abb223(57)+abb223(53)+abb223(56)
      abb223(45)=abb223(53)*abb223(45)
      abb223(23)=abb223(23)*abb223(18)
      abb223(23)=abb223(23)+abb223(16)
      abb223(56)=spal6k7*abb223(23)*abb223(21)
      abb223(17)=-abb223(44)-abb223(45)+abb223(17)+abb223(56)+abb223(26)-2.0_ki&
      &*abb223(25)
      abb223(17)=4.0_ki*abb223(17)
      abb223(13)=abb223(13)*abb223(4)
      abb223(25)=abb223(13)-abb223(8)
      abb223(26)=abb223(25)*spak2k4
      abb223(44)=abb223(29)+abb223(16)
      abb223(45)=abb223(44)*spak4l6
      abb223(26)=abb223(45)-abb223(26)
      abb223(26)=32.0_ki*abb223(26)
      abb223(30)=4.0_ki*abb223(30)
      abb223(45)=4.0_ki*spae7k7
      abb223(33)=abb223(45)*abb223(33)
      abb223(29)=-abb223(29)*abb223(33)
      abb223(45)=8.0_ki*abb223(44)
      abb223(56)=-spak3k4*abb223(45)
      abb223(45)=spak1k4*abb223(45)
      abb223(57)=abb223(14)*abb223(43)
      abb223(58)=abb223(37)*abb223(19)
      abb223(59)=abb223(50)*spak2e7
      abb223(57)=abb223(58)+abb223(57)-abb223(59)
      abb223(57)=abb223(57)*abb223(4)
      abb223(10)=abb223(10)*c1
      abb223(58)=abb223(10)*abb223(19)
      abb223(11)=abb223(11)*c1
      abb223(59)=abb223(11)*abb223(14)
      abb223(60)=abb223(47)*spbl5k2
      abb223(61)=abb223(60)*spak2e7
      abb223(57)=abb223(57)-abb223(59)+abb223(61)-abb223(58)
      abb223(57)=abb223(57)*abb223(4)
      abb223(19)=abb223(36)*abb223(19)
      abb223(14)=abb223(22)*abb223(14)
      abb223(22)=abb223(49)*spak2e7
      abb223(14)=-abb223(22)+abb223(19)+abb223(14)
      abb223(19)=abb223(57)+abb223(14)
      abb223(19)=abb223(19)*spbk7e7
      abb223(9)=abb223(27)*abb223(9)
      abb223(22)=abb223(47)*spbl6l5
      abb223(9)=abb223(22)-abb223(9)
      abb223(22)=abb223(9)*abb223(4)
      abb223(27)=abb223(22)-abb223(48)
      abb223(27)=abb223(27)*abb223(39)
      abb223(19)=abb223(19)+abb223(27)
      abb223(19)=abb223(19)*abb223(42)
      abb223(27)=abb223(43)*abb223(7)
      abb223(36)=abb223(37)*abb223(6)
      abb223(27)=-abb223(50)+abb223(27)+abb223(36)
      abb223(27)=abb223(27)*abb223(4)
      abb223(10)=abb223(10)*abb223(6)
      abb223(11)=abb223(11)*abb223(7)
      abb223(10)=abb223(27)+abb223(60)-abb223(10)-abb223(11)
      abb223(11)=abb223(10)*abb223(18)
      abb223(11)=abb223(11)-abb223(38)
      abb223(11)=abb223(11)*abb223(24)
      abb223(24)=abb223(38)*spak4e7
      abb223(27)=abb223(52)*abb223(24)
      abb223(24)=abb223(46)*abb223(24)
      abb223(11)=abb223(24)+abb223(19)-abb223(11)+abb223(27)
      abb223(19)=abb223(48)*spal6e7
      abb223(14)=abb223(19)-abb223(14)
      abb223(19)=abb223(32)*abb223(14)
      abb223(19)=abb223(19)-abb223(11)
      abb223(19)=spbk4k1*abb223(19)
      abb223(20)=spbk7e7*abb223(20)*spak2k7
      abb223(24)=abb223(51)*spbe7k4
      abb223(8)=abb223(46)*abb223(8)
      abb223(8)=-abb223(24)+abb223(20)-abb223(8)
      abb223(20)=spak3e7*abb223(8)
      abb223(15)=2.0_ki*abb223(15)
      abb223(24)=spak3k7*abb223(15)
      abb223(27)=abb223(16)*spak3e7
      abb223(32)=abb223(48)*spak4e7
      abb223(36)=abb223(32)*spbk4k1
      abb223(27)=abb223(27)+abb223(36)
      abb223(27)=-abb223(27)*abb223(53)
      abb223(36)=es12+abb223(55)
      abb223(36)=-abb223(36)*spbe7k1*abb223(14)
      abb223(9)=abb223(9)*abb223(18)
      abb223(9)=abb223(9)+abb223(48)
      abb223(9)=abb223(9)*abb223(21)
      abb223(18)=spbk4k1*abb223(9)
      abb223(21)=abb223(23)*spbk7e7
      abb223(23)=spak3e7*abb223(21)
      abb223(18)=abb223(18)+abb223(23)
      abb223(18)=spal6k7*abb223(18)
      abb223(18)=abb223(24)+abb223(18)+abb223(20)-abb223(41)+abb223(19)+abb223(&
      &36)+abb223(27)
      abb223(18)=2.0_ki*abb223(18)
      abb223(10)=abb223(10)*abb223(4)
      abb223(10)=abb223(10)-abb223(38)
      abb223(10)=abb223(10)*spak2k4
      abb223(19)=abb223(22)+abb223(48)
      abb223(19)=abb223(19)*spak4l6
      abb223(10)=abb223(10)-abb223(19)
      abb223(19)=-spbk4k1*abb223(10)
      abb223(20)=-spak2k3*abb223(25)
      abb223(22)=spak3l6*abb223(44)
      abb223(19)=abb223(22)+abb223(20)+abb223(19)
      abb223(19)=16.0_ki*abb223(19)
      abb223(20)=abb223(31)*abb223(14)
      abb223(11)=abb223(20)+abb223(11)
      abb223(11)=spbk4k3*abb223(11)
      abb223(8)=-spak1e7*abb223(8)
      abb223(15)=-spak1k7*abb223(15)
      abb223(16)=abb223(16)*spak1e7
      abb223(20)=abb223(32)*spbk4k3
      abb223(16)=abb223(16)+abb223(20)
      abb223(16)=abb223(16)*abb223(53)
      abb223(20)=es34-es12-abb223(54)
      abb223(14)=-abb223(20)*spbe7k3*abb223(14)
      abb223(9)=-spbk4k3*abb223(9)
      abb223(20)=-spak1e7*abb223(21)
      abb223(9)=abb223(9)+abb223(20)
      abb223(9)=spal6k7*abb223(9)
      abb223(8)=abb223(15)+abb223(9)+abb223(8)+abb223(40)+abb223(14)+abb223(11)&
      &+abb223(16)
      abb223(8)=2.0_ki*abb223(8)
      abb223(9)=spbk4k3*abb223(10)
      abb223(10)=-spak1k2*abb223(25)
      abb223(11)=-spak1l6*abb223(44)
      abb223(9)=abb223(11)+abb223(10)+abb223(9)
      abb223(9)=16.0_ki*abb223(9)
      abb223(10)=-abb223(13)*abb223(33)
      abb223(11)=8.0_ki*abb223(25)
      abb223(13)=-spak3k4*abb223(11)
      abb223(11)=spak1k4*abb223(11)
      R2d223=abb223(34)
      rat2 = rat2 + R2d223
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='223' value='", &
          & R2d223, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd223h1
