module     p0_dbaru_epnebbbarg_abbrevd306h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(72), public :: abb306
   complex(ki), public :: R2d306
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
      abb306(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb306(2)=1.0_ki/(es34+es567-es12-es234)
      abb306(3)=NC**(-1)
      abb306(4)=sqrt2**(-1)
      abb306(5)=spak2k7**(-1)
      abb306(6)=spak2l5**(-1)
      abb306(7)=spbl5k2**(-1)
      abb306(8)=spak2l6**(-1)
      abb306(9)=sqrt(mB**2)
      abb306(10)=TR*gW
      abb306(10)=abb306(10)**2*CVDU*i_*spak1k4*abb306(5)*abb306(4)*abb306(2)*ab&
      &b306(1)
      abb306(11)=abb306(10)*c1
      abb306(12)=abb306(11)*NC
      abb306(10)=c3*abb306(10)*abb306(3)
      abb306(10)=abb306(12)+abb306(10)
      abb306(12)=spbk4k3*abb306(10)
      abb306(13)=mB**2
      abb306(14)=abb306(13)*abb306(7)
      abb306(15)=abb306(14)*spbk7k2
      abb306(16)=abb306(15)*abb306(12)
      abb306(11)=abb306(11)*abb306(3)
      abb306(17)=spbk7k2*abb306(11)
      abb306(18)=abb306(17)*spbk4k3
      abb306(19)=abb306(14)*abb306(18)
      abb306(16)=abb306(16)-abb306(19)
      abb306(19)=abb306(7)*mB
      abb306(20)=spbk7k2*abb306(19)
      abb306(21)=abb306(20)*abb306(12)
      abb306(22)=abb306(18)*abb306(19)
      abb306(21)=abb306(21)-abb306(22)
      abb306(21)=abb306(21)*abb306(9)
      abb306(22)=abb306(16)-abb306(21)
      abb306(23)=abb306(22)*spbl6k2
      abb306(24)=abb306(8)*spbk7k2
      abb306(25)=abb306(24)*abb306(12)
      abb306(26)=abb306(8)*spbk4k3
      abb306(27)=abb306(17)*abb306(26)
      abb306(27)=abb306(25)-abb306(27)
      abb306(28)=abb306(13)*abb306(27)
      abb306(29)=abb306(28)*spak2l5
      abb306(25)=mB*abb306(25)
      abb306(30)=abb306(26)*mB
      abb306(17)=abb306(30)*abb306(17)
      abb306(17)=abb306(25)-abb306(17)
      abb306(25)=abb306(9)*spak2l5
      abb306(31)=abb306(17)*abb306(25)
      abb306(23)=abb306(31)+abb306(23)-abb306(29)
      abb306(29)=es712-es71
      abb306(31)=abb306(29)-es12
      abb306(32)=-abb306(31)*spak2k4
      abb306(33)=abb306(23)*abb306(32)
      abb306(34)=abb306(7)**2*mB**4
      abb306(27)=abb306(34)*abb306(27)
      abb306(35)=-es712+2.0_ki*es71
      abb306(35)=abb306(35)*es712
      abb306(36)=es71**2
      abb306(35)=abb306(35)-abb306(36)
      abb306(36)=-abb306(27)*abb306(35)
      abb306(29)=-es12+2.0_ki*abb306(29)
      abb306(37)=-es12*abb306(27)*abb306(29)
      abb306(36)=abb306(37)+abb306(36)
      abb306(36)=spak2k4*abb306(36)
      abb306(37)=abb306(10)-abb306(11)
      abb306(37)=spbk3k1*abb306(37)
      abb306(38)=abb306(24)*abb306(37)
      abb306(34)=abb306(34)*abb306(38)
      abb306(35)=abb306(34)*abb306(35)
      abb306(29)=es12*abb306(34)*abb306(29)
      abb306(29)=abb306(29)+abb306(35)
      abb306(29)=spak1k2*abb306(29)
      abb306(16)=abb306(16)*spak2k4
      abb306(15)=-abb306(15)*abb306(37)
      abb306(35)=abb306(15)*spak1k2
      abb306(16)=abb306(16)+abb306(35)
      abb306(35)=-spbk7l6*abb306(31)
      abb306(39)=-spal5k7*abb306(35)*abb306(16)
      abb306(29)=abb306(39)+abb306(36)+abb306(29)
      abb306(29)=abb306(6)*abb306(29)
      abb306(24)=abb306(24)*abb306(14)
      abb306(36)=-abb306(24)*abb306(37)
      abb306(39)=-abb306(36)*abb306(31)
      abb306(40)=abb306(39)*spak1k2
      abb306(24)=abb306(24)*abb306(12)
      abb306(41)=abb306(14)*abb306(8)
      abb306(42)=abb306(18)*abb306(41)
      abb306(24)=-abb306(42)+abb306(24)
      abb306(42)=abb306(24)*abb306(31)
      abb306(43)=abb306(42)*spak2k4
      abb306(40)=abb306(40)-abb306(43)
      abb306(43)=2.0_ki*spal5k7
      abb306(44)=abb306(40)*abb306(43)
      abb306(11)=spbk4k3*abb306(11)
      abb306(45)=abb306(12)-abb306(11)
      abb306(46)=-abb306(45)*spbk7l6
      abb306(47)=-abb306(46)*abb306(31)
      abb306(48)=abb306(47)*abb306(43)
      abb306(49)=-abb306(45)*spak2l5
      abb306(50)=abb306(49)*spbl6k2
      abb306(51)=-abb306(50)*abb306(31)
      abb306(51)=-abb306(48)+abb306(51)
      abb306(51)=spak4l5*abb306(51)
      abb306(52)=abb306(37)*spbk7l6
      abb306(53)=-abb306(52)*abb306(31)
      abb306(54)=abb306(53)*abb306(43)
      abb306(55)=abb306(37)*spak2l5
      abb306(56)=abb306(55)*spbl6k2
      abb306(57)=abb306(56)*abb306(31)
      abb306(57)=abb306(54)+abb306(57)
      abb306(57)=spak1l5*abb306(57)
      abb306(44)=abb306(57)+abb306(44)+abb306(51)
      abb306(44)=spbk7l5*abb306(44)
      abb306(51)=abb306(37)*abb306(9)
      abb306(20)=-abb306(20)*abb306(51)
      abb306(15)=abb306(15)-abb306(20)
      abb306(57)=abb306(15)*spbl6k2
      abb306(58)=abb306(13)*abb306(38)
      abb306(59)=abb306(58)*spak2l5
      abb306(38)=mB*abb306(38)
      abb306(60)=abb306(38)*abb306(25)
      abb306(57)=abb306(59)+abb306(57)-abb306(60)
      abb306(59)=-abb306(31)*spak1k2
      abb306(60)=abb306(57)*abb306(59)
      abb306(61)=2.0_ki*spak4k7
      abb306(62)=abb306(61)*abb306(21)
      abb306(63)=2.0_ki*spak1k7
      abb306(64)=abb306(63)*abb306(20)
      abb306(62)=abb306(64)-abb306(62)
      abb306(64)=-abb306(35)*abb306(62)
      abb306(29)=abb306(44)+2.0_ki*abb306(29)+abb306(33)+abb306(60)+abb306(64)
      abb306(29)=4.0_ki*abb306(29)
      abb306(33)=spak2k4*abb306(23)
      abb306(44)=spak1k2*abb306(57)
      abb306(60)=abb306(56)*spak1l5
      abb306(64)=abb306(50)*spak4l5
      abb306(60)=abb306(60)-abb306(64)
      abb306(60)=abb306(60)*spbk7l5
      abb306(33)=-abb306(60)+abb306(33)+abb306(44)
      abb306(33)=8.0_ki*abb306(33)
      abb306(44)=abb306(53)*spak1l5
      abb306(47)=abb306(47)*spak4l5
      abb306(44)=abb306(44)-abb306(47)
      abb306(40)=-abb306(40)-abb306(44)
      abb306(40)=8.0_ki*abb306(40)
      abb306(23)=abb306(42)+abb306(23)
      abb306(23)=abb306(23)*spak2k4
      abb306(47)=abb306(39)-abb306(57)
      abb306(47)=abb306(47)*spak1k2
      abb306(23)=abb306(23)-abb306(47)
      abb306(47)=abb306(14)*abb306(45)
      abb306(53)=abb306(47)*spak4l5
      abb306(14)=-abb306(14)*abb306(37)
      abb306(57)=abb306(14)*spak1l5
      abb306(53)=abb306(53)-abb306(57)
      abb306(35)=-abb306(35)*abb306(53)
      abb306(32)=-abb306(27)*abb306(32)
      abb306(57)=abb306(34)*abb306(59)
      abb306(32)=abb306(32)+abb306(57)
      abb306(57)=abb306(43)*spbk7l6*abb306(16)
      abb306(32)=3.0_ki*abb306(32)+abb306(57)+abb306(35)
      abb306(32)=abb306(6)*abb306(32)
      abb306(24)=abb306(24)*spak2k4
      abb306(35)=abb306(36)*spak1k2
      abb306(24)=abb306(24)+abb306(35)
      abb306(35)=-abb306(24)*abb306(43)
      abb306(36)=abb306(43)*abb306(46)
      abb306(57)=abb306(50)+abb306(36)
      abb306(57)=spak4l5*abb306(57)
      abb306(43)=abb306(43)*abb306(52)
      abb306(59)=-abb306(56)-abb306(43)
      abb306(59)=spak1l5*abb306(59)
      abb306(35)=abb306(59)+abb306(35)+abb306(57)
      abb306(35)=spbk7l5*abb306(35)
      abb306(57)=spbk7l6*abb306(62)
      abb306(32)=abb306(35)+abb306(32)+abb306(57)+abb306(23)
      abb306(32)=8.0_ki*abb306(32)
      abb306(35)=-16.0_ki*abb306(24)
      abb306(57)=abb306(46)*spak4l5
      abb306(59)=abb306(52)*spak1l5
      abb306(57)=abb306(57)-abb306(59)
      abb306(59)=abb306(24)-abb306(57)
      abb306(59)=16.0_ki*abb306(59)
      abb306(62)=spbk7l6*abb306(53)
      abb306(27)=spak2k4*abb306(27)
      abb306(34)=-spak1k2*abb306(34)
      abb306(27)=abb306(62)+abb306(27)+abb306(34)
      abb306(27)=abb306(6)*abb306(27)
      abb306(27)=-abb306(24)+abb306(27)
      abb306(27)=16.0_ki*abb306(27)
      abb306(23)=-abb306(60)-abb306(44)+abb306(23)
      abb306(23)=4.0_ki*abb306(23)
      abb306(34)=-8.0_ki*abb306(57)
      abb306(44)=spak2k4*abb306(22)
      abb306(57)=spak1k2*abb306(15)
      abb306(44)=abb306(44)+abb306(57)
      abb306(44)=spbk7l6*abb306(44)
      abb306(57)=-spak2l5*abb306(24)
      abb306(60)=abb306(46)*spak2l5
      abb306(62)=spak4l5*abb306(60)
      abb306(64)=abb306(52)*spak2l5
      abb306(65)=-spak1l5*abb306(64)
      abb306(57)=abb306(65)+abb306(62)+abb306(57)
      abb306(57)=spbk7l5*abb306(57)
      abb306(44)=abb306(57)+abb306(44)
      abb306(44)=8.0_ki*abb306(44)
      abb306(30)=-abb306(30)*abb306(10)
      abb306(57)=abb306(8)*mB
      abb306(62)=abb306(57)*abb306(11)
      abb306(30)=abb306(62)+abb306(30)
      abb306(62)=abb306(30)*abb306(25)
      abb306(10)=-abb306(10)*abb306(26)*abb306(13)
      abb306(13)=abb306(13)*abb306(8)
      abb306(11)=abb306(13)*abb306(11)
      abb306(10)=abb306(11)+abb306(10)
      abb306(11)=abb306(10)*spak2l5
      abb306(11)=abb306(62)-abb306(11)
      abb306(26)=abb306(9)*abb306(19)*abb306(45)
      abb306(26)=abb306(26)-abb306(47)
      abb306(47)=abb306(26)*spbl6k2
      abb306(47)=abb306(47)+abb306(11)
      abb306(62)=abb306(41)*abb306(45)
      abb306(65)=2.0_ki*abb306(62)
      abb306(66)=abb306(65)*es71
      abb306(67)=abb306(66)+abb306(47)
      abb306(67)=es71*abb306(67)
      abb306(68)=abb306(65)*es712
      abb306(69)=abb306(68)-abb306(47)
      abb306(70)=4.0_ki*es71
      abb306(71)=-abb306(62)*abb306(70)
      abb306(71)=abb306(71)+abb306(69)
      abb306(71)=es712*abb306(71)
      abb306(72)=-abb306(70)+4.0_ki*es712
      abb306(62)=-abb306(62)*abb306(72)
      abb306(65)=abb306(65)*es12
      abb306(47)=abb306(62)+abb306(47)+abb306(65)
      abb306(47)=es12*abb306(47)
      abb306(47)=abb306(48)+abb306(47)+abb306(67)+abb306(71)
      abb306(47)=4.0_ki*abb306(47)
      abb306(36)=abb306(65)+abb306(36)+abb306(66)
      abb306(48)=abb306(69)-abb306(36)
      abb306(48)=8.0_ki*abb306(48)
      abb306(62)=8.0_ki*abb306(60)
      abb306(12)=spbk7k2*abb306(12)
      abb306(12)=-abb306(18)+abb306(12)
      abb306(18)=abb306(12)*spak2l5
      abb306(65)=abb306(18)+abb306(22)
      abb306(66)=4.0_ki*abb306(31)
      abb306(65)=-abb306(65)*abb306(66)
      abb306(67)=8.0_ki*abb306(18)
      abb306(22)=abb306(18)-abb306(22)
      abb306(22)=8.0_ki*abb306(22)
      abb306(18)=4.0_ki*abb306(18)
      abb306(69)=-abb306(60)*abb306(66)
      abb306(60)=4.0_ki*abb306(60)
      abb306(71)=2.0_ki*abb306(9)
      abb306(17)=abb306(17)*abb306(71)
      abb306(17)=abb306(17)-abb306(28)
      abb306(17)=spak2k4*abb306(17)
      abb306(28)=-abb306(38)*abb306(71)
      abb306(28)=abb306(28)+abb306(58)
      abb306(28)=spak1k2*abb306(28)
      abb306(16)=abb306(6)*spbl6k2*abb306(16)
      abb306(38)=abb306(37)*spak1l5
      abb306(58)=-abb306(45)*spak4l5
      abb306(38)=abb306(38)-abb306(58)
      abb306(58)=abb306(38)*spbl6k2
      abb306(71)=-spbk7l5*abb306(58)
      abb306(16)=abb306(71)+abb306(16)+abb306(17)+abb306(28)
      abb306(16)=2.0_ki*abb306(16)
      abb306(16)=spal5k7*abb306(16)
      abb306(17)=abb306(30)*abb306(9)
      abb306(10)=abb306(17)-abb306(10)
      abb306(10)=spak4l5*abb306(10)
      abb306(28)=abb306(57)*abb306(37)
      abb306(30)=abb306(28)*abb306(9)
      abb306(13)=-abb306(13)*abb306(37)
      abb306(57)=abb306(30)+abb306(13)
      abb306(57)=-spak1l5*abb306(57)
      abb306(10)=abb306(57)+abb306(10)
      abb306(10)=abb306(31)*abb306(10)
      abb306(21)=-spbl6k2*abb306(21)
      abb306(21)=abb306(21)+abb306(42)
      abb306(21)=abb306(21)*abb306(61)
      abb306(42)=-spal5k7*abb306(46)
      abb306(42)=abb306(50)+abb306(42)
      abb306(42)=spak4l5*abb306(42)
      abb306(46)=spal5k7*abb306(52)
      abb306(46)=-abb306(56)+abb306(46)
      abb306(46)=spak1l5*abb306(46)
      abb306(42)=abb306(42)+abb306(46)
      abb306(42)=spbl5k2*abb306(42)
      abb306(20)=spbl6k2*abb306(20)
      abb306(20)=abb306(20)+abb306(39)
      abb306(20)=abb306(20)*abb306(63)
      abb306(10)=2.0_ki*abb306(42)+abb306(20)+abb306(21)+abb306(10)+abb306(16)
      abb306(10)=4.0_ki*abb306(10)
      abb306(16)=-8.0_ki*abb306(58)
      abb306(20)=8.0_ki*abb306(6)*spbl6k2*abb306(53)
      abb306(21)=4.0_ki*abb306(58)
      abb306(24)=8.0_ki*abb306(24)
      abb306(17)=spak2k4*abb306(17)
      abb306(38)=spbl6l5*abb306(38)
      abb306(30)=spak1k2*abb306(30)
      abb306(17)=abb306(38)+abb306(17)+abb306(30)
      abb306(17)=8.0_ki*abb306(17)
      abb306(30)=8.0_ki*spal5k7
      abb306(30)=abb306(30)*spbl6k2
      abb306(38)=-abb306(45)*abb306(30)
      abb306(39)=16.0_ki*spal5k7
      abb306(12)=abb306(12)*abb306(39)
      abb306(26)=2.0_ki*abb306(49)+abb306(26)
      abb306(26)=spbl6k2*abb306(26)
      abb306(11)=abb306(26)+abb306(11)-abb306(68)+abb306(36)
      abb306(11)=4.0_ki*abb306(11)
      abb306(26)=-8.0_ki*abb306(45)
      abb306(19)=-abb306(19)*abb306(51)
      abb306(14)=abb306(19)-abb306(14)
      abb306(19)=abb306(14)*spbl6k2
      abb306(25)=abb306(28)*abb306(25)
      abb306(13)=abb306(13)*spak2l5
      abb306(13)=abb306(25)+abb306(13)
      abb306(19)=abb306(19)+abb306(13)
      abb306(25)=-abb306(41)*abb306(37)
      abb306(28)=2.0_ki*abb306(25)
      abb306(36)=-es71*abb306(28)
      abb306(36)=abb306(36)-abb306(19)
      abb306(36)=es71*abb306(36)
      abb306(41)=abb306(25)*abb306(70)
      abb306(42)=-es712*abb306(28)
      abb306(41)=abb306(42)+abb306(41)+abb306(19)
      abb306(41)=es712*abb306(41)
      abb306(25)=abb306(25)*abb306(72)
      abb306(42)=-es12*abb306(28)
      abb306(25)=abb306(42)-abb306(19)+abb306(25)
      abb306(25)=es12*abb306(25)
      abb306(25)=-abb306(54)+abb306(25)+abb306(36)+abb306(41)
      abb306(25)=4.0_ki*abb306(25)
      abb306(28)=-abb306(31)*abb306(28)
      abb306(28)=abb306(28)+abb306(43)
      abb306(19)=abb306(19)+abb306(28)
      abb306(19)=8.0_ki*abb306(19)
      abb306(31)=8.0_ki*abb306(64)
      abb306(30)=-abb306(37)*abb306(30)
      abb306(36)=-spbk7k2*abb306(37)
      abb306(41)=abb306(36)*spak2l5
      abb306(42)=abb306(41)+abb306(15)
      abb306(42)=abb306(42)*abb306(66)
      abb306(43)=-8.0_ki*abb306(41)
      abb306(15)=-abb306(41)+abb306(15)
      abb306(15)=8.0_ki*abb306(15)
      abb306(41)=-4.0_ki*abb306(41)
      abb306(36)=-abb306(36)*abb306(39)
      abb306(39)=abb306(64)*abb306(66)
      abb306(45)=-4.0_ki*abb306(64)
      abb306(14)=-2.0_ki*abb306(55)-abb306(14)
      abb306(14)=spbl6k2*abb306(14)
      abb306(13)=abb306(14)-abb306(13)-abb306(28)
      abb306(13)=4.0_ki*abb306(13)
      abb306(14)=-8.0_ki*abb306(37)
      R2d306=0.0_ki
      rat2 = rat2 + R2d306
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='306' value='", &
          & R2d306, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd306h2
