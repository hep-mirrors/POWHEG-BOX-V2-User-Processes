module     p9_csbar_epnebbbarg_abbrevd78h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(76), public :: abb78
   complex(ki), public :: R2d78
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
      abb78(1)=1.0_ki/(-es71+es712-es12)
      abb78(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb78(3)=sqrt(mB**2)
      abb78(4)=NC**(-1)
      abb78(5)=spak2l6**(-1)
      abb78(6)=spak2l5**(-1)
      abb78(7)=spbl5k2**(-1)
      abb78(8)=spbl6k2**(-1)
      abb78(9)=c4*abb78(4)**2
      abb78(10)=TR*gW
      abb78(10)=spbk7e7*i_*spak2e7*CVSC*abb78(2)*abb78(1)*abb78(10)**2
      abb78(11)=abb78(9)*abb78(10)
      abb78(12)=abb78(5)*abb78(11)
      abb78(13)=2.0_ki*abb78(4)
      abb78(14)=abb78(10)*c3
      abb78(15)=abb78(14)*abb78(5)
      abb78(16)=abb78(13)*abb78(15)
      abb78(15)=abb78(15)*NC
      abb78(17)=-abb78(15)+abb78(16)-abb78(12)
      abb78(17)=spak2k4*abb78(17)
      abb78(18)=spal5k7*spbl5k3
      abb78(19)=spak1k7*spbk3k1
      abb78(18)=abb78(18)+abb78(19)
      abb78(19)=abb78(3)*spbl5k1
      abb78(20)=mB**2
      abb78(21)=abb78(19)*abb78(20)
      abb78(22)=-abb78(18)*abb78(17)*abb78(21)
      abb78(12)=-abb78(16)+abb78(15)+abb78(12)
      abb78(15)=abb78(3)*abb78(6)
      abb78(16)=abb78(15)*abb78(20)
      abb78(23)=-abb78(16)*abb78(12)
      abb78(24)=spak2k7*spbk3k1
      abb78(25)=abb78(23)*abb78(24)
      abb78(26)=abb78(25)*spak1k2
      abb78(20)=abb78(20)*abb78(3)
      abb78(27)=abb78(12)*abb78(20)
      abb78(28)=spbl5k3*spak2k7
      abb78(29)=abb78(28)*abb78(27)
      abb78(26)=abb78(26)+abb78(29)
      abb78(29)=spak4l6*spbl6k1*abb78(26)
      abb78(30)=abb78(17)*abb78(20)
      abb78(28)=-abb78(30)*abb78(28)
      abb78(31)=spak2k4*abb78(11)
      abb78(32)=abb78(14)*spak2k4
      abb78(13)=abb78(13)*abb78(32)
      abb78(32)=abb78(32)*NC
      abb78(13)=-abb78(13)+abb78(32)+abb78(31)
      abb78(31)=abb78(13)*abb78(3)
      abb78(32)=mB**4
      abb78(33)=abb78(5)**2
      abb78(34)=abb78(32)*abb78(33)
      abb78(35)=abb78(8)*spbl5k3
      abb78(36)=-spak2k7*abb78(35)*abb78(34)*abb78(31)
      abb78(28)=abb78(28)+abb78(36)
      abb78(28)=spbk2k1*abb78(28)
      abb78(18)=-abb78(18)*abb78(19)
      abb78(36)=abb78(16)*spbl5k1
      abb78(37)=abb78(7)*spak2k7
      abb78(38)=abb78(37)*spbk3k2
      abb78(39)=abb78(38)*abb78(36)
      abb78(18)=abb78(39)+abb78(18)
      abb78(18)=spbl6k2*abb78(13)*abb78(18)
      abb78(39)=abb78(14)*NC
      abb78(14)=abb78(14)*abb78(4)
      abb78(14)=-abb78(39)+2.0_ki*abb78(14)
      abb78(39)=-abb78(36)*abb78(14)
      abb78(40)=abb78(6)*abb78(11)
      abb78(41)=abb78(40)*abb78(21)
      abb78(39)=abb78(39)+abb78(41)
      abb78(41)=-abb78(39)*abb78(38)*spak4k7
      abb78(11)=-abb78(14)+abb78(11)
      abb78(11)=abb78(19)*abb78(11)
      abb78(19)=spak4k7*spbl5k3
      abb78(42)=spal5k7*abb78(19)
      abb78(43)=spak4k7*spbk3k1
      abb78(44)=spak1k7*abb78(43)
      abb78(42)=abb78(44)+abb78(42)
      abb78(42)=abb78(11)*abb78(42)
      abb78(41)=abb78(41)+abb78(42)
      abb78(41)=spbk7l6*abb78(41)
      abb78(27)=abb78(27)*abb78(19)
      abb78(42)=abb78(43)*abb78(23)*spak1k2
      abb78(27)=abb78(27)+abb78(42)
      abb78(27)=spbk7k1*spak2k7*abb78(27)
      abb78(42)=abb78(13)*abb78(8)
      abb78(34)=abb78(34)*abb78(15)*abb78(42)
      abb78(44)=abb78(34)*abb78(24)
      abb78(45)=-abb78(16)*abb78(17)
      abb78(24)=abb78(45)*abb78(24)
      abb78(44)=abb78(44)-abb78(24)
      abb78(46)=es12*abb78(44)
      abb78(32)=abb78(17)*abb78(32)
      abb78(15)=abb78(38)*spbl5k1*abb78(15)*abb78(32)
      abb78(15)=abb78(46)+abb78(27)+abb78(41)+abb78(18)+abb78(28)+abb78(29)+abb&
      &78(15)+abb78(22)
      abb78(15)=4.0_ki*abb78(15)
      abb78(18)=spbl5k1*mB
      abb78(22)=-abb78(18)*abb78(12)
      abb78(27)=abb78(22)*spak2l5
      abb78(28)=-mB*abb78(14)
      abb78(29)=abb78(10)*mB
      abb78(41)=abb78(9)*abb78(29)
      abb78(28)=abb78(28)+abb78(41)
      abb78(46)=spbl6k1*abb78(28)
      abb78(46)=-abb78(27)+abb78(46)
      abb78(46)=abb78(19)*abb78(46)
      abb78(47)=abb78(22)*abb78(43)
      abb78(48)=abb78(6)*mB
      abb78(49)=-abb78(48)*abb78(14)
      abb78(50)=abb78(41)*abb78(6)
      abb78(49)=abb78(49)+abb78(50)
      abb78(51)=abb78(49)*abb78(43)
      abb78(52)=-spbl6k1*abb78(51)
      abb78(47)=abb78(47)+abb78(52)
      abb78(47)=spak1k2*abb78(47)
      abb78(46)=abb78(47)+abb78(46)
      abb78(46)=8.0_ki*abb78(46)
      abb78(47)=abb78(11)*spbl6k3
      abb78(52)=abb78(47)*spak4k7
      abb78(24)=abb78(52)-abb78(24)
      abb78(52)=-8.0_ki*abb78(24)
      abb78(53)=spbl6k3*spak4k7
      abb78(54)=-abb78(7)*abb78(39)*abb78(53)
      abb78(55)=mB**3
      abb78(56)=abb78(55)*abb78(6)
      abb78(57)=abb78(56)*spbl5k1
      abb78(58)=abb78(17)*abb78(57)
      abb78(42)=abb78(6)*abb78(33)*spbl5k1*mB**5*abb78(42)
      abb78(42)=abb78(58)+abb78(42)
      abb78(42)=abb78(42)*abb78(38)
      abb78(59)=-abb78(18)*abb78(17)
      abb78(60)=abb78(59)*spbl5k3
      abb78(33)=abb78(13)*abb78(33)*abb78(55)
      abb78(61)=-spbl5k1*abb78(33)
      abb78(62)=abb78(61)*abb78(35)
      abb78(60)=abb78(60)+abb78(62)
      abb78(62)=spal5k7*abb78(60)
      abb78(63)=abb78(59)*spbk3k1
      abb78(64)=abb78(8)*spbk3k1
      abb78(61)=abb78(61)*abb78(64)
      abb78(61)=abb78(63)+abb78(61)
      abb78(63)=spak1k7*abb78(61)
      abb78(65)=abb78(6)**2
      abb78(32)=abb78(37)*abb78(65)*abb78(3)*abb78(32)
      abb78(66)=-spbk3k1*abb78(32)
      abb78(42)=abb78(63)+abb78(62)+abb78(42)+abb78(54)+abb78(66)-abb78(44)
      abb78(42)=8.0_ki*abb78(42)
      abb78(44)=8.0_ki*spak4k7
      abb78(54)=abb78(47)*abb78(44)
      abb78(24)=-4.0_ki*abb78(24)
      abb78(62)=spak1k2*spbk3k1
      abb78(63)=abb78(22)*abb78(62)
      abb78(66)=-spbl5k3*abb78(27)
      abb78(63)=abb78(66)+abb78(63)
      abb78(63)=spak4l6*abb78(63)
      abb78(66)=spbl5k3*abb78(13)*mB
      abb78(67)=abb78(35)*abb78(17)*abb78(55)
      abb78(66)=abb78(66)+abb78(67)
      abb78(67)=-spbk2k1*abb78(66)
      abb78(68)=-abb78(28)*abb78(19)
      abb78(69)=spak1k2*abb78(51)
      abb78(68)=abb78(68)+abb78(69)
      abb78(68)=spbk7k1*abb78(68)
      abb78(56)=-abb78(56)*abb78(17)
      abb78(69)=abb78(64)*abb78(56)
      abb78(48)=-abb78(48)*abb78(13)
      abb78(70)=abb78(48)*spbk3k1
      abb78(69)=abb78(69)+abb78(70)
      abb78(71)=-es12*abb78(69)
      abb78(63)=abb78(71)+abb78(68)+abb78(67)+abb78(63)
      abb78(63)=4.0_ki*abb78(63)
      abb78(67)=8.0_ki*abb78(70)
      abb78(55)=abb78(13)*abb78(65)*abb78(55)
      abb78(65)=abb78(55)*abb78(7)
      abb78(68)=-spbk3k1*abb78(65)
      abb78(68)=abb78(68)+abb78(69)
      abb78(68)=8.0_ki*abb78(68)
      abb78(70)=4.0_ki*abb78(70)
      abb78(31)=abb78(31)*spbl6k2
      abb78(30)=abb78(31)+abb78(30)
      abb78(31)=spbk3k1*abb78(30)
      abb78(13)=spbl6k3*abb78(13)*abb78(16)
      abb78(71)=spbk2k1*abb78(7)
      abb78(72)=-abb78(71)*abb78(13)
      abb78(73)=spak4l5*abb78(47)
      abb78(74)=-abb78(3)*abb78(14)
      abb78(10)=abb78(10)*abb78(3)
      abb78(75)=abb78(9)*abb78(10)
      abb78(74)=abb78(75)+abb78(74)
      abb78(75)=abb78(74)*spbk7l6
      abb78(76)=-abb78(43)*abb78(75)
      abb78(31)=abb78(76)+abb78(73)+abb78(72)+abb78(31)
      abb78(31)=4.0_ki*abb78(31)
      abb78(64)=-abb78(33)*abb78(64)
      abb78(17)=-mB*abb78(17)
      abb78(72)=abb78(17)*spbk3k1
      abb78(64)=abb78(64)+abb78(72)
      abb78(72)=-8.0_ki*abb78(64)
      abb78(73)=abb78(48)*spbl6k1
      abb78(59)=abb78(73)-abb78(59)
      abb78(73)=8.0_ki*abb78(59)
      abb78(58)=-abb78(7)*abb78(58)
      abb78(76)=spbl6k1*abb78(65)
      abb78(58)=abb78(58)+abb78(76)
      abb78(58)=8.0_ki*abb78(58)
      abb78(59)=-4.0_ki*abb78(59)
      abb78(76)=spbl6k1*abb78(69)
      abb78(61)=abb78(76)-abb78(61)
      abb78(61)=spak1k2*abb78(61)
      abb78(66)=spbl6k1*abb78(66)
      abb78(60)=spak2l5*abb78(60)
      abb78(60)=abb78(60)+abb78(66)+abb78(61)
      abb78(60)=4.0_ki*abb78(60)
      abb78(30)=spbl5k3*abb78(30)
      abb78(61)=-abb78(19)*abb78(75)
      abb78(45)=abb78(45)*spak2k7
      abb78(66)=-spbk7k3*abb78(45)
      abb78(47)=spak1k4*abb78(47)
      abb78(13)=abb78(47)+abb78(66)+abb78(61)-abb78(13)+abb78(30)
      abb78(13)=4.0_ki*abb78(13)
      abb78(30)=-abb78(33)*abb78(35)
      abb78(17)=abb78(17)*spbl5k3
      abb78(17)=abb78(30)+abb78(17)
      abb78(30)=-8.0_ki*abb78(17)
      abb78(33)=4.0_ki*abb78(48)
      abb78(35)=-spbk7k3*abb78(33)
      abb78(47)=4.0_ki*abb78(45)
      abb78(61)=-spbl6k3*abb78(47)
      abb78(66)=-spbl6k3*abb78(33)
      abb78(47)=spbl5k3*abb78(47)
      abb78(33)=spbl5k3*abb78(33)
      abb78(39)=spbl6k2*abb78(39)*abb78(37)
      abb78(75)=-spak1k7*spbl6k1
      abb78(76)=spbl6l5*spal5k7
      abb78(75)=abb78(76)+abb78(75)
      abb78(11)=abb78(11)*abb78(75)
      abb78(75)=abb78(12)*spak2k7
      abb78(21)=-abb78(21)*abb78(75)
      abb78(11)=abb78(39)+abb78(21)+abb78(11)
      abb78(11)=4.0_ki*abb78(11)
      abb78(21)=-abb78(57)*abb78(12)
      abb78(37)=8.0_ki*abb78(21)*abb78(37)
      abb78(18)=abb78(14)*abb78(18)
      abb78(39)=spbl5k1*abb78(41)
      abb78(39)=abb78(39)-abb78(18)
      abb78(39)=4.0_ki*abb78(39)
      abb78(41)=abb78(3)-mB
      abb78(41)=-abb78(41)*abb78(14)
      abb78(10)=-abb78(29)+abb78(10)
      abb78(9)=abb78(10)*abb78(9)
      abb78(9)=abb78(9)+abb78(41)
      abb78(9)=spbl6k1*abb78(9)
      abb78(9)=abb78(9)+abb78(27)
      abb78(9)=4.0_ki*abb78(9)
      abb78(10)=abb78(49)*spbl6k1
      abb78(10)=abb78(10)-abb78(22)
      abb78(27)=-spak1k2*abb78(10)
      abb78(29)=-spbl6l5*abb78(74)
      abb78(27)=abb78(27)+abb78(29)
      abb78(27)=4.0_ki*abb78(27)
      abb78(14)=-abb78(16)*abb78(14)
      abb78(16)=abb78(20)*abb78(40)
      abb78(14)=abb78(16)+abb78(14)
      abb78(14)=spbl6k3*spak2k7*abb78(14)
      abb78(16)=-spbk7k3*abb78(23)*spak2k7**2
      abb78(14)=abb78(16)+abb78(14)-abb78(26)
      abb78(14)=4.0_ki*abb78(14)
      abb78(16)=-spbk7k3*spak2k7
      abb78(20)=-spak2l6*spbl6k3
      abb78(16)=abb78(20)+abb78(16)-abb78(62)
      abb78(16)=abb78(49)*abb78(16)
      abb78(20)=spbl5k3*abb78(28)
      abb78(16)=abb78(20)+abb78(16)
      abb78(16)=4.0_ki*abb78(16)
      abb78(20)=abb78(23)*spak2k7
      abb78(23)=abb78(22)*spak1k7
      abb78(26)=-abb78(23)-abb78(20)
      abb78(26)=abb78(43)*abb78(26)
      abb78(28)=abb78(21)*abb78(38)
      abb78(29)=spak4k7*abb78(28)
      abb78(38)=abb78(22)*spal5k7
      abb78(40)=-abb78(19)*abb78(38)
      abb78(26)=abb78(40)+abb78(29)+abb78(26)
      abb78(26)=4.0_ki*abb78(26)
      abb78(29)=-4.0_ki*abb78(51)
      abb78(12)=-mB*abb78(12)
      abb78(40)=4.0_ki*abb78(12)
      abb78(41)=abb78(43)*abb78(40)
      abb78(57)=abb78(19)*abb78(40)
      abb78(62)=-spbl5k3*abb78(38)
      abb78(74)=-spbk3k1*abb78(23)
      abb78(25)=abb78(74)+abb78(62)-abb78(25)+abb78(28)
      abb78(25)=4.0_ki*spak4l6*abb78(25)
      abb78(28)=8.0_ki*abb78(51)
      abb78(40)=abb78(40)*spak4l6
      abb78(51)=abb78(40)*spbk3k1
      abb78(50)=abb78(50)*spbl5k1
      abb78(18)=abb78(6)*abb78(18)
      abb78(18)=abb78(50)-abb78(18)
      abb78(18)=abb78(18)*spak4l5
      abb78(50)=abb78(55)*abb78(71)
      abb78(18)=abb78(18)-abb78(50)
      abb78(18)=4.0_ki*abb78(18)
      abb78(50)=-4.0_ki*abb78(69)
      abb78(40)=spbl5k3*abb78(40)
      abb78(55)=4.0_ki*abb78(49)
      abb78(62)=8.0_ki*abb78(12)
      abb78(43)=-abb78(43)*abb78(62)
      abb78(69)=abb78(22)*spak4l5
      abb78(71)=abb78(71)*abb78(56)
      abb78(69)=abb78(69)+abb78(71)
      abb78(69)=4.0_ki*abb78(69)
      abb78(64)=4.0_ki*abb78(64)
      abb78(38)=4.0_ki*abb78(38)
      abb78(71)=spbk2k1*abb78(32)
      abb78(36)=spak4l5*abb78(36)*abb78(75)
      abb78(36)=abb78(71)+abb78(36)
      abb78(36)=4.0_ki*abb78(36)
      abb78(71)=abb78(44)*abb78(22)
      abb78(21)=-abb78(7)*abb78(21)*abb78(44)
      abb78(44)=-4.0_ki*spak4k7*abb78(22)
      abb78(22)=spak1k4*abb78(22)
      abb78(22)=abb78(22)+abb78(56)
      abb78(22)=4.0_ki*abb78(22)
      abb78(34)=spak2k7*abb78(34)
      abb78(32)=abb78(34)-abb78(45)+abb78(32)
      abb78(32)=4.0_ki*spbk3k2*abb78(32)
      abb78(19)=-abb78(12)*abb78(19)
      abb78(34)=abb78(49)*abb78(53)
      abb78(19)=abb78(19)+abb78(34)
      abb78(19)=8.0_ki*abb78(19)
      abb78(12)=-spbl5k3*abb78(12)
      abb78(34)=spbl6k3*abb78(49)
      abb78(12)=abb78(12)+abb78(34)
      abb78(12)=spak4l6*abb78(12)
      abb78(34)=abb78(56)*abb78(8)
      abb78(34)=abb78(34)+abb78(48)
      abb78(45)=abb78(65)-abb78(34)
      abb78(45)=spbk3k2*abb78(45)
      abb78(12)=abb78(12)+abb78(45)
      abb78(12)=4.0_ki*abb78(12)
      abb78(10)=spak1k4*abb78(10)
      abb78(45)=-spbl6k2*abb78(65)
      abb78(48)=spbl6l5*spak4l5*abb78(49)
      abb78(10)=abb78(48)+abb78(10)+abb78(45)-abb78(56)
      abb78(10)=4.0_ki*abb78(10)
      abb78(34)=-spbl6k3*abb78(34)
      abb78(17)=abb78(34)+abb78(17)
      abb78(17)=4.0_ki*abb78(17)
      abb78(20)=abb78(20)-abb78(23)
      abb78(20)=4.0_ki*abb78(20)
      R2d78=0.0_ki
      rat2 = rat2 + R2d78
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='78' value='", &
          & R2d78, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd78h3