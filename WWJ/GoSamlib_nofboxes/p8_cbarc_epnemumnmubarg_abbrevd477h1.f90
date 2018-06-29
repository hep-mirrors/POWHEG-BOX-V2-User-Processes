module     p8_cbarc_epnemumnmubarg_abbrevd477h1
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(96), public :: abb477
   complex(ki), public :: R2d477
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p8_cbarc_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_color, only: TR
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb477(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb477(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb477(3)=NC**(-1)
      abb477(4)=sqrt2**(-1)
      abb477(5)=spak2k7**(-1)
      abb477(6)=abb477(1)*abb477(2)*abb477(3)*abb477(4)*c1*gW**4*TR*i_
      abb477(7)=8.0_ki*abb477(6)
      abb477(8)=abb477(5)*spak1k2
      abb477(9)=abb477(7)*abb477(8)
      abb477(10)=spbk6k2*spak2k4
      abb477(11)=spbk6k3*spak3k4
      abb477(10)=abb477(10)-abb477(11)
      abb477(11)=abb477(10)*spak1k5
      abb477(12)=abb477(11)*spbk3k2
      abb477(13)=es12*spbk7k1
      abb477(14)=abb477(13)*abb477(12)*abb477(9)
      abb477(15)=spbk6k3*spak2k5
      abb477(16)=abb477(15)*spbk7k2
      abb477(17)=abb477(16)*spak3k4
      abb477(18)=spbk6k2*spak2k5
      abb477(19)=abb477(18)*spbk7k2
      abb477(20)=abb477(19)*spak2k4
      abb477(17)=abb477(17)-abb477(20)
      abb477(20)=16.0_ki*abb477(5)
      abb477(20)=abb477(20)*abb477(6)
      abb477(21)=spak1k2*spbk3k2
      abb477(22)=abb477(21)*abb477(20)
      abb477(23)=-abb477(17)*abb477(22)
      abb477(24)=es71-es712
      abb477(25)=2.0_ki*es12
      abb477(26)=abb477(24)+abb477(25)
      abb477(27)=spbk3k2*spak4k5
      abb477(28)=abb477(27)*spbk7k6
      abb477(29)=abb477(26)*abb477(28)
      abb477(30)=abb477(27)*spak1k2
      abb477(31)=spbk7k2*spbk6k1
      abb477(32)=abb477(30)*abb477(31)
      abb477(29)=abb477(29)-abb477(32)
      abb477(33)=abb477(20)*spak1k2
      abb477(34)=abb477(29)*abb477(33)
      abb477(35)=spbk6k2*spbk7k1
      abb477(36)=spak1k5*spbk3k1
      abb477(37)=abb477(35)*abb477(36)
      abb477(38)=-spak1k4*abb477(37)
      abb477(29)=abb477(38)-abb477(29)
      abb477(29)=abb477(29)*abb477(33)
      abb477(38)=spak1k4*spbk7k3
      abb477(39)=abb477(38)*abb477(18)
      abb477(40)=32.0_ki*abb477(6)
      abb477(41)=abb477(40)*abb477(5)
      abb477(42)=-abb477(39)*abb477(41)
      abb477(43)=spbk7k1*abb477(11)
      abb477(43)=abb477(43)+abb477(17)
      abb477(43)=abb477(43)*abb477(22)
      abb477(40)=abb477(8)*abb477(40)*abb477(28)
      abb477(44)=abb477(30)*spbk7k6
      abb477(45)=abb477(39)-abb477(44)
      abb477(41)=abb477(45)*abb477(41)
      abb477(45)=spbk7k6*spak4k5
      abb477(46)=abb477(26)*abb477(45)
      abb477(47)=abb477(31)*spak1k4
      abb477(48)=-spak2k5*abb477(47)
      abb477(17)=-abb477(46)+abb477(48)-abb477(17)
      abb477(17)=spbk3k2*abb477(17)
      abb477(48)=spak4k5*spbk4k3
      abb477(47)=-abb477(48)*abb477(47)
      abb477(17)=abb477(32)+abb477(47)+abb477(17)
      abb477(17)=spak1k2*abb477(17)
      abb477(32)=spbk4k3*abb477(46)
      abb477(47)=abb477(26)*spbk3k2*spbk7k6
      abb477(49)=spak2k5*abb477(47)
      abb477(32)=abb477(32)+abb477(49)
      abb477(49)=spak1k5*spbk6k3
      abb477(13)=-abb477(49)*abb477(13)
      abb477(13)=abb477(13)+abb477(32)
      abb477(13)=spak1k4*abb477(13)
      abb477(13)=abb477(17)+abb477(13)
      abb477(17)=8.0_ki*abb477(5)
      abb477(17)=abb477(17)*abb477(6)
      abb477(13)=abb477(13)*abb477(17)
      abb477(50)=abb477(20)*spak1k4
      abb477(51)=-abb477(16)*abb477(50)
      abb477(39)=-abb477(20)*abb477(39)
      abb477(52)=abb477(16)*spak1k4
      abb477(44)=abb477(52)-abb477(44)
      abb477(44)=abb477(44)*abb477(20)
      abb477(52)=-abb477(17)*abb477(52)
      abb477(53)=spbk7k3*spak3k4
      abb477(54)=abb477(26)*abb477(53)
      abb477(55)=abb477(24)+es12
      abb477(56)=abb477(55)*spbk7k2
      abb477(57)=-spak2k4*abb477(56)
      abb477(54)=abb477(57)+abb477(54)
      abb477(54)=spbk3k2*abb477(54)
      abb477(57)=spbk3k1*abb477(21)*spak3k4
      abb477(58)=-spbk7k2*abb477(57)
      abb477(54)=abb477(54)+abb477(58)
      abb477(54)=abb477(54)*abb477(9)
      abb477(58)=spak1k4*spbk3k1
      abb477(59)=spak1k2*spbk7k2
      abb477(60)=abb477(58)*abb477(59)
      abb477(61)=abb477(24)*abb477(38)
      abb477(61)=abb477(61)+abb477(60)
      abb477(61)=abb477(61)*abb477(20)
      abb477(62)=-spbk7k2*spak2k4
      abb477(62)=abb477(62)+abb477(53)
      abb477(62)=abb477(62)*abb477(22)
      abb477(63)=abb477(26)*abb477(38)
      abb477(60)=abb477(63)-abb477(60)
      abb477(60)=abb477(60)*abb477(17)
      abb477(63)=abb477(38)*spbk6k1
      abb477(64)=abb477(58)*spbk7k6
      abb477(63)=abb477(63)-abb477(64)
      abb477(63)=abb477(63)*abb477(8)
      abb477(64)=abb477(38)*spbk7k6
      abb477(63)=abb477(63)-abb477(64)
      abb477(64)=16.0_ki*abb477(6)
      abb477(65)=abb477(63)*abb477(64)
      abb477(63)=abb477(63)*abb477(7)
      abb477(46)=-spbk4k2*abb477(46)
      abb477(47)=-spak3k5*abb477(47)
      abb477(66)=spak4k5*spbk4k2
      abb477(67)=spbk3k2*spak3k5
      abb477(66)=abb477(66)+abb477(67)
      abb477(68)=abb477(31)*spak1k2
      abb477(69)=abb477(66)*abb477(68)
      abb477(35)=abb477(35)*spak1k5
      abb477(70)=es12*abb477(35)
      abb477(46)=abb477(69)+abb477(47)+abb477(70)+abb477(46)
      abb477(46)=abb477(46)*abb477(9)
      abb477(47)=abb477(33)*abb477(19)
      abb477(69)=spbk7k6*spak1k5
      abb477(26)=-abb477(26)*abb477(69)
      abb477(70)=spak1k5*abb477(68)
      abb477(26)=abb477(26)+abb477(70)
      abb477(26)=abb477(26)*abb477(20)
      abb477(70)=32.0_ki*abb477(5)
      abb477(6)=spbk7k6*abb477(70)*abb477(6)*spak1k5
      abb477(45)=abb477(45)*spbk4k2
      abb477(67)=abb477(67)*spbk7k6
      abb477(45)=abb477(67)+abb477(45)
      abb477(35)=-abb477(19)+abb477(35)-abb477(45)
      abb477(35)=abb477(35)*abb477(33)
      abb477(19)=abb477(9)*abb477(19)
      abb477(67)=-abb477(20)*abb477(69)
      abb477(56)=-abb477(9)*abb477(56)
      abb477(70)=-spbk7k2*abb477(33)
      abb477(71)=spak1k4*spbk7k4
      abb477(72)=spbk7k3*spak1k3
      abb477(71)=abb477(71)+abb477(72)
      abb477(73)=spbk6k1*abb477(71)
      abb477(55)=-es234+es567+abb477(55)
      abb477(55)=spbk7k6*abb477(55)
      abb477(55)=-abb477(68)+abb477(55)+abb477(73)
      abb477(55)=abb477(55)*abb477(8)
      abb477(68)=-spbk7k6*abb477(71)
      abb477(55)=abb477(68)+abb477(55)
      abb477(55)=abb477(55)*abb477(7)
      abb477(68)=abb477(33)*spbk7k6
      abb477(71)=spbk7k6*abb477(9)
      abb477(73)=spbk3k2*spak2k5
      abb477(73)=-abb477(73)-abb477(48)
      abb477(31)=abb477(31)*abb477(73)
      abb477(31)=abb477(37)+abb477(31)
      abb477(31)=spak1k2*abb477(31)
      abb477(25)=-abb477(25)+es123-es23
      abb477(25)=abb477(25)*abb477(49)
      abb477(37)=spbk7k1*abb477(25)
      abb477(31)=abb477(31)+abb477(37)+abb477(32)
      abb477(31)=abb477(31)*abb477(9)
      abb477(32)=abb477(18)*spbk7k3
      abb477(16)=abb477(32)-abb477(16)
      abb477(32)=abb477(16)*spak1k2
      abb477(37)=abb477(72)*abb477(15)
      abb477(32)=abb477(32)-abb477(37)
      abb477(32)=abb477(32)*abb477(20)
      abb477(73)=abb477(69)*spbk3k1
      abb477(74)=spak1k5*spbk6k1
      abb477(75)=abb477(74)*spbk7k3
      abb477(73)=abb477(73)-abb477(75)
      abb477(75)=abb477(73)*abb477(8)
      abb477(76)=abb477(69)*spbk7k3
      abb477(75)=abb477(75)+abb477(76)
      abb477(77)=abb477(75)*abb477(64)
      abb477(16)=abb477(73)+abb477(16)
      abb477(16)=spak1k2*abb477(16)
      abb477(16)=-abb477(37)+abb477(16)
      abb477(16)=abb477(5)*abb477(16)
      abb477(16)=abb477(76)+abb477(16)
      abb477(16)=abb477(16)*abb477(7)
      abb477(37)=spbk7k3*es12
      abb477(59)=-spbk3k1*abb477(59)
      abb477(37)=abb477(37)+abb477(59)
      abb477(37)=abb477(37)*abb477(8)
      abb477(59)=spbk7k3**2
      abb477(73)=spak1k3*abb477(59)
      abb477(37)=abb477(73)+2.0_ki*abb477(37)
      abb477(37)=abb477(37)*abb477(7)
      abb477(73)=-spbk7k4*abb477(74)
      abb477(76)=spbk4k1*abb477(69)
      abb477(73)=abb477(73)+abb477(76)
      abb477(73)=abb477(73)*abb477(8)
      abb477(76)=spbk7k4*abb477(69)
      abb477(73)=abb477(76)+abb477(73)
      abb477(73)=abb477(73)*abb477(7)
      abb477(76)=abb477(9)*spbk7k1
      abb477(58)=abb477(58)*abb477(49)
      abb477(78)=abb477(58)*abb477(76)
      abb477(79)=abb477(15)*abb477(38)
      abb477(80)=abb477(79)*abb477(20)
      abb477(79)=abb477(17)*abb477(79)
      abb477(59)=-spak1k4*abb477(59)*abb477(7)
      abb477(75)=abb477(75)*abb477(7)
      abb477(12)=-es12*abb477(12)
      abb477(10)=abb477(10)*spak5k7
      abb477(21)=abb477(21)*spbk7k2*abb477(10)
      abb477(12)=abb477(12)+abb477(21)
      abb477(12)=abb477(12)*abb477(17)
      abb477(21)=abb477(30)*spbk6k2
      abb477(81)=abb477(21)*abb477(20)
      abb477(82)=spbk6k2*spak5k7
      abb477(83)=-abb477(38)*abb477(82)
      abb477(84)=spbk6k2*abb477(36)*spak1k4
      abb477(83)=-abb477(21)+abb477(83)+abb477(84)
      abb477(83)=abb477(83)*abb477(20)
      abb477(84)=abb477(20)*spbk3k2
      abb477(11)=-abb477(84)*abb477(11)
      abb477(85)=abb477(18)*spbk3k2
      abb477(86)=spbk6k3*spak5k7
      abb477(87)=abb477(86)*spbk7k2
      abb477(85)=abb477(85)-abb477(87)
      abb477(87)=spbk6k2*abb477(48)
      abb477(88)=spbk2k1*abb477(49)
      abb477(87)=abb477(88)+abb477(87)+abb477(85)
      abb477(87)=spak1k4*abb477(87)
      abb477(21)=-abb477(21)+abb477(87)
      abb477(21)=abb477(21)*abb477(17)
      abb477(9)=spak3k4*spbk3k2**2*abb477(9)
      abb477(87)=-spbk3k2*abb477(50)
      abb477(88)=abb477(17)*spbk3k2
      abb477(89)=spak1k4*abb477(88)
      abb477(50)=abb477(50)*spbk6k3
      abb477(90)=-spbk6k3*abb477(17)*spak1k4
      abb477(91)=-spbk6k2*abb477(66)
      abb477(92)=spbk7k2*abb477(82)
      abb477(91)=abb477(92)+abb477(91)
      abb477(91)=spak1k2*abb477(91)
      abb477(92)=spak1k5*spbk6k2
      abb477(93)=-es12*abb477(92)
      abb477(91)=abb477(93)+abb477(91)
      abb477(91)=abb477(91)*abb477(17)
      abb477(92)=abb477(92)*abb477(20)
      abb477(69)=abb477(17)*abb477(69)
      abb477(93)=-spbk6k3*spak1k3
      abb477(94)=-spak1k4*spbk6k4
      abb477(95)=-spbk7k6*spak1k7
      abb477(96)=spak1k2*spbk6k2
      abb477(93)=abb477(96)+abb477(95)+abb477(93)+abb477(94)
      abb477(93)=abb477(93)*abb477(17)
      abb477(36)=-abb477(36)+abb477(48)
      abb477(36)=spbk6k2*abb477(36)
      abb477(48)=spbk7k3*abb477(82)
      abb477(36)=abb477(48)+abb477(36)+abb477(85)
      abb477(36)=spak1k2*abb477(36)
      abb477(48)=-abb477(72)*abb477(86)
      abb477(25)=abb477(36)+abb477(48)-abb477(25)
      abb477(25)=abb477(25)*abb477(17)
      abb477(36)=abb477(49)*abb477(20)
      abb477(48)=abb477(49)*abb477(17)
      abb477(49)=spak1k5*spbk6k4*abb477(17)
      abb477(38)=abb477(38)*abb477(86)
      abb477(38)=abb477(38)-abb477(58)
      abb477(38)=abb477(38)*abb477(17)
      abb477(58)=abb477(18)*spak2k4
      abb477(15)=abb477(15)*spak3k4
      abb477(15)=abb477(58)-abb477(15)
      abb477(58)=abb477(15)*abb477(84)
      abb477(8)=abb477(8)*spbk6k1
      abb477(72)=abb477(27)*abb477(8)
      abb477(72)=abb477(72)-abb477(28)
      abb477(64)=abb477(72)*abb477(64)
      abb477(15)=-spbk3k2*abb477(15)
      abb477(30)=-spbk6k1*abb477(30)
      abb477(15)=abb477(15)+abb477(30)
      abb477(15)=abb477(5)*abb477(15)
      abb477(15)=abb477(28)+abb477(15)
      abb477(15)=abb477(15)*abb477(7)
      abb477(28)=spbk3k2*spak2k4*abb477(24)
      abb477(28)=abb477(28)+abb477(57)
      abb477(28)=abb477(5)*abb477(28)
      abb477(30)=-spbk3k2*abb477(53)
      abb477(28)=abb477(30)+abb477(28)
      abb477(28)=abb477(28)*abb477(7)
      abb477(8)=-abb477(66)*abb477(8)
      abb477(8)=abb477(8)+abb477(45)
      abb477(7)=abb477(8)*abb477(7)
      abb477(8)=abb477(18)*abb477(20)
      abb477(18)=-abb477(17)*abb477(18)
      abb477(24)=abb477(24)*abb477(17)
      abb477(10)=-abb477(10)*abb477(88)
      abb477(30)=-abb477(17)*abb477(82)
      abb477(20)=abb477(27)*abb477(20)
      abb477(27)=abb477(27)*abb477(17)
      abb477(45)=abb477(66)*abb477(17)
      abb477(53)=-spak3k4*abb477(88)
      abb477(57)=-abb477(74)*abb477(76)
      abb477(33)=spbk7k1*abb477(33)
      abb477(66)=spak2k4*abb477(88)
      abb477(72)=abb477(17)*abb477(74)
      R2d477=0.0_ki
      rat2 = rat2 + R2d477
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='477' value='", &
          & R2d477, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd477h1
