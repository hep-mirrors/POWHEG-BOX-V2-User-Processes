module     p12_sbars_epnemumnmubarg_abbrevd205h1
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(77), public :: abb205
   complex(ki), public :: R2d205
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
      abb205(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb205(2)=1.0_ki/(-mZ**2+es712+i_*mZ*wZ)
      abb205(3)=NC**(-1)
      abb205(4)=sqrt2**(-1)
      abb205(5)=es345**(-1)
      abb205(6)=es71**(-1)
      abb205(7)=spak2k7**(-1)
      abb205(8)=1.0_ki/(es34-es56+es712-es345)
      abb205(9)=es712**(-1)
      abb205(10)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb205(11)=es456**(-1)
      abb205(12)=1.0_ki/(-es34+es56+es712-es456)
      abb205(13)=1.0_ki/(es71+es34+es56-es712-es234)
      abb205(14)=spak4k7*spbk7k3
      abb205(15)=spbk3k1*spak1k4
      abb205(14)=abb205(14)-abb205(15)
      abb205(15)=spbk5k3*spak4k5
      abb205(16)=spak4k6*spbk6k3
      abb205(15)=abb205(15)+abb205(16)-abb205(14)
      abb205(17)=i_*TR
      abb205(18)=abb205(17)*abb205(10)
      abb205(19)=abb205(18)*abb205(1)
      abb205(20)=c1*spak1k2*abb205(7)*abb205(4)
      abb205(21)=abb205(20)*gW**2
      abb205(22)=abb205(21)*abb205(19)
      abb205(23)=abb205(22)*spbk7k1
      abb205(24)=NC-abb205(3)
      abb205(25)=abb205(24)*abb205(6)
      abb205(26)=abb205(23)*abb205(25)
      abb205(27)=1.0_ki/3.0_ki*abb205(9)
      abb205(28)=abb205(27)*spbk6k2
      abb205(29)=abb205(26)*abb205(28)
      abb205(30)=gSl*abb205(2)
      abb205(31)=abb205(23)*abb205(30)
      abb205(32)=abb205(31)*abb205(25)
      abb205(33)=gWWZ*spbk6k2
      abb205(34)=abb205(32)*abb205(33)
      abb205(29)=abb205(29)+abb205(34)
      abb205(34)=abb205(29)*abb205(15)
      abb205(35)=abb205(8)*spbk6k3
      abb205(36)=abb205(35)*gmul
      abb205(37)=abb205(36)*spak4k6
      abb205(38)=2.0_ki*spbk6k2
      abb205(39)=abb205(38)*abb205(37)
      abb205(40)=gnmul*abb205(5)
      abb205(41)=abb205(40)*spak4k5
      abb205(42)=abb205(41)*abb205(38)
      abb205(43)=-spbk5k3*abb205(42)
      abb205(39)=abb205(43)+abb205(39)
      abb205(17)=abb205(17)*abb205(1)
      abb205(43)=abb205(17)*abb205(21)*spbk7k1
      abb205(44)=abb205(25)*abb205(43)
      abb205(45)=abb205(30)*abb205(44)
      abb205(39)=abb205(45)*abb205(39)
      abb205(46)=abb205(9)*spak4k5
      abb205(46)=2.0_ki/3.0_ki*abb205(46)
      abb205(47)=abb205(18)*spbk7k1
      abb205(48)=abb205(46)*abb205(47)
      abb205(49)=-abb205(21)*abb205(24)
      abb205(50)=-abb205(6)*abb205(49)
      abb205(51)=abb205(50)*abb205(48)
      abb205(52)=abb205(11)*spbk3k2
      abb205(53)=abb205(52)*spbk6k5
      abb205(54)=-abb205(53)*abb205(51)
      abb205(55)=abb205(27)*spbk3k2
      abb205(56)=abb205(26)*abb205(55)
      abb205(57)=gWWZ*spbk3k2
      abb205(58)=abb205(32)*abb205(57)
      abb205(56)=abb205(56)+abb205(58)
      abb205(58)=abb205(56)*spbk6k2
      abb205(59)=spak2k4*abb205(58)
      abb205(60)=abb205(56)*spak1k4
      abb205(61)=-spbk6k1*abb205(60)
      abb205(62)=spbk6k3*spak4k5
      abb205(63)=abb205(62)*abb205(27)
      abb205(26)=abb205(26)*abb205(63)
      abb205(64)=abb205(62)*gWWZ
      abb205(32)=abb205(32)*abb205(64)
      abb205(26)=abb205(26)+abb205(32)
      abb205(32)=-spbk5k2*abb205(26)
      abb205(16)=abb205(8)*abb205(9)*abb205(16)
      abb205(16)=2.0_ki/3.0_ki*abb205(16)
      abb205(65)=abb205(16)*spbk6k2
      abb205(66)=abb205(44)*abb205(65)
      abb205(32)=abb205(32)+abb205(61)+abb205(59)+abb205(54)+abb205(66)+abb205(&
      &39)+abb205(34)
      abb205(32)=spak1k5*abb205(32)
      abb205(34)=spak3k5*spbk6k3
      abb205(39)=spbk7k6*spak5k7
      abb205(54)=-abb205(34)+abb205(39)
      abb205(54)=abb205(56)*abb205(54)
      abb205(26)=spbk4k2*abb205(26)
      abb205(42)=-spbk4k3*abb205(45)*abb205(42)
      abb205(26)=abb205(42)+abb205(26)+abb205(54)
      abb205(26)=spak1k4*abb205(26)
      abb205(29)=-spak1k6*abb205(29)
      abb205(42)=spak1k3*abb205(56)
      abb205(29)=abb205(42)+abb205(29)
      abb205(29)=abb205(62)*abb205(29)
      abb205(42)=-spak4k5*abb205(60)
      abb205(54)=abb205(52)*spak1k4
      abb205(51)=-abb205(54)*abb205(51)
      abb205(42)=abb205(42)+abb205(51)
      abb205(42)=spbk6k4*abb205(42)
      abb205(51)=-spak1k4*abb205(58)
      abb205(19)=gW**4*abb205(20)*abb205(19)
      abb205(20)=abb205(19)*abb205(25)
      abb205(56)=abb205(20)*spbk7k1
      abb205(58)=spak1k4*spbk3k2
      abb205(59)=abb205(38)*abb205(13)
      abb205(60)=-abb205(56)*abb205(59)*abb205(58)
      abb205(51)=abb205(51)+abb205(60)
      abb205(51)=spak2k5*abb205(51)
      abb205(60)=spbk6k3*gnel*abb205(12)
      abb205(61)=2.0_ki*abb205(60)
      abb205(66)=abb205(61)*spak3k5
      abb205(67)=abb205(58)*abb205(66)
      abb205(68)=abb205(54)*spbk6k4
      abb205(69)=-spak1k5*abb205(53)
      abb205(69)=-abb205(68)+abb205(69)
      abb205(70)=2.0_ki*gel
      abb205(69)=abb205(70)*spak4k5*abb205(69)
      abb205(69)=abb205(67)+abb205(69)
      abb205(21)=abb205(21)*abb205(30)
      abb205(47)=abb205(21)*abb205(47)
      abb205(71)=abb205(47)*abb205(25)
      abb205(69)=abb205(71)*abb205(69)
      abb205(72)=abb205(35)*abb205(55)
      abb205(44)=-abb205(44)*abb205(72)
      abb205(73)=abb205(36)*spbk3k2
      abb205(45)=-abb205(45)*abb205(73)
      abb205(44)=abb205(44)+abb205(45)
      abb205(45)=2.0_ki*spak3k4
      abb205(44)=abb205(45)*spak1k5*abb205(44)
      abb205(74)=abb205(13)*spbk6k2
      abb205(75)=spak1k4*spbk6k3
      abb205(56)=abb205(56)*abb205(74)*abb205(75)
      abb205(76)=abb205(60)*spbk6k2
      abb205(71)=-spak1k4*abb205(71)*abb205(76)
      abb205(56)=abb205(56)+abb205(71)
      abb205(71)=2.0_ki*spak5k6
      abb205(56)=abb205(56)*abb205(71)
      abb205(26)=abb205(56)+abb205(44)+abb205(51)+abb205(42)+abb205(32)+abb205(&
      &26)+abb205(69)+abb205(29)
      abb205(26)=4.0_ki*abb205(26)
      abb205(29)=abb205(6)**2
      abb205(24)=abb205(24)*abb205(29)
      abb205(23)=abb205(23)*abb205(24)
      abb205(32)=abb205(28)*abb205(23)
      abb205(31)=abb205(31)*abb205(24)
      abb205(42)=abb205(31)*abb205(33)
      abb205(32)=abb205(32)+abb205(42)
      abb205(15)=-abb205(32)*abb205(15)
      abb205(42)=abb205(31)*abb205(57)
      abb205(44)=abb205(55)*abb205(23)
      abb205(42)=abb205(42)+abb205(44)
      abb205(44)=spbk6k2*abb205(42)
      abb205(51)=abb205(44)*spak2k4
      abb205(23)=abb205(63)*abb205(23)
      abb205(31)=abb205(64)*abb205(31)
      abb205(23)=abb205(23)+abb205(31)
      abb205(31)=abb205(23)*spbk5k2
      abb205(43)=abb205(24)*abb205(43)
      abb205(56)=-abb205(30)*abb205(43)
      abb205(38)=abb205(56)*abb205(38)
      abb205(69)=abb205(38)*abb205(41)
      abb205(77)=abb205(69)*spbk5k3
      abb205(38)=abb205(37)*abb205(38)
      abb205(29)=-abb205(49)*abb205(29)*abb205(48)
      abb205(48)=abb205(29)*abb205(53)
      abb205(49)=abb205(65)*abb205(43)
      abb205(15)=abb205(31)-abb205(51)-abb205(77)+abb205(38)+abb205(48)-abb205(&
      &49)+abb205(15)
      abb205(31)=abb205(73)*abb205(56)
      abb205(38)=abb205(72)*abb205(43)
      abb205(31)=abb205(31)-abb205(38)
      abb205(31)=abb205(31)*abb205(45)
      abb205(38)=abb205(42)*spak1k4
      abb205(43)=abb205(38)*spbk6k1
      abb205(43)=-abb205(31)+abb205(43)+abb205(15)
      abb205(43)=spak1k5*abb205(43)
      abb205(34)=abb205(42)*abb205(34)
      abb205(23)=abb205(23)*spbk4k2
      abb205(48)=abb205(69)*spbk4k3
      abb205(23)=-abb205(23)+abb205(34)-abb205(48)
      abb205(34)=abb205(23)*spak1k4
      abb205(48)=abb205(44)*spak1k4
      abb205(19)=-abb205(19)*spbk7k1*abb205(24)
      abb205(49)=abb205(19)*abb205(59)
      abb205(51)=abb205(49)*abb205(58)
      abb205(48)=abb205(48)-abb205(51)
      abb205(48)=abb205(48)*spak2k5
      abb205(51)=spak4k5*abb205(42)
      abb205(56)=abb205(51)*spak1k4
      abb205(54)=abb205(29)*abb205(54)
      abb205(54)=abb205(54)+abb205(56)
      abb205(54)=abb205(54)*spbk6k4
      abb205(19)=abb205(74)*abb205(19)
      abb205(56)=abb205(19)*abb205(75)
      abb205(24)=abb205(47)*abb205(24)
      abb205(47)=abb205(24)*abb205(76)
      abb205(58)=abb205(47)*spak1k4
      abb205(56)=abb205(56)+abb205(58)
      abb205(56)=abb205(56)*abb205(71)
      abb205(58)=abb205(24)*spak4k5
      abb205(65)=abb205(68)*abb205(58)
      abb205(53)=abb205(58)*abb205(53)
      abb205(68)=abb205(53)*spak1k5
      abb205(65)=abb205(65)+abb205(68)
      abb205(65)=abb205(65)*abb205(70)
      abb205(38)=abb205(38)*abb205(39)
      abb205(68)=abb205(62)*abb205(42)
      abb205(69)=abb205(68)*spak1k3
      abb205(32)=abb205(62)*abb205(32)
      abb205(62)=abb205(32)*spak1k6
      abb205(67)=abb205(67)*abb205(24)
      abb205(34)=-abb205(67)-abb205(69)+abb205(62)-abb205(38)+abb205(34)+abb205&
      &(56)+abb205(65)+abb205(48)+abb205(54)+abb205(43)
      abb205(38)=-16.0_ki*abb205(34)
      abb205(43)=abb205(25)*abb205(22)
      abb205(48)=abb205(63)*abb205(43)
      abb205(22)=abb205(22)*abb205(25)*abb205(30)
      abb205(30)=abb205(64)*abb205(22)
      abb205(30)=abb205(48)+abb205(30)
      abb205(48)=abb205(30)*spbk7k2
      abb205(54)=abb205(20)*spbk7k3
      abb205(56)=abb205(54)*abb205(59)
      abb205(62)=abb205(56)*spak4k5
      abb205(62)=abb205(62)+abb205(48)
      abb205(62)=16.0_ki*abb205(62)
      abb205(48)=16.0_ki*abb205(48)
      abb205(63)=32.0_ki*spak4k5*abb205(54)*abb205(74)
      abb205(34)=8.0_ki*abb205(34)
      abb205(64)=8.0_ki*abb205(30)
      abb205(65)=spbk7k6*abb205(64)
      abb205(21)=abb205(21)*abb205(25)
      abb205(25)=-abb205(17)*abb205(21)
      abb205(67)=2.0_ki*spak4k5
      abb205(40)=abb205(67)*abb205(25)*abb205(40)
      abb205(69)=abb205(22)*gWWZ
      abb205(72)=abb205(43)*abb205(27)
      abb205(69)=abb205(72)+abb205(69)
      abb205(72)=spak4k5*abb205(69)
      abb205(73)=abb205(40)+abb205(72)
      abb205(73)=abb205(73)*spbk5k3
      abb205(74)=spbk6k3*abb205(69)
      abb205(75)=abb205(74)*spak4k6
      abb205(14)=abb205(69)*abb205(14)
      abb205(37)=abb205(37)*abb205(25)
      abb205(17)=-abb205(17)*abb205(50)
      abb205(16)=abb205(17)*abb205(16)
      abb205(14)=-2.0_ki*abb205(37)+abb205(75)-abb205(16)+abb205(73)-abb205(14)
      abb205(16)=abb205(22)*abb205(57)
      abb205(37)=abb205(43)*abb205(55)
      abb205(16)=abb205(37)+abb205(16)
      abb205(37)=spak2k4*abb205(16)
      abb205(37)=abb205(37)+abb205(14)
      abb205(37)=spbk7k2*abb205(37)
      abb205(55)=spak4k6*abb205(56)
      abb205(54)=abb205(54)*abb205(13)
      abb205(57)=spbk5k2*abb205(67)*abb205(54)
      abb205(37)=abb205(57)+abb205(55)+abb205(37)
      abb205(37)=8.0_ki*abb205(37)
      abb205(50)=-abb205(11)*abb205(18)*abb205(50)
      abb205(55)=abb205(50)*abb205(27)
      abb205(18)=-abb205(18)*abb205(21)
      abb205(21)=abb205(11)*abb205(18)*gel
      abb205(57)=abb205(55)+abb205(21)
      abb205(57)=spbk6k5*spak4k5*abb205(57)
      abb205(17)=abb205(27)*abb205(17)*abb205(35)
      abb205(27)=abb205(25)*abb205(36)
      abb205(17)=abb205(17)+abb205(27)
      abb205(27)=spak3k4*abb205(17)
      abb205(27)=abb205(27)+abb205(57)
      abb205(27)=16.0_ki*spbk7k2*abb205(27)
      abb205(14)=-spbk7k6*abb205(14)
      abb205(35)=spbk7k5*abb205(30)
      abb205(36)=-spbk7k3*abb205(55)
      abb205(36)=abb205(36)+abb205(54)
      abb205(36)=spak4k5*abb205(36)
      abb205(21)=abb205(21)*abb205(67)
      abb205(54)=-spbk7k3*abb205(21)
      abb205(36)=abb205(54)+2.0_ki*abb205(36)
      abb205(36)=spbk6k5*abb205(36)
      abb205(16)=-spbk7k6*abb205(16)
      abb205(16)=abb205(16)+abb205(56)
      abb205(16)=spak2k4*abb205(16)
      abb205(17)=-abb205(45)*spbk7k3*abb205(17)
      abb205(14)=abb205(35)+abb205(17)+abb205(16)+abb205(14)+abb205(36)
      abb205(14)=8.0_ki*abb205(14)
      abb205(16)=abb205(18)*spak5k6
      abb205(17)=abb205(60)*abb205(16)
      abb205(25)=spbk4k3*abb205(25)*abb205(41)
      abb205(17)=abb205(17)+abb205(25)
      abb205(17)=16.0_ki*spbk7k2*abb205(17)
      abb205(25)=spbk6k1*spak1k5
      abb205(35)=abb205(25)-abb205(39)
      abb205(35)=abb205(35)*abb205(69)
      abb205(36)=abb205(74)*spak3k5
      abb205(18)=abb205(66)*abb205(18)
      abb205(21)=abb205(21)*spbk6k4
      abb205(18)=-abb205(21)+abb205(35)+abb205(18)+abb205(36)
      abb205(21)=abb205(50)*abb205(46)
      abb205(21)=abb205(21)-abb205(72)
      abb205(21)=abb205(21)*spbk6k4
      abb205(22)=abb205(22)*abb205(33)
      abb205(28)=abb205(43)*abb205(28)
      abb205(22)=abb205(28)+abb205(22)
      abb205(20)=abb205(20)*abb205(59)
      abb205(28)=-abb205(22)-abb205(20)
      abb205(28)=spak2k5*abb205(28)
      abb205(28)=abb205(28)+abb205(21)-abb205(18)
      abb205(28)=spbk7k2*abb205(28)
      abb205(20)=-spak5k6*spbk7k6*abb205(20)
      abb205(20)=abb205(20)+abb205(28)
      abb205(20)=8.0_ki*abb205(20)
      abb205(22)=spak2k5*abb205(22)
      abb205(18)=-abb205(21)+abb205(22)+abb205(18)
      abb205(18)=spbk7k3*abb205(18)
      abb205(21)=-spbk7k4*abb205(30)
      abb205(22)=-spbk4k3*abb205(40)
      abb205(16)=-abb205(61)*abb205(16)
      abb205(16)=abb205(22)+abb205(16)
      abb205(16)=spbk7k6*abb205(16)
      abb205(16)=abb205(21)+abb205(16)+abb205(18)
      abb205(16)=8.0_ki*abb205(16)
      abb205(18)=-spbk7k3*abb205(64)
      abb205(21)=spbk7k6*spak4k7*abb205(42)
      abb205(15)=abb205(31)+abb205(21)-abb205(15)
      abb205(15)=spak5k7*abb205(15)
      abb205(21)=-abb205(52)*abb205(29)
      abb205(21)=-abb205(51)+abb205(21)
      abb205(21)=spbk6k4*abb205(21)
      abb205(22)=spbk3k2*abb205(49)
      abb205(22)=-abb205(44)+abb205(22)
      abb205(22)=spak2k5*abb205(22)
      abb205(25)=-abb205(42)*abb205(25)
      abb205(19)=-spbk6k3*abb205(19)
      abb205(19)=abb205(19)-abb205(47)
      abb205(19)=abb205(71)*abb205(19)
      abb205(24)=spbk3k2*abb205(66)*abb205(24)
      abb205(19)=abb205(19)+abb205(22)+abb205(21)+abb205(25)+abb205(24)-abb205(&
      &23)
      abb205(19)=spak4k7*abb205(19)
      abb205(21)=-spak4k7*abb205(52)*abb205(58)*spbk6k4
      abb205(22)=-spak5k7*abb205(53)
      abb205(21)=abb205(21)+abb205(22)
      abb205(21)=abb205(21)*abb205(70)
      abb205(22)=-spak6k7*abb205(32)
      abb205(23)=spak3k7*abb205(68)
      abb205(15)=abb205(23)+abb205(22)+abb205(21)+abb205(19)+abb205(15)
      abb205(15)=4.0_ki*abb205(15)
      R2d205=0.0_ki
      rat2 = rat2 + R2d205
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='205' value='", &
          & R2d205, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd205h1
