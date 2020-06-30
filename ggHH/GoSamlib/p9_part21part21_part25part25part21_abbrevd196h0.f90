module     p9_part21part21_part25part25part21_abbrevd196h0
   use p9_part21part21_part25part25part21_config, only: ki
   use p9_part21part21_part25part25part21_kinematics, only: epstensor
   use p9_part21part21_part25part25part21_globalsh0
   implicit none
   private
   complex(ki), dimension(121), public :: abb196
   complex(ki), public :: R2d196
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_part21part21_part25part25part21_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_part21part21_part25part25part21_kinematics
      use p9_part21part21_part25part25part21_model
      use p9_part21part21_part25part25part21_color, only: TR
      use p9_part21part21_part25part25part21_globalsl1, only: epspow
      implicit none
      abb196(1)=sqrt(mdlMT**2)
      abb196(2)=spak2l3**(-1)
      abb196(3)=spbl3k2**(-1)
      abb196(4)=spak2l4**(-1)
      abb196(5)=spbl4k2**(-1)
      abb196(6)=c2-c1
      abb196(6)=abb196(6)*mdlGC7**3
      abb196(7)=abb196(1)*mdlGC45
      abb196(7)=-abb196(6)*abb196(7)**2
      abb196(8)=spbe5l3*spae2l3
      abb196(9)=abb196(7)*abb196(8)
      abb196(10)=spae1k1*spbe2e1
      abb196(11)=-abb196(10)*abb196(9)
      abb196(12)=abb196(7)*spbe5e2
      abb196(13)=abb196(12)*spae2l3
      abb196(14)=abb196(13)*spbl3e1
      abb196(15)=spae1k1*abb196(14)
      abb196(11)=abb196(11)+abb196(15)
      abb196(15)=abb196(5)*abb196(4)
      abb196(16)=mdlMh**2
      abb196(17)=abb196(15)*abb196(16)
      abb196(18)=abb196(17)*spak2e5
      abb196(11)=abb196(18)*abb196(11)
      abb196(19)=abb196(12)*spae1k1
      abb196(20)=mdlMh**4
      abb196(21)=abb196(20)*abb196(15)*spak2e5
      abb196(22)=abb196(3)*abb196(2)
      abb196(23)=abb196(22)*spae2k2
      abb196(24)=spbk2e1*abb196(23)*abb196(21)*abb196(19)
      abb196(11)=abb196(24)+abb196(11)
      abb196(11)=spbk2k1*abb196(11)
      abb196(24)=spal3e5*spbl3e2
      abb196(25)=abb196(7)*abb196(24)
      abb196(26)=spbk1e1*spae1e2
      abb196(27)=-abb196(26)*abb196(25)
      abb196(28)=abb196(7)*spae2e5
      abb196(29)=abb196(28)*spbl3e2
      abb196(30)=abb196(29)*spae1l3
      abb196(31)=spbk1e1*abb196(30)
      abb196(27)=abb196(27)+abb196(31)
      abb196(17)=abb196(17)*spbe5k2
      abb196(27)=abb196(17)*abb196(27)
      abb196(20)=abb196(20)*abb196(15)*spbe5k2
      abb196(31)=abb196(28)*spbk1e1
      abb196(32)=abb196(22)*spbk2e2
      abb196(33)=spae1k2*abb196(31)*abb196(32)*abb196(20)
      abb196(27)=abb196(33)+abb196(27)
      abb196(27)=spak1k2*abb196(27)
      abb196(11)=abb196(11)+abb196(27)
      abb196(27)=abb196(7)*spbl3e2
      abb196(33)=abb196(27)*abb196(8)
      abb196(34)=-spae1l3*abb196(33)
      abb196(6)=abb196(6)*mdlGC45**2
      abb196(35)=-abb196(1)**4*abb196(6)
      abb196(36)=abb196(35)*spbe5e2
      abb196(37)=abb196(36)*spae1e2
      abb196(34)=abb196(34)-abb196(37)
      abb196(38)=1.0_ki/2.0_ki*abb196(16)
      abb196(15)=abb196(38)*abb196(15)
      abb196(38)=abb196(15)*spak2e5
      abb196(34)=abb196(38)*abb196(34)
      abb196(16)=abb196(22)*abb196(16)
      abb196(22)=abb196(16)*spae2k2
      abb196(39)=abb196(7)*abb196(22)
      abb196(40)=spbe5k1*spae1k1
      abb196(41)=abb196(24)*abb196(39)*abb196(40)
      abb196(42)=1.0_ki/2.0_ki*spae1e5
      abb196(43)=abb196(42)*abb196(36)
      abb196(44)=abb196(22)*abb196(43)
      abb196(34)=abb196(44)+abb196(41)+abb196(34)
      abb196(34)=spbk2e1*abb196(34)
      abb196(41)=abb196(7)*spae2l3
      abb196(44)=abb196(41)*abb196(24)
      abb196(45)=-spbl3e1*abb196(44)
      abb196(46)=abb196(35)*spae2e5
      abb196(47)=abb196(46)*spbe2e1
      abb196(45)=abb196(45)-abb196(47)
      abb196(15)=abb196(15)*spbe5k2
      abb196(45)=abb196(15)*abb196(45)
      abb196(48)=abb196(16)*spbk2e2
      abb196(49)=abb196(7)*abb196(48)
      abb196(50)=spak1e5*spbk1e1
      abb196(51)=abb196(8)*abb196(49)*abb196(50)
      abb196(52)=1.0_ki/2.0_ki*spbe5e1
      abb196(53)=abb196(52)*abb196(46)
      abb196(54)=abb196(48)*abb196(53)
      abb196(45)=abb196(54)+abb196(51)+abb196(45)
      abb196(45)=spae1k2*abb196(45)
      abb196(51)=abb196(12)*abb196(22)
      abb196(54)=abb196(51)*spbk2e1
      abb196(54)=abb196(54)+abb196(14)
      abb196(55)=spal4e5*spae1k1
      abb196(56)=abb196(55)*abb196(54)
      abb196(16)=abb196(16)-1.0_ki
      abb196(57)=abb196(7)*abb196(16)
      abb196(58)=spbe5k2*spae2k2
      abb196(59)=abb196(57)*abb196(58)
      abb196(60)=abb196(59)+abb196(9)
      abb196(61)=abb196(10)*spal4e5
      abb196(62)=-abb196(61)*abb196(60)
      abb196(56)=abb196(62)+abb196(56)
      abb196(62)=1.0_ki/2.0_ki*spbl4k1
      abb196(56)=abb196(56)*abb196(62)
      abb196(63)=abb196(28)*abb196(48)
      abb196(64)=abb196(63)*spae1k2
      abb196(64)=abb196(64)+abb196(30)
      abb196(65)=spbe5l4*spbk1e1
      abb196(66)=abb196(65)*abb196(64)
      abb196(67)=spak2e5*spbk2e2
      abb196(68)=abb196(57)*abb196(67)
      abb196(69)=abb196(68)+abb196(25)
      abb196(70)=abb196(26)*spbe5l4
      abb196(71)=-abb196(70)*abb196(69)
      abb196(66)=abb196(71)+abb196(66)
      abb196(71)=1.0_ki/2.0_ki*spak1l4
      abb196(66)=abb196(66)*abb196(71)
      abb196(72)=abb196(58)*spbl3e2
      abb196(73)=abb196(72)*abb196(57)
      abb196(33)=abb196(73)+abb196(33)
      abb196(73)=abb196(33)*spae1l3
      abb196(74)=abb196(49)*spae1k2
      abb196(75)=abb196(74)*abb196(8)
      abb196(37)=abb196(73)+abb196(75)+abb196(37)
      abb196(73)=1.0_ki/2.0_ki*spbl4e1
      abb196(75)=-abb196(73)*spal4e5*abb196(37)
      abb196(76)=abb196(67)*spae2l3
      abb196(57)=abb196(76)*abb196(57)
      abb196(44)=abb196(57)+abb196(44)
      abb196(57)=abb196(44)*spbl3e1
      abb196(77)=abb196(39)*spbk2e1
      abb196(78)=abb196(77)*abb196(24)
      abb196(47)=abb196(57)+abb196(78)+abb196(47)
      abb196(57)=1.0_ki/2.0_ki*spae1l4
      abb196(78)=-abb196(57)*spbe5l4*abb196(47)
      abb196(79)=abb196(16)*abb196(35)
      abb196(80)=abb196(67)*spae1e2
      abb196(81)=-abb196(79)*abb196(80)
      abb196(82)=abb196(24)*spae1e2
      abb196(83)=-abb196(35)*abb196(82)
      abb196(81)=abb196(81)+abb196(83)
      abb196(81)=abb196(81)*abb196(52)
      abb196(83)=abb196(58)*spbe2e1
      abb196(79)=-abb196(79)*abb196(83)
      abb196(84)=abb196(8)*spbe2e1
      abb196(85)=-abb196(35)*abb196(84)
      abb196(79)=abb196(79)+abb196(85)
      abb196(79)=abb196(79)*abb196(42)
      abb196(85)=abb196(44)*abb196(40)
      abb196(43)=spae2l3*abb196(43)
      abb196(43)=abb196(85)+abb196(43)
      abb196(43)=spbl3e1*abb196(43)
      abb196(85)=abb196(33)*abb196(50)
      abb196(53)=spbl3e2*abb196(53)
      abb196(53)=abb196(85)+abb196(53)
      abb196(53)=spae1l3*abb196(53)
      abb196(85)=abb196(46)*abb196(10)*spbe5k1
      abb196(86)=abb196(36)*abb196(26)*spak1e5
      abb196(11)=abb196(78)+abb196(75)+abb196(66)+abb196(56)+abb196(45)+abb196(&
      &34)+abb196(53)+abb196(43)+abb196(79)+abb196(81)+abb196(85)+abb196(86)+1.&
      &0_ki/2.0_ki*abb196(11)
      abb196(34)=abb196(18)*abb196(12)
      abb196(43)=-spae1e2*abb196(34)
      abb196(45)=spae1e5*abb196(51)
      abb196(43)=abb196(43)+abb196(45)
      abb196(43)=spbk2e1*abb196(43)
      abb196(45)=abb196(17)*abb196(28)
      abb196(53)=-spbe2e1*abb196(45)
      abb196(56)=spbe5e1*abb196(63)
      abb196(53)=abb196(53)+abb196(56)
      abb196(53)=spae1k2*abb196(53)
      abb196(43)=abb196(43)+abb196(53)
      abb196(53)=abb196(68)*spae1e2
      abb196(56)=abb196(82)*abb196(7)
      abb196(53)=abb196(53)+abb196(56)
      abb196(66)=-spbe5e1*abb196(53)
      abb196(59)=abb196(59)*spbe2e1
      abb196(68)=abb196(84)*abb196(7)
      abb196(68)=abb196(68)+abb196(59)
      abb196(75)=-spae1e5*abb196(68)
      abb196(16)=-abb196(6)*abb196(16)
      abb196(58)=abb196(16)*abb196(58)
      abb196(78)=-abb196(6)*abb196(8)
      abb196(58)=abb196(58)+abb196(78)
      abb196(79)=-abb196(62)*abb196(61)*abb196(58)
      abb196(67)=abb196(16)*abb196(67)
      abb196(81)=-abb196(6)*abb196(24)
      abb196(67)=abb196(67)+abb196(81)
      abb196(85)=-abb196(71)*abb196(70)*abb196(67)
      abb196(86)=spbk2k1*abb196(38)*abb196(10)
      abb196(87)=-abb196(78)*abb196(86)
      abb196(88)=spak1k2*abb196(15)*abb196(26)
      abb196(89)=-abb196(81)*abb196(88)
      abb196(90)=abb196(28)*spbe5k1
      abb196(91)=abb196(10)*abb196(90)
      abb196(92)=abb196(12)*spak1e5
      abb196(93)=abb196(26)*abb196(92)
      abb196(94)=abb196(14)*abb196(42)
      abb196(95)=abb196(30)*abb196(52)
      abb196(96)=abb196(12)*spae1e2
      abb196(73)=abb196(73)*spal4e5
      abb196(97)=-abb196(73)*abb196(96)
      abb196(98)=abb196(28)*spbe2e1
      abb196(57)=abb196(57)*spbe5l4
      abb196(99)=-abb196(57)*abb196(98)
      abb196(43)=abb196(89)+abb196(87)+abb196(99)+abb196(97)+abb196(85)+abb196(&
      &79)+abb196(95)+abb196(94)+abb196(75)+abb196(66)+abb196(91)+abb196(93)+1.&
      &0_ki/2.0_ki*abb196(43)
      abb196(66)=abb196(80)*abb196(16)
      abb196(75)=-abb196(82)*abb196(6)
      abb196(66)=abb196(66)+abb196(75)
      abb196(79)=-spbe5e1*abb196(66)
      abb196(80)=abb196(83)*abb196(16)
      abb196(82)=-abb196(84)*abb196(6)
      abb196(80)=abb196(80)+abb196(82)
      abb196(83)=-spae1e5*abb196(80)
      abb196(79)=abb196(79)+abb196(83)
      abb196(79)=1.0_ki/2.0_ki*abb196(79)
      abb196(83)=abb196(15)*spae1k2
      abb196(85)=-abb196(83)+abb196(40)
      abb196(87)=abb196(41)*spbl3e1
      abb196(85)=abb196(87)*abb196(85)
      abb196(89)=abb196(40)*abb196(77)
      abb196(77)=abb196(87)+abb196(77)
      abb196(87)=-abb196(77)*abb196(57)
      abb196(91)=-abb196(7)*abb196(88)
      abb196(93)=-spae1e2*abb196(35)*abb196(52)
      abb196(94)=1.0_ki/2.0_ki*abb196(7)
      abb196(70)=abb196(70)*spak1l4
      abb196(95)=-abb196(94)*abb196(70)
      abb196(85)=abb196(91)+abb196(87)+abb196(95)+abb196(89)+abb196(93)+abb196(&
      &85)
      abb196(87)=abb196(7)*spae1e2
      abb196(89)=-spbe5e1*abb196(87)
      abb196(91)=-1.0_ki/2.0_ki*abb196(6)
      abb196(70)=-abb196(91)*abb196(70)
      abb196(88)=abb196(6)*abb196(88)
      abb196(70)=abb196(88)+abb196(89)+abb196(70)
      abb196(88)=abb196(91)*spae1e2
      abb196(89)=-spbe5e1*abb196(88)
      abb196(93)=abb196(38)*spbk2e1
      abb196(95)=-abb196(93)+abb196(50)
      abb196(97)=abb196(27)*spae1l3
      abb196(95)=abb196(97)*abb196(95)
      abb196(99)=abb196(50)*abb196(74)
      abb196(74)=abb196(97)+abb196(74)
      abb196(97)=-abb196(74)*abb196(73)
      abb196(100)=-abb196(7)*abb196(86)
      abb196(35)=-spbe2e1*abb196(35)*abb196(42)
      abb196(61)=abb196(61)*spbl4k1
      abb196(101)=-abb196(94)*abb196(61)
      abb196(35)=abb196(100)+abb196(97)+abb196(101)+abb196(99)+abb196(35)+abb19&
      &6(95)
      abb196(95)=-spae1e5*spbe2e1*abb196(7)
      abb196(61)=-abb196(91)*abb196(61)
      abb196(86)=abb196(6)*abb196(86)
      abb196(61)=abb196(86)+abb196(95)+abb196(61)
      abb196(86)=abb196(91)*spbe2e1
      abb196(95)=-spae1e5*abb196(86)
      abb196(97)=spae1l4*spbe5l4
      abb196(99)=abb196(97)-2.0_ki*abb196(40)
      abb196(99)=abb196(69)*abb196(99)
      abb196(100)=abb196(17)*spae1k2
      abb196(25)=abb196(25)*abb196(100)
      abb196(101)=spbk2k1*spae1k1
      abb196(102)=-abb196(101)*abb196(34)
      abb196(103)=abb196(55)*spbl4k1
      abb196(104)=-abb196(12)*abb196(103)
      abb196(36)=-spae1e5*abb196(36)
      abb196(25)=abb196(102)+abb196(104)+abb196(25)+abb196(36)+abb196(99)
      abb196(36)=-spae1e5*abb196(12)
      abb196(97)=abb196(97)+abb196(100)
      abb196(97)=abb196(7)*abb196(97)
      abb196(99)=2.0_ki*abb196(7)
      abb196(100)=-abb196(40)*abb196(99)
      abb196(97)=abb196(100)+abb196(97)
      abb196(100)=-2.0_ki*abb196(69)
      abb196(102)=spbl4e1*spal4e5
      abb196(102)=abb196(102)-2.0_ki*abb196(50)
      abb196(102)=abb196(60)*abb196(102)
      abb196(104)=abb196(18)*spbk2e1
      abb196(9)=abb196(9)*abb196(104)
      abb196(105)=spak1k2*spbk1e1
      abb196(106)=-abb196(105)*abb196(45)
      abb196(107)=abb196(65)*spak1l4
      abb196(108)=-abb196(28)*abb196(107)
      abb196(46)=-spbe5e1*abb196(46)
      abb196(9)=abb196(106)+abb196(108)+abb196(9)+abb196(46)+abb196(102)
      abb196(46)=-spbe5e1*abb196(28)
      abb196(102)=abb196(7)*abb196(104)
      abb196(104)=-abb196(50)*abb196(99)
      abb196(106)=abb196(7)*spal4e5
      abb196(108)=spbl4e1*abb196(106)
      abb196(102)=abb196(108)+abb196(104)+abb196(102)
      abb196(104)=-2.0_ki*abb196(60)
      abb196(59)=-abb196(59)+abb196(54)
      abb196(59)=spal4e5*abb196(59)
      abb196(106)=-abb196(84)*abb196(106)
      abb196(59)=abb196(106)+abb196(59)
      abb196(59)=1.0_ki/2.0_ki*abb196(59)
      abb196(106)=1.0_ki/2.0_ki*spal4e5
      abb196(106)=-abb196(80)*abb196(106)
      abb196(108)=abb196(94)*spbe2e1
      abb196(109)=-spal4e5*abb196(108)
      abb196(110)=-spal4e5*abb196(86)
      abb196(12)=-spal4e5*abb196(12)
      abb196(53)=abb196(64)-abb196(53)
      abb196(111)=1.0_ki/2.0_ki*spbe5l4
      abb196(112)=abb196(53)*abb196(111)
      abb196(113)=-abb196(66)*abb196(111)
      abb196(114)=abb196(94)*spae1e2
      abb196(115)=-spbe5l4*abb196(114)
      abb196(116)=-spbe5l4*abb196(88)
      abb196(28)=-spbe5l4*abb196(28)
      abb196(50)=abb196(73)-abb196(50)
      abb196(73)=-abb196(93)-abb196(50)
      abb196(73)=abb196(13)*abb196(73)
      abb196(44)=-abb196(44)*abb196(52)
      abb196(76)=abb196(76)*abb196(16)
      abb196(93)=abb196(81)*spae2l3
      abb196(76)=abb196(76)+abb196(93)
      abb196(65)=-abb196(71)*abb196(65)*abb196(76)
      abb196(71)=abb196(93)*abb196(15)
      abb196(93)=-abb196(105)*abb196(71)
      abb196(44)=abb196(93)+abb196(65)+abb196(44)+abb196(73)
      abb196(52)=-abb196(76)*abb196(52)
      abb196(65)=abb196(6)*abb196(17)*abb196(105)
      abb196(73)=-abb196(107)*abb196(6)
      abb196(65)=abb196(65)-abb196(73)
      abb196(65)=spae2l3*abb196(65)
      abb196(41)=-spbe5e1*abb196(41)
      abb196(41)=abb196(41)+abb196(65)
      abb196(41)=1.0_ki/2.0_ki*abb196(41)
      abb196(65)=abb196(91)*spae2l3
      abb196(93)=-spbe5e1*abb196(65)
      abb196(111)=-abb196(76)*abb196(111)
      abb196(117)=-spbe5l4*abb196(65)
      abb196(40)=abb196(57)-abb196(40)
      abb196(57)=-abb196(83)-abb196(40)
      abb196(57)=abb196(29)*abb196(57)
      abb196(33)=-abb196(33)*abb196(42)
      abb196(16)=abb196(72)*abb196(16)
      abb196(72)=abb196(78)*spbl3e2
      abb196(16)=abb196(16)+abb196(72)
      abb196(55)=-abb196(62)*abb196(55)*abb196(16)
      abb196(62)=abb196(72)*abb196(38)
      abb196(72)=-abb196(101)*abb196(62)
      abb196(33)=abb196(72)+abb196(55)+abb196(33)+abb196(57)
      abb196(42)=-abb196(16)*abb196(42)
      abb196(55)=abb196(6)*abb196(18)*abb196(101)
      abb196(57)=-abb196(103)*abb196(6)
      abb196(55)=abb196(55)-abb196(57)
      abb196(55)=spbl3e2*abb196(55)
      abb196(27)=-spae1e5*abb196(27)
      abb196(27)=abb196(27)+abb196(55)
      abb196(27)=1.0_ki/2.0_ki*abb196(27)
      abb196(55)=abb196(91)*spbl3e2
      abb196(72)=-spae1e5*abb196(55)
      abb196(83)=1.0_ki/2.0_ki*abb196(16)
      abb196(118)=-spal4e5*abb196(83)
      abb196(119)=-spal4e5*abb196(55)
      abb196(120)=abb196(22)*spbe5e1
      abb196(121)=-abb196(94)*abb196(120)
      abb196(20)=abb196(23)*abb196(20)
      abb196(23)=abb196(20)*abb196(105)
      abb196(105)=-abb196(91)*abb196(23)
      abb196(105)=abb196(105)+abb196(121)
      abb196(105)=abb196(24)*abb196(105)
      abb196(50)=-abb196(51)*abb196(50)
      abb196(7)=abb196(38)*abb196(7)
      abb196(84)=-abb196(84)*abb196(7)
      abb196(14)=abb196(38)*abb196(14)
      abb196(121)=abb196(91)*abb196(22)
      abb196(24)=abb196(121)*abb196(24)
      abb196(107)=-abb196(24)*abb196(107)
      abb196(14)=abb196(107)+abb196(14)+abb196(84)+abb196(50)+abb196(105)
      abb196(18)=-abb196(18)*abb196(82)
      abb196(50)=-abb196(81)*abb196(120)
      abb196(18)=abb196(18)+abb196(50)
      abb196(18)=1.0_ki/2.0_ki*abb196(18)
      abb196(39)=-spbe5e1*abb196(39)
      abb196(22)=-abb196(22)*abb196(73)
      abb196(23)=abb196(6)*abb196(23)
      abb196(22)=abb196(23)+abb196(39)+abb196(22)
      abb196(22)=1.0_ki/2.0_ki*abb196(22)
      abb196(23)=-spbe5e1*abb196(121)
      abb196(7)=-spbe2e1*abb196(7)
      abb196(38)=-abb196(38)*abb196(6)
      abb196(39)=-spbe2e1*abb196(38)
      abb196(50)=-spbe5l4*abb196(24)
      abb196(73)=-spbe5l4*abb196(121)
      abb196(38)=-spbl3e2*abb196(38)
      abb196(82)=abb196(48)*spae1e5
      abb196(84)=-abb196(94)*abb196(82)
      abb196(21)=abb196(21)*abb196(32)
      abb196(32)=abb196(21)*abb196(101)
      abb196(101)=-abb196(91)*abb196(32)
      abb196(84)=abb196(101)+abb196(84)
      abb196(84)=abb196(8)*abb196(84)
      abb196(30)=abb196(30)-abb196(56)
      abb196(30)=abb196(15)*abb196(30)
      abb196(40)=-abb196(63)*abb196(40)
      abb196(56)=abb196(91)*abb196(48)
      abb196(8)=abb196(56)*abb196(8)
      abb196(101)=-abb196(8)*abb196(103)
      abb196(30)=abb196(101)+abb196(40)+abb196(30)+abb196(84)
      abb196(17)=-abb196(17)*abb196(75)
      abb196(40)=-abb196(78)*abb196(82)
      abb196(17)=abb196(17)+abb196(40)
      abb196(17)=1.0_ki/2.0_ki*abb196(17)
      abb196(40)=-abb196(15)*abb196(87)
      abb196(15)=-abb196(15)*abb196(6)
      abb196(75)=-spae1e2*abb196(15)
      abb196(49)=-spae1e5*abb196(49)
      abb196(48)=-abb196(48)*abb196(57)
      abb196(6)=abb196(6)*abb196(32)
      abb196(6)=abb196(6)+abb196(49)+abb196(48)
      abb196(6)=1.0_ki/2.0_ki*abb196(6)
      abb196(32)=-spae1e5*abb196(56)
      abb196(48)=-spal4e5*abb196(8)
      abb196(49)=-spal4e5*abb196(56)
      abb196(15)=-spae2l3*abb196(15)
      abb196(57)=-abb196(78)*abb196(21)
      abb196(78)=-abb196(81)*abb196(20)
      abb196(57)=abb196(57)+abb196(78)
      abb196(57)=1.0_ki/2.0_ki*abb196(57)
      abb196(20)=-abb196(91)*abb196(20)
      abb196(21)=abb196(21)*abb196(91)
      abb196(78)=-spae1k1*abb196(54)
      abb196(60)=abb196(10)*abb196(60)
      abb196(60)=abb196(60)+abb196(78)
      abb196(60)=1.0_ki/2.0_ki*abb196(60)
      abb196(58)=1.0_ki/2.0_ki*abb196(10)*abb196(58)
      abb196(78)=abb196(10)*abb196(94)
      abb196(10)=abb196(10)*abb196(91)
      abb196(81)=spae1k1*abb196(83)
      abb196(82)=spae1k1*abb196(55)
      abb196(83)=spae1k1*abb196(8)
      abb196(84)=spae1k1*abb196(56)
      abb196(64)=-spbk1e1*abb196(64)
      abb196(69)=abb196(26)*abb196(69)
      abb196(64)=abb196(69)+abb196(64)
      abb196(64)=1.0_ki/2.0_ki*abb196(64)
      abb196(67)=1.0_ki/2.0_ki*abb196(26)*abb196(67)
      abb196(69)=abb196(26)*abb196(94)
      abb196(26)=abb196(26)*abb196(91)
      abb196(87)=1.0_ki/2.0_ki*spbk1e1*abb196(76)
      abb196(91)=spbk1e1*abb196(65)
      abb196(94)=spbk1e1*abb196(24)
      abb196(101)=spbk1e1*abb196(121)
      abb196(54)=abb196(68)-abb196(54)
      abb196(68)=1.0_ki/2.0_ki*spak1e5
      abb196(54)=abb196(54)*abb196(68)
      abb196(80)=abb196(80)*abb196(68)
      abb196(103)=spak1e5*abb196(108)
      abb196(86)=spak1e5*abb196(86)
      abb196(16)=abb196(16)*abb196(68)
      abb196(55)=spak1e5*abb196(55)
      abb196(8)=spak1e5*abb196(8)
      abb196(56)=spak1e5*abb196(56)
      abb196(68)=1.0_ki/2.0_ki*spbe5k1
      abb196(53)=-abb196(53)*abb196(68)
      abb196(66)=abb196(66)*abb196(68)
      abb196(105)=spbe5k1*abb196(114)
      abb196(88)=spbe5k1*abb196(88)
      abb196(68)=abb196(76)*abb196(68)
      abb196(65)=spbe5k1*abb196(65)
      abb196(24)=spbe5k1*abb196(24)
      abb196(76)=spbe5k1*abb196(121)
      R2d196=0.0_ki
      rat2 = rat2 + R2d196
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='196' value='", &
          & R2d196, "'/>"
      end if
   end subroutine
end module p9_part21part21_part25part25part21_abbrevd196h0
