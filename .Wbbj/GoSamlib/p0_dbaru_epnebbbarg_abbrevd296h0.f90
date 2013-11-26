module     p0_dbaru_epnebbbarg_abbrevd296h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(81), public :: abb296
   complex(ki), public :: R2d296
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
      abb296(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb296(2)=NC**(-1)
      abb296(3)=spbl5k2**(-1)
      abb296(4)=sqrt(mB**2)
      abb296(5)=spak2l5**(-1)
      abb296(6)=spak2l6**(-1)
      abb296(7)=spbl6k2**(-1)
      abb296(8)=TR*gW
      abb296(8)=abb296(1)*abb296(8)**2
      abb296(9)=i_*CVDU
      abb296(10)=abb296(8)*abb296(9)
      abb296(11)=abb296(4)*abb296(10)
      abb296(12)=c4*abb296(2)**2
      abb296(12)=abb296(12)+c2
      abb296(13)=abb296(12)*spbe7k2
      abb296(14)=abb296(11)*abb296(13)
      abb296(15)=abb296(8)*abb296(4)
      abb296(16)=abb296(9)*abb296(2)
      abb296(17)=abb296(15)*abb296(16)
      abb296(18)=c1+c3
      abb296(19)=spbe7k2*abb296(18)
      abb296(20)=abb296(17)*abb296(19)
      abb296(14)=abb296(14)-abb296(20)
      abb296(20)=abb296(14)*spak1l5
      abb296(21)=spbl5k2*abb296(20)
      abb296(10)=mB*abb296(10)
      abb296(22)=abb296(10)*spbl6k2
      abb296(23)=abb296(22)*spak1l6*abb296(13)
      abb296(24)=abb296(10)*abb296(2)
      abb296(25)=abb296(24)*spak1l6
      abb296(26)=abb296(25)*spbl6k2
      abb296(27)=-abb296(26)*abb296(19)
      abb296(21)=abb296(21)+abb296(27)+abb296(23)
      abb296(23)=spbk7k3*spae7k7
      abb296(27)=abb296(23)*spak4l5
      abb296(21)=abb296(27)*abb296(21)
      abb296(28)=spbl6k2*abb296(20)
      abb296(29)=abb296(10)*spak1l6
      abb296(30)=abb296(3)*abb296(29)
      abb296(31)=abb296(30)*abb296(13)
      abb296(32)=spbl6k2**2
      abb296(33)=abb296(32)*abb296(31)
      abb296(34)=abb296(30)*abb296(2)
      abb296(35)=abb296(32)*abb296(34)
      abb296(36)=-abb296(35)*abb296(19)
      abb296(28)=abb296(28)+abb296(36)+abb296(33)
      abb296(33)=abb296(23)*spak4l6
      abb296(28)=abb296(28)*abb296(33)
      abb296(36)=abb296(30)*spbl6k2
      abb296(37)=-abb296(36)*abb296(13)
      abb296(38)=abb296(34)*spbl6k2
      abb296(39)=abb296(38)*abb296(19)
      abb296(37)=abb296(39)+abb296(37)
      abb296(39)=abb296(37)-abb296(20)
      abb296(40)=spbk2k1*spak1k4
      abb296(41)=abb296(40)*abb296(23)
      abb296(42)=abb296(39)*abb296(41)
      abb296(21)=abb296(42)+abb296(28)+abb296(21)
      abb296(21)=4.0_ki*spak2l6*abb296(21)
      abb296(28)=abb296(18)*spbk3k2
      abb296(42)=-abb296(17)*abb296(28)
      abb296(43)=abb296(9)*spbk3k2
      abb296(44)=abb296(15)*abb296(43)
      abb296(45)=abb296(44)*abb296(12)
      abb296(42)=abb296(45)+abb296(42)
      abb296(45)=abb296(42)*spak1l5
      abb296(46)=abb296(30)*spbk3k2
      abb296(47)=abb296(46)*abb296(2)
      abb296(48)=abb296(47)*spbl6k2
      abb296(49)=abb296(48)*abb296(18)
      abb296(50)=abb296(46)*spbl6k2
      abb296(51)=abb296(50)*abb296(12)
      abb296(49)=abb296(49)-abb296(51)
      abb296(51)=abb296(49)-abb296(45)
      abb296(52)=spbk7k2*spak4k7
      abb296(53)=abb296(52)-abb296(40)
      abb296(53)=abb296(51)*abb296(53)
      abb296(54)=abb296(47)*abb296(18)
      abb296(55)=abb296(46)*abb296(12)
      abb296(54)=abb296(54)-abb296(55)
      abb296(55)=abb296(32)*abb296(54)
      abb296(56)=-spbl6k2*abb296(45)
      abb296(55)=abb296(56)+abb296(55)
      abb296(55)=spak4l6*abb296(55)
      abb296(56)=abb296(10)*spbk3k2
      abb296(57)=spak1l6*abb296(12)
      abb296(58)=abb296(56)*abb296(57)
      abb296(59)=-spbl6k2*abb296(58)
      abb296(26)=abb296(26)*abb296(28)
      abb296(26)=abb296(26)+abb296(59)
      abb296(26)=spak4l5*abb296(26)
      abb296(59)=abb296(45)*spak4l5
      abb296(60)=-spbl5k2*abb296(59)
      abb296(26)=abb296(60)+abb296(26)+abb296(55)+abb296(53)
      abb296(26)=8.0_ki*spak2l6*abb296(26)
      abb296(53)=-abb296(28)*abb296(17)*spbe7k2
      abb296(55)=abb296(44)*abb296(13)
      abb296(53)=abb296(55)+abb296(53)
      abb296(53)=abb296(53)*spak1l5
      abb296(50)=abb296(50)*abb296(13)
      abb296(48)=-abb296(48)*abb296(19)
      abb296(48)=abb296(53)+abb296(48)+abb296(50)
      abb296(50)=abb296(48)*spak2l6
      abb296(53)=8.0_ki*spak4e7
      abb296(55)=abb296(53)*abb296(50)
      abb296(60)=abb296(19)*abb296(25)
      abb296(61)=abb296(10)*spbe7k2
      abb296(62)=abb296(57)*abb296(61)
      abb296(60)=abb296(60)-abb296(62)
      abb296(60)=abb296(60)*abb296(27)
      abb296(62)=abb296(34)*abb296(19)
      abb296(31)=abb296(31)-abb296(62)
      abb296(62)=abb296(41)*abb296(31)
      abb296(60)=abb296(60)+abb296(62)
      abb296(62)=-abb296(39)*abb296(33)
      abb296(62)=abb296(62)-abb296(60)
      abb296(62)=8.0_ki*abb296(62)
      abb296(63)=abb296(28)*abb296(25)
      abb296(58)=abb296(63)-abb296(58)
      abb296(58)=abb296(58)*spak4l5
      abb296(63)=abb296(52)*abb296(54)
      abb296(58)=abb296(58)+abb296(63)
      abb296(63)=spak4l6*abb296(51)
      abb296(64)=abb296(54)*abb296(40)
      abb296(63)=abb296(63)-abb296(64)+abb296(58)
      abb296(63)=16.0_ki*abb296(63)
      abb296(46)=-abb296(12)*abb296(46)*spbe7k2
      abb296(47)=abb296(47)*abb296(19)
      abb296(46)=abb296(47)+abb296(46)
      abb296(47)=abb296(46)*spak4e7
      abb296(47)=16.0_ki*abb296(47)
      abb296(38)=-abb296(38)*abb296(18)
      abb296(36)=abb296(36)*abb296(12)
      abb296(36)=abb296(36)+abb296(38)
      abb296(38)=abb296(11)*abb296(12)
      abb296(65)=abb296(17)*abb296(18)
      abb296(65)=abb296(38)-abb296(65)
      abb296(66)=abb296(65)*spak1l5
      abb296(67)=abb296(36)+abb296(66)
      abb296(68)=abb296(40)*spbe7k3
      abb296(69)=abb296(67)*abb296(68)
      abb296(70)=spbe7k3*spak4l5
      abb296(71)=spbl5k2*abb296(70)*abb296(66)
      abb296(69)=abb296(71)-abb296(69)
      abb296(71)=spbl6k2*abb296(18)
      abb296(72)=-abb296(17)*abb296(71)
      abb296(38)=spbl6k2*abb296(38)
      abb296(38)=abb296(38)+abb296(72)
      abb296(72)=abb296(38)*spak1l5
      abb296(30)=abb296(30)*abb296(12)
      abb296(32)=abb296(32)*abb296(30)
      abb296(35)=abb296(35)*abb296(18)
      abb296(32)=abb296(32)-abb296(35)
      abb296(35)=abb296(72)+abb296(32)
      abb296(72)=spak4l6*spbe7k3
      abb296(35)=abb296(35)*abb296(72)
      abb296(73)=spbk7e7*spak4k7
      abb296(51)=abb296(51)*abb296(73)
      abb296(48)=abb296(48)*spak2k4
      abb296(57)=abb296(57)*abb296(22)
      abb296(74)=abb296(71)*abb296(25)
      abb296(57)=abb296(57)-abb296(74)
      abb296(57)=abb296(57)*abb296(70)
      abb296(35)=abb296(51)+abb296(48)+abb296(57)+abb296(35)+abb296(69)
      abb296(35)=abb296(35)*spal6e7
      abb296(48)=abb296(50)*spak4e7
      abb296(35)=abb296(35)-abb296(48)
      abb296(37)=-abb296(37)*abb296(33)
      abb296(37)=abb296(37)-abb296(60)+abb296(35)
      abb296(37)=8.0_ki*abb296(37)
      abb296(48)=abb296(49)*spak4l6
      abb296(48)=abb296(48)-abb296(64)
      abb296(50)=abb296(48)+abb296(58)
      abb296(50)=16.0_ki*abb296(50)
      abb296(35)=4.0_ki*abb296(35)
      abb296(51)=abb296(53)*abb296(46)
      abb296(57)=abb296(12)*abb296(29)
      abb296(58)=abb296(18)*abb296(25)
      abb296(57)=abb296(57)-abb296(58)
      abb296(57)=abb296(57)*abb296(70)
      abb296(58)=abb296(73)*abb296(54)
      abb296(60)=abb296(36)*abb296(72)
      abb296(46)=abb296(46)*spak2k4
      abb296(34)=abb296(34)*abb296(18)
      abb296(30)=abb296(34)-abb296(30)
      abb296(34)=abb296(30)*abb296(68)
      abb296(34)=-abb296(57)-abb296(58)-abb296(60)+abb296(46)-abb296(34)
      abb296(46)=8.0_ki*abb296(34)
      abb296(34)=4.0_ki*abb296(34)
      abb296(57)=4.0_ki*abb296(20)
      abb296(58)=abb296(27)*abb296(57)
      abb296(60)=-8.0_ki*abb296(59)
      abb296(64)=-8.0_ki*abb296(66)*abb296(52)
      abb296(20)=abb296(53)*abb296(20)
      abb296(74)=-spak4e7*abb296(57)
      abb296(75)=abb296(42)*spak1k4
      abb296(76)=spal5k7*abb296(75)
      abb296(77)=spak1k7*spak4l5*abb296(42)
      abb296(76)=abb296(77)+abb296(76)
      abb296(76)=spbk7e7*abb296(76)
      abb296(9)=abb296(15)*abb296(9)
      abb296(15)=spak1l6*abb296(9)
      abb296(15)=abb296(15)+abb296(29)
      abb296(15)=abb296(15)*abb296(12)
      abb296(29)=-spbl6k2*abb296(15)
      abb296(8)=abb296(4)*spak1l6*abb296(8)
      abb296(16)=abb296(16)*abb296(8)
      abb296(16)=abb296(16)+abb296(25)
      abb296(25)=abb296(16)*abb296(71)
      abb296(25)=abb296(25)+abb296(29)
      abb296(25)=abb296(25)*abb296(70)
      abb296(29)=-abb296(32)*abb296(72)
      abb296(32)=-abb296(49)*abb296(73)
      abb296(25)=abb296(32)+abb296(76)+abb296(25)+abb296(29)-abb296(69)
      abb296(25)=spak2e7*abb296(25)
      abb296(8)=abb296(43)*abb296(8)
      abb296(29)=abb296(56)*spak1l6
      abb296(8)=abb296(8)+abb296(29)
      abb296(8)=abb296(8)*abb296(12)
      abb296(16)=abb296(18)*abb296(16)
      abb296(29)=-spbk3k2*abb296(16)
      abb296(8)=abb296(29)+abb296(8)
      abb296(8)=spak4l5*abb296(8)
      abb296(8)=abb296(8)-abb296(48)
      abb296(8)=spak2e7*abb296(8)
      abb296(15)=abb296(16)-abb296(15)
      abb296(16)=abb296(15)*abb296(27)
      abb296(29)=-abb296(36)*abb296(33)
      abb296(32)=-abb296(30)*abb296(41)
      abb296(8)=abb296(8)+abb296(32)+abb296(16)+abb296(29)
      abb296(8)=spbe7l6*abb296(8)
      abb296(16)=mB**2
      abb296(9)=abb296(3)*abb296(16)*abb296(9)
      abb296(29)=abb296(9)*abb296(2)
      abb296(32)=-abb296(29)*abb296(19)
      abb296(43)=abb296(9)*abb296(13)
      abb296(32)=abb296(43)+abb296(32)
      abb296(43)=abb296(7)*abb296(6)
      abb296(48)=abb296(43)*abb296(14)*abb296(16)
      abb296(69)=spak2l5*abb296(48)
      abb296(76)=abb296(24)*abb296(3)
      abb296(77)=abb296(76)*abb296(19)
      abb296(61)=abb296(12)*abb296(61)
      abb296(78)=abb296(3)*abb296(61)
      abb296(78)=abb296(78)-abb296(77)
      abb296(79)=es12*abb296(78)
      abb296(69)=abb296(79)+abb296(69)+abb296(32)
      abb296(79)=abb296(23)*spak1k4
      abb296(69)=abb296(79)*abb296(69)
      abb296(32)=-abb296(5)*abb296(32)
      abb296(32)=abb296(32)-abb296(48)
      abb296(48)=spak2k4*spak1l5
      abb296(80)=abb296(48)*abb296(23)
      abb296(81)=abb296(27)*spak1k2
      abb296(80)=abb296(81)+abb296(80)
      abb296(32)=abb296(80)*abb296(32)
      abb296(19)=abb296(24)*abb296(19)
      abb296(19)=-abb296(61)+abb296(19)
      abb296(19)=abb296(19)*abb296(27)
      abb296(61)=spbl6k2*abb296(77)
      abb296(22)=abb296(22)*abb296(3)
      abb296(77)=-abb296(22)*abb296(13)
      abb296(61)=abb296(77)+abb296(61)
      abb296(61)=abb296(61)*abb296(33)
      abb296(19)=abb296(19)+abb296(61)
      abb296(19)=spak1k2*abb296(19)
      abb296(61)=abb296(65)*spak1k4
      abb296(23)=-abb296(23)*abb296(61)
      abb296(77)=spak2e7*abb296(75)
      abb296(23)=abb296(23)+abb296(77)
      abb296(23)=spbe7l6*abb296(23)
      abb296(38)=-spbe7k3*abb296(38)*spak2e7*spak1k4
      abb296(23)=abb296(38)+abb296(23)
      abb296(23)=spal5l6*abb296(23)
      abb296(38)=-abb296(66)*abb296(27)
      abb296(59)=spak2e7*abb296(59)
      abb296(38)=abb296(38)+abb296(59)
      abb296(38)=spbe7l5*abb296(38)
      abb296(59)=-abb296(66)*abb296(79)
      abb296(45)=abb296(45)*spak1k4
      abb296(77)=spak2e7*abb296(45)
      abb296(59)=abb296(59)+abb296(77)
      abb296(59)=spbe7k1*abb296(59)
      abb296(8)=abb296(59)+abb296(38)+abb296(23)+abb296(8)+abb296(19)+abb296(25&
      &)+abb296(69)+abb296(32)
      abb296(8)=4.0_ki*abb296(8)
      abb296(19)=abb296(44)+abb296(56)
      abb296(19)=abb296(19)*abb296(12)
      abb296(17)=abb296(17)+abb296(24)
      abb296(23)=-abb296(17)*abb296(28)
      abb296(19)=abb296(23)+abb296(19)
      abb296(19)=spak4l5*abb296(19)
      abb296(23)=abb296(76)*abb296(28)
      abb296(25)=abb296(56)*abb296(3)
      abb296(32)=abb296(25)*abb296(12)
      abb296(32)=abb296(32)-abb296(23)
      abb296(38)=spak4l6*abb296(32)*spbl6k2
      abb296(44)=abb296(32)*abb296(52)
      abb296(19)=abb296(44)+abb296(19)+abb296(38)
      abb296(19)=spak1k2*abb296(19)
      abb296(9)=-abb296(12)*abb296(9)*spbk3k2
      abb296(29)=abb296(29)*abb296(28)
      abb296(9)=abb296(29)+abb296(9)
      abb296(29)=-es12*abb296(32)
      abb296(44)=spbk3k1*abb296(66)
      abb296(29)=abb296(44)+abb296(29)+abb296(9)
      abb296(29)=spak1k4*abb296(29)
      abb296(15)=spak4l5*abb296(15)
      abb296(36)=-spak4l6*abb296(36)
      abb296(44)=-abb296(30)*abb296(40)
      abb296(15)=abb296(44)+abb296(15)+abb296(36)
      abb296(15)=spbl6k3*abb296(15)
      abb296(16)=abb296(43)*abb296(42)*abb296(16)
      abb296(9)=-abb296(5)*abb296(9)
      abb296(9)=abb296(9)+abb296(16)
      abb296(36)=spak1k2*spak4l5
      abb296(36)=abb296(36)+abb296(48)
      abb296(9)=abb296(36)*abb296(9)
      abb296(36)=spak1k7*spbk7k3*abb296(65)
      abb296(42)=-spbl5k3*abb296(66)
      abb296(36)=abb296(42)+abb296(36)
      abb296(36)=spak4l5*abb296(36)
      abb296(16)=-spak1k4*abb296(16)
      abb296(16)=-abb296(75)+abb296(16)
      abb296(16)=spak2l5*abb296(16)
      abb296(42)=-spal5l6*spbl6k3
      abb296(43)=spal5k7*spbk7k3
      abb296(42)=abb296(43)+abb296(42)
      abb296(42)=abb296(61)*abb296(42)
      abb296(43)=spak2k4*abb296(49)
      abb296(44)=-spbk7l6*spak4k7*abb296(54)
      abb296(9)=abb296(44)+abb296(16)+abb296(15)+abb296(43)+abb296(29)+abb296(4&
      &2)+abb296(19)+abb296(36)+abb296(9)
      abb296(9)=8.0_ki*abb296(9)
      abb296(15)=abb296(54)*spbe7l6
      abb296(16)=-spbe7k2*abb296(23)
      abb296(13)=abb296(25)*abb296(13)
      abb296(13)=abb296(13)+abb296(16)
      abb296(16)=abb296(13)*spak1k2
      abb296(15)=-abb296(16)+abb296(15)
      abb296(15)=spak4e7*abb296(15)
      abb296(16)=spbe7k3*abb296(61)*spal5e7
      abb296(15)=-abb296(16)+abb296(15)
      abb296(16)=-spak1e7*abb296(65)*abb296(70)
      abb296(16)=abb296(16)+abb296(15)
      abb296(16)=8.0_ki*abb296(16)
      abb296(19)=abb296(73)*abb296(32)
      abb296(23)=-abb296(12)*abb296(10)*abb296(3)
      abb296(25)=abb296(76)*abb296(18)
      abb296(23)=abb296(25)+abb296(23)
      abb296(25)=abb296(23)*abb296(68)
      abb296(22)=-abb296(22)*abb296(12)
      abb296(29)=abb296(76)*abb296(71)
      abb296(22)=abb296(29)+abb296(22)
      abb296(29)=abb296(22)*abb296(72)
      abb296(19)=-abb296(19)+abb296(25)-abb296(29)
      abb296(11)=abb296(11)+abb296(10)
      abb296(11)=abb296(11)*abb296(12)
      abb296(17)=-abb296(17)*abb296(18)
      abb296(11)=abb296(17)+abb296(11)
      abb296(11)=abb296(11)*abb296(70)
      abb296(13)=abb296(13)*spak2k4
      abb296(11)=abb296(13)+abb296(11)+abb296(19)
      abb296(11)=abb296(11)*spak1e7
      abb296(11)=abb296(11)-abb296(15)
      abb296(13)=8.0_ki*abb296(11)
      abb296(11)=4.0_ki*abb296(11)
      abb296(15)=abb296(79)*abb296(57)
      abb296(17)=-8.0_ki*abb296(45)
      abb296(25)=spbk7k2*spae7k7
      abb296(29)=4.0_ki*abb296(25)
      abb296(36)=-spak2l6*abb296(39)*abb296(29)
      abb296(42)=abb296(25)*abb296(31)
      abb296(43)=8.0_ki*abb296(42)
      abb296(39)=abb296(39)*spal6e7
      abb296(42)=-abb296(39)+abb296(42)
      abb296(42)=8.0_ki*abb296(42)
      abb296(39)=-4.0_ki*abb296(39)
      abb296(44)=8.0_ki*abb296(31)
      abb296(31)=-4.0_ki*abb296(31)
      abb296(45)=spae7k7*abb296(57)
      abb296(48)=-spak1k2*abb296(78)
      abb296(30)=spbe7l6*abb296(30)
      abb296(30)=abb296(48)+abb296(30)
      abb296(25)=abb296(30)*abb296(25)
      abb296(30)=spal5k7*spak1e7
      abb296(48)=-spak1k7*spal5e7
      abb296(30)=abb296(48)+abb296(30)
      abb296(30)=abb296(65)*spbk7e7*abb296(30)
      abb296(48)=spal5e7*spak1k2
      abb296(49)=spak2l5*spak1e7
      abb296(48)=abb296(48)+abb296(49)
      abb296(48)=-2.0_ki*abb296(48)
      abb296(14)=abb296(14)*abb296(48)
      abb296(14)=abb296(25)+abb296(14)+abb296(30)
      abb296(14)=4.0_ki*abb296(14)
      abb296(25)=-8.0_ki*abb296(67)
      abb296(30)=abb296(78)*spak1e7
      abb296(48)=8.0_ki*abb296(30)
      abb296(30)=4.0_ki*abb296(30)
      abb296(28)=abb296(24)*abb296(28)
      abb296(49)=-abb296(56)*abb296(12)
      abb296(28)=abb296(49)+abb296(28)
      abb296(28)=spak4l5*abb296(28)
      abb296(49)=abb296(32)*abb296(40)
      abb296(28)=abb296(49)+abb296(28)-abb296(38)
      abb296(28)=spak2e7*abb296(28)
      abb296(10)=-abb296(10)*abb296(12)
      abb296(12)=abb296(24)*abb296(18)
      abb296(10)=abb296(12)+abb296(10)
      abb296(12)=-abb296(10)*abb296(27)
      abb296(18)=-abb296(22)*abb296(33)
      abb296(24)=abb296(23)*abb296(41)
      abb296(12)=abb296(28)+abb296(24)+abb296(12)+abb296(18)
      abb296(12)=4.0_ki*abb296(12)
      abb296(18)=abb296(32)*abb296(53)
      abb296(24)=-4.0_ki*spak4e7*abb296(32)
      abb296(27)=8.0_ki*abb296(32)
      abb296(28)=-spak4k7*abb296(27)
      abb296(32)=spak4l5*abb296(10)
      abb296(22)=spak4l6*abb296(22)
      abb296(33)=-abb296(23)*abb296(40)
      abb296(22)=abb296(33)+abb296(32)+abb296(22)
      abb296(22)=8.0_ki*abb296(22)
      abb296(10)=abb296(10)*abb296(70)
      abb296(10)=abb296(10)-abb296(19)
      abb296(10)=4.0_ki*spak2e7*abb296(10)
      abb296(19)=-spak2k4*abb296(27)
      abb296(27)=-abb296(23)*abb296(29)
      abb296(23)=8.0_ki*abb296(23)
      R2d296=0.0_ki
      rat2 = rat2 + R2d296
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='296' value='", &
          & R2d296, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd296h0
