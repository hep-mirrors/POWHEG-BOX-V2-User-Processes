module     p1_dbarc_epnebbbarg_abbrevd38h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(90), public :: abb38
   complex(ki), public :: R2d38
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb38(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb38(2)=NC**(-1)
      abb38(3)=es234**(-1)
      abb38(4)=es56**(-1)
      abb38(5)=es71**(-1)
      abb38(6)=spbl5k2**(-1)
      abb38(7)=spbl6k2**(-1)
      abb38(8)=spak2l5**(-1)
      abb38(9)=spak2l6**(-1)
      abb38(10)=TR*gW
      abb38(10)=CVDC*i_*spak1e7*abb38(4)*abb38(3)*abb38(1)*abb38(10)**2
      abb38(11)=abb38(10)*abb38(5)*mB
      abb38(12)=abb38(11)*c4
      abb38(13)=abb38(12)*abb38(2)
      abb38(14)=abb38(11)*c3
      abb38(13)=abb38(13)-abb38(14)
      abb38(15)=spak3k4*spbk3k2**2
      abb38(16)=abb38(7)*spbk7e7
      abb38(17)=abb38(15)*abb38(16)
      abb38(18)=-abb38(17)*abb38(13)
      abb38(19)=abb38(18)*abb38(2)
      abb38(20)=abb38(14)*NC
      abb38(21)=abb38(20)-abb38(12)
      abb38(17)=-abb38(17)*abb38(21)
      abb38(19)=abb38(19)+abb38(17)
      abb38(19)=abb38(19)*spal5k7
      abb38(22)=abb38(7)*spbe7k1
      abb38(23)=abb38(15)*abb38(22)
      abb38(24)=-abb38(23)*abb38(13)
      abb38(25)=abb38(24)*abb38(2)
      abb38(23)=-abb38(23)*abb38(21)
      abb38(25)=abb38(25)+abb38(23)
      abb38(25)=abb38(25)*spak1l5
      abb38(26)=abb38(6)*spbk7e7
      abb38(27)=abb38(15)*abb38(26)
      abb38(28)=-abb38(27)*abb38(13)
      abb38(29)=abb38(28)*abb38(2)
      abb38(27)=-abb38(27)*abb38(21)
      abb38(29)=abb38(29)+abb38(27)
      abb38(29)=abb38(29)*spal6k7
      abb38(30)=abb38(6)*spbe7k1
      abb38(31)=abb38(15)*abb38(30)
      abb38(32)=-abb38(31)*abb38(13)
      abb38(33)=abb38(32)*abb38(2)
      abb38(31)=-abb38(31)*abb38(21)
      abb38(33)=abb38(33)+abb38(31)
      abb38(33)=abb38(33)*spak1l6
      abb38(19)=abb38(19)-abb38(25)+abb38(29)-abb38(33)
      abb38(25)=2.0_ki*abb38(19)
      abb38(29)=abb38(23)*spal5k7
      abb38(33)=abb38(31)*spal6k7
      abb38(29)=abb38(29)+abb38(33)
      abb38(33)=-spak1l6*abb38(29)
      abb38(34)=spal6k7**2
      abb38(35)=abb38(27)*abb38(34)
      abb38(36)=abb38(17)*spal5k7
      abb38(37)=spal6k7*abb38(36)
      abb38(33)=abb38(33)+abb38(35)+abb38(37)
      abb38(33)=spbk7l6*abb38(33)
      abb38(35)=abb38(27)*spal6k7
      abb38(37)=abb38(35)+abb38(36)
      abb38(37)=spal5k7*abb38(37)
      abb38(29)=-spak1l5*abb38(29)
      abb38(29)=abb38(37)+abb38(29)
      abb38(29)=spbk7l5*abb38(29)
      abb38(37)=abb38(31)*spak1l6
      abb38(38)=-abb38(35)+abb38(37)
      abb38(38)=spak1l6*abb38(38)
      abb38(39)=-spal6k7*abb38(17)
      abb38(40)=spak1l6*abb38(23)
      abb38(39)=abb38(39)+abb38(40)
      abb38(39)=spak1l5*abb38(39)
      abb38(38)=abb38(38)+abb38(39)
      abb38(38)=spbl6k1*abb38(38)
      abb38(39)=abb38(23)*spak1l5
      abb38(36)=-abb38(36)+abb38(39)+abb38(37)
      abb38(37)=spak1l5*abb38(36)
      abb38(39)=-spak1l6*spal5k7*abb38(27)
      abb38(37)=abb38(39)+abb38(37)
      abb38(37)=spbl5k1*abb38(37)
      abb38(29)=abb38(37)+abb38(38)+abb38(33)+abb38(29)
      abb38(33)=mB**3
      abb38(15)=abb38(33)*abb38(15)
      abb38(37)=abb38(15)*abb38(6)*abb38(5)
      abb38(38)=abb38(37)*abb38(16)
      abb38(39)=abb38(10)*c3
      abb38(40)=abb38(39)*NC
      abb38(41)=abb38(38)*abb38(40)
      abb38(10)=abb38(10)*c4
      abb38(42)=abb38(38)*abb38(10)
      abb38(41)=abb38(41)-abb38(42)
      abb38(43)=abb38(41)*spal5k7
      abb38(37)=abb38(37)*abb38(22)
      abb38(44)=abb38(37)*abb38(40)
      abb38(45)=abb38(37)*abb38(10)
      abb38(44)=abb38(44)-abb38(45)
      abb38(46)=abb38(44)*spak1l5
      abb38(47)=abb38(15)*abb38(39)
      abb38(48)=abb38(6)**2
      abb38(49)=abb38(48)*abb38(5)
      abb38(50)=abb38(49)*abb38(47)
      abb38(51)=NC*spbe7k1
      abb38(52)=abb38(51)*abb38(50)
      abb38(15)=abb38(15)*abb38(10)
      abb38(49)=abb38(49)*abb38(15)
      abb38(53)=abb38(49)*spbe7k1
      abb38(52)=abb38(52)-abb38(53)
      abb38(54)=abb38(52)*spak1l6
      abb38(55)=NC*spbk7e7
      abb38(56)=abb38(55)*abb38(50)
      abb38(49)=abb38(49)*spbk7e7
      abb38(56)=abb38(56)-abb38(49)
      abb38(57)=abb38(56)*spal6k7
      abb38(43)=abb38(43)+abb38(46)+abb38(54)+abb38(57)
      abb38(43)=abb38(43)*abb38(8)
      abb38(46)=abb38(41)*spal6k7
      abb38(54)=abb38(44)*spak1l6
      abb38(57)=abb38(33)*abb38(39)
      abb38(58)=abb38(7)*spbk3k2
      abb38(58)=abb38(58)**2
      abb38(59)=abb38(58)*spak3k4*abb38(5)
      abb38(60)=abb38(59)*abb38(57)
      abb38(61)=abb38(51)*abb38(60)
      abb38(33)=abb38(33)*abb38(10)
      abb38(59)=abb38(59)*abb38(33)
      abb38(62)=abb38(59)*spbe7k1
      abb38(61)=abb38(61)-abb38(62)
      abb38(63)=abb38(61)*spak1l5
      abb38(64)=abb38(55)*abb38(60)
      abb38(59)=abb38(59)*spbk7e7
      abb38(64)=abb38(64)-abb38(59)
      abb38(65)=abb38(64)*spal5k7
      abb38(46)=abb38(46)+abb38(54)+abb38(63)+abb38(65)
      abb38(46)=abb38(46)*abb38(9)
      abb38(43)=abb38(43)+abb38(46)
      abb38(46)=-2.0_ki*es12+es712
      abb38(43)=abb38(43)*abb38(46)
      abb38(11)=abb38(11)*spbk3k2
      abb38(46)=abb38(11)*spbk7e7
      abb38(54)=NC*c3
      abb38(63)=abb38(46)*abb38(54)
      abb38(65)=abb38(63)*abb38(6)
      abb38(66)=abb38(11)*c4
      abb38(67)=abb38(26)*abb38(66)
      abb38(65)=abb38(65)-abb38(67)
      abb38(68)=abb38(65)*abb38(34)
      abb38(11)=abb38(11)*spbe7k1
      abb38(54)=abb38(11)*abb38(54)
      abb38(69)=abb38(54)*abb38(6)
      abb38(70)=abb38(30)*abb38(66)
      abb38(69)=abb38(69)-abb38(70)
      abb38(71)=abb38(69)*spak1l6
      abb38(72)=-spal6k7*abb38(71)
      abb38(68)=abb38(68)+abb38(72)
      abb38(68)=spbk7k2*abb38(68)
      abb38(72)=abb38(65)*spal6k7
      abb38(71)=abb38(72)-abb38(71)
      abb38(72)=spbk2k1*spak1l6
      abb38(73)=-abb38(71)*abb38(72)
      abb38(68)=abb38(68)+abb38(73)
      abb38(68)=spbl6k2*abb38(68)
      abb38(73)=abb38(63)*abb38(7)
      abb38(74)=abb38(16)*abb38(66)
      abb38(73)=abb38(73)-abb38(74)
      abb38(75)=abb38(73)*spal5k7**2
      abb38(76)=abb38(54)*abb38(7)
      abb38(77)=abb38(22)*abb38(66)
      abb38(76)=abb38(76)-abb38(77)
      abb38(78)=abb38(76)*spak1l5
      abb38(79)=-spal5k7*abb38(78)
      abb38(75)=abb38(75)+abb38(79)
      abb38(75)=spbk7k2*abb38(75)
      abb38(79)=abb38(73)*spal5k7
      abb38(78)=abb38(79)-abb38(78)
      abb38(79)=spbk2k1*spak1l5
      abb38(80)=-abb38(78)*abb38(79)
      abb38(75)=abb38(75)+abb38(80)
      abb38(75)=spbl5k2*abb38(75)
      abb38(80)=abb38(66)*spbe7k1
      abb38(80)=abb38(80)-abb38(54)
      abb38(81)=abb38(80)*spak1l5
      abb38(82)=abb38(66)*spbk7e7
      abb38(82)=abb38(82)-abb38(63)
      abb38(83)=abb38(82)*spal5k7
      abb38(84)=abb38(81)-2.0_ki*abb38(83)
      abb38(84)=spal6k7*abb38(84)
      abb38(85)=abb38(80)*spak1l6
      abb38(86)=spal5k7*abb38(85)
      abb38(84)=abb38(86)+abb38(84)
      abb38(84)=spbk7k2*abb38(84)
      abb38(86)=abb38(82)*spal6k7
      abb38(87)=abb38(86)-2.0_ki*abb38(85)
      abb38(87)=spak1l5*abb38(87)
      abb38(88)=spak1l6*abb38(83)
      abb38(87)=abb38(88)+abb38(87)
      abb38(87)=spbk2k1*abb38(87)
      abb38(68)=abb38(75)+abb38(68)+abb38(84)+abb38(87)
      abb38(68)=spak2k4*abb38(68)
      abb38(75)=spak3k4*abb38(6)
      abb38(54)=abb38(54)*abb38(75)
      abb38(84)=abb38(70)*spak3k4
      abb38(54)=abb38(54)-abb38(84)
      abb38(84)=abb38(54)*spak1l6
      abb38(87)=spak3k4*abb38(76)
      abb38(88)=abb38(87)*spak1l5
      abb38(89)=spak3k4*abb38(73)
      abb38(90)=abb38(89)*spal5k7
      abb38(84)=-abb38(90)+abb38(84)+abb38(88)
      abb38(88)=spal6k7*abb38(84)
      abb38(63)=abb38(63)*abb38(75)
      abb38(90)=abb38(67)*spak3k4
      abb38(63)=abb38(63)-abb38(90)
      abb38(34)=-abb38(63)*abb38(34)
      abb38(34)=abb38(34)+abb38(88)
      abb38(34)=spbk7k2*abb38(34)
      abb38(88)=abb38(63)*spal6k7
      abb38(84)=abb38(88)-abb38(84)
      abb38(72)=abb38(84)*abb38(72)
      abb38(34)=abb38(34)+abb38(72)
      abb38(34)=spbl6k3*abb38(34)
      abb38(72)=spbk7e7*abb38(15)
      abb38(55)=-abb38(47)*abb38(55)
      abb38(55)=abb38(72)+abb38(55)
      abb38(55)=spal6k7*abb38(55)
      abb38(72)=spbe7k1*abb38(15)
      abb38(51)=-abb38(47)*abb38(51)
      abb38(51)=abb38(72)+abb38(51)
      abb38(51)=spak1l6*abb38(51)
      abb38(51)=abb38(51)+abb38(55)
      abb38(48)=abb38(48)*abb38(51)
      abb38(47)=abb38(47)*NC
      abb38(15)=abb38(47)-abb38(15)
      abb38(15)=abb38(6)*abb38(15)
      abb38(47)=abb38(15)*abb38(16)
      abb38(51)=-spal5k7*abb38(47)
      abb38(15)=abb38(15)*abb38(22)
      abb38(55)=-spak1l5*abb38(15)
      abb38(48)=abb38(55)+abb38(51)+abb38(48)
      abb38(48)=abb38(8)*abb38(48)
      abb38(51)=abb38(57)*NC
      abb38(33)=abb38(33)-abb38(51)
      abb38(51)=spal5k7*spbk7e7
      abb38(55)=spak1l5*spbe7k1
      abb38(51)=abb38(55)+abb38(51)
      abb38(33)=abb38(51)*abb38(58)*spak3k4*abb38(33)
      abb38(47)=-spal6k7*abb38(47)
      abb38(15)=-spak1l6*abb38(15)
      abb38(15)=abb38(15)+abb38(47)+abb38(33)
      abb38(15)=abb38(9)*abb38(15)
      abb38(33)=-spbk7k2*spal5k7
      abb38(33)=abb38(33)+abb38(79)
      abb38(33)=spbl5k3*abb38(84)*abb38(33)
      abb38(47)=spak1l6*abb38(56)
      abb38(51)=spak1l5*abb38(41)
      abb38(47)=abb38(47)+abb38(51)
      abb38(47)=abb38(8)*abb38(47)
      abb38(51)=spak1l6*abb38(41)
      abb38(55)=spak1l5*abb38(64)
      abb38(51)=abb38(51)+abb38(55)
      abb38(51)=abb38(9)*abb38(51)
      abb38(47)=abb38(47)+abb38(51)
      abb38(51)=2.0_ki*spak2k7
      abb38(47)=abb38(51)*spbk2k1*abb38(47)
      abb38(55)=spal6k7*abb38(52)
      abb38(57)=spal5k7*abb38(44)
      abb38(55)=abb38(55)+abb38(57)
      abb38(55)=abb38(8)*abb38(55)
      abb38(57)=spal6k7*abb38(44)
      abb38(58)=spal5k7*abb38(61)
      abb38(57)=abb38(57)+abb38(58)
      abb38(57)=abb38(9)*abb38(57)
      abb38(55)=abb38(55)+abb38(57)
      abb38(57)=2.0_ki*spak1k2
      abb38(55)=abb38(57)*spbk7k2*abb38(55)
      abb38(15)=abb38(55)+abb38(47)+abb38(33)+abb38(34)+abb38(15)+abb38(48)+abb&
      &38(68)+abb38(43)+2.0_ki*abb38(29)
      abb38(15)=2.0_ki*abb38(15)
      abb38(29)=abb38(36)-abb38(35)
      abb38(29)=4.0_ki*abb38(29)
      abb38(33)=2.0_ki*abb38(2)
      abb38(18)=abb38(18)*abb38(33)
      abb38(17)=abb38(18)-abb38(17)
      abb38(17)=abb38(17)*spal5k7
      abb38(18)=abb38(24)*abb38(33)
      abb38(18)=abb38(18)-abb38(23)
      abb38(18)=abb38(18)*spak1l5
      abb38(23)=abb38(28)*abb38(33)
      abb38(23)=abb38(23)-abb38(27)
      abb38(23)=abb38(23)*spal6k7
      abb38(24)=abb38(32)*abb38(33)
      abb38(24)=abb38(24)-abb38(31)
      abb38(24)=abb38(24)*spak1l6
      abb38(17)=-abb38(18)+abb38(17)+abb38(23)-abb38(24)
      abb38(17)=4.0_ki*abb38(17)
      abb38(18)=abb38(65)*spbk2k1
      abb38(23)=abb38(69)*spbk7k2
      abb38(18)=abb38(18)-abb38(23)
      abb38(18)=abb38(18)*spak1k7
      abb38(23)=3.0_ki*spbl6k2
      abb38(24)=abb38(23)*abb38(71)
      abb38(27)=abb38(81)-abb38(83)
      abb38(24)=abb38(24)+abb38(18)+3.0_ki*abb38(27)
      abb38(27)=-spak4l6*abb38(24)
      abb38(28)=abb38(73)*spbk2k1
      abb38(31)=abb38(76)*spbk7k2
      abb38(28)=abb38(28)-abb38(31)
      abb38(28)=abb38(28)*spak1k7
      abb38(31)=3.0_ki*spbl5k2
      abb38(32)=abb38(31)*abb38(78)
      abb38(34)=abb38(86)-abb38(85)
      abb38(32)=-abb38(32)-abb38(28)+3.0_ki*abb38(34)
      abb38(34)=spak4l5*abb38(32)
      abb38(35)=abb38(78)+abb38(71)
      abb38(36)=spak4k7*spbk7k2
      abb38(43)=spak1k4*spbk2k1
      abb38(36)=abb38(36)-abb38(43)
      abb38(43)=abb38(35)*abb38(36)
      abb38(27)=abb38(43)+abb38(34)+abb38(27)
      abb38(34)=4.0_ki*abb38(27)
      abb38(43)=abb38(50)*spbk7e7
      abb38(47)=abb38(49)*abb38(2)
      abb38(43)=abb38(43)-abb38(47)
      abb38(47)=abb38(43)*abb38(33)
      abb38(47)=abb38(47)+abb38(56)
      abb38(47)=spal6k7*abb38(47)
      abb38(38)=abb38(38)*abb38(39)
      abb38(42)=abb38(42)*abb38(2)
      abb38(38)=abb38(38)-abb38(42)
      abb38(42)=abb38(38)*abb38(33)
      abb38(48)=abb38(42)+abb38(41)
      abb38(49)=spal5k7*abb38(48)
      abb38(50)=abb38(50)*spbe7k1
      abb38(53)=abb38(53)*abb38(2)
      abb38(50)=abb38(50)-abb38(53)
      abb38(53)=-abb38(50)*abb38(33)
      abb38(53)=abb38(53)-abb38(52)
      abb38(53)=spak1l6*abb38(53)
      abb38(37)=abb38(37)*abb38(39)
      abb38(39)=abb38(45)*abb38(2)
      abb38(37)=abb38(37)-abb38(39)
      abb38(39)=abb38(37)*abb38(33)
      abb38(45)=abb38(39)+abb38(44)
      abb38(55)=-spak1l5*abb38(45)
      abb38(47)=abb38(55)+abb38(53)+abb38(47)+abb38(49)
      abb38(47)=abb38(8)*abb38(47)
      abb38(48)=spal6k7*abb38(48)
      abb38(49)=abb38(60)*spbk7e7
      abb38(53)=abb38(59)*abb38(2)
      abb38(49)=abb38(49)-abb38(53)
      abb38(53)=abb38(49)*abb38(33)
      abb38(53)=abb38(53)+abb38(64)
      abb38(53)=spal5k7*abb38(53)
      abb38(45)=-spak1l6*abb38(45)
      abb38(55)=abb38(60)*spbe7k1
      abb38(58)=abb38(62)*abb38(2)
      abb38(55)=abb38(55)-abb38(58)
      abb38(33)=-abb38(55)*abb38(33)
      abb38(33)=abb38(33)-abb38(61)
      abb38(33)=spak1l5*abb38(33)
      abb38(33)=abb38(33)+abb38(45)+abb38(48)+abb38(53)
      abb38(33)=abb38(9)*abb38(33)
      abb38(27)=abb38(33)+abb38(47)+abb38(27)
      abb38(27)=4.0_ki*abb38(27)
      abb38(19)=-4.0_ki*abb38(19)
      abb38(33)=abb38(43)*abb38(2)
      abb38(43)=spak2l6*abb38(8)
      abb38(45)=abb38(33)*abb38(43)
      abb38(47)=abb38(49)*abb38(2)
      abb38(48)=spak2l5*abb38(9)
      abb38(49)=abb38(47)*abb38(48)
      abb38(46)=abb38(46)*c3
      abb38(53)=abb38(46)*abb38(75)
      abb38(58)=abb38(2)*spak3k4
      abb38(59)=abb38(58)*abb38(67)
      abb38(53)=abb38(53)-abb38(59)
      abb38(53)=abb38(53)*abb38(2)
      abb38(59)=-spbl5k3*abb38(53)
      abb38(60)=abb38(58)*abb38(74)
      abb38(62)=abb38(46)*abb38(7)
      abb38(68)=abb38(62)*spak3k4
      abb38(60)=abb38(60)-abb38(68)
      abb38(60)=abb38(60)*abb38(2)
      abb38(68)=-spbl6k3*abb38(60)
      abb38(59)=abb38(68)+abb38(59)
      abb38(59)=spal5l6*abb38(59)
      abb38(42)=abb38(59)+abb38(49)+abb38(42)+abb38(45)
      abb38(42)=4.0_ki*abb38(42)
      abb38(45)=abb38(67)*abb38(2)
      abb38(49)=abb38(46)*abb38(6)
      abb38(45)=abb38(45)-abb38(49)
      abb38(45)=abb38(45)*abb38(2)
      abb38(45)=abb38(45)-abb38(65)
      abb38(49)=spal6k7*abb38(45)
      abb38(59)=abb38(70)*abb38(2)
      abb38(11)=abb38(11)*c3
      abb38(65)=abb38(11)*abb38(6)
      abb38(59)=abb38(59)-abb38(65)
      abb38(59)=abb38(59)*abb38(2)
      abb38(59)=abb38(59)-abb38(69)
      abb38(65)=-spak1l6*abb38(59)
      abb38(49)=abb38(49)+abb38(65)
      abb38(49)=spbl6k2*abb38(49)
      abb38(65)=abb38(66)*abb38(2)
      abb38(66)=abb38(65)*spbk7e7
      abb38(46)=abb38(66)-abb38(46)
      abb38(46)=abb38(46)*abb38(2)
      abb38(46)=abb38(46)+abb38(82)
      abb38(66)=spal5k7*abb38(46)
      abb38(65)=abb38(65)*spbe7k1
      abb38(65)=abb38(65)-abb38(11)
      abb38(65)=abb38(65)*abb38(2)
      abb38(65)=abb38(65)+abb38(80)
      abb38(67)=-spak1l5*abb38(65)
      abb38(49)=abb38(49)+abb38(66)+abb38(67)
      abb38(66)=2.0_ki*spak2k4
      abb38(49)=abb38(66)*abb38(49)
      abb38(53)=abb38(53)+abb38(63)
      abb38(67)=spal6k7*abb38(53)
      abb38(68)=abb38(11)*abb38(75)
      abb38(69)=abb38(58)*abb38(70)
      abb38(68)=abb38(68)-abb38(69)
      abb38(68)=abb38(68)*abb38(2)
      abb38(69)=abb38(68)+abb38(54)
      abb38(70)=-spak1l6*abb38(69)
      abb38(67)=abb38(67)+abb38(70)
      abb38(70)=2.0_ki*spbl6k3
      abb38(67)=abb38(67)*abb38(70)
      abb38(71)=spal5k7*abb38(53)
      abb38(72)=-spak1l5*abb38(69)
      abb38(71)=abb38(71)+abb38(72)
      abb38(72)=2.0_ki*spbl5k3
      abb38(71)=abb38(71)*abb38(72)
      abb38(33)=-abb38(33)-abb38(56)
      abb38(33)=abb38(8)*abb38(33)
      abb38(38)=abb38(38)*abb38(2)
      abb38(38)=abb38(38)+abb38(41)
      abb38(41)=-abb38(9)*abb38(38)
      abb38(33)=abb38(33)+abb38(41)
      abb38(33)=abb38(33)*abb38(51)
      abb38(41)=abb38(50)*abb38(2)
      abb38(50)=abb38(41)+abb38(52)
      abb38(50)=abb38(8)*abb38(50)
      abb38(37)=abb38(37)*abb38(2)
      abb38(37)=abb38(37)+abb38(44)
      abb38(44)=abb38(9)*abb38(37)
      abb38(44)=abb38(50)+abb38(44)
      abb38(44)=abb38(44)*abb38(57)
      abb38(50)=spbk7k3*abb38(54)
      abb38(52)=-spbk3k1*abb38(63)
      abb38(50)=abb38(52)+abb38(50)
      abb38(50)=spak1k7*abb38(50)
      abb38(18)=spak2k4*abb38(18)
      abb38(18)=abb38(44)+abb38(33)+abb38(71)+abb38(67)+abb38(18)+abb38(49)+abb&
      &38(50)
      abb38(18)=2.0_ki*abb38(18)
      abb38(33)=abb38(45)*spak4k7
      abb38(44)=abb38(59)*spak1k4
      abb38(33)=abb38(33)-abb38(44)
      abb38(33)=16.0_ki*abb38(33)
      abb38(44)=-4.0_ki*abb38(53)
      abb38(49)=4.0_ki*spak2k4
      abb38(50)=-abb38(45)*abb38(49)
      abb38(52)=abb38(74)*abb38(2)
      abb38(52)=abb38(52)-abb38(62)
      abb38(52)=abb38(52)*abb38(2)
      abb38(52)=abb38(52)-abb38(73)
      abb38(53)=spal5k7*abb38(52)
      abb38(54)=abb38(77)*abb38(2)
      abb38(11)=abb38(11)*abb38(7)
      abb38(54)=abb38(54)-abb38(11)
      abb38(54)=abb38(54)*abb38(2)
      abb38(54)=abb38(54)-abb38(76)
      abb38(56)=-spak1l5*abb38(54)
      abb38(53)=abb38(53)+abb38(56)
      abb38(53)=spbl5k2*abb38(53)
      abb38(46)=spal6k7*abb38(46)
      abb38(56)=-spak1l6*abb38(65)
      abb38(46)=abb38(53)+abb38(46)+abb38(56)
      abb38(46)=abb38(66)*abb38(46)
      abb38(38)=-abb38(8)*abb38(38)
      abb38(47)=-abb38(47)-abb38(64)
      abb38(47)=abb38(9)*abb38(47)
      abb38(38)=abb38(38)+abb38(47)
      abb38(38)=abb38(38)*abb38(51)
      abb38(37)=abb38(8)*abb38(37)
      abb38(47)=abb38(55)*abb38(2)
      abb38(51)=abb38(47)+abb38(61)
      abb38(51)=abb38(9)*abb38(51)
      abb38(37)=abb38(37)+abb38(51)
      abb38(37)=abb38(37)*abb38(57)
      abb38(51)=spbk7k3*abb38(87)
      abb38(53)=-spbk3k1*abb38(89)
      abb38(51)=abb38(53)+abb38(51)
      abb38(51)=spak1k7*abb38(51)
      abb38(28)=spak2k4*abb38(28)
      abb38(53)=abb38(60)-abb38(89)
      abb38(55)=-spal6k7*abb38(53)
      abb38(56)=abb38(58)*abb38(77)
      abb38(11)=abb38(11)*spak3k4
      abb38(11)=abb38(56)-abb38(11)
      abb38(11)=abb38(11)*abb38(2)
      abb38(56)=abb38(11)-abb38(87)
      abb38(57)=spak1l6*abb38(56)
      abb38(55)=abb38(55)+abb38(57)
      abb38(55)=abb38(55)*abb38(70)
      abb38(57)=-spal5k7*abb38(53)
      abb38(58)=spak1l5*abb38(56)
      abb38(57)=abb38(57)+abb38(58)
      abb38(57)=abb38(57)*abb38(72)
      abb38(28)=abb38(37)+abb38(38)+abb38(57)+abb38(55)+abb38(28)+abb38(46)+abb&
      &38(51)
      abb38(28)=2.0_ki*abb38(28)
      abb38(37)=abb38(52)*spak4k7
      abb38(38)=abb38(54)*spak1k4
      abb38(37)=abb38(37)-abb38(38)
      abb38(37)=16.0_ki*abb38(37)
      abb38(38)=4.0_ki*abb38(53)
      abb38(46)=-abb38(52)*abb38(49)
      abb38(20)=abb38(20)*abb38(30)
      abb38(12)=abb38(30)*abb38(12)
      abb38(20)=abb38(20)-abb38(12)
      abb38(51)=abb38(20)*spbk7k2
      abb38(53)=-abb38(26)*abb38(21)
      abb38(55)=abb38(53)*spbk2k1
      abb38(51)=abb38(55)+abb38(51)
      abb38(51)=abb38(51)*spak1k7
      abb38(55)=-spbk7e7*abb38(21)
      abb38(57)=abb38(55)*spal5k7
      abb38(58)=-spbe7k1*abb38(21)
      abb38(60)=abb38(58)*spak1l5
      abb38(57)=abb38(57)-abb38(60)
      abb38(60)=abb38(20)*spak1l6
      abb38(61)=abb38(53)*spal6k7
      abb38(60)=abb38(61)+abb38(60)
      abb38(23)=abb38(60)*abb38(23)
      abb38(23)=abb38(23)+abb38(51)+3.0_ki*abb38(57)
      abb38(23)=spak4l6*abb38(23)
      abb38(51)=-abb38(22)*abb38(21)
      abb38(57)=abb38(51)*spbk7k2
      abb38(21)=-abb38(16)*abb38(21)
      abb38(61)=abb38(21)*spbk2k1
      abb38(57)=abb38(57)-abb38(61)
      abb38(57)=abb38(57)*spak1k7
      abb38(55)=abb38(55)*spal6k7
      abb38(58)=abb38(58)*spak1l6
      abb38(55)=abb38(55)-abb38(58)
      abb38(58)=abb38(51)*spak1l5
      abb38(61)=abb38(21)*spal5k7
      abb38(58)=abb38(58)-abb38(61)
      abb38(31)=abb38(58)*abb38(31)
      abb38(31)=-abb38(31)-abb38(57)+3.0_ki*abb38(55)
      abb38(31)=spak4l5*abb38(31)
      abb38(55)=abb38(60)-abb38(58)
      abb38(36)=abb38(36)*abb38(55)
      abb38(23)=-abb38(36)+abb38(31)+abb38(23)
      abb38(31)=spbk4k2*abb38(23)
      abb38(36)=spak3k7*spbk7k2
      abb38(55)=-spak1k3*spbk2k1
      abb38(36)=abb38(55)+abb38(36)
      abb38(36)=abb38(35)*abb38(36)
      abb38(55)=-spak3l6*abb38(24)
      abb38(57)=spak3l5*abb38(32)
      abb38(31)=abb38(57)+abb38(55)+abb38(31)+abb38(36)
      abb38(31)=2.0_ki*abb38(31)
      abb38(14)=abb38(30)*abb38(14)
      abb38(12)=abb38(12)*abb38(2)
      abb38(12)=abb38(14)-abb38(12)
      abb38(12)=abb38(12)*abb38(2)
      abb38(12)=abb38(12)+abb38(20)
      abb38(12)=abb38(12)*spak1k4
      abb38(13)=abb38(13)*abb38(2)
      abb38(14)=abb38(26)*abb38(13)
      abb38(14)=abb38(14)+abb38(53)
      abb38(14)=abb38(14)*spak4k7
      abb38(12)=abb38(12)+abb38(14)
      abb38(14)=-spbk4k2*abb38(12)
      abb38(20)=-spak3k7*abb38(45)
      abb38(36)=spak1k3*abb38(59)
      abb38(14)=abb38(36)+abb38(14)+abb38(20)
      abb38(14)=8.0_ki*abb38(14)
      abb38(20)=abb38(16)*abb38(13)
      abb38(20)=abb38(20)+abb38(21)
      abb38(20)=abb38(20)*spak4k7
      abb38(13)=abb38(22)*abb38(13)
      abb38(13)=abb38(13)+abb38(51)
      abb38(13)=abb38(13)*spak1k4
      abb38(13)=abb38(20)-abb38(13)
      abb38(20)=-spbk4k2*abb38(13)
      abb38(21)=-spak3k7*abb38(52)
      abb38(36)=spak1k3*abb38(54)
      abb38(20)=abb38(36)+abb38(20)+abb38(21)
      abb38(20)=8.0_ki*abb38(20)
      abb38(21)=-spbk4k3*abb38(23)
      abb38(23)=es712*abb38(35)
      abb38(24)=spak2l6*abb38(24)
      abb38(32)=-spak2l5*abb38(32)
      abb38(26)=spal6k7*abb38(26)
      abb38(16)=spal5k7*abb38(16)
      abb38(30)=-spak1l6*abb38(30)
      abb38(22)=-spak1l5*abb38(22)
      abb38(16)=abb38(22)+abb38(30)+abb38(26)+abb38(16)
      abb38(10)=abb38(10)-abb38(40)
      abb38(10)=abb38(16)*abb38(10)*spbk3k2*mB
      abb38(10)=abb38(32)+abb38(24)+abb38(23)+abb38(21)+abb38(10)
      abb38(10)=2.0_ki*abb38(10)
      abb38(12)=spbk4k3*abb38(12)
      abb38(16)=spak2k7*abb38(45)
      abb38(21)=-spak1k2*abb38(59)
      abb38(12)=abb38(21)+abb38(12)+abb38(16)
      abb38(12)=8.0_ki*abb38(12)
      abb38(13)=spbk4k3*abb38(13)
      abb38(16)=spak2k7*abb38(52)
      abb38(21)=-spak1k2*abb38(54)
      abb38(13)=abb38(21)+abb38(13)+abb38(16)
      abb38(13)=8.0_ki*abb38(13)
      abb38(16)=-4.0_ki*abb38(69)
      abb38(21)=4.0_ki*abb38(56)
      abb38(22)=abb38(41)*abb38(43)
      abb38(23)=abb38(47)*abb38(48)
      abb38(24)=-spbl5k3*abb38(68)
      abb38(11)=-spbl6k3*abb38(11)
      abb38(11)=abb38(11)+abb38(24)
      abb38(11)=spal5l6*abb38(11)
      abb38(11)=abb38(11)+abb38(23)+abb38(39)+abb38(22)
      abb38(11)=4.0_ki*abb38(11)
      abb38(22)=-abb38(59)*abb38(49)
      abb38(23)=-abb38(54)*abb38(49)
      R2d38=abb38(25)
      rat2 = rat2 + R2d38
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='38' value='", &
          & R2d38, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd38h0
