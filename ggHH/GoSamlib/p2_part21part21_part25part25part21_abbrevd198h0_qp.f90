module     p2_part21part21_part25part25part21_abbrevd198h0_qp
   use p2_part21part21_part25part25part21_config, only: ki => ki_qp
   use p2_part21part21_part25part25part21_kinematics_qp, only: epstensor
   use p2_part21part21_part25part25part21_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(130), public :: abb198
   complex(ki), public :: R2d198
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p2_part21part21_part25part25part21_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p2_part21part21_part25part25part21_kinematics_qp
      use p2_part21part21_part25part25part21_model_qp
      use p2_part21part21_part25part25part21_color_qp, only: TR
      use p2_part21part21_part25part25part21_globalsl1_qp, only: epspow
      implicit none
      abb198(1)=sqrt(mdlMT**2)
      abb198(2)=spak2l3**(-1)
      abb198(3)=spbl3k2**(-1)
      abb198(4)=spak2l4**(-1)
      abb198(5)=spbl4k2**(-1)
      abb198(6)=c2-c1
      abb198(6)=abb198(6)*mdlGC7**3
      abb198(7)=abb198(6)*mdlGC45**2
      abb198(8)=mdlMh**2
      abb198(9)=-abb198(8)*abb198(7)
      abb198(10)=abb198(1)**4
      abb198(11)=-abb198(10)*abb198(9)
      abb198(12)=abb198(11)*spae1e5
      abb198(13)=1.0_ki/2.0_ki*spbe5e2
      abb198(14)=abb198(5)*abb198(4)
      abb198(15)=abb198(14)*spae2k2
      abb198(16)=-abb198(15)*abb198(13)*abb198(12)
      abb198(17)=spae2k5*spbk5e5
      abb198(18)=spae2l3*spbe5l3
      abb198(17)=abb198(17)-abb198(18)
      abb198(18)=abb198(1)*mdlGC45
      abb198(6)=-abb198(6)*abb198(18)**2
      abb198(8)=-abb198(8)*abb198(6)
      abb198(18)=abb198(3)*abb198(2)
      abb198(19)=abb198(18)*spak2e5
      abb198(20)=abb198(8)*abb198(19)
      abb198(21)=-abb198(20)*abb198(17)
      abb198(22)=spbe2k1*spae1k1
      abb198(23)=-abb198(21)*abb198(22)
      abb198(24)=abb198(19)*spbe5e2
      abb198(25)=1.0_ki/2.0_ki*spae1e2
      abb198(26)=abb198(11)*abb198(25)*abb198(24)
      abb198(16)=abb198(26)+abb198(16)+abb198(23)
      abb198(16)=spbk2e1*abb198(16)
      abb198(23)=1.0_ki/2.0_ki*spae2e5
      abb198(14)=abb198(14)*spbk2e2
      abb198(26)=-spbe5e1*abb198(14)*abb198(23)
      abb198(18)=abb198(18)*spbe5k2
      abb198(27)=abb198(18)*spae2e5
      abb198(28)=1.0_ki/2.0_ki*spbe2e1
      abb198(29)=abb198(28)*abb198(27)
      abb198(26)=abb198(29)+abb198(26)
      abb198(26)=abb198(11)*abb198(26)
      abb198(29)=spbk5e2*spae5k5
      abb198(30)=spbl3e2*spal3e5
      abb198(29)=abb198(29)-abb198(30)
      abb198(30)=abb198(8)*abb198(18)
      abb198(31)=-abb198(30)*abb198(29)
      abb198(32)=spak1e2*spbk1e1
      abb198(33)=-abb198(31)*abb198(32)
      abb198(26)=abb198(33)+abb198(26)
      abb198(26)=spae1k2*abb198(26)
      abb198(33)=abb198(8)*abb198(14)
      abb198(34)=abb198(17)*abb198(33)
      abb198(35)=1.0_ki/2.0_ki*spae1k2
      abb198(36)=abb198(35)*abb198(34)
      abb198(10)=-abb198(10)*abb198(7)
      abb198(37)=abb198(10)*spbe5e2
      abb198(38)=-abb198(25)*abb198(37)
      abb198(36)=abb198(36)+abb198(38)
      abb198(36)=spal3e5*abb198(36)
      abb198(38)=abb198(6)*spal3e5
      abb198(39)=-abb198(38)*abb198(17)
      abb198(40)=abb198(18)*spae2k2
      abb198(41)=abb198(8)*abb198(40)
      abb198(42)=abb198(41)*spal3e5
      abb198(42)=abb198(39)-abb198(42)
      abb198(43)=abb198(42)*abb198(22)
      abb198(36)=abb198(43)+abb198(36)
      abb198(36)=spbl3e1*abb198(36)
      abb198(43)=abb198(8)*abb198(15)
      abb198(44)=abb198(29)*abb198(43)
      abb198(45)=1.0_ki/2.0_ki*spbk2e1
      abb198(46)=abb198(45)*abb198(44)
      abb198(47)=abb198(10)*spae2e5
      abb198(48)=-abb198(28)*abb198(47)
      abb198(46)=abb198(46)+abb198(48)
      abb198(46)=spbe5l3*abb198(46)
      abb198(48)=abb198(6)*spbe5l3
      abb198(49)=-abb198(48)*abb198(29)
      abb198(50)=abb198(19)*spbk2e2
      abb198(8)=abb198(8)*abb198(50)
      abb198(51)=abb198(8)*spbe5l3
      abb198(51)=abb198(51)-abb198(49)
      abb198(52)=-abb198(51)*abb198(32)
      abb198(46)=abb198(52)+abb198(46)
      abb198(46)=spae1l3*abb198(46)
      abb198(52)=spbe5e1*spae1k1
      abb198(53)=-abb198(52)*abb198(29)
      abb198(54)=abb198(6)*spae2l4
      abb198(55)=-abb198(54)*abb198(53)
      abb198(56)=abb198(20)*spbk2e1
      abb198(57)=abb198(56)*spbe5e2
      abb198(58)=abb198(38)*spbl3e1
      abb198(59)=abb198(58)*spbe5e2
      abb198(57)=abb198(57)-abb198(59)
      abb198(60)=spae2l4*spae1k1
      abb198(61)=-abb198(60)*abb198(57)
      abb198(62)=abb198(8)*spae2l4
      abb198(63)=abb198(52)*abb198(62)
      abb198(55)=abb198(63)+abb198(61)+abb198(55)
      abb198(61)=1.0_ki/2.0_ki*spbl4k1
      abb198(55)=abb198(55)*abb198(61)
      abb198(63)=spae1e5*spbk1e1
      abb198(64)=-abb198(63)*abb198(17)
      abb198(65)=abb198(6)*spbl4e2
      abb198(66)=-abb198(65)*abb198(64)
      abb198(67)=abb198(30)*spae1k2
      abb198(68)=abb198(67)*spae2e5
      abb198(69)=abb198(48)*spae1l3
      abb198(70)=abb198(69)*spae2e5
      abb198(68)=abb198(68)-abb198(70)
      abb198(71)=spbl4e2*spbk1e1
      abb198(72)=-abb198(71)*abb198(68)
      abb198(73)=abb198(41)*spbl4e2
      abb198(74)=abb198(63)*abb198(73)
      abb198(66)=abb198(74)+abb198(72)+abb198(66)
      abb198(72)=1.0_ki/2.0_ki*spak1l4
      abb198(66)=abb198(66)*abb198(72)
      abb198(74)=abb198(31)*spae1k2
      abb198(75)=abb198(37)*spae1e5
      abb198(74)=abb198(74)-abb198(75)
      abb198(75)=-spae2l4*abb198(74)
      abb198(49)=spae2l4*abb198(49)
      abb198(76)=-spbe5l3*abb198(62)
      abb198(49)=abb198(76)+abb198(49)
      abb198(49)=spae1l3*abb198(49)
      abb198(49)=abb198(49)+abb198(75)
      abb198(75)=1.0_ki/2.0_ki*spbl4e1
      abb198(49)=abb198(49)*abb198(75)
      abb198(76)=abb198(21)*spbk2e1
      abb198(77)=abb198(47)*spbe5e1
      abb198(76)=abb198(76)-abb198(77)
      abb198(77)=-spbl4e2*abb198(76)
      abb198(39)=spbl4e2*abb198(39)
      abb198(78)=-spal3e5*abb198(73)
      abb198(39)=abb198(78)+abb198(39)
      abb198(39)=spbl3e1*abb198(39)
      abb198(39)=abb198(39)+abb198(77)
      abb198(77)=1.0_ki/2.0_ki*spae1l4
      abb198(39)=abb198(39)*abb198(77)
      abb198(78)=abb198(43)*abb198(53)
      abb198(79)=mdlMh**4
      abb198(80)=abb198(6)*abb198(79)
      abb198(81)=abb198(15)*spae1k1
      abb198(24)=spbk2e1*abb198(80)*abb198(81)*abb198(24)
      abb198(82)=abb198(43)*spbe5e2
      abb198(83)=abb198(82)*spae1k1
      abb198(84)=-spbl3e1*spal3e5*abb198(83)
      abb198(24)=abb198(84)+abb198(24)+abb198(78)
      abb198(78)=1.0_ki/2.0_ki*spbk2k1
      abb198(24)=abb198(24)*abb198(78)
      abb198(84)=abb198(33)*abb198(64)
      abb198(85)=abb198(14)*spbk1e1
      abb198(27)=spae1k2*abb198(80)*abb198(85)*abb198(27)
      abb198(80)=abb198(33)*spae2e5
      abb198(86)=abb198(80)*spbk1e1
      abb198(87)=-spae1l3*spbe5l3*abb198(86)
      abb198(27)=abb198(87)+abb198(27)+abb198(84)
      abb198(84)=1.0_ki/2.0_ki*spak1k2
      abb198(27)=abb198(27)*abb198(84)
      abb198(87)=-spae1e5*abb198(17)
      abb198(88)=abb198(10)*abb198(87)
      abb198(12)=-abb198(40)*abb198(12)
      abb198(12)=abb198(12)+abb198(88)
      abb198(12)=abb198(12)*abb198(28)
      abb198(88)=-spbe5e1*abb198(29)
      abb198(89)=abb198(10)*abb198(88)
      abb198(11)=-spbe5e1*abb198(11)*abb198(50)
      abb198(11)=abb198(11)+abb198(89)
      abb198(11)=abb198(11)*abb198(25)
      abb198(89)=spbe2k1*abb198(52)*abb198(47)
      abb198(90)=spak1e2*abb198(63)*abb198(37)
      abb198(11)=abb198(27)+abb198(24)+abb198(39)+abb198(49)+abb198(66)+abb198(&
      &55)+abb198(46)+abb198(36)+abb198(26)+abb198(16)+abb198(11)+abb198(12)+ab&
      &b198(89)+abb198(90)
      abb198(12)=abb198(6)*spae1e5
      abb198(16)=abb198(17)*abb198(12)
      abb198(24)=abb198(41)*spae1e5
      abb198(16)=abb198(24)+abb198(16)
      abb198(24)=-spbe2e1*abb198(16)
      abb198(26)=abb198(6)*spbe5e1
      abb198(27)=abb198(29)*abb198(26)
      abb198(36)=abb198(8)*spbe5e1
      abb198(27)=abb198(36)+abb198(27)
      abb198(36)=-spae1e2*abb198(27)
      abb198(39)=-spae1e5*abb198(82)
      abb198(46)=abb198(20)*spbe5e2
      abb198(49)=spae1e2*abb198(46)
      abb198(39)=abb198(39)+abb198(49)
      abb198(39)=abb198(39)*abb198(45)
      abb198(45)=-spbe5e1*abb198(80)
      abb198(49)=abb198(30)*spae2e5
      abb198(55)=spbe2e1*abb198(49)
      abb198(45)=abb198(45)+abb198(55)
      abb198(35)=abb198(45)*abb198(35)
      abb198(45)=-abb198(7)*spae2l4
      abb198(55)=-abb198(45)*abb198(53)
      abb198(50)=abb198(50)*abb198(9)
      abb198(66)=abb198(50)*abb198(52)
      abb198(89)=-spae2l4*abb198(66)
      abb198(55)=abb198(89)+abb198(55)
      abb198(55)=abb198(55)*abb198(61)
      abb198(89)=-abb198(7)*spbl4e2
      abb198(90)=-abb198(89)*abb198(64)
      abb198(40)=abb198(40)*abb198(9)
      abb198(91)=abb198(40)*abb198(63)
      abb198(92)=-spbl4e2*abb198(91)
      abb198(90)=abb198(92)+abb198(90)
      abb198(90)=abb198(90)*abb198(72)
      abb198(92)=abb198(15)*abb198(9)
      abb198(93)=-abb198(78)*abb198(92)*abb198(53)
      abb198(94)=abb198(14)*abb198(9)
      abb198(95)=-abb198(84)*abb198(94)*abb198(64)
      abb198(96)=abb198(6)*spae2e5
      abb198(97)=abb198(96)*spbe2k1
      abb198(98)=abb198(52)*abb198(97)
      abb198(99)=abb198(6)*spbe5e2
      abb198(100)=abb198(99)*spak1e2
      abb198(101)=abb198(63)*abb198(100)
      abb198(59)=-abb198(25)*abb198(59)
      abb198(70)=-abb198(28)*abb198(70)
      abb198(102)=abb198(13)*spbl4e1
      abb198(103)=spae1e5*abb198(54)*abb198(102)
      abb198(104)=abb198(23)*spae1l4
      abb198(105)=spbe5e1*abb198(65)*abb198(104)
      abb198(24)=abb198(95)+abb198(93)+abb198(105)+abb198(103)+abb198(90)+abb19&
      &8(55)+abb198(70)+abb198(59)+abb198(35)+abb198(39)+abb198(36)+abb198(24)+&
      &abb198(98)+abb198(101)
      abb198(35)=-abb198(87)*abb198(7)
      abb198(36)=abb198(40)*spae1e5
      abb198(35)=abb198(35)+abb198(36)
      abb198(39)=spbe2e1*abb198(35)
      abb198(55)=-abb198(88)*abb198(7)
      abb198(59)=abb198(50)*spbe5e1
      abb198(55)=abb198(55)+abb198(59)
      abb198(70)=spae1e2*abb198(55)
      abb198(39)=abb198(39)+abb198(70)
      abb198(39)=1.0_ki/2.0_ki*abb198(39)
      abb198(70)=-abb198(54)*abb198(61)
      abb198(90)=abb198(43)*abb198(78)
      abb198(70)=abb198(90)+abb198(70)
      abb198(70)=abb198(52)*abb198(70)
      abb198(90)=abb198(48)*abb198(32)
      abb198(93)=abb198(43)*spbk2e1
      abb198(95)=spbe5l3*abb198(93)
      abb198(90)=abb198(90)-1.0_ki/2.0_ki*abb198(95)
      abb198(90)=spae1l3*abb198(90)
      abb198(69)=abb198(69)-abb198(67)
      abb198(75)=abb198(75)*spae2l4*abb198(69)
      abb198(95)=spbe5e1*abb198(10)*abb198(25)
      abb198(67)=-abb198(67)*abb198(32)
      abb198(67)=abb198(75)+abb198(90)+abb198(95)+abb198(67)+abb198(70)
      abb198(70)=1.0_ki/2.0_ki*abb198(9)
      abb198(75)=abb198(70)*abb198(15)
      abb198(90)=-spbk2k1*abb198(75)
      abb198(95)=-1.0_ki/2.0_ki*abb198(7)
      abb198(98)=-spbl4k1*spae2l4*abb198(95)
      abb198(90)=abb198(90)+abb198(98)
      abb198(90)=abb198(52)*abb198(90)
      abb198(98)=spae1e2*abb198(26)
      abb198(90)=abb198(98)+abb198(90)
      abb198(98)=abb198(95)*spbe5e1
      abb198(101)=spae1e2*abb198(98)
      abb198(103)=-abb198(65)*abb198(72)
      abb198(105)=abb198(33)*abb198(84)
      abb198(103)=abb198(105)+abb198(103)
      abb198(103)=abb198(63)*abb198(103)
      abb198(105)=abb198(38)*abb198(22)
      abb198(106)=abb198(33)*spae1k2
      abb198(107)=spal3e5*abb198(106)
      abb198(105)=abb198(105)-1.0_ki/2.0_ki*abb198(107)
      abb198(105)=spbl3e1*abb198(105)
      abb198(58)=abb198(58)-abb198(56)
      abb198(77)=abb198(77)*spbl4e2*abb198(58)
      abb198(10)=spae1e5*abb198(10)*abb198(28)
      abb198(56)=-abb198(56)*abb198(22)
      abb198(10)=abb198(77)+abb198(105)+abb198(10)+abb198(56)+abb198(103)
      abb198(56)=abb198(70)*abb198(14)
      abb198(70)=-spak1k2*abb198(56)
      abb198(77)=-spak1l4*spbl4e2*abb198(95)
      abb198(70)=abb198(70)+abb198(77)
      abb198(70)=abb198(63)*abb198(70)
      abb198(77)=spbe2e1*abb198(12)
      abb198(70)=abb198(77)+abb198(70)
      abb198(77)=abb198(95)*spae1e5
      abb198(103)=spbe2e1*abb198(77)
      abb198(105)=abb198(6)*spae1k1
      abb198(107)=-abb198(105)*abb198(17)
      abb198(108)=-spae1k1*abb198(41)
      abb198(107)=abb198(108)+abb198(107)
      abb198(108)=2.0_ki*spbe2k1
      abb198(107)=abb198(107)*abb198(108)
      abb198(34)=spae1k2*abb198(34)
      abb198(109)=-abb198(65)*abb198(17)
      abb198(109)=-abb198(73)+abb198(109)
      abb198(109)=spae1l4*abb198(109)
      abb198(37)=-spae1e2*abb198(37)
      abb198(110)=abb198(54)*spbe5e2
      abb198(111)=spbl4k1*spae1k1*abb198(110)
      abb198(83)=-spbk2k1*abb198(83)
      abb198(34)=abb198(83)+abb198(109)+abb198(111)+abb198(34)+abb198(107)+abb1&
      &98(37)
      abb198(37)=-spae1e2*abb198(99)
      abb198(83)=abb198(105)*abb198(108)
      abb198(99)=spae1l4*abb198(65)
      abb198(83)=abb198(99)+abb198(83)-abb198(106)
      abb198(99)=abb198(6)*spbk1e1
      abb198(107)=-abb198(99)*abb198(29)
      abb198(108)=-spbk1e1*abb198(8)
      abb198(107)=abb198(108)+abb198(107)
      abb198(108)=2.0_ki*spak1e2
      abb198(107)=abb198(107)*abb198(108)
      abb198(44)=spbk2e1*abb198(44)
      abb198(109)=-abb198(54)*abb198(29)
      abb198(109)=-abb198(62)+abb198(109)
      abb198(109)=spbl4e1*abb198(109)
      abb198(47)=-spbe2e1*abb198(47)
      abb198(111)=abb198(65)*spae2e5
      abb198(112)=spak1l4*spbk1e1*abb198(111)
      abb198(86)=-spak1k2*abb198(86)
      abb198(44)=abb198(86)+abb198(109)+abb198(112)+abb198(44)+abb198(107)+abb1&
      &98(47)
      abb198(47)=-spbe2e1*abb198(96)
      abb198(86)=abb198(99)*abb198(108)
      abb198(96)=spbl4e1*abb198(54)
      abb198(86)=abb198(96)+abb198(86)-abb198(93)
      abb198(96)=-spae1l3*abb198(51)
      abb198(74)=abb198(96)-abb198(74)
      abb198(96)=spbe5e2*abb198(12)
      abb198(107)=-abb198(6)*abb198(29)
      abb198(107)=-abb198(8)+abb198(107)
      abb198(107)=2.0_ki*abb198(107)
      abb198(108)=2.0_ki*abb198(6)
      abb198(109)=spbl3e1*abb198(42)
      abb198(76)=abb198(109)-abb198(76)
      abb198(109)=spae2e5*abb198(26)
      abb198(112)=-abb198(6)*abb198(17)
      abb198(112)=-abb198(41)+abb198(112)
      abb198(112)=2.0_ki*abb198(112)
      abb198(113)=-spae2l4*abb198(57)
      abb198(114)=-abb198(54)*abb198(88)
      abb198(62)=spbe5e1*abb198(62)
      abb198(62)=abb198(62)+abb198(114)+abb198(113)
      abb198(62)=1.0_ki/2.0_ki*abb198(62)
      abb198(45)=-abb198(45)*abb198(88)
      abb198(59)=-spae2l4*abb198(59)
      abb198(45)=abb198(59)+abb198(45)
      abb198(45)=1.0_ki/2.0_ki*abb198(45)
      abb198(59)=1.0_ki/2.0_ki*spbe5e1
      abb198(54)=-abb198(54)*abb198(59)
      abb198(113)=-spae2l4*abb198(98)
      abb198(114)=-spbl4e2*abb198(68)
      abb198(115)=-abb198(65)*abb198(87)
      abb198(73)=spae1e5*abb198(73)
      abb198(73)=abb198(73)+abb198(115)+abb198(114)
      abb198(73)=1.0_ki/2.0_ki*abb198(73)
      abb198(89)=-abb198(89)*abb198(87)
      abb198(36)=-spbl4e2*abb198(36)
      abb198(36)=abb198(36)+abb198(89)
      abb198(36)=1.0_ki/2.0_ki*abb198(36)
      abb198(89)=1.0_ki/2.0_ki*spae1e5
      abb198(65)=-abb198(65)*abb198(89)
      abb198(114)=-spbl4e2*abb198(77)
      abb198(42)=-abb198(42)*abb198(28)
      abb198(115)=-abb198(7)*spal3e5
      abb198(116)=-abb198(115)*abb198(17)
      abb198(40)=abb198(40)*spal3e5
      abb198(40)=abb198(116)+abb198(40)
      abb198(72)=abb198(72)*abb198(71)
      abb198(116)=abb198(40)*abb198(72)
      abb198(84)=abb198(17)*abb198(84)
      abb198(117)=abb198(9)*spal3e5
      abb198(118)=abb198(85)*abb198(117)
      abb198(119)=-abb198(118)*abb198(84)
      abb198(120)=abb198(38)*spbe5e2
      abb198(121)=-abb198(120)*abb198(32)
      abb198(13)=abb198(13)*spal3e5
      abb198(93)=abb198(93)*abb198(13)
      abb198(102)=abb198(102)*spae2l4
      abb198(122)=-abb198(38)*abb198(102)
      abb198(42)=abb198(119)+abb198(122)+abb198(116)+abb198(93)+abb198(121)+abb&
      &198(42)
      abb198(93)=-abb198(40)*abb198(28)
      abb198(38)=-spbe2e1*abb198(38)
      abb198(71)=abb198(71)*spak1l4
      abb198(115)=abb198(115)*abb198(71)
      abb198(116)=spak1k2*abb198(118)
      abb198(38)=abb198(116)+abb198(38)+abb198(115)
      abb198(38)=1.0_ki/2.0_ki*abb198(38)
      abb198(115)=abb198(95)*spal3e5
      abb198(116)=-spbe2e1*abb198(115)
      abb198(118)=1.0_ki/2.0_ki*abb198(40)
      abb198(119)=spbl4e2*abb198(118)
      abb198(121)=spbl4e2*abb198(115)
      abb198(51)=abb198(51)*abb198(25)
      abb198(122)=-abb198(7)*spbe5l3
      abb198(123)=-abb198(122)*abb198(29)
      abb198(50)=abb198(50)*spbe5l3
      abb198(50)=abb198(123)+abb198(50)
      abb198(61)=abb198(61)*abb198(60)
      abb198(123)=abb198(50)*abb198(61)
      abb198(78)=abb198(29)*abb198(78)
      abb198(124)=abb198(9)*spbe5l3
      abb198(125)=abb198(81)*abb198(124)
      abb198(126)=-abb198(125)*abb198(78)
      abb198(127)=abb198(48)*spae2e5
      abb198(128)=-abb198(127)*abb198(22)
      abb198(23)=abb198(23)*spbe5l3
      abb198(106)=abb198(106)*abb198(23)
      abb198(104)=abb198(104)*spbl4e2
      abb198(129)=-abb198(48)*abb198(104)
      abb198(51)=abb198(126)+abb198(129)+abb198(123)+abb198(106)+abb198(128)+ab&
      &b198(51)
      abb198(106)=-abb198(50)*abb198(25)
      abb198(48)=-spae1e2*abb198(48)
      abb198(60)=abb198(60)*spbl4k1
      abb198(122)=abb198(122)*abb198(60)
      abb198(123)=spbk2k1*abb198(125)
      abb198(48)=abb198(123)+abb198(48)+abb198(122)
      abb198(48)=1.0_ki/2.0_ki*abb198(48)
      abb198(122)=abb198(95)*spbe5l3
      abb198(123)=-spae1e2*abb198(122)
      abb198(125)=1.0_ki/2.0_ki*abb198(50)
      abb198(126)=spae2l4*abb198(125)
      abb198(128)=spae2l4*abb198(122)
      abb198(13)=-spbl3e1*abb198(13)
      abb198(13)=abb198(13)+1.0_ki/2.0_ki*abb198(88)
      abb198(13)=abb198(43)*abb198(13)
      abb198(21)=abb198(21)*abb198(28)
      abb198(129)=abb198(9)*abb198(19)
      abb198(130)=-abb198(129)*abb198(17)
      abb198(72)=abb198(130)*abb198(72)
      abb198(79)=abb198(79)*abb198(7)
      abb198(19)=abb198(79)*abb198(19)
      abb198(85)=abb198(19)*abb198(85)
      abb198(84)=abb198(85)*abb198(84)
      abb198(32)=abb198(46)*abb198(32)
      abb198(102)=abb198(20)*abb198(102)
      abb198(13)=abb198(84)+abb198(102)+abb198(72)+abb198(21)+abb198(32)+abb198&
      &(13)
      abb198(21)=-abb198(92)*abb198(88)
      abb198(32)=-spbe2e1*abb198(130)
      abb198(21)=abb198(32)+abb198(21)
      abb198(21)=1.0_ki/2.0_ki*abb198(21)
      abb198(32)=abb198(43)*abb198(59)
      abb198(43)=-spbe5e1*abb198(75)
      abb198(20)=spbe2e1*abb198(20)
      abb198(59)=abb198(129)*abb198(71)
      abb198(71)=-spak1k2*abb198(85)
      abb198(20)=abb198(71)+abb198(20)+abb198(59)
      abb198(20)=1.0_ki/2.0_ki*abb198(20)
      abb198(28)=-abb198(129)*abb198(28)
      abb198(59)=1.0_ki/2.0_ki*abb198(130)
      abb198(71)=spbl4e2*abb198(59)
      abb198(72)=1.0_ki/2.0_ki*abb198(129)
      abb198(84)=spbl4e2*abb198(72)
      abb198(85)=-1.0_ki/2.0_ki*abb198(124)*abb198(15)*abb198(29)
      abb198(75)=spbe5l3*abb198(75)
      abb198(23)=-spae1l3*abb198(23)
      abb198(23)=abb198(23)+1.0_ki/2.0_ki*abb198(87)
      abb198(23)=abb198(33)*abb198(23)
      abb198(31)=abb198(31)*abb198(25)
      abb198(9)=abb198(9)*abb198(18)
      abb198(88)=-abb198(9)*abb198(29)
      abb198(61)=abb198(88)*abb198(61)
      abb198(18)=abb198(79)*abb198(18)
      abb198(79)=abb198(18)*abb198(81)
      abb198(78)=abb198(79)*abb198(78)
      abb198(22)=abb198(49)*abb198(22)
      abb198(81)=abb198(30)*abb198(104)
      abb198(22)=abb198(78)+abb198(81)+abb198(61)+abb198(31)+abb198(22)+abb198(&
      &23)
      abb198(23)=-abb198(94)*abb198(87)
      abb198(31)=-spae1e2*abb198(88)
      abb198(23)=abb198(31)+abb198(23)
      abb198(23)=1.0_ki/2.0_ki*abb198(23)
      abb198(30)=spae1e2*abb198(30)
      abb198(31)=abb198(9)*abb198(60)
      abb198(60)=-spbk2k1*abb198(79)
      abb198(30)=abb198(60)+abb198(30)+abb198(31)
      abb198(30)=1.0_ki/2.0_ki*abb198(30)
      abb198(25)=-abb198(9)*abb198(25)
      abb198(31)=abb198(33)*abb198(89)
      abb198(33)=-spae1e5*abb198(56)
      abb198(60)=1.0_ki/2.0_ki*abb198(88)
      abb198(61)=spae2l4*abb198(60)
      abb198(78)=1.0_ki/2.0_ki*abb198(9)
      abb198(79)=spae2l4*abb198(78)
      abb198(81)=-1.0_ki/2.0_ki*abb198(117)*abb198(14)*abb198(17)
      abb198(56)=spal3e5*abb198(56)
      abb198(14)=abb198(19)*abb198(14)
      abb198(17)=abb198(14)*abb198(17)
      abb198(15)=abb198(18)*abb198(15)
      abb198(18)=abb198(15)*abb198(29)
      abb198(17)=abb198(18)+abb198(17)
      abb198(17)=1.0_ki/2.0_ki*abb198(17)
      abb198(15)=-1.0_ki/2.0_ki*abb198(15)
      abb198(14)=-1.0_ki/2.0_ki*abb198(14)
      abb198(18)=-spae1k1*abb198(57)
      abb198(19)=-abb198(6)*abb198(53)
      abb198(8)=abb198(52)*abb198(8)
      abb198(8)=abb198(8)+abb198(19)+abb198(18)
      abb198(8)=1.0_ki/2.0_ki*abb198(8)
      abb198(18)=abb198(7)*abb198(53)
      abb198(18)=-abb198(66)+abb198(18)
      abb198(18)=1.0_ki/2.0_ki*abb198(18)
      abb198(19)=1.0_ki/2.0_ki*abb198(6)
      abb198(29)=-abb198(52)*abb198(19)
      abb198(52)=-abb198(52)*abb198(95)
      call init_abbrev_1()
   end subroutine
   subroutine init_abbrev_1()
      use p2_part21part21_part25part25part21_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p2_part21part21_part25part25part21_kinematics_qp
      use p2_part21part21_part25part25part21_model_qp
      use p2_part21part21_part25part25part21_color_qp, only: TR
      use p2_part21part21_part25part25part21_globalsl1_qp, only: epspow
      implicit none
      abb198(53)=spbe5e2*abb198(105)
      abb198(66)=spae1k1*abb198(125)
      abb198(87)=spae1k1*abb198(122)
      abb198(60)=spae1k1*abb198(60)
      abb198(78)=spae1k1*abb198(78)
      abb198(89)=-spbk1e1*abb198(68)
      abb198(6)=-abb198(6)*abb198(64)
      abb198(41)=abb198(63)*abb198(41)
      abb198(6)=abb198(41)+abb198(6)+abb198(89)
      abb198(6)=1.0_ki/2.0_ki*abb198(6)
      abb198(7)=abb198(7)*abb198(64)
      abb198(7)=-abb198(91)+abb198(7)
      abb198(7)=1.0_ki/2.0_ki*abb198(7)
      abb198(19)=-abb198(63)*abb198(19)
      abb198(41)=-abb198(63)*abb198(95)
      abb198(63)=spae2e5*abb198(99)
      abb198(64)=spbk1e1*abb198(118)
      abb198(89)=spbk1e1*abb198(115)
      abb198(59)=spbk1e1*abb198(59)
      abb198(72)=spbk1e1*abb198(72)
      abb198(27)=abb198(27)-abb198(57)
      abb198(57)=1.0_ki/2.0_ki*spak1e2
      abb198(27)=abb198(27)*abb198(57)
      abb198(55)=-abb198(55)*abb198(57)
      abb198(26)=-abb198(26)*abb198(57)
      abb198(91)=-spak1e2*abb198(98)
      abb198(50)=abb198(50)*abb198(57)
      abb198(92)=spak1e2*abb198(122)
      abb198(88)=abb198(88)*abb198(57)
      abb198(9)=abb198(9)*abb198(57)
      abb198(16)=abb198(16)-abb198(68)
      abb198(57)=1.0_ki/2.0_ki*spbe2k1
      abb198(16)=abb198(16)*abb198(57)
      abb198(35)=-abb198(35)*abb198(57)
      abb198(12)=-abb198(12)*abb198(57)
      abb198(68)=-spbe2k1*abb198(77)
      abb198(40)=abb198(40)*abb198(57)
      abb198(77)=spbe2k1*abb198(115)
      abb198(94)=abb198(130)*abb198(57)
      abb198(57)=abb198(129)*abb198(57)
      R2d198=0.0_ki
      rat2 = rat2 + R2d198
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='198' value='", &
          & R2d198, "'/>"
      end if
   end subroutine
end module p2_part21part21_part25part25part21_abbrevd198h0_qp
