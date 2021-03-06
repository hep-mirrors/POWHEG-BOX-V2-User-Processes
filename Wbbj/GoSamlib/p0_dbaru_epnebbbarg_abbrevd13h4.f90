module     p0_dbaru_epnebbbarg_abbrevd13h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(76), public :: abb13
   complex(ki), public :: R2d13
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
      abb13(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb13(2)=NC**(-1)
      abb13(3)=sqrt2**(-1)
      abb13(4)=es56**(-1)
      abb13(5)=es71**(-1)
      abb13(6)=spak2l5**(-1)
      abb13(7)=spbl5k2**(-1)
      abb13(8)=spbl6k2**(-1)
      abb13(9)=spak2l6**(-1)
      abb13(10)=spbk7k2**(-1)
      abb13(11)=c3*abb13(2)
      abb13(12)=c4*abb13(2)**2
      abb13(13)=abb13(11)-abb13(12)
      abb13(14)=-abb13(7)*abb13(13)
      abb13(15)=abb13(5)*mB
      abb13(16)=TR*gW
      abb13(16)=abb13(16)**2*abb13(4)*i_*CVDU*abb13(3)*abb13(1)
      abb13(17)=spak1k7*abb13(16)
      abb13(18)=abb13(17)*abb13(15)
      abb13(19)=abb13(18)*spbk3k2
      abb13(20)=abb13(19)*spbk2k1
      abb13(21)=-abb13(20)*abb13(14)
      abb13(22)=abb13(12)*spbk2k1
      abb13(23)=abb13(11)*spbk2k1
      abb13(22)=abb13(22)-abb13(23)
      abb13(24)=mB**3
      abb13(25)=abb13(17)*abb13(24)*spbk3k2*abb13(5)
      abb13(26)=abb13(7)**2
      abb13(27)=abb13(26)*abb13(25)
      abb13(28)=-abb13(27)*abb13(22)
      abb13(29)=-abb13(6)*abb13(28)
      abb13(30)=-abb13(25)*abb13(14)*abb13(8)
      abb13(31)=-spbk2k1*abb13(30)
      abb13(32)=abb13(9)*abb13(31)
      abb13(29)=abb13(32)+abb13(21)+abb13(29)
      abb13(29)=spal6k7*abb13(29)
      abb13(32)=abb13(19)*abb13(8)
      abb13(33)=abb13(32)*abb13(23)
      abb13(34)=abb13(32)*abb13(12)
      abb13(35)=abb13(34)*spbk2k1
      abb13(33)=abb13(33)-abb13(35)
      abb13(35)=abb13(6)*abb13(31)
      abb13(36)=abb13(8)**2
      abb13(37)=abb13(36)*abb13(25)
      abb13(38)=-abb13(37)*abb13(22)
      abb13(39)=-abb13(9)*abb13(38)
      abb13(35)=abb13(39)+abb13(33)+abb13(35)
      abb13(35)=spal5k7*abb13(35)
      abb13(29)=abb13(29)+abb13(35)
      abb13(29)=spak1k4*abb13(29)
      abb13(35)=-abb13(19)*abb13(14)
      abb13(39)=spak1k4*abb13(10)
      abb13(40)=abb13(39)*spbk2k1**2
      abb13(41)=abb13(35)*abb13(40)
      abb13(42)=abb13(21)*spak4k7
      abb13(41)=abb13(41)-abb13(42)
      abb13(42)=-spak4k7*abb13(28)
      abb13(25)=abb13(39)*abb13(13)*abb13(25)
      abb13(43)=spbk2k1*abb13(7)
      abb13(44)=abb13(43)**2*abb13(25)
      abb13(42)=abb13(42)+abb13(44)
      abb13(42)=abb13(6)*abb13(42)
      abb13(44)=abb13(30)*abb13(40)
      abb13(45)=abb13(31)*spak4k7
      abb13(44)=abb13(44)+abb13(45)
      abb13(45)=abb13(9)*abb13(44)
      abb13(42)=abb13(45)+abb13(42)-abb13(41)
      abb13(42)=spak1l6*abb13(42)
      abb13(32)=abb13(32)*abb13(11)
      abb13(32)=abb13(32)-abb13(34)
      abb13(34)=abb13(32)*abb13(40)
      abb13(45)=abb13(33)*spak4k7
      abb13(34)=abb13(34)-abb13(45)
      abb13(44)=abb13(6)*abb13(44)
      abb13(46)=-spak4k7*abb13(38)
      abb13(47)=spbk2k1*abb13(8)
      abb13(25)=abb13(47)**2*abb13(25)
      abb13(25)=abb13(46)+abb13(25)
      abb13(25)=abb13(9)*abb13(25)
      abb13(25)=abb13(25)+abb13(44)-abb13(34)
      abb13(25)=spak1l5*abb13(25)
      abb13(44)=abb13(35)*spak4k7
      abb13(27)=-abb13(27)*abb13(13)
      abb13(46)=abb13(27)*abb13(6)
      abb13(48)=-spak4k7*abb13(46)
      abb13(49)=abb13(30)*spak4k7
      abb13(50)=abb13(9)*abb13(49)
      abb13(48)=abb13(50)-abb13(44)+abb13(48)
      abb13(48)=spal6k7*abb13(48)
      abb13(50)=abb13(32)*spak4k7
      abb13(51)=abb13(6)*abb13(49)
      abb13(37)=-abb13(37)*abb13(13)
      abb13(52)=abb13(37)*abb13(9)
      abb13(53)=-spak4k7*abb13(52)
      abb13(51)=abb13(53)-abb13(50)+abb13(51)
      abb13(51)=spal5k7*abb13(51)
      abb13(48)=abb13(48)+abb13(51)
      abb13(48)=spbk7k2*abb13(48)
      abb13(25)=abb13(48)+abb13(25)+abb13(42)+abb13(29)
      abb13(25)=16.0_ki*abb13(25)
      abb13(29)=spak1l6*abb13(41)
      abb13(34)=spak1l5*abb13(34)
      abb13(41)=spal6k7*abb13(44)
      abb13(42)=spal5k7*abb13(50)
      abb13(41)=abb13(41)+abb13(42)
      abb13(41)=spbk7k2*abb13(41)
      abb13(42)=abb13(13)*abb13(19)
      abb13(48)=spal5k7*abb13(42)
      abb13(19)=abb13(23)*abb13(19)
      abb13(20)=abb13(20)*abb13(12)
      abb13(19)=abb13(19)-abb13(20)
      abb13(20)=spak1l5*abb13(10)
      abb13(51)=-abb13(19)*abb13(20)
      abb13(48)=abb13(48)+abb13(51)
      abb13(48)=spak4l6*abb13(48)
      abb13(42)=spal6k7*abb13(42)
      abb13(51)=spak1l6*abb13(10)
      abb13(19)=-abb13(19)*abb13(51)
      abb13(19)=abb13(42)+abb13(19)
      abb13(19)=spak4l5*abb13(19)
      abb13(42)=abb13(35)*spal6k7
      abb13(53)=abb13(51)*abb13(21)
      abb13(42)=abb13(42)-abb13(53)
      abb13(53)=spbl6k2*spak4l6
      abb13(54)=abb13(42)*abb13(53)
      abb13(55)=abb13(32)*spal5k7
      abb13(56)=abb13(20)*abb13(33)
      abb13(55)=abb13(55)-abb13(56)
      abb13(56)=spbl5k2*spak4l5
      abb13(57)=abb13(55)*abb13(56)
      abb13(58)=spal6k7*spak1k4
      abb13(59)=-abb13(21)*abb13(58)
      abb13(60)=spal5k7*spak1k4
      abb13(61)=-abb13(33)*abb13(60)
      abb13(19)=abb13(57)+abb13(54)+abb13(19)+abb13(48)+abb13(41)+abb13(34)+abb&
      &13(29)+abb13(59)+abb13(61)
      abb13(19)=8.0_ki*abb13(19)
      abb13(29)=abb13(21)*abb13(39)
      abb13(34)=abb13(29)-abb13(44)
      abb13(41)=abb13(27)*spak4k7
      abb13(48)=-abb13(28)*abb13(39)
      abb13(41)=-abb13(41)+abb13(48)
      abb13(41)=abb13(6)*abb13(41)
      abb13(48)=abb13(31)*abb13(39)
      abb13(48)=abb13(48)+abb13(49)
      abb13(49)=abb13(9)*abb13(48)
      abb13(41)=abb13(49)+abb13(41)+abb13(34)
      abb13(41)=es712*abb13(41)
      abb13(17)=abb13(17)*spbk3k2
      abb13(24)=abb13(24)*abb13(17)
      abb13(26)=abb13(24)*abb13(26)
      abb13(49)=abb13(13)*abb13(26)
      abb13(54)=-spak4k7*abb13(49)
      abb13(22)=abb13(22)*abb13(39)
      abb13(26)=-abb13(26)*abb13(22)
      abb13(26)=abb13(54)+abb13(26)
      abb13(26)=abb13(6)*abb13(26)
      abb13(54)=abb13(14)*abb13(24)
      abb13(57)=abb13(39)*abb13(47)*abb13(54)
      abb13(54)=-abb13(8)*abb13(54)
      abb13(59)=abb13(54)*spak4k7
      abb13(57)=abb13(57)+abb13(59)
      abb13(59)=-abb13(9)*abb13(57)
      abb13(18)=-abb13(18)*abb13(13)
      abb13(61)=-abb13(8)*abb13(18)
      abb13(62)=abb13(61)*abb13(40)
      abb13(63)=-abb13(47)*abb13(18)
      abb13(64)=abb13(63)*spak4k7
      abb13(62)=abb13(62)-abb13(64)
      abb13(64)=-spak1l5*abb13(62)
      abb13(65)=abb13(63)*abb13(60)
      abb13(64)=abb13(65)+abb13(64)
      abb13(64)=spbl6k3*abb13(64)
      abb13(65)=-abb13(7)*abb13(18)
      abb13(40)=abb13(65)*abb13(40)
      abb13(43)=-abb13(43)*abb13(18)
      abb13(66)=abb13(43)*spak4k7
      abb13(40)=abb13(40)-abb13(66)
      abb13(66)=spak1l5*abb13(40)
      abb13(60)=-abb13(43)*abb13(60)
      abb13(60)=abb13(60)+abb13(66)
      abb13(60)=spbl5k3*abb13(60)
      abb13(66)=abb13(61)*spak4k7
      abb13(67)=abb13(66)*spbl6k3
      abb13(68)=abb13(65)*spak4k7
      abb13(69)=abb13(68)*spbl5k3
      abb13(67)=abb13(67)-abb13(69)
      abb13(67)=abb13(67)*spbk7k2
      abb13(69)=-spal5k7*abb13(67)
      abb13(17)=abb13(17)*mB
      abb13(70)=-abb13(17)*abb13(14)
      abb13(71)=-abb13(39)*spbk2k1
      abb13(71)=spak4k7+abb13(71)
      abb13(71)=abb13(70)*abb13(71)
      abb13(26)=abb13(69)+abb13(60)+abb13(64)+abb13(41)+abb13(59)+abb13(26)+abb&
      &13(71)
      abb13(26)=8.0_ki*abb13(26)
      abb13(41)=-16.0_ki*abb13(44)
      abb13(44)=16.0_ki*abb13(34)
      abb13(29)=-16.0_ki*abb13(29)
      abb13(34)=-8.0_ki*abb13(34)
      abb13(59)=spak4l5*abb13(18)
      abb13(60)=-abb13(65)*abb13(53)
      abb13(59)=abb13(59)+abb13(60)
      abb13(59)=8.0_ki*abb13(59)
      abb13(60)=abb13(43)*abb13(39)
      abb13(60)=abb13(60)-abb13(68)
      abb13(64)=8.0_ki*abb13(60)
      abb13(68)=spbk7k3*abb13(64)
      abb13(69)=8.0_ki*spak1k4
      abb13(71)=-abb13(35)*abb13(69)
      abb13(72)=-spbl6k3*abb13(64)
      abb13(73)=abb13(33)*abb13(39)
      abb13(74)=abb13(73)-abb13(50)
      abb13(48)=abb13(6)*abb13(48)
      abb13(75)=abb13(37)*spak4k7
      abb13(76)=-abb13(38)*abb13(39)
      abb13(75)=-abb13(75)+abb13(76)
      abb13(75)=abb13(9)*abb13(75)
      abb13(48)=abb13(75)+abb13(48)+abb13(74)
      abb13(48)=es712*abb13(48)
      abb13(57)=-abb13(6)*abb13(57)
      abb13(24)=abb13(36)*abb13(24)
      abb13(13)=abb13(13)*abb13(24)
      abb13(36)=-spak4k7*abb13(13)
      abb13(22)=-abb13(24)*abb13(22)
      abb13(22)=abb13(36)+abb13(22)
      abb13(22)=abb13(9)*abb13(22)
      abb13(24)=spak1l6*abb13(62)
      abb13(36)=-abb13(63)*abb13(58)
      abb13(24)=abb13(36)+abb13(24)
      abb13(24)=spbl6k3*abb13(24)
      abb13(36)=-spak1l6*abb13(40)
      abb13(40)=abb13(43)*abb13(58)
      abb13(36)=abb13(40)+abb13(36)
      abb13(36)=spbl5k3*abb13(36)
      abb13(40)=spal6k7*abb13(67)
      abb13(58)=abb13(12)*abb13(8)
      abb13(62)=abb13(17)*abb13(58)
      abb13(67)=abb13(17)*abb13(8)
      abb13(75)=abb13(67)*abb13(11)
      abb13(62)=abb13(62)-abb13(75)
      abb13(75)=-spak4k7*abb13(62)
      abb13(12)=abb13(47)*abb13(12)
      abb13(17)=abb13(17)*abb13(12)
      abb13(47)=-abb13(23)*abb13(67)
      abb13(17)=abb13(17)+abb13(47)
      abb13(17)=abb13(17)*abb13(39)
      abb13(17)=abb13(40)+abb13(36)+abb13(24)+abb13(48)+abb13(22)+abb13(57)+abb&
      &13(75)+abb13(17)
      abb13(17)=8.0_ki*abb13(17)
      abb13(22)=-16.0_ki*abb13(50)
      abb13(24)=16.0_ki*abb13(74)
      abb13(36)=-16.0_ki*abb13(73)
      abb13(40)=-8.0_ki*abb13(74)
      abb13(47)=spak4l6*abb13(18)
      abb13(48)=-abb13(61)*abb13(56)
      abb13(47)=abb13(47)+abb13(48)
      abb13(47)=8.0_ki*abb13(47)
      abb13(39)=abb13(63)*abb13(39)
      abb13(39)=abb13(39)-abb13(66)
      abb13(48)=8.0_ki*abb13(39)
      abb13(50)=spbk7k3*abb13(48)
      abb13(57)=-abb13(32)*abb13(69)
      abb13(39)=-spbl6k3*abb13(39)
      abb13(60)=-spbl5k3*abb13(60)
      abb13(39)=abb13(39)+abb13(60)
      abb13(39)=8.0_ki*abb13(39)
      abb13(60)=-spbl5k3*abb13(48)
      abb13(66)=8.0_ki*abb13(65)
      abb13(67)=8.0_ki*abb13(61)
      abb13(42)=abb13(55)+abb13(42)
      abb13(55)=16.0_ki*abb13(42)
      abb13(69)=-abb13(9)*abb13(30)
      abb13(46)=abb13(69)+abb13(46)+abb13(35)
      abb13(46)=spal6k7*abb13(46)
      abb13(69)=-abb13(6)*abb13(30)
      abb13(52)=abb13(52)+abb13(69)+abb13(32)
      abb13(52)=spal5k7*abb13(52)
      abb13(21)=abb13(21)*abb13(10)
      abb13(69)=abb13(6)*abb13(10)
      abb13(28)=abb13(28)*abb13(69)
      abb13(73)=abb13(9)*abb13(10)
      abb13(74)=-abb13(31)*abb13(73)
      abb13(28)=abb13(74)-abb13(21)+abb13(28)
      abb13(28)=spak1l6*abb13(28)
      abb13(33)=-abb13(10)*abb13(33)
      abb13(31)=-abb13(31)*abb13(69)
      abb13(38)=abb13(38)*abb13(73)
      abb13(31)=abb13(38)+abb13(33)+abb13(31)
      abb13(31)=spak1l5*abb13(31)
      abb13(28)=abb13(31)+abb13(28)+abb13(46)+abb13(52)
      abb13(28)=16.0_ki*abb13(28)
      abb13(31)=-8.0_ki*abb13(42)
      abb13(33)=abb13(10)*abb13(35)
      abb13(27)=abb13(27)*abb13(69)
      abb13(35)=-abb13(30)*abb13(73)
      abb13(27)=abb13(35)+abb13(33)+abb13(27)
      abb13(27)=es712*abb13(27)
      abb13(33)=-spal6k7*abb13(65)
      abb13(35)=abb13(43)*abb13(51)
      abb13(33)=abb13(33)+abb13(35)
      abb13(33)=spbl6k3*abb13(33)
      abb13(35)=-spal5k7*abb13(65)
      abb13(38)=abb13(43)*abb13(20)
      abb13(35)=abb13(35)+abb13(38)
      abb13(35)=spbl5k3*abb13(35)
      abb13(15)=spak1k7**2*abb13(16)*abb13(15)
      abb13(14)=abb13(14)*abb13(15)
      abb13(16)=spbk7k3*spbk2k1*abb13(14)
      abb13(16)=abb13(16)-abb13(70)
      abb13(16)=abb13(10)*abb13(16)
      abb13(38)=abb13(49)*abb13(69)
      abb13(42)=abb13(54)*abb13(73)
      abb13(14)=-spbk3k1*abb13(14)
      abb13(14)=abb13(14)+abb13(35)+abb13(33)+abb13(27)+abb13(42)+abb13(38)+abb&
      &13(16)
      abb13(14)=8.0_ki*abb13(14)
      abb13(16)=abb13(10)*abb13(32)
      abb13(27)=-abb13(30)*abb13(69)
      abb13(30)=abb13(37)*abb13(73)
      abb13(16)=abb13(30)+abb13(16)+abb13(27)
      abb13(16)=es712*abb13(16)
      abb13(23)=-abb13(8)*abb13(23)
      abb13(12)=abb13(12)+abb13(23)
      abb13(12)=abb13(12)*abb13(15)*spbk7k3
      abb13(12)=abb13(12)+abb13(62)
      abb13(12)=abb13(10)*abb13(12)
      abb13(23)=-spal6k7*abb13(61)
      abb13(27)=abb13(63)*abb13(51)
      abb13(23)=abb13(23)+abb13(27)
      abb13(23)=spbl6k3*abb13(23)
      abb13(27)=-spal5k7*abb13(61)
      abb13(20)=abb13(63)*abb13(20)
      abb13(20)=abb13(27)+abb13(20)
      abb13(20)=spbl5k3*abb13(20)
      abb13(27)=abb13(54)*abb13(69)
      abb13(13)=abb13(13)*abb13(73)
      abb13(11)=abb13(11)*abb13(8)
      abb13(11)=-abb13(58)+abb13(11)
      abb13(11)=abb13(11)*abb13(15)*spbk3k1
      abb13(11)=abb13(11)+abb13(20)+abb13(23)+abb13(16)+abb13(13)+abb13(27)+abb&
      &13(12)
      abb13(11)=8.0_ki*abb13(11)
      abb13(12)=-8.0_ki*spak4k7*abb13(21)
      abb13(13)=8.0_ki*abb13(10)
      abb13(15)=-abb13(45)*abb13(13)
      abb13(16)=abb13(18)*spbk2k1
      abb13(18)=spak4l5*abb13(16)
      abb13(20)=-abb13(43)*abb13(53)
      abb13(18)=abb13(18)+abb13(20)
      abb13(18)=abb13(18)*abb13(13)
      abb13(16)=spak4l6*abb13(16)
      abb13(20)=-abb13(63)*abb13(56)
      abb13(16)=abb13(16)+abb13(20)
      abb13(16)=abb13(16)*abb13(13)
      abb13(20)=spbk3k1*abb13(64)
      abb13(21)=spbk3k1*abb13(48)
      abb13(23)=abb13(43)*abb13(13)
      abb13(13)=abb13(63)*abb13(13)
      R2d13=0.0_ki
      rat2 = rat2 + R2d13
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='13' value='", &
          & R2d13, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd13h4
