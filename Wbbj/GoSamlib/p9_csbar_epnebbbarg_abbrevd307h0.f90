module     p9_csbar_epnebbbarg_abbrevd307h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(79), public :: abb307
   complex(ki), public :: R2d307
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
      abb307(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb307(2)=1.0_ki/(es34+es567-es12-es234)
      abb307(3)=sqrt(mB**2)
      abb307(4)=NC**(-1)
      abb307(5)=spbl6k2**(-1)
      abb307(6)=spbl5k2**(-1)
      abb307(7)=spak2l6**(-1)
      abb307(8)=abb307(4)**2
      abb307(9)=abb307(8)*c2
      abb307(10)=mB*spbk3k1
      abb307(11)=abb307(9)*abb307(10)
      abb307(12)=TR*gW
      abb307(12)=abb307(12)**2*i_*CVSC*abb307(2)*abb307(1)
      abb307(13)=abb307(12)*abb307(6)
      abb307(14)=abb307(13)*spak2l6
      abb307(15)=abb307(11)*abb307(14)
      abb307(16)=abb307(10)*abb307(4)
      abb307(17)=abb307(13)*abb307(16)
      abb307(18)=abb307(17)*c1
      abb307(19)=abb307(18)*spak2l6
      abb307(20)=abb307(17)*c3
      abb307(21)=abb307(20)*spak2l6
      abb307(15)=-abb307(21)+abb307(15)-abb307(19)
      abb307(19)=abb307(3)**2
      abb307(21)=-abb307(19)*abb307(15)
      abb307(22)=spbk3k2*spak3k4
      abb307(23)=spbk2k1*spak1k4
      abb307(22)=abb307(22)+abb307(23)
      abb307(23)=spbe7l6*spal6e7
      abb307(24)=abb307(23)*abb307(21)*abb307(22)
      abb307(25)=c1+c3
      abb307(26)=abb307(3)*spbk3k1
      abb307(27)=abb307(26)*abb307(4)
      abb307(28)=abb307(27)*abb307(25)
      abb307(29)=abb307(26)*abb307(9)
      abb307(28)=abb307(28)-abb307(29)
      abb307(29)=abb307(12)*spak2l6
      abb307(30)=abb307(29)*abb307(28)
      abb307(31)=abb307(30)*spae7k7
      abb307(32)=abb307(31)*spbe7l6
      abb307(33)=spal5l6*spak3k4
      abb307(34)=-abb307(33)*abb307(32)
      abb307(35)=spbk3k1*abb307(4)
      abb307(36)=-abb307(25)*abb307(35)
      abb307(37)=abb307(9)*spbk3k1
      abb307(36)=-abb307(37)-abb307(36)
      abb307(38)=mB**2
      abb307(39)=abb307(12)*abb307(5)
      abb307(40)=abb307(38)*abb307(39)
      abb307(40)=abb307(40)-abb307(29)
      abb307(36)=spak2l5*abb307(36)*abb307(40)*abb307(3)
      abb307(40)=spae7k7*spbe7k2
      abb307(41)=abb307(40)*abb307(36)
      abb307(42)=spak3k4*abb307(41)
      abb307(34)=abb307(34)+abb307(42)
      abb307(34)=spbk7k3*abb307(34)
      abb307(42)=spal5l6*spak1k4
      abb307(32)=abb307(42)*abb307(32)
      abb307(41)=-spak1k4*abb307(41)
      abb307(32)=abb307(32)+abb307(41)
      abb307(32)=spbk7k1*abb307(32)
      abb307(16)=abb307(16)*abb307(12)
      abb307(41)=abb307(25)*abb307(16)
      abb307(10)=abb307(8)*abb307(10)
      abb307(43)=abb307(10)*abb307(12)*c2
      abb307(41)=abb307(41)-abb307(43)
      abb307(43)=abb307(42)*spbe7k1
      abb307(44)=abb307(33)*spbe7k3
      abb307(43)=abb307(43)-abb307(44)
      abb307(43)=abb307(43)*spak2e7
      abb307(44)=abb307(43)*abb307(19)*abb307(41)
      abb307(45)=abb307(28)*abb307(38)
      abb307(46)=spak2e7*abb307(22)
      abb307(47)=abb307(13)*spbk7e7
      abb307(48)=-spal6k7*abb307(46)*abb307(45)*abb307(47)
      abb307(24)=abb307(32)+abb307(34)+abb307(48)+abb307(24)+abb307(44)
      abb307(24)=4.0_ki*abb307(24)
      abb307(32)=abb307(45)*abb307(14)
      abb307(32)=-abb307(36)+abb307(32)
      abb307(32)=abb307(22)*abb307(32)
      abb307(34)=abb307(42)*spbl6k1
      abb307(36)=abb307(33)*spbl6k3
      abb307(34)=abb307(34)-abb307(36)
      abb307(36)=abb307(30)*abb307(34)
      abb307(32)=abb307(36)+abb307(32)
      abb307(32)=8.0_ki*abb307(32)
      abb307(18)=abb307(20)+abb307(18)
      abb307(20)=spbk7e7*abb307(18)
      abb307(36)=abb307(11)*abb307(47)
      abb307(20)=abb307(20)-abb307(36)
      abb307(36)=abb307(20)*spak2e7
      abb307(44)=abb307(22)*abb307(36)
      abb307(48)=-8.0_ki*spal6k7*abb307(44)
      abb307(49)=abb307(22)*abb307(15)
      abb307(50)=-16.0_ki*abb307(49)
      abb307(51)=spak4e7*spbe7k2
      abb307(52)=abb307(21)*abb307(51)
      abb307(12)=abb307(12)*spbk7e7
      abb307(53)=abb307(12)*spak2l6
      abb307(28)=abb307(53)*abb307(28)
      abb307(54)=abb307(28)*spal5k7
      abb307(55)=abb307(54)*spak4e7
      abb307(28)=abb307(28)*spal5e7
      abb307(56)=abb307(28)*spak4k7
      abb307(52)=-abb307(56)+abb307(52)+abb307(55)
      abb307(52)=8.0_ki*abb307(52)
      abb307(55)=abb307(30)*spak4l5
      abb307(55)=32.0_ki*abb307(55)
      abb307(56)=abb307(22)*abb307(20)
      abb307(57)=abb307(47)*abb307(5)
      abb307(58)=mB**3
      abb307(59)=abb307(57)*abb307(58)
      abb307(60)=-abb307(25)*abb307(59)*abb307(35)
      abb307(37)=abb307(59)*abb307(37)
      abb307(37)=abb307(37)+abb307(60)
      abb307(37)=abb307(37)*abb307(7)
      abb307(59)=-abb307(22)*abb307(37)
      abb307(59)=abb307(59)-abb307(56)
      abb307(59)=spak2k7*spal6e7*abb307(59)
      abb307(16)=abb307(25)*abb307(16)*abb307(5)
      abb307(60)=abb307(11)*abb307(39)
      abb307(60)=abb307(60)-abb307(16)
      abb307(61)=abb307(60)*spae7k7
      abb307(42)=abb307(42)*spbk7k1
      abb307(33)=abb307(33)*spbk7k3
      abb307(33)=abb307(42)-abb307(33)
      abb307(42)=-abb307(61)*spbe7l6*abb307(33)
      abb307(42)=abb307(42)+abb307(59)
      abb307(42)=8.0_ki*abb307(42)
      abb307(26)=abb307(38)*abb307(26)
      abb307(59)=abb307(58)*spbk3k1
      abb307(26)=abb307(26)+abb307(59)
      abb307(59)=abb307(13)*abb307(5)
      abb307(8)=abb307(26)*abb307(8)*abb307(59)
      abb307(10)=abb307(14)*abb307(10)
      abb307(8)=abb307(8)-abb307(10)
      abb307(8)=abb307(8)*c2
      abb307(10)=abb307(27)*abb307(38)
      abb307(26)=abb307(58)*abb307(35)
      abb307(10)=abb307(10)+abb307(26)
      abb307(10)=abb307(59)*abb307(10)
      abb307(17)=abb307(17)*spak2l6
      abb307(10)=-abb307(17)+abb307(10)
      abb307(10)=abb307(25)*abb307(10)
      abb307(8)=abb307(8)-abb307(10)
      abb307(8)=-abb307(8)*abb307(22)
      abb307(10)=-abb307(60)*abb307(34)
      abb307(8)=abb307(10)+abb307(8)
      abb307(8)=16.0_ki*abb307(8)
      abb307(10)=abb307(20)*spal6e7
      abb307(17)=abb307(10)*spak4k7
      abb307(17)=16.0_ki*abb307(17)
      abb307(20)=abb307(60)*spak4l5
      abb307(25)=abb307(11)*abb307(13)
      abb307(18)=abb307(25)-abb307(18)
      abb307(25)=abb307(18)*spak4l6
      abb307(20)=abb307(20)-abb307(25)
      abb307(20)=32.0_ki*abb307(20)
      abb307(23)=abb307(49)*abb307(23)
      abb307(25)=-abb307(41)*abb307(43)
      abb307(23)=abb307(23)+abb307(25)
      abb307(23)=4.0_ki*abb307(23)
      abb307(25)=abb307(51)*abb307(15)
      abb307(25)=8.0_ki*abb307(25)
      abb307(26)=4.0_ki*abb307(46)
      abb307(27)=abb307(26)*abb307(60)
      abb307(34)=-abb307(19)*abb307(27)
      abb307(35)=spbe7k3*spak3k4
      abb307(38)=spbe7k1*spak1k4
      abb307(35)=abb307(35)-abb307(38)
      abb307(38)=4.0_ki*abb307(35)
      abb307(41)=-abb307(21)*abb307(38)
      abb307(16)=spbk7e7*abb307(16)
      abb307(12)=abb307(12)*abb307(5)
      abb307(11)=abb307(12)*abb307(11)
      abb307(11)=abb307(16)-abb307(11)
      abb307(16)=8.0_ki*spak4l5
      abb307(43)=abb307(11)*abb307(16)
      abb307(49)=abb307(43)*spak2k7
      abb307(58)=-abb307(15)*abb307(38)
      abb307(26)=abb307(57)*abb307(26)*abb307(45)
      abb307(43)=abb307(43)*spak2e7
      abb307(45)=16.0_ki*abb307(18)
      abb307(57)=-spak3k4*abb307(45)
      abb307(59)=4.0_ki*spak3k4
      abb307(62)=abb307(36)*abb307(59)
      abb307(37)=abb307(46)*abb307(37)
      abb307(37)=abb307(44)+abb307(37)
      abb307(44)=4.0_ki*spak2k7
      abb307(37)=abb307(37)*abb307(44)
      abb307(46)=abb307(36)*spak4k7
      abb307(46)=8.0_ki*abb307(46)
      abb307(63)=abb307(45)*spak2k4
      abb307(45)=spak1k4*abb307(45)
      abb307(64)=4.0_ki*spak1k4
      abb307(65)=-abb307(36)*abb307(64)
      abb307(31)=abb307(31)*abb307(38)
      abb307(35)=-8.0_ki*abb307(61)*abb307(35)
      abb307(38)=8.0_ki*spak3k4
      abb307(66)=abb307(30)*abb307(38)
      abb307(67)=16.0_ki*abb307(60)
      abb307(68)=-spak3k4*abb307(67)
      abb307(69)=8.0_ki*spak1k4
      abb307(70)=-abb307(30)*abb307(69)
      abb307(67)=spak1k4*abb307(67)
      abb307(71)=c3*abb307(4)
      abb307(72)=c1*abb307(4)
      abb307(9)=-abb307(71)+abb307(9)-abb307(72)
      abb307(71)=-abb307(9)*abb307(3)
      abb307(72)=spal5k7*spak4e7
      abb307(73)=spal5e7*spak4k7
      abb307(72)=abb307(72)-abb307(73)
      abb307(53)=-abb307(72)*abb307(53)*abb307(71)
      abb307(9)=mB*abb307(9)
      abb307(14)=abb307(14)*abb307(9)*abb307(51)
      abb307(19)=abb307(19)*abb307(14)
      abb307(19)=abb307(19)+abb307(53)
      abb307(51)=-spbk4k1*abb307(19)
      abb307(21)=abb307(21)*spbe7k2
      abb307(21)=abb307(21)+abb307(54)
      abb307(53)=spak3e7*abb307(21)
      abb307(54)=-spak3k7*abb307(28)
      abb307(51)=abb307(54)+abb307(53)+abb307(51)
      abb307(51)=4.0_ki*abb307(51)
      abb307(29)=abb307(29)*abb307(71)
      abb307(53)=spbk4k1*spak4l5
      abb307(54)=-abb307(29)*abb307(53)
      abb307(71)=-spak3l5*abb307(30)
      abb307(54)=abb307(54)+abb307(71)
      abb307(54)=16.0_ki*abb307(54)
      abb307(47)=-spak4k7*abb307(47)*abb307(9)
      abb307(71)=abb307(47)*spbk4k1
      abb307(72)=spal6e7*abb307(71)
      abb307(73)=spak3k7*abb307(10)
      abb307(72)=abb307(72)+abb307(73)
      abb307(72)=8.0_ki*abb307(72)
      abb307(39)=-abb307(39)*abb307(9)
      abb307(73)=abb307(39)*abb307(53)
      abb307(13)=-abb307(13)*abb307(9)
      abb307(74)=abb307(13)*spak4l6
      abb307(75)=spbk4k1*abb307(74)
      abb307(76)=spak3l5*abb307(60)
      abb307(77)=-spak3l6*abb307(18)
      abb307(75)=abb307(77)+abb307(76)-abb307(73)+abb307(75)
      abb307(75)=16.0_ki*abb307(75)
      abb307(15)=abb307(15)*spbe7k2
      abb307(76)=spak3e7*abb307(15)
      abb307(77)=spbk4k1*abb307(14)
      abb307(76)=abb307(77)+abb307(76)
      abb307(76)=4.0_ki*abb307(76)
      abb307(77)=abb307(11)*spak3l5
      abb307(9)=-abb307(12)*abb307(9)
      abb307(12)=abb307(9)*abb307(53)
      abb307(12)=abb307(77)+abb307(12)
      abb307(53)=abb307(12)*abb307(44)
      abb307(77)=4.0_ki*spak2e7
      abb307(12)=-abb307(12)*abb307(77)
      abb307(71)=-spak2e7*abb307(71)
      abb307(78)=-spak3k7*abb307(36)
      abb307(71)=abb307(71)+abb307(78)
      abb307(71)=4.0_ki*abb307(71)
      abb307(13)=abb307(13)*spak2k4
      abb307(78)=spbk4k1*abb307(13)
      abb307(79)=-spak2k3*abb307(18)
      abb307(78)=abb307(78)+abb307(79)
      abb307(78)=8.0_ki*abb307(78)
      abb307(19)=spbk4k3*abb307(19)
      abb307(21)=-spak1e7*abb307(21)
      abb307(28)=spak1k7*abb307(28)
      abb307(19)=abb307(28)+abb307(21)+abb307(19)
      abb307(19)=4.0_ki*abb307(19)
      abb307(21)=spbk4k3*spak4l5
      abb307(28)=abb307(29)*abb307(21)
      abb307(29)=spak1l5*abb307(30)
      abb307(28)=abb307(28)+abb307(29)
      abb307(28)=16.0_ki*abb307(28)
      abb307(29)=abb307(47)*spbk4k3
      abb307(30)=-spal6e7*abb307(29)
      abb307(47)=-spak1k7*abb307(10)
      abb307(30)=abb307(30)+abb307(47)
      abb307(30)=8.0_ki*abb307(30)
      abb307(39)=abb307(39)*abb307(21)
      abb307(47)=-spbk4k3*abb307(74)
      abb307(74)=-spak1l5*abb307(60)
      abb307(79)=spak1l6*abb307(18)
      abb307(47)=abb307(79)+abb307(74)+abb307(39)+abb307(47)
      abb307(47)=16.0_ki*abb307(47)
      abb307(15)=-spak1e7*abb307(15)
      abb307(14)=-spbk4k3*abb307(14)
      abb307(14)=abb307(14)+abb307(15)
      abb307(14)=4.0_ki*abb307(14)
      abb307(11)=abb307(11)*spak1l5
      abb307(9)=abb307(9)*abb307(21)
      abb307(9)=abb307(11)+abb307(9)
      abb307(11)=-abb307(9)*abb307(44)
      abb307(9)=abb307(9)*abb307(77)
      abb307(15)=spak2e7*abb307(29)
      abb307(21)=spak1k7*abb307(36)
      abb307(15)=abb307(15)+abb307(21)
      abb307(15)=4.0_ki*abb307(15)
      abb307(13)=-spbk4k3*abb307(13)
      abb307(21)=-spak1k2*abb307(18)
      abb307(13)=abb307(13)+abb307(21)
      abb307(13)=8.0_ki*abb307(13)
      abb307(21)=abb307(61)*spbe7k2
      abb307(16)=abb307(16)*abb307(21)
      abb307(29)=abb307(40)*abb307(73)
      abb307(36)=-spak3l5*abb307(21)
      abb307(29)=abb307(29)+abb307(36)
      abb307(29)=4.0_ki*abb307(29)
      abb307(36)=-abb307(40)*abb307(39)
      abb307(39)=spak1l5*abb307(21)
      abb307(36)=abb307(36)+abb307(39)
      abb307(36)=4.0_ki*abb307(36)
      abb307(33)=abb307(21)*abb307(33)
      abb307(39)=spal6k7*spal6e7*abb307(56)
      abb307(33)=abb307(39)+abb307(33)
      abb307(33)=4.0_ki*abb307(33)
      abb307(22)=8.0_ki*spal5l6*abb307(60)*abb307(22)
      abb307(39)=-abb307(10)*abb307(59)
      abb307(40)=abb307(18)*abb307(38)
      abb307(44)=abb307(21)*abb307(59)
      abb307(38)=abb307(60)*abb307(38)
      abb307(10)=abb307(10)*abb307(64)
      abb307(18)=-abb307(18)*abb307(69)
      abb307(21)=-abb307(21)*abb307(64)
      abb307(56)=-abb307(60)*abb307(69)
      R2d307=0.0_ki
      rat2 = rat2 + R2d307
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='307' value='", &
          & R2d307, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd307h0