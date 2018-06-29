module     p0_dbard_epnemumnmubarg_abbrevd473h1
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(90), public :: abb473
   complex(ki), public :: R2d473
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbard_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_color, only: TR
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb473(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb473(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb473(3)=NC**(-1)
      abb473(4)=sqrt2**(-1)
      abb473(5)=spak2k7**(-1)
      abb473(6)=spak2k4*spbk7k6
      abb473(7)=abb473(4)*gW**4*abb473(3)*abb473(2)*abb473(1)*i_*TR*c1*abb473(5)
      abb473(8)=abb473(7)*spak1k4
      abb473(9)=abb473(6)*abb473(8)
      abb473(10)=spak5k6*spbk6k2
      abb473(11)=abb473(9)*abb473(10)
      abb473(12)=spbk7k2*spak2k4
      abb473(13)=abb473(12)*abb473(8)
      abb473(14)=spak2k5*spbk6k2
      abb473(15)=abb473(13)*abb473(14)
      abb473(11)=abb473(11)+abb473(15)
      abb473(11)=abb473(11)*spbk4k3
      abb473(15)=-es12*abb473(11)
      abb473(16)=abb473(7)*spak1k2
      abb473(17)=abb473(16)*spak1k4
      abb473(18)=abb473(17)*spbk7k6
      abb473(19)=abb473(18)*abb473(10)
      abb473(20)=abb473(17)*spbk7k2
      abb473(21)=abb473(20)*abb473(14)
      abb473(19)=abb473(19)+abb473(21)
      abb473(21)=spbk3k1*es12
      abb473(22)=abb473(19)*abb473(21)
      abb473(15)=abb473(15)+abb473(22)
      abb473(15)=8.0_ki*abb473(15)
      abb473(22)=spak3k4*spbk7k3
      abb473(23)=abb473(16)*spbk3k2
      abb473(24)=abb473(22)*abb473(23)
      abb473(25)=abb473(8)*spbk7k3
      abb473(26)=abb473(25)*es12
      abb473(27)=abb473(17)*spbk7k1
      abb473(28)=abb473(27)*spbk3k2
      abb473(24)=-abb473(24)+abb473(26)+abb473(28)
      abb473(26)=-abb473(14)*abb473(24)
      abb473(28)=16.0_ki*abb473(26)
      abb473(29)=abb473(6)*abb473(23)
      abb473(30)=abb473(29)*abb473(10)
      abb473(31)=abb473(12)*abb473(23)
      abb473(32)=abb473(31)*abb473(14)
      abb473(30)=abb473(30)+abb473(32)
      abb473(32)=16.0_ki*abb473(30)
      abb473(33)=abb473(8)*spak1k5
      abb473(34)=abb473(33)*spbk6k1
      abb473(35)=abb473(34)*spbk4k3
      abb473(36)=abb473(12)*abb473(35)
      abb473(37)=spak1k5*spbk7k2
      abb473(38)=abb473(17)*spbk6k1
      abb473(39)=abb473(38)*spbk3k1
      abb473(40)=-abb473(39)*abb473(37)
      abb473(36)=abb473(40)+abb473(36)+abb473(26)
      abb473(36)=16.0_ki*abb473(36)
      abb473(40)=abb473(7)*spbk7k3
      abb473(41)=abb473(40)*spak3k4
      abb473(42)=abb473(8)*spbk7k1
      abb473(41)=abb473(41)-abb473(42)
      abb473(43)=spbk6k3*spak1k5
      abb473(44)=abb473(43)*abb473(41)
      abb473(45)=spbk6k1*spak1k5
      abb473(46)=abb473(45)*abb473(25)
      abb473(44)=abb473(46)+abb473(44)
      abb473(46)=32.0_ki*abb473(44)
      abb473(47)=abb473(7)*spbk7k2
      abb473(48)=spak2k4*abb473(47)
      abb473(49)=abb473(48)*abb473(43)
      abb473(50)=32.0_ki*abb473(49)
      abb473(19)=spbk3k1*abb473(19)
      abb473(11)=abb473(19)-abb473(11)+abb473(30)
      abb473(11)=16.0_ki*abb473(11)
      abb473(19)=abb473(25)*abb473(14)
      abb473(51)=32.0_ki*abb473(19)
      abb473(52)=-abb473(19)+abb473(49)
      abb473(52)=32.0_ki*abb473(52)
      abb473(53)=spbk4k3*abb473(6)*abb473(33)
      abb473(54)=spbk6k5*spak1k5*spak2k5
      abb473(55)=-abb473(25)*abb473(54)
      abb473(53)=abb473(53)+abb473(55)
      abb473(53)=spbk2k1*abb473(53)
      abb473(33)=-spbk7k6*abb473(33)*abb473(21)
      abb473(54)=spbk3k2*abb473(41)*abb473(54)
      abb473(26)=abb473(53)+abb473(54)+abb473(33)-abb473(30)+abb473(26)
      abb473(26)=8.0_ki*abb473(26)
      abb473(30)=abb473(7)*spbk7k6
      abb473(33)=abb473(30)*spak1k5
      abb473(53)=abb473(33)*spak2k4
      abb473(54)=abb473(53)*spbk3k2
      abb473(55)=16.0_ki*abb473(54)
      abb473(44)=-abb473(49)+abb473(44)
      abb473(44)=16.0_ki*abb473(44)
      abb473(19)=-abb473(19)-abb473(54)
      abb473(19)=16.0_ki*abb473(19)
      abb473(49)=8.0_ki*abb473(54)
      abb473(35)=-abb473(6)*abb473(35)
      abb473(39)=spak1k5*spbk7k6*abb473(39)
      abb473(35)=abb473(35)+abb473(39)
      abb473(35)=8.0_ki*abb473(35)
      abb473(39)=abb473(30)*spak2k4
      abb473(54)=abb473(39)*abb473(43)
      abb473(56)=16.0_ki*abb473(54)
      abb473(54)=8.0_ki*abb473(54)
      abb473(57)=es34-es234
      abb473(58)=es712-es71
      abb473(59)=abb473(57)-abb473(58)
      abb473(60)=abb473(24)*abb473(59)
      abb473(13)=abb473(13)*spbk4k3
      abb473(61)=-es12*abb473(13)
      abb473(21)=abb473(20)*abb473(21)
      abb473(21)=abb473(61)+abb473(21)+abb473(60)
      abb473(21)=8.0_ki*abb473(21)
      abb473(60)=16.0_ki*abb473(31)
      abb473(61)=es567-es234+es71
      abb473(61)=abb473(25)*abb473(61)
      abb473(62)=spak3k4*spbk6k3
      abb473(63)=abb473(40)*abb473(62)
      abb473(64)=-spbk6k3*abb473(42)
      abb473(63)=abb473(63)+abb473(64)
      abb473(63)=spak1k6*abb473(63)
      abb473(64)=spbk5k3*spak1k5*abb473(41)
      abb473(65)=spbk4k3*spbk7k1*spak1k4**2*abb473(7)
      abb473(61)=abb473(64)+abb473(63)+abb473(65)+abb473(61)
      abb473(61)=16.0_ki*abb473(61)
      abb473(63)=32.0_ki*abb473(25)
      abb473(64)=abb473(25)*abb473(59)
      abb473(20)=spbk3k1*abb473(20)
      abb473(13)=abb473(20)+abb473(31)-abb473(13)+abb473(64)
      abb473(13)=16.0_ki*abb473(13)
      abb473(20)=-8.0_ki*abb473(31)
      abb473(25)=-16.0_ki*abb473(25)
      abb473(31)=abb473(16)*spbk7k3
      abb473(64)=abb473(62)*abb473(31)
      abb473(65)=abb473(27)*spbk6k3
      abb473(66)=abb473(38)*spbk7k3
      abb473(64)=-abb473(65)+abb473(64)+abb473(66)
      abb473(65)=-8.0_ki*abb473(64)
      abb473(66)=es12*abb473(9)
      abb473(67)=-abb473(12)*abb473(38)
      abb473(66)=abb473(66)+abb473(67)
      abb473(66)=spbk4k3*abb473(66)
      abb473(67)=spbk6k5*spak2k5
      abb473(24)=-abb473(24)*abb473(67)
      abb473(9)=abb473(9)*spbk4k3
      abb473(68)=abb473(18)*spbk3k1
      abb473(9)=abb473(9)-abb473(68)
      abb473(68)=-es71+es671-es67
      abb473(9)=-abb473(9)*abb473(68)
      abb473(69)=spbk6k1*spak1k2**2
      abb473(70)=spbk7k2*abb473(8)*abb473(69)
      abb473(18)=-es12*abb473(18)
      abb473(18)=abb473(18)+abb473(70)
      abb473(18)=spbk3k1*abb473(18)
      abb473(9)=abb473(24)+abb473(66)+abb473(18)+abb473(9)
      abb473(9)=8.0_ki*abb473(9)
      abb473(18)=16.0_ki*abb473(64)
      abb473(24)=abb473(16)*spbk7k2
      abb473(66)=abb473(24)*spbk6k3
      abb473(70)=abb473(66)*spak2k4
      abb473(39)=abb473(39)*spak1k6
      abb473(71)=abb473(39)*spbk6k3
      abb473(29)=abb473(29)+abb473(70)-abb473(71)
      abb473(70)=16.0_ki*abb473(29)
      abb473(29)=-abb473(64)+abb473(29)
      abb473(29)=8.0_ki*abb473(29)
      abb473(64)=-spak3k4*abb473(31)
      abb473(64)=abb473(64)+abb473(27)
      abb473(64)=spbk5k3*abb473(64)
      abb473(17)=-spbk5k1*spbk7k3*abb473(17)
      abb473(17)=abb473(64)+abb473(17)
      abb473(17)=8.0_ki*abb473(17)
      abb473(64)=abb473(16)*spbk7k6
      abb473(71)=abb473(10)*abb473(64)
      abb473(72)=abb473(24)*abb473(14)
      abb473(71)=abb473(71)+abb473(72)
      abb473(57)=abb473(57)-es12
      abb473(73)=8.0_ki*abb473(71)*abb473(57)
      abb473(74)=16.0_ki*abb473(72)
      abb473(75)=abb473(24)*abb473(45)
      abb473(76)=abb473(43)*spak2k3
      abb473(77)=abb473(47)*abb473(76)
      abb473(78)=spbk6k4*spak1k5*abb473(48)
      abb473(75)=abb473(78)+abb473(77)+abb473(72)+abb473(75)
      abb473(75)=16.0_ki*abb473(75)
      abb473(77)=32.0_ki*abb473(33)
      abb473(71)=-16.0_ki*abb473(71)
      abb473(37)=abb473(37)*abb473(7)*abb473(67)
      abb473(78)=-abb473(33)*abb473(57)
      abb473(37)=abb473(37)+abb473(72)+abb473(78)
      abb473(37)=8.0_ki*abb473(37)
      abb473(33)=-16.0_ki*abb473(33)
      abb473(45)=-abb473(64)*abb473(45)
      abb473(72)=-abb473(30)*abb473(76)
      abb473(53)=-spbk6k4*abb473(53)
      abb473(45)=abb473(53)+abb473(45)+abb473(72)
      abb473(45)=8.0_ki*abb473(45)
      abb473(53)=-es12+abb473(58)
      abb473(53)=8.0_ki*abb473(24)*abb473(53)
      abb473(30)=abb473(30)*spak1k6
      abb473(58)=abb473(7)*spak1k5
      abb473(72)=-spbk7k5*abb473(58)
      abb473(76)=spbk7k4*abb473(8)
      abb473(40)=spak1k3*abb473(40)
      abb473(40)=abb473(40)+abb473(76)-abb473(30)+abb473(72)
      abb473(40)=16.0_ki*abb473(40)
      abb473(72)=-16.0_ki*abb473(24)
      abb473(76)=8.0_ki*abb473(64)
      abb473(57)=-abb473(57)-abb473(68)
      abb473(57)=abb473(64)*abb473(57)
      abb473(68)=-abb473(47)*abb473(69)
      abb473(67)=abb473(24)*abb473(67)
      abb473(30)=spbk6k3*abb473(30)
      abb473(30)=-abb473(66)+abb473(30)
      abb473(30)=spak2k3*abb473(30)
      abb473(24)=abb473(24)*spak2k4
      abb473(24)=-abb473(24)+abb473(39)
      abb473(24)=spbk6k4*abb473(24)
      abb473(24)=abb473(24)+abb473(30)+abb473(67)+abb473(68)+abb473(57)
      abb473(24)=8.0_ki*abb473(24)
      abb473(30)=16.0_ki*abb473(64)
      abb473(39)=8.0_ki*abb473(16)
      abb473(57)=spbk7k5*abb473(39)
      abb473(27)=8.0_ki*abb473(27)
      abb473(64)=-spbk4k3*abb473(27)
      abb473(66)=16.0_ki*abb473(31)
      abb473(31)=8.0_ki*abb473(31)
      abb473(67)=-spbk7k4*abb473(39)
      abb473(68)=spak3k4*spbk3k2**2
      abb473(69)=abb473(68)*abb473(14)*abb473(16)
      abb473(23)=-abb473(23)*abb473(62)
      abb473(38)=abb473(38)*spbk3k2
      abb473(23)=abb473(38)+abb473(23)
      abb473(23)=abb473(10)*abb473(23)
      abb473(10)=abb473(10)*abb473(8)
      abb473(78)=abb473(10)*spbk6k3
      abb473(79)=es12*abb473(78)
      abb473(23)=abb473(79)+abb473(69)+abb473(23)
      abb473(23)=8.0_ki*abb473(23)
      abb473(69)=abb473(8)*spbk2k1
      abb473(43)=abb473(69)*abb473(43)
      abb473(79)=abb473(62)*abb473(58)
      abb473(80)=abb473(79)+abb473(34)
      abb473(80)=spbk3k2*abb473(80)
      abb473(80)=abb473(43)+abb473(80)
      abb473(80)=16.0_ki*abb473(80)
      abb473(81)=abb473(14)*abb473(8)
      abb473(82)=-spbk3k2*abb473(81)
      abb473(78)=abb473(82)+abb473(78)
      abb473(78)=16.0_ki*abb473(78)
      abb473(34)=abb473(79)-abb473(34)
      abb473(34)=spbk3k2*abb473(34)
      abb473(34)=-abb473(43)+abb473(34)
      abb473(34)=8.0_ki*abb473(34)
      abb473(43)=spak3k4*spbk6k3**2
      abb473(58)=8.0_ki*abb473(58)*abb473(43)
      abb473(68)=abb473(39)*abb473(68)
      abb473(79)=16.0_ki*abb473(8)
      abb473(82)=-spbk3k2*abb473(79)
      abb473(8)=-es12*spbk6k3*abb473(8)
      abb473(8)=abb473(8)-abb473(38)
      abb473(38)=-spak1k6*abb473(7)*abb473(43)
      abb473(8)=2.0_ki*abb473(8)+abb473(38)
      abb473(8)=8.0_ki*abb473(8)
      abb473(38)=-spak5k6*spbk6k2**2*abb473(39)
      abb473(43)=abb473(7)*spbk6k2
      abb473(83)=abb473(43)*spak1k5
      abb473(84)=-16.0_ki*abb473(83)
      abb473(83)=8.0_ki*abb473(83)
      abb473(16)=16.0_ki*spbk6k2*abb473(16)
      abb473(85)=abb473(43)*spak2k5
      abb473(86)=16.0_ki*abb473(85)
      abb473(87)=8.0_ki*abb473(85)
      abb473(59)=8.0_ki*abb473(59)
      abb473(88)=abb473(7)*abb473(59)
      abb473(43)=abb473(43)*spak5k6
      abb473(89)=8.0_ki*abb473(43)
      abb473(6)=abb473(43)*abb473(6)
      abb473(12)=abb473(85)*abb473(12)
      abb473(6)=abb473(6)+abb473(12)
      abb473(12)=-8.0_ki*abb473(6)
      abb473(90)=8.0_ki*abb473(48)
      abb473(14)=abb473(42)*abb473(14)
      abb473(22)=abb473(22)*abb473(85)
      abb473(14)=abb473(14)-abb473(22)
      abb473(22)=16.0_ki*abb473(14)
      abb473(42)=16.0_ki*abb473(6)
      abb473(6)=abb473(6)+abb473(14)
      abb473(6)=8.0_ki*abb473(6)
      abb473(14)=abb473(41)*abb473(59)
      abb473(41)=16.0_ki*abb473(48)
      abb473(48)=-spbk7k2*abb473(85)
      abb473(59)=-spbk7k6*abb473(43)
      abb473(48)=abb473(48)+abb473(59)
      abb473(59)=8.0_ki*spak2k3
      abb473(48)=abb473(48)*abb473(59)
      abb473(47)=-abb473(47)*abb473(59)
      abb473(59)=spak3k4*spbk3k2
      abb473(85)=-abb473(85)*abb473(59)
      abb473(43)=abb473(62)*abb473(43)
      abb473(10)=-spbk6k1*abb473(10)
      abb473(62)=-spbk2k1*abb473(81)
      abb473(10)=abb473(62)+abb473(10)+abb473(85)+abb473(43)
      abb473(10)=8.0_ki*abb473(10)
      abb473(43)=-abb473(7)*abb473(59)
      abb473(43)=abb473(43)-abb473(69)
      abb473(43)=8.0_ki*abb473(43)
      abb473(27)=-spbk3k1*abb473(27)
      abb473(39)=spbk7k1*abb473(39)
      abb473(59)=spbk3k1*abb473(79)
      abb473(7)=8.0_ki*abb473(7)
      R2d473=0.0_ki
      rat2 = rat2 + R2d473
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='473' value='", &
          & R2d473, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd473h1
