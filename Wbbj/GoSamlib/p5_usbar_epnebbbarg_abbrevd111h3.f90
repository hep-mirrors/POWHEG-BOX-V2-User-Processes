module     p5_usbar_epnebbbarg_abbrevd111h3
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(57), public :: abb111
   complex(ki), public :: R2d111
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
      abb111(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb111(2)=1.0_ki/(es34+es567-es12-es234)
      abb111(3)=es56**(-1)
      abb111(4)=spak2l5**(-1)
      abb111(5)=spak2l6**(-1)
      abb111(6)=spbl5k2**(-1)
      abb111(7)=spbl6k2**(-1)
      abb111(8)=spak1k4*spbl5k1
      abb111(9)=spak3k4*spbl5k3
      abb111(8)=abb111(8)-abb111(9)
      abb111(9)=abb111(8)*spbe7l6
      abb111(10)=spak1k4*spbl6k1
      abb111(11)=spak3k4*spbl6k3
      abb111(10)=abb111(10)-abb111(11)
      abb111(11)=abb111(10)*spbe7l5
      abb111(9)=abb111(9)+abb111(11)
      abb111(11)=-spak2l5*abb111(8)
      abb111(12)=abb111(5)*spbe7l5
      abb111(13)=-abb111(11)*abb111(12)
      abb111(14)=-spak2l6*abb111(10)
      abb111(15)=abb111(4)*spbe7l6
      abb111(16)=-abb111(14)*abb111(15)
      abb111(13)=abb111(16)+abb111(13)+abb111(9)
      abb111(16)=abb111(1)*abb111(2)*abb111(3)*CVSU
      abb111(17)=gW*TR
      abb111(17)=abb111(16)*abb111(17)**2
      abb111(18)=c2*i_
      abb111(19)=abb111(18)*spbk3k1
      abb111(20)=abb111(17)*abb111(19)*mB
      abb111(21)=4.0_ki*abb111(20)
      abb111(22)=abb111(21)*spak2e7
      abb111(13)=abb111(13)*abb111(22)
      abb111(23)=spak1k4*spbe7k1
      abb111(24)=spak3k4*spbe7k3
      abb111(23)=abb111(23)-abb111(24)
      abb111(24)=2.0_ki*spak2k7
      abb111(25)=-abb111(24)*spbk7l5*abb111(23)
      abb111(26)=spak1k4*spbk7k1
      abb111(27)=spak3k4*spbk7k3
      abb111(26)=abb111(26)-abb111(27)
      abb111(27)=abb111(26)*spak2k7
      abb111(28)=abb111(27)*spbe7l5
      abb111(28)=abb111(25)+abb111(28)
      abb111(28)=abb111(28)*abb111(5)
      abb111(29)=-abb111(24)*spbk7l6*abb111(23)
      abb111(30)=abb111(27)*spbe7l6
      abb111(30)=abb111(29)+abb111(30)
      abb111(30)=abb111(30)*abb111(4)
      abb111(28)=abb111(28)+abb111(30)
      abb111(22)=abb111(28)*abb111(22)
      abb111(30)=spak2k4*spae7k7
      abb111(31)=spak2k7*spak4e7
      abb111(30)=abb111(30)+abb111(31)
      abb111(32)=spbk7l6*spak2l6
      abb111(33)=abb111(15)*abb111(32)*abb111(30)
      abb111(34)=spbk7l5*spak2l5
      abb111(35)=abb111(12)*abb111(34)*abb111(30)
      abb111(36)=spbe7l6*spbk7l5*abb111(30)
      abb111(30)=spbe7l5*spbk7l6*abb111(30)
      abb111(30)=abb111(35)+abb111(33)+abb111(36)+abb111(30)
      abb111(32)=abb111(32)*abb111(15)
      abb111(33)=abb111(34)*abb111(12)
      abb111(34)=spbe7l5*spbk7l6
      abb111(35)=spbe7l6*spbk7l5
      abb111(32)=abb111(34)+abb111(35)+abb111(32)+abb111(33)
      abb111(33)=spak2e7*spak4k7*abb111(32)
      abb111(30)=-abb111(33)+2.0_ki*abb111(30)
      abb111(33)=abb111(30)*abb111(21)
      abb111(34)=abb111(12)*spak2k4
      abb111(35)=abb111(15)*spak2k4
      abb111(34)=abb111(34)+abb111(35)
      abb111(36)=abb111(20)*spak2e7
      abb111(37)=abb111(34)*abb111(36)
      abb111(37)=8.0_ki*abb111(37)
      abb111(38)=TR**2
      abb111(19)=abb111(19)*abb111(38)
      abb111(39)=spak2e7*abb111(19)
      abb111(28)=-abb111(28)*abb111(39)
      abb111(40)=abb111(26)*abb111(6)
      abb111(41)=spbe7l5*abb111(40)
      abb111(42)=abb111(26)*abb111(7)
      abb111(43)=spbe7l6*abb111(42)
      abb111(41)=abb111(43)+abb111(41)
      abb111(41)=spak2k7*abb111(41)
      abb111(43)=spbk7l5*spbe7k1
      abb111(44)=-abb111(6)*abb111(43)
      abb111(45)=spbk7l6*spbe7k1
      abb111(46)=-abb111(7)*abb111(45)
      abb111(44)=abb111(44)+abb111(46)
      abb111(44)=spak1k4*abb111(44)
      abb111(46)=spbk7l5*spbe7k3
      abb111(47)=abb111(6)*abb111(46)
      abb111(48)=spbk7l6*spbe7k3
      abb111(49)=abb111(7)*abb111(48)
      abb111(47)=abb111(47)+abb111(49)
      abb111(47)=spak3k4*abb111(47)
      abb111(44)=abb111(44)+abb111(47)
      abb111(24)=abb111(44)*abb111(24)
      abb111(24)=abb111(24)+abb111(41)
      abb111(24)=abb111(5)*abb111(24)
      abb111(29)=abb111(6)*abb111(29)
      abb111(40)=spbe7l6*spak2k7*abb111(40)
      abb111(29)=abb111(29)+abb111(40)
      abb111(29)=abb111(4)*abb111(29)
      abb111(24)=abb111(24)+abb111(29)
      abb111(24)=abb111(4)*abb111(24)
      abb111(25)=abb111(7)*abb111(25)
      abb111(29)=spbe7l5*spak2k7*abb111(42)
      abb111(25)=abb111(25)+abb111(29)
      abb111(29)=abb111(5)**2
      abb111(25)=abb111(25)*abb111(29)
      abb111(24)=abb111(25)+abb111(24)
      abb111(25)=mB**2
      abb111(40)=abb111(25)*abb111(39)
      abb111(24)=abb111(24)*abb111(40)
      abb111(24)=abb111(28)+abb111(24)
      abb111(16)=gW**2*abb111(16)*mB
      abb111(28)=4.0_ki*abb111(16)
      abb111(24)=abb111(24)*abb111(28)
      abb111(41)=spbe7l5*spak2k4
      abb111(42)=abb111(41)*abb111(6)
      abb111(44)=spbe7l6*abb111(7)
      abb111(47)=spak2k4*abb111(44)
      abb111(42)=abb111(42)+abb111(47)
      abb111(42)=abb111(42)*abb111(5)
      abb111(35)=abb111(35)*abb111(6)
      abb111(35)=abb111(42)+abb111(35)
      abb111(42)=abb111(35)*abb111(4)
      abb111(47)=abb111(29)*abb111(7)
      abb111(41)=abb111(47)*abb111(41)
      abb111(42)=abb111(42)+abb111(41)
      abb111(42)=abb111(42)*abb111(40)
      abb111(39)=abb111(34)*abb111(39)
      abb111(39)=abb111(42)-abb111(39)
      abb111(42)=8.0_ki*abb111(16)
      abb111(39)=abb111(39)*abb111(42)
      abb111(42)=-spbk7e7*spbl5k1
      abb111(42)=abb111(42)-2.0_ki*abb111(43)
      abb111(42)=spak1k4*abb111(42)
      abb111(49)=spbk7e7*spbl5k3
      abb111(49)=abb111(49)+2.0_ki*abb111(46)
      abb111(49)=spak3k4*abb111(49)
      abb111(42)=abb111(42)+abb111(49)
      abb111(42)=spak2k7*abb111(42)
      abb111(49)=3.0_ki*abb111(11)+abb111(27)
      abb111(49)=spbe7l5*abb111(49)
      abb111(42)=abb111(42)+abb111(49)
      abb111(42)=abb111(5)*abb111(42)
      abb111(49)=-spbk7e7*spbl6k1
      abb111(49)=abb111(49)-2.0_ki*abb111(45)
      abb111(49)=spak1k4*abb111(49)
      abb111(50)=spbk7e7*spbl6k3
      abb111(50)=abb111(50)+2.0_ki*abb111(48)
      abb111(50)=spak3k4*abb111(50)
      abb111(49)=abb111(49)+abb111(50)
      abb111(49)=spak2k7*abb111(49)
      abb111(27)=3.0_ki*abb111(14)+abb111(27)
      abb111(27)=spbe7l6*abb111(27)
      abb111(27)=abb111(49)+abb111(27)
      abb111(27)=abb111(4)*abb111(27)
      abb111(9)=abb111(27)-3.0_ki*abb111(9)+abb111(42)
      abb111(9)=2.0_ki*abb111(9)*abb111(36)
      abb111(27)=-spbk4k1*abb111(30)
      abb111(36)=spae7k7*spak2k3
      abb111(42)=spak2k7*spak3e7
      abb111(36)=abb111(36)+abb111(42)
      abb111(49)=spak2e7*spak3k7
      abb111(36)=-2.0_ki*abb111(36)+abb111(49)
      abb111(36)=spbk3k1*abb111(32)*abb111(36)
      abb111(27)=abb111(36)+abb111(27)
      abb111(36)=abb111(18)*mB
      abb111(49)=abb111(17)*abb111(36)
      abb111(49)=2.0_ki*abb111(49)
      abb111(27)=abb111(27)*abb111(49)
      abb111(50)=abb111(12)*spak2k3
      abb111(51)=abb111(15)*spak2k3
      abb111(50)=abb111(50)+abb111(51)
      abb111(52)=spbk3k1*spak2e7
      abb111(50)=abb111(50)*abb111(52)
      abb111(34)=abb111(34)*spak2e7
      abb111(53)=spbk4k1*abb111(34)
      abb111(50)=abb111(50)+abb111(53)
      abb111(17)=4.0_ki*abb111(17)
      abb111(17)=abb111(17)*abb111(36)
      abb111(36)=abb111(50)*abb111(17)
      abb111(53)=spbk4k1*abb111(41)
      abb111(54)=abb111(4)*spbk4k1*abb111(35)
      abb111(53)=abb111(53)+abb111(54)
      abb111(53)=spak2e7*abb111(53)
      abb111(54)=spbe7l5*abb111(6)
      abb111(44)=abb111(54)+abb111(44)
      abb111(44)=abb111(44)*abb111(5)
      abb111(54)=spak2k3*abb111(44)
      abb111(51)=abb111(6)*abb111(51)
      abb111(51)=abb111(54)+abb111(51)
      abb111(51)=abb111(4)*abb111(51)
      abb111(47)=abb111(47)*spbe7l5
      abb111(54)=spak2k3*abb111(47)
      abb111(51)=abb111(54)+abb111(51)
      abb111(51)=abb111(51)*abb111(52)
      abb111(51)=abb111(53)+abb111(51)
      abb111(51)=abb111(51)*abb111(25)
      abb111(50)=-abb111(50)+abb111(51)
      abb111(18)=abb111(28)*abb111(18)*abb111(38)
      abb111(28)=abb111(50)*abb111(18)
      abb111(30)=spbk4k3*abb111(30)
      abb111(38)=spae7k7*spak1k2
      abb111(50)=spak2k7*spak1e7
      abb111(38)=abb111(38)-abb111(50)
      abb111(51)=-spak2e7*spak1k7
      abb111(38)=-2.0_ki*abb111(38)+abb111(51)
      abb111(32)=spbk3k1*abb111(32)*abb111(38)
      abb111(30)=abb111(32)+abb111(30)
      abb111(30)=abb111(30)*abb111(49)
      abb111(12)=abb111(12)*spak1k2
      abb111(15)=abb111(15)*spak1k2
      abb111(12)=abb111(12)+abb111(15)
      abb111(12)=abb111(12)*abb111(52)
      abb111(32)=spbk4k3*abb111(34)
      abb111(12)=abb111(12)-abb111(32)
      abb111(17)=abb111(12)*abb111(17)
      abb111(32)=-spbk4k3*abb111(41)
      abb111(34)=-abb111(4)*spbk4k3*abb111(35)
      abb111(32)=abb111(32)+abb111(34)
      abb111(32)=spak2e7*abb111(32)
      abb111(34)=spak1k2*abb111(44)
      abb111(15)=abb111(6)*abb111(15)
      abb111(15)=abb111(34)+abb111(15)
      abb111(15)=abb111(4)*abb111(15)
      abb111(34)=spak1k2*abb111(47)
      abb111(15)=abb111(34)+abb111(15)
      abb111(15)=abb111(15)*abb111(52)
      abb111(15)=abb111(32)+abb111(15)
      abb111(15)=abb111(15)*abb111(25)
      abb111(12)=-abb111(12)+abb111(15)
      abb111(12)=abb111(12)*abb111(18)
      abb111(15)=abb111(48)*spal6e7
      abb111(18)=abb111(46)*spal5e7
      abb111(15)=abb111(15)+abb111(18)
      abb111(15)=abb111(15)*spak3k4
      abb111(18)=abb111(45)*spal6e7
      abb111(25)=abb111(43)*spal5e7
      abb111(18)=abb111(18)+abb111(25)
      abb111(18)=abb111(18)*spak1k4
      abb111(15)=abb111(15)-abb111(18)
      abb111(15)=abb111(15)*spak2k7
      abb111(18)=-spae7k7*abb111(26)
      abb111(25)=abb111(18)*spbe7l6
      abb111(32)=-spak2l6*abb111(25)
      abb111(32)=-abb111(15)+abb111(32)
      abb111(32)=abb111(4)*abb111(32)
      abb111(34)=abb111(18)*spbe7l5
      abb111(32)=-abb111(34)+abb111(32)
      abb111(35)=spbe7l5*spal5k7
      abb111(38)=spbe7l6*spal6k7
      abb111(35)=abb111(35)+abb111(38)
      abb111(26)=abb111(26)*abb111(35)
      abb111(35)=es12+es71-es712
      abb111(35)=-abb111(35)*abb111(23)
      abb111(26)=-2.0_ki*abb111(35)+abb111(26)
      abb111(38)=spak2e7*abb111(4)
      abb111(41)=-abb111(26)*abb111(38)
      abb111(32)=2.0_ki*abb111(32)+abb111(41)
      abb111(32)=abb111(32)*abb111(19)
      abb111(41)=abb111(4)*abb111(35)*abb111(6)
      abb111(35)=abb111(35)*abb111(7)
      abb111(43)=-abb111(5)*abb111(35)
      abb111(43)=abb111(43)-abb111(41)
      abb111(40)=2.0_ki*abb111(40)
      abb111(43)=abb111(4)*abb111(43)*abb111(40)
      abb111(32)=abb111(32)+abb111(43)
      abb111(16)=2.0_ki*abb111(16)
      abb111(32)=abb111(32)*abb111(16)
      abb111(14)=-abb111(4)*abb111(14)
      abb111(8)=abb111(14)+abb111(8)
      abb111(14)=8.0_ki*abb111(20)
      abb111(8)=abb111(8)*abb111(14)
      abb111(20)=abb111(23)*abb111(21)
      abb111(23)=abb111(20)*abb111(38)
      abb111(43)=spbk7e7*spak4k7
      abb111(44)=spbe7l5*spak4l5
      abb111(45)=spbe7l6*spak4l6
      abb111(43)=-abb111(45)+abb111(43)-abb111(44)
      abb111(44)=abb111(43)*abb111(38)
      abb111(45)=4.0_ki*spbk7e7
      abb111(31)=abb111(45)*abb111(31)
      abb111(46)=abb111(31)*abb111(4)
      abb111(44)=abb111(44)-abb111(46)
      abb111(44)=abb111(44)*abb111(21)
      abb111(18)=abb111(18)*abb111(21)
      abb111(47)=-abb111(4)*abb111(18)
      abb111(48)=abb111(43)*spbk4k1
      abb111(51)=-abb111(48)*abb111(38)
      abb111(52)=spbk7e7*spak3k7
      abb111(53)=spbe7l5*spak3l5
      abb111(54)=spbe7l6*spak3l6
      abb111(52)=-abb111(54)+abb111(52)-abb111(53)
      abb111(53)=-abb111(52)*abb111(38)
      abb111(42)=abb111(42)*abb111(45)
      abb111(54)=abb111(4)*abb111(42)
      abb111(53)=abb111(54)+abb111(53)
      abb111(53)=spbk3k1*abb111(53)
      abb111(54)=spbk4k1*abb111(46)
      abb111(51)=abb111(53)+abb111(54)+abb111(51)
      abb111(51)=abb111(51)*abb111(49)
      abb111(53)=abb111(43)*spbk4k3
      abb111(54)=abb111(53)*abb111(38)
      abb111(55)=spbk7e7*spak1k7
      abb111(56)=spbe7l5*spak1l5
      abb111(57)=spbe7l6*spak1l6
      abb111(55)=-abb111(57)+abb111(55)-abb111(56)
      abb111(38)=abb111(55)*abb111(38)
      abb111(45)=abb111(50)*abb111(45)
      abb111(50)=-abb111(4)*abb111(45)
      abb111(38)=abb111(50)+abb111(38)
      abb111(38)=spbk3k1*abb111(38)
      abb111(46)=-spbk4k3*abb111(46)
      abb111(38)=abb111(38)+abb111(46)+abb111(54)
      abb111(38)=abb111(38)*abb111(49)
      abb111(34)=-spak2l5*abb111(34)
      abb111(15)=-abb111(15)+abb111(34)
      abb111(15)=abb111(5)*abb111(15)
      abb111(15)=-abb111(25)+abb111(15)
      abb111(25)=spak2e7*abb111(5)
      abb111(26)=-abb111(26)*abb111(25)
      abb111(15)=2.0_ki*abb111(15)+abb111(26)
      abb111(15)=abb111(15)*abb111(19)
      abb111(19)=-abb111(35)*abb111(29)
      abb111(26)=-abb111(5)*abb111(41)
      abb111(19)=abb111(19)+abb111(26)
      abb111(19)=abb111(19)*abb111(40)
      abb111(15)=abb111(15)+abb111(19)
      abb111(15)=abb111(15)*abb111(16)
      abb111(11)=-abb111(5)*abb111(11)
      abb111(10)=abb111(11)+abb111(10)
      abb111(10)=abb111(10)*abb111(14)
      abb111(11)=abb111(20)*abb111(25)
      abb111(14)=abb111(43)*abb111(25)
      abb111(16)=abb111(31)*abb111(5)
      abb111(14)=abb111(14)-abb111(16)
      abb111(14)=abb111(14)*abb111(21)
      abb111(18)=-abb111(5)*abb111(18)
      abb111(19)=-abb111(48)*abb111(25)
      abb111(20)=-abb111(52)*abb111(25)
      abb111(21)=abb111(5)*abb111(42)
      abb111(20)=abb111(21)+abb111(20)
      abb111(20)=spbk3k1*abb111(20)
      abb111(21)=spbk4k1*abb111(16)
      abb111(19)=abb111(20)+abb111(21)+abb111(19)
      abb111(19)=abb111(19)*abb111(49)
      abb111(20)=abb111(53)*abb111(25)
      abb111(21)=abb111(55)*abb111(25)
      abb111(25)=-abb111(5)*abb111(45)
      abb111(21)=abb111(25)+abb111(21)
      abb111(21)=spbk3k1*abb111(21)
      abb111(16)=-spbk4k3*abb111(16)
      abb111(16)=abb111(21)+abb111(16)+abb111(20)
      abb111(16)=abb111(16)*abb111(49)
      R2d111=0.0_ki
      rat2 = rat2 + R2d111
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='111' value='", &
          & R2d111, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd111h3
