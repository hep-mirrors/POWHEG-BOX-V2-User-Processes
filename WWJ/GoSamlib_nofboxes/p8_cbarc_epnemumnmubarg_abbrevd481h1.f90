module     p8_cbarc_epnemumnmubarg_abbrevd481h1
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(71), public :: abb481
   complex(ki), public :: R2d481
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
      abb481(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb481(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb481(3)=NC**(-1)
      abb481(4)=sqrt2**(-1)
      abb481(5)=spak2k7**(-1)
      abb481(6)=spbk6k3*spak3k4
      abb481(7)=spbk7k6*spak4k7
      abb481(8)=abb481(6)+abb481(7)
      abb481(9)=spak1k5*es71
      abb481(10)=spak2k5*spbk7k2
      abb481(11)=abb481(10)*spak1k7
      abb481(9)=abb481(9)-abb481(11)
      abb481(11)=gW**4*abb481(1)*abb481(2)*abb481(3)*abb481(4)*abb481(5)*c1*TR*&
      &i_
      abb481(12)=16.0_ki*abb481(11)
      abb481(13)=abb481(12)*spbk7k3
      abb481(14)=-abb481(13)*abb481(9)*abb481(8)
      abb481(15)=spak1k4*spak5k7
      abb481(16)=spak4k5*spak1k7
      abb481(17)=abb481(15)+abb481(16)
      abb481(18)=spbk7k3*spbk7k6
      abb481(17)=abb481(17)*abb481(18)
      abb481(19)=spak1k5*spbk7k1
      abb481(19)=abb481(19)+abb481(10)
      abb481(20)=spbk6k3*spak1k4*abb481(19)
      abb481(21)=spak4k5*spbk4k3
      abb481(22)=abb481(21)*spbk7k6
      abb481(23)=abb481(22)*spak1k4
      abb481(17)=abb481(17)+abb481(20)-abb481(23)
      abb481(23)=32.0_ki*abb481(11)
      abb481(24)=-abb481(17)*abb481(23)
      abb481(25)=abb481(18)*spak1k7
      abb481(26)=abb481(25)*abb481(11)*spak4k5
      abb481(26)=32.0_ki*abb481(26)
      abb481(27)=spbk6k3*spak1k5
      abb481(28)=es71+es12
      abb481(29)=abb481(28)-es712
      abb481(30)=abb481(29)*spak3k4
      abb481(31)=-abb481(27)*abb481(30)
      abb481(32)=spbk7k6*spak1k5
      abb481(33)=abb481(32)*spak4k7
      abb481(34)=-abb481(29)*abb481(33)
      abb481(31)=abb481(31)+abb481(34)
      abb481(31)=abb481(31)*abb481(13)
      abb481(34)=spbk7k2*spak2k4
      abb481(35)=abb481(34)*abb481(23)*abb481(27)
      abb481(36)=spak3k4*abb481(27)
      abb481(36)=abb481(36)+abb481(33)
      abb481(11)=8.0_ki*abb481(11)
      abb481(37)=abb481(11)*spbk7k3
      abb481(36)=abb481(37)*es12*abb481(36)
      abb481(38)=abb481(12)*spak4k5
      abb481(39)=spbk7k3*spak1k2
      abb481(40)=abb481(38)*abb481(39)
      abb481(41)=abb481(40)*spbk6k2
      abb481(17)=abb481(17)*abb481(12)
      abb481(42)=abb481(27)*abb481(12)
      abb481(43)=-abb481(34)*abb481(42)
      abb481(44)=abb481(11)*abb481(39)
      abb481(45)=spak4k5*abb481(44)
      abb481(46)=-spbk6k2*abb481(45)
      abb481(19)=spak1k2*abb481(19)
      abb481(8)=-abb481(37)*abb481(19)*abb481(8)
      abb481(40)=abb481(40)*spbk7k6
      abb481(45)=-spbk7k6*abb481(45)
      abb481(47)=spak3k4*spbk7k3**2
      abb481(48)=-spak1k7*abb481(12)*abb481(47)
      abb481(23)=spak1k4*spbk7k3*abb481(23)
      abb481(49)=spak3k4*spbk3k2
      abb481(50)=spbk7k2*spak4k7
      abb481(51)=abb481(49)-abb481(50)
      abb481(51)=abb481(51)*abb481(44)
      abb481(52)=abb481(13)*spak1k4
      abb481(53)=abb481(11)*spak1k2
      abb481(47)=abb481(47)*abb481(53)
      abb481(16)=spbk7k4*abb481(16)
      abb481(9)=abb481(16)+abb481(9)
      abb481(9)=spbk7k6*abb481(9)
      abb481(16)=spak3k5*abb481(25)
      abb481(9)=abb481(9)+abb481(16)
      abb481(9)=abb481(9)*abb481(12)
      abb481(16)=abb481(29)*abb481(12)*abb481(32)
      abb481(54)=spak1k2*spak4k5*spbk7k4
      abb481(55)=-spak3k5*abb481(39)
      abb481(55)=abb481(55)-abb481(54)
      abb481(55)=spbk6k2*abb481(55)
      abb481(56)=-es12*abb481(32)
      abb481(55)=abb481(56)+abb481(55)
      abb481(55)=abb481(55)*abb481(11)
      abb481(54)=-abb481(54)+abb481(19)
      abb481(54)=spbk7k6*abb481(54)
      abb481(56)=abb481(39)*spbk7k6
      abb481(57)=-spak3k5*abb481(56)
      abb481(54)=abb481(54)+abb481(57)
      abb481(54)=abb481(54)*abb481(11)
      abb481(53)=spbk7k2*abb481(53)
      abb481(19)=abb481(19)*spbk6k3
      abb481(56)=abb481(56)*spak5k7
      abb481(22)=abb481(22)*spak1k2
      abb481(19)=abb481(19)+abb481(56)-abb481(22)
      abb481(22)=abb481(19)*abb481(12)
      abb481(19)=-abb481(19)*abb481(11)
      abb481(39)=abb481(12)*abb481(39)
      abb481(49)=abb481(49)+abb481(50)
      abb481(56)=abb481(49)*abb481(27)
      abb481(33)=spbk3k2*abb481(33)
      abb481(33)=abb481(56)+abb481(33)
      abb481(33)=abb481(33)*abb481(12)
      abb481(56)=spak1k5*spbk3k1
      abb481(57)=spak2k5*spbk3k2
      abb481(56)=abb481(56)+abb481(57)
      abb481(58)=abb481(56)-abb481(21)
      abb481(58)=abb481(58)*spbk7k6
      abb481(59)=spak1k4*abb481(58)
      abb481(15)=abb481(18)*abb481(15)
      abb481(15)=abb481(15)+abb481(20)+abb481(59)
      abb481(15)=abb481(15)*abb481(11)
      abb481(18)=abb481(12)*spbk6k3
      abb481(20)=abb481(18)*spak1k4
      abb481(59)=abb481(11)*spbk6k3
      abb481(60)=abb481(59)*spak1k4
      abb481(61)=spbk6k2*abb481(12)*spak1k5
      abb481(32)=-abb481(11)*abb481(32)
      abb481(62)=spbk7k6*spak1k7
      abb481(63)=-spak1k4*spbk6k4
      abb481(64)=-spak1k2*spbk6k2
      abb481(65)=-spbk6k3*spak1k3
      abb481(62)=abb481(62)+abb481(65)+abb481(63)+abb481(64)
      abb481(62)=abb481(62)*abb481(11)
      abb481(63)=spbk3k2*spak1k3
      abb481(64)=-spbk7k2*spak1k7
      abb481(63)=abb481(63)+abb481(64)
      abb481(63)=spak2k5*abb481(63)
      abb481(28)=es23-es123+abb481(28)
      abb481(28)=spak1k5*abb481(28)
      abb481(28)=abb481(63)+abb481(28)
      abb481(28)=spbk6k3*abb481(28)
      abb481(58)=-spak1k7*abb481(58)
      abb481(25)=-spak5k7*abb481(25)
      abb481(25)=abb481(25)+abb481(28)+abb481(58)
      abb481(25)=abb481(25)*abb481(11)
      abb481(27)=abb481(27)*abb481(11)
      abb481(13)=spak1k7*abb481(13)
      abb481(28)=spak1k5*spbk6k4*abb481(11)
      abb481(56)=-abb481(56)*abb481(60)
      abb481(58)=-spak4k7*abb481(29)*abb481(37)
      abb481(63)=abb481(29)*abb481(11)
      abb481(64)=abb481(11)*spbk3k2
      abb481(65)=spak4k7*abb481(64)
      abb481(66)=abb481(29)*spak4k5
      abb481(67)=abb481(34)*spak5k7
      abb481(67)=abb481(67)+abb481(66)
      abb481(67)=abb481(67)*spbk7k3
      abb481(68)=abb481(34)*abb481(21)
      abb481(67)=abb481(67)-abb481(68)
      abb481(68)=abb481(67)*abb481(12)
      abb481(69)=abb481(29)*spbk7k3
      abb481(70)=abb481(38)*abb481(69)
      abb481(67)=-abb481(67)*abb481(11)
      abb481(66)=-spbk7k4*abb481(66)
      abb481(69)=-spak3k5*abb481(69)
      abb481(66)=abb481(66)+abb481(69)
      abb481(66)=abb481(66)*abb481(11)
      abb481(69)=spbk7k3*spak5k7
      abb481(21)=-abb481(21)+abb481(69)
      abb481(21)=abb481(11)*abb481(50)*abb481(21)
      abb481(38)=abb481(38)*spbk3k2
      abb481(50)=spak4k5*abb481(64)
      abb481(64)=spbk3k2*spak3k5
      abb481(69)=-spbk7k2*spak5k7
      abb481(71)=spak4k5*spbk4k2
      abb481(64)=abb481(71)+abb481(64)+abb481(69)
      abb481(64)=abb481(64)*abb481(11)
      abb481(30)=abb481(37)*abb481(30)
      abb481(12)=-abb481(12)*abb481(34)
      abb481(34)=abb481(11)*abb481(34)
      abb481(69)=-abb481(49)*abb481(11)
      abb481(29)=abb481(29)*spak2k5
      abb481(6)=-abb481(29)*abb481(6)
      abb481(29)=abb481(29)*spbk7k6
      abb481(71)=-spak4k7*abb481(29)
      abb481(6)=abb481(6)+abb481(71)
      abb481(6)=abb481(6)*abb481(37)
      abb481(10)=abb481(10)*spak2k4
      abb481(18)=abb481(18)*abb481(10)
      abb481(10)=-abb481(59)*abb481(10)
      abb481(29)=abb481(11)*abb481(29)
      abb481(37)=spbk6k3*spak2k5*abb481(49)
      abb481(7)=abb481(57)*abb481(7)
      abb481(7)=abb481(37)+abb481(7)
      abb481(7)=abb481(7)*abb481(11)
      abb481(37)=-spak2k5*spbk6k2
      abb481(49)=spak1k5*spbk6k1
      abb481(37)=abb481(37)+abb481(49)
      abb481(37)=abb481(37)*abb481(11)
      R2d481=0.0_ki
      rat2 = rat2 + R2d481
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='481' value='", &
          & R2d481, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd481h1
