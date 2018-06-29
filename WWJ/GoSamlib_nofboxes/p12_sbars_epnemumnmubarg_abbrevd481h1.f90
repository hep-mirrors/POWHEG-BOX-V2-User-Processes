module     p12_sbars_epnemumnmubarg_abbrevd481h1
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(83), public :: abb481
   complex(ki), public :: R2d481
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p12_sbars_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_color, only: TR
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb481(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb481(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb481(3)=NC**(-1)
      abb481(4)=sqrt2**(-1)
      abb481(5)=spak2k7**(-1)
      abb481(6)=es712*spbk4k3
      abb481(7)=es71*spbk4k3
      abb481(8)=es12*spbk4k3
      abb481(6)=-abb481(6)+abb481(7)+abb481(8)
      abb481(6)=abb481(6)*spak4k5
      abb481(9)=-es12*abb481(6)
      abb481(10)=es71-es712
      abb481(11)=abb481(10)+es12
      abb481(12)=abb481(11)*spbk3k1
      abb481(13)=spak1k5*es12
      abb481(14)=-abb481(12)*abb481(13)
      abb481(9)=abb481(14)+abb481(9)
      abb481(14)=gW**4*abb481(1)*abb481(2)*abb481(3)*abb481(4)*abb481(5)*c1*TR*&
      &i_
      abb481(15)=8.0_ki*abb481(14)
      abb481(16)=abb481(15)*spbk7k6
      abb481(9)=spak1k4*abb481(9)*abb481(16)
      abb481(17)=spbk7k2*spak2k5
      abb481(18)=spbk6k3*spak3k4
      abb481(19)=abb481(17)*abb481(18)
      abb481(20)=spak1k2*spbk3k2
      abb481(21)=-abb481(20)*abb481(19)
      abb481(22)=es12*spbk6k3
      abb481(23)=abb481(20)*spbk6k1
      abb481(22)=abb481(22)+abb481(23)
      abb481(23)=spak1k4*abb481(17)*abb481(22)
      abb481(21)=abb481(21)+abb481(23)
      abb481(23)=16.0_ki*abb481(14)
      abb481(21)=abb481(21)*abb481(23)
      abb481(24)=abb481(20)*spak4k5
      abb481(25)=abb481(11)*abb481(24)
      abb481(26)=abb481(23)*spbk7k6
      abb481(27)=abb481(25)*abb481(26)
      abb481(28)=spak1k5*spbk3k1
      abb481(29)=es12-es71
      abb481(30)=-abb481(29)*abb481(28)
      abb481(7)=abb481(7)-abb481(8)
      abb481(7)=spak4k5*abb481(7)
      abb481(7)=abb481(30)+abb481(7)
      abb481(7)=spak1k4*abb481(7)*abb481(26)
      abb481(30)=spbk6k3*spbk7k1
      abb481(31)=spbk7k3*spbk6k1
      abb481(30)=abb481(30)-abb481(31)
      abb481(32)=spak1k4*spak1k5
      abb481(33)=abb481(30)*abb481(32)
      abb481(34)=abb481(18)*spbk7k3
      abb481(35)=abb481(34)*spak1k5
      abb481(33)=abb481(35)+abb481(33)
      abb481(35)=32.0_ki*abb481(14)
      abb481(36)=abb481(33)*abb481(35)
      abb481(37)=spak4k5*spbk7k3
      abb481(38)=abb481(37)*spak1k7
      abb481(38)=abb481(38)-abb481(24)
      abb481(14)=abb481(14)*spbk7k6
      abb481(14)=32.0_ki*abb481(14)
      abb481(39)=abb481(38)*abb481(14)
      abb481(12)=spak1k5*abb481(12)
      abb481(6)=abb481(12)+abb481(6)
      abb481(6)=spak1k4*abb481(6)
      abb481(6)=-abb481(25)+abb481(6)
      abb481(6)=abb481(6)*abb481(26)
      abb481(12)=spak1k4*spbk6k3
      abb481(40)=abb481(12)*abb481(17)
      abb481(41)=-abb481(35)*abb481(40)
      abb481(38)=abb481(38)*spbk7k6
      abb481(42)=abb481(40)+abb481(38)
      abb481(35)=abb481(42)*abb481(35)
      abb481(42)=abb481(13)*spbk3k1
      abb481(43)=spak4k5*abb481(8)
      abb481(42)=abb481(42)+abb481(43)
      abb481(42)=spak1k4*abb481(42)
      abb481(25)=-abb481(25)+abb481(42)
      abb481(25)=abb481(25)*abb481(16)
      abb481(42)=abb481(26)*abb481(24)
      abb481(38)=abb481(38)+abb481(33)
      abb481(38)=abb481(38)*abb481(23)
      abb481(43)=spbk7k6*abb481(24)
      abb481(40)=-abb481(40)+abb481(43)
      abb481(40)=abb481(40)*abb481(23)
      abb481(43)=abb481(24)*abb481(16)
      abb481(44)=spak4k5*spbk4k3
      abb481(44)=abb481(28)+abb481(44)
      abb481(45)=abb481(16)*spak1k2
      abb481(44)=spak1k4*abb481(45)*spbk7k1*abb481(44)
      abb481(46)=abb481(26)*spak1k2
      abb481(47)=abb481(46)*abb481(37)
      abb481(37)=-abb481(37)*abb481(45)
      abb481(10)=abb481(10)*spbk7k3
      abb481(48)=es12*spbk7k3
      abb481(10)=abb481(10)+abb481(48)
      abb481(49)=-es12*abb481(10)
      abb481(50)=abb481(11)*spbk7k1
      abb481(51)=-abb481(50)*abb481(20)
      abb481(49)=abb481(49)+abb481(51)
      abb481(49)=spak1k4*abb481(49)
      abb481(51)=spak3k4*abb481(10)
      abb481(52)=abb481(51)*abb481(20)
      abb481(49)=abb481(52)+abb481(49)
      abb481(49)=abb481(49)*abb481(15)
      abb481(52)=abb481(20)*spbk7k1
      abb481(48)=abb481(52)+abb481(48)
      abb481(48)=abb481(48)*spak1k4
      abb481(52)=abb481(20)*spbk7k3
      abb481(53)=spbk7k3**2
      abb481(54)=-spak1k7*abb481(53)
      abb481(54)=abb481(54)+abb481(52)
      abb481(54)=spak3k4*abb481(54)
      abb481(54)=-abb481(48)+abb481(54)
      abb481(54)=abb481(54)*abb481(23)
      abb481(55)=abb481(23)*spak1k4
      abb481(10)=abb481(10)*abb481(55)
      abb481(52)=-spak3k4*abb481(52)
      abb481(48)=abb481(52)+abb481(48)
      abb481(48)=abb481(48)*abb481(15)
      abb481(52)=abb481(15)*spak1k2
      abb481(56)=abb481(52)*spak3k4
      abb481(53)=abb481(53)*abb481(56)
      abb481(30)=abb481(30)*spak1k4
      abb481(30)=abb481(34)+abb481(30)
      abb481(30)=spak1k2*abb481(30)
      abb481(57)=abb481(30)*abb481(23)
      abb481(30)=-abb481(30)*abb481(15)
      abb481(58)=-abb481(11)*abb481(13)
      abb481(59)=abb481(11)*spak3k5
      abb481(60)=-spbk3k2*abb481(59)
      abb481(61)=abb481(11)*spak4k5
      abb481(62)=-spbk4k2*abb481(61)
      abb481(60)=abb481(60)+abb481(62)
      abb481(60)=spak1k2*abb481(60)
      abb481(58)=abb481(58)+abb481(60)
      abb481(58)=abb481(58)*abb481(16)
      abb481(60)=abb481(23)*spbk6k2
      abb481(62)=spak1k2*abb481(17)*abb481(60)
      abb481(63)=spak4k5*spbk4k2
      abb481(64)=spbk3k2*spak3k5
      abb481(63)=abb481(63)+abb481(64)
      abb481(63)=abb481(63)*spak1k2
      abb481(65)=spbk7k3*spak3k5
      abb481(66)=spak4k5*spbk7k4
      abb481(65)=abb481(65)+abb481(66)
      abb481(66)=spak1k7*abb481(65)
      abb481(29)=abb481(29)*spak1k5
      abb481(29)=-abb481(63)-abb481(29)+abb481(66)
      abb481(29)=abb481(29)*abb481(26)
      abb481(14)=abb481(14)*spak1k5
      abb481(66)=abb481(26)*spak1k5
      abb481(67)=abb481(11)*abb481(66)
      abb481(63)=abb481(13)+abb481(63)
      abb481(63)=abb481(63)*abb481(16)
      abb481(68)=spak1k5*spbk7k1
      abb481(65)=abb481(68)-abb481(65)
      abb481(65)=abb481(65)*abb481(45)
      abb481(52)=abb481(52)*spbk7k2
      abb481(68)=-abb481(11)*abb481(52)
      abb481(69)=-spak1k2*spbk7k2*abb481(23)
      abb481(70)=spbk7k2*spak5k7
      abb481(71)=abb481(70)*abb481(22)
      abb481(72)=spak4k5*spbk6k2
      abb481(8)=-abb481(72)*abb481(8)
      abb481(13)=abb481(13)*spbk6k2
      abb481(73)=-spbk3k1*abb481(13)
      abb481(8)=abb481(8)+abb481(73)+abb481(71)
      abb481(8)=spak1k4*abb481(8)
      abb481(20)=abb481(18)*abb481(20)
      abb481(71)=-abb481(70)*abb481(20)
      abb481(8)=abb481(71)+abb481(8)
      abb481(8)=abb481(8)*abb481(15)
      abb481(71)=abb481(60)*abb481(24)
      abb481(73)=spbk6k3*spbk2k1
      abb481(74)=spbk3k2*spbk6k1
      abb481(73)=abb481(73)+abb481(74)
      abb481(73)=abb481(73)*abb481(32)
      abb481(74)=-spak1k5*spbk3k2*abb481(18)
      abb481(73)=abb481(74)+abb481(73)
      abb481(73)=abb481(73)*abb481(23)
      abb481(74)=-spbk6k3*abb481(70)
      abb481(28)=spbk6k2*abb481(28)
      abb481(75)=spbk4k3*abb481(72)
      abb481(28)=abb481(75)+abb481(74)+abb481(28)
      abb481(28)=spak1k4*abb481(28)
      abb481(24)=abb481(24)*spbk6k2
      abb481(28)=-abb481(24)+abb481(28)
      abb481(28)=abb481(28)*abb481(23)
      abb481(24)=-abb481(15)*abb481(24)
      abb481(33)=-abb481(33)*abb481(15)
      abb481(56)=spbk3k2**2*abb481(56)
      abb481(74)=spbk3k2*abb481(55)
      abb481(75)=-spbk6k3*es71
      abb481(31)=-spak1k7*abb481(31)
      abb481(76)=spak1k4*spbk6k1
      abb481(77)=spbk4k3*abb481(76)
      abb481(22)=abb481(77)+abb481(75)+abb481(31)-abb481(22)
      abb481(22)=spak1k4*abb481(22)
      abb481(31)=spak1k7*abb481(34)
      abb481(20)=abb481(22)+abb481(31)+abb481(20)
      abb481(20)=abb481(20)*abb481(15)
      abb481(22)=abb481(12)*abb481(23)
      abb481(12)=-abb481(15)*abb481(12)
      abb481(31)=abb481(70)-abb481(64)
      abb481(31)=spbk6k2*abb481(31)
      abb481(34)=-spbk4k2*abb481(72)
      abb481(31)=abb481(34)+abb481(31)
      abb481(31)=spak1k2*abb481(31)
      abb481(13)=-abb481(13)+abb481(31)
      abb481(13)=abb481(13)*abb481(15)
      abb481(31)=abb481(23)*spak1k5
      abb481(34)=abb481(31)*spbk6k2
      abb481(64)=spak1k5*abb481(16)
      abb481(75)=-spbk6k3*spak1k3
      abb481(77)=-spak1k2*spbk6k2
      abb481(78)=-spak1k4*spbk6k4
      abb481(79)=-spbk7k6*spak1k7
      abb481(75)=abb481(79)+abb481(78)+abb481(75)+abb481(77)
      abb481(75)=abb481(75)*abb481(15)
      abb481(77)=abb481(15)*spbk6k1
      abb481(32)=abb481(77)*abb481(32)
      abb481(78)=-spbk4k3*abb481(32)
      abb481(31)=abb481(31)*spbk6k3
      abb481(79)=abb481(15)*spak1k5
      abb481(80)=spbk6k3*abb481(79)
      abb481(79)=spbk6k4*abb481(79)
      abb481(11)=-abb481(11)*abb481(15)
      abb481(81)=abb481(17)*abb481(23)
      abb481(82)=abb481(15)*abb481(17)
      abb481(70)=abb481(70)*abb481(15)
      abb481(83)=-abb481(16)*abb481(61)
      abb481(72)=abb481(72)*abb481(15)
      abb481(17)=abb481(76)*abb481(17)
      abb481(17)=abb481(17)-abb481(19)
      abb481(19)=abb481(17)*abb481(23)
      abb481(23)=abb481(26)*abb481(61)
      abb481(26)=-spbk7k6*abb481(61)
      abb481(17)=abb481(26)+abb481(17)
      abb481(17)=abb481(17)*abb481(15)
      abb481(26)=-spak1k4*abb481(50)
      abb481(26)=abb481(26)+abb481(51)
      abb481(26)=abb481(26)*abb481(15)
      abb481(16)=-abb481(59)*abb481(16)
      abb481(18)=-abb481(18)+abb481(76)
      abb481(18)=abb481(18)*abb481(70)
      abb481(50)=spak4k5*abb481(60)
      abb481(51)=spbk3k2*spak3k4
      abb481(59)=spak1k4*spbk2k1
      abb481(51)=abb481(51)+abb481(59)
      abb481(51)=abb481(51)*abb481(15)
      abb481(59)=-spak3k5*abb481(15)*spbk6k2
      abb481(32)=-spbk3k1*abb481(32)
      abb481(55)=-spbk3k1*abb481(55)
      abb481(60)=-spak1k5*abb481(77)
      R2d481=0.0_ki
      rat2 = rat2 + R2d481
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='481' value='", &
          & R2d481, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd481h1
