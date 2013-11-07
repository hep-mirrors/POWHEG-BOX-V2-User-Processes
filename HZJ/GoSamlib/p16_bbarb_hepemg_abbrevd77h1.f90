module     p16_bbarb_hepemg_abbrevd77h1
   use p16_bbarb_hepemg_config, only: ki
   use p16_bbarb_hepemg_globalsh1
   implicit none
   private
   complex(ki), dimension(93), public :: abb77
   complex(ki), public :: R2d77
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p16_bbarb_hepemg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p16_bbarb_hepemg_kinematics
      use p16_bbarb_hepemg_model
      use p16_bbarb_hepemg_color, only: TR
      use p16_bbarb_hepemg_globalsl1, only: epspow
      implicit none
      abb77(1)=1.0_ki/(-mZ**2+es45+i_*mZ*wZ)
      abb77(2)=sqrt(mT**2)
      abb77(3)=es12**(-1)
      abb77(4)=spbl3k2**(-1)
      abb77(5)=spak2l3**(-1)
      abb77(6)=spal3e6*spbl3k1
      abb77(7)=spbe6k4*spak2k5
      abb77(8)=abb77(6)*abb77(7)
      abb77(9)=spbe6l3*spak2l3
      abb77(10)=spak5e6*spbk4k1
      abb77(11)=abb77(9)*abb77(10)
      abb77(12)=-abb77(8)+abb77(11)
      abb77(13)=gTl-gTr
      abb77(14)=i_*TR*c1*gHT*gel*abb77(1)
      abb77(15)=abb77(3)*abb77(14)
      abb77(16)=-abb77(13)*abb77(15)*abb77(2)**3
      abb77(12)=abb77(16)*abb77(12)
      abb77(17)=mH**2
      abb77(18)=abb77(17)*abb77(4)
      abb77(19)=abb77(18)*abb77(5)
      abb77(13)=abb77(19)*abb77(13)*abb77(2)*abb77(14)
      abb77(14)=spak2e6*abb77(13)
      abb77(20)=abb77(16)*spak2e6
      abb77(21)=-abb77(20)+abb77(14)
      abb77(22)=spak5k6*spbk6e6
      abb77(23)=abb77(22)*spbk4k1
      abb77(21)=abb77(21)*abb77(23)
      abb77(15)=abb77(15)*abb77(2)
      abb77(24)=gTl*abb77(15)
      abb77(15)=gTr*abb77(15)
      abb77(25)=abb77(24)-abb77(15)
      abb77(26)=abb77(25)*spak2k5
      abb77(27)=abb77(18)*spbk2k1
      abb77(28)=-abb77(26)*abb77(27)
      abb77(29)=abb77(25)*spak2l3
      abb77(30)=abb77(29)*spbk2k1
      abb77(31)=spak2k5*abb77(30)
      abb77(28)=abb77(28)+abb77(31)
      abb77(28)=spbe6l3*abb77(28)
      abb77(31)=abb77(16)*spbe6k1
      abb77(32)=abb77(31)*spak2k5
      abb77(28)=abb77(32)+abb77(28)
      abb77(33)=spae6k6*spbk6k4
      abb77(28)=abb77(28)*abb77(33)
      abb77(34)=abb77(29)*abb77(6)
      abb77(35)=spak2e6*abb77(27)
      abb77(36)=abb77(25)*abb77(35)
      abb77(36)=abb77(34)+abb77(36)
      abb77(36)=abb77(22)*abb77(36)
      abb77(37)=abb77(31)*spak5e6
      abb77(38)=-spak2l3*abb77(37)
      abb77(36)=abb77(38)+abb77(36)
      abb77(36)=spbk4l3*abb77(36)
      abb77(38)=spbe6k4*abb77(20)
      abb77(39)=abb77(29)*spbe6l3
      abb77(40)=-abb77(33)*abb77(39)
      abb77(38)=abb77(38)+abb77(40)
      abb77(40)=spal3k5*spbl3k1
      abb77(38)=abb77(38)*abb77(40)
      abb77(31)=-abb77(10)*abb77(31)
      abb77(41)=abb77(6)*abb77(25)
      abb77(42)=abb77(23)*abb77(41)
      abb77(31)=abb77(31)+abb77(42)
      abb77(31)=spak1k2*abb77(31)
      abb77(42)=abb77(7)*spbk2k1
      abb77(43)=-abb77(20)*abb77(42)
      abb77(12)=abb77(31)+abb77(38)+abb77(36)+abb77(28)+abb77(43)+abb77(21)+abb&
      &77(12)
      abb77(12)=2.0_ki*abb77(12)
      abb77(21)=-spak2k5*abb77(13)
      abb77(28)=abb77(24)*spak5k6
      abb77(31)=abb77(28)*spak2l3
      abb77(36)=spbk6l3*abb77(31)
      abb77(21)=2.0_ki*abb77(36)+abb77(21)
      abb77(21)=spbk4k1*abb77(21)
      abb77(36)=spak1k2*spbk4k1
      abb77(38)=-abb77(25)*abb77(40)*abb77(36)
      abb77(43)=spbk2k1*spak2k5
      abb77(44)=abb77(43)-abb77(40)
      abb77(44)=spak2k6*abb77(44)
      abb77(45)=2.0_ki*spak2k5
      abb77(46)=spal3k6*spbl3k1*abb77(45)
      abb77(44)=abb77(46)+2.0_ki*abb77(44)
      abb77(44)=abb77(44)*abb77(15)*spbk6k4
      abb77(46)=abb77(29)*spbk4l3
      abb77(47)=-abb77(46)*abb77(43)
      abb77(28)=-abb77(36)*abb77(28)
      abb77(31)=-spbk4l3*abb77(31)
      abb77(28)=abb77(31)+abb77(28)
      abb77(28)=spbk6k1*abb77(28)
      abb77(21)=2.0_ki*abb77(28)+abb77(38)+abb77(47)+abb77(21)+abb77(44)
      abb77(21)=4.0_ki*abb77(21)
      abb77(28)=3.0_ki*abb77(24)
      abb77(31)=abb77(28)+abb77(15)
      abb77(11)=abb77(31)*abb77(11)
      abb77(38)=3.0_ki*abb77(15)
      abb77(44)=abb77(38)+abb77(24)
      abb77(8)=abb77(44)*abb77(8)
      abb77(8)=abb77(11)+abb77(8)
      abb77(11)=abb77(10)*spak1k2
      abb77(47)=spbk4l3*spak5e6
      abb77(48)=spak2l3*abb77(47)
      abb77(48)=abb77(11)+abb77(48)
      abb77(49)=7.0_ki*abb77(24)
      abb77(50)=abb77(49)+abb77(15)
      abb77(48)=abb77(50)*spbe6k1*abb77(48)
      abb77(51)=7.0_ki*abb77(15)
      abb77(52)=abb77(51)+abb77(24)
      abb77(53)=abb77(52)*spak2e6
      abb77(54)=abb77(25)*spak2e6
      abb77(55)=abb77(54)*abb77(19)
      abb77(56)=abb77(53)+abb77(55)
      abb77(56)=abb77(56)*spbk2k1
      abb77(57)=-abb77(7)*abb77(56)
      abb77(58)=abb77(53)*abb77(40)
      abb77(59)=spbe6k4*abb77(58)
      abb77(8)=abb77(59)+abb77(57)+abb77(48)-2.0_ki*abb77(8)
      abb77(48)=abb77(54)*spbk4k1
      abb77(57)=abb77(48)*abb77(22)
      abb77(59)=abb77(25)*spbe6k1
      abb77(60)=abb77(59)*spak2k5
      abb77(61)=abb77(60)*abb77(33)
      abb77(57)=abb77(57)-abb77(61)
      abb77(61)=abb77(25)*abb77(7)
      abb77(62)=abb77(61)*abb77(6)
      abb77(63)=abb77(39)*abb77(10)
      abb77(64)=abb77(62)-abb77(63)
      abb77(42)=abb77(54)*abb77(42)
      abb77(65)=abb77(47)*abb77(29)
      abb77(66)=spbe6k1*abb77(65)
      abb77(67)=abb77(54)*spbe6k4
      abb77(68)=-abb77(67)*abb77(40)
      abb77(69)=abb77(59)*abb77(11)
      abb77(42)=abb77(69)+abb77(68)+abb77(66)+abb77(42)+abb77(64)-3.0_ki*abb77(&
      &57)
      abb77(66)=abb77(53)+3.0_ki*abb77(55)
      abb77(68)=-abb77(66)*abb77(23)
      abb77(69)=abb77(25)*abb77(10)
      abb77(70)=-abb77(18)*abb77(69)
      abb77(71)=abb77(10)*abb77(29)
      abb77(70)=abb77(70)+abb77(71)
      abb77(70)=spbe6l3*abb77(70)
      abb77(19)=abb77(19)*abb77(25)
      abb77(71)=abb77(19)*abb77(7)
      abb77(71)=abb77(71)-abb77(61)
      abb77(72)=2.0_ki*abb77(6)
      abb77(72)=abb77(71)*abb77(72)
      abb77(73)=abb77(45)*abb77(24)
      abb77(74)=abb77(19)*spak2k5
      abb77(73)=abb77(73)-abb77(74)
      abb77(75)=abb77(33)*spbe6k1
      abb77(76)=abb77(73)*abb77(75)
      abb77(77)=abb77(59)*abb77(47)*abb77(18)
      abb77(78)=abb77(55)*spbe6k4
      abb77(79)=abb77(40)*abb77(78)
      abb77(11)=abb77(11)*abb77(19)
      abb77(80)=spbe6k1*abb77(11)
      abb77(68)=abb77(80)-2.0_ki*abb77(79)+abb77(77)-4.0_ki*abb77(76)+abb77(72)&
      &+abb77(68)+abb77(70)
      abb77(51)=abb77(51)+9.0_ki*abb77(24)
      abb77(45)=abb77(45)*spbk4k1
      abb77(70)=abb77(51)*abb77(45)
      abb77(72)=abb77(55)*spbk2k1
      abb77(76)=abb77(72)*abb77(7)
      abb77(23)=abb77(23)*abb77(15)
      abb77(77)=spak2e6*abb77(23)
      abb77(75)=abb77(75)*abb77(50)
      abb77(79)=-spak2k5*abb77(75)
      abb77(62)=abb77(79)-abb77(62)+2.0_ki*abb77(63)-abb77(76)-8.0_ki*abb77(77)
      abb77(49)=abb77(49)+9.0_ki*abb77(15)
      abb77(45)=abb77(49)*abb77(45)
      abb77(57)=-abb77(76)-abb77(64)-abb77(57)
      abb77(63)=1.0_ki/2.0_ki*abb77(25)
      abb77(64)=abb77(63)*abb77(36)
      abb77(64)=abb77(64)+1.0_ki/2.0_ki*abb77(46)
      abb77(64)=spbe6k1*abb77(64)
      abb77(76)=-spbk4k1*abb77(39)
      abb77(64)=abb77(76)+abb77(64)
      abb77(64)=spak5k6*abb77(64)
      abb77(76)=abb77(54)+abb77(55)
      abb77(76)=abb77(76)*abb77(43)
      abb77(77)=abb77(6)*abb77(26)
      abb77(79)=1.0_ki/2.0_ki*abb77(54)
      abb77(80)=-abb77(40)*abb77(79)
      abb77(76)=abb77(80)+1.0_ki/2.0_ki*abb77(76)+abb77(77)
      abb77(76)=spbk6k4*abb77(76)
      abb77(77)=1.0_ki/2.0_ki*spbk4k1*abb77(20)
      abb77(80)=spbk4k1*abb77(55)
      abb77(80)=-abb77(48)+abb77(80)
      abb77(32)=-1.0_ki/2.0_ki*abb77(32)
      abb77(26)=abb77(74)-abb77(26)
      abb77(81)=-spbe6k1*abb77(26)
      abb77(82)=-spak2l3*spbk2k1
      abb77(82)=abb77(27)+abb77(82)
      abb77(82)=abb77(61)*abb77(82)
      abb77(83)=abb77(29)*abb77(40)*spbe6k4
      abb77(82)=abb77(83)+abb77(82)
      abb77(82)=1.0_ki/2.0_ki*abb77(82)
      abb77(83)=abb77(69)*spak1k2
      abb77(65)=-abb77(65)-abb77(83)
      abb77(84)=1.0_ki/2.0_ki*spbl3k1
      abb77(65)=abb77(65)*abb77(84)
      abb77(13)=-abb77(16)-1.0_ki/2.0_ki*abb77(13)
      abb77(13)=abb77(10)*abb77(13)
      abb77(47)=abb77(47)*abb77(63)
      abb77(85)=-abb77(27)*abb77(47)
      abb77(13)=abb77(85)+abb77(13)
      abb77(85)=abb77(10)*abb77(19)
      abb77(85)=-abb77(69)+abb77(85)
      abb77(7)=abb77(16)*abb77(7)
      abb77(16)=-abb77(53)+abb77(55)
      abb77(16)=abb77(16)*abb77(43)
      abb77(16)=abb77(58)+abb77(16)
      abb77(43)=1.0_ki/2.0_ki*spbk6e6
      abb77(16)=abb77(43)*abb77(16)
      abb77(58)=4.0_ki*abb77(15)
      abb77(58)=-spbk6e6*spak2k5*abb77(6)*abb77(58)
      abb77(16)=abb77(58)+abb77(16)
      abb77(58)=spbk4l3*spak2l3
      abb77(58)=abb77(36)+abb77(58)
      abb77(86)=1.0_ki/2.0_ki*abb77(50)
      abb77(87)=spae6k6*spbe6k1
      abb77(58)=abb77(86)*abb77(87)*abb77(58)
      abb77(88)=spae6k6*spbk4k1*abb77(24)*abb77(9)
      abb77(58)=-4.0_ki*abb77(88)+abb77(58)
      abb77(88)=-abb77(72)-abb77(41)
      abb77(88)=spak2k6*spbk6e6*abb77(88)
      abb77(89)=spbk6k1*spae6k6*abb77(39)
      abb77(88)=abb77(88)+abb77(89)
      abb77(89)=spbe6k1*abb77(55)
      abb77(55)=abb77(55)-abb77(54)
      abb77(90)=-spbk2k1*abb77(55)
      abb77(41)=abb77(90)-abb77(41)
      abb77(90)=spak1k2*abb77(59)
      abb77(90)=abb77(39)+abb77(90)
      abb77(91)=abb77(54)*abb77(43)
      abb77(92)=abb77(25)*spbe6k4
      abb77(35)=-abb77(92)*abb77(35)
      abb77(34)=-spbe6k4*abb77(34)
      abb77(93)=-spak2l3*abb77(75)
      abb77(34)=abb77(93)+abb77(35)+abb77(34)
      abb77(34)=1.0_ki/2.0_ki*abb77(34)
      abb77(14)=-abb77(20)-abb77(14)
      abb77(14)=spbe6k4*abb77(14)
      abb77(20)=abb77(92)*abb77(6)
      abb77(20)=abb77(20)+abb77(75)
      abb77(35)=spak1k2*abb77(20)
      abb77(14)=abb77(14)-abb77(35)
      abb77(9)=abb77(31)*abb77(33)*abb77(9)
      abb77(9)=abb77(9)+1.0_ki/2.0_ki*abb77(14)
      abb77(14)=abb77(38)+13.0_ki*abb77(24)
      abb77(14)=abb77(14)*abb77(36)
      abb77(31)=-spak2k6*spbk6k4*abb77(25)
      abb77(14)=abb77(31)-abb77(46)+abb77(14)
      abb77(31)=-abb77(22)*abb77(53)
      abb77(35)=spak5e6*abb77(39)
      abb77(31)=abb77(31)+abb77(35)
      abb77(31)=abb77(31)*abb77(84)
      abb77(35)=abb77(22)*spbk4l3
      abb77(36)=-abb77(54)*abb77(35)
      abb77(38)=spbe6l3*abb77(83)
      abb77(36)=abb77(36)+abb77(38)
      abb77(36)=1.0_ki/2.0_ki*abb77(36)
      abb77(38)=-spbe6l3*abb77(79)
      abb77(39)=-abb77(63)*abb77(87)
      abb77(46)=abb77(22)*abb77(56)
      abb77(53)=abb77(25)*spak5e6
      abb77(27)=abb77(53)*abb77(27)
      abb77(30)=-spak5e6*abb77(30)
      abb77(27)=abb77(27)+abb77(30)
      abb77(27)=spbe6l3*abb77(27)
      abb77(27)=abb77(27)+abb77(37)+abb77(46)
      abb77(6)=abb77(44)*abb77(6)*abb77(22)
      abb77(6)=1.0_ki/2.0_ki*abb77(27)+abb77(6)
      abb77(27)=spbk6k1*spak5k6
      abb77(27)=abb77(27)+abb77(40)
      abb77(27)=abb77(25)*abb77(27)
      abb77(28)=-13.0_ki*abb77(15)-abb77(28)
      abb77(28)=spak2k5*abb77(28)
      abb77(28)=abb77(28)+abb77(74)
      abb77(28)=spbk2k1*abb77(28)
      abb77(27)=abb77(28)+abb77(27)
      abb77(28)=abb77(59)*spak5e6
      abb77(19)=abb77(19)*spak5e6
      abb77(30)=-spbe6k1*abb77(19)
      abb77(37)=-spal3e6*spbk2k1*abb77(71)
      abb77(40)=abb77(72)*spbe6k4
      abb77(44)=abb77(59)*abb77(33)
      abb77(44)=abb77(40)+abb77(44)
      abb77(44)=spal3k5*abb77(44)
      abb77(37)=abb77(37)+abb77(44)
      abb77(37)=1.0_ki/2.0_ki*abb77(37)
      abb77(44)=spal3e6*spbe6k1*abb77(63)
      abb77(46)=abb77(66)*abb77(22)
      abb77(54)=abb77(18)*abb77(53)
      abb77(29)=-spak5e6*abb77(29)
      abb77(29)=abb77(54)+abb77(29)
      abb77(29)=spbe6l3*abb77(29)
      abb77(29)=abb77(46)+abb77(29)
      abb77(46)=1.0_ki/2.0_ki*spbk4k2
      abb77(29)=abb77(29)*abb77(46)
      abb77(54)=2.0_ki*abb77(33)
      abb77(56)=abb77(73)*abb77(54)
      abb77(18)=-abb77(18)*abb77(47)
      abb77(11)=-1.0_ki/2.0_ki*abb77(11)+abb77(56)+abb77(18)
      abb77(11)=spbe6k2*abb77(11)
      abb77(17)=abb77(17)*abb77(5)
      abb77(18)=spbl3k2-abb77(17)
      abb77(18)=abb77(61)*abb77(18)
      abb77(56)=2.0_ki*abb77(25)
      abb77(35)=abb77(35)*abb77(56)
      abb77(18)=abb77(35)+abb77(18)
      abb77(18)=spal3e6*abb77(18)
      abb77(17)=abb77(17)*abb77(67)
      abb77(35)=abb77(25)*spbe6l3
      abb77(54)=-abb77(35)*abb77(54)
      abb77(17)=abb77(17)+abb77(54)
      abb77(17)=spal3k5*abb77(17)
      abb77(20)=abb77(40)+abb77(20)
      abb77(20)=spak1k5*abb77(20)
      abb77(23)=spak1e6*abb77(23)
      abb77(40)=-spak1l3*abb77(69)*spbe6l3
      abb77(11)=abb77(40)+4.0_ki*abb77(23)+1.0_ki/2.0_ki*abb77(20)+abb77(11)+ab&
      &b77(29)+abb77(17)+abb77(18)
      abb77(15)=abb77(24)+abb77(15)
      abb77(15)=8.0_ki*abb77(15)
      abb77(17)=spbk6k4*spak5k6*abb77(15)
      abb77(18)=-spbk4k2*spak2k5*abb77(51)
      abb77(20)=-spak1k5*spbk4k1*abb77(49)
      abb77(17)=abb77(20)+abb77(17)+abb77(18)
      abb77(15)=-spak5e6*spbe6k4*abb77(15)
      abb77(18)=abb77(63)*spbe6k4
      abb77(20)=-spak5k6*abb77(18)
      abb77(23)=abb77(63)*spak5e6
      abb77(24)=spbk6k4*abb77(23)
      abb77(29)=-spbk4l3*spal3e6
      abb77(40)=spak1e6*spbk4k1
      abb77(29)=abb77(40)+abb77(29)
      abb77(25)=abb77(25)*abb77(29)
      abb77(29)=-spbk4k2*abb77(55)
      abb77(33)=-abb77(50)*abb77(33)
      abb77(25)=abb77(29)+abb77(33)+abb77(25)
      abb77(25)=1.0_ki/2.0_ki*abb77(25)
      abb77(26)=spbe6k2*abb77(26)
      abb77(22)=-abb77(52)*abb77(22)
      abb77(29)=spal3k5*abb77(35)
      abb77(33)=-spak1k5*abb77(59)
      abb77(22)=abb77(33)+abb77(26)+abb77(22)+abb77(29)
      abb77(22)=1.0_ki/2.0_ki*abb77(22)
      abb77(26)=spal3k5*abb77(18)
      abb77(29)=1.0_ki/2.0_ki*abb77(71)
      abb77(33)=abb77(53)-abb77(19)
      abb77(33)=abb77(33)*abb77(46)
      abb77(35)=-spak1k5*abb77(18)
      abb77(10)=abb77(10)*abb77(63)
      abb77(40)=-spak5e6*abb77(52)*abb77(43)
      abb77(43)=-spae6k6*spbe6k4*abb77(86)
      abb77(18)=-spal3e6*abb77(18)
      abb77(46)=-1.0_ki/2.0_ki*abb77(78)
      abb77(23)=spbe6l3*abb77(23)
      abb77(19)=1.0_ki/2.0_ki*spbe6k2*abb77(19)
      R2d77=0.0_ki
      rat2 = rat2 + R2d77
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='77' value='", &
          & R2d77, "'/>"
      end if
   end subroutine
end module p16_bbarb_hepemg_abbrevd77h1
