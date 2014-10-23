module     p0_dbaru_epnebbbarg_abbrevd73h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(107), public :: abb73
   complex(ki), public :: R2d73
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
      abb73(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb73(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb73(3)=NC**(-1)
      abb73(4)=sqrt2**(-1)
      abb73(5)=spak2k7**(-1)
      abb73(6)=spbl5k2**(-1)
      abb73(7)=sqrt(mB**2)
      abb73(8)=spak2l6**(-1)
      abb73(9)=spbl6k2**(-1)
      abb73(10)=abb73(7)*spbk7k2
      abb73(11)=abb73(3)*mB
      abb73(12)=abb73(10)*abb73(11)
      abb73(13)=TR*gW
      abb73(13)=abb73(5)*i_*CVDU*abb73(4)*abb73(2)*abb73(1)*abb73(13)**2
      abb73(14)=abb73(13)*abb73(6)
      abb73(15)=abb73(12)*abb73(14)
      abb73(16)=mB**2
      abb73(17)=abb73(14)*abb73(16)
      abb73(18)=abb73(17)*abb73(3)
      abb73(19)=abb73(18)*spbk7k2
      abb73(15)=abb73(15)-abb73(19)
      abb73(19)=2.0_ki*c1
      abb73(20)=abb73(15)*abb73(19)
      abb73(21)=abb73(3)**2
      abb73(21)=abb73(21)+1.0_ki
      abb73(22)=abb73(14)*abb73(21)
      abb73(23)=mB*abb73(22)
      abb73(24)=spbk7k2*c2
      abb73(25)=abb73(24)*abb73(7)
      abb73(26)=abb73(23)*abb73(25)
      abb73(17)=abb73(17)*abb73(21)
      abb73(27)=abb73(17)*abb73(24)
      abb73(28)=abb73(26)-abb73(27)
      abb73(29)=abb73(20)-abb73(28)
      abb73(30)=spak1k2*spbk3k2
      abb73(31)=-abb73(30)*abb73(29)
      abb73(32)=spbl6k2**2
      abb73(33)=spak2k4*abb73(32)*abb73(31)
      abb73(34)=abb73(30)*spbl6k2
      abb73(35)=-abb73(34)*abb73(29)
      abb73(36)=spbl6k3*spak3k4
      abb73(37)=-abb73(35)*abb73(36)
      abb73(33)=abb73(33)+abb73(37)
      abb73(33)=spak2l6*abb73(33)
      abb73(37)=abb73(19)*abb73(14)
      abb73(38)=abb73(12)*abb73(37)
      abb73(26)=abb73(38)-abb73(26)
      abb73(38)=abb73(26)*spak2k4
      abb73(39)=abb73(11)*abb73(7)
      abb73(37)=abb73(39)*abb73(37)
      abb73(40)=abb73(7)*c2
      abb73(23)=abb73(23)*abb73(40)
      abb73(23)=abb73(37)-abb73(23)
      abb73(37)=spak3k4*spbk7k3
      abb73(41)=abb73(23)*abb73(37)
      abb73(38)=abb73(38)-abb73(41)
      abb73(42)=es71+es12-es712
      abb73(43)=-abb73(42)*abb73(34)*abb73(38)
      abb73(44)=abb73(13)*abb73(21)
      abb73(45)=abb73(44)*abb73(25)
      abb73(46)=mB*abb73(44)
      abb73(47)=abb73(46)*abb73(24)
      abb73(45)=abb73(45)-abb73(47)
      abb73(45)=abb73(45)*abb73(7)
      abb73(47)=spbl6k2*spak2l5
      abb73(48)=-abb73(30)*abb73(47)*abb73(45)
      abb73(11)=spbk7k2*abb73(11)*abb73(13)
      abb73(49)=abb73(13)*abb73(3)
      abb73(50)=abb73(10)*abb73(49)
      abb73(11)=abb73(11)-abb73(50)
      abb73(50)=abb73(19)*spak2l5
      abb73(11)=abb73(11)*abb73(50)*abb73(7)
      abb73(51)=-abb73(34)*abb73(11)
      abb73(48)=abb73(48)+abb73(51)
      abb73(48)=spak2k4*abb73(48)
      abb73(51)=abb73(49)*abb73(19)
      abb73(44)=abb73(44)*c2
      abb73(51)=abb73(51)-abb73(44)
      abb73(52)=abb73(51)*abb73(47)**2
      abb73(53)=spak2k4*spbk3k2
      abb73(54)=abb73(53)*abb73(52)
      abb73(55)=spak2l5**2
      abb73(56)=spbl6k2*spbk3k2
      abb73(57)=abb73(55)*abb73(56)
      abb73(51)=-abb73(36)*abb73(57)*abb73(51)
      abb73(51)=abb73(54)+abb73(51)
      abb73(54)=spbk7l5*spak1l6
      abb73(51)=abb73(51)*abb73(54)
      abb73(58)=abb73(44)*spak2l5
      abb73(50)=abb73(50)*abb73(49)
      abb73(59)=abb73(58)-abb73(50)
      abb73(60)=abb73(59)*abb73(32)
      abb73(61)=-spak2k4*abb73(30)*abb73(60)
      abb73(62)=abb73(44)*abb73(47)
      abb73(63)=abb73(30)*abb73(62)
      abb73(64)=-abb73(50)*abb73(34)
      abb73(63)=abb73(63)+abb73(64)
      abb73(63)=abb73(63)*abb73(36)
      abb73(61)=abb73(61)+abb73(63)
      abb73(63)=spal5l6*spbk7l5
      abb73(61)=abb73(61)*abb73(63)
      abb73(64)=abb73(7)**2
      abb73(65)=abb73(62)*abb73(64)
      abb73(66)=abb73(30)*abb73(65)
      abb73(67)=abb73(64)*abb73(50)
      abb73(34)=-abb73(34)*abb73(67)
      abb73(34)=abb73(66)+abb73(34)
      abb73(34)=abb73(34)*abb73(37)
      abb73(66)=-abb73(47)*abb73(26)
      abb73(68)=spbl5k3*spak3k4
      abb73(69)=-abb73(68)*abb73(30)*abb73(66)
      abb73(33)=abb73(61)+abb73(33)+abb73(69)+abb73(51)+abb73(48)+abb73(34)+abb&
      &73(43)
      abb73(33)=8.0_ki*abb73(33)
      abb73(34)=abb73(31)*abb73(36)
      abb73(35)=abb73(35)*spak2k4
      abb73(34)=abb73(34)-abb73(35)
      abb73(35)=-spbk3k2*abb73(59)
      abb73(43)=abb73(35)*abb73(36)
      abb73(48)=abb73(58)*abb73(56)
      abb73(51)=-abb73(56)*abb73(50)
      abb73(51)=abb73(48)+abb73(51)
      abb73(51)=spak2k4*abb73(51)
      abb73(51)=abb73(51)+abb73(43)
      abb73(61)=spak1l5*spbk7l5
      abb73(51)=abb73(51)*abb73(61)
      abb73(51)=abb73(51)+abb73(34)
      abb73(51)=16.0_ki*abb73(51)
      abb73(69)=abb73(15)*spbl6k2
      abb73(12)=abb73(12)*abb73(13)
      abb73(16)=abb73(16)*abb73(13)
      abb73(70)=abb73(16)*abb73(3)
      abb73(71)=abb73(70)*spbk7k2
      abb73(12)=abb73(12)-abb73(71)
      abb73(71)=spak2l5*abb73(8)
      abb73(72)=-abb73(12)*abb73(71)
      abb73(72)=abb73(72)+abb73(69)
      abb73(72)=abb73(72)*abb73(19)
      abb73(73)=abb73(46)*abb73(25)
      abb73(16)=abb73(16)*abb73(21)
      abb73(21)=abb73(16)*abb73(24)
      abb73(21)=abb73(73)-abb73(21)
      abb73(73)=abb73(21)*abb73(71)
      abb73(74)=abb73(28)*spbl6k2
      abb73(72)=abb73(72)+abb73(73)-abb73(74)
      abb73(72)=spak2k4*abb73(72)
      abb73(75)=abb73(39)*abb73(13)
      abb73(76)=abb73(19)*abb73(8)
      abb73(77)=abb73(76)*spak2l5
      abb73(78)=abb73(75)*abb73(77)
      abb73(40)=abb73(46)*abb73(40)
      abb73(46)=abb73(40)*abb73(71)
      abb73(78)=abb73(78)-abb73(46)
      abb73(79)=abb73(78)*abb73(37)
      abb73(72)=abb73(72)+abb73(79)
      abb73(80)=spak1l6*spbl6k3
      abb73(72)=abb73(72)*abb73(80)
      abb73(20)=abb73(20)*spbl6k2
      abb73(20)=abb73(20)-abb73(74)
      abb73(81)=abb73(20)*spak2l6
      abb73(50)=abb73(50)*spbl6k2
      abb73(82)=abb73(50)-abb73(62)
      abb73(83)=abb73(63)*abb73(82)
      abb73(81)=abb73(83)-abb73(81)
      abb73(81)=abb73(81)*spak1k4*spbl6k3
      abb73(83)=abb73(17)*abb73(8)
      abb73(84)=abb73(83)*c2
      abb73(85)=abb73(76)*abb73(18)
      abb73(84)=abb73(84)-abb73(85)
      abb73(86)=abb73(84)*abb73(37)
      abb73(83)=abb73(83)*abb73(24)
      abb73(85)=abb73(85)*spbk7k2
      abb73(83)=abb73(83)-abb73(85)
      abb73(87)=abb73(83)*spak2k4
      abb73(87)=abb73(86)-abb73(87)
      abb73(88)=abb73(87)*abb73(80)
      abb73(89)=-spbl6k2*abb73(23)
      abb73(90)=spak1k4*spbk7k3
      abb73(91)=abb73(89)*abb73(90)
      abb73(88)=abb73(88)+abb73(91)
      abb73(88)=abb73(88)*abb73(42)
      abb73(16)=abb73(16)*c2
      abb73(92)=abb73(16)+2.0_ki*abb73(40)
      abb73(93)=-abb73(8)*abb73(92)
      abb73(13)=2.0_ki*abb73(13)
      abb73(39)=abb73(39)*abb73(13)
      abb73(39)=abb73(39)+abb73(70)
      abb73(94)=abb73(39)*abb73(76)
      abb73(93)=abb73(93)+abb73(94)
      abb73(55)=abb73(55)*spbk3k2
      abb73(93)=spbk7l5*abb73(55)*abb73(93)
      abb73(50)=abb73(50)*abb73(64)
      abb73(50)=abb73(50)-abb73(65)
      abb73(65)=abb73(50)*spbk7k3
      abb73(93)=abb73(65)+abb73(93)
      abb73(93)=spak1k4*abb73(93)
      abb73(94)=abb73(71)*spbk3k2
      abb73(95)=abb73(92)*abb73(94)
      abb73(96)=-abb73(39)*abb73(94)
      abb73(97)=abb73(56)*spak2l5
      abb73(98)=-abb73(49)*abb73(97)
      abb73(96)=abb73(96)+abb73(98)
      abb73(96)=abb73(96)*abb73(19)
      abb73(95)=abb73(96)+abb73(95)+abb73(48)
      abb73(95)=spak2k4*abb73(95)
      abb73(43)=abb73(95)+abb73(43)
      abb73(43)=abb73(43)*abb73(61)
      abb73(95)=abb73(66)*spak1k4
      abb73(96)=abb73(85)*spak2l5
      abb73(27)=abb73(27)*abb73(71)
      abb73(96)=abb73(96)-abb73(27)
      abb73(98)=abb73(96)*spak1l6
      abb73(99)=-abb73(36)*abb73(98)
      abb73(99)=abb73(99)+abb73(95)
      abb73(99)=spbl5k3*abb73(99)
      abb73(14)=abb73(14)*abb73(3)
      abb73(100)=mB**3
      abb73(101)=abb73(10)*abb73(100)*abb73(14)
      abb73(14)=spbk7k2*abb73(14)
      abb73(102)=mB**4
      abb73(103)=abb73(14)*abb73(102)
      abb73(101)=abb73(101)-abb73(103)
      abb73(101)=abb73(101)*abb73(76)
      abb73(102)=abb73(24)*abb73(102)*abb73(22)
      abb73(22)=abb73(100)*abb73(22)
      abb73(104)=abb73(22)*abb73(25)
      abb73(104)=abb73(104)-abb73(102)
      abb73(104)=abb73(104)*abb73(8)
      abb73(101)=abb73(101)-abb73(104)
      abb73(104)=abb73(30)*abb73(101)
      abb73(105)=abb73(94)*abb73(16)
      abb73(106)=abb73(70)*abb73(77)
      abb73(107)=-spbk3k2*abb73(106)
      abb73(107)=abb73(105)+abb73(107)
      abb73(107)=abb73(107)*abb73(61)
      abb73(104)=abb73(104)+abb73(107)
      abb73(104)=abb73(9)*abb73(36)*abb73(104)
      abb73(92)=abb73(92)*abb73(71)
      abb73(39)=-abb73(39)*abb73(77)
      abb73(39)=abb73(92)+abb73(39)
      abb73(39)=abb73(30)*abb73(39)
      abb73(80)=abb73(82)*abb73(80)
      abb73(39)=abb73(80)+abb73(39)
      abb73(92)=spak4l5*spbk7l5
      abb73(39)=abb73(39)*abb73(92)
      abb73(34)=abb73(39)+abb73(104)+abb73(99)+abb73(43)+abb73(93)+abb73(72)+ab&
      &b73(88)+abb73(81)+abb73(34)
      abb73(34)=16.0_ki*abb73(34)
      abb73(39)=abb73(42)*abb73(84)
      abb73(39)=abb73(39)+abb73(78)
      abb73(43)=-abb73(90)*abb73(39)
      abb73(72)=abb73(96)*spbl5k3
      abb73(88)=abb73(72)*spak1k4
      abb73(43)=abb73(88)+abb73(43)
      abb73(88)=-32.0_ki*abb73(43)
      abb73(17)=abb73(17)*abb73(25)
      abb73(22)=abb73(22)*abb73(24)
      abb73(24)=-abb73(17)+2.0_ki*abb73(22)
      abb73(24)=abb73(24)*abb73(7)
      abb73(24)=abb73(24)-abb73(102)
      abb73(25)=spbk3k2*abb73(8)
      abb73(90)=-abb73(24)*abb73(25)
      abb73(56)=2.0_ki*abb73(56)
      abb73(28)=abb73(28)*abb73(56)
      abb73(28)=abb73(90)+abb73(28)
      abb73(28)=spak1k2*abb73(28)
      abb73(10)=abb73(18)*abb73(10)
      abb73(14)=abb73(14)*abb73(100)
      abb73(18)=-abb73(10)+2.0_ki*abb73(14)
      abb73(18)=abb73(18)*abb73(7)
      abb73(18)=abb73(18)-abb73(103)
      abb73(25)=abb73(18)*abb73(25)
      abb73(15)=-abb73(15)*abb73(56)
      abb73(15)=abb73(25)+abb73(15)
      abb73(25)=abb73(19)*spak1k2
      abb73(15)=abb73(15)*abb73(25)
      abb73(56)=-spbk3k2*abb73(78)
      abb73(78)=-abb73(56)*abb73(61)
      abb73(15)=abb73(78)+abb73(28)+abb73(15)
      abb73(15)=spak2k4*abb73(15)
      abb73(28)=-abb73(105)+2.0_ki*abb73(48)
      abb73(28)=spak1k2*abb73(28)
      abb73(48)=abb73(70)*abb73(94)
      abb73(13)=abb73(13)*abb73(3)
      abb73(78)=-abb73(97)*abb73(13)
      abb73(48)=abb73(48)+abb73(78)
      abb73(48)=abb73(48)*abb73(25)
      abb73(28)=-abb73(80)+abb73(28)+abb73(48)
      abb73(28)=abb73(28)*abb73(92)
      abb73(48)=spbk7k3*spak2k4
      abb73(78)=-abb73(48)*spak1l6*spbl6k2*abb73(84)
      abb73(78)=abb73(78)+abb73(91)
      abb73(78)=-abb73(78)*abb73(42)
      abb73(20)=-spbl6k3*spak2k4*abb73(20)
      abb73(80)=abb73(76)*abb73(47)*abb73(75)
      abb73(46)=-spbl6k2*abb73(46)
      abb73(46)=abb73(46)+abb73(80)
      abb73(46)=abb73(46)*abb73(48)
      abb73(20)=abb73(46)+abb73(20)
      abb73(20)=spak1l6*abb73(20)
      abb73(44)=abb73(44)*abb73(57)
      abb73(46)=abb73(55)*abb73(8)
      abb73(55)=-abb73(46)*abb73(70)
      abb73(13)=abb73(57)*abb73(13)
      abb73(13)=abb73(55)+abb73(13)
      abb73(13)=abb73(13)*abb73(19)
      abb73(46)=abb73(46)*abb73(16)
      abb73(13)=abb73(13)+abb73(46)-2.0_ki*abb73(44)
      abb73(13)=spbk7l5*abb73(13)
      abb73(13)=-abb73(65)+abb73(13)
      abb73(13)=spak1k4*abb73(13)
      abb73(27)=spbl6k2*abb73(27)
      abb73(44)=-abb73(47)*abb73(85)
      abb73(27)=abb73(27)+abb73(44)
      abb73(27)=spak1l6*spak2k4*abb73(27)
      abb73(27)=abb73(27)-abb73(95)
      abb73(27)=spbl5k3*abb73(27)
      abb73(13)=abb73(28)+abb73(27)+abb73(13)+abb73(20)+abb73(78)-abb73(81)+abb&
      &73(15)
      abb73(13)=8.0_ki*abb73(13)
      abb73(15)=16.0_ki*abb73(43)
      abb73(20)=-spak1k2*abb73(29)
      abb73(27)=abb73(20)*spak3k4
      abb73(28)=abb73(61)*spak3k4
      abb73(43)=abb73(59)*abb73(28)
      abb73(27)=abb73(27)-abb73(43)
      abb73(43)=8.0_ki*abb73(27)*spbl6k3**2
      abb73(44)=abb73(35)*abb73(61)
      abb73(31)=abb73(31)+abb73(44)
      abb73(44)=-16.0_ki*abb73(31)
      abb73(31)=8.0_ki*abb73(31)
      abb73(45)=abb73(45)*spak2l5
      abb73(11)=abb73(11)+abb73(45)
      abb73(45)=abb73(26)*abb73(42)
      abb73(45)=abb73(45)+abb73(11)
      abb73(46)=spak1k2*spbl6k2
      abb73(55)=abb73(46)*abb73(45)
      abb73(32)=-spak2l6*abb73(32)*abb73(20)
      abb73(52)=-abb73(54)*abb73(52)
      abb73(54)=abb73(63)*spak1k2*abb73(60)
      abb73(32)=abb73(54)+abb73(32)+abb73(52)+abb73(55)
      abb73(32)=8.0_ki*abb73(32)
      abb73(29)=abb73(29)*abb73(46)
      abb73(46)=abb73(82)*abb73(61)
      abb73(29)=abb73(46)-abb73(29)
      abb73(29)=16.0_ki*abb73(29)
      abb73(24)=abb73(8)*abb73(24)
      abb73(24)=abb73(24)+abb73(74)
      abb73(24)=spak1k2*abb73(24)
      abb73(18)=-abb73(8)*abb73(18)
      abb73(18)=abb73(18)-abb73(69)
      abb73(18)=abb73(18)*abb73(25)
      abb73(25)=-abb73(16)+abb73(40)
      abb73(25)=abb73(25)*abb73(71)
      abb73(40)=abb73(70)-abb73(75)
      abb73(40)=abb73(40)*abb73(71)
      abb73(46)=abb73(49)*abb73(47)
      abb73(40)=abb73(40)+abb73(46)
      abb73(19)=abb73(40)*abb73(19)
      abb73(19)=abb73(19)+abb73(25)-abb73(62)
      abb73(19)=abb73(19)*abb73(61)
      abb73(25)=-spbk7l6*spak1l6*abb73(39)
      abb73(40)=-spbl6l5*abb73(98)
      abb73(18)=abb73(40)+abb73(25)+abb73(19)+abb73(24)+abb73(18)
      abb73(18)=16.0_ki*abb73(18)
      abb73(19)=abb73(59)*abb73(61)
      abb73(19)=abb73(19)-abb73(20)
      abb73(19)=spbl6k3*abb73(19)
      abb73(20)=-spbk7k3*abb73(39)
      abb73(20)=abb73(72)+abb73(20)
      abb73(20)=spak1k2*abb73(20)
      abb73(19)=abb73(20)+abb73(19)
      abb73(20)=16.0_ki*abb73(19)
      abb73(19)=-8.0_ki*abb73(19)
      abb73(24)=-spbk3k2*abb73(86)
      abb73(25)=-abb73(83)*abb73(53)
      abb73(24)=abb73(24)-abb73(25)
      abb73(24)=-abb73(24)*abb73(42)
      abb73(21)=abb73(21)*abb73(94)
      abb73(12)=abb73(12)*abb73(77)
      abb73(25)=-spbk3k2*abb73(12)
      abb73(21)=abb73(21)+abb73(25)
      abb73(21)=spak2k4*abb73(21)
      abb73(25)=-abb73(56)*abb73(37)
      abb73(40)=-abb73(68)*spbk3k2*abb73(96)
      abb73(21)=abb73(40)+abb73(24)+abb73(21)+abb73(25)
      abb73(21)=spak1l6*abb73(21)
      abb73(24)=spbk3k2**2
      abb73(25)=abb73(24)*abb73(27)
      abb73(27)=spak3k4*spak1k2*abb73(101)
      abb73(16)=abb73(71)*abb73(16)
      abb73(16)=abb73(16)-abb73(106)
      abb73(16)=abb73(28)*abb73(16)
      abb73(16)=abb73(27)+abb73(16)
      abb73(16)=abb73(9)*abb73(24)*abb73(16)
      abb73(16)=abb73(16)+abb73(21)+abb73(25)
      abb73(16)=8.0_ki*abb73(16)
      abb73(12)=abb73(12)-abb73(73)
      abb73(21)=abb73(83)*abb73(42)
      abb73(21)=abb73(12)+abb73(21)
      abb73(21)=8.0_ki*spak1l6*abb73(21)
      abb73(17)=-abb73(22)+abb73(17)
      abb73(17)=abb73(8)*abb73(17)
      abb73(10)=abb73(14)-abb73(10)
      abb73(10)=abb73(10)*abb73(76)
      abb73(10)=abb73(17)+abb73(10)
      abb73(10)=spak3k4*abb73(30)*abb73(7)*abb73(10)
      abb73(14)=-abb73(56)*abb73(28)
      abb73(10)=abb73(10)+abb73(14)
      abb73(10)=8.0_ki*abb73(10)
      abb73(14)=-spbk3k2*abb73(26)
      abb73(17)=abb73(14)*spak2k4
      abb73(22)=-spbk3k2*abb73(41)
      abb73(17)=abb73(17)-abb73(22)
      abb73(17)=abb73(17)*abb73(42)
      abb73(22)=-abb73(11)*abb73(53)
      abb73(24)=-abb73(37)*abb73(64)*abb73(35)
      abb73(14)=-abb73(68)*spak2l5*abb73(14)
      abb73(14)=abb73(14)+abb73(22)+abb73(24)+abb73(17)
      abb73(14)=8.0_ki*abb73(14)
      abb73(17)=8.0_ki*abb73(45)
      abb73(22)=-abb73(38)*spbl6k3
      abb73(24)=abb73(89)*abb73(48)
      abb73(22)=abb73(22)-abb73(24)
      abb73(22)=abb73(22)*abb73(42)
      abb73(11)=-spak2k4*abb73(11)
      abb73(24)=abb73(64)*abb73(58)
      abb73(24)=abb73(24)-abb73(67)
      abb73(25)=abb73(24)*abb73(37)
      abb73(11)=abb73(11)+abb73(25)
      abb73(11)=spbl6k3*abb73(11)
      abb73(25)=-spak2k4*abb73(66)
      abb73(26)=abb73(26)*spak2l5
      abb73(27)=abb73(26)*abb73(36)
      abb73(25)=abb73(25)+abb73(27)
      abb73(25)=spbl5k3*abb73(25)
      abb73(27)=-abb73(50)*abb73(48)
      abb73(11)=abb73(25)+abb73(27)+abb73(11)+abb73(22)
      abb73(11)=8.0_ki*abb73(11)
      abb73(22)=-abb73(48)*abb73(39)
      abb73(25)=spak2k4*abb73(72)
      abb73(22)=abb73(25)+abb73(22)
      abb73(22)=16.0_ki*abb73(22)
      abb73(23)=-abb73(23)*abb73(42)
      abb73(23)=abb73(23)-abb73(24)
      abb73(23)=spbk7l6*abb73(23)
      abb73(24)=spbl6l5*abb73(26)
      abb73(23)=abb73(23)+abb73(24)
      abb73(23)=8.0_ki*abb73(23)
      abb73(24)=-8.0_ki*abb73(39)
      abb73(25)=8.0_ki*abb73(96)
      abb73(26)=-abb73(87)*abb73(42)
      abb73(12)=spak2k4*abb73(12)
      abb73(27)=spak3k4*abb73(72)
      abb73(12)=abb73(27)+abb73(12)-abb73(79)+abb73(26)
      abb73(12)=8.0_ki*abb73(12)
      R2d73=0.0_ki
      rat2 = rat2 + R2d73
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='73' value='", &
          & R2d73, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd73h2
