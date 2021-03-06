module     p0_dbaru_epnebbbarg_abbrevd14h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(67), public :: abb14
   complex(ki), public :: R2d14
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
      abb14(1)=1.0_ki/(-es71+es712-es12)
      abb14(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb14(3)=NC**(-1)
      abb14(4)=sqrt2**(-1)
      abb14(5)=es56**(-1)
      abb14(6)=spak2k7**(-1)
      abb14(7)=spbl5k2**(-1)
      abb14(8)=spak2l6**(-1)
      abb14(9)=spak4l5*spbl6k2
      abb14(10)=spbk4k3*abb14(9)*spbk7k1
      abb14(11)=spak1l5*spbl6k2
      abb14(12)=abb14(11)*spbk7k1
      abb14(13)=abb14(12)*spbk3k1
      abb14(10)=abb14(10)+abb14(13)
      abb14(13)=abb14(10)*spak1k2
      abb14(14)=spbk7l6*spak4l5
      abb14(15)=abb14(14)*spbk4k3
      abb14(16)=spak1l5*spbk7l6
      abb14(17)=abb14(16)*spbk3k1
      abb14(15)=abb14(15)+abb14(17)
      abb14(17)=es12-es712
      abb14(18)=abb14(17)+es71
      abb14(15)=-abb14(15)*abb14(18)
      abb14(13)=abb14(13)+abb14(15)
      abb14(13)=abb14(13)*es71
      abb14(19)=es712*spak1k2
      abb14(20)=es12*spak1k2
      abb14(19)=abb14(19)-abb14(20)
      abb14(10)=abb14(19)*abb14(10)
      abb14(10)=abb14(13)-abb14(10)
      abb14(10)=abb14(10)*spak1k4
      abb14(13)=spak2k4*spbk4k3
      abb14(21)=spak1k2*spbk3k1
      abb14(22)=abb14(13)-abb14(21)
      abb14(23)=es71-es712
      abb14(24)=-abb14(22)*abb14(23)
      abb14(22)=abb14(22)*es12
      abb14(24)=abb14(24)-abb14(22)
      abb14(25)=mB**2*abb14(7)*abb14(8)
      abb14(26)=abb14(25)*spbk7k2
      abb14(27)=abb14(26)*spak1k4
      abb14(28)=es71*abb14(24)*abb14(27)
      abb14(10)=abb14(10)+abb14(28)
      abb14(28)=c4*abb14(3)
      abb14(28)=abb14(28)-c1
      abb14(29)=gW*TR
      abb14(28)=i_*abb14(28)*abb14(29)**2*abb14(4)*abb14(5)*abb14(6)*CVDU
      abb14(29)=abb14(3)*abb14(1)*abb14(2)
      abb14(30)=8.0_ki*abb14(29)
      abb14(31)=abb14(28)*abb14(30)
      abb14(10)=-abb14(10)*abb14(31)
      abb14(32)=spak1l5*spbl6k1
      abb14(33)=abb14(32)*spbk3k1
      abb14(34)=spak2l5*spbl6k1
      abb14(35)=abb14(34)*spbk3k2
      abb14(33)=abb14(33)-abb14(35)
      abb14(33)=abb14(33)*spak1k2
      abb14(13)=abb14(13)*abb14(32)
      abb14(35)=spak1k4*spbk4k3
      abb14(36)=spbk7k3*spak1k7
      abb14(35)=abb14(35)-abb14(36)
      abb14(37)=abb14(35)*abb14(34)
      abb14(38)=es71+es12
      abb14(39)=spbl6k3*spak2l5
      abb14(40)=abb14(39)*abb14(38)
      abb14(13)=abb14(33)-abb14(13)+abb14(37)-abb14(40)
      abb14(13)=abb14(13)*spak1k4
      abb14(33)=abb14(25)*spak1k4
      abb14(22)=abb14(22)*abb14(33)
      abb14(37)=spak1k2*spbk3k2
      abb14(41)=abb14(37)*spak3k4
      abb14(42)=abb14(36)*spak3k4
      abb14(43)=abb14(41)+abb14(42)
      abb14(44)=abb14(43)*abb14(39)
      abb14(13)=abb14(13)+abb14(22)+abb14(44)
      abb14(22)=-spbk7k2*abb14(28)
      abb14(44)=16.0_ki*abb14(29)
      abb14(45)=abb14(22)*abb14(44)
      abb14(13)=abb14(13)*abb14(45)
      abb14(46)=spbk7k3*es712
      abb14(47)=es12*spbk7k3
      abb14(48)=abb14(46)-abb14(47)
      abb14(49)=es71*spbk7k3
      abb14(50)=abb14(48)-abb14(49)
      abb14(51)=abb14(9)*spak1k2
      abb14(52)=abb14(14)*spak1k7
      abb14(51)=abb14(51)+abb14(52)
      abb14(53)=-abb14(51)*abb14(50)
      abb14(54)=-abb14(18)*abb14(36)*spak2k4
      abb14(55)=abb14(54)*abb14(26)
      abb14(56)=abb14(53)-abb14(55)
      abb14(57)=abb14(28)*abb14(44)
      abb14(56)=abb14(56)*abb14(57)
      abb14(58)=abb14(37)*abb14(25)
      abb14(59)=spak1l5*spbl6k3
      abb14(58)=abb14(58)+abb14(59)
      abb14(60)=spak2k4*abb14(58)
      abb14(61)=abb14(39)*spak1k4
      abb14(60)=-abb14(61)+abb14(60)
      abb14(60)=-abb14(60)*abb14(22)
      abb14(61)=32.0_ki*abb14(29)
      abb14(62)=abb14(60)*abb14(61)
      abb14(63)=abb14(32)*spbk7k3
      abb14(64)=abb14(59)*spbk7k1
      abb14(63)=abb14(63)-abb14(64)
      abb14(63)=-abb14(63)*abb14(38)
      abb14(65)=abb14(32)*abb14(46)
      abb14(64)=abb14(64)*es712
      abb14(63)=abb14(65)-abb14(64)+abb14(63)
      abb14(63)=abb14(63)*spak1k4
      abb14(64)=abb14(25)*abb14(18)*spak3k4*spak1k7*spbk7k3**2
      abb14(49)=spak3k4*abb14(49)
      abb14(65)=abb14(49)*abb14(59)
      abb14(59)=abb14(59)*spak3k4
      abb14(66)=abb14(48)*abb14(59)
      abb14(64)=abb14(63)-abb14(64)+abb14(65)-abb14(66)
      abb14(64)=abb14(64)*abb14(57)
      abb14(29)=64.0_ki*abb14(29)
      abb14(29)=abb14(28)*abb14(29)
      abb14(65)=-abb14(27)*abb14(21)*abb14(29)
      abb14(24)=abb14(24)*spak1k4
      abb14(24)=abb14(24)-abb14(54)
      abb14(24)=abb14(24)*abb14(25)
      abb14(54)=abb14(39)*es712
      abb14(40)=abb14(54)-abb14(40)
      abb14(54)=abb14(40)*spak1k4
      abb14(24)=abb14(54)-abb14(24)
      abb14(24)=abb14(24)*spbk7k2
      abb14(15)=abb14(15)*spak1k4
      abb14(15)=abb14(24)-abb14(15)-abb14(53)
      abb14(15)=abb14(15)*abb14(57)
      abb14(24)=abb14(28)*abb14(61)
      abb14(53)=-abb14(50)*abb14(33)*abb14(24)
      abb14(54)=abb14(37)*spbk7k1
      abb14(47)=abb14(54)+abb14(47)
      abb14(66)=abb14(47)-abb14(46)
      abb14(66)=abb14(66)*es12
      abb14(47)=abb14(47)*es71
      abb14(54)=abb14(54)*es712
      abb14(47)=abb14(66)-abb14(54)+abb14(47)
      abb14(47)=abb14(47)*spak1k4
      abb14(54)=abb14(49)*abb14(37)
      abb14(41)=abb14(48)*abb14(41)
      abb14(41)=abb14(47)+abb14(54)-abb14(41)
      abb14(41)=abb14(41)*abb14(25)
      abb14(51)=abb14(59)+abb14(51)
      abb14(51)=abb14(50)*abb14(51)
      abb14(41)=abb14(41)-abb14(55)-abb14(51)+abb14(63)
      abb14(41)=abb14(41)*abb14(31)
      abb14(51)=-abb14(60)*abb14(44)
      abb14(54)=-abb14(43)*abb14(50)
      abb14(47)=abb14(47)+abb14(54)
      abb14(47)=abb14(47)*abb14(31)
      abb14(54)=abb14(22)*spak1k4
      abb14(21)=-abb14(61)*abb14(21)*abb14(54)
      abb14(50)=spak1k4*abb14(50)*abb14(57)
      abb14(55)=spak1k7*spbk7k4
      abb14(60)=abb14(55)*spak2k4
      abb14(63)=abb14(36)*spak2k3
      abb14(60)=abb14(60)+abb14(63)
      abb14(66)=es71*spak1k2
      abb14(19)=abb14(66)-abb14(19)
      abb14(66)=abb14(60)-abb14(19)
      abb14(66)=abb14(66)*es71
      abb14(67)=es712*spak2k4
      abb14(55)=abb14(55)*abb14(67)
      abb14(60)=abb14(60)*es12
      abb14(63)=abb14(63)*es712
      abb14(55)=-abb14(60)-abb14(66)+abb14(63)+abb14(55)
      abb14(55)=abb14(55)*abb14(26)
      abb14(9)=abb14(9)*spbk7k4
      abb14(9)=abb14(9)-abb14(12)
      abb14(9)=abb14(9)*spak1k2
      abb14(12)=abb14(52)*spbk7k4
      abb14(9)=abb14(9)+abb14(12)
      abb14(12)=spbk7l6*spak3l5
      abb14(52)=abb14(12)*spak1k7
      abb14(60)=spak1k2*spbl6k2
      abb14(63)=abb14(60)*spak3l5
      abb14(52)=abb14(52)+abb14(63)
      abb14(63)=abb14(52)*spbk7k3
      abb14(63)=abb14(9)+abb14(63)
      abb14(16)=-abb14(16)*abb14(18)
      abb14(66)=abb14(63)-abb14(16)
      abb14(66)=abb14(66)*es71
      abb14(63)=abb14(63)*es12
      abb14(46)=abb14(52)*abb14(46)
      abb14(9)=abb14(9)*es712
      abb14(9)=abb14(55)-abb14(63)-abb14(66)+abb14(46)+abb14(9)
      abb14(9)=abb14(9)*abb14(31)
      abb14(46)=es34-es234
      abb14(46)=abb14(46)*spak1k2
      abb14(20)=abb14(46)-abb14(20)
      abb14(20)=abb14(20)*abb14(25)
      abb14(46)=spbl6k2*spak2l5
      abb14(32)=abb14(46)-abb14(32)
      abb14(32)=abb14(32)*spak1k2
      abb14(46)=spak2k4*spbl6k4
      abb14(52)=spbl6k3*spak2k3
      abb14(46)=abb14(46)+abb14(52)
      abb14(46)=abb14(46)*spak1l5
      abb14(52)=spak1k7*spbk7l6
      abb14(55)=spak1k4*spbl6k4
      abb14(52)=abb14(52)+abb14(55)
      abb14(55)=abb14(52)*spak2l5
      abb14(39)=abb14(39)*spak1k3
      abb14(20)=abb14(20)-abb14(32)+abb14(46)-abb14(39)-abb14(55)
      abb14(20)=-abb14(20)*abb14(45)
      abb14(32)=-abb14(16)*abb14(57)
      abb14(29)=abb14(26)*spak1k2*abb14(29)
      abb14(39)=abb14(19)*abb14(26)
      abb14(16)=abb14(39)+abb14(16)
      abb14(16)=abb14(28)*abb14(16)
      abb14(39)=abb14(16)*abb14(44)
      abb14(16)=-abb14(16)*abb14(30)
      abb14(46)=abb14(22)*abb14(30)
      abb14(19)=abb14(19)*abb14(46)
      abb14(22)=abb14(61)*spak1k2*abb14(22)
      abb14(35)=abb14(35)-abb14(37)
      abb14(35)=abb14(35)*spal5k7
      abb14(37)=spbk4k3*spak4k7
      abb14(55)=spak1k7*spbk3k1
      abb14(37)=abb14(37)+abb14(55)
      abb14(57)=spak1l5*abb14(37)
      abb14(35)=-abb14(35)+abb14(57)
      abb14(35)=spbl6k1*abb14(35)
      abb14(57)=spbl6k3*spal5k7
      abb14(61)=abb14(38)*abb14(57)
      abb14(35)=abb14(61)+abb14(35)
      abb14(35)=abb14(35)*spak1k4
      abb14(37)=es12*abb14(37)*abb14(33)
      abb14(43)=abb14(43)*abb14(57)
      abb14(35)=abb14(35)-abb14(37)-abb14(43)
      abb14(35)=abb14(35)*spbk7k2
      abb14(37)=-spbk3k2*abb14(18)
      abb14(36)=abb14(36)*spbk2k1
      abb14(43)=abb14(37)+abb14(36)
      abb14(43)=abb14(43)*es71
      abb14(17)=abb14(17)*abb14(36)
      abb14(36)=abb14(18)*spak1k4
      abb14(61)=spbk4k3*spbk2k1*abb14(36)
      abb14(17)=-abb14(17)+abb14(61)-abb14(43)
      abb14(17)=abb14(17)*spak1k4
      abb14(42)=abb14(37)*abb14(42)
      abb14(17)=abb14(17)+abb14(42)
      abb14(17)=abb14(17)*abb14(25)
      abb14(42)=spbk3k2*spbl6k1
      abb14(43)=spbl6k3*spbk2k1
      abb14(42)=abb14(42)+abb14(43)
      abb14(42)=abb14(42)*spak1l5*abb14(36)
      abb14(43)=abb14(37)*abb14(59)
      abb14(17)=abb14(17)+abb14(35)-abb14(42)-abb14(43)
      abb14(17)=abb14(17)*abb14(31)
      abb14(35)=spak4k7*abb14(58)
      abb14(42)=abb14(57)*spak1k4
      abb14(35)=-abb14(42)+abb14(35)
      abb14(35)=abb14(35)*spbk7k2
      abb14(33)=abb14(37)*abb14(33)
      abb14(33)=abb14(35)+abb14(33)
      abb14(33)=-abb14(33)*abb14(28)
      abb14(35)=abb14(33)*abb14(44)
      abb14(27)=abb14(27)*abb14(55)*abb14(24)
      abb14(33)=abb14(33)*abb14(30)
      abb14(42)=abb14(44)*abb14(55)*abb14(54)
      abb14(43)=spak4k7*spbl6k4
      abb14(54)=spbl6k3*spak3k7
      abb14(55)=spak1k7*spbl6k1
      abb14(43)=-abb14(55)+abb14(43)+abb14(54)
      abb14(43)=abb14(43)*spak1l5
      abb14(54)=spak4k7*spbk4k2
      abb14(55)=spbk3k2*spak3k7
      abb14(54)=abb14(54)+abb14(55)
      abb14(54)=abb14(54)*spak1k2
      abb14(23)=abb14(23)+2.0_ki*es12
      abb14(23)=abb14(23)*spak1k7
      abb14(23)=abb14(23)+abb14(54)
      abb14(23)=abb14(23)*abb14(25)
      abb14(52)=abb14(52)+abb14(60)
      abb14(52)=abb14(52)*spal5k7
      abb14(54)=abb14(57)*spak1k3
      abb14(23)=abb14(23)+abb14(43)-abb14(52)-abb14(54)
      abb14(23)=abb14(23)*spbk7k2
      abb14(43)=spbk4k2*abb14(36)
      abb14(37)=abb14(37)*spak1k3
      abb14(37)=abb14(43)-abb14(37)
      abb14(37)=abb14(37)*abb14(25)
      abb14(11)=abb14(18)*abb14(11)
      abb14(11)=abb14(23)-abb14(37)+abb14(11)
      abb14(11)=abb14(11)*abb14(31)
      abb14(23)=-abb14(26)*spak1k7*abb14(24)
      abb14(24)=-spak1k7*abb14(45)
      abb14(25)=abb14(44)*abb14(28)*abb14(25)
      abb14(37)=abb14(38)-es712
      abb14(43)=abb14(37)*abb14(25)
      abb14(37)=-abb14(37)*abb14(31)
      abb14(45)=abb14(18)*spak2l5*abb14(46)
      abb14(38)=spak2k4*abb14(38)
      abb14(38)=abb14(38)-abb14(67)
      abb14(38)=abb14(38)*abb14(26)
      abb14(14)=-abb14(14)*abb14(18)
      abb14(14)=abb14(38)-abb14(14)
      abb14(14)=-abb14(14)*abb14(28)
      abb14(28)=abb14(14)*abb14(30)
      abb14(30)=spak3k4*abb14(40)
      abb14(34)=abb14(34)*abb14(36)
      abb14(30)=abb14(34)+abb14(30)
      abb14(30)=-abb14(30)*abb14(46)
      abb14(14)=abb14(14)*abb14(44)
      abb14(34)=-spak3k4*abb14(48)
      abb14(36)=-spbk7k1*abb14(36)
      abb14(34)=abb14(36)+abb14(34)+abb14(49)
      abb14(25)=abb14(34)*abb14(25)
      abb14(34)=-abb14(34)*abb14(31)
      abb14(26)=abb14(26)*spak2k3
      abb14(12)=abb14(26)+abb14(12)
      abb14(12)=abb14(31)*abb14(18)*abb14(12)
      R2d14=0.0_ki
      rat2 = rat2 + R2d14
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='14' value='", &
          & R2d14, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd14h2
