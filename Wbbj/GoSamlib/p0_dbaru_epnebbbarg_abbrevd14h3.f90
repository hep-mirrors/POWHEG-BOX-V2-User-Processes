module     p0_dbaru_epnebbbarg_abbrevd14h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(66), public :: abb14
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
      abb14(6)=spak2l5**(-1)
      abb14(7)=spak2k7**(-1)
      abb14(8)=spak2l6**(-1)
      abb14(9)=abb14(3)*c1
      abb14(10)=c4*abb14(3)**2
      abb14(9)=abb14(9)-abb14(10)
      abb14(10)=TR*gW
      abb14(9)=abb14(9)*abb14(7)*abb14(10)**2*CVDU*i_*mB*abb14(5)*abb14(4)*abb1&
      &4(2)*abb14(1)
      abb14(10)=abb14(6)*abb14(9)
      abb14(11)=abb14(10)*es12
      abb14(12)=abb14(10)*es712
      abb14(13)=abb14(11)-abb14(12)
      abb14(14)=spak1k4*spak1k2
      abb14(15)=abb14(14)*es71
      abb14(16)=-abb14(15)*abb14(13)
      abb14(17)=es71**2
      abb14(18)=abb14(17)*abb14(10)
      abb14(19)=-abb14(14)*abb14(18)
      abb14(16)=abb14(19)+abb14(16)
      abb14(16)=spbk7l6*abb14(16)
      abb14(9)=abb14(8)*abb14(9)
      abb14(19)=abb14(9)*es12
      abb14(20)=abb14(9)*es712
      abb14(21)=abb14(19)-abb14(20)
      abb14(22)=-abb14(15)*abb14(21)
      abb14(23)=abb14(17)*abb14(9)
      abb14(24)=-abb14(14)*abb14(23)
      abb14(22)=abb14(24)+abb14(22)
      abb14(22)=spbk7l5*abb14(22)
      abb14(24)=es712*spak1k4
      abb14(25)=es12*spak1k4
      abb14(26)=abb14(24)-abb14(25)
      abb14(27)=-abb14(10)*abb14(26)
      abb14(28)=es71*spak1k4
      abb14(29)=abb14(10)*abb14(28)
      abb14(27)=abb14(27)+abb14(29)
      abb14(30)=spbl6k2*spbk7k1
      abb14(31)=spak1k2**2
      abb14(32)=abb14(30)*abb14(31)
      abb14(33)=abb14(27)*abb14(32)
      abb14(34)=-abb14(9)*abb14(26)
      abb14(35)=abb14(9)*abb14(28)
      abb14(34)=abb14(34)+abb14(35)
      abb14(36)=spbl5k2*spbk7k1
      abb14(37)=abb14(36)*abb14(31)
      abb14(38)=abb14(34)*abb14(37)
      abb14(16)=abb14(38)+abb14(33)+abb14(16)+abb14(22)
      abb14(16)=spbk3k1*abb14(16)
      abb14(22)=es712-es12
      abb14(33)=-spak2k4*abb14(22)
      abb14(38)=spak2k4*es71
      abb14(38)=-abb14(38)-abb14(33)
      abb14(39)=-abb14(10)*abb14(38)
      abb14(30)=-abb14(30)*abb14(39)
      abb14(40)=-abb14(9)*abb14(38)
      abb14(36)=-abb14(36)*abb14(40)
      abb14(30)=abb14(36)+abb14(30)
      abb14(30)=abb14(14)*abb14(30)
      abb14(36)=abb14(29)*abb14(33)
      abb14(41)=abb14(10)*spak2k4
      abb14(17)=abb14(17)*spak1k4
      abb14(42)=abb14(41)*abb14(17)
      abb14(36)=abb14(42)+abb14(36)
      abb14(36)=spbk7l6*abb14(36)
      abb14(33)=abb14(35)*abb14(33)
      abb14(42)=abb14(9)*spak2k4
      abb14(43)=abb14(42)*abb14(17)
      abb14(33)=abb14(43)+abb14(33)
      abb14(33)=spbk7l5*abb14(33)
      abb14(30)=abb14(36)+abb14(33)+abb14(30)
      abb14(30)=spbk4k3*abb14(30)
      abb14(16)=abb14(16)+abb14(30)
      abb14(16)=8.0_ki*abb14(16)
      abb14(30)=spak1k4*spbk3k1*spbk7k2
      abb14(33)=abb14(30)*abb14(31)
      abb14(36)=abb14(10)*abb14(33)
      abb14(43)=abb14(14)*spbk7k2
      abb14(44)=abb14(43)*spbk4k3
      abb14(45)=-abb14(41)*abb14(44)
      abb14(36)=abb14(45)+abb14(36)
      abb14(36)=spbl6k1*abb14(36)
      abb14(33)=abb14(9)*abb14(33)
      abb14(45)=-abb14(42)*abb14(44)
      abb14(33)=abb14(45)+abb14(33)
      abb14(33)=spbl5k1*abb14(33)
      abb14(33)=abb14(36)+abb14(33)
      abb14(33)=16.0_ki*abb14(33)
      abb14(36)=abb14(10)*es71
      abb14(45)=-abb14(13)-abb14(36)
      abb14(46)=spbk7l6*spak1k7
      abb14(45)=abb14(46)*abb14(45)
      abb14(47)=abb14(9)*es71
      abb14(48)=-abb14(21)-abb14(47)
      abb14(49)=spbk7l5*spak1k7
      abb14(48)=abb14(49)*abb14(48)
      abb14(45)=-abb14(48)-abb14(45)
      abb14(45)=abb14(45)*spak2k4*spbk7k3
      abb14(48)=spbk7k3*spak1k2
      abb14(50)=abb14(10)*abb14(48)
      abb14(51)=-spbl6k2*abb14(50)
      abb14(48)=abb14(9)*abb14(48)
      abb14(52)=-spbl5k2*abb14(48)
      abb14(51)=abb14(51)+abb14(52)
      abb14(38)=abb14(38)*abb14(51)
      abb14(38)=abb14(38)+abb14(45)
      abb14(45)=16.0_ki*abb14(38)
      abb14(51)=spbk7k2*spak1k2
      abb14(52)=abb14(9)*abb14(51)
      abb14(53)=spbl5k3*abb14(52)
      abb14(54)=abb14(10)*abb14(51)
      abb14(55)=spbl6k3*abb14(54)
      abb14(53)=abb14(53)+abb14(55)
      abb14(55)=spak2k4*abb14(53)
      abb14(56)=32.0_ki*abb14(55)
      abb14(14)=-abb14(14)*abb14(22)
      abb14(14)=abb14(14)+abb14(15)
      abb14(15)=-abb14(9)*abb14(14)
      abb14(57)=abb14(15)*spbl5k3
      abb14(14)=abb14(10)*abb14(14)
      abb14(58)=abb14(14)*spbl6k3
      abb14(57)=abb14(57)-abb14(58)
      abb14(57)=abb14(57)*spbk7k1
      abb14(58)=spbl6k1*abb14(50)
      abb14(59)=spbl5k1*abb14(48)
      abb14(58)=abb14(58)+abb14(59)
      abb14(59)=abb14(26)-abb14(28)
      abb14(58)=abb14(59)*abb14(58)
      abb14(22)=es71-abb14(22)
      abb14(48)=abb14(48)*abb14(22)
      abb14(60)=abb14(48)*spbl5k3
      abb14(22)=abb14(50)*abb14(22)
      abb14(50)=abb14(22)*spbl6k3
      abb14(50)=abb14(60)+abb14(50)
      abb14(50)=abb14(50)*spak3k4
      abb14(50)=abb14(50)-abb14(57)+abb14(58)
      abb14(57)=-16.0_ki*abb14(50)
      abb14(41)=-abb14(41)*abb14(26)
      abb14(29)=spak2k4*abb14(29)
      abb14(29)=abb14(29)+abb14(41)
      abb14(29)=spbk7l6*abb14(29)
      abb14(26)=-abb14(42)*abb14(26)
      abb14(35)=spak2k4*abb14(35)
      abb14(26)=abb14(35)+abb14(26)
      abb14(26)=spbk7l5*abb14(26)
      abb14(26)=abb14(29)+abb14(26)
      abb14(26)=spbk4k3*abb14(26)
      abb14(29)=-spbk7l6*abb14(14)
      abb14(35)=spbk7l5*abb14(15)
      abb14(29)=abb14(29)+abb14(35)
      abb14(29)=spbk3k1*abb14(29)
      abb14(26)=abb14(29)+abb14(26)-abb14(38)
      abb14(26)=16.0_ki*abb14(26)
      abb14(29)=abb14(38)-abb14(50)
      abb14(29)=8.0_ki*abb14(29)
      abb14(35)=16.0_ki*abb14(55)
      abb14(11)=abb14(36)+abb14(11)
      abb14(36)=spbk7k3*abb14(11)
      abb14(38)=abb14(12)*spbk7k3
      abb14(36)=abb14(36)-abb14(38)
      abb14(41)=-abb14(36)*abb14(46)
      abb14(19)=abb14(47)+abb14(19)
      abb14(42)=spbk7k3*abb14(19)
      abb14(47)=abb14(20)*spbk7k3
      abb14(42)=abb14(42)-abb14(47)
      abb14(50)=-abb14(42)*abb14(49)
      abb14(55)=-spbl6k2*abb14(22)
      abb14(58)=-spbl5k2*abb14(48)
      abb14(41)=abb14(58)+abb14(55)+abb14(41)+abb14(50)
      abb14(41)=spak2k3*abb14(41)
      abb14(50)=-spbl5k2*spak1k2
      abb14(50)=abb14(50)-abb14(49)
      abb14(50)=abb14(40)*abb14(50)
      abb14(55)=-spbl6k2*spak1k2
      abb14(55)=abb14(55)-abb14(46)
      abb14(55)=abb14(39)*abb14(55)
      abb14(50)=abb14(55)+abb14(50)
      abb14(50)=spbk7k4*abb14(50)
      abb14(55)=es71*spak1k2
      abb14(58)=abb14(55)*abb14(13)
      abb14(18)=spak1k2*abb14(18)
      abb14(18)=abb14(18)+abb14(58)
      abb14(18)=spbk7l6*abb14(18)
      abb14(58)=abb14(55)*abb14(21)
      abb14(23)=spak1k2*abb14(23)
      abb14(23)=abb14(23)+abb14(58)
      abb14(23)=spbk7l5*abb14(23)
      abb14(11)=abb14(11)-abb14(12)
      abb14(12)=-abb14(11)*abb14(32)
      abb14(19)=abb14(19)-abb14(20)
      abb14(20)=-abb14(19)*abb14(37)
      abb14(12)=abb14(50)+abb14(41)+abb14(20)+abb14(12)+abb14(18)+abb14(23)
      abb14(12)=8.0_ki*abb14(12)
      abb14(18)=abb14(10)*spbl6k1
      abb14(20)=-spbk7k2*abb14(18)
      abb14(23)=abb14(9)*spbk7k2
      abb14(32)=-spbl5k1*abb14(23)
      abb14(20)=abb14(32)+abb14(20)
      abb14(20)=abb14(31)*abb14(20)
      abb14(31)=-spbl6k4*abb14(10)
      abb14(32)=-spbl5k4*abb14(9)
      abb14(31)=abb14(32)+abb14(31)
      abb14(31)=abb14(31)*abb14(51)*spak2k4
      abb14(32)=-spak2k3*abb14(53)
      abb14(20)=abb14(32)+abb14(31)+abb14(20)
      abb14(20)=16.0_ki*abb14(20)
      abb14(31)=spak1k2*abb14(21)
      abb14(32)=abb14(55)*abb14(9)
      abb14(31)=abb14(32)+abb14(31)
      abb14(32)=abb14(31)*spbk7l5
      abb14(37)=spak1k2*abb14(13)
      abb14(41)=abb14(55)*abb14(10)
      abb14(37)=abb14(41)+abb14(37)
      abb14(41)=abb14(37)*spbk7l6
      abb14(32)=abb14(32)+abb14(41)
      abb14(41)=16.0_ki*abb14(32)
      abb14(32)=-8.0_ki*abb14(32)
      abb14(50)=spbl6k3*abb14(36)
      abb14(55)=spbl5k3*abb14(42)
      abb14(50)=abb14(50)+abb14(55)
      abb14(55)=spak3k4*spak1k7
      abb14(50)=abb14(50)*abb14(55)
      abb14(58)=abb14(25)+abb14(28)
      abb14(60)=abb14(10)*spbk7k3
      abb14(61)=abb14(60)*abb14(58)
      abb14(24)=abb14(60)*abb14(24)
      abb14(24)=abb14(24)-abb14(61)
      abb14(60)=spak1k7*abb14(24)
      abb14(62)=spbk4k3*spak1k4**2
      abb14(63)=abb14(11)*abb14(62)
      abb14(64)=abb14(10)*spak1k7
      abb14(43)=abb14(43)*spbk3k1
      abb14(65)=-abb14(43)*abb14(64)
      abb14(60)=abb14(65)+abb14(60)+abb14(63)
      abb14(60)=spbl6k1*abb14(60)
      abb14(63)=abb14(9)*spbk7k3
      abb14(59)=abb14(59)*abb14(63)
      abb14(65)=abb14(43)*abb14(9)
      abb14(66)=-abb14(65)+abb14(59)
      abb14(66)=spak1k7*abb14(66)
      abb14(62)=abb14(19)*abb14(62)
      abb14(62)=abb14(62)+abb14(66)
      abb14(62)=spbl5k1*abb14(62)
      abb14(13)=-abb14(28)*abb14(13)
      abb14(66)=-abb14(10)*abb14(17)
      abb14(13)=abb14(66)+abb14(13)
      abb14(13)=spbl6k3*abb14(13)
      abb14(21)=-abb14(28)*abb14(21)
      abb14(17)=-abb14(9)*abb14(17)
      abb14(17)=abb14(17)+abb14(21)
      abb14(17)=spbl5k3*abb14(17)
      abb14(21)=-spbl5k1*abb14(9)
      abb14(18)=-abb14(18)+abb14(21)
      abb14(18)=spak4k7*abb14(44)*abb14(18)
      abb14(13)=abb14(18)+abb14(62)+abb14(60)+abb14(50)+abb14(13)+abb14(17)
      abb14(13)=8.0_ki*abb14(13)
      abb14(17)=abb14(34)*spbl5k3
      abb14(18)=abb14(27)*spbl6k3
      abb14(21)=abb14(53)*spak4k7
      abb14(17)=-abb14(21)+abb14(17)+abb14(18)
      abb14(18)=16.0_ki*abb14(17)
      abb14(17)=-8.0_ki*abb14(17)
      abb14(21)=spbl6k3*abb14(11)
      abb14(28)=spbl5k3*abb14(19)
      abb14(21)=abb14(21)+abb14(28)
      abb14(21)=spak1k3*abb14(21)
      abb14(28)=abb14(11)*abb14(46)
      abb14(44)=abb14(19)*abb14(49)
      abb14(46)=-spak4k7*abb14(54)
      abb14(46)=abb14(46)+abb14(27)
      abb14(46)=spbl6k4*abb14(46)
      abb14(49)=-spak4k7*abb14(52)
      abb14(49)=abb14(49)+abb14(34)
      abb14(49)=spbl5k4*abb14(49)
      abb14(50)=-spak3k7*abb14(53)
      abb14(51)=spbl6k1*abb14(51)*abb14(64)
      abb14(53)=spbl5k1*spak1k7*abb14(52)
      abb14(21)=abb14(50)+abb14(49)+abb14(46)+abb14(21)+abb14(53)+abb14(51)+abb&
      &14(28)+abb14(44)
      abb14(21)=8.0_ki*abb14(21)
      abb14(28)=-es12*abb14(61)
      abb14(44)=abb14(55)*spbk7k3**2
      abb14(46)=-abb14(11)*abb14(44)
      abb14(14)=-spbk7k1*abb14(14)
      abb14(22)=-spak3k4*abb14(22)
      abb14(14)=abb14(14)+abb14(22)
      abb14(14)=spbk3k2*abb14(14)
      abb14(22)=abb14(25)*abb14(38)
      abb14(14)=abb14(14)+abb14(46)+abb14(28)+abb14(22)
      abb14(14)=8.0_ki*abb14(14)
      abb14(10)=-32.0_ki*abb14(10)*abb14(43)
      abb14(22)=-16.0_ki*abb14(24)
      abb14(24)=8.0_ki*spbk7k2
      abb14(28)=abb14(37)*abb14(24)
      abb14(37)=32.0_ki*abb14(54)
      abb14(38)=16.0_ki*abb14(64)
      abb14(43)=abb14(30)*abb14(38)
      abb14(38)=-spbk7k2*abb14(38)
      abb14(46)=-es12*abb14(63)*abb14(58)
      abb14(44)=-abb14(19)*abb14(44)
      abb14(15)=spbk7k1*abb14(15)
      abb14(48)=-spak3k4*abb14(48)
      abb14(15)=abb14(15)+abb14(48)
      abb14(15)=spbk3k2*abb14(15)
      abb14(25)=abb14(25)*abb14(47)
      abb14(15)=abb14(15)+abb14(44)+abb14(46)+abb14(25)
      abb14(15)=8.0_ki*abb14(15)
      abb14(25)=-32.0_ki*abb14(65)
      abb14(44)=-16.0_ki*abb14(59)
      abb14(24)=abb14(31)*abb14(24)
      abb14(31)=32.0_ki*abb14(52)
      abb14(46)=16.0_ki*spak1k7
      abb14(9)=abb14(46)*abb14(30)*abb14(9)
      abb14(23)=-abb14(23)*abb14(46)
      abb14(30)=8.0_ki*abb14(11)
      abb14(46)=8.0_ki*abb14(19)
      abb14(40)=abb14(40)*spbk7l5
      abb14(39)=abb14(39)*spbk7l6
      abb14(39)=abb14(40)+abb14(39)
      abb14(40)=8.0_ki*abb14(39)
      abb14(39)=16.0_ki*abb14(39)
      abb14(11)=spbk7l6*abb14(11)
      abb14(19)=spbk7l5*abb14(19)
      abb14(11)=abb14(11)+abb14(19)
      abb14(11)=8.0_ki*spak2k3*abb14(11)
      abb14(19)=-spbk7k1*abb14(27)
      abb14(27)=spak3k4*abb14(36)
      abb14(19)=abb14(19)+abb14(27)
      abb14(19)=8.0_ki*abb14(19)
      abb14(27)=-spbk7k1*abb14(34)
      abb14(34)=spak3k4*abb14(42)
      abb14(27)=abb14(27)+abb14(34)
      abb14(27)=8.0_ki*abb14(27)
      R2d14=0.0_ki
      rat2 = rat2 + R2d14
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='14' value='", &
          & R2d14, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd14h3
