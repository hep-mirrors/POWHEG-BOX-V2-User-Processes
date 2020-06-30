module     p9_part21part21_part25part25part21_abbrevd109h0
   use p9_part21part21_part25part25part21_config, only: ki
   use p9_part21part21_part25part25part21_kinematics, only: epstensor
   use p9_part21part21_part25part25part21_globalsh0
   implicit none
   private
   complex(ki), dimension(89), public :: abb109
   complex(ki), public :: R2d109
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
      abb109(1)=es12**(-1)
      abb109(2)=sqrt(mdlMT**2)
      abb109(3)=spak2l3**(-1)
      abb109(4)=spbl3k2**(-1)
      abb109(5)=spak2l4**(-1)
      abb109(6)=spbl4k2**(-1)
      abb109(7)=c2-c1
      abb109(8)=spbe2k1*spak1e2
      abb109(9)=-abb109(8)*abb109(7)
      abb109(10)=spbe5e1*spae1e5*abb109(9)
      abb109(11)=spbe2e1*spae1e2
      abb109(12)=abb109(7)*abb109(11)
      abb109(13)=spbe5k1*spak1e5
      abb109(14)=abb109(13)*abb109(12)
      abb109(10)=2.0_ki*abb109(10)+abb109(14)
      abb109(14)=mdlGC45*mdlGC7
      abb109(14)=mdlGC6*i_*abb109(14)**2
      abb109(15)=abb109(1)*abb109(14)
      abb109(10)=2.0_ki/3.0_ki*abb109(10)*abb109(15)
      abb109(16)=2.0_ki*spbk2e1
      abb109(17)=spbe5l3*spak2e5
      abb109(18)=abb109(17)*spae1l3
      abb109(19)=abb109(16)*abb109(18)
      abb109(20)=2.0_ki*spae1k2
      abb109(21)=spal3e5*spbe5k2
      abb109(22)=abb109(21)*spbl3e1
      abb109(23)=abb109(20)*abb109(22)
      abb109(19)=abb109(19)+abb109(23)
      abb109(23)=spal4e5*spbl4e1
      abb109(24)=abb109(23)*spae1k2
      abb109(25)=spae5k5*spbk5e1
      abb109(26)=abb109(25)*spae1k2
      abb109(24)=abb109(24)+abb109(26)
      abb109(27)=spbl4e1*spae1e5
      abb109(28)=abb109(27)*spak2l4
      abb109(28)=abb109(28)+abb109(24)
      abb109(28)=abb109(28)*spbe5k2
      abb109(29)=spbe5l4*spae1l4
      abb109(30)=abb109(29)*spbk2e1
      abb109(31)=spbk5e5*spae1k5
      abb109(32)=abb109(31)*spbk2e1
      abb109(30)=abb109(30)+abb109(32)
      abb109(33)=spae1l4*spbe5e1
      abb109(34)=abb109(33)*spbl4k2
      abb109(34)=abb109(34)+abb109(30)
      abb109(34)=abb109(34)*spak2e5
      abb109(28)=-abb109(19)+abb109(28)+abb109(34)
      abb109(34)=abb109(3)*abb109(4)
      abb109(28)=abb109(28)*abb109(34)
      abb109(35)=spak2l3*spae1e5
      abb109(36)=spak2e5*spae1l3
      abb109(35)=abb109(35)-abb109(36)
      abb109(36)=abb109(5)*abb109(6)
      abb109(37)=abb109(36)*spbe5l3
      abb109(35)=abb109(37)*abb109(35)*spbk2e1
      abb109(38)=spbe5e1*spae1k2*spbl3k2
      abb109(39)=spae1k2*spbl3e1
      abb109(40)=abb109(39)*spbe5k2
      abb109(38)=abb109(38)-abb109(40)
      abb109(40)=abb109(36)*spal3e5
      abb109(38)=abb109(38)*abb109(40)
      abb109(26)=abb109(26)*spbe5k2
      abb109(41)=abb109(32)*spak2e5
      abb109(26)=abb109(26)+abb109(41)
      abb109(26)=abb109(26)*abb109(36)
      abb109(28)=-abb109(35)+abb109(28)-abb109(38)-abb109(26)
      abb109(35)=mdlMh**2
      abb109(38)=abb109(8)*abb109(35)
      abb109(41)=abb109(2)**2
      abb109(42)=abb109(38)*abb109(41)
      abb109(28)=abb109(28)*abb109(42)
      abb109(43)=abb109(23)+abb109(25)
      abb109(44)=spae1l3*abb109(43)
      abb109(45)=2.0_ki*spae1l3
      abb109(46)=spal3e5*spbl3e1
      abb109(47)=abb109(45)*abb109(46)
      abb109(44)=abb109(44)-abb109(47)
      abb109(27)=abb109(27)*spal3l4
      abb109(27)=abb109(27)+abb109(44)
      abb109(27)=abb109(27)*spbe5l3
      abb109(47)=abb109(29)*abb109(25)
      abb109(48)=abb109(23)*abb109(31)
      abb109(47)=abb109(47)+abb109(48)
      abb109(48)=abb109(29)+abb109(31)
      abb109(49)=spbl3e1*abb109(48)
      abb109(33)=abb109(33)*spbl4l3
      abb109(33)=abb109(33)+abb109(49)
      abb109(33)=abb109(33)*spal3e5
      abb109(27)=-abb109(47)+abb109(27)+abb109(33)
      abb109(27)=abb109(27)*abb109(8)
      abb109(33)=abb109(41)*abb109(8)
      abb109(50)=abb109(33)*spbe5e1
      abb109(51)=abb109(50)*spae1e5
      abb109(27)=abb109(27)-2.0_ki*abb109(51)
      abb109(27)=abb109(27)*abb109(41)
      abb109(27)=abb109(28)+abb109(27)
      abb109(27)=abb109(27)*abb109(7)
      abb109(28)=spak1e5*spak2l3
      abb109(52)=spak1l3*spak2e5
      abb109(28)=abb109(28)-abb109(52)
      abb109(28)=abb109(37)*spbk2k1*abb109(28)
      abb109(37)=spbe5k1*spbl3k2
      abb109(52)=spbl3k1*spbe5k2
      abb109(37)=abb109(37)-abb109(52)
      abb109(37)=abb109(40)*spak1k2*abb109(37)
      abb109(52)=spbk5e5*spak1k5
      abb109(53)=abb109(52)*spbk2k1
      abb109(54)=abb109(53)*spak2e5
      abb109(55)=spae5k5*spbk5k1
      abb109(56)=abb109(55)*spak1k2
      abb109(57)=abb109(56)*spbe5k2
      abb109(54)=abb109(54)+abb109(57)
      abb109(54)=abb109(54)*abb109(36)
      abb109(28)=abb109(54)+abb109(28)+abb109(37)
      abb109(37)=spal4e5*spbl4k1
      abb109(57)=abb109(37)*spak1k2
      abb109(56)=abb109(57)+abb109(56)
      abb109(57)=spbl4k1*spak1e5
      abb109(58)=abb109(57)*spak2l4
      abb109(58)=abb109(58)+abb109(56)
      abb109(58)=abb109(58)*spbe5k2
      abb109(59)=spbe5l4*spak1l4
      abb109(60)=abb109(59)*spbk2k1
      abb109(60)=abb109(60)+abb109(53)
      abb109(61)=spak1l4*spbe5k1
      abb109(62)=abb109(61)*spbl4k2
      abb109(62)=abb109(62)+abb109(60)
      abb109(62)=abb109(62)*spak2e5
      abb109(58)=abb109(58)+abb109(62)
      abb109(62)=abb109(21)*spbl3k1
      abb109(63)=abb109(62)*spak1k2
      abb109(64)=abb109(17)*spak1l3
      abb109(65)=abb109(64)*spbk2k1
      abb109(63)=abb109(63)+abb109(65)
      abb109(58)=-abb109(63)+1.0_ki/2.0_ki*abb109(58)
      abb109(58)=abb109(58)*abb109(34)
      abb109(28)=-abb109(58)+1.0_ki/2.0_ki*abb109(28)
      abb109(58)=abb109(41)*abb109(35)
      abb109(28)=abb109(28)*abb109(58)
      abb109(65)=spbl3k2*spak2k5
      abb109(66)=spbl3k1*spak1k5
      abb109(65)=abb109(65)-abb109(66)
      abb109(65)=abb109(65)*spbk5e5
      abb109(66)=spak2l4*spbl3k2
      abb109(67)=spak1l4*spbl3k1
      abb109(66)=abb109(66)-abb109(67)
      abb109(67)=abb109(66)*spbe5l4
      abb109(65)=abb109(65)+abb109(67)
      abb109(67)=spbe5k2*spak2l4
      abb109(61)=abb109(67)-abb109(61)
      abb109(67)=abb109(61)*spbl4l3
      abb109(67)=abb109(67)+abb109(65)
      abb109(67)=abb109(67)*spal3e5
      abb109(68)=spbl4k2*spak2k5
      abb109(69)=spbl4k1*spak1k5
      abb109(68)=abb109(68)-abb109(69)
      abb109(68)=abb109(68)*spbk5e5
      abb109(69)=abb109(68)*spal4e5
      abb109(70)=spak2l4*spbk5k2
      abb109(71)=spak1l4*spbk5k1
      abb109(70)=abb109(70)-abb109(71)
      abb109(70)=abb109(70)*spae5k5
      abb109(71)=abb109(70)*spbe5l4
      abb109(69)=abb109(69)+abb109(71)
      abb109(67)=abb109(67)-abb109(69)
      abb109(71)=spak2l3*spbk5k2
      abb109(72)=spak1l3*spbk5k1
      abb109(71)=abb109(71)-abb109(72)
      abb109(71)=abb109(71)*spae5k5
      abb109(72)=spbl4k2*spak2l3
      abb109(73)=spbl4k1*spak1l3
      abb109(72)=abb109(72)-abb109(73)
      abb109(73)=abb109(72)*spal4e5
      abb109(71)=abb109(71)+abb109(73)
      abb109(73)=spak2e5*spbl4k2
      abb109(57)=abb109(73)-abb109(57)
      abb109(73)=abb109(57)*spal3l4
      abb109(73)=abb109(73)+abb109(71)
      abb109(74)=spbl3k2*spak2l3
      abb109(75)=spbl3k1*spak1l3
      abb109(74)=abb109(74)-abb109(75)
      abb109(74)=abb109(74)*spal3e5
      abb109(73)=-abb109(74)+1.0_ki/2.0_ki*abb109(73)
      abb109(73)=abb109(73)*spbe5l3
      abb109(13)=abb109(13)*abb109(41)
      abb109(67)=1.0_ki/2.0_ki*abb109(67)+abb109(73)+abb109(13)
      abb109(67)=abb109(67)*abb109(41)
      abb109(28)=abb109(28)+abb109(67)
      abb109(28)=abb109(28)*abb109(12)
      abb109(27)=abb109(28)+abb109(27)
      abb109(27)=abb109(27)*abb109(15)
      abb109(28)=abb109(36)*spae1k2
      abb109(67)=abb109(22)*abb109(28)
      abb109(73)=abb109(36)*spbk2e1
      abb109(75)=abb109(18)*abb109(73)
      abb109(26)=-abb109(26)+abb109(67)+abb109(75)
      abb109(67)=-abb109(26)*abb109(34)*abb109(9)
      abb109(75)=abb109(36)*spak1k2
      abb109(76)=abb109(62)*abb109(75)
      abb109(77)=abb109(36)*spbk2k1
      abb109(78)=abb109(64)*abb109(77)
      abb109(54)=-abb109(54)+abb109(76)+abb109(78)
      abb109(76)=-abb109(34)*abb109(7)
      abb109(78)=abb109(11)*abb109(54)*abb109(76)
      abb109(67)=2.0_ki*abb109(67)+abb109(78)
      abb109(78)=mdlMh**4
      abb109(67)=abb109(15)*abb109(78)*abb109(67)
      abb109(30)=abb109(30)*spak2e5
      abb109(24)=abb109(24)*spbe5k2
      abb109(19)=-abb109(19)+abb109(30)+abb109(24)
      abb109(19)=abb109(19)*abb109(34)
      abb109(19)=abb109(19)+abb109(26)
      abb109(19)=abb109(19)*abb109(38)
      abb109(24)=abb109(44)*spbe5l3
      abb109(26)=abb109(49)*spal3e5
      abb109(24)=-abb109(47)+abb109(26)+abb109(24)
      abb109(24)=abb109(24)*abb109(8)
      abb109(19)=abb109(19)+abb109(24)-6.0_ki*abb109(51)
      abb109(19)=abb109(19)*abb109(7)
      abb109(24)=abb109(60)*spak2e5
      abb109(26)=abb109(56)*spbe5k2
      abb109(24)=abb109(24)+abb109(26)
      abb109(24)=-abb109(63)+1.0_ki/2.0_ki*abb109(24)
      abb109(24)=abb109(24)*abb109(34)
      abb109(24)=abb109(24)+1.0_ki/2.0_ki*abb109(54)
      abb109(24)=abb109(24)*abb109(35)
      abb109(26)=abb109(65)*spal3e5
      abb109(26)=abb109(26)-abb109(69)
      abb109(30)=-abb109(74)+1.0_ki/2.0_ki*abb109(71)
      abb109(30)=abb109(30)*spbe5l3
      abb109(13)=abb109(24)-abb109(30)-3.0_ki*abb109(13)-1.0_ki/2.0_ki*abb109(2&
      &6)
      abb109(13)=-abb109(13)*abb109(12)
      abb109(13)=abb109(13)+abb109(19)
      abb109(13)=abb109(13)*abb109(15)
      abb109(19)=spbe5l3*spae1l3
      abb109(24)=abb109(29)-4.0_ki*abb109(19)+3.0_ki*abb109(31)
      abb109(24)=abb109(24)*abb109(33)
      abb109(26)=abb109(34)*spbe5k2
      abb109(29)=abb109(26)*spae1k2
      abb109(30)=abb109(28)*spbe5k2
      abb109(29)=-abb109(30)+4.0_ki*abb109(29)
      abb109(29)=abb109(29)*abb109(42)
      abb109(24)=abb109(24)-abb109(29)
      abb109(29)=abb109(7)*abb109(15)
      abb109(24)=-abb109(24)*abb109(29)
      abb109(44)=2.0_ki*abb109(15)
      abb109(47)=abb109(9)*abb109(44)
      abb109(49)=abb109(78)*abb109(26)
      abb109(51)=abb109(49)*abb109(28)*abb109(47)
      abb109(20)=abb109(20)*abb109(26)
      abb109(20)=abb109(20)-abb109(30)
      abb109(20)=abb109(20)*abb109(38)
      abb109(30)=abb109(45)*spbe5l3
      abb109(30)=abb109(30)-abb109(48)
      abb109(30)=abb109(30)*abb109(8)
      abb109(20)=abb109(30)+abb109(20)
      abb109(20)=abb109(20)*abb109(29)
      abb109(23)=abb109(23)-4.0_ki*abb109(46)+3.0_ki*abb109(25)
      abb109(23)=abb109(23)*abb109(33)
      abb109(30)=abb109(34)*spak2e5
      abb109(45)=abb109(30)*spbk2e1
      abb109(48)=abb109(73)*spak2e5
      abb109(45)=-abb109(48)+4.0_ki*abb109(45)
      abb109(45)=abb109(45)*abb109(42)
      abb109(23)=abb109(23)-abb109(45)
      abb109(23)=-abb109(23)*abb109(29)
      abb109(45)=abb109(78)*abb109(30)
      abb109(54)=abb109(45)*abb109(73)*abb109(47)
      abb109(16)=abb109(16)*abb109(30)
      abb109(16)=abb109(16)-abb109(48)
      abb109(16)=abb109(16)*abb109(38)
      abb109(43)=-abb109(43)+2.0_ki*abb109(46)
      abb109(43)=abb109(43)*abb109(8)
      abb109(16)=abb109(43)+abb109(16)
      abb109(16)=abb109(16)*abb109(29)
      abb109(29)=-6.0_ki*abb109(33)*abb109(29)
      abb109(43)=-abb109(41)*abb109(7)
      abb109(48)=abb109(43)*abb109(11)
      abb109(56)=-abb109(61)*abb109(48)
      abb109(60)=abb109(50)*spae1l4*abb109(7)
      abb109(56)=2.0_ki*abb109(60)+abb109(56)
      abb109(56)=abb109(56)*abb109(15)
      abb109(48)=-abb109(57)*abb109(48)
      abb109(33)=abb109(33)*spae1e5
      abb109(57)=abb109(33)*spbl4e1*abb109(7)
      abb109(48)=2.0_ki*abb109(57)+abb109(48)
      abb109(48)=abb109(48)*abb109(15)
      abb109(57)=-spal3e5*abb109(7)
      abb109(50)=abb109(44)*abb109(50)*abb109(57)
      abb109(60)=-spbe5l3*abb109(7)
      abb109(33)=abb109(44)*abb109(33)*abb109(60)
      abb109(61)=spbe5l4*spak2l4
      abb109(63)=spbk5e5*spak2k5
      abb109(65)=abb109(61)+3.0_ki*abb109(63)
      abb109(69)=spbe5l3*spak2l3
      abb109(65)=-2.0_ki*abb109(69)+1.0_ki/2.0_ki*abb109(65)
      abb109(65)=abb109(65)*abb109(41)
      abb109(71)=spbe5k1*abb109(75)*abb109(58)
      abb109(65)=abb109(65)+abb109(71)
      abb109(65)=-abb109(65)*abb109(12)
      abb109(42)=-abb109(42)*abb109(7)
      abb109(71)=abb109(42)*spbe5e1
      abb109(74)=-abb109(28)*abb109(71)
      abb109(65)=2.0_ki*abb109(74)+abb109(65)
      abb109(65)=abb109(65)*abb109(15)
      abb109(74)=abb109(15)*abb109(11)
      abb109(79)=abb109(7)*abb109(74)
      abb109(61)=abb109(61)+abb109(63)
      abb109(61)=-abb109(69)+1.0_ki/2.0_ki*abb109(61)
      abb109(61)=-abb109(61)*abb109(79)
      abb109(63)=spal4e5*spbl4k2
      abb109(69)=spae5k5*spbk5k2
      abb109(80)=abb109(63)+3.0_ki*abb109(69)
      abb109(81)=2.0_ki*spal3e5
      abb109(82)=abb109(81)*spbl3k2
      abb109(80)=-abb109(82)+1.0_ki/2.0_ki*abb109(80)
      abb109(80)=abb109(80)*abb109(41)
      abb109(82)=spak1e5*abb109(77)*abb109(58)
      abb109(80)=abb109(80)+abb109(82)
      abb109(80)=-abb109(80)*abb109(12)
      abb109(42)=abb109(42)*spae1e5
      abb109(73)=-abb109(73)*abb109(42)
      abb109(73)=2.0_ki*abb109(73)+abb109(80)
      abb109(73)=abb109(73)*abb109(15)
      abb109(63)=abb109(63)+abb109(69)
      abb109(69)=spal3e5*spbl3k2
      abb109(63)=-abb109(69)+1.0_ki/2.0_ki*abb109(63)
      abb109(63)=-abb109(63)*abb109(79)
      abb109(69)=abb109(43)*abb109(74)
      abb109(69)=3.0_ki*abb109(69)
      abb109(71)=abb109(44)*abb109(30)*abb109(71)
      abb109(42)=abb109(44)*abb109(26)*abb109(42)
      abb109(44)=abb109(75)*spbe5k2
      abb109(44)=1.0_ki/2.0_ki*abb109(44)
      abb109(80)=abb109(26)*spak1k2
      abb109(82)=-abb109(44)+2.0_ki*abb109(80)
      abb109(82)=abb109(82)*abb109(58)
      abb109(83)=abb109(59)+3.0_ki*abb109(52)
      abb109(84)=spbe5l3*spak1l3
      abb109(83)=-2.0_ki*abb109(84)+1.0_ki/2.0_ki*abb109(83)
      abb109(83)=abb109(83)*abb109(41)
      abb109(82)=abb109(83)-abb109(82)
      abb109(82)=abb109(82)*abb109(79)
      abb109(49)=abb109(49)*abb109(75)*abb109(79)
      abb109(44)=abb109(44)-abb109(80)
      abb109(44)=abb109(44)*abb109(35)
      abb109(52)=abb109(59)+abb109(52)
      abb109(44)=-abb109(84)+abb109(44)+1.0_ki/2.0_ki*abb109(52)
      abb109(44)=abb109(44)*abb109(79)
      abb109(52)=abb109(77)*spak2e5
      abb109(52)=1.0_ki/2.0_ki*abb109(52)
      abb109(59)=abb109(30)*spbk2k1
      abb109(80)=-abb109(52)+2.0_ki*abb109(59)
      abb109(58)=abb109(80)*abb109(58)
      abb109(80)=abb109(37)+3.0_ki*abb109(55)
      abb109(81)=abb109(81)*spbl3k1
      abb109(80)=-abb109(81)+1.0_ki/2.0_ki*abb109(80)
      abb109(80)=abb109(80)*abb109(41)
      abb109(58)=abb109(80)-abb109(58)
      abb109(58)=abb109(58)*abb109(79)
      abb109(45)=abb109(45)*abb109(77)*abb109(79)
      abb109(52)=abb109(52)-abb109(59)
      abb109(52)=abb109(52)*abb109(35)
      abb109(37)=abb109(37)+abb109(55)
      abb109(59)=spal3e5*spbl3k1
      abb109(37)=-abb109(59)+abb109(52)+1.0_ki/2.0_ki*abb109(37)
      abb109(37)=abb109(37)*abb109(79)
      abb109(52)=abb109(19)-abb109(31)
      abb109(59)=spal3e5*spbl4e1
      abb109(52)=abb109(8)*abb109(52)*abb109(59)
      abb109(77)=abb109(38)*abb109(34)
      abb109(80)=abb109(77)*abb109(21)*spae1k2*spbl4e1
      abb109(52)=abb109(52)+abb109(80)
      abb109(52)=abb109(52)*abb109(7)
      abb109(72)=abb109(72)*spbe5l3
      abb109(72)=abb109(72)-abb109(68)
      abb109(72)=abb109(72)*spal3e5
      abb109(80)=abb109(34)*abb109(35)
      abb109(81)=abb109(80)*abb109(21)*spak1k2*spbl4k1
      abb109(72)=abb109(72)-abb109(81)
      abb109(11)=1.0_ki/2.0_ki*abb109(11)
      abb109(81)=abb109(7)*abb109(11)
      abb109(72)=abb109(72)*abb109(81)
      abb109(52)=abb109(72)+abb109(52)
      abb109(52)=abb109(52)*abb109(15)
      abb109(9)=abb109(9)*abb109(15)
      abb109(59)=abb109(59)*abb109(9)
      abb109(72)=abb109(11)*abb109(15)
      abb109(57)=abb109(57)*abb109(72)
      abb109(83)=spbl4k2*abb109(57)
      abb109(57)=-spbl4k1*abb109(57)
      abb109(85)=abb109(76)*abb109(38)
      abb109(31)=abb109(31)*spak2e5
      abb109(18)=abb109(31)-abb109(18)
      abb109(18)=abb109(18)*spbl4e1*abb109(85)
      abb109(31)=-abb109(35)*abb109(7)
      abb109(86)=abb109(31)*abb109(11)
      abb109(68)=abb109(68)*spak2e5
      abb109(64)=abb109(64)*spbl4k1
      abb109(64)=abb109(64)+abb109(68)
      abb109(34)=abb109(64)*abb109(34)
      abb109(64)=spbl4k2*abb109(4)*abb109(17)
      abb109(34)=abb109(34)-abb109(64)
      abb109(34)=abb109(34)*abb109(86)
      abb109(18)=abb109(34)+abb109(18)
      abb109(18)=abb109(18)*abb109(15)
      abb109(34)=-abb109(38)*abb109(7)
      abb109(38)=abb109(34)*abb109(15)
      abb109(30)=abb109(30)*spbl4e1*abb109(38)
      abb109(64)=abb109(7)*abb109(72)
      abb109(68)=abb109(80)*spak2e5
      abb109(87)=abb109(64)*abb109(68)
      abb109(88)=-spbl4k2*abb109(87)
      abb109(87)=spbl4k1*abb109(87)
      abb109(46)=abb109(46)*spae1l4
      abb109(89)=abb109(25)*spae1l4
      abb109(46)=abb109(46)-abb109(89)
      abb109(8)=abb109(46)*abb109(8)*spbe5l3
      abb109(46)=abb109(77)*abb109(17)*spbk2e1*spae1l4
      abb109(8)=abb109(8)+abb109(46)
      abb109(7)=abb109(8)*abb109(7)
      abb109(8)=abb109(66)*spal3e5
      abb109(8)=abb109(8)-abb109(70)
      abb109(8)=abb109(8)*spbe5l3
      abb109(46)=abb109(80)*abb109(17)*spbk2k1*spak1l4
      abb109(8)=abb109(8)-abb109(46)
      abb109(8)=abb109(8)*abb109(81)
      abb109(7)=abb109(8)+abb109(7)
      abb109(7)=abb109(7)*abb109(15)
      abb109(8)=spbe5l3*spae1l4*abb109(9)
      abb109(9)=abb109(60)*abb109(72)
      abb109(46)=spak2l4*abb109(9)
      abb109(9)=-spak1l4*abb109(9)
      abb109(11)=abb109(11)*abb109(76)*abb109(78)*abb109(36)
      abb109(36)=abb109(17)*abb109(11)
      abb109(25)=abb109(28)*abb109(25)
      abb109(39)=abb109(39)*abb109(40)
      abb109(25)=abb109(25)-abb109(39)
      abb109(25)=spbe5l3*abb109(25)*abb109(34)
      abb109(39)=abb109(55)*abb109(75)
      abb109(55)=spbl3k1*abb109(40)*spak1k2
      abb109(39)=abb109(55)-abb109(39)
      abb109(35)=1.0_ki/2.0_ki*abb109(35)
      abb109(39)=abb109(39)*abb109(35)*spbe5l3
      abb109(17)=abb109(17)*abb109(41)
      abb109(17)=abb109(39)+abb109(17)
      abb109(17)=-abb109(17)*abb109(12)
      abb109(17)=abb109(17)+abb109(25)
      abb109(17)=abb109(1)*abb109(17)
      abb109(17)=abb109(36)+abb109(17)
      abb109(17)=abb109(17)*abb109(14)
      abb109(25)=abb109(28)*spbe5l3*abb109(38)
      abb109(28)=abb109(31)*abb109(72)
      abb109(31)=-abb109(75)*spbe5l3*abb109(28)
      abb109(36)=abb109(74)*abb109(43)*spak1e5
      abb109(39)=-spbe5l3*abb109(36)
      abb109(22)=abb109(22)*spae1l4
      abb109(55)=abb109(89)*spbe5k2
      abb109(22)=abb109(22)-abb109(55)
      abb109(22)=-abb109(22)*abb109(85)
      abb109(55)=abb109(70)*spbe5k2
      abb109(60)=abb109(62)*spak1l4
      abb109(55)=abb109(60)+abb109(55)
      abb109(55)=abb109(55)*abb109(4)
      abb109(60)=abb109(21)*spak2l4
      abb109(55)=abb109(55)-abb109(60)
      abb109(55)=abb109(3)*abb109(55)*abb109(86)
      abb109(22)=abb109(55)+abb109(22)
      abb109(15)=abb109(22)*abb109(15)
      abb109(22)=abb109(26)*spae1l4*abb109(38)
      abb109(26)=abb109(80)*spbe5k2
      abb109(55)=abb109(64)*abb109(26)
      abb109(60)=-spak2l4*abb109(55)
      abb109(55)=spak1l4*abb109(55)
      abb109(11)=abb109(21)*abb109(11)
      abb109(32)=abb109(32)*abb109(40)
      abb109(62)=abb109(40)*spbk2e1
      abb109(19)=abb109(62)*abb109(19)
      abb109(19)=abb109(32)-abb109(19)
      abb109(19)=abb109(19)*abb109(34)
      abb109(32)=abb109(53)*abb109(40)
      abb109(34)=abb109(40)*spbk2k1
      abb109(40)=abb109(34)*abb109(84)
      abb109(32)=abb109(32)-abb109(40)
      abb109(32)=abb109(32)*abb109(35)
      abb109(21)=abb109(21)*abb109(41)
      abb109(21)=abb109(32)-abb109(21)
      abb109(12)=abb109(21)*abb109(12)
      abb109(12)=abb109(12)+abb109(19)
      abb109(12)=abb109(1)*abb109(12)
      abb109(11)=abb109(11)+abb109(12)
      abb109(11)=abb109(11)*abb109(14)
      abb109(12)=abb109(62)*abb109(38)
      abb109(14)=-abb109(34)*abb109(28)
      abb109(19)=-abb109(26)*abb109(36)
      abb109(21)=abb109(74)*abb109(43)*spbe5k1
      abb109(26)=-spal3e5*abb109(21)
      abb109(21)=-abb109(68)*abb109(21)
      R2d109=abb109(10)
      rat2 = rat2 + R2d109
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='109' value='", &
          & R2d109, "'/>"
      end if
   end subroutine
end module p9_part21part21_part25part25part21_abbrevd109h0
