module     p0_dbaru_epnebbbarg_abbrevd68h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(90), public :: abb68
   complex(ki), public :: R2d68
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
      abb68(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb68(2)=NC**(-1)
      abb68(3)=sqrt2**(-1)
      abb68(4)=es56**(-1)
      abb68(5)=spbl5k2**(-1)
      abb68(6)=spbk7k2**(-1)
      abb68(7)=spbl6k2**(-1)
      abb68(8)=spak2l5**(-1)
      abb68(9)=spak2l6**(-1)
      abb68(10)=c1*abb68(2)
      abb68(11)=c4*abb68(2)**2
      abb68(10)=abb68(10)-abb68(11)-c2
      abb68(11)=spbk3k2**2
      abb68(12)=-abb68(10)*abb68(11)*mB
      abb68(13)=TR*gW
      abb68(13)=abb68(6)*i_*CVDU*abb68(4)*abb68(3)*abb68(1)*abb68(13)**2
      abb68(14)=abb68(13)*abb68(5)
      abb68(15)=abb68(14)*abb68(12)
      abb68(16)=abb68(15)*spal6k7
      abb68(17)=abb68(16)*spak3k4
      abb68(18)=abb68(17)*spbl6k2
      abb68(19)=abb68(13)*mB
      abb68(20)=-abb68(10)*abb68(19)
      abb68(21)=spak3k4*abb68(11)*abb68(20)
      abb68(22)=abb68(21)*spal5k7
      abb68(18)=abb68(18)+abb68(22)
      abb68(22)=spak1l6*abb68(18)
      abb68(23)=abb68(13)*abb68(7)
      abb68(12)=abb68(23)*abb68(12)
      abb68(24)=abb68(12)*spal5k7
      abb68(25)=abb68(24)*spak3k4
      abb68(26)=abb68(25)*spbl5k2
      abb68(21)=abb68(21)*spal6k7
      abb68(21)=abb68(26)+abb68(21)
      abb68(26)=spak1l5*abb68(21)
      abb68(12)=abb68(12)*spak3k4
      abb68(27)=spak1k7*spbk2k1
      abb68(28)=abb68(27)*spak1l5
      abb68(29)=abb68(28)*abb68(12)
      abb68(15)=abb68(15)*spak3k4
      abb68(30)=abb68(27)*spak1l6
      abb68(31)=abb68(30)*abb68(15)
      abb68(22)=abb68(29)+abb68(31)+abb68(26)+abb68(22)
      abb68(26)=8.0_ki*es12
      abb68(29)=abb68(22)*abb68(26)
      abb68(22)=-16.0_ki*abb68(22)
      abb68(19)=abb68(10)*spbk3k2*abb68(19)
      abb68(31)=-abb68(5)*abb68(19)
      abb68(32)=abb68(31)*spak1l6
      abb68(33)=-abb68(7)*abb68(19)
      abb68(34)=abb68(33)*spak1l5
      abb68(35)=abb68(32)+abb68(34)
      abb68(36)=spak1k7*spbk2k1**2
      abb68(37)=abb68(36)*abb68(35)
      abb68(38)=-abb68(19)*spal6k7
      abb68(39)=spak1l5*spbk2k1
      abb68(40)=abb68(39)*abb68(38)
      abb68(19)=-abb68(19)*spal5k7
      abb68(41)=spak1l6*spbk2k1
      abb68(42)=abb68(41)*abb68(19)
      abb68(37)=abb68(42)+abb68(40)+abb68(37)
      abb68(37)=spak1k4*abb68(37)
      abb68(40)=abb68(31)*spak1k4
      abb68(42)=abb68(40)*abb68(41)
      abb68(43)=spbl6k2*spal6k7
      abb68(44)=abb68(43)*abb68(42)
      abb68(45)=abb68(33)*spak1k4
      abb68(46)=abb68(45)*abb68(39)
      abb68(47)=spbl5k2*spal5k7
      abb68(48)=abb68(47)*abb68(46)
      abb68(37)=abb68(48)+abb68(44)+abb68(37)
      abb68(37)=8.0_ki*abb68(37)
      abb68(44)=abb68(15)*spak1l6
      abb68(48)=abb68(12)*spak1l5
      abb68(44)=abb68(44)+abb68(48)
      abb68(26)=abb68(44)*abb68(26)
      abb68(42)=abb68(46)+abb68(42)
      abb68(42)=16.0_ki*abb68(42)
      abb68(44)=-16.0_ki*abb68(44)
      abb68(18)=spak1k2*abb68(18)
      abb68(46)=es12*spak1k7
      abb68(48)=abb68(15)*abb68(46)
      abb68(18)=abb68(48)+abb68(18)
      abb68(18)=8.0_ki*abb68(18)
      abb68(48)=16.0_ki*spak1k7
      abb68(49)=-abb68(15)*abb68(48)
      abb68(50)=abb68(43)+abb68(27)
      abb68(50)=abb68(40)*abb68(50)
      abb68(51)=spak1k4*abb68(19)
      abb68(50)=abb68(51)+abb68(50)
      abb68(50)=8.0_ki*abb68(50)
      abb68(15)=8.0_ki*abb68(15)
      abb68(51)=spak1k2*abb68(15)
      abb68(52)=16.0_ki*abb68(40)
      abb68(21)=spak1k2*abb68(21)
      abb68(53)=abb68(12)*abb68(46)
      abb68(21)=abb68(53)+abb68(21)
      abb68(21)=8.0_ki*abb68(21)
      abb68(53)=-abb68(12)*abb68(48)
      abb68(54)=abb68(47)+abb68(27)
      abb68(54)=abb68(45)*abb68(54)
      abb68(55)=spak1k4*abb68(38)
      abb68(54)=abb68(55)+abb68(54)
      abb68(54)=8.0_ki*abb68(54)
      abb68(12)=8.0_ki*abb68(12)
      abb68(55)=spak1k2*abb68(12)
      abb68(56)=16.0_ki*abb68(45)
      abb68(14)=-abb68(10)*abb68(14)*mB
      abb68(57)=abb68(14)*spbl6k2
      abb68(58)=spak1l6**2*abb68(57)
      abb68(23)=-abb68(10)*abb68(23)
      abb68(59)=mB*abb68(23)
      abb68(60)=abb68(59)*spbl5k2
      abb68(61)=spak1l5**2*abb68(60)
      abb68(58)=abb68(61)+abb68(58)
      abb68(58)=spbk2k1*abb68(58)
      abb68(61)=abb68(39)*abb68(33)
      abb68(62)=abb68(41)*abb68(31)
      abb68(61)=abb68(61)+abb68(62)
      abb68(62)=-spak1k3*abb68(61)
      abb68(63)=abb68(59)*abb68(39)
      abb68(41)=abb68(14)*abb68(41)
      abb68(41)=abb68(63)+abb68(41)
      abb68(63)=abb68(41)*spbk4k2
      abb68(64)=-spak1k4*abb68(63)
      abb68(65)=abb68(20)*spak1l6
      abb68(39)=abb68(39)*abb68(65)
      abb68(39)=abb68(64)+2.0_ki*abb68(39)+abb68(62)+abb68(58)
      abb68(39)=8.0_ki*abb68(39)
      abb68(58)=-abb68(20)*abb68(28)
      abb68(62)=-abb68(30)*abb68(57)
      abb68(58)=abb68(58)+abb68(62)
      abb68(58)=8.0_ki*abb68(58)
      abb68(62)=spak1l5*abb68(20)
      abb68(64)=-spak1k3*abb68(31)
      abb68(66)=spak1l6*abb68(57)
      abb68(67)=abb68(14)*spbk4k2
      abb68(68)=-spak1k4*abb68(67)
      abb68(62)=abb68(68)+abb68(66)+abb68(62)+abb68(64)
      abb68(62)=8.0_ki*abb68(62)
      abb68(64)=8.0_ki*spak1k7
      abb68(57)=-abb68(64)*abb68(57)
      abb68(66)=-abb68(20)*abb68(30)
      abb68(68)=-abb68(28)*abb68(60)
      abb68(66)=abb68(66)+abb68(68)
      abb68(66)=8.0_ki*abb68(66)
      abb68(68)=-spak1k3*abb68(33)
      abb68(69)=spak1l5*abb68(60)
      abb68(70)=abb68(59)*spbk4k2
      abb68(71)=-spak1k4*abb68(70)
      abb68(65)=abb68(71)+abb68(69)+abb68(65)+abb68(68)
      abb68(65)=8.0_ki*abb68(65)
      abb68(20)=-abb68(20)*abb68(48)
      abb68(60)=-abb68(64)*abb68(60)
      abb68(68)=abb68(27)*abb68(35)
      abb68(69)=abb68(19)*spak1l6
      abb68(71)=abb68(38)*spak1l5
      abb68(34)=abb68(47)*abb68(34)
      abb68(32)=abb68(43)*abb68(32)
      abb68(32)=abb68(69)+abb68(71)+abb68(68)+abb68(34)+abb68(32)
      abb68(34)=es23-es123
      abb68(69)=-2.0_ki*es12-abb68(34)
      abb68(69)=8.0_ki*abb68(32)*abb68(69)
      abb68(16)=abb68(24)+abb68(16)
      abb68(24)=abb68(16)*spak1k3
      abb68(71)=16.0_ki*abb68(24)
      abb68(72)=16.0_ki*abb68(68)
      abb68(11)=abb68(11)*mB**3
      abb68(10)=-abb68(10)*abb68(11)*abb68(13)
      abb68(13)=abb68(10)*abb68(5)**2
      abb68(73)=abb68(13)*spal6k7
      abb68(11)=abb68(23)*abb68(11)*abb68(5)
      abb68(23)=-spal5k7*abb68(11)
      abb68(23)=-abb68(73)+abb68(23)
      abb68(23)=abb68(8)*abb68(23)
      abb68(10)=abb68(10)*abb68(7)**2
      abb68(74)=abb68(10)*spal5k7
      abb68(75)=-spal6k7*abb68(11)
      abb68(75)=abb68(75)-abb68(74)
      abb68(75)=abb68(9)*abb68(75)
      abb68(23)=abb68(75)+abb68(23)
      abb68(23)=spak1k3*abb68(23)
      abb68(23)=abb68(68)+abb68(23)
      abb68(23)=16.0_ki*abb68(23)
      abb68(24)=abb68(24)-abb68(68)
      abb68(24)=8.0_ki*abb68(24)
      abb68(10)=abb68(10)*abb68(9)
      abb68(75)=abb68(10)*spak2l5
      abb68(13)=abb68(13)*abb68(8)
      abb68(76)=abb68(13)*spak2l6
      abb68(75)=abb68(75)+abb68(76)
      abb68(76)=abb68(31)*spbl5k3
      abb68(77)=abb68(33)*spbl6k3
      abb68(76)=abb68(76)-abb68(77)
      abb68(76)=abb68(76)*spal5l6
      abb68(76)=abb68(76)-abb68(75)
      abb68(77)=spak1k3*abb68(76)
      abb68(78)=-es12*abb68(35)
      abb68(79)=abb68(11)*spak1k3
      abb68(78)=-abb68(79)+abb68(78)
      abb68(77)=2.0_ki*abb68(78)+abb68(77)
      abb68(77)=8.0_ki*abb68(77)
      abb68(78)=spbl6k3*spal6k7
      abb68(80)=spbl5k3*spal5k7
      abb68(78)=abb68(78)+abb68(80)
      abb68(80)=spak1k3*abb68(78)
      abb68(34)=abb68(34)*spak1k7
      abb68(34)=abb68(34)+2.0_ki*abb68(46)+abb68(80)
      abb68(46)=-abb68(31)*abb68(34)
      abb68(80)=spak1k3*abb68(13)
      abb68(81)=abb68(9)*abb68(79)
      abb68(80)=abb68(80)+abb68(81)
      abb68(80)=spak2k7*abb68(80)
      abb68(43)=-abb68(31)*abb68(43)
      abb68(19)=-abb68(19)+abb68(43)
      abb68(19)=spak1k2*abb68(19)
      abb68(19)=abb68(19)+abb68(80)+abb68(46)
      abb68(19)=8.0_ki*abb68(19)
      abb68(43)=abb68(48)*abb68(31)
      abb68(46)=abb68(64)*abb68(31)
      abb68(80)=16.0_ki*spak1k2
      abb68(81)=-abb68(31)*abb68(80)
      abb68(34)=-abb68(33)*abb68(34)
      abb68(82)=spak1k3*abb68(10)
      abb68(79)=abb68(8)*abb68(79)
      abb68(79)=abb68(79)+abb68(82)
      abb68(79)=spak2k7*abb68(79)
      abb68(47)=-abb68(33)*abb68(47)
      abb68(38)=-abb68(38)+abb68(47)
      abb68(38)=spak1k2*abb68(38)
      abb68(34)=abb68(38)+abb68(79)+abb68(34)
      abb68(34)=8.0_ki*abb68(34)
      abb68(38)=abb68(48)*abb68(33)
      abb68(47)=abb68(64)*abb68(33)
      abb68(48)=-abb68(33)*abb68(80)
      abb68(30)=abb68(14)*abb68(30)
      abb68(28)=abb68(59)*abb68(28)
      abb68(28)=abb68(30)+abb68(28)
      abb68(28)=8.0_ki*spbk4k2*abb68(28)
      abb68(30)=abb68(64)*abb68(67)
      abb68(64)=abb68(64)*abb68(70)
      abb68(32)=8.0_ki*spbk3k1*spak1k4*abb68(32)
      abb68(16)=spak1k4*abb68(16)
      abb68(79)=16.0_ki*abb68(16)
      abb68(80)=spak1k4*abb68(73)
      abb68(82)=abb68(11)*spak1k4
      abb68(83)=spal5k7*abb68(82)
      abb68(80)=abb68(80)+abb68(83)
      abb68(80)=abb68(8)*abb68(80)
      abb68(83)=spak1k4*abb68(74)
      abb68(84)=spal6k7*abb68(82)
      abb68(83)=abb68(84)+abb68(83)
      abb68(83)=abb68(9)*abb68(83)
      abb68(80)=abb68(80)+abb68(83)
      abb68(80)=16.0_ki*abb68(80)
      abb68(16)=-8.0_ki*abb68(16)
      abb68(75)=spak1k4*abb68(75)
      abb68(83)=spbl6k3*abb68(45)
      abb68(84)=-spbl5k3*abb68(40)
      abb68(83)=abb68(83)+abb68(84)
      abb68(83)=spal5l6*abb68(83)
      abb68(75)=2.0_ki*abb68(82)+abb68(83)+abb68(75)
      abb68(75)=8.0_ki*abb68(75)
      abb68(83)=spbk3k1*spak1k7
      abb68(78)=abb68(83)+abb68(78)
      abb68(40)=abb68(40)*abb68(78)
      abb68(83)=-spak1k4*abb68(13)
      abb68(84)=-abb68(9)*abb68(82)
      abb68(83)=abb68(83)+abb68(84)
      abb68(83)=spak2k7*abb68(83)
      abb68(40)=abb68(83)+abb68(40)
      abb68(40)=8.0_ki*abb68(40)
      abb68(45)=abb68(45)*abb68(78)
      abb68(78)=-spak1k4*abb68(10)
      abb68(82)=-abb68(8)*abb68(82)
      abb68(78)=abb68(82)+abb68(78)
      abb68(78)=spak2k7*abb68(78)
      abb68(45)=abb68(78)+abb68(45)
      abb68(45)=8.0_ki*abb68(45)
      abb68(68)=8.0_ki*abb68(68)
      abb68(78)=8.0_ki*abb68(17)
      abb68(12)=spal6k7*abb68(12)
      abb68(15)=spal5k7*abb68(15)
      abb68(82)=8.0_ki*abb68(25)
      abb68(83)=8.0_ki*abb68(31)
      abb68(84)=spak3k4*abb68(83)
      abb68(85)=8.0_ki*abb68(33)
      abb68(86)=spak3k4*abb68(85)
      abb68(17)=abb68(17)+abb68(25)
      abb68(25)=16.0_ki*abb68(17)
      abb68(87)=16.0_ki*spak4k7
      abb68(88)=abb68(61)*abb68(87)
      abb68(89)=abb68(61)*spak4k7
      abb68(73)=-spak3k4*abb68(73)
      abb68(11)=abb68(11)*spak3k4
      abb68(90)=-spal5k7*abb68(11)
      abb68(73)=abb68(73)+abb68(90)
      abb68(73)=abb68(8)*abb68(73)
      abb68(74)=-spak3k4*abb68(74)
      abb68(90)=-spal6k7*abb68(11)
      abb68(74)=abb68(90)+abb68(74)
      abb68(74)=abb68(9)*abb68(74)
      abb68(73)=abb68(74)-abb68(89)+abb68(73)
      abb68(73)=16.0_ki*abb68(73)
      abb68(17)=abb68(89)+abb68(17)
      abb68(17)=8.0_ki*abb68(17)
      abb68(35)=spbk3k1*abb68(35)
      abb68(35)=abb68(35)+abb68(76)
      abb68(35)=spak3k4*abb68(35)
      abb68(74)=-spak2k4*abb68(61)
      abb68(35)=abb68(74)-2.0_ki*abb68(11)+abb68(35)
      abb68(35)=8.0_ki*abb68(35)
      abb68(13)=spak3k4*abb68(13)
      abb68(74)=abb68(9)*abb68(11)
      abb68(13)=abb68(13)+abb68(74)
      abb68(74)=8.0_ki*spak2k7
      abb68(13)=abb68(13)*abb68(74)
      abb68(76)=abb68(87)*abb68(31)
      abb68(89)=spak4k7*abb68(83)
      abb68(83)=-spak2k4*abb68(83)
      abb68(10)=spak3k4*abb68(10)
      abb68(11)=abb68(8)*abb68(11)
      abb68(10)=abb68(11)+abb68(10)
      abb68(10)=abb68(10)*abb68(74)
      abb68(11)=abb68(87)*abb68(33)
      abb68(74)=spak4k7*abb68(85)
      abb68(85)=-spak2k4*abb68(85)
      abb68(87)=-spak1l6*abb68(14)
      abb68(90)=-spak1l5*abb68(59)
      abb68(87)=abb68(87)+abb68(90)
      abb68(36)=abb68(36)*abb68(87)
      abb68(63)=-spak4k7*abb68(63)
      abb68(61)=-spak3k7*abb68(61)
      abb68(36)=abb68(61)+abb68(63)+abb68(36)
      abb68(36)=8.0_ki*abb68(36)
      abb68(41)=-8.0_ki*abb68(41)
      abb68(61)=-abb68(14)*abb68(27)
      abb68(63)=-spak4k7*abb68(67)
      abb68(31)=-spak3k7*abb68(31)
      abb68(31)=abb68(31)+abb68(61)+abb68(63)
      abb68(31)=8.0_ki*abb68(31)
      abb68(14)=-8.0_ki*abb68(14)
      abb68(27)=-abb68(59)*abb68(27)
      abb68(61)=-spak4k7*abb68(70)
      abb68(33)=-spak3k7*abb68(33)
      abb68(27)=abb68(33)+abb68(27)+abb68(61)
      abb68(27)=8.0_ki*abb68(27)
      abb68(33)=-8.0_ki*abb68(59)
      R2d68=0.0_ki
      rat2 = rat2 + R2d68
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='68' value='", &
          & R2d68, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd68h4
