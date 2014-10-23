module     p0_dbaru_epnebbbarg_abbrevd58h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(69), public :: abb58
   complex(ki), public :: R2d58
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
      abb58(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb58(2)=NC**(-1)
      abb58(3)=sqrt2**(-1)
      abb58(4)=es234**(-1)
      abb58(5)=es56**(-1)
      abb58(6)=es71**(-1)
      abb58(7)=spbk7k2**(-1)
      abb58(8)=spak2l5**(-1)
      abb58(9)=spbl6k2**(-1)
      abb58(10)=1.0_ki/(es71+es34+es56-es712-es234)
      abb58(11)=spak2l6**(-1)
      abb58(12)=abb58(2)**2
      abb58(12)=abb58(12)-1.0_ki
      abb58(13)=abb58(12)*c4
      abb58(14)=c3*abb58(2)
      abb58(15)=abb58(13)-abb58(14)
      abb58(16)=TR*gW
      abb58(17)=abb58(16)**2
      abb58(18)=abb58(17)*abb58(6)*spak1k7
      abb58(19)=abb58(5)*i_*CVDU*abb58(3)*abb58(1)
      abb58(20)=abb58(19)*abb58(7)
      abb58(21)=abb58(18)*abb58(20)
      abb58(22)=spbk3k2**2
      abb58(23)=abb58(21)*abb58(22)
      abb58(24)=mB**2
      abb58(25)=abb58(24)*abb58(4)
      abb58(26)=abb58(25)*abb58(23)*abb58(15)
      abb58(27)=NC*c3
      abb58(28)=abb58(27)*abb58(4)
      abb58(29)=abb58(28)*abb58(24)
      abb58(23)=abb58(29)*abb58(23)
      abb58(23)=abb58(26)+abb58(23)
      abb58(26)=es712*abb58(23)
      abb58(22)=abb58(22)*spak1k7
      abb58(17)=abb58(17)*abb58(22)*abb58(20)
      abb58(20)=-abb58(25)*abb58(17)*abb58(15)
      abb58(17)=-abb58(29)*abb58(17)
      abb58(17)=abb58(26)+abb58(20)+abb58(17)
      abb58(20)=abb58(8)*spak3k4*abb58(9)
      abb58(17)=abb58(20)*abb58(17)
      abb58(12)=c4*spbk3k2*abb58(12)
      abb58(26)=c3*spbk3k2
      abb58(30)=abb58(26)*abb58(2)
      abb58(12)=abb58(12)-abb58(30)
      abb58(26)=abb58(26)*NC
      abb58(30)=abb58(12)+abb58(26)
      abb58(18)=abb58(18)*abb58(19)
      abb58(31)=abb58(10)*abb58(18)
      abb58(32)=-abb58(31)*abb58(30)
      abb58(33)=abb58(24)*spbl5k2
      abb58(34)=abb58(9)*abb58(33)*abb58(32)
      abb58(35)=abb58(8)*abb58(24)
      abb58(35)=abb58(35)-spbl5k2
      abb58(32)=spak2l6*abb58(32)*abb58(35)
      abb58(32)=abb58(34)+abb58(32)
      abb58(32)=spak4k7*abb58(32)
      abb58(34)=abb58(31)*abb58(7)
      abb58(35)=-abb58(34)*abb58(30)
      abb58(36)=spbk2k1*spbl5k2
      abb58(37)=abb58(36)*abb58(24)
      abb58(38)=-abb58(9)*abb58(37)*abb58(35)
      abb58(39)=abb58(24)*spbk2k1
      abb58(40)=-abb58(8)*abb58(39)
      abb58(40)=abb58(40)+abb58(36)
      abb58(35)=spak2l6*abb58(35)*abb58(40)
      abb58(35)=abb58(38)+abb58(35)
      abb58(35)=spak1k4*abb58(35)
      abb58(38)=-abb58(36)*abb58(34)*abb58(15)
      abb58(40)=abb58(36)*abb58(27)
      abb58(34)=-abb58(40)*abb58(34)
      abb58(34)=abb58(38)+abb58(34)
      abb58(38)=spak1k4*spbl5k3
      abb58(34)=abb58(34)*abb58(38)
      abb58(41)=spbl5k2*abb58(31)*abb58(15)
      abb58(42)=abb58(27)*spbl5k2
      abb58(31)=abb58(42)*abb58(31)
      abb58(31)=abb58(41)+abb58(31)
      abb58(41)=spbl5k3*spak4k7
      abb58(31)=abb58(31)*abb58(41)
      abb58(31)=abb58(31)+abb58(34)
      abb58(31)=spal5l6*abb58(31)
      abb58(18)=spbk3k2*abb58(18)
      abb58(34)=-abb58(4)*abb58(18)*abb58(15)
      abb58(43)=-abb58(28)*abb58(18)
      abb58(43)=abb58(34)+abb58(43)
      abb58(44)=spbl5k3*spak3k4
      abb58(43)=abb58(43)*abb58(44)
      abb58(34)=-spbl5k2*abb58(34)
      abb58(45)=abb58(42)*abb58(4)
      abb58(18)=abb58(18)*abb58(45)
      abb58(18)=abb58(34)+abb58(18)
      abb58(18)=spak2k4*abb58(18)
      abb58(18)=abb58(43)+abb58(18)
      abb58(18)=spal6k7*abb58(18)
      abb58(34)=abb58(4)*spbk2k1
      abb58(43)=-abb58(44)*abb58(34)
      abb58(46)=abb58(36)*abb58(4)
      abb58(47)=spak2k4*abb58(46)
      abb58(43)=abb58(43)+abb58(47)
      abb58(21)=-spak1l6*abb58(43)*abb58(21)*abb58(30)
      abb58(17)=abb58(21)+abb58(18)+abb58(31)+abb58(35)+abb58(32)+abb58(17)
      abb58(17)=8.0_ki*abb58(17)
      abb58(16)=abb58(16)*abb58(6)
      abb58(16)=abb58(19)*abb58(16)**2
      abb58(18)=abb58(16)*abb58(10)
      abb58(19)=abb58(18)*abb58(7)
      abb58(21)=spbk3k2*spak1k7
      abb58(30)=abb58(19)*abb58(21)
      abb58(31)=abb58(30)*abb58(15)
      abb58(32)=abb58(39)*abb58(31)
      abb58(35)=abb58(27)*spbk2k1
      abb58(43)=abb58(35)*abb58(24)
      abb58(47)=abb58(43)*abb58(30)
      abb58(32)=abb58(32)+abb58(47)
      abb58(32)=abb58(32)*abb58(8)
      abb58(47)=abb58(31)*abb58(36)
      abb58(30)=abb58(40)*abb58(30)
      abb58(32)=abb58(32)-abb58(47)-abb58(30)
      abb58(32)=abb58(32)*spak2l6
      abb58(31)=abb58(37)*abb58(31)
      abb58(30)=abb58(30)*abb58(24)
      abb58(30)=abb58(31)+abb58(30)
      abb58(30)=abb58(30)*abb58(9)
      abb58(30)=abb58(32)+abb58(30)
      abb58(31)=abb58(30)*spak1k4
      abb58(32)=abb58(16)*abb58(7)
      abb58(37)=abb58(21)*abb58(32)
      abb58(47)=abb58(36)*abb58(37)*abb58(28)
      abb58(48)=abb58(37)*abb58(15)
      abb58(46)=abb58(48)*abb58(46)
      abb58(46)=abb58(47)+abb58(46)
      abb58(46)=abb58(46)*spak2k4
      abb58(37)=abb58(27)*abb58(37)
      abb58(37)=abb58(37)+abb58(48)
      abb58(37)=abb58(44)*abb58(34)*abb58(37)
      abb58(37)=abb58(46)-abb58(37)
      abb58(46)=abb58(37)*spak1l6
      abb58(31)=abb58(46)-abb58(31)
      abb58(46)=abb58(22)*abb58(32)
      abb58(47)=abb58(46)*abb58(15)
      abb58(48)=abb58(47)*abb58(25)
      abb58(49)=abb58(29)*abb58(46)
      abb58(48)=abb58(48)+abb58(49)
      abb58(49)=es12+es712
      abb58(49)=abb58(48)*abb58(49)
      abb58(49)=-abb58(23)+abb58(49)
      abb58(49)=abb58(20)*abb58(49)
      abb58(21)=abb58(21)*abb58(18)
      abb58(50)=abb58(21)*abb58(15)
      abb58(51)=abb58(50)*abb58(24)
      abb58(52)=abb58(24)*abb58(27)
      abb58(53)=abb58(52)*abb58(21)
      abb58(51)=abb58(51)+abb58(53)
      abb58(51)=abb58(51)*abb58(8)
      abb58(53)=abb58(50)*spbl5k2
      abb58(21)=abb58(42)*abb58(21)
      abb58(51)=abb58(51)-abb58(53)-abb58(21)
      abb58(51)=abb58(51)*spak2l6
      abb58(50)=abb58(50)*abb58(33)
      abb58(21)=abb58(21)*abb58(24)
      abb58(21)=abb58(50)+abb58(21)
      abb58(21)=abb58(21)*abb58(9)
      abb58(21)=abb58(51)+abb58(21)
      abb58(50)=abb58(21)*spak4k7
      abb58(51)=abb58(16)*spbk3k2
      abb58(53)=abb58(51)*spak1k7
      abb58(54)=abb58(4)*abb58(53)*abb58(15)
      abb58(55)=abb58(54)*spbl5k2
      abb58(45)=abb58(45)*abb58(53)
      abb58(45)=abb58(55)+abb58(45)
      abb58(45)=abb58(45)*spak2k4
      abb58(53)=abb58(53)*abb58(28)
      abb58(53)=abb58(53)+abb58(54)
      abb58(44)=abb58(53)*abb58(44)
      abb58(44)=abb58(45)-abb58(44)
      abb58(45)=abb58(44)*spal6k7
      abb58(53)=abb58(19)*spak1k7
      abb58(54)=abb58(53)*abb58(13)
      abb58(14)=abb58(14)*spak1k7
      abb58(19)=abb58(14)*abb58(19)
      abb58(19)=abb58(54)-abb58(19)
      abb58(19)=abb58(19)*abb58(36)
      abb58(53)=abb58(53)*abb58(40)
      abb58(19)=abb58(19)+abb58(53)
      abb58(53)=abb58(19)*abb58(38)
      abb58(54)=-spak1k7*abb58(13)
      abb58(55)=spak1k7*abb58(27)
      abb58(14)=-abb58(55)+abb58(54)+abb58(14)
      abb58(14)=spbl5k2*abb58(18)*abb58(14)
      abb58(54)=abb58(14)*abb58(41)
      abb58(55)=-abb58(54)-2.0_ki*abb58(53)
      abb58(55)=spal5l6*abb58(55)
      abb58(49)=abb58(45)+abb58(55)-abb58(50)+abb58(49)-2.0_ki*abb58(31)
      abb58(49)=16.0_ki*abb58(49)
      abb58(55)=spak1k7**2
      abb58(18)=abb58(18)*abb58(55)
      abb58(56)=abb58(18)*abb58(7)
      abb58(57)=abb58(56)*abb58(15)
      abb58(36)=abb58(57)*abb58(36)
      abb58(40)=abb58(40)*abb58(56)
      abb58(36)=abb58(36)+abb58(40)
      abb58(40)=spbk7k3*spak4l6
      abb58(58)=abb58(36)*abb58(40)
      abb58(59)=abb58(18)*abb58(15)
      abb58(60)=abb58(59)*spbl5k2
      abb58(42)=abb58(42)*abb58(18)
      abb58(60)=abb58(60)+abb58(42)
      abb58(61)=spbk3k1*spak4l6
      abb58(62)=abb58(61)*abb58(60)
      abb58(58)=abb58(62)-abb58(58)
      abb58(58)=32.0_ki*abb58(58)
      abb58(51)=abb58(51)*abb58(55)
      abb58(62)=abb58(51)*abb58(15)
      abb58(63)=abb58(62)*abb58(4)
      abb58(64)=abb58(51)*abb58(28)
      abb58(63)=abb58(63)+abb58(64)
      abb58(64)=spbl5k1*spak4l6
      abb58(65)=abb58(63)*abb58(64)
      abb58(32)=abb58(32)*abb58(55)
      abb58(12)=abb58(34)*abb58(32)*abb58(12)
      abb58(66)=abb58(34)*abb58(32)
      abb58(26)=abb58(66)*abb58(26)
      abb58(12)=abb58(12)+abb58(26)
      abb58(26)=spbk7l5*spak4l6
      abb58(67)=abb58(12)*abb58(26)
      abb58(65)=abb58(65)-abb58(67)
      abb58(67)=32.0_ki*abb58(65)
      abb58(39)=abb58(39)*abb58(57)
      abb58(43)=abb58(43)*abb58(56)
      abb58(39)=abb58(39)+abb58(43)
      abb58(39)=abb58(39)*abb58(8)
      abb58(39)=abb58(39)-abb58(36)
      abb58(43)=spak4l6*abb58(39)
      abb58(68)=abb58(20)*abb58(24)*abb58(12)
      abb58(43)=abb58(43)+abb58(68)
      abb58(43)=spbk7k3*abb58(43)
      abb58(68)=abb58(59)*abb58(24)
      abb58(69)=abb58(52)*abb58(18)
      abb58(68)=abb58(68)+abb58(69)
      abb58(68)=abb58(68)*abb58(8)
      abb58(68)=abb58(68)-abb58(60)
      abb58(69)=-spak4l6*abb58(68)
      abb58(62)=-abb58(62)*abb58(25)
      abb58(29)=-abb58(51)*abb58(29)
      abb58(29)=abb58(62)+abb58(29)
      abb58(29)=abb58(29)*abb58(20)
      abb58(29)=abb58(69)+abb58(29)
      abb58(29)=spbk3k1*abb58(29)
      abb58(51)=abb58(36)*abb58(24)
      abb58(62)=abb58(51)*abb58(40)
      abb58(33)=abb58(33)*abb58(59)
      abb58(42)=abb58(42)*abb58(24)
      abb58(33)=abb58(42)+abb58(33)
      abb58(42)=-abb58(33)*abb58(61)
      abb58(42)=abb58(62)+abb58(42)
      abb58(62)=abb58(11)*abb58(9)
      abb58(42)=abb58(42)*abb58(62)
      abb58(29)=abb58(42)+abb58(43)+abb58(29)-abb58(65)
      abb58(29)=32.0_ki*abb58(29)
      abb58(23)=abb58(23)*abb58(20)
      abb58(23)=abb58(45)-abb58(23)-abb58(50)
      abb58(42)=es12-2.0_ki*es712
      abb58(42)=abb58(42)*abb58(48)*abb58(20)
      abb58(43)=2.0_ki*abb58(54)+abb58(53)
      abb58(43)=spal5l6*abb58(43)
      abb58(23)=abb58(43)+abb58(42)+abb58(31)-2.0_ki*abb58(23)
      abb58(23)=16.0_ki*abb58(23)
      abb58(21)=spak1k4*abb58(21)
      abb58(31)=-spak1l6*abb58(44)
      abb58(14)=spal5l6*abb58(14)*abb58(38)
      abb58(22)=abb58(22)*abb58(16)
      abb58(38)=NC-abb58(2)
      abb58(38)=abb58(38)*c3*abb58(22)
      abb58(13)=abb58(13)*abb58(22)
      abb58(13)=abb58(13)+abb58(38)
      abb58(13)=spak1k2*abb58(20)*abb58(25)*abb58(13)
      abb58(13)=abb58(13)+abb58(31)+abb58(21)+abb58(14)
      abb58(13)=8.0_ki*abb58(13)
      abb58(14)=-spbk7k3*abb58(12)
      abb58(21)=spbk3k1*abb58(63)
      abb58(14)=abb58(14)+abb58(21)
      abb58(14)=spak3k4*abb58(14)
      abb58(21)=-spbk7k3*abb58(36)
      abb58(22)=spbk3k1*abb58(60)
      abb58(21)=abb58(21)+abb58(22)
      abb58(21)=spak4l5*abb58(21)
      abb58(18)=abb58(18)*abb58(27)
      abb58(18)=abb58(18)+abb58(59)
      abb58(18)=abb58(18)*abb58(61)
      abb58(22)=abb58(57)*spbk2k1
      abb58(25)=abb58(35)*abb58(56)
      abb58(22)=abb58(25)+abb58(22)
      abb58(22)=abb58(22)*abb58(40)
      abb58(18)=abb58(18)-abb58(22)
      abb58(22)=spbl6k2*abb58(18)
      abb58(14)=abb58(22)+abb58(21)+abb58(14)
      abb58(14)=16.0_ki*abb58(14)
      abb58(21)=spbk7k3*abb58(39)
      abb58(22)=-spbk3k1*abb58(68)
      abb58(25)=spbk7k3*abb58(51)
      abb58(31)=-spbk3k1*abb58(33)
      abb58(25)=abb58(25)+abb58(31)
      abb58(25)=abb58(25)*abb58(62)
      abb58(21)=abb58(25)+abb58(21)+abb58(22)
      abb58(21)=spak2k4*abb58(21)
      abb58(18)=-spbl6l5*abb58(18)
      abb58(18)=abb58(18)+abb58(21)
      abb58(18)=16.0_ki*abb58(18)
      abb58(21)=-spbk7l5*abb58(36)
      abb58(22)=spbl5k1*abb58(60)
      abb58(21)=abb58(21)+abb58(22)
      abb58(21)=spal5l6*abb58(21)
      abb58(22)=abb58(63)*spbl5k1
      abb58(12)=abb58(12)*spbk7l5
      abb58(12)=abb58(22)-abb58(12)
      abb58(22)=-spak3l6*abb58(12)
      abb58(16)=abb58(55)*abb58(16)
      abb58(25)=-abb58(4)*abb58(16)*abb58(15)
      abb58(16)=abb58(28)*abb58(16)
      abb58(16)=abb58(25)-abb58(16)
      abb58(16)=abb58(16)*abb58(64)
      abb58(15)=-abb58(34)*abb58(32)*abb58(15)
      abb58(25)=abb58(66)*abb58(27)
      abb58(15)=abb58(15)-abb58(25)
      abb58(15)=abb58(15)*abb58(26)
      abb58(15)=abb58(16)-abb58(15)
      abb58(16)=spbk4k2*abb58(15)
      abb58(16)=abb58(16)+abb58(22)+abb58(21)
      abb58(16)=16.0_ki*abb58(16)
      abb58(12)=spak2l6*abb58(12)
      abb58(15)=-spbk4k3*abb58(15)
      abb58(12)=abb58(15)+abb58(12)
      abb58(12)=16.0_ki*abb58(12)
      abb58(15)=spak4k7*abb58(30)
      abb58(19)=-spal5l6*abb58(19)*abb58(41)
      abb58(21)=-spal6k7*abb58(37)
      abb58(22)=abb58(47)*abb58(24)
      abb58(24)=abb58(46)*abb58(52)
      abb58(22)=abb58(22)+abb58(24)
      abb58(20)=spak2k7*abb58(20)*abb58(34)*abb58(22)
      abb58(15)=abb58(20)+abb58(21)+abb58(15)+abb58(19)
      abb58(15)=8.0_ki*abb58(15)
      R2d58=0.0_ki
      rat2 = rat2 + R2d58
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='58' value='", &
          & R2d58, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd58h5
