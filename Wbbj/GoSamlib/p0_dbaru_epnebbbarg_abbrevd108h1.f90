module     p0_dbaru_epnebbbarg_abbrevd108h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(71), public :: abb108
   complex(ki), public :: R2d108
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
      abb108(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb108(2)=sqrt(mB**2)
      abb108(3)=NC**(-1)
      abb108(4)=es234**(-1)
      abb108(5)=es71**(-1)
      abb108(6)=spak2l5**(-1)
      abb108(7)=spbl6k2**(-1)
      abb108(8)=spak2l6**(-1)
      abb108(9)=TR*gW
      abb108(9)=abb108(9)**2*i_*spak1e7*CVDU*abb108(1)
      abb108(10)=abb108(5)*abb108(4)
      abb108(11)=abb108(9)*abb108(10)*spbk3k2
      abb108(12)=c4*abb108(3)**2
      abb108(13)=abb108(12)*abb108(11)
      abb108(11)=abb108(11)*c3
      abb108(14)=abb108(11)*NC
      abb108(15)=2.0_ki*abb108(3)
      abb108(11)=abb108(15)*abb108(11)
      abb108(11)=abb108(14)+abb108(13)-abb108(11)
      abb108(13)=spbe7k1*abb108(11)
      abb108(14)=spak2k4*abb108(13)
      abb108(16)=abb108(2)*mB
      abb108(17)=abb108(16)*abb108(7)
      abb108(18)=abb108(17)*spbl5k2
      abb108(19)=abb108(14)*abb108(18)
      abb108(20)=abb108(17)*abb108(13)
      abb108(21)=spbl5k3*spak3k4
      abb108(22)=-abb108(20)*abb108(21)
      abb108(19)=abb108(19)+abb108(22)
      abb108(19)=spbk7k2*abb108(19)
      abb108(11)=spbk7e7*abb108(11)
      abb108(22)=spak2k4*abb108(11)
      abb108(23)=-abb108(22)*abb108(18)
      abb108(24)=abb108(17)*abb108(11)
      abb108(25)=abb108(24)*abb108(21)
      abb108(23)=abb108(23)+abb108(25)
      abb108(23)=spbk2k1*abb108(23)
      abb108(19)=abb108(23)+abb108(19)
      abb108(19)=spak1k7*abb108(19)
      abb108(23)=spal6k7*abb108(11)
      abb108(25)=spak1l6*abb108(13)
      abb108(23)=abb108(23)-abb108(25)
      abb108(25)=spak2k4*abb108(6)
      abb108(26)=abb108(25)*abb108(16)
      abb108(23)=abb108(26)*abb108(23)
      abb108(27)=spbl6k2*spak2l6
      abb108(27)=abb108(27)-es712
      abb108(27)=abb108(23)*abb108(27)
      abb108(28)=abb108(11)*spal6k7*spak3k4
      abb108(29)=abb108(13)*spak1l6*spak3k4
      abb108(28)=abb108(28)-abb108(29)
      abb108(29)=abb108(16)*abb108(6)
      abb108(30)=abb108(29)*abb108(28)
      abb108(31)=spbk7k3*spak2k7
      abb108(32)=spbl6k3*spak2l6
      abb108(33)=spbk3k1*spak1k2
      abb108(31)=-abb108(33)+abb108(31)+abb108(32)
      abb108(32)=-abb108(30)*abb108(31)
      abb108(33)=spbl5k3*abb108(16)*abb108(28)
      abb108(34)=abb108(22)*spbl5k2
      abb108(35)=-abb108(16)*abb108(34)
      abb108(36)=abb108(9)*c3
      abb108(37)=abb108(36)*NC
      abb108(38)=spbk3k2*abb108(4)
      abb108(39)=abb108(38)*abb108(37)
      abb108(40)=abb108(39)*spbk7e7
      abb108(36)=abb108(15)*abb108(36)
      abb108(41)=abb108(36)*spbk7e7
      abb108(42)=-abb108(38)*abb108(41)
      abb108(40)=abb108(40)+abb108(42)
      abb108(40)=abb108(26)*abb108(40)
      abb108(42)=abb108(12)*abb108(16)
      abb108(43)=abb108(42)*abb108(25)
      abb108(44)=abb108(9)*spbk7e7
      abb108(45)=abb108(43)*abb108(44)
      abb108(46)=abb108(38)*abb108(45)
      abb108(35)=abb108(35)+abb108(46)+abb108(40)
      abb108(35)=spal6k7*abb108(35)
      abb108(40)=abb108(14)*spbl5k2
      abb108(16)=abb108(16)*abb108(40)
      abb108(46)=abb108(39)*spbe7k1
      abb108(36)=abb108(36)*spbe7k1
      abb108(47)=abb108(38)*abb108(36)
      abb108(46)=-abb108(46)+abb108(47)
      abb108(46)=abb108(26)*abb108(46)
      abb108(9)=abb108(9)*spbe7k1
      abb108(43)=abb108(43)*abb108(9)
      abb108(47)=-abb108(38)*abb108(43)
      abb108(16)=abb108(16)+abb108(47)+abb108(46)
      abb108(16)=spak1l6*abb108(16)
      abb108(16)=abb108(33)+abb108(35)+abb108(16)+abb108(32)+abb108(27)+abb108(&
      &19)
      abb108(16)=4.0_ki*abb108(16)
      abb108(19)=abb108(11)*abb108(21)
      abb108(27)=abb108(19)-abb108(34)
      abb108(32)=spal6k7*abb108(27)
      abb108(15)=NC-abb108(15)
      abb108(15)=abb108(15)*abb108(10)*c3
      abb108(33)=-abb108(44)*abb108(15)
      abb108(35)=abb108(12)*abb108(10)
      abb108(46)=abb108(35)*abb108(44)
      abb108(46)=abb108(46)-abb108(33)
      abb108(47)=spbk3k2**2
      abb108(48)=mB**2
      abb108(49)=abb108(48)*abb108(7)
      abb108(50)=abb108(49)*abb108(6)
      abb108(51)=abb108(47)*abb108(50)
      abb108(52)=abb108(46)*abb108(51)
      abb108(53)=abb108(52)*spak3k4
      abb108(54)=spak2k7*abb108(53)
      abb108(32)=abb108(54)+abb108(32)
      abb108(32)=8.0_ki*abb108(32)
      abb108(28)=spbl5k3*abb108(28)
      abb108(34)=-spal6k7*abb108(34)
      abb108(54)=spak1l6*abb108(40)
      abb108(28)=abb108(28)+abb108(34)+abb108(54)
      abb108(28)=8.0_ki*abb108(28)
      abb108(20)=abb108(20)*spbl5k2
      abb108(34)=abb108(20)*spak1k4
      abb108(24)=abb108(24)*spbl5k2
      abb108(54)=abb108(24)*spak4k7
      abb108(34)=abb108(34)-abb108(54)
      abb108(54)=abb108(34)+2.0_ki*abb108(23)
      abb108(54)=8.0_ki*abb108(54)
      abb108(23)=abb108(23)+abb108(34)
      abb108(23)=8.0_ki*abb108(23)
      abb108(21)=abb108(13)*abb108(21)
      abb108(34)=abb108(21)-abb108(40)
      abb108(40)=spak1l6*abb108(34)
      abb108(15)=-abb108(9)*abb108(15)
      abb108(35)=abb108(35)*abb108(9)
      abb108(35)=abb108(35)-abb108(15)
      abb108(51)=abb108(35)*abb108(51)
      abb108(55)=abb108(51)*spak3k4
      abb108(56)=spak1k2*abb108(55)
      abb108(40)=abb108(56)+abb108(40)
      abb108(40)=8.0_ki*abb108(40)
      abb108(56)=4.0_ki*spak3k4
      abb108(57)=abb108(56)*spak2l6
      abb108(52)=abb108(52)*abb108(57)
      abb108(17)=abb108(56)*abb108(47)*abb108(17)
      abb108(47)=abb108(46)*abb108(17)
      abb108(58)=8.0_ki*spak4l6
      abb108(59)=abb108(58)*abb108(11)
      abb108(60)=abb108(50)*abb108(11)
      abb108(61)=abb108(60)*spak3k4
      abb108(62)=8.0_ki*abb108(61)
      abb108(19)=abb108(49)*abb108(19)
      abb108(63)=spbl5k2*abb108(49)*spak2k4
      abb108(64)=abb108(11)*abb108(63)
      abb108(19)=abb108(19)-abb108(64)
      abb108(61)=abb108(61)*abb108(31)
      abb108(48)=spak2l6*abb108(48)*abb108(6)
      abb108(64)=-abb108(22)*abb108(48)
      abb108(25)=abb108(25)*abb108(49)
      abb108(65)=abb108(25)*abb108(11)
      abb108(66)=es712*abb108(65)
      abb108(67)=abb108(12)*abb108(44)
      abb108(67)=abb108(67)-abb108(41)
      abb108(38)=abb108(25)*abb108(38)
      abb108(68)=-abb108(38)*abb108(67)
      abb108(39)=abb108(39)*abb108(25)
      abb108(69)=-spbk7e7*abb108(39)
      abb108(61)=abb108(66)+abb108(64)+abb108(69)+abb108(61)+abb108(68)-abb108(&
      &19)
      abb108(61)=4.0_ki*abb108(61)
      abb108(64)=8.0_ki*abb108(65)
      abb108(65)=spak1l6*abb108(27)
      abb108(53)=spak1k2*abb108(53)
      abb108(53)=abb108(53)+abb108(65)
      abb108(53)=4.0_ki*abb108(53)
      abb108(65)=4.0_ki*spak1k7
      abb108(66)=-abb108(34)*abb108(65)
      abb108(68)=abb108(11)*spak4k7
      abb108(69)=abb108(13)*spak1k4
      abb108(68)=abb108(68)-abb108(69)
      abb108(68)=8.0_ki*abb108(68)
      abb108(69)=abb108(11)*abb108(56)
      abb108(22)=4.0_ki*abb108(22)
      abb108(19)=spak2k7*abb108(19)
      abb108(63)=abb108(13)*abb108(63)
      abb108(21)=abb108(49)*abb108(21)
      abb108(21)=abb108(63)-abb108(21)
      abb108(49)=spak1k2*abb108(21)
      abb108(19)=abb108(19)+abb108(49)
      abb108(19)=4.0_ki*abb108(8)*abb108(19)
      abb108(27)=-abb108(27)*abb108(65)
      abb108(49)=-abb108(29)*abb108(33)
      abb108(42)=abb108(42)*abb108(6)
      abb108(44)=abb108(44)*abb108(42)
      abb108(63)=abb108(10)*abb108(44)
      abb108(49)=abb108(63)+abb108(49)
      abb108(49)=spal6k7*abb108(49)
      abb108(63)=abb108(29)*abb108(15)
      abb108(42)=abb108(9)*abb108(42)
      abb108(65)=-abb108(10)*abb108(42)
      abb108(63)=abb108(65)+abb108(63)
      abb108(63)=spak1l6*abb108(63)
      abb108(49)=abb108(49)+abb108(63)
      abb108(49)=es34*abb108(49)
      abb108(63)=abb108(37)*spbk7e7
      abb108(41)=abb108(63)-abb108(41)
      abb108(29)=abb108(29)*abb108(5)
      abb108(41)=-abb108(29)*abb108(41)
      abb108(44)=-abb108(5)*abb108(44)
      abb108(41)=abb108(44)+abb108(41)
      abb108(41)=spal6k7*abb108(41)
      abb108(37)=abb108(37)*spbe7k1
      abb108(44)=abb108(37)-abb108(36)
      abb108(29)=abb108(29)*abb108(44)
      abb108(42)=abb108(5)*abb108(42)
      abb108(29)=abb108(42)+abb108(29)
      abb108(29)=spak1l6*abb108(29)
      abb108(29)=abb108(49)+abb108(41)+abb108(29)
      abb108(41)=abb108(46)*spak4k7
      abb108(42)=abb108(35)*spak1k4
      abb108(41)=abb108(41)-abb108(42)
      abb108(18)=-abb108(18)*abb108(41)
      abb108(42)=spbk4k2*abb108(18)
      abb108(44)=-spak3k7*abb108(24)
      abb108(49)=spak1k3*abb108(20)
      abb108(29)=abb108(49)+abb108(44)+abb108(42)+2.0_ki*abb108(29)
      abb108(29)=4.0_ki*abb108(29)
      abb108(42)=spak3l6*abb108(11)
      abb108(44)=abb108(46)*spak4l6
      abb108(49)=spbk4k2*abb108(44)
      abb108(42)=abb108(49)+abb108(42)
      abb108(42)=4.0_ki*abb108(42)
      abb108(49)=abb108(63)+abb108(67)
      abb108(63)=abb108(50)*abb108(5)
      abb108(49)=abb108(63)*abb108(49)
      abb108(65)=abb108(50)*es34
      abb108(67)=-abb108(46)*abb108(65)
      abb108(49)=abb108(67)+abb108(49)
      abb108(49)=4.0_ki*abb108(49)
      abb108(67)=-spbk4k2*abb108(41)
      abb108(70)=-spak3k7*abb108(11)
      abb108(71)=spak1k3*abb108(13)
      abb108(67)=abb108(71)+abb108(67)+abb108(70)
      abb108(67)=4.0_ki*abb108(67)
      abb108(33)=abb108(26)*abb108(33)
      abb108(45)=-abb108(10)*abb108(45)
      abb108(33)=abb108(45)+abb108(33)
      abb108(33)=spal6k7*abb108(33)
      abb108(15)=-abb108(26)*abb108(15)
      abb108(10)=abb108(10)*abb108(43)
      abb108(10)=abb108(10)+abb108(15)
      abb108(10)=spak1l6*abb108(10)
      abb108(10)=abb108(33)+abb108(10)
      abb108(10)=2.0_ki*abb108(10)-abb108(18)
      abb108(10)=spbk4k3*abb108(10)
      abb108(15)=spak2k7*abb108(24)
      abb108(18)=-spak1k2*abb108(20)
      abb108(10)=abb108(18)+abb108(15)+abb108(10)
      abb108(10)=4.0_ki*abb108(10)
      abb108(15)=-spak2l6*abb108(11)
      abb108(18)=-spbk4k3*abb108(44)
      abb108(15)=abb108(15)+abb108(18)
      abb108(15)=4.0_ki*abb108(15)
      abb108(18)=4.0_ki*spbk4k3
      abb108(18)=abb108(18)*abb108(25)
      abb108(20)=abb108(46)*abb108(18)
      abb108(24)=spbk4k3*abb108(41)
      abb108(11)=spak2k7*abb108(11)
      abb108(26)=-spak1k2*abb108(13)
      abb108(11)=abb108(26)+abb108(11)+abb108(24)
      abb108(11)=4.0_ki*abb108(11)
      abb108(24)=4.0_ki*abb108(30)
      abb108(26)=-abb108(60)*abb108(56)
      abb108(30)=spal6k7*abb108(34)
      abb108(33)=spak2k7*abb108(55)
      abb108(30)=abb108(33)+abb108(30)
      abb108(30)=4.0_ki*abb108(30)
      abb108(33)=abb108(51)*abb108(57)
      abb108(17)=abb108(35)*abb108(17)
      abb108(34)=abb108(58)*abb108(13)
      abb108(41)=abb108(13)*abb108(56)
      abb108(43)=4.0_ki*abb108(14)
      abb108(44)=spak3l6*abb108(13)
      abb108(45)=abb108(35)*spak4l6
      abb108(46)=spbk4k2*abb108(45)
      abb108(44)=abb108(46)+abb108(44)
      abb108(44)=4.0_ki*abb108(44)
      abb108(46)=-spak2l6*abb108(13)
      abb108(45)=-spbk4k3*abb108(45)
      abb108(45)=abb108(46)+abb108(45)
      abb108(45)=4.0_ki*abb108(45)
      abb108(46)=abb108(50)*abb108(13)
      abb108(50)=abb108(46)*spak3k4
      abb108(51)=8.0_ki*abb108(50)
      abb108(31)=abb108(50)*abb108(31)
      abb108(14)=-abb108(14)*abb108(48)
      abb108(13)=abb108(25)*abb108(13)
      abb108(25)=es712*abb108(13)
      abb108(9)=abb108(12)*abb108(9)
      abb108(9)=abb108(9)-abb108(36)
      abb108(12)=-abb108(38)*abb108(9)
      abb108(36)=-spbe7k1*abb108(39)
      abb108(12)=abb108(25)+abb108(14)+abb108(36)+abb108(31)+abb108(12)+abb108(&
      &21)
      abb108(12)=4.0_ki*abb108(12)
      abb108(13)=8.0_ki*abb108(13)
      abb108(9)=abb108(37)+abb108(9)
      abb108(9)=abb108(63)*abb108(9)
      abb108(14)=-abb108(35)*abb108(65)
      abb108(9)=abb108(14)+abb108(9)
      abb108(9)=4.0_ki*abb108(9)
      abb108(14)=abb108(35)*abb108(18)
      abb108(18)=-abb108(46)*abb108(56)
      R2d108=0.0_ki
      rat2 = rat2 + R2d108
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='108' value='", &
          & R2d108, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd108h1
