module     p2_part21part21_part25part25part21_abbrevd192h0
   use p2_part21part21_part25part25part21_config, only: ki
   use p2_part21part21_part25part25part21_kinematics, only: epstensor
   use p2_part21part21_part25part25part21_globalsh0
   implicit none
   private
   complex(ki), dimension(91), public :: abb192
   complex(ki), public :: R2d192
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p2_part21part21_part25part25part21_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p2_part21part21_part25part25part21_kinematics
      use p2_part21part21_part25part25part21_model
      use p2_part21part21_part25part25part21_color, only: TR
      use p2_part21part21_part25part25part21_globalsl1, only: epspow
      implicit none
      abb192(1)=sqrt(mdlMT**2)
      abb192(2)=spak2l3**(-1)
      abb192(3)=spbl3k2**(-1)
      abb192(4)=spae1e5*spak1l3
      abb192(5)=1.0_ki/2.0_ki*spbl3k2
      abb192(6)=abb192(4)*abb192(5)
      abb192(5)=abb192(5)*spal3e5
      abb192(7)=spae5k5*spbk5k2
      abb192(5)=abb192(5)+abb192(7)
      abb192(8)=abb192(5)*spae1k1
      abb192(6)=abb192(6)+abb192(8)
      abb192(6)=abb192(6)*spae2k2
      abb192(8)=mdlMh**2*abb192(2)*abb192(3)
      abb192(9)=1.0_ki/2.0_ki*abb192(8)
      abb192(10)=abb192(9)*spae2k2
      abb192(11)=abb192(10)*abb192(7)
      abb192(12)=1.0_ki/2.0_ki*spae2l3
      abb192(13)=spae5k5*spbk5l3
      abb192(14)=abb192(12)*abb192(13)
      abb192(11)=abb192(11)+abb192(14)
      abb192(14)=abb192(11)*spae1k1
      abb192(6)=abb192(6)-abb192(14)
      abb192(6)=abb192(6)*spbe2e1
      abb192(14)=abb192(10)-spae2k2
      abb192(15)=spae1k1*spbk2k1
      abb192(16)=abb192(14)*abb192(15)
      abb192(12)=abb192(12)*spbl3k1
      abb192(17)=abb192(12)*spae1k1
      abb192(16)=abb192(17)+abb192(16)
      abb192(16)=abb192(16)*spbe2e1
      abb192(9)=abb192(9)*spbk2e2
      abb192(17)=abb192(9)-spbk2e2
      abb192(18)=spbk1e1*spak1k2
      abb192(19)=abb192(17)*abb192(18)
      abb192(20)=1.0_ki/2.0_ki*spbl3e2
      abb192(21)=abb192(20)*spak1l3
      abb192(22)=abb192(21)*spbk1e1
      abb192(19)=abb192(22)+abb192(19)
      abb192(19)=abb192(19)*spae1e2
      abb192(16)=abb192(16)+abb192(19)
      abb192(16)=abb192(16)*spak1e5
      abb192(6)=abb192(6)+abb192(16)
      abb192(6)=abb192(6)*spbe5k1
      abb192(16)=spbe5e1*spbl3k1
      abb192(19)=1.0_ki/2.0_ki*spak2l3
      abb192(22)=abb192(16)*abb192(19)
      abb192(19)=abb192(19)*spbe5l3
      abb192(23)=spbk5e5*spak2k5
      abb192(19)=abb192(19)+abb192(23)
      abb192(24)=abb192(19)*spbk1e1
      abb192(22)=abb192(22)+abb192(24)
      abb192(22)=abb192(22)*spbk2e2
      abb192(24)=abb192(9)*abb192(23)
      abb192(25)=spbk5e5*spal3k5
      abb192(20)=abb192(20)*abb192(25)
      abb192(20)=abb192(24)+abb192(20)
      abb192(24)=abb192(20)*spbk1e1
      abb192(22)=abb192(22)-abb192(24)
      abb192(24)=spak1e5*spae1e2
      abb192(22)=abb192(22)*abb192(24)
      abb192(26)=spae2k2*spbl3k2
      abb192(27)=abb192(26)*abb192(25)
      abb192(28)=spbe2e1*spae1e5
      abb192(29)=abb192(27)*abb192(28)
      abb192(30)=spbk2e2*spak2l3
      abb192(31)=abb192(30)*abb192(13)
      abb192(32)=spae1e2*spbe5e1
      abb192(33)=abb192(32)*abb192(31)
      abb192(29)=abb192(29)+abb192(33)
      abb192(6)=abb192(6)+abb192(22)-1.0_ki/2.0_ki*abb192(29)
      abb192(22)=c2-c1
      abb192(6)=-abb192(6)*abb192(22)
      abb192(29)=spae2l3*spbe5l3
      abb192(33)=spbk5e5*spae2k5
      abb192(29)=abb192(29)+abb192(33)
      abb192(10)=abb192(10)*spbe5k2
      abb192(10)=abb192(10)+1.0_ki/2.0_ki*abb192(29)
      abb192(34)=spae1e5*abb192(10)
      abb192(35)=spae2k2*spbe5k2
      abb192(36)=abb192(35)*spae1e5
      abb192(34)=-abb192(36)+abb192(34)
      abb192(34)=abb192(34)*spbe2e1
      abb192(37)=spbl3e2*spal3e5
      abb192(38)=spae5k5*spbk5e2
      abb192(37)=abb192(37)+abb192(38)
      abb192(9)=abb192(9)*spak2e5
      abb192(9)=abb192(9)+1.0_ki/2.0_ki*abb192(37)
      abb192(39)=abb192(9)*spbe5e1
      abb192(40)=spbk2e2*spbe5e1
      abb192(41)=abb192(40)*spak2e5
      abb192(39)=abb192(39)-abb192(41)
      abb192(39)=abb192(39)*spae1e2
      abb192(42)=spae1k1*spae2e5
      abb192(43)=spae1e5*spak1e2
      abb192(44)=abb192(42)+abb192(43)
      abb192(45)=spbe5k1*spbe2e1
      abb192(46)=1.0_ki/2.0_ki*abb192(45)
      abb192(44)=abb192(44)*abb192(46)
      abb192(46)=spbk1e1*spbe5e2
      abb192(47)=spbe5e1*spbe2k1
      abb192(48)=abb192(46)+abb192(47)
      abb192(49)=1.0_ki/2.0_ki*abb192(24)
      abb192(48)=abb192(48)*abb192(49)
      abb192(34)=abb192(34)-abb192(48)+abb192(39)-abb192(44)
      abb192(39)=abb192(1)**2
      abb192(44)=abb192(22)*abb192(39)
      abb192(34)=abb192(34)*abb192(44)
      abb192(6)=abb192(34)+abb192(6)
      abb192(34)=mdlGC45*abb192(1)
      abb192(34)=abb192(34)**2
      abb192(48)=mdlGC7**3
      abb192(49)=abb192(34)*abb192(48)
      abb192(6)=abb192(6)*abb192(49)
      abb192(46)=abb192(47)+3.0_ki*abb192(46)
      abb192(46)=abb192(46)*abb192(24)
      abb192(42)=abb192(43)+3.0_ki*abb192(42)
      abb192(42)=abb192(42)*abb192(45)
      abb192(43)=abb192(33)*spae1e5
      abb192(36)=abb192(43)-abb192(36)
      abb192(36)=abb192(36)*spbe2e1
      abb192(43)=abb192(38)*spbe5e1
      abb192(41)=abb192(43)-abb192(41)
      abb192(41)=abb192(41)*spae1e2
      abb192(36)=-abb192(41)-abb192(36)+abb192(46)+abb192(42)
      abb192(41)=1.0_ki/2.0_ki*abb192(48)
      abb192(34)=abb192(34)*abb192(41)
      abb192(42)=abb192(22)*abb192(34)
      abb192(36)=-abb192(36)*abb192(42)
      abb192(43)=mdlGC45**2
      abb192(46)=abb192(48)*abb192(43)
      abb192(47)=abb192(46)*abb192(1)**4
      abb192(47)=3.0_ki/2.0_ki*abb192(47)
      abb192(48)=abb192(22)*spae1e2
      abb192(50)=-spbe5e1*abb192(48)
      abb192(51)=-abb192(50)*abb192(47)
      abb192(50)=abb192(50)*abb192(34)
      abb192(52)=c1*spbe2e1
      abb192(53)=abb192(52)*spae1e5
      abb192(54)=abb192(28)*c2
      abb192(53)=abb192(53)-abb192(54)
      abb192(47)=-abb192(53)*abb192(47)
      abb192(53)=abb192(53)*abb192(34)
      abb192(19)=abb192(19)*spbk2e2
      abb192(19)=abb192(19)-abb192(20)
      abb192(20)=abb192(17)*spak1k2
      abb192(20)=abb192(20)+abb192(21)
      abb192(20)=abb192(20)*spbe5k1
      abb192(20)=abb192(20)+abb192(19)
      abb192(20)=-abb192(20)*abb192(48)
      abb192(21)=abb192(48)*spbe5e2
      abb192(54)=1.0_ki/2.0_ki*abb192(39)
      abb192(55)=-abb192(21)*abb192(54)
      abb192(20)=abb192(55)+abb192(20)
      abb192(20)=abb192(20)*abb192(49)
      abb192(55)=3.0_ki/2.0_ki*abb192(49)
      abb192(21)=-abb192(21)*abb192(55)
      abb192(5)=abb192(5)*spae2k2
      abb192(5)=abb192(5)-abb192(11)
      abb192(11)=abb192(14)*spbk2k1
      abb192(11)=abb192(11)+abb192(12)
      abb192(11)=abb192(11)*spak1e5
      abb192(11)=abb192(11)+abb192(5)
      abb192(11)=-abb192(22)*abb192(11)*spbe2e1
      abb192(12)=c2*spbe2e1
      abb192(12)=abb192(12)-abb192(52)
      abb192(52)=abb192(12)*spae2e5
      abb192(56)=-abb192(52)*abb192(54)
      abb192(11)=abb192(56)+abb192(11)
      abb192(11)=abb192(11)*abb192(49)
      abb192(52)=-abb192(52)*abb192(55)
      abb192(37)=abb192(37)*spae1k1
      abb192(56)=abb192(4)*spbl3e2
      abb192(57)=spak1e5*spae1k1
      abb192(58)=abb192(57)*spbe2k1
      abb192(37)=-abb192(58)+abb192(56)+abb192(37)
      abb192(56)=spae1k1*spak2e5
      abb192(59)=spae1e5*spak1k2
      abb192(56)=abb192(56)+abb192(59)
      abb192(17)=abb192(17)*abb192(56)
      abb192(17)=abb192(17)+1.0_ki/2.0_ki*abb192(37)
      abb192(17)=abb192(17)*spbe5k1
      abb192(19)=abb192(19)*spae1e5
      abb192(17)=abb192(17)+abb192(19)
      abb192(17)=abb192(17)*abb192(22)
      abb192(19)=-spae1e5*abb192(22)
      abb192(37)=abb192(19)*spbe5e2
      abb192(59)=-abb192(37)*abb192(54)
      abb192(17)=abb192(59)+abb192(17)
      abb192(17)=abb192(17)*abb192(39)
      abb192(59)=abb192(31)*spae1k1
      abb192(60)=abb192(57)*spbl3k1
      abb192(61)=abb192(60)*abb192(30)
      abb192(59)=abb192(59)-abb192(61)
      abb192(61)=-spbe5k1*abb192(22)
      abb192(59)=-abb192(59)*abb192(61)
      abb192(17)=1.0_ki/2.0_ki*abb192(59)+abb192(17)
      abb192(17)=abb192(17)*abb192(46)
      abb192(59)=spbk2e2*spak2e5
      abb192(38)=abb192(38)-abb192(59)
      abb192(62)=abb192(38)*spae1k1
      abb192(58)=abb192(62)-abb192(58)
      abb192(58)=-abb192(58)*abb192(61)
      abb192(62)=3.0_ki*abb192(39)
      abb192(37)=-abb192(37)*abb192(62)
      abb192(37)=abb192(37)+abb192(58)
      abb192(41)=abb192(41)*abb192(43)
      abb192(37)=abb192(37)*abb192(41)
      abb192(43)=abb192(61)*spae1k1
      abb192(58)=-abb192(43)*abb192(55)
      abb192(63)=abb192(43)*abb192(41)
      abb192(64)=spak1e5*spbl3k1
      abb192(65)=abb192(64)*abb192(30)
      abb192(31)=abb192(65)-abb192(31)
      abb192(31)=-abb192(31)*abb192(22)
      abb192(65)=spak1e5*spbe2k1
      abb192(9)=-1.0_ki/2.0_ki*abb192(65)+abb192(9)-abb192(59)
      abb192(9)=abb192(9)*abb192(44)
      abb192(9)=1.0_ki/2.0_ki*abb192(31)+abb192(9)
      abb192(9)=abb192(9)*abb192(46)
      abb192(31)=abb192(22)*abb192(41)
      abb192(38)=abb192(38)-abb192(65)
      abb192(38)=abb192(38)*abb192(31)
      abb192(59)=abb192(22)*abb192(55)
      abb192(29)=abb192(29)*spbk1e1
      abb192(65)=abb192(16)*spae2l3
      abb192(29)=abb192(65)+abb192(29)
      abb192(65)=spbk1e1*spbe5k2
      abb192(66)=spbe5e1*spbk2k1
      abb192(65)=abb192(65)+abb192(66)
      abb192(14)=abb192(14)*abb192(65)
      abb192(14)=abb192(14)+1.0_ki/2.0_ki*abb192(29)
      abb192(14)=abb192(14)*spak1e5
      abb192(5)=abb192(5)*spbe5e1
      abb192(29)=spak1e5*spbk1e1
      abb192(66)=abb192(29)*spbe5k1
      abb192(67)=abb192(66)*spak1e2
      abb192(5)=abb192(14)+abb192(5)-1.0_ki/2.0_ki*abb192(67)
      abb192(5)=abb192(5)*abb192(22)
      abb192(14)=-spbe5e1*abb192(22)
      abb192(68)=abb192(14)*spae2e5
      abb192(54)=-abb192(68)*abb192(54)
      abb192(5)=abb192(54)+abb192(5)
      abb192(5)=abb192(5)*abb192(39)
      abb192(54)=abb192(27)*abb192(29)
      abb192(66)=abb192(66)*spak1l3
      abb192(69)=abb192(66)*abb192(26)
      abb192(54)=abb192(54)-abb192(69)
      abb192(54)=abb192(54)*abb192(22)
      abb192(5)=1.0_ki/2.0_ki*abb192(54)+abb192(5)
      abb192(5)=abb192(5)*abb192(46)
      abb192(33)=abb192(33)-abb192(35)
      abb192(54)=abb192(33)*abb192(29)
      abb192(54)=abb192(54)-abb192(67)
      abb192(54)=abb192(54)*abb192(22)
      abb192(62)=-abb192(68)*abb192(62)
      abb192(54)=abb192(62)+abb192(54)
      abb192(54)=abb192(54)*abb192(41)
      abb192(62)=-abb192(29)*abb192(22)
      abb192(55)=-abb192(62)*abb192(55)
      abb192(62)=abb192(62)*abb192(41)
      abb192(67)=spbe5k1*spak1l3
      abb192(68)=abb192(67)*abb192(26)
      abb192(27)=abb192(68)-abb192(27)
      abb192(27)=-abb192(27)*abb192(22)
      abb192(68)=spbe5k1*spak1e2
      abb192(10)=-abb192(35)-1.0_ki/2.0_ki*abb192(68)+abb192(10)
      abb192(10)=abb192(10)*abb192(44)
      abb192(10)=1.0_ki/2.0_ki*abb192(27)+abb192(10)
      abb192(10)=abb192(10)*abb192(46)
      abb192(27)=abb192(33)-abb192(68)
      abb192(27)=abb192(27)*abb192(31)
      abb192(33)=abb192(49)*spae5k5
      abb192(35)=abb192(43)*spbe2e1
      abb192(46)=-abb192(33)*abb192(35)
      abb192(68)=abb192(12)*abb192(33)
      abb192(33)=abb192(14)*abb192(33)
      abb192(69)=abb192(49)*abb192(48)*spbk5e5
      abb192(70)=abb192(29)*abb192(69)
      abb192(71)=abb192(49)*spbk5e5*abb192(19)
      abb192(72)=abb192(32)*abb192(30)
      abb192(73)=spae2l3*abb192(45)*spae1k1
      abb192(72)=abb192(73)+abb192(72)
      abb192(72)=abb192(72)*abb192(42)
      abb192(73)=abb192(12)*abb192(34)
      abb192(74)=spae2l3*abb192(73)
      abb192(75)=-abb192(30)*abb192(63)
      abb192(30)=abb192(30)*abb192(31)
      abb192(76)=abb192(34)*spae2l3*abb192(14)
      abb192(77)=abb192(26)*abb192(28)
      abb192(78)=abb192(29)*spae1e2
      abb192(79)=abb192(78)*spbl3e2
      abb192(77)=abb192(77)+abb192(79)
      abb192(77)=abb192(77)*abb192(42)
      abb192(48)=abb192(48)*abb192(34)
      abb192(79)=spbl3e2*abb192(48)
      abb192(80)=abb192(34)*spbl3e2*abb192(19)
      abb192(81)=-abb192(26)*abb192(62)
      abb192(26)=abb192(26)*abb192(31)
      abb192(82)=spae1k1*spal3e5
      abb192(4)=abb192(82)+abb192(4)
      abb192(4)=abb192(4)*abb192(45)
      abb192(82)=abb192(28)*abb192(25)
      abb192(4)=abb192(4)-abb192(82)
      abb192(4)=abb192(4)*abb192(42)
      abb192(82)=spal3e5*abb192(73)
      abb192(83)=abb192(25)*abb192(29)
      abb192(66)=abb192(83)-abb192(66)
      abb192(66)=-abb192(66)*abb192(22)
      abb192(83)=abb192(39)*spal3e5*abb192(14)
      abb192(66)=abb192(83)+abb192(66)
      abb192(66)=abb192(66)*abb192(41)
      abb192(25)=abb192(67)-abb192(25)
      abb192(25)=abb192(25)*abb192(31)
      abb192(67)=spbk1e1*spbe5l3
      abb192(16)=abb192(67)+abb192(16)
      abb192(16)=abb192(16)*abb192(24)
      abb192(67)=abb192(32)*abb192(13)
      abb192(16)=abb192(16)-abb192(67)
      abb192(16)=abb192(16)*abb192(42)
      abb192(67)=spbe5l3*abb192(48)
      abb192(83)=abb192(13)*spae1k1
      abb192(60)=abb192(83)-abb192(60)
      abb192(60)=abb192(60)*abb192(61)
      abb192(19)=abb192(39)*spbe5l3*abb192(19)
      abb192(19)=abb192(19)+abb192(60)
      abb192(19)=abb192(19)*abb192(41)
      abb192(13)=abb192(64)-abb192(13)
      abb192(13)=abb192(13)*abb192(31)
      abb192(39)=abb192(8)-3.0_ki
      abb192(60)=-spae2k2*abb192(39)
      abb192(35)=abb192(34)*abb192(60)*abb192(35)
      abb192(64)=-abb192(60)*abb192(73)
      abb192(60)=abb192(60)*spbe5e1*abb192(42)
      abb192(39)=-spbk2e2*abb192(39)
      abb192(83)=abb192(48)*abb192(39)
      abb192(84)=-abb192(29)*abb192(83)
      abb192(39)=abb192(39)*spae1e5*abb192(42)
      abb192(8)=abb192(8)-1.0_ki
      abb192(45)=abb192(45)*abb192(8)*abb192(56)
      abb192(23)=abb192(23)*abb192(8)
      abb192(56)=abb192(23)*abb192(28)
      abb192(45)=abb192(56)-abb192(45)
      abb192(45)=-abb192(45)*abb192(42)
      abb192(56)=abb192(8)*spak2e5*abb192(73)
      abb192(85)=spbk1e1*abb192(23)
      abb192(86)=abb192(8)*spbe5k1
      abb192(18)=abb192(18)*abb192(86)
      abb192(18)=abb192(85)-abb192(18)
      abb192(18)=-abb192(18)*abb192(22)*spak1e5
      abb192(22)=spbe5e1*abb192(8)
      abb192(85)=-spak2e5*abb192(22)*abb192(44)
      abb192(18)=abb192(85)+abb192(18)
      abb192(18)=abb192(18)*abb192(41)
      abb192(85)=spak1k2*abb192(86)
      abb192(23)=abb192(23)-abb192(85)
      abb192(23)=-abb192(23)*abb192(31)
      abb192(85)=spae1e5*abb192(8)
      abb192(73)=-abb192(85)*abb192(73)
      abb192(86)=abb192(31)*abb192(8)
      abb192(87)=-abb192(29)*abb192(86)
      abb192(24)=abb192(24)*abb192(8)*abb192(65)
      abb192(7)=abb192(7)*abb192(8)
      abb192(32)=abb192(7)*abb192(32)
      abb192(24)=abb192(24)-abb192(32)
      abb192(24)=abb192(24)*abb192(42)
      abb192(32)=abb192(8)*spbe5k2*abb192(48)
      abb192(42)=abb192(8)*spak1e5
      abb192(15)=abb192(15)*abb192(42)
      abb192(65)=abb192(7)*spae1k1
      abb192(15)=abb192(15)-abb192(65)
      abb192(15)=-abb192(15)*abb192(61)
      abb192(44)=-abb192(85)*spbe5k2*abb192(44)
      abb192(15)=abb192(44)+abb192(15)
      abb192(15)=abb192(15)*abb192(41)
      abb192(42)=spbk2k1*abb192(42)
      abb192(7)=abb192(42)-abb192(7)
      abb192(7)=abb192(7)*abb192(31)
      abb192(22)=-abb192(22)*abb192(48)
      abb192(8)=abb192(8)*abb192(63)
      abb192(42)=abb192(61)*abb192(49)
      abb192(44)=-abb192(57)*spbe2e1*abb192(42)
      abb192(49)=abb192(49)*spak1e5
      abb192(12)=abb192(12)*abb192(49)
      abb192(14)=abb192(14)*abb192(49)
      abb192(49)=-abb192(78)*abb192(42)
      abb192(65)=-spae1e2*abb192(42)
      abb192(42)=spae1e5*abb192(42)
      abb192(78)=spae2k2*spbk5e5
      abb192(85)=-abb192(78)*abb192(53)
      abb192(88)=-abb192(78)*abb192(62)
      abb192(78)=abb192(78)*abb192(31)
      abb192(40)=abb192(48)*abb192(40)
      abb192(48)=spae5k5*abb192(40)
      abb192(89)=abb192(41)*spbk2e2
      abb192(43)=-abb192(89)*abb192(43)*spae5k5
      abb192(90)=abb192(31)*spbk2e2
      abb192(91)=spae5k5*abb192(90)
      abb192(40)=spak1e5*abb192(40)
      abb192(57)=-abb192(57)*abb192(61)*abb192(89)
      abb192(89)=spak1e5*abb192(90)
      abb192(61)=-spae2k2*abb192(61)
      abb192(28)=abb192(34)*abb192(28)*abb192(61)
      abb192(34)=abb192(61)*abb192(41)
      abb192(29)=abb192(29)*abb192(34)
      R2d192=0.0_ki
      rat2 = rat2 + R2d192
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='192' value='", &
          & R2d192, "'/>"
      end if
   end subroutine
end module p2_part21part21_part25part25part21_abbrevd192h0
