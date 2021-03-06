module     p0_dbaru_epnebbbarg_abbrevd85h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(73), public :: abb85
   complex(ki), public :: R2d85
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
      abb85(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb85(2)=sqrt2**(-1)
      abb85(3)=es56**(-1)
      abb85(4)=spbk7k2**(-1)
      abb85(5)=spak2l5**(-1)
      abb85(6)=spbl6k2**(-1)
      abb85(7)=mB**2*abb85(5)*abb85(6)
      abb85(8)=abb85(7)*spak3k4
      abb85(9)=spbk3k2*spak1k7
      abb85(10)=abb85(8)*abb85(9)
      abb85(11)=es712-es12
      abb85(11)=-es712*abb85(11)
      abb85(12)=2.0_ki*es712-es71-es12
      abb85(12)=es71*abb85(12)
      abb85(11)=abb85(11)+abb85(12)
      abb85(11)=abb85(11)*abb85(10)
      abb85(12)=spbl5k2*spak2k4
      abb85(13)=abb85(12)*spak1l6
      abb85(14)=spak1l6*spbl5k3
      abb85(15)=abb85(14)*spak3k4
      abb85(13)=abb85(13)-abb85(15)
      abb85(15)=es71-es712
      abb85(16)=abb85(15)+es12
      abb85(17)=abb85(16)*spbk2k1
      abb85(18)=-spak1k7*abb85(17)*abb85(13)
      abb85(11)=abb85(18)+abb85(11)
      abb85(18)=abb85(4)*spbk3k2
      abb85(11)=abb85(11)*abb85(18)
      abb85(19)=spbl5k2*spal6k7
      abb85(20)=abb85(19)*spak2k4
      abb85(21)=spbl5k3*spal6k7
      abb85(22)=abb85(21)*spak3k4
      abb85(20)=abb85(20)-abb85(22)
      abb85(23)=abb85(20)*abb85(9)
      abb85(24)=abb85(16)*abb85(23)
      abb85(11)=abb85(24)+abb85(11)
      abb85(24)=abb85(1)*abb85(2)*abb85(3)*CVDU*c2*i_
      abb85(25)=8.0_ki*abb85(24)
      abb85(26)=gW*TR
      abb85(26)=abb85(26)**2
      abb85(25)=abb85(25)*abb85(26)
      abb85(11)=abb85(11)*abb85(25)
      abb85(27)=spak1l6*spbk2k1
      abb85(28)=abb85(27)*abb85(12)
      abb85(29)=abb85(14)*spbk2k1
      abb85(30)=abb85(29)*spak3k4
      abb85(28)=abb85(28)-abb85(30)
      abb85(31)=abb85(28)*spak1k7
      abb85(32)=abb85(15)*abb85(10)
      abb85(31)=-abb85(31)-abb85(32)
      abb85(31)=abb85(31)*abb85(18)
      abb85(23)=abb85(23)+abb85(31)
      abb85(31)=16.0_ki*abb85(24)
      abb85(31)=abb85(31)*abb85(26)
      abb85(23)=abb85(23)*abb85(31)
      abb85(33)=spbl5k2*spak4l6
      abb85(34)=abb85(33)*abb85(9)
      abb85(24)=abb85(24)*abb85(26)
      abb85(26)=abb85(4)*abb85(24)
      abb85(35)=16.0_ki*abb85(26)
      abb85(36)=abb85(34)*abb85(35)
      abb85(37)=abb85(16)*abb85(36)
      abb85(38)=abb85(26)*abb85(9)
      abb85(39)=abb85(38)*abb85(33)
      abb85(40)=32.0_ki*abb85(39)
      abb85(41)=2.0_ki*spak4k7
      abb85(42)=abb85(41)*spak2l6
      abb85(43)=spal6k7*spak2k4
      abb85(42)=abb85(42)+abb85(43)
      abb85(42)=abb85(42)*spbl5k2
      abb85(44)=2.0_ki*abb85(7)
      abb85(45)=abb85(44)*abb85(15)*spak4k7
      abb85(42)=-abb85(42)+abb85(45)+abb85(22)
      abb85(42)=abb85(42)*abb85(9)
      abb85(45)=abb85(33)*spbk4k3
      abb85(45)=abb85(45)+abb85(29)
      abb85(46)=abb85(21)*spbk7k2
      abb85(47)=abb85(45)-abb85(46)
      abb85(48)=2.0_ki*spak1k7
      abb85(47)=abb85(48)*abb85(47)*spak4k7
      abb85(42)=abb85(47)-abb85(42)
      abb85(47)=2.0_ki*es12
      abb85(48)=-abb85(47)-3.0_ki*abb85(15)
      abb85(48)=abb85(48)*abb85(10)
      abb85(49)=abb85(16)*spak4l6
      abb85(50)=abb85(27)*spak2k4
      abb85(50)=abb85(50)+2.0_ki*abb85(49)
      abb85(50)=abb85(50)*spbl5k2
      abb85(30)=abb85(50)-abb85(30)
      abb85(30)=abb85(30)*spak1k7
      abb85(48)=-abb85(30)+abb85(48)
      abb85(48)=abb85(48)*abb85(18)
      abb85(48)=abb85(48)+abb85(42)
      abb85(48)=abb85(48)*abb85(25)
      abb85(50)=abb85(33)*spak1k7
      abb85(51)=abb85(50)+abb85(10)
      abb85(52)=abb85(26)*spbk3k2
      abb85(52)=32.0_ki*abb85(52)
      abb85(53)=-abb85(51)*abb85(52)
      abb85(41)=abb85(41)*abb85(9)
      abb85(54)=abb85(41)*abb85(7)
      abb85(51)=-abb85(51)*abb85(18)
      abb85(51)=-abb85(54)+abb85(51)
      abb85(51)=abb85(51)*abb85(31)
      abb85(30)=-abb85(30)-abb85(32)
      abb85(30)=abb85(30)*abb85(18)
      abb85(30)=abb85(30)+abb85(42)
      abb85(24)=4.0_ki*abb85(24)
      abb85(30)=abb85(30)*abb85(24)
      abb85(26)=8.0_ki*abb85(26)
      abb85(32)=abb85(34)*abb85(26)
      abb85(10)=-2.0_ki*abb85(50)-abb85(10)
      abb85(10)=abb85(10)*abb85(18)
      abb85(10)=-abb85(54)+abb85(10)
      abb85(10)=abb85(10)*abb85(25)
      abb85(34)=-4.0_ki*abb85(39)
      abb85(29)=-abb85(46)+abb85(29)
      abb85(29)=spak2k4*abb85(29)
      abb85(39)=spbk7k3*abb85(43)
      abb85(42)=spak4l6*spbk4k3
      abb85(43)=spak2k4*abb85(42)
      abb85(39)=abb85(39)+abb85(43)
      abb85(39)=spbl5k2*abb85(39)
      abb85(22)=-spbk7k3*abb85(22)
      abb85(22)=abb85(39)+abb85(22)+abb85(29)
      abb85(22)=spak1k7*abb85(22)
      abb85(29)=-spak1k2*abb85(20)
      abb85(39)=abb85(15)*abb85(7)
      abb85(43)=-spak2k4*abb85(39)
      abb85(12)=spak2l6*abb85(12)
      abb85(12)=abb85(43)+abb85(12)
      abb85(12)=spak1k7*abb85(12)
      abb85(12)=abb85(12)+abb85(29)
      abb85(12)=spbk3k2*abb85(12)
      abb85(29)=spak1k7*spbk7k3
      abb85(8)=abb85(29)*abb85(8)
      abb85(43)=abb85(7)*spbk3k2
      abb85(46)=abb85(43)*spak1k2
      abb85(54)=abb85(46)*spak3k4
      abb85(8)=abb85(8)-abb85(54)
      abb85(55)=-abb85(15)*abb85(8)
      abb85(56)=es12*abb85(13)
      abb85(55)=abb85(56)+abb85(55)
      abb85(55)=spbk3k2*abb85(55)
      abb85(28)=-abb85(28)*abb85(29)
      abb85(28)=abb85(28)+abb85(55)
      abb85(28)=abb85(4)*abb85(28)
      abb85(12)=abb85(28)+abb85(22)+abb85(12)
      abb85(12)=abb85(12)*abb85(25)
      abb85(22)=spbk3k2*spak1k2
      abb85(28)=abb85(22)*abb85(33)
      abb85(50)=abb85(50)*spbk7k3
      abb85(28)=abb85(28)-abb85(50)
      abb85(28)=abb85(28)*abb85(35)
      abb85(55)=spal6k7*spbk7k3
      abb85(56)=spak1k4*abb85(55)
      abb85(57)=spak1k4*spbk3k1
      abb85(58)=-spak1l6*abb85(57)
      abb85(56)=abb85(56)+abb85(58)
      abb85(56)=spbl5k2*abb85(56)
      abb85(33)=spak1k2*abb85(33)
      abb85(8)=abb85(33)-abb85(8)
      abb85(8)=spbk3k2*abb85(8)
      abb85(8)=abb85(8)+abb85(56)-abb85(50)
      abb85(8)=abb85(4)*abb85(8)
      abb85(33)=abb85(7)*abb85(9)
      abb85(56)=-spak2k4*abb85(33)
      abb85(8)=abb85(56)+abb85(8)
      abb85(8)=abb85(8)*abb85(31)
      abb85(56)=abb85(7)*spak1k4
      abb85(52)=abb85(52)*abb85(56)
      abb85(58)=abb85(35)*spbk3k2
      abb85(13)=-abb85(54)+abb85(13)
      abb85(13)=abb85(13)*abb85(58)
      abb85(54)=abb85(15)*abb85(56)
      abb85(59)=-spak1k4*spak2l6
      abb85(60)=spak4l6*spak1k2
      abb85(59)=abb85(59)+abb85(60)
      abb85(59)=spbl5k2*abb85(59)
      abb85(54)=abb85(54)+abb85(59)
      abb85(54)=spbk3k2*abb85(54)
      abb85(59)=-spak1k4*abb85(45)
      abb85(50)=abb85(54)-abb85(50)+abb85(59)
      abb85(50)=abb85(4)*abb85(50)
      abb85(54)=spak1k4*abb85(21)
      abb85(50)=abb85(54)+abb85(50)
      abb85(50)=abb85(50)*abb85(25)
      abb85(54)=spak3k4*spak1k7*spbk3k2**2
      abb85(59)=abb85(16)*abb85(26)*abb85(54)
      abb85(60)=abb85(35)*abb85(54)
      abb85(54)=abb85(54)*abb85(4)
      abb85(41)=abb85(54)+abb85(41)
      abb85(54)=abb85(41)*abb85(25)
      abb85(41)=abb85(41)*abb85(24)
      abb85(29)=abb85(29)-abb85(22)
      abb85(18)=abb85(18)*spak3k4*abb85(29)
      abb85(29)=spak2k4*abb85(9)
      abb85(18)=abb85(29)+abb85(18)
      abb85(18)=abb85(18)*abb85(25)
      abb85(29)=spak1k4*abb85(58)
      abb85(61)=abb85(26)*spbk3k2
      abb85(62)=-spak1k4*abb85(61)
      abb85(63)=spbl5k3*spak1k4
      abb85(64)=abb85(63)*abb85(35)
      abb85(63)=abb85(26)*abb85(63)
      abb85(17)=-spak1l6*abb85(17)
      abb85(49)=-spbk4k2*abb85(49)
      abb85(17)=abb85(17)+abb85(49)
      abb85(49)=spak1k7*spbl5k2
      abb85(17)=abb85(17)*abb85(49)
      abb85(65)=spak3l6*abb85(9)*spbl5k2
      abb85(66)=-abb85(16)*abb85(65)
      abb85(17)=abb85(17)+abb85(66)
      abb85(17)=abb85(4)*abb85(17)
      abb85(66)=abb85(19)*spak1k7
      abb85(16)=abb85(16)*abb85(66)
      abb85(16)=abb85(16)+abb85(17)
      abb85(16)=abb85(16)*abb85(25)
      abb85(17)=spak4l6*spbk4k2
      abb85(67)=abb85(17)+abb85(27)
      abb85(49)=abb85(67)*abb85(49)
      abb85(49)=abb85(49)+abb85(65)
      abb85(49)=abb85(49)*abb85(4)
      abb85(49)=abb85(49)-abb85(66)
      abb85(65)=-abb85(49)*abb85(31)
      abb85(66)=-abb85(49)*abb85(25)
      abb85(49)=-abb85(49)*abb85(24)
      abb85(67)=spak1l6*es12
      abb85(68)=spak1k2*abb85(17)
      abb85(69)=abb85(22)*spak3l6
      abb85(67)=abb85(69)+abb85(67)+abb85(68)
      abb85(67)=spbl5k2*abb85(67)
      abb85(68)=-spbk7k3*spak3l6
      abb85(69)=-spak4l6*spbk7k4
      abb85(68)=abb85(68)+abb85(69)
      abb85(68)=spbl5k2*abb85(68)
      abb85(27)=-spbk7l5*abb85(27)
      abb85(27)=abb85(27)+abb85(68)
      abb85(27)=spak1k7*abb85(27)
      abb85(27)=abb85(27)+abb85(67)
      abb85(27)=abb85(4)*abb85(27)
      abb85(67)=spbl5k2*spak2l6
      abb85(39)=abb85(67)-abb85(39)
      abb85(68)=spal6k7*spbk7l5
      abb85(68)=abb85(68)+abb85(39)
      abb85(68)=spak1k7*abb85(68)
      abb85(69)=-spak1k2*abb85(19)
      abb85(27)=abb85(27)+abb85(69)+abb85(68)
      abb85(27)=abb85(27)*abb85(25)
      abb85(68)=spbl5k2*spak1l6
      abb85(56)=spbk4k2*abb85(56)
      abb85(69)=spak1k3*abb85(43)
      abb85(56)=abb85(69)+abb85(56)+abb85(68)
      abb85(56)=abb85(4)*abb85(56)
      abb85(44)=-spak1k7*abb85(44)
      abb85(44)=abb85(44)+abb85(56)
      abb85(31)=abb85(44)*abb85(31)
      abb85(44)=abb85(35)*abb85(68)
      abb85(56)=abb85(7)*spak1k2
      abb85(68)=-abb85(4)*spak1l6*spbk7l5
      abb85(68)=abb85(56)+abb85(68)
      abb85(68)=abb85(68)*abb85(25)
      abb85(69)=spak1k7*abb85(25)
      abb85(70)=spbl5k2*spak1k2
      abb85(71)=spak1k4*spbl5k4
      abb85(72)=spbl5k3*spak1k3
      abb85(73)=spak1k7*spbk7l5
      abb85(71)=abb85(73)-abb85(70)+abb85(71)+abb85(72)
      abb85(71)=abb85(71)*abb85(26)
      abb85(39)=abb85(39)*abb85(9)
      abb85(45)=abb85(45)*spak1k7
      abb85(39)=abb85(39)+abb85(45)
      abb85(39)=abb85(39)*abb85(4)
      abb85(45)=abb85(21)*spak1k7
      abb85(39)=abb85(39)-abb85(45)
      abb85(45)=abb85(39)*abb85(25)
      abb85(72)=abb85(35)*abb85(7)
      abb85(73)=-abb85(9)*abb85(72)
      abb85(24)=abb85(39)*abb85(24)
      abb85(33)=-abb85(26)*abb85(33)
      abb85(39)=spak1l6*spbk3k1
      abb85(39)=-abb85(42)-abb85(55)+abb85(39)
      abb85(39)=abb85(39)*abb85(70)
      abb85(42)=spbk7k3*spak1k3
      abb85(55)=abb85(21)*abb85(42)
      abb85(70)=es123-es23
      abb85(47)=-abb85(47)+abb85(70)
      abb85(47)=abb85(47)*abb85(14)
      abb85(15)=-es12+abb85(15)+abb85(70)
      abb85(15)=spak1k2*abb85(15)
      abb85(42)=spak2k7*abb85(42)
      abb85(15)=abb85(42)+abb85(15)
      abb85(15)=abb85(15)*abb85(7)
      abb85(42)=-spak1k2*abb85(67)
      abb85(15)=abb85(15)+abb85(42)
      abb85(15)=spbk3k2*abb85(15)
      abb85(15)=abb85(15)+abb85(39)+abb85(55)+abb85(47)
      abb85(15)=abb85(4)*abb85(15)
      abb85(39)=spak1k2*abb85(21)
      abb85(15)=abb85(39)+abb85(15)
      abb85(15)=abb85(15)*abb85(25)
      abb85(25)=abb85(46)+abb85(14)
      abb85(39)=abb85(25)*abb85(35)
      abb85(42)=-abb85(14)+abb85(46)
      abb85(42)=abb85(42)*abb85(35)
      abb85(25)=abb85(25)*abb85(26)
      abb85(9)=abb85(9)*abb85(26)
      abb85(38)=4.0_ki*abb85(38)
      abb85(22)=-abb85(35)*abb85(22)
      abb85(46)=-spak1l6*spbl5k4
      abb85(47)=-spbk4k2*abb85(56)
      abb85(46)=abb85(46)+abb85(47)
      abb85(46)=abb85(46)*abb85(26)
      abb85(47)=spak1k4*spbk7k3
      abb85(21)=-abb85(21)*abb85(47)
      abb85(14)=abb85(14)*abb85(57)
      abb85(47)=-spak2k7*abb85(47)
      abb85(55)=spak1k2*abb85(57)
      abb85(47)=abb85(47)+abb85(55)
      abb85(47)=abb85(47)*abb85(43)
      abb85(14)=abb85(47)+abb85(21)+abb85(14)
      abb85(14)=abb85(14)*abb85(26)
      abb85(21)=-spak3k4*spak2k7*abb85(43)
      abb85(20)=abb85(21)+abb85(20)
      abb85(20)=abb85(20)*abb85(61)
      abb85(19)=abb85(26)*abb85(19)
      abb85(21)=abb85(58)*spak4l6
      abb85(47)=-spak4l6*abb85(61)
      abb85(55)=-spbk3k2*spak3l6
      abb85(17)=-abb85(17)+abb85(55)
      abb85(17)=abb85(17)*abb85(26)
      abb85(35)=abb85(43)*abb85(35)
      abb85(55)=-spak3k4*abb85(35)
      abb85(56)=spak3k4*abb85(61)
      abb85(35)=abb85(35)*spak2k4
      abb85(43)=-abb85(26)*abb85(43)*spak2k4
      abb85(57)=-spak2k4*abb85(61)
      abb85(58)=es12+es234-es34
      abb85(7)=abb85(58)*abb85(7)
      abb85(58)=-spak1l6*spbl5k1
      abb85(7)=abb85(58)+abb85(7)
      abb85(7)=abb85(7)*abb85(26)
      R2d85=0.0_ki
      rat2 = rat2 + R2d85
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='85' value='", &
          & R2d85, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd85h5
