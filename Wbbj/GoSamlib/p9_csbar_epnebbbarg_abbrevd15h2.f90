module     p9_csbar_epnebbbarg_abbrevd15h2
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(76), public :: abb15
   complex(ki), public :: R2d15
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb15(1)=1.0_ki/(-es71+es712-es12)
      abb15(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb15(3)=NC**(-1)
      abb15(4)=es56**(-1)
      abb15(5)=spbl5k2**(-1)
      abb15(6)=spak2l6**(-1)
      abb15(7)=spbl6k2**(-1)
      abb15(8)=spak2l5**(-1)
      abb15(9)=c3*abb15(3)
      abb15(10)=c4*abb15(3)**2
      abb15(9)=abb15(9)-abb15(10)
      abb15(10)=CVSC*spbk7e7*i_*spak2e7*abb15(4)*abb15(2)
      abb15(11)=TR*gW
      abb15(12)=abb15(11)*mB
      abb15(12)=abb15(1)*abb15(10)*abb15(12)**2
      abb15(13)=-abb15(9)*abb15(5)*abb15(12)
      abb15(14)=-abb15(6)*abb15(13)
      abb15(15)=spak1k7*spbk2k1**2
      abb15(16)=-spak2k4*abb15(14)*abb15(15)
      abb15(17)=abb15(14)*spbk2k1
      abb15(18)=es71*spak4k7
      abb15(19)=abb15(18)*abb15(17)
      abb15(16)=abb15(16)+abb15(19)
      abb15(16)=spbl5k3*abb15(16)
      abb15(12)=abb15(12)*abb15(9)*abb15(6)
      abb15(19)=abb15(12)*abb15(7)
      abb15(20)=abb15(19)*spbl6k1
      abb15(21)=spbk2k1*spak2k4
      abb15(22)=abb15(21)*spak1k7
      abb15(23)=abb15(22)*spbk3k2
      abb15(24)=abb15(20)*abb15(23)
      abb15(25)=spbk3k2*spak4k7
      abb15(26)=abb15(20)*abb15(25)
      abb15(27)=-es71*abb15(26)
      abb15(16)=abb15(16)+abb15(24)+abb15(27)
      abb15(16)=spak2l5*abb15(16)
      abb15(24)=-abb15(13)*spbl6k1
      abb15(27)=abb15(24)*abb15(25)
      abb15(28)=-abb15(13)*spbk2k1
      abb15(29)=spbl6k3*spak4k7
      abb15(30)=abb15(28)*abb15(29)
      abb15(27)=abb15(27)-abb15(30)
      abb15(30)=-es71*abb15(27)
      abb15(31)=spbk3k1*spak4k7
      abb15(32)=abb15(31)*abb15(14)
      abb15(33)=abb15(32)*es71
      abb15(34)=abb15(14)*abb15(21)
      abb15(35)=spak1k7*spbk3k1
      abb15(36)=abb15(34)*abb15(35)
      abb15(37)=abb15(33)-abb15(36)
      abb15(38)=-es12*abb15(37)
      abb15(9)=-abb15(9)*abb15(10)*abb15(1)*abb15(11)**2
      abb15(10)=abb15(9)*spbl6k1
      abb15(11)=abb15(10)*abb15(35)
      abb15(39)=abb15(21)*abb15(11)
      abb15(40)=-es71*abb15(31)*abb15(10)
      abb15(39)=abb15(39)+abb15(40)
      abb15(39)=spak1l5*abb15(39)
      abb15(40)=-abb15(13)*spak2k4
      abb15(15)=-spbl6k3*abb15(40)*abb15(15)
      abb15(23)=abb15(24)*abb15(23)
      abb15(41)=abb15(10)*spal5l6
      abb15(42)=-spbl6k3*abb15(22)
      abb15(43)=es71*abb15(29)
      abb15(42)=abb15(42)+abb15(43)
      abb15(42)=abb15(42)*abb15(41)
      abb15(15)=abb15(39)+abb15(42)+abb15(38)+abb15(16)+abb15(30)+abb15(15)+abb&
      &15(23)
      abb15(15)=4.0_ki*abb15(15)
      abb15(16)=spbl5k3*spak4k7*abb15(17)
      abb15(16)=-abb15(26)+abb15(16)
      abb15(16)=spak2l5*abb15(16)
      abb15(23)=-es12*abb15(32)
      abb15(26)=abb15(29)*abb15(41)
      abb15(30)=abb15(10)*spak1l5
      abb15(38)=-abb15(31)*abb15(30)
      abb15(16)=abb15(38)+abb15(26)+abb15(23)+abb15(16)-abb15(27)
      abb15(16)=8.0_ki*abb15(16)
      abb15(23)=abb15(11)*spak4l5
      abb15(23)=abb15(23)-abb15(36)
      abb15(26)=8.0_ki*abb15(23)
      abb15(27)=-abb15(13)*abb15(8)
      abb15(38)=abb15(19)+abb15(27)
      abb15(39)=abb15(38)*abb15(35)
      abb15(42)=spak4l5*spbl6k1
      abb15(43)=-abb15(42)*abb15(39)
      abb15(44)=abb15(14)*abb15(35)
      abb15(45)=spbl5k1*spak4l5
      abb15(46)=spak4l6*spbl6k1
      abb15(46)=abb15(46)+abb15(45)
      abb15(47)=-abb15(44)*abb15(46)
      abb15(37)=abb15(43)+abb15(47)+abb15(37)
      abb15(37)=8.0_ki*abb15(37)
      abb15(43)=16.0_ki*abb15(32)
      abb15(47)=abb15(9)*spal5k7
      abb15(48)=spak2k4*spbk3k1
      abb15(49)=-spbl6k2*abb15(48)
      abb15(50)=spbk7l6*abb15(31)
      abb15(49)=abb15(50)+abb15(49)
      abb15(49)=abb15(47)*abb15(49)
      abb15(50)=es712-es12
      abb15(32)=-abb15(32)*abb15(50)
      abb15(23)=abb15(33)-abb15(23)+abb15(32)+abb15(49)
      abb15(23)=8.0_ki*abb15(23)
      abb15(32)=abb15(10)*spal5k7
      abb15(33)=abb15(17)*spak2k7
      abb15(32)=abb15(32)+abb15(33)
      abb15(33)=spak1k4*abb15(32)
      abb15(49)=spbl6k2*spak2k7
      abb15(51)=abb15(14)*abb15(49)
      abb15(52)=-spak4l6*abb15(51)
      abb15(33)=abb15(33)+abb15(52)
      abb15(33)=spbk3k1*abb15(33)
      abb15(52)=-spak2k7*abb15(12)
      abb15(53)=spbl6l5*abb15(47)
      abb15(52)=abb15(53)+abb15(52)
      abb15(52)=spbk3k1*abb15(52)
      abb15(52)=abb15(11)+abb15(52)
      abb15(52)=spak4l5*abb15(52)
      abb15(53)=abb15(12)*abb15(48)
      abb15(54)=abb15(9)*spbl6k3
      abb15(55)=abb15(21)*abb15(54)
      abb15(53)=abb15(53)+abb15(55)
      abb15(53)=spal5k7*abb15(53)
      abb15(55)=abb15(29)*abb15(47)
      abb15(56)=abb15(25)*abb15(14)
      abb15(57)=-spak2k7*abb15(56)
      abb15(55)=abb15(55)+abb15(57)
      abb15(55)=spbk7k1*abb15(55)
      abb15(57)=spak2k7*spbk3k2
      abb15(58)=-abb15(57)*abb15(34)
      abb15(59)=abb15(27)*spal5k7
      abb15(60)=abb15(59)*spbl6k2
      abb15(61)=abb15(48)*abb15(60)
      abb15(33)=abb15(55)+abb15(61)+abb15(58)-abb15(36)+abb15(53)+abb15(52)+abb&
      &15(33)
      abb15(33)=4.0_ki*abb15(33)
      abb15(36)=abb15(10)*spak4l5
      abb15(36)=abb15(36)-abb15(34)
      abb15(52)=8.0_ki*abb15(36)
      abb15(42)=abb15(42)*abb15(38)
      abb15(46)=abb15(14)*abb15(46)
      abb15(42)=abb15(42)+abb15(46)
      abb15(42)=8.0_ki*abb15(42)
      abb15(36)=-4.0_ki*abb15(36)
      abb15(13)=-abb15(13)*abb15(21)
      abb15(46)=spak2k4*abb15(41)
      abb15(13)=abb15(46)+abb15(13)
      abb15(13)=spbl6k3*abb15(13)
      abb15(46)=abb15(14)*es12
      abb15(30)=abb15(46)+abb15(30)
      abb15(46)=-abb15(48)*abb15(30)
      abb15(53)=spbk3k2*spak2k4
      abb15(55)=-abb15(20)*abb15(53)
      abb15(58)=spbl5k3*abb15(34)
      abb15(55)=abb15(55)+abb15(58)
      abb15(55)=spak2l5*abb15(55)
      abb15(58)=-abb15(24)*abb15(53)
      abb15(13)=abb15(55)+abb15(58)+abb15(46)+abb15(13)
      abb15(13)=4.0_ki*abb15(13)
      abb15(46)=8.0_ki*abb15(14)
      abb15(55)=abb15(46)*abb15(48)
      abb15(58)=spbk7k3*spak4k7*abb15(46)
      abb15(61)=es71-abb15(50)
      abb15(61)=abb15(14)*abb15(61)
      abb15(62)=spbk7l6*abb15(47)
      abb15(61)=abb15(62)+abb15(61)
      abb15(61)=abb15(29)*abb15(61)
      abb15(62)=abb15(47)*spbl6k3
      abb15(63)=spbl6k2*spak2k4
      abb15(64)=-abb15(62)*abb15(63)
      abb15(61)=abb15(64)+abb15(61)
      abb15(61)=4.0_ki*abb15(61)
      abb15(64)=-abb15(29)*abb15(46)
      abb15(65)=abb15(9)*abb15(35)
      abb15(39)=-abb15(65)-abb15(39)
      abb15(39)=abb15(21)*abb15(39)
      abb15(31)=abb15(31)*abb15(9)
      abb15(66)=es71*abb15(31)
      abb15(67)=-spak4l6*abb15(11)
      abb15(68)=-abb15(65)*abb15(45)
      abb15(39)=abb15(68)+abb15(67)+abb15(66)+abb15(39)
      abb15(39)=4.0_ki*abb15(39)
      abb15(31)=8.0_ki*abb15(31)
      abb15(21)=abb15(21)*abb15(38)
      abb15(66)=spak4l6*abb15(10)
      abb15(45)=abb15(9)*abb15(45)
      abb15(21)=abb15(45)+abb15(66)+abb15(21)
      abb15(21)=4.0_ki*abb15(21)
      abb15(45)=4.0_ki*abb15(9)
      abb15(48)=abb15(48)*abb15(45)
      abb15(66)=abb15(45)*spak4k7
      abb15(67)=spbk7k3*abb15(66)
      abb15(68)=abb15(29)*abb15(9)
      abb15(69)=4.0_ki*abb15(68)
      abb15(70)=spak2k4*abb15(65)
      abb15(71)=abb15(57)-abb15(35)
      abb15(40)=abb15(8)*abb15(40)*abb15(71)
      abb15(40)=abb15(70)+abb15(40)
      abb15(40)=spbl6k2*abb15(40)
      abb15(70)=abb15(19)*abb15(25)
      abb15(72)=-abb15(25)*abb15(27)
      abb15(72)=abb15(72)-abb15(70)
      abb15(72)=spak2k7*abb15(72)
      abb15(73)=-spak4k7*abb15(65)
      abb15(72)=abb15(73)+abb15(72)
      abb15(72)=spbk7l6*abb15(72)
      abb15(63)=abb15(54)*abb15(63)
      abb15(73)=-spbk7l6*abb15(68)
      abb15(63)=abb15(63)+abb15(73)
      abb15(63)=spal6k7*abb15(63)
      abb15(73)=abb15(14)*spbl5k3
      abb15(74)=abb15(73)*spak4k7
      abb15(50)=-abb15(74)*abb15(50)
      abb15(71)=abb15(71)*abb15(12)*spak2k4
      abb15(22)=-abb15(54)*abb15(22)
      abb15(75)=es71*abb15(68)
      abb15(18)=abb15(18)*abb15(73)
      abb15(11)=-spak1k4*abb15(11)
      abb15(76)=-spbl6l5*spak4l5*abb15(65)
      abb15(11)=abb15(76)+abb15(11)+abb15(63)+abb15(72)+abb15(18)+abb15(75)+abb&
      &15(40)+abb15(22)+abb15(71)+abb15(50)
      abb15(11)=4.0_ki*abb15(11)
      abb15(18)=8.0_ki*abb15(68)
      abb15(22)=-abb15(29)*abb15(38)
      abb15(22)=-abb15(74)+abb15(22)
      abb15(22)=8.0_ki*abb15(22)
      abb15(40)=-spbl5k3*abb15(66)
      abb15(50)=spbk2k1*abb15(20)
      abb15(63)=spbl5k1*abb15(17)
      abb15(50)=abb15(63)+abb15(50)
      abb15(50)=spak2l5*abb15(50)
      abb15(63)=spbk2k1*abb15(24)
      abb15(66)=spal5l6*abb15(9)*spbl6k1**2
      abb15(50)=abb15(66)+2.0_ki*abb15(63)+abb15(50)
      abb15(50)=4.0_ki*spak1k7*abb15(50)
      abb15(63)=-8.0_ki*abb15(32)
      abb15(32)=-4.0_ki*abb15(32)
      abb15(28)=-abb15(28)-abb15(41)
      abb15(28)=4.0_ki*abb15(28)
      abb15(41)=-4.0_ki*spak2l5*abb15(17)
      abb15(20)=-spak2l5*abb15(20)
      abb15(20)=-abb15(24)+abb15(20)
      abb15(20)=4.0_ki*abb15(20)
      abb15(24)=-4.0_ki*abb15(30)
      abb15(30)=-4.0_ki*abb15(51)
      abb15(51)=2.0_ki*spak1k7
      abb15(10)=abb15(10)*abb15(51)
      abb15(49)=abb15(27)*abb15(49)
      abb15(10)=abb15(10)+abb15(49)
      abb15(10)=4.0_ki*abb15(10)
      abb15(49)=abb15(57)*abb15(14)
      abb15(62)=abb15(49)-abb15(62)
      abb15(66)=8.0_ki*abb15(62)
      abb15(14)=abb15(14)*spal6k7
      abb15(19)=spal5k7*abb15(19)
      abb15(19)=abb15(14)+abb15(59)+abb15(19)
      abb15(19)=spbl6k3*abb15(19)
      abb15(68)=spal5k7*abb15(73)
      abb15(19)=abb15(68)+abb15(44)-abb15(49)+abb15(19)
      abb15(19)=8.0_ki*abb15(19)
      abb15(49)=4.0_ki*abb15(62)
      abb15(38)=-abb15(9)+abb15(38)
      abb15(38)=abb15(57)*abb15(38)
      abb15(47)=spbl5k3*abb15(47)
      abb15(54)=spal6k7*abb15(54)
      abb15(38)=abb15(54)+abb15(47)+abb15(65)+abb15(38)
      abb15(38)=4.0_ki*abb15(38)
      abb15(47)=-spak4k7*abb15(44)
      abb15(54)=-spal5k7*abb15(74)
      abb15(29)=-abb15(29)*abb15(14)
      abb15(29)=abb15(29)+abb15(47)+abb15(54)
      abb15(29)=spbk7k2*abb15(29)
      abb15(47)=-spal5k7*abb15(12)
      abb15(47)=-abb15(60)+abb15(47)
      abb15(47)=abb15(53)*abb15(47)
      abb15(53)=spal5k7*abb15(70)
      abb15(54)=abb15(25)*abb15(59)
      abb15(53)=abb15(53)+abb15(54)
      abb15(53)=spbk7l6*abb15(53)
      abb15(54)=spak4l6*spbl6k2
      abb15(57)=-spak1k4*spbk2k1
      abb15(54)=abb15(57)+abb15(54)
      abb15(44)=abb15(44)*abb15(54)
      abb15(34)=spbk3k2*spak1k7*abb15(34)
      abb15(12)=spak4l5*abb15(12)*abb15(35)
      abb15(35)=-es71*abb15(56)
      abb15(12)=abb15(29)+abb15(53)+abb15(35)+abb15(12)+abb15(34)+abb15(47)+abb&
      &15(44)
      abb15(12)=4.0_ki*abb15(12)
      abb15(29)=abb15(46)*abb15(25)
      abb15(34)=-4.0_ki*abb15(56)
      abb15(9)=-abb15(27)+abb15(9)
      abb15(9)=abb15(25)*abb15(9)
      abb15(9)=-abb15(70)+abb15(9)
      abb15(9)=4.0_ki*abb15(9)
      abb15(17)=abb15(17)*abb15(51)
      abb15(14)=spbl6k2*abb15(14)
      abb15(14)=abb15(14)+abb15(17)-abb15(60)
      abb15(14)=4.0_ki*abb15(14)
      R2d15=0.0_ki
      rat2 = rat2 + R2d15
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='15' value='", &
          & R2d15, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd15h2
