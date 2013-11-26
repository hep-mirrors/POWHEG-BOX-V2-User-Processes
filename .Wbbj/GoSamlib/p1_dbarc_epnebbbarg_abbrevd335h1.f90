module     p1_dbarc_epnebbbarg_abbrevd335h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(72), public :: abb335
   complex(ki), public :: R2d335
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
      abb335(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb335(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb335(3)=NC**(-1)
      abb335(4)=es234**(-1)
      abb335(5)=es567**(-1)
      abb335(6)=spak2l5**(-1)
      abb335(7)=spbl6k2**(-1)
      abb335(8)=spbl5k2**(-1)
      abb335(9)=sqrt(mB**2)
      abb335(10)=1.0_ki/(es34+es567-es12-es234)
      abb335(11)=c1*abb335(3)
      abb335(12)=c2*abb335(3)**2
      abb335(11)=abb335(11)-abb335(12)
      abb335(12)=TR*gW
      abb335(12)=abb335(12)**2*i_*CVDC*abb335(5)*abb335(2)
      abb335(13)=abb335(12)*abb335(4)*abb335(1)
      abb335(14)=-abb335(13)*abb335(11)
      abb335(15)=-spbk3k2*abb335(14)
      abb335(16)=abb335(15)*spak2k4
      abb335(12)=-abb335(12)*abb335(11)
      abb335(17)=-abb335(1)*abb335(12)
      abb335(18)=spak1k4*abb335(10)
      abb335(19)=abb335(18)*spbk3k1
      abb335(20)=abb335(17)*abb335(19)
      abb335(16)=abb335(16)-abb335(20)
      abb335(20)=spbe7l5*spak1l6
      abb335(21)=abb335(20)*spae7k7
      abb335(22)=-abb335(16)*abb335(21)*spbk7k2
      abb335(18)=abb335(18)*spbk4k3
      abb335(23)=abb335(18)*spak4l6
      abb335(24)=abb335(23)*abb335(17)
      abb335(25)=spbe7l5*spae7k7
      abb335(26)=abb335(25)*spbk7k2
      abb335(27)=abb335(26)*abb335(24)
      abb335(11)=abb335(11)*abb335(13)*abb335(6)
      abb335(13)=spbk3k2*mB
      abb335(28)=abb335(11)*abb335(13)**2
      abb335(29)=abb335(7)*spak3k4
      abb335(30)=abb335(28)*abb335(29)
      abb335(31)=spak2e7*spak1k7*spbk7e7
      abb335(32)=abb335(30)*abb335(31)
      abb335(33)=spak1l6*spak3k4
      abb335(34)=abb335(33)*abb335(15)
      abb335(35)=abb335(25)*spbk7k3
      abb335(36)=abb335(35)*abb335(34)
      abb335(22)=abb335(36)+abb335(22)+abb335(27)+abb335(32)
      abb335(27)=abb335(30)*spak1l5
      abb335(32)=abb335(27)*spak2e7
      abb335(36)=abb335(28)*abb335(8)
      abb335(37)=abb335(33)*spak2e7
      abb335(38)=abb335(36)*abb335(37)
      abb335(32)=abb335(32)-abb335(38)
      abb335(38)=abb335(34)*spbl5k3
      abb335(39)=abb335(38)*spal5e7
      abb335(39)=abb335(39)+abb335(32)
      abb335(40)=spbk3k2**2
      abb335(41)=-abb335(14)*abb335(40)*mB
      abb335(42)=abb335(29)*abb335(9)
      abb335(43)=abb335(41)*abb335(42)
      abb335(44)=abb335(43)*spak1e7
      abb335(44)=abb335(44)-abb335(39)
      abb335(44)=abb335(44)*spbe7l5
      abb335(20)=-spbl5k2*abb335(20)*abb335(16)
      abb335(45)=abb335(24)*spbl5k2
      abb335(46)=abb335(45)*spbe7l5
      abb335(20)=abb335(20)+abb335(46)
      abb335(46)=abb335(20)*spal5e7
      abb335(47)=-abb335(13)*abb335(11)
      abb335(48)=abb335(47)*abb335(9)
      abb335(49)=abb335(37)*abb335(48)
      abb335(50)=abb335(49)*spbe7k3
      abb335(44)=abb335(44)+abb335(22)+abb335(50)-abb335(46)
      abb335(50)=-2.0_ki*abb335(44)
      abb335(51)=abb335(9)**2
      abb335(20)=abb335(51)*abb335(20)
      abb335(12)=abb335(12)*abb335(6)*abb335(1)
      abb335(52)=-mB*abb335(12)
      abb335(53)=spbk7e7*abb335(9)
      abb335(54)=abb335(52)*abb335(53)
      abb335(55)=abb335(19)*spak1l6
      abb335(56)=abb335(54)*abb335(55)
      abb335(57)=abb335(53)*abb335(47)
      abb335(58)=spak2k4*spak1l6
      abb335(59)=abb335(57)*abb335(58)
      abb335(56)=abb335(56)+abb335(59)
      abb335(59)=spbl5k2*abb335(56)
      abb335(60)=abb335(23)*spbl5k2
      abb335(61)=abb335(60)*abb335(54)
      abb335(59)=abb335(59)+abb335(61)
      abb335(59)=spak2k7*abb335(59)
      abb335(62)=abb335(51)*spbe7l5
      abb335(63)=abb335(34)*abb335(62)
      abb335(64)=abb335(57)*spak2k7
      abb335(65)=-abb335(33)*abb335(64)
      abb335(63)=abb335(63)+abb335(65)
      abb335(63)=spbl5k3*abb335(63)
      abb335(20)=abb335(63)+abb335(59)+abb335(20)
      abb335(20)=spal5e7*abb335(20)
      abb335(59)=spak2e7*spbl5k2
      abb335(56)=-abb335(56)*abb335(59)
      abb335(61)=-spak2e7*abb335(61)
      abb335(63)=spbl5k3*abb335(57)*abb335(37)
      abb335(56)=abb335(63)+abb335(56)+abb335(61)
      abb335(56)=spal5k7*abb335(56)
      abb335(61)=spbk7l5*spae7k7
      abb335(63)=abb335(51)*abb335(61)
      abb335(65)=-abb335(34)*abb335(63)
      abb335(66)=abb335(9)**3
      abb335(37)=-abb335(47)*abb335(66)*abb335(37)
      abb335(37)=abb335(65)+abb335(37)
      abb335(37)=spbe7k3*abb335(37)
      abb335(32)=abb335(62)*abb335(32)
      abb335(47)=-spak1l6*abb335(16)
      abb335(24)=abb335(47)+abb335(24)
      abb335(62)=-abb335(63)*abb335(24)
      abb335(40)=abb335(11)*abb335(40)*mB**3
      abb335(63)=spak1k2*abb335(40)*abb335(42)
      abb335(65)=abb335(61)*abb335(8)
      abb335(67)=-abb335(65)*abb335(63)
      abb335(62)=abb335(67)+abb335(62)
      abb335(62)=spbe7k2*abb335(62)
      abb335(41)=abb335(41)*abb335(29)
      abb335(66)=-abb335(66)*spbe7l5*abb335(41)
      abb335(67)=spak2k7*spbk7e7
      abb335(68)=abb335(67)*abb335(30)
      abb335(51)=-abb335(51)*abb335(68)
      abb335(51)=abb335(66)+abb335(51)
      abb335(51)=spak1e7*abb335(51)
      abb335(63)=abb335(26)*abb335(8)*abb335(63)
      abb335(20)=abb335(37)+abb335(51)+abb335(56)+abb335(62)+abb335(63)+abb335(&
      &32)+abb335(20)
      abb335(20)=4.0_ki*abb335(20)
      abb335(13)=-abb335(13)*abb335(14)
      abb335(32)=-abb335(9)*abb335(15)
      abb335(32)=abb335(32)-abb335(13)
      abb335(32)=abb335(32)*abb335(58)
      abb335(37)=mB+abb335(9)
      abb335(37)=abb335(17)*abb335(37)
      abb335(51)=abb335(37)*abb335(55)
      abb335(32)=abb335(32)+abb335(51)
      abb335(32)=spbl5k2*abb335(32)
      abb335(37)=abb335(37)*abb335(60)
      abb335(32)=abb335(32)+abb335(37)
      abb335(37)=spak3k4*abb335(40)
      abb335(40)=abb335(9)*spak3k4
      abb335(28)=abb335(28)*abb335(40)
      abb335(28)=abb335(37)+abb335(28)
      abb335(37)=2.0_ki*spak1k2
      abb335(28)=abb335(7)*abb335(28)*abb335(37)
      abb335(37)=spak3k4*abb335(13)
      abb335(51)=abb335(15)*abb335(40)
      abb335(37)=abb335(37)+abb335(51)
      abb335(51)=2.0_ki*spbl5k3
      abb335(37)=spak1l6*abb335(37)*abb335(51)
      abb335(28)=2.0_ki*abb335(32)+abb335(37)+abb335(28)
      abb335(28)=abb335(9)*abb335(28)
      abb335(32)=abb335(48)*abb335(58)
      abb335(37)=abb335(52)*abb335(9)
      abb335(52)=abb335(37)*abb335(23)
      abb335(56)=abb335(37)*abb335(55)
      abb335(32)=abb335(56)+abb335(32)+abb335(52)
      abb335(52)=abb335(6)*spbk3k2
      abb335(14)=-abb335(29)*abb335(8)*abb335(14)*abb335(52)**2*mB**4
      abb335(52)=abb335(14)*spak1k2
      abb335(56)=-abb335(52)+abb335(32)
      abb335(60)=es71+es12-es712
      abb335(56)=abb335(56)*abb335(60)
      abb335(47)=abb335(47)*spbl5k2
      abb335(38)=abb335(47)+abb335(38)+abb335(45)
      abb335(45)=-spal5k7*spbk7l5*abb335(38)
      abb335(36)=abb335(36)*abb335(33)
      abb335(47)=abb335(36)-abb335(27)
      abb335(62)=spbk7l5*abb335(47)
      abb335(63)=abb335(48)*abb335(33)
      abb335(66)=abb335(63)*spbk7k3
      abb335(62)=-abb335(66)+abb335(62)
      abb335(62)=spak2k7*abb335(62)
      abb335(69)=-spak1k7*spbk7l5*abb335(43)
      abb335(28)=abb335(69)+abb335(45)+abb335(62)+abb335(56)+abb335(28)
      abb335(28)=8.0_ki*abb335(28)
      abb335(45)=abb335(61)*spbe7k2
      abb335(56)=abb335(24)*abb335(45)
      abb335(39)=spbe7l5*abb335(39)
      abb335(62)=-spbe7l5*abb335(43)
      abb335(62)=abb335(62)-abb335(68)
      abb335(62)=spak1e7*abb335(62)
      abb335(69)=abb335(34)*abb335(61)
      abb335(49)=-abb335(69)-abb335(49)
      abb335(49)=spbe7k3*abb335(49)
      abb335(39)=abb335(49)+abb335(62)-abb335(56)+abb335(46)+abb335(39)
      abb335(39)=8.0_ki*abb335(39)
      abb335(46)=abb335(30)*spak1k2
      abb335(49)=abb335(46)+abb335(38)
      abb335(49)=32.0_ki*abb335(49)
      abb335(62)=-spak1e7*abb335(68)
      abb335(68)=-spbe7k3*abb335(69)
      abb335(22)=abb335(68)+abb335(62)-abb335(56)+abb335(22)
      abb335(22)=8.0_ki*abb335(22)
      abb335(46)=2.0_ki*abb335(46)+abb335(38)
      abb335(46)=16.0_ki*abb335(46)
      abb335(56)=mB**2
      abb335(11)=spbk3k2*abb335(56)*abb335(11)
      abb335(62)=abb335(11)*abb335(8)
      abb335(68)=abb335(62)*abb335(61)
      abb335(69)=-spbe7k3*abb335(68)
      abb335(70)=abb335(62)*abb335(35)
      abb335(69)=abb335(70)+abb335(69)
      abb335(69)=abb335(33)*abb335(69)
      abb335(70)=-spak1e7*abb335(67)
      abb335(31)=abb335(70)+abb335(31)
      abb335(14)=abb335(14)*abb335(31)
      abb335(31)=abb335(62)*spak2k4
      abb335(12)=abb335(56)*abb335(12)
      abb335(70)=abb335(12)*abb335(8)
      abb335(71)=abb335(70)*abb335(19)
      abb335(31)=abb335(31)+abb335(71)
      abb335(31)=abb335(31)*spbk7k2
      abb335(21)=-abb335(21)*abb335(31)
      abb335(55)=abb335(55)+abb335(23)
      abb335(65)=abb335(65)*abb335(12)
      abb335(71)=abb335(65)*abb335(55)
      abb335(72)=abb335(58)*abb335(68)
      abb335(71)=abb335(72)+abb335(71)
      abb335(71)=spbe7k2*abb335(71)
      abb335(70)=abb335(70)*abb335(26)
      abb335(23)=-abb335(23)*abb335(70)
      abb335(14)=abb335(71)+abb335(21)+abb335(23)+abb335(14)+abb335(69)
      abb335(14)=8.0_ki*abb335(14)
      abb335(21)=abb335(37)+2.0_ki*abb335(12)
      abb335(21)=-abb335(21)*abb335(55)
      abb335(23)=-2.0_ki*abb335(11)-abb335(48)
      abb335(23)=abb335(23)*abb335(58)
      abb335(33)=abb335(33)*abb335(62)*abb335(51)
      abb335(21)=abb335(33)+abb335(52)+abb335(23)+abb335(21)
      abb335(21)=16.0_ki*abb335(21)
      abb335(23)=4.0_ki*abb335(44)
      abb335(33)=spal5k7*spbk7e7*abb335(38)
      abb335(36)=-abb335(67)*abb335(36)
      abb335(38)=-spak1k7*abb335(53)*abb335(41)
      abb335(33)=abb335(38)+abb335(36)+abb335(33)
      abb335(33)=4.0_ki*abb335(33)
      abb335(32)=abb335(52)+abb335(32)
      abb335(32)=spbk7k2*abb335(32)
      abb335(32)=-abb335(66)+abb335(32)
      abb335(32)=spae7k7*abb335(32)
      abb335(27)=abb335(61)*abb335(27)
      abb335(27)=abb335(27)+abb335(32)
      abb335(27)=4.0_ki*abb335(27)
      abb335(24)=-spbk7k2*abb335(24)
      abb335(32)=-spbk7k3*abb335(34)
      abb335(24)=abb335(32)+abb335(24)
      abb335(24)=8.0_ki*abb335(24)
      abb335(32)=abb335(26)*abb335(62)
      abb335(34)=abb335(68)*spbe7k2
      abb335(32)=abb335(32)-abb335(34)
      abb335(34)=-spak1k2*abb335(32)
      abb335(36)=spak1k7*spak2e7
      abb335(38)=-abb335(57)*abb335(36)
      abb335(41)=spak1e7*abb335(64)
      abb335(34)=abb335(41)+abb335(38)+abb335(34)
      abb335(34)=4.0_ki*spak3k4*abb335(34)
      abb335(38)=abb335(48)+abb335(11)
      abb335(41)=abb335(38)*spak3k4
      abb335(44)=-spak1k2*abb335(41)
      abb335(15)=abb335(15)*spak3k4
      abb335(48)=spbk7l5*abb335(15)
      abb335(51)=spak1k7*abb335(48)
      abb335(44)=abb335(44)+abb335(51)
      abb335(44)=16.0_ki*abb335(44)
      abb335(51)=spak4k7*spak2e7
      abb335(52)=-spak4e7*spak2k7
      abb335(51)=abb335(52)+abb335(51)
      abb335(52)=abb335(54)*abb335(18)
      abb335(51)=abb335(52)*abb335(51)
      abb335(53)=abb335(54)*abb335(19)
      abb335(54)=abb335(57)*spak2k4
      abb335(53)=abb335(53)+abb335(54)
      abb335(54)=-spak1e7*spak2k7
      abb335(36)=abb335(54)+abb335(36)
      abb335(36)=abb335(53)*abb335(36)
      abb335(25)=abb335(25)*abb335(31)
      abb335(31)=spak1k2*abb335(25)
      abb335(54)=abb335(65)*abb335(19)
      abb335(55)=abb335(68)*spak2k4
      abb335(54)=abb335(54)+abb335(55)
      abb335(55)=-spak1k2*abb335(54)
      abb335(58)=abb335(18)*spak2k4
      abb335(62)=abb335(65)*abb335(58)
      abb335(55)=abb335(62)+abb335(55)
      abb335(55)=spbe7k2*abb335(55)
      abb335(62)=-abb335(70)*abb335(58)
      abb335(31)=abb335(55)+abb335(62)+abb335(31)+abb335(36)+abb335(51)
      abb335(31)=4.0_ki*abb335(31)
      abb335(12)=abb335(37)+abb335(12)
      abb335(19)=abb335(12)*abb335(19)
      abb335(36)=abb335(38)*spak2k4
      abb335(19)=abb335(19)+abb335(36)
      abb335(36)=spak1k2*abb335(19)
      abb335(37)=-abb335(12)*abb335(58)
      abb335(16)=abb335(16)*spbk7l5
      abb335(38)=-spak1k7*abb335(16)
      abb335(17)=abb335(17)*spbk7l5
      abb335(51)=spak4k7*abb335(18)*abb335(17)
      abb335(36)=abb335(51)+abb335(38)+abb335(37)+abb335(36)
      abb335(36)=16.0_ki*abb335(36)
      abb335(37)=spal6k7*spak2e7
      abb335(38)=spal6e7*spak2k7
      abb335(38)=abb335(37)-abb335(38)
      abb335(51)=-abb335(52)*abb335(38)
      abb335(52)=-spbe7k2*abb335(65)
      abb335(52)=abb335(70)+abb335(52)
      abb335(52)=spak2l6*abb335(18)*abb335(52)
      abb335(51)=abb335(52)+abb335(51)
      abb335(51)=4.0_ki*abb335(51)
      abb335(12)=spak2l6*abb335(12)
      abb335(17)=-spal6k7*abb335(17)
      abb335(12)=abb335(12)+abb335(17)
      abb335(12)=16.0_ki*abb335(18)*abb335(12)
      abb335(17)=-8.0_ki*spak1k7*abb335(30)
      abb335(18)=8.0_ki*abb335(47)
      abb335(30)=8.0_ki*abb335(63)
      abb335(43)=8.0_ki*abb335(43)
      abb335(32)=-spak2l6*abb335(32)
      abb335(37)=abb335(57)*abb335(37)
      abb335(47)=-spal6e7*abb335(64)
      abb335(32)=abb335(32)+abb335(47)+abb335(37)
      abb335(32)=spak3k4*abb335(32)
      abb335(37)=spal5k7*spbk7e7
      abb335(47)=-abb335(59)*abb335(37)
      abb335(52)=abb335(67)*spal5e7
      abb335(55)=spbl5k2*abb335(52)
      abb335(47)=abb335(47)+abb335(55)
      abb335(11)=abb335(11)*abb335(29)
      abb335(29)=abb335(11)*abb335(47)
      abb335(26)=abb335(45)-abb335(26)
      abb335(42)=abb335(13)*abb335(42)
      abb335(26)=abb335(42)*abb335(26)
      abb335(26)=abb335(26)+abb335(29)+abb335(32)
      abb335(26)=4.0_ki*abb335(26)
      abb335(13)=abb335(40)*abb335(13)
      abb335(15)=abb335(56)*abb335(15)
      abb335(13)=abb335(13)-abb335(15)
      abb335(13)=abb335(13)*abb335(7)
      abb335(15)=-spbl5k2*abb335(13)
      abb335(29)=-spak2l6*abb335(41)
      abb335(32)=abb335(11)*abb335(60)
      abb335(40)=-spal6k7*abb335(48)
      abb335(15)=abb335(40)+abb335(15)+abb335(29)+abb335(32)
      abb335(15)=16.0_ki*abb335(15)
      abb335(29)=-spbe7k2*abb335(54)
      abb335(25)=abb335(25)+abb335(29)
      abb335(25)=spak2l6*abb335(25)
      abb335(29)=spak2e7*abb335(37)
      abb335(29)=abb335(29)-abb335(52)
      abb335(29)=abb335(11)*spbl5k3*abb335(29)
      abb335(32)=abb335(61)*spbe7k3
      abb335(32)=abb335(35)-abb335(32)
      abb335(32)=abb335(42)*abb335(32)
      abb335(35)=-abb335(53)*abb335(38)
      abb335(25)=abb335(25)+abb335(35)+abb335(32)+abb335(29)
      abb335(25)=4.0_ki*abb335(25)
      abb335(19)=spak2l6*abb335(19)
      abb335(13)=spbl5k3*abb335(13)
      abb335(16)=spal6k7*abb335(16)
      abb335(11)=-spbk7k3*spak2k7*abb335(11)
      abb335(11)=abb335(16)+abb335(11)+abb335(13)+abb335(19)
      abb335(11)=16.0_ki*abb335(11)
      R2d335=abb335(50)
      rat2 = rat2 + R2d335
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='335' value='", &
          & R2d335, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd335h1
