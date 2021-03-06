module     p0_dbaru_epnebbbarg_abbrevd14h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(68), public :: abb14
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
      abb14(6)=spbl5k2**(-1)
      abb14(7)=spak2k7**(-1)
      abb14(8)=spbl6k2**(-1)
      abb14(9)=c1*abb14(3)
      abb14(10)=c4*abb14(3)**2
      abb14(9)=abb14(9)-abb14(10)
      abb14(10)=TR*gW
      abb14(9)=abb14(9)*abb14(7)*abb14(10)**2*CVDU*i_*mB*abb14(5)*abb14(4)*abb1&
      &4(2)*abb14(1)
      abb14(10)=-spbk7k2*abb14(9)
      abb14(11)=-abb14(6)*abb14(10)
      abb14(12)=abb14(11)*es12
      abb14(13)=abb14(11)*es712
      abb14(12)=abb14(12)-abb14(13)
      abb14(14)=es71*spak1k4
      abb14(15)=abb14(12)*abb14(14)
      abb14(16)=abb14(11)*spak1k4
      abb14(17)=es71**2
      abb14(18)=abb14(16)*abb14(17)
      abb14(15)=abb14(18)+abb14(15)
      abb14(18)=spak4l6*abb14(15)
      abb14(10)=-abb14(8)*abb14(10)
      abb14(19)=abb14(10)*es12
      abb14(20)=abb14(10)*es712
      abb14(19)=abb14(19)-abb14(20)
      abb14(21)=abb14(19)*abb14(14)
      abb14(22)=abb14(10)*spak1k4
      abb14(23)=abb14(22)*abb14(17)
      abb14(21)=abb14(23)+abb14(21)
      abb14(23)=spak4l5*abb14(21)
      abb14(18)=abb14(18)+abb14(23)
      abb14(18)=spbk4k3*abb14(18)
      abb14(15)=spak1l6*abb14(15)
      abb14(21)=spak1l5*abb14(21)
      abb14(15)=abb14(15)+abb14(21)
      abb14(15)=spbk3k1*abb14(15)
      abb14(15)=abb14(18)+abb14(15)
      abb14(15)=8.0_ki*abb14(15)
      abb14(18)=-spak2l6*abb14(11)
      abb14(21)=-spak2l5*abb14(10)
      abb14(18)=abb14(18)+abb14(21)
      abb14(21)=spbk2k1*spak1k4**2
      abb14(18)=abb14(21)*abb14(18)
      abb14(23)=abb14(11)*spak1l6
      abb14(24)=abb14(10)*spak1l5
      abb14(23)=abb14(23)+abb14(24)
      abb14(24)=spak1k4*abb14(23)
      abb14(25)=spak2k4*spbk2k1*abb14(24)
      abb14(18)=abb14(25)+abb14(18)
      abb14(18)=spbk4k3*abb14(18)
      abb14(25)=spbk7k3*spbk3k2
      abb14(26)=abb14(25)*spak3k4
      abb14(27)=spbk2k1*spbk7k3*spak1k4
      abb14(26)=abb14(26)+abb14(27)
      abb14(27)=abb14(11)*spak1k7
      abb14(28)=abb14(26)*abb14(27)
      abb14(29)=abb14(11)*es71
      abb14(30)=spbk3k2*spak1k4
      abb14(31)=abb14(29)*abb14(30)
      abb14(28)=abb14(31)-abb14(28)
      abb14(31)=spak1k2*spak3k4
      abb14(32)=spbk3k2**2
      abb14(33)=abb14(31)*abb14(32)
      abb14(34)=abb14(11)*abb14(33)
      abb14(34)=abb14(34)-abb14(28)
      abb14(34)=spak2l6*abb14(34)
      abb14(35)=abb14(10)*spak1k7
      abb14(26)=abb14(26)*abb14(35)
      abb14(36)=abb14(10)*es71
      abb14(37)=abb14(36)*abb14(30)
      abb14(26)=abb14(37)-abb14(26)
      abb14(37)=abb14(10)*abb14(33)
      abb14(37)=abb14(37)-abb14(26)
      abb14(37)=spak2l5*abb14(37)
      abb14(38)=es12*spak1k4
      abb14(39)=-spbk3k1*abb14(38)*abb14(23)
      abb14(18)=abb14(39)+abb14(34)+abb14(37)+abb14(18)
      abb14(18)=16.0_ki*abb14(18)
      abb14(34)=spbk7k3*es71
      abb14(37)=es12*spbk7k3
      abb14(34)=abb14(34)+abb14(37)
      abb14(39)=es712*spbk7k3
      abb14(40)=abb14(34)-abb14(39)
      abb14(41)=-abb14(40)*abb14(35)
      abb14(42)=abb14(41)*spak4l5
      abb14(40)=spak1k7*abb14(11)*abb14(40)
      abb14(43)=spak4l6*abb14(40)
      abb14(42)=abb14(42)-abb14(43)
      abb14(43)=16.0_ki*abb14(42)
      abb14(44)=spbk3k2*abb14(23)
      abb14(45)=abb14(44)*spak2k4
      abb14(46)=abb14(10)*abb14(30)
      abb14(47)=abb14(46)*spak2l5
      abb14(48)=abb14(11)*abb14(30)
      abb14(49)=abb14(48)*spak2l6
      abb14(45)=-abb14(49)+abb14(45)-abb14(47)
      abb14(47)=32.0_ki*abb14(45)
      abb14(49)=abb14(6)*abb14(9)
      abb14(50)=abb14(49)*es71
      abb14(51)=abb14(50)*abb14(25)
      abb14(52)=abb14(39)*abb14(49)
      abb14(53)=abb14(52)*spbk3k2
      abb14(54)=abb14(37)*spbk3k2
      abb14(55)=abb14(54)*abb14(49)
      abb14(51)=abb14(55)+abb14(51)-abb14(53)
      abb14(53)=abb14(51)*spak1l6
      abb14(9)=abb14(8)*abb14(9)
      abb14(55)=abb14(9)*es71
      abb14(25)=abb14(55)*abb14(25)
      abb14(39)=abb14(39)*abb14(9)
      abb14(56)=abb14(39)*spbk3k2
      abb14(54)=abb14(54)*abb14(9)
      abb14(25)=abb14(54)+abb14(25)-abb14(56)
      abb14(54)=abb14(25)*spak1l5
      abb14(53)=abb14(53)+abb14(54)
      abb14(53)=abb14(53)*spak3k4
      abb14(54)=abb14(14)*spbk7k3
      abb14(37)=abb14(37)*spak1k4
      abb14(54)=abb14(54)+abb14(37)
      abb14(56)=abb14(49)*abb14(54)
      abb14(57)=abb14(52)*spak1k4
      abb14(57)=abb14(57)-abb14(56)
      abb14(58)=abb14(57)*spak1l6
      abb14(54)=abb14(9)*abb14(54)
      abb14(59)=abb14(39)*spak1k4
      abb14(59)=abb14(59)-abb14(54)
      abb14(60)=abb14(59)*spak1l5
      abb14(58)=abb14(58)+abb14(60)
      abb14(58)=abb14(58)*spbk2k1
      abb14(60)=-es71+es712-es12
      abb14(60)=abb14(60)*abb14(30)
      abb14(61)=abb14(49)*abb14(60)
      abb14(62)=abb14(61)*spak1l6
      abb14(60)=abb14(9)*abb14(60)
      abb14(63)=abb14(60)*spak1l5
      abb14(62)=abb14(62)+abb14(63)
      abb14(62)=abb14(62)*spbk7k1
      abb14(53)=-abb14(62)+abb14(53)-abb14(58)
      abb14(58)=-16.0_ki*abb14(53)
      abb14(36)=abb14(36)+abb14(19)
      abb14(62)=abb14(36)*spak2l5
      abb14(29)=abb14(29)+abb14(12)
      abb14(63)=abb14(29)*spak2l6
      abb14(62)=abb14(62)+abb14(63)
      abb14(30)=abb14(30)*abb14(62)
      abb14(14)=abb14(38)+abb14(14)
      abb14(38)=abb14(11)*abb14(14)
      abb14(13)=abb14(13)*spak1k4
      abb14(13)=abb14(38)-abb14(13)
      abb14(38)=spak4l6*abb14(13)
      abb14(63)=abb14(10)*abb14(14)
      abb14(20)=abb14(20)*spak1k4
      abb14(20)=abb14(63)-abb14(20)
      abb14(63)=spak4l5*abb14(20)
      abb14(38)=abb14(38)+abb14(63)
      abb14(38)=spbk4k3*abb14(38)
      abb14(63)=spak1l6*abb14(13)
      abb14(64)=spak1l5*abb14(20)
      abb14(63)=abb14(63)+abb14(64)
      abb14(63)=spbk3k1*abb14(63)
      abb14(30)=abb14(63)+abb14(38)+abb14(42)+abb14(30)
      abb14(30)=16.0_ki*abb14(30)
      abb14(38)=-abb14(42)-abb14(53)
      abb14(38)=8.0_ki*abb14(38)
      abb14(42)=16.0_ki*abb14(45)
      abb14(45)=abb14(49)*es12
      abb14(53)=abb14(49)*es712
      abb14(45)=abb14(50)+abb14(45)-abb14(53)
      abb14(50)=spbk7k3**2*spak3k4*spak1k7
      abb14(63)=abb14(45)*abb14(50)
      abb14(51)=abb14(51)*abb14(31)
      abb14(56)=es12*abb14(56)
      abb14(64)=spbk7k1*spak1k2
      abb14(61)=-abb14(61)*abb14(64)
      abb14(65)=-abb14(37)*abb14(53)
      abb14(51)=abb14(61)+abb14(51)+abb14(63)+abb14(56)+abb14(65)
      abb14(51)=8.0_ki*abb14(51)
      abb14(56)=32.0_ki*spak1k2
      abb14(61)=abb14(56)*spbk3k1
      abb14(63)=abb14(16)*abb14(61)
      abb14(57)=16.0_ki*abb14(57)
      abb14(65)=abb14(9)*es12
      abb14(66)=abb14(9)*es712
      abb14(55)=abb14(55)+abb14(65)-abb14(66)
      abb14(50)=abb14(55)*abb14(50)
      abb14(25)=abb14(25)*abb14(31)
      abb14(31)=es12*abb14(54)
      abb14(54)=-abb14(60)*abb14(64)
      abb14(37)=-abb14(37)*abb14(66)
      abb14(25)=abb14(54)+abb14(25)+abb14(50)+abb14(31)+abb14(37)
      abb14(25)=8.0_ki*abb14(25)
      abb14(31)=abb14(22)*abb14(61)
      abb14(37)=16.0_ki*abb14(59)
      abb14(50)=abb14(36)*spak4l5
      abb14(54)=abb14(29)*spak4l6
      abb14(50)=abb14(50)+abb14(54)
      abb14(54)=-spbk7k4*spak1k7*abb14(50)
      abb14(12)=-es71*abb14(12)
      abb14(59)=-abb14(11)*abb14(17)
      abb14(12)=abb14(59)+abb14(12)
      abb14(12)=spak1l6*abb14(12)
      abb14(19)=-es71*abb14(19)
      abb14(17)=-abb14(10)*abb14(17)
      abb14(17)=abb14(17)+abb14(19)
      abb14(17)=spak1l5*abb14(17)
      abb14(19)=-spak3l6*abb14(40)
      abb14(40)=spak3l5*abb14(41)
      abb14(12)=abb14(40)+abb14(19)+abb14(54)+abb14(12)+abb14(17)
      abb14(12)=8.0_ki*abb14(12)
      abb14(17)=es12+es234-es34
      abb14(17)=abb14(23)*abb14(17)
      abb14(19)=spbk7k2**2
      abb14(40)=abb14(49)*abb14(19)
      abb14(41)=-spak2l6*abb14(40)
      abb14(19)=abb14(9)*abb14(19)
      abb14(54)=-spak2l5*abb14(19)
      abb14(41)=abb14(54)+abb14(41)
      abb14(41)=spak1k7*abb14(41)
      abb14(54)=spak2l6*abb14(16)
      abb14(59)=spak2l5*abb14(22)
      abb14(54)=abb14(54)+abb14(59)
      abb14(54)=spbk4k2*abb14(54)
      abb14(59)=abb14(11)*spbk3k2
      abb14(60)=spak2l6*abb14(59)
      abb14(61)=abb14(10)*spbk3k2
      abb14(64)=spak2l5*abb14(61)
      abb14(60)=abb14(60)+abb14(64)
      abb14(60)=spak1k3*abb14(60)
      abb14(17)=abb14(60)+abb14(54)+abb14(41)+abb14(17)
      abb14(17)=16.0_ki*abb14(17)
      abb14(41)=abb14(36)*spak1l5
      abb14(54)=abb14(29)*spak1l6
      abb14(41)=abb14(41)+abb14(54)
      abb14(54)=16.0_ki*abb14(41)
      abb14(41)=8.0_ki*abb14(41)
      abb14(60)=8.0_ki*spak1k2
      abb14(64)=-abb14(29)*abb14(60)
      abb14(65)=-abb14(11)*abb14(56)
      abb14(60)=-abb14(36)*abb14(60)
      abb14(56)=-abb14(10)*abb14(56)
      abb14(67)=-spak1l6*abb14(45)
      abb14(68)=-spak1l5*abb14(55)
      abb14(67)=abb14(67)+abb14(68)
      abb14(32)=spak3k4*abb14(32)*abb14(67)
      abb14(21)=abb14(21)*spbk4k3
      abb14(21)=abb14(21)-abb14(33)
      abb14(11)=-abb14(11)*abb14(21)
      abb14(11)=abb14(11)-abb14(28)
      abb14(11)=spal6k7*abb14(11)
      abb14(10)=-abb14(10)*abb14(21)
      abb14(10)=abb14(10)-abb14(26)
      abb14(10)=spal5k7*abb14(10)
      abb14(21)=spbk3k1*spak1k7
      abb14(26)=spak4k7*spbk4k3
      abb14(21)=abb14(26)+abb14(21)
      abb14(21)=spbk2k1*abb14(24)*abb14(21)
      abb14(10)=abb14(10)+abb14(11)+abb14(32)+abb14(21)
      abb14(10)=8.0_ki*abb14(10)
      abb14(11)=abb14(44)*spak4k7
      abb14(21)=abb14(46)*spal5k7
      abb14(24)=abb14(48)*spal6k7
      abb14(11)=-abb14(24)+abb14(11)-abb14(21)
      abb14(21)=16.0_ki*abb14(11)
      abb14(11)=8.0_ki*abb14(11)
      abb14(24)=16.0_ki*abb14(27)
      abb14(26)=spbk3k1*spak1k4
      abb14(27)=-abb14(26)*abb14(24)
      abb14(28)=16.0_ki*abb14(35)
      abb14(26)=-abb14(26)*abb14(28)
      abb14(32)=-spbk2k1*abb14(23)
      abb14(33)=-spal6k7*abb14(40)
      abb14(19)=-spal5k7*abb14(19)
      abb14(19)=abb14(32)+abb14(19)+abb14(33)
      abb14(19)=spak1k7*abb14(19)
      abb14(23)=-spak4k7*abb14(23)
      abb14(16)=spal6k7*abb14(16)
      abb14(22)=spal5k7*abb14(22)
      abb14(16)=abb14(23)+abb14(16)+abb14(22)
      abb14(16)=spbk4k2*abb14(16)
      abb14(22)=spal6k7*abb14(59)
      abb14(23)=spal5k7*abb14(61)
      abb14(22)=abb14(22)+abb14(23)
      abb14(22)=spak1k3*abb14(22)
      abb14(23)=-spak3k7*abb14(44)
      abb14(16)=abb14(23)+abb14(22)+abb14(16)+abb14(19)
      abb14(16)=8.0_ki*abb14(16)
      abb14(19)=-8.0_ki*abb14(45)
      abb14(22)=-8.0_ki*abb14(55)
      abb14(23)=8.0_ki*abb14(50)
      abb14(32)=spak3k4*spbk3k2
      abb14(33)=abb14(29)*abb14(32)
      abb14(13)=spbk2k1*abb14(13)
      abb14(13)=abb14(33)+abb14(13)
      abb14(13)=spak2l6*abb14(13)
      abb14(32)=abb14(36)*abb14(32)
      abb14(20)=spbk2k1*abb14(20)
      abb14(20)=abb14(32)+abb14(20)
      abb14(20)=spak2l5*abb14(20)
      abb14(13)=abb14(13)+abb14(20)
      abb14(13)=8.0_ki*abb14(13)
      abb14(20)=16.0_ki*abb14(50)
      abb14(32)=-abb14(49)*abb14(34)
      abb14(32)=abb14(52)+abb14(32)
      abb14(32)=spak3k4*abb14(32)
      abb14(33)=abb14(49)*abb14(14)
      abb14(35)=-spak1k4*abb14(53)
      abb14(33)=abb14(35)+abb14(33)
      abb14(33)=spbk7k1*abb14(33)
      abb14(32)=abb14(32)+abb14(33)
      abb14(32)=8.0_ki*abb14(32)
      abb14(33)=-abb14(9)*abb14(34)
      abb14(33)=abb14(39)+abb14(33)
      abb14(33)=spak3k4*abb14(33)
      abb14(9)=abb14(9)*abb14(14)
      abb14(14)=-spak1k4*abb14(66)
      abb14(9)=abb14(14)+abb14(9)
      abb14(9)=spbk7k1*abb14(9)
      abb14(9)=abb14(33)+abb14(9)
      abb14(9)=8.0_ki*abb14(9)
      abb14(14)=spak3l6*abb14(29)
      abb14(29)=spak3l5*abb14(36)
      abb14(14)=abb14(14)+abb14(29)
      abb14(14)=8.0_ki*abb14(14)
      abb14(29)=-8.0_ki*abb14(62)
      R2d14=0.0_ki
      rat2 = rat2 + R2d14
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='14' value='", &
          & R2d14, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd14h0
