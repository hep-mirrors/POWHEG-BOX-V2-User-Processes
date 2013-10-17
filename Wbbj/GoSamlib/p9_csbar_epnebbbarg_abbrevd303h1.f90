module     p9_csbar_epnebbbarg_abbrevd303h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(72), public :: abb303
   complex(ki), public :: R2d303
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
      abb303(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb303(2)=1.0_ki/(es34+es567-es12-es234)
      abb303(3)=sqrt(mB**2)
      abb303(4)=NC**(-1)
      abb303(5)=spak2l5**(-1)
      abb303(6)=spbl6k2**(-1)
      abb303(7)=spak2l6**(-1)
      abb303(8)=c1-c3
      abb303(9)=TR*gW
      abb303(9)=abb303(9)**2*i_*CVSC*abb303(2)*abb303(1)
      abb303(10)=abb303(9)*spbk3k1
      abb303(11)=abb303(4)*abb303(10)
      abb303(12)=-abb303(11)*abb303(8)
      abb303(13)=abb303(10)*c4
      abb303(14)=abb303(10)*c2
      abb303(15)=abb303(12)+abb303(13)-abb303(14)
      abb303(16)=abb303(3)*mB
      abb303(17)=abb303(16)*abb303(6)
      abb303(18)=-abb303(17)*abb303(15)
      abb303(19)=spbl5k2*spak2e7
      abb303(20)=-abb303(19)*abb303(18)
      abb303(21)=abb303(20)*spak3k4
      abb303(12)=abb303(13)+abb303(12)-abb303(14)
      abb303(13)=-spak2e7*abb303(12)
      abb303(14)=abb303(3)*mB**3
      abb303(22)=abb303(6)*abb303(14)
      abb303(23)=-abb303(22)*abb303(13)
      abb303(24)=abb303(5)*spak3k4
      abb303(25)=abb303(23)*abb303(24)
      abb303(21)=abb303(21)-abb303(25)
      abb303(21)=abb303(21)*spbe7k3
      abb303(20)=abb303(20)*spak1k4
      abb303(25)=abb303(5)*spak1k4
      abb303(23)=abb303(23)*abb303(25)
      abb303(20)=abb303(20)-abb303(23)
      abb303(20)=abb303(20)*spbe7k1
      abb303(20)=abb303(21)-abb303(20)
      abb303(21)=es71+es12-es712
      abb303(23)=2.0_ki*abb303(21)
      abb303(20)=abb303(20)*abb303(23)
      abb303(26)=-spak2l6*abb303(15)
      abb303(27)=-abb303(16)*abb303(26)
      abb303(28)=abb303(27)*abb303(19)
      abb303(29)=spak3k4*abb303(28)
      abb303(14)=abb303(26)*spak2e7*abb303(14)
      abb303(30)=abb303(14)*abb303(24)
      abb303(29)=abb303(29)+abb303(30)
      abb303(29)=spbe7k3*abb303(29)
      abb303(28)=-spak1k4*abb303(28)
      abb303(14)=-abb303(14)*abb303(25)
      abb303(14)=abb303(28)+abb303(14)
      abb303(14)=spbe7k1*abb303(14)
      abb303(14)=abb303(29)+abb303(14)+abb303(20)
      abb303(14)=2.0_ki*abb303(14)
      abb303(20)=mB**2
      abb303(28)=-abb303(20)*abb303(26)
      abb303(29)=abb303(28)*abb303(24)
      abb303(30)=-spbl5k2*abb303(26)
      abb303(31)=abb303(30)*spak3k4
      abb303(29)=abb303(29)-abb303(31)
      abb303(31)=spbk7k3*abb303(29)
      abb303(32)=abb303(28)*abb303(25)
      abb303(30)=abb303(30)*spak1k4
      abb303(30)=abb303(32)-abb303(30)
      abb303(32)=-spbk7k1*abb303(30)
      abb303(31)=abb303(32)+abb303(31)
      abb303(31)=spak2k7*abb303(31)
      abb303(23)=abb303(23)*abb303(18)
      abb303(23)=abb303(23)-abb303(27)
      abb303(32)=spbl5k3*spak3k4
      abb303(33)=spbl5k1*spak1k4
      abb303(32)=abb303(32)-abb303(33)
      abb303(23)=abb303(32)*abb303(23)
      abb303(33)=abb303(15)*spak2l6**2
      abb303(34)=spbl5k2*abb303(33)
      abb303(35)=spak3k4*abb303(34)
      abb303(33)=abb303(20)*abb303(33)
      abb303(36)=-abb303(33)*abb303(24)
      abb303(35)=abb303(35)+abb303(36)
      abb303(35)=spbl6k3*abb303(35)
      abb303(34)=-spak1k4*abb303(34)
      abb303(33)=abb303(33)*abb303(25)
      abb303(33)=abb303(34)+abb303(33)
      abb303(33)=spbl6k1*abb303(33)
      abb303(23)=abb303(33)+abb303(35)+abb303(31)+abb303(23)
      abb303(23)=4.0_ki*abb303(23)
      abb303(31)=-abb303(19)*abb303(26)
      abb303(33)=abb303(31)*spak3k4
      abb303(34)=abb303(20)*spak2e7
      abb303(35)=-abb303(34)*abb303(26)
      abb303(36)=abb303(35)*abb303(24)
      abb303(33)=abb303(33)-abb303(36)
      abb303(36)=abb303(33)*spbe7k3
      abb303(31)=abb303(31)*spak1k4
      abb303(35)=abb303(35)*abb303(25)
      abb303(31)=abb303(31)-abb303(35)
      abb303(35)=abb303(31)*spbe7k1
      abb303(35)=abb303(36)-abb303(35)
      abb303(36)=8.0_ki*abb303(35)
      abb303(37)=abb303(32)*abb303(26)
      abb303(37)=8.0_ki*abb303(37)
      abb303(38)=2.0_ki*abb303(18)
      abb303(39)=abb303(21)*abb303(38)
      abb303(27)=abb303(39)-abb303(27)
      abb303(39)=spak4e7*spbe7l5
      abb303(40)=abb303(39)*abb303(27)
      abb303(18)=-spbl5k2*abb303(18)
      abb303(41)=spal6e7*spbe7l6
      abb303(42)=abb303(41)*spak2k4
      abb303(43)=2.0_ki*abb303(42)
      abb303(44)=abb303(18)*abb303(43)
      abb303(40)=abb303(44)+abb303(40)
      abb303(40)=4.0_ki*abb303(40)
      abb303(44)=abb303(17)*abb303(10)
      abb303(45)=abb303(20)*abb303(6)
      abb303(46)=abb303(45)*abb303(10)
      abb303(47)=abb303(10)*spak2l6
      abb303(47)=-abb303(47)+abb303(46)+2.0_ki*abb303(44)
      abb303(48)=c2-c4
      abb303(49)=-spbl5k2*abb303(48)
      abb303(47)=-abb303(47)*abb303(49)
      abb303(50)=abb303(17)*abb303(11)
      abb303(51)=abb303(45)*abb303(11)
      abb303(52)=abb303(11)*spak2l6
      abb303(52)=2.0_ki*abb303(50)+abb303(51)-abb303(52)
      abb303(53)=abb303(8)*spbl5k2
      abb303(52)=-abb303(52)*abb303(53)
      abb303(47)=abb303(47)-abb303(52)
      abb303(52)=abb303(47)*spak2k4
      abb303(54)=spak4k7*spbk7l5
      abb303(55)=spak4l6*spbl6l5
      abb303(54)=abb303(54)-abb303(55)
      abb303(55)=-abb303(26)*abb303(54)
      abb303(56)=abb303(5)*spak2k4
      abb303(57)=abb303(28)*abb303(56)
      abb303(52)=abb303(52)+abb303(55)-abb303(57)
      abb303(52)=8.0_ki*abb303(52)
      abb303(55)=abb303(26)*abb303(39)
      abb303(57)=16.0_ki*abb303(55)
      abb303(10)=abb303(10)*spak2e7
      abb303(58)=-abb303(49)*abb303(10)
      abb303(11)=abb303(11)*spak2e7
      abb303(59)=abb303(53)*abb303(11)
      abb303(58)=abb303(58)+abb303(59)
      abb303(17)=abb303(45)-abb303(17)
      abb303(17)=abb303(17)*abb303(58)
      abb303(58)=-spak3k4*abb303(17)
      abb303(10)=-abb303(48)*abb303(10)
      abb303(11)=-abb303(8)*abb303(11)
      abb303(10)=abb303(10)+abb303(11)
      abb303(11)=abb303(6)*mB**4
      abb303(11)=abb303(11)-abb303(22)
      abb303(10)=abb303(11)*abb303(10)
      abb303(11)=-abb303(10)*abb303(24)
      abb303(11)=abb303(58)+abb303(11)
      abb303(11)=spbe7k3*abb303(11)
      abb303(17)=spak1k4*abb303(17)
      abb303(10)=abb303(10)*abb303(25)
      abb303(10)=abb303(17)+abb303(10)
      abb303(10)=spbe7k1*abb303(10)
      abb303(17)=-abb303(38)*abb303(41)*abb303(32)
      abb303(10)=abb303(11)+abb303(10)+abb303(17)
      abb303(10)=4.0_ki*abb303(10)
      abb303(11)=abb303(44)+2.0_ki*abb303(46)
      abb303(11)=abb303(48)*abb303(11)
      abb303(17)=abb303(50)+2.0_ki*abb303(51)
      abb303(17)=abb303(8)*abb303(17)
      abb303(11)=abb303(11)+abb303(17)
      abb303(17)=8.0_ki*abb303(32)
      abb303(11)=abb303(11)*abb303(17)
      abb303(22)=abb303(44)-abb303(46)
      abb303(22)=-abb303(22)*abb303(48)
      abb303(38)=abb303(50)-abb303(51)
      abb303(38)=-abb303(38)*abb303(8)
      abb303(22)=abb303(38)+abb303(22)
      abb303(38)=8.0_ki*abb303(39)
      abb303(44)=abb303(22)*abb303(38)
      abb303(46)=abb303(26)*abb303(41)
      abb303(50)=-2.0_ki*abb303(32)
      abb303(50)=abb303(46)*abb303(50)
      abb303(35)=abb303(50)-abb303(35)
      abb303(35)=2.0_ki*abb303(35)
      abb303(50)=4.0_ki*abb303(55)
      abb303(12)=-abb303(19)*abb303(12)
      abb303(51)=abb303(12)*spak3k4
      abb303(34)=-abb303(34)*abb303(15)
      abb303(24)=abb303(34)*abb303(24)
      abb303(24)=abb303(51)-abb303(24)
      abb303(51)=-spbk7k3*abb303(24)
      abb303(55)=abb303(12)*spak1k4
      abb303(25)=abb303(34)*abb303(25)
      abb303(25)=abb303(55)-abb303(25)
      abb303(55)=spbk7k1*abb303(25)
      abb303(51)=abb303(55)+abb303(51)
      abb303(51)=spak2k7*abb303(51)
      abb303(33)=-spbl6k3*abb303(33)
      abb303(31)=spbl6k1*abb303(31)
      abb303(31)=abb303(31)+abb303(33)+abb303(51)
      abb303(31)=2.0_ki*abb303(31)
      abb303(33)=-abb303(13)*abb303(32)
      abb303(51)=4.0_ki*abb303(33)
      abb303(45)=-abb303(15)*abb303(45)*abb303(19)
      abb303(55)=abb303(45)*abb303(7)
      abb303(55)=abb303(55)-abb303(12)
      abb303(55)=spak2k4*abb303(55)
      abb303(58)=-abb303(13)*abb303(54)
      abb303(59)=abb303(34)*abb303(56)
      abb303(55)=abb303(59)+abb303(58)+abb303(55)
      abb303(55)=4.0_ki*abb303(55)
      abb303(32)=-4.0_ki*abb303(7)*abb303(32)*abb303(34)*abb303(6)
      abb303(33)=-2.0_ki*abb303(33)
      abb303(24)=spbe7k3*abb303(24)
      abb303(25)=-spbe7k1*abb303(25)
      abb303(24)=abb303(24)+abb303(25)
      abb303(24)=4.0_ki*spak2k7*abb303(24)
      abb303(25)=abb303(15)*spak2k7
      abb303(17)=abb303(25)*abb303(17)
      abb303(38)=abb303(38)*abb303(25)
      abb303(58)=abb303(15)*abb303(42)
      abb303(58)=8.0_ki*abb303(58)
      abb303(59)=abb303(15)*spak2k4
      abb303(59)=16.0_ki*abb303(59)
      abb303(60)=8.0_ki*abb303(46)
      abb303(61)=16.0_ki*abb303(26)
      abb303(62)=c3*abb303(4)
      abb303(63)=c1*abb303(4)
      abb303(64)=abb303(62)-abb303(63)
      abb303(65)=abb303(9)*abb303(6)
      abb303(66)=abb303(16)*abb303(65)
      abb303(67)=-abb303(66)*abb303(64)
      abb303(68)=abb303(67)*spbl5k2
      abb303(69)=abb303(49)*abb303(66)
      abb303(68)=abb303(68)-abb303(69)
      abb303(43)=abb303(68)*abb303(43)
      abb303(62)=abb303(63)+abb303(48)-abb303(62)
      abb303(63)=abb303(9)*spak2l6
      abb303(68)=abb303(63)*abb303(62)
      abb303(16)=abb303(39)*abb303(68)*abb303(16)
      abb303(69)=-abb303(66)*abb303(48)
      abb303(67)=abb303(69)-abb303(67)
      abb303(69)=2.0_ki*abb303(39)
      abb303(21)=abb303(21)*abb303(67)*abb303(69)
      abb303(16)=abb303(21)+abb303(43)-abb303(16)
      abb303(21)=-spbk4k1*abb303(16)
      abb303(27)=spbe7l5*abb303(27)
      abb303(43)=spak3e7*abb303(27)
      abb303(18)=abb303(18)*abb303(41)
      abb303(18)=2.0_ki*abb303(18)
      abb303(67)=spak2k3*abb303(18)
      abb303(21)=abb303(43)+abb303(67)+abb303(21)
      abb303(21)=2.0_ki*abb303(21)
      abb303(43)=abb303(20)*abb303(65)
      abb303(65)=-abb303(63)+abb303(43)+2.0_ki*abb303(66)
      abb303(65)=abb303(49)*abb303(65)
      abb303(67)=abb303(66)*abb303(4)
      abb303(69)=abb303(4)*abb303(43)
      abb303(63)=abb303(63)*abb303(4)
      abb303(63)=-abb303(63)+abb303(69)+2.0_ki*abb303(67)
      abb303(53)=-abb303(53)*abb303(63)
      abb303(53)=abb303(65)+abb303(53)
      abb303(53)=abb303(53)*spak2k4
      abb303(63)=abb303(56)*abb303(68)*abb303(20)
      abb303(53)=abb303(53)-abb303(63)
      abb303(63)=-spbk4k1*abb303(53)
      abb303(28)=abb303(28)*abb303(5)
      abb303(28)=abb303(28)-abb303(47)
      abb303(47)=-spak2k3*abb303(28)
      abb303(65)=spak3k7*spbk7l5
      abb303(70)=spak3l6*spbl6l5
      abb303(65)=abb303(65)-abb303(70)
      abb303(70)=-abb303(26)*abb303(65)
      abb303(71)=abb303(68)*spbk4k1
      abb303(72)=-abb303(71)*abb303(54)
      abb303(47)=abb303(47)+abb303(63)+abb303(72)+abb303(70)
      abb303(47)=4.0_ki*abb303(47)
      abb303(63)=abb303(71)*abb303(39)
      abb303(70)=abb303(26)*spbe7l5
      abb303(72)=abb303(70)*spak3e7
      abb303(63)=abb303(63)+abb303(72)
      abb303(72)=8.0_ki*abb303(63)
      abb303(66)=abb303(43)-abb303(66)
      abb303(66)=abb303(48)*abb303(66)
      abb303(67)=abb303(67)-abb303(69)
      abb303(8)=abb303(8)*abb303(67)
      abb303(8)=abb303(66)-abb303(8)
      abb303(8)=abb303(8)*abb303(39)
      abb303(66)=spbk4k1*abb303(8)
      abb303(22)=abb303(22)*spbe7l5
      abb303(67)=spak3e7*abb303(22)
      abb303(66)=abb303(66)+abb303(67)
      abb303(66)=4.0_ki*abb303(66)
      abb303(63)=-2.0_ki*abb303(63)
      abb303(67)=abb303(9)*spak2e7
      abb303(64)=-abb303(67)*abb303(64)
      abb303(48)=abb303(48)*abb303(67)
      abb303(48)=abb303(64)+abb303(48)
      abb303(20)=abb303(56)*abb303(20)*abb303(48)
      abb303(49)=abb303(49)*abb303(67)
      abb303(56)=abb303(64)*spbl5k2
      abb303(49)=abb303(49)-abb303(56)
      abb303(49)=abb303(49)*spak2k4
      abb303(48)=-abb303(54)*abb303(48)
      abb303(20)=abb303(48)+abb303(20)+abb303(49)
      abb303(48)=-spbk4k1*abb303(20)
      abb303(34)=abb303(34)*abb303(5)
      abb303(12)=abb303(34)-abb303(12)
      abb303(34)=-spak2k3*abb303(12)
      abb303(19)=spak2k4*abb303(62)*abb303(43)*abb303(19)
      abb303(43)=-spbk4k1*abb303(19)
      abb303(49)=-spak2k3*abb303(45)
      abb303(43)=abb303(43)+abb303(49)
      abb303(43)=abb303(7)*abb303(43)
      abb303(49)=abb303(13)*abb303(65)
      abb303(34)=abb303(43)+abb303(34)+abb303(48)+abb303(49)
      abb303(34)=2.0_ki*abb303(34)
      abb303(9)=-abb303(9)*abb303(62)
      abb303(43)=abb303(9)*spbk4k1
      abb303(48)=abb303(39)*spak2k7
      abb303(49)=abb303(43)*abb303(48)
      abb303(25)=abb303(25)*spbe7l5
      abb303(56)=spak3e7*abb303(25)
      abb303(49)=abb303(49)+abb303(56)
      abb303(49)=4.0_ki*abb303(49)
      abb303(56)=-abb303(42)*abb303(43)
      abb303(62)=abb303(15)*abb303(41)
      abb303(64)=-spak2k3*abb303(62)
      abb303(56)=abb303(56)+abb303(64)
      abb303(56)=4.0_ki*abb303(56)
      abb303(64)=abb303(15)*spak2k3
      abb303(43)=spak2k4*abb303(43)
      abb303(43)=abb303(43)+abb303(64)
      abb303(43)=8.0_ki*abb303(43)
      abb303(41)=4.0_ki*abb303(41)
      abb303(64)=-abb303(71)*abb303(41)
      abb303(65)=8.0_ki*abb303(71)
      abb303(16)=spbk4k3*abb303(16)
      abb303(27)=-spak1e7*abb303(27)
      abb303(18)=spak1k2*abb303(18)
      abb303(16)=abb303(27)+abb303(18)+abb303(16)
      abb303(16)=2.0_ki*abb303(16)
      abb303(18)=spbk4k3*abb303(53)
      abb303(27)=-spak1k2*abb303(28)
      abb303(28)=spak1k7*spbk7l5
      abb303(53)=spak1l6*spbl6l5
      abb303(28)=abb303(28)-abb303(53)
      abb303(53)=abb303(26)*abb303(28)
      abb303(67)=abb303(68)*spbk4k3
      abb303(54)=abb303(67)*abb303(54)
      abb303(18)=abb303(27)+abb303(18)+abb303(54)+abb303(53)
      abb303(18)=4.0_ki*abb303(18)
      abb303(27)=abb303(67)*abb303(39)
      abb303(39)=abb303(70)*spak1e7
      abb303(27)=abb303(27)+abb303(39)
      abb303(39)=-8.0_ki*abb303(27)
      abb303(8)=-spbk4k3*abb303(8)
      abb303(22)=-spak1e7*abb303(22)
      abb303(8)=abb303(8)+abb303(22)
      abb303(8)=4.0_ki*abb303(8)
      abb303(22)=2.0_ki*abb303(27)
      abb303(20)=spbk4k3*abb303(20)
      abb303(12)=-spak1k2*abb303(12)
      abb303(19)=spbk4k3*abb303(19)
      abb303(27)=-spak1k2*abb303(45)
      abb303(19)=abb303(19)+abb303(27)
      abb303(19)=abb303(7)*abb303(19)
      abb303(13)=-abb303(13)*abb303(28)
      abb303(12)=abb303(19)+abb303(12)+abb303(20)+abb303(13)
      abb303(12)=2.0_ki*abb303(12)
      abb303(9)=abb303(9)*spbk4k3
      abb303(13)=-abb303(9)*abb303(48)
      abb303(19)=-spak1e7*abb303(25)
      abb303(13)=abb303(13)+abb303(19)
      abb303(13)=4.0_ki*abb303(13)
      abb303(19)=abb303(42)*abb303(9)
      abb303(20)=-spak1k2*abb303(62)
      abb303(19)=abb303(19)+abb303(20)
      abb303(19)=4.0_ki*abb303(19)
      abb303(15)=abb303(15)*spak1k2
      abb303(9)=-spak2k4*abb303(9)
      abb303(9)=abb303(9)+abb303(15)
      abb303(9)=8.0_ki*abb303(9)
      abb303(15)=abb303(67)*abb303(41)
      abb303(20)=-8.0_ki*abb303(67)
      abb303(25)=4.0_ki*abb303(46)
      abb303(26)=8.0_ki*abb303(26)
      abb303(27)=abb303(29)*abb303(41)
      abb303(28)=-8.0_ki*abb303(29)
      abb303(29)=-abb303(30)*abb303(41)
      abb303(30)=8.0_ki*abb303(30)
      R2d303=0.0_ki
      rat2 = rat2 + R2d303
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='303' value='", &
          & R2d303, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd303h1