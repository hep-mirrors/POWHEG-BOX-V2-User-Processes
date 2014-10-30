module     p0_dbaru_epnebbbarg_abbrevd80h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(77), public :: abb80
   complex(ki), public :: R2d80
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
      abb80(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb80(2)=NC**(-1)
      abb80(3)=sqrt2**(-1)
      abb80(4)=es56**(-1)
      abb80(5)=spbl5k2**(-1)
      abb80(6)=spbl6k2**(-1)
      abb80(7)=spbk7k2**(-1)
      abb80(8)=spbk3k2**2
      abb80(9)=TR*gW
      abb80(9)=CVDU*i_*mB*abb80(4)*abb80(3)*abb80(1)*abb80(9)**2
      abb80(10)=abb80(9)*abb80(6)
      abb80(11)=abb80(8)*abb80(10)*spal5k7*spak3k4
      abb80(12)=abb80(9)*abb80(5)
      abb80(13)=abb80(8)*abb80(12)*spal6k7*spak3k4
      abb80(11)=abb80(11)+abb80(13)
      abb80(13)=c3*abb80(2)
      abb80(14)=abb80(13)-c2
      abb80(15)=spak1k7*abb80(14)
      abb80(16)=c4*abb80(2)**2
      abb80(17)=abb80(16)*spak1k7
      abb80(17)=abb80(17)-abb80(15)
      abb80(18)=-abb80(17)*abb80(11)
      abb80(8)=abb80(8)*abb80(7)
      abb80(19)=abb80(8)*abb80(10)
      abb80(20)=spak1l5*abb80(19)
      abb80(8)=abb80(8)*abb80(12)
      abb80(21)=spak1l6*abb80(8)
      abb80(20)=abb80(20)+abb80(21)
      abb80(13)=-abb80(13)+c2+abb80(16)
      abb80(21)=spbk2k1*spak1k7
      abb80(13)=abb80(21)*abb80(13)
      abb80(20)=spak3k4*abb80(13)*abb80(20)
      abb80(18)=abb80(20)+abb80(18)
      abb80(20)=8.0_ki*es12*abb80(18)
      abb80(18)=16.0_ki*abb80(18)
      abb80(22)=spal6k7*spak1k4
      abb80(23)=abb80(12)*spbk3k2
      abb80(24)=-abb80(22)*abb80(23)
      abb80(25)=spal5k7*spak1k4
      abb80(26)=abb80(10)*spbk3k2
      abb80(27)=-abb80(25)*abb80(26)
      abb80(24)=abb80(27)+abb80(24)
      abb80(24)=abb80(13)*abb80(24)
      abb80(27)=abb80(14)-abb80(16)
      abb80(9)=abb80(9)*spbk3k2*abb80(7)
      abb80(28)=abb80(27)*abb80(9)*abb80(6)
      abb80(29)=-abb80(28)*spak1l5
      abb80(9)=-abb80(27)*abb80(9)*abb80(5)
      abb80(30)=abb80(9)*spak1l6
      abb80(29)=abb80(29)+abb80(30)
      abb80(30)=spbk2k1**2
      abb80(31)=abb80(30)*spak1k7
      abb80(32)=spak1k4*abb80(31)*abb80(29)
      abb80(24)=abb80(32)+abb80(24)
      abb80(24)=8.0_ki*abb80(24)
      abb80(32)=-abb80(8)*abb80(14)
      abb80(33)=abb80(8)*abb80(16)
      abb80(32)=abb80(32)+abb80(33)
      abb80(34)=abb80(32)*spak3k4
      abb80(35)=abb80(34)*spak1l6
      abb80(36)=-abb80(19)*abb80(14)
      abb80(37)=abb80(19)*abb80(16)
      abb80(36)=abb80(36)+abb80(37)
      abb80(38)=abb80(36)*spak3k4
      abb80(39)=abb80(38)*spak1l5
      abb80(35)=abb80(35)+abb80(39)
      abb80(39)=-es12*abb80(35)
      abb80(11)=-spak1k2*abb80(27)*abb80(11)
      abb80(11)=abb80(39)+abb80(11)
      abb80(11)=8.0_ki*abb80(11)
      abb80(35)=-16.0_ki*abb80(35)
      abb80(39)=-spak1k4*spbk2k1*abb80(29)
      abb80(23)=abb80(27)*abb80(23)
      abb80(40)=-abb80(23)*abb80(22)
      abb80(26)=abb80(27)*abb80(26)
      abb80(41)=-abb80(26)*abb80(25)
      abb80(39)=abb80(41)+abb80(40)+abb80(39)
      abb80(39)=8.0_ki*abb80(39)
      abb80(33)=abb80(33)*spak1k7
      abb80(8)=abb80(15)*abb80(8)
      abb80(8)=abb80(33)-abb80(8)
      abb80(33)=8.0_ki*spak3k4
      abb80(40)=abb80(33)*es12
      abb80(41)=-abb80(8)*abb80(40)
      abb80(42)=abb80(21)*abb80(9)
      abb80(43)=16.0_ki*spak1k4
      abb80(44)=abb80(43)*abb80(42)
      abb80(45)=16.0_ki*spak3k4
      abb80(8)=-abb80(8)*abb80(45)
      abb80(46)=8.0_ki*spak1k2
      abb80(34)=abb80(34)*abb80(46)
      abb80(47)=abb80(43)*abb80(9)
      abb80(37)=abb80(37)*spak1k7
      abb80(19)=abb80(15)*abb80(19)
      abb80(19)=abb80(37)-abb80(19)
      abb80(37)=-abb80(19)*abb80(40)
      abb80(21)=-abb80(21)*abb80(28)
      abb80(40)=abb80(43)*abb80(21)
      abb80(19)=-abb80(19)*abb80(45)
      abb80(38)=abb80(38)*abb80(46)
      abb80(43)=-abb80(28)*abb80(43)
      abb80(45)=-spak1l6*abb80(12)
      abb80(46)=-spak1l5*abb80(10)
      abb80(45)=abb80(45)+abb80(46)
      abb80(45)=8.0_ki*abb80(13)*abb80(45)
      abb80(46)=-spak1l6*abb80(27)*abb80(12)
      abb80(48)=-spak1l5*abb80(27)*abb80(10)
      abb80(46)=abb80(46)+abb80(48)
      abb80(46)=8.0_ki*abb80(46)
      abb80(48)=abb80(27)*spbk2k1*spak1k7**2
      abb80(49)=-abb80(12)*abb80(48)
      abb80(50)=abb80(12)*abb80(7)
      abb80(51)=-abb80(50)*abb80(13)
      abb80(52)=spbk4k2*spak1k4
      abb80(53)=abb80(51)*abb80(52)
      abb80(54)=-spak1k3*abb80(42)
      abb80(49)=abb80(54)+abb80(53)+abb80(49)
      abb80(49)=8.0_ki*abb80(49)
      abb80(53)=-abb80(50)*abb80(14)
      abb80(54)=abb80(50)*abb80(16)
      abb80(53)=abb80(53)+abb80(54)
      abb80(55)=abb80(53)*abb80(52)
      abb80(56)=-abb80(12)*abb80(17)
      abb80(57)=spak1k3*abb80(9)
      abb80(55)=abb80(57)+abb80(55)+abb80(56)
      abb80(55)=8.0_ki*abb80(55)
      abb80(48)=-abb80(10)*abb80(48)
      abb80(56)=abb80(10)*abb80(7)
      abb80(13)=-abb80(56)*abb80(13)
      abb80(57)=abb80(13)*abb80(52)
      abb80(58)=-spak1k3*abb80(21)
      abb80(48)=abb80(58)+abb80(57)+abb80(48)
      abb80(48)=8.0_ki*abb80(48)
      abb80(14)=-abb80(56)*abb80(14)
      abb80(16)=abb80(56)*abb80(16)
      abb80(14)=abb80(14)+abb80(16)
      abb80(52)=abb80(14)*abb80(52)
      abb80(17)=-abb80(10)*abb80(17)
      abb80(57)=-spak1k3*abb80(28)
      abb80(17)=abb80(57)+abb80(52)+abb80(17)
      abb80(17)=8.0_ki*abb80(17)
      abb80(52)=abb80(21)*spak1l5
      abb80(57)=abb80(42)*spak1l6
      abb80(52)=abb80(52)+abb80(57)
      abb80(27)=-abb80(27)*spak1k7*spbk3k2
      abb80(10)=abb80(10)*abb80(27)
      abb80(57)=abb80(10)*spal5k7
      abb80(12)=abb80(12)*abb80(27)
      abb80(27)=abb80(12)*spal6k7
      abb80(27)=-abb80(52)+abb80(57)+abb80(27)
      abb80(57)=2.0_ki*es12+es23-es123
      abb80(27)=-8.0_ki*abb80(27)*abb80(57)
      abb80(36)=abb80(36)*spal5k7
      abb80(32)=abb80(32)*spal6k7
      abb80(32)=abb80(36)+abb80(32)
      abb80(36)=abb80(32)*spak1k3
      abb80(58)=16.0_ki*abb80(36)
      abb80(59)=16.0_ki*abb80(52)
      abb80(36)=abb80(36)+abb80(52)
      abb80(36)=8.0_ki*abb80(36)
      abb80(57)=-abb80(29)*abb80(57)
      abb80(23)=-spal6k7*abb80(23)
      abb80(26)=-spal5k7*abb80(26)
      abb80(23)=abb80(23)+abb80(26)
      abb80(23)=spak1k2*abb80(23)
      abb80(26)=spal6k7*abb80(9)
      abb80(60)=-spal5k7*abb80(28)
      abb80(26)=abb80(26)+abb80(60)
      abb80(26)=spbk7k3*spak1k3*abb80(26)
      abb80(23)=abb80(26)+abb80(23)+abb80(57)
      abb80(23)=8.0_ki*abb80(23)
      abb80(26)=16.0_ki*abb80(29)
      abb80(57)=8.0_ki*abb80(29)
      abb80(60)=abb80(9)*spak1k7
      abb80(61)=16.0_ki*es12
      abb80(62)=-abb80(60)*abb80(61)
      abb80(63)=16.0_ki*spak1k2
      abb80(64)=abb80(9)*abb80(63)
      abb80(65)=-abb80(28)*spak1k7
      abb80(61)=-abb80(65)*abb80(61)
      abb80(63)=-abb80(28)*abb80(63)
      abb80(66)=-spak1l6*abb80(51)
      abb80(67)=-spak1l5*abb80(13)
      abb80(66)=abb80(66)+abb80(67)
      abb80(67)=8.0_ki*spbk4k2
      abb80(66)=abb80(66)*abb80(67)
      abb80(68)=abb80(14)*spak1l5
      abb80(69)=abb80(53)*spak1l6
      abb80(68)=abb80(68)+abb80(69)
      abb80(67)=-abb80(68)*abb80(67)
      abb80(69)=-spak1k4*abb80(52)
      abb80(12)=abb80(12)*abb80(22)
      abb80(10)=abb80(10)*abb80(25)
      abb80(10)=abb80(10)+abb80(12)+abb80(69)
      abb80(10)=8.0_ki*spbk3k1*abb80(10)
      abb80(12)=spak1k4*abb80(32)
      abb80(69)=16.0_ki*abb80(12)
      abb80(12)=-8.0_ki*abb80(12)
      abb80(29)=spbk3k1*spak1k4*abb80(29)
      abb80(22)=-abb80(9)*abb80(22)
      abb80(25)=abb80(28)*abb80(25)
      abb80(22)=abb80(22)+abb80(25)
      abb80(22)=spbk7k3*abb80(22)
      abb80(22)=abb80(29)+abb80(22)
      abb80(22)=8.0_ki*abb80(22)
      abb80(25)=8.0_ki*abb80(52)
      abb80(29)=spak3k4*abb80(32)
      abb80(32)=-8.0_ki*abb80(29)
      abb80(52)=-abb80(9)*abb80(33)
      abb80(33)=abb80(28)*abb80(33)
      abb80(70)=16.0_ki*abb80(29)
      abb80(71)=abb80(21)*spak4l5
      abb80(72)=abb80(42)*spak4l6
      abb80(71)=abb80(71)+abb80(72)
      abb80(72)=16.0_ki*abb80(71)
      abb80(29)=-abb80(71)+abb80(29)
      abb80(29)=8.0_ki*abb80(29)
      abb80(71)=abb80(9)*spak4l6
      abb80(73)=-abb80(28)*spak4l5
      abb80(71)=abb80(71)+abb80(73)
      abb80(73)=16.0_ki*abb80(71)
      abb80(71)=8.0_ki*abb80(71)
      abb80(74)=spbk3k1*spak3k4
      abb80(60)=abb80(60)*abb80(74)
      abb80(75)=-spak2k4*abb80(42)
      abb80(60)=abb80(60)+abb80(75)
      abb80(60)=8.0_ki*abb80(60)
      abb80(75)=8.0_ki*spak2k4
      abb80(76)=abb80(9)*abb80(75)
      abb80(65)=abb80(65)*abb80(74)
      abb80(74)=-spak2k4*abb80(21)
      abb80(65)=abb80(65)+abb80(74)
      abb80(65)=8.0_ki*abb80(65)
      abb80(74)=-abb80(28)*abb80(75)
      abb80(75)=spak4l6*abb80(51)
      abb80(77)=spak4l5*abb80(13)
      abb80(75)=abb80(77)+abb80(75)
      abb80(75)=spbk4k2*abb80(75)
      abb80(15)=abb80(15)*abb80(30)
      abb80(30)=abb80(50)*abb80(15)
      abb80(50)=-abb80(31)*abb80(54)
      abb80(30)=abb80(50)+abb80(30)
      abb80(30)=spak1l6*abb80(30)
      abb80(15)=abb80(56)*abb80(15)
      abb80(16)=-abb80(31)*abb80(16)
      abb80(15)=abb80(16)+abb80(15)
      abb80(15)=spak1l5*abb80(15)
      abb80(16)=-spak3l6*abb80(42)
      abb80(21)=-spak3l5*abb80(21)
      abb80(15)=abb80(21)+abb80(16)+abb80(30)+abb80(15)+abb80(75)
      abb80(15)=8.0_ki*abb80(15)
      abb80(16)=spbk2k1*abb80(68)
      abb80(21)=spak4l6*abb80(53)
      abb80(30)=spak4l5*abb80(14)
      abb80(21)=abb80(30)+abb80(21)
      abb80(21)=spbk4k2*abb80(21)
      abb80(9)=spak3l6*abb80(9)
      abb80(28)=-spak3l5*abb80(28)
      abb80(9)=abb80(28)+abb80(9)+abb80(21)+abb80(16)
      abb80(9)=8.0_ki*abb80(9)
      abb80(16)=-8.0_ki*abb80(51)
      abb80(21)=-8.0_ki*abb80(53)
      abb80(13)=-8.0_ki*abb80(13)
      abb80(14)=-8.0_ki*abb80(14)
      R2d80=0.0_ki
      rat2 = rat2 + R2d80
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='80' value='", &
          & R2d80, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd80h4