module     p9_csbar_epnebbbarg_abbrevd102h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(72), public :: abb102
   complex(ki), public :: R2d102
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
      abb102(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb102(2)=1.0_ki/(-es71+es56-es567+es234)
      abb102(3)=NC**(-1)
      abb102(4)=es56**(-1)
      abb102(5)=spak2l5**(-1)
      abb102(6)=spak2l6**(-1)
      abb102(7)=abb102(6)*spbl5k1
      abb102(8)=abb102(7)*spak2l5
      abb102(9)=abb102(8)*spbl5k3
      abb102(10)=abb102(5)*spbl6k1
      abb102(11)=abb102(10)*spak2l6
      abb102(12)=abb102(11)*spbl6k3
      abb102(9)=abb102(9)+abb102(12)
      abb102(12)=c3*abb102(3)
      abb102(13)=c4*abb102(3)**2
      abb102(12)=abb102(13)-abb102(12)
      abb102(13)=TR*gW
      abb102(12)=abb102(12)*CVSC*i_*mB*abb102(4)*abb102(2)*abb102(1)*abb102(13)&
      &**2
      abb102(13)=abb102(12)*spak2k4
      abb102(14)=-abb102(13)*abb102(9)
      abb102(15)=abb102(12)*abb102(7)
      abb102(16)=abb102(12)*abb102(10)
      abb102(17)=abb102(15)+abb102(16)
      abb102(18)=abb102(17)*spak1k2
      abb102(19)=abb102(18)*spbk3k1
      abb102(20)=spak2k4*abb102(19)
      abb102(21)=abb102(12)*spbl5k1
      abb102(22)=abb102(21)*spak2k4
      abb102(23)=-spbl6k3*abb102(22)
      abb102(24)=abb102(12)*spbl6k1
      abb102(25)=abb102(24)*spak2k4
      abb102(26)=-spbl5k3*abb102(25)
      abb102(14)=abb102(20)+abb102(23)+abb102(26)+abb102(14)
      abb102(14)=es34*abb102(14)
      abb102(20)=abb102(21)*spbl6k3
      abb102(23)=abb102(24)*spbl5k3
      abb102(20)=abb102(20)+abb102(23)
      abb102(19)=-abb102(19)+abb102(20)
      abb102(23)=abb102(19)*spak3k4
      abb102(26)=abb102(12)*spak3k4
      abb102(9)=abb102(26)*abb102(9)
      abb102(23)=abb102(23)+abb102(9)
      abb102(27)=spbk7k3*spak2k7
      abb102(28)=-abb102(23)*abb102(27)
      abb102(14)=abb102(28)+abb102(14)
      abb102(14)=8.0_ki*abb102(14)
      abb102(28)=spak2e7*spbe7k3
      abb102(9)=abb102(28)*abb102(9)
      abb102(29)=spbe7k3*spbl5k1
      abb102(30)=abb102(29)*spbl6k3
      abb102(31)=spbe7k3*spbl6k1
      abb102(32)=abb102(31)*spbl5k3
      abb102(30)=abb102(30)+abb102(32)
      abb102(32)=abb102(12)*spak2e7
      abb102(33)=abb102(32)*spak3k4
      abb102(34)=abb102(33)*abb102(30)
      abb102(35)=abb102(10)*spbe7k3
      abb102(36)=abb102(35)*abb102(12)
      abb102(37)=abb102(7)*spbe7k3
      abb102(38)=abb102(37)*abb102(12)
      abb102(39)=abb102(36)+abb102(38)
      abb102(40)=abb102(39)*spak2e7
      abb102(41)=spak1k2*abb102(40)*spak3k4
      abb102(42)=-spbk3k1*abb102(41)
      abb102(9)=abb102(42)+abb102(34)+abb102(9)
      abb102(9)=8.0_ki*abb102(9)
      abb102(34)=spbk7e7*spak2k7
      abb102(42)=spbe7k4*spak2k4
      abb102(43)=abb102(34)-abb102(42)
      abb102(44)=abb102(12)*spak4e7
      abb102(45)=-abb102(44)*abb102(43)
      abb102(46)=-abb102(10)*abb102(45)
      abb102(47)=abb102(44)*spak2k3
      abb102(35)=abb102(47)*abb102(35)
      abb102(35)=abb102(46)-abb102(35)
      abb102(46)=abb102(16)*abb102(28)
      abb102(48)=abb102(46)*spak3k4
      abb102(48)=abb102(48)-abb102(35)
      abb102(48)=spak2l6*abb102(48)
      abb102(49)=-spbl5k1*abb102(45)
      abb102(50)=abb102(33)*abb102(29)
      abb102(48)=abb102(48)+abb102(50)-abb102(49)
      abb102(48)=spbl6k3*abb102(48)
      abb102(50)=-abb102(7)*abb102(45)
      abb102(37)=abb102(47)*abb102(37)
      abb102(37)=abb102(50)-abb102(37)
      abb102(28)=abb102(15)*abb102(28)
      abb102(50)=abb102(28)*spak3k4
      abb102(50)=abb102(50)-abb102(37)
      abb102(50)=spak2l5*abb102(50)
      abb102(45)=-spbl6k1*abb102(45)
      abb102(33)=abb102(33)*abb102(31)
      abb102(33)=abb102(50)+abb102(33)-abb102(45)
      abb102(33)=spbl5k3*abb102(33)
      abb102(50)=spak1k2*spak4e7
      abb102(51)=abb102(50)*abb102(17)
      abb102(52)=-abb102(51)*abb102(43)
      abb102(53)=abb102(39)*spak2k3
      abb102(54)=abb102(53)*abb102(50)
      abb102(52)=abb102(52)+abb102(54)
      abb102(41)=abb102(52)+abb102(41)
      abb102(41)=abb102(41)*spbk3k1
      abb102(54)=abb102(30)*spak2k3
      abb102(55)=abb102(44)*abb102(54)
      abb102(33)=-abb102(41)+abb102(55)+abb102(33)+abb102(48)
      abb102(41)=8.0_ki*abb102(33)
      abb102(33)=-4.0_ki*abb102(33)
      abb102(48)=-abb102(18)*abb102(43)
      abb102(53)=spak1k2*abb102(53)
      abb102(48)=abb102(53)+abb102(48)
      abb102(48)=spbk3k1*abb102(48)
      abb102(20)=abb102(43)*abb102(20)
      abb102(53)=-abb102(12)*abb102(54)
      abb102(54)=abb102(16)*abb102(43)
      abb102(55)=-spak2k3*abb102(36)
      abb102(54)=abb102(54)+abb102(55)
      abb102(54)=spak2l6*spbl6k3*abb102(54)
      abb102(43)=abb102(15)*abb102(43)
      abb102(55)=-spak2k3*abb102(38)
      abb102(43)=abb102(43)+abb102(55)
      abb102(43)=spak2l5*spbl5k3*abb102(43)
      abb102(20)=abb102(43)+abb102(54)+abb102(48)+abb102(53)+abb102(20)
      abb102(20)=spak3e7*abb102(20)
      abb102(35)=spak2l6*abb102(35)
      abb102(43)=-abb102(29)*abb102(47)
      abb102(35)=abb102(35)+abb102(43)+abb102(49)
      abb102(35)=spbl6k4*abb102(35)
      abb102(37)=spak2l5*abb102(37)
      abb102(43)=-abb102(31)*abb102(47)
      abb102(37)=abb102(37)+abb102(43)+abb102(45)
      abb102(37)=spbl5k4*abb102(37)
      abb102(43)=spbk4k1*abb102(52)
      abb102(20)=abb102(43)+abb102(37)+abb102(20)+abb102(35)
      abb102(20)=4.0_ki*abb102(20)
      abb102(35)=abb102(11)*abb102(12)
      abb102(37)=abb102(35)+abb102(21)
      abb102(43)=abb102(37)*spbk7l6
      abb102(45)=abb102(8)*abb102(12)
      abb102(47)=abb102(45)+abb102(24)
      abb102(48)=abb102(47)*spbk7l5
      abb102(43)=abb102(43)+abb102(48)
      abb102(48)=-spak2k7*abb102(43)
      abb102(49)=abb102(45)*spbl5k3
      abb102(52)=abb102(35)*spbl6k3
      abb102(49)=abb102(49)+abb102(52)
      abb102(19)=abb102(49)+abb102(19)
      abb102(52)=spak2k3*abb102(19)
      abb102(53)=-spbk4k1*spak2k4
      abb102(54)=-spbk7k1*spak2k7
      abb102(53)=abb102(54)+abb102(53)
      abb102(53)=abb102(18)*abb102(53)
      abb102(54)=abb102(11)*abb102(13)
      abb102(54)=abb102(22)+abb102(54)
      abb102(54)=spbl6k4*abb102(54)
      abb102(55)=abb102(8)*abb102(13)
      abb102(55)=abb102(25)+abb102(55)
      abb102(55)=spbl5k4*abb102(55)
      abb102(48)=abb102(55)+abb102(54)+abb102(52)+abb102(53)+abb102(48)
      abb102(48)=8.0_ki*abb102(48)
      abb102(52)=abb102(32)*spbl5k1
      abb102(53)=abb102(32)*abb102(11)
      abb102(53)=abb102(53)+abb102(52)
      abb102(53)=abb102(53)*spbe7l6
      abb102(54)=abb102(32)*spbl6k1
      abb102(55)=abb102(32)*abb102(8)
      abb102(55)=abb102(55)+abb102(54)
      abb102(55)=abb102(55)*spbe7l5
      abb102(56)=abb102(18)*spbe7k1
      abb102(57)=abb102(56)*spak2e7
      abb102(53)=abb102(57)+abb102(53)+abb102(55)
      abb102(55)=8.0_ki*abb102(53)
      abb102(53)=-4.0_ki*abb102(53)
      abb102(57)=spbk7k1*abb102(18)
      abb102(43)=abb102(57)+abb102(43)
      abb102(43)=spae7k7*abb102(43)
      abb102(19)=spak3e7*abb102(19)
      abb102(11)=abb102(44)*abb102(11)
      abb102(57)=abb102(44)*spbl5k1
      abb102(57)=abb102(11)+abb102(57)
      abb102(58)=spbl6k4*abb102(57)
      abb102(8)=abb102(44)*abb102(8)
      abb102(59)=abb102(44)*spbl6k1
      abb102(59)=abb102(8)+abb102(59)
      abb102(60)=spbl5k4*abb102(59)
      abb102(61)=-spbk4k1*abb102(51)
      abb102(19)=abb102(61)+abb102(60)+abb102(19)+abb102(58)+abb102(43)
      abb102(19)=4.0_ki*abb102(19)
      abb102(43)=spak2k4*abb102(36)*spal6e7
      abb102(58)=abb102(46)*spak4l6
      abb102(60)=abb102(5)*spbe7k3
      abb102(61)=abb102(60)*abb102(52)
      abb102(62)=abb102(61)*spak4l5
      abb102(63)=abb102(60)*spal5e7
      abb102(22)=abb102(22)*abb102(63)
      abb102(22)=abb102(62)+abb102(58)+abb102(43)+abb102(22)
      abb102(43)=-es34*abb102(22)
      abb102(58)=spal6k7*abb102(46)
      abb102(62)=spal5k7*abb102(61)
      abb102(58)=abb102(62)+abb102(58)
      abb102(62)=spbk7k3*spak3k4
      abb102(58)=abb102(62)*abb102(58)
      abb102(64)=spak3k4*spbe7k3
      abb102(65)=-spal6e7*abb102(64)*abb102(16)
      abb102(66)=-spak3k4*abb102(63)*abb102(21)
      abb102(65)=abb102(65)+abb102(66)
      abb102(65)=abb102(65)*abb102(27)
      abb102(43)=abb102(65)+abb102(43)+abb102(58)
      abb102(43)=4.0_ki*abb102(43)
      abb102(58)=8.0_ki*abb102(22)
      abb102(22)=-4.0_ki*abb102(22)
      abb102(65)=spal6k7*spbk7e7
      abb102(66)=2.0_ki*spbe7k4
      abb102(67)=abb102(66)*spak4l6
      abb102(65)=abb102(65)+abb102(67)
      abb102(10)=-abb102(32)*abb102(10)*abb102(65)
      abb102(67)=spal5k7*spbk7e7
      abb102(68)=abb102(66)*spak4l5
      abb102(67)=abb102(67)+abb102(68)
      abb102(68)=abb102(5)*abb102(67)
      abb102(52)=-abb102(52)*abb102(68)
      abb102(34)=-abb102(34)+2.0_ki*abb102(42)
      abb102(16)=-abb102(16)*abb102(34)
      abb102(42)=2.0_ki*spak2k3
      abb102(36)=-abb102(36)*abb102(42)
      abb102(16)=abb102(36)+abb102(16)
      abb102(16)=spal6e7*abb102(16)
      abb102(36)=abb102(42)*abb102(60)
      abb102(69)=-abb102(5)*abb102(34)
      abb102(36)=-abb102(36)+abb102(69)
      abb102(21)=spal5e7*abb102(21)*abb102(36)
      abb102(36)=2.0_ki*spak3l6
      abb102(46)=-abb102(46)*abb102(36)
      abb102(69)=2.0_ki*spak3l5
      abb102(61)=-abb102(61)*abb102(69)
      abb102(10)=abb102(61)+abb102(46)+abb102(16)+abb102(21)+abb102(52)+abb102(&
      &10)
      abb102(10)=4.0_ki*abb102(10)
      abb102(16)=8.0_ki*abb102(37)
      abb102(21)=spak2k4*abb102(38)*spal5e7
      abb102(46)=abb102(28)*spak4l5
      abb102(52)=abb102(6)*spbe7k3
      abb102(61)=abb102(52)*abb102(54)
      abb102(70)=abb102(61)*spak4l6
      abb102(71)=abb102(52)*spal6e7
      abb102(25)=abb102(25)*abb102(71)
      abb102(21)=abb102(70)+abb102(46)+abb102(21)+abb102(25)
      abb102(25)=-es34*abb102(21)
      abb102(46)=spal6k7*abb102(61)
      abb102(70)=spal5k7*abb102(28)
      abb102(46)=abb102(70)+abb102(46)
      abb102(46)=abb102(62)*abb102(46)
      abb102(70)=-spak3k4*abb102(71)*abb102(24)
      abb102(72)=-spal5e7*abb102(64)*abb102(15)
      abb102(70)=abb102(70)+abb102(72)
      abb102(70)=abb102(70)*abb102(27)
      abb102(25)=abb102(70)+abb102(25)+abb102(46)
      abb102(25)=4.0_ki*abb102(25)
      abb102(46)=8.0_ki*abb102(21)
      abb102(21)=-4.0_ki*abb102(21)
      abb102(7)=-abb102(32)*abb102(7)*abb102(67)
      abb102(65)=abb102(6)*abb102(65)
      abb102(54)=-abb102(54)*abb102(65)
      abb102(67)=abb102(42)*abb102(52)
      abb102(70)=-abb102(6)*abb102(34)
      abb102(67)=-abb102(67)+abb102(70)
      abb102(24)=spal6e7*abb102(24)*abb102(67)
      abb102(15)=-abb102(15)*abb102(34)
      abb102(38)=-abb102(38)*abb102(42)
      abb102(15)=abb102(38)+abb102(15)
      abb102(15)=spal5e7*abb102(15)
      abb102(38)=-abb102(61)*abb102(36)
      abb102(28)=-abb102(28)*abb102(69)
      abb102(7)=abb102(28)+abb102(38)+abb102(24)+abb102(15)+abb102(54)+abb102(7)
      abb102(7)=4.0_ki*abb102(7)
      abb102(15)=8.0_ki*abb102(47)
      abb102(24)=abb102(51)*spbe7k1
      abb102(28)=abb102(57)*spbe7l6
      abb102(38)=abb102(59)*spbe7l5
      abb102(24)=abb102(38)+abb102(24)+abb102(28)
      abb102(28)=4.0_ki*abb102(24)
      abb102(38)=-abb102(29)*abb102(26)
      abb102(35)=-abb102(64)*abb102(35)
      abb102(35)=abb102(38)+abb102(35)
      abb102(35)=spbk7l6*abb102(35)
      abb102(38)=-abb102(31)*abb102(26)
      abb102(45)=-abb102(64)*abb102(45)
      abb102(38)=abb102(38)+abb102(45)
      abb102(38)=spbk7l5*abb102(38)
      abb102(45)=abb102(39)*spak3k4
      abb102(51)=abb102(45)*spak1k2
      abb102(54)=-spbk7k1*abb102(51)
      abb102(35)=abb102(54)+abb102(38)+abb102(35)
      abb102(35)=spae7k7*abb102(35)
      abb102(38)=-abb102(64)*abb102(49)
      abb102(30)=-abb102(26)*abb102(30)
      abb102(49)=spbk3k1*abb102(51)
      abb102(30)=abb102(49)+abb102(30)+abb102(38)
      abb102(30)=spak3e7*abb102(30)
      abb102(38)=abb102(44)*spak3k4
      abb102(29)=-abb102(29)*abb102(38)
      abb102(11)=-abb102(64)*abb102(11)
      abb102(11)=abb102(29)+abb102(11)
      abb102(11)=spbl6k4*abb102(11)
      abb102(29)=-abb102(31)*abb102(38)
      abb102(8)=-abb102(64)*abb102(8)
      abb102(8)=abb102(29)+abb102(8)
      abb102(8)=spbl5k4*abb102(8)
      abb102(29)=spbk4k1*abb102(50)*abb102(45)
      abb102(8)=abb102(29)+abb102(8)+abb102(30)+abb102(11)+abb102(35)
      abb102(8)=4.0_ki*abb102(8)
      abb102(11)=8.0_ki*abb102(23)
      abb102(23)=8.0_ki*abb102(24)
      abb102(24)=spbe7l6*abb102(37)
      abb102(29)=spbe7l5*abb102(47)
      abb102(24)=abb102(56)+abb102(24)+abb102(29)
      abb102(24)=4.0_ki*spak3e7*abb102(24)
      abb102(29)=abb102(71)-abb102(63)
      abb102(29)=abb102(29)*spbl6l5
      abb102(13)=-abb102(13)*abb102(29)
      abb102(30)=abb102(40)*spak1k4
      abb102(31)=abb102(32)*spbl6l5
      abb102(32)=abb102(31)*abb102(60)
      abb102(35)=abb102(32)*spak4l5
      abb102(37)=abb102(31)*abb102(52)
      abb102(38)=abb102(37)*spak4l6
      abb102(13)=-abb102(38)+abb102(13)+abb102(30)+abb102(35)
      abb102(30)=-es34*abb102(13)
      abb102(35)=-spak1k7*abb102(40)
      abb102(38)=-spal6k7*abb102(37)
      abb102(44)=spal5k7*abb102(32)
      abb102(35)=abb102(35)+abb102(44)+abb102(38)
      abb102(35)=abb102(62)*abb102(35)
      abb102(38)=abb102(45)*abb102(27)
      abb102(44)=abb102(39)*spak2k4
      abb102(45)=es34*abb102(44)
      abb102(38)=abb102(38)+abb102(45)
      abb102(38)=spak1e7*abb102(38)
      abb102(26)=abb102(26)*abb102(27)*abb102(29)
      abb102(26)=abb102(38)+abb102(26)+abb102(30)+abb102(35)
      abb102(26)=4.0_ki*abb102(26)
      abb102(27)=abb102(44)*spak1e7
      abb102(13)=abb102(13)-abb102(27)
      abb102(27)=8.0_ki*abb102(13)
      abb102(13)=-4.0_ki*abb102(13)
      abb102(29)=abb102(12)*abb102(34)
      abb102(30)=abb102(6)*abb102(29)
      abb102(12)=abb102(42)*abb102(12)
      abb102(35)=abb102(52)*abb102(12)
      abb102(30)=abb102(35)+abb102(30)
      abb102(30)=spal6e7*abb102(30)
      abb102(29)=-abb102(5)*abb102(29)
      abb102(12)=-abb102(60)*abb102(12)
      abb102(12)=abb102(12)+abb102(29)
      abb102(12)=spal5e7*abb102(12)
      abb102(12)=abb102(30)+abb102(12)
      abb102(12)=spbl6l5*abb102(12)
      abb102(29)=abb102(17)*abb102(34)
      abb102(30)=abb102(39)*abb102(42)
      abb102(29)=abb102(30)+abb102(29)
      abb102(29)=spak1e7*abb102(29)
      abb102(30)=-spak1k4*abb102(66)
      abb102(34)=spak1k7*spbk7e7
      abb102(30)=abb102(34)+abb102(30)
      abb102(17)=abb102(17)*spak2e7*abb102(30)
      abb102(30)=-abb102(68)+abb102(65)
      abb102(30)=abb102(31)*abb102(30)
      abb102(31)=spak1k3*abb102(40)
      abb102(34)=abb102(37)*abb102(36)
      abb102(32)=-abb102(32)*abb102(69)
      abb102(12)=-2.0_ki*abb102(31)+abb102(32)+abb102(34)+abb102(29)+abb102(30)&
      &+abb102(17)+abb102(12)
      abb102(12)=4.0_ki*abb102(12)
      abb102(17)=8.0_ki*abb102(18)
      R2d102=0.0_ki
      rat2 = rat2 + R2d102
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='102' value='", &
          & R2d102, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd102h3
