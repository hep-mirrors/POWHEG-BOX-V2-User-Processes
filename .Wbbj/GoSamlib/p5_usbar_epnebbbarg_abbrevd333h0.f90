module     p5_usbar_epnebbbarg_abbrevd333h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(72), public :: abb333
   complex(ki), public :: R2d333
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb333(1)=1.0_ki/(-mB**2+es67)
      abb333(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb333(3)=NC**(-1)
      abb333(4)=es234**(-1)
      abb333(5)=es567**(-1)
      abb333(6)=spbl6k2**(-1)
      abb333(7)=spbl5k2**(-1)
      abb333(8)=spak2l6**(-1)
      abb333(9)=sqrt(mB**2)
      abb333(10)=1.0_ki/(es34+es567-es12-es234)
      abb333(11)=c3*abb333(3)
      abb333(12)=abb333(3)**2
      abb333(13)=abb333(12)*c2
      abb333(11)=abb333(11)-abb333(13)
      abb333(13)=abb333(5)*i_*CVSU*abb333(2)*abb333(1)
      abb333(14)=TR*gW
      abb333(14)=abb333(14)**2
      abb333(15)=abb333(13)*abb333(14)*abb333(4)
      abb333(16)=abb333(11)*abb333(15)*spak2k4
      abb333(17)=-mB*abb333(16)
      abb333(18)=-abb333(6)*abb333(17)
      abb333(19)=spbk3k2*spak2l5
      abb333(20)=abb333(18)*abb333(19)
      abb333(21)=abb333(12)*abb333(13)
      abb333(22)=abb333(21)*c2
      abb333(13)=abb333(13)*abb333(3)
      abb333(23)=abb333(13)*c3
      abb333(22)=abb333(22)-abb333(23)
      abb333(23)=abb333(14)*abb333(6)
      abb333(24)=abb333(23)*mB
      abb333(25)=-abb333(24)*abb333(22)
      abb333(26)=spbk3k1*abb333(10)
      abb333(27)=abb333(26)*spak2l5
      abb333(28)=abb333(27)*spak1k4
      abb333(29)=abb333(25)*abb333(28)
      abb333(20)=abb333(29)-abb333(20)
      abb333(29)=-spae7k7*abb333(20)*spbe7k2
      abb333(30)=spak4l5*spbk4k3
      abb333(31)=abb333(18)*abb333(30)
      abb333(32)=spbe7k2*spae7k7
      abb333(33)=abb333(31)*abb333(32)
      abb333(29)=abb333(29)+abb333(33)
      abb333(33)=abb333(29)*spbk7k1
      abb333(34)=abb333(7)*spbk2k1
      abb333(35)=spak1k4*abb333(34)
      abb333(36)=spak3k4*spbk3k2
      abb333(37)=abb333(7)*abb333(36)
      abb333(35)=abb333(35)+abb333(37)
      abb333(26)=abb333(26)*abb333(35)
      abb333(35)=abb333(14)*mB
      abb333(37)=-abb333(26)*abb333(35)*abb333(22)
      abb333(38)=abb333(34)*spbk3k2
      abb333(39)=abb333(17)*abb333(38)
      abb333(39)=abb333(37)+abb333(39)
      abb333(40)=spbk7e7*spal6e7
      abb333(41)=abb333(40)*abb333(39)
      abb333(42)=abb333(41)*spak2k7
      abb333(34)=abb333(34)*spbk4k3
      abb333(43)=abb333(17)*abb333(34)
      abb333(44)=abb333(43)*spak4k7
      abb333(45)=abb333(44)*abb333(40)
      abb333(46)=abb333(27)*spak3k4
      abb333(47)=abb333(25)*abb333(46)
      abb333(48)=abb333(47)*spbk7k3
      abb333(49)=abb333(48)*abb333(32)
      abb333(33)=abb333(45)-abb333(33)+abb333(42)-abb333(49)
      abb333(20)=abb333(20)-abb333(31)
      abb333(31)=spbe7k2*spal6e7
      abb333(42)=-spbl6k1*abb333(31)*abb333(20)
      abb333(45)=spbe7l6*spak2l6
      abb333(49)=abb333(45)*spal6e7
      abb333(50)=abb333(39)*abb333(49)
      abb333(51)=abb333(15)*abb333(6)
      abb333(52)=mB**3
      abb333(11)=-abb333(34)*abb333(8)*abb333(11)*spak2k4**2*abb333(52)*abb333(&
      &51)
      abb333(47)=abb333(47)*spbl6k3
      abb333(53)=abb333(11)+abb333(47)
      abb333(54)=abb333(53)*abb333(31)
      abb333(55)=abb333(19)+abb333(30)
      abb333(56)=abb333(55)*abb333(9)*abb333(16)
      abb333(57)=-abb333(14)*abb333(22)
      abb333(58)=-abb333(9)*abb333(57)
      abb333(59)=abb333(58)*abb333(28)
      abb333(56)=abb333(59)+abb333(56)
      abb333(59)=spbe7k1*spal6e7
      abb333(60)=abb333(56)*abb333(59)
      abb333(43)=abb333(43)*spak4l6
      abb333(61)=abb333(43)*spbe7l6
      abb333(58)=abb333(58)*abb333(46)
      abb333(62)=abb333(58)*spbe7k3
      abb333(61)=abb333(62)-abb333(61)
      abb333(62)=abb333(61)*spal6e7
      abb333(63)=mB**2
      abb333(64)=abb333(63)*abb333(9)
      abb333(65)=abb333(16)*abb333(64)*abb333(6)
      abb333(66)=abb333(65)*abb333(34)
      abb333(67)=abb333(66)*spak4e7
      abb333(68)=abb333(67)*spbe7k2
      abb333(42)=-abb333(50)+abb333(42)-abb333(60)+abb333(62)+abb333(54)+abb333&
      &(33)+abb333(68)
      abb333(50)=-2.0_ki*abb333(42)
      abb333(54)=abb333(9)**2
      abb333(17)=-abb333(54)*abb333(17)
      abb333(60)=abb333(17)*abb333(38)
      abb333(37)=-abb333(54)*abb333(37)
      abb333(37)=abb333(60)+abb333(37)
      abb333(60)=spbk7e7*abb333(37)
      abb333(62)=abb333(65)*abb333(19)
      abb333(22)=-abb333(22)*abb333(64)*abb333(23)
      abb333(64)=-abb333(22)*abb333(28)
      abb333(64)=abb333(64)+abb333(62)
      abb333(68)=spbk7e7*spbk2k1
      abb333(64)=abb333(68)*abb333(64)
      abb333(27)=abb333(36)*abb333(27)
      abb333(36)=-spbk7e7*abb333(22)*abb333(27)
      abb333(36)=abb333(36)+abb333(64)
      abb333(36)=abb333(8)*abb333(36)
      abb333(64)=abb333(30)*abb333(8)
      abb333(69)=abb333(64)*abb333(65)
      abb333(70)=abb333(68)*abb333(69)
      abb333(36)=abb333(70)+abb333(36)+abb333(60)
      abb333(36)=spak2e7*spal6k7*abb333(36)
      abb333(18)=-abb333(54)*abb333(18)
      abb333(60)=-abb333(18)*abb333(55)
      abb333(25)=-abb333(54)*abb333(25)
      abb333(70)=abb333(25)*abb333(28)
      abb333(60)=abb333(70)+abb333(60)
      abb333(60)=spbe7k1*abb333(60)
      abb333(71)=-spbe7l6*abb333(66)*spak4l6
      abb333(60)=abb333(71)+abb333(60)
      abb333(60)=spae7k7*abb333(60)
      abb333(71)=abb333(22)*abb333(26)
      abb333(65)=abb333(65)*abb333(38)
      abb333(65)=abb333(71)-abb333(65)
      abb333(71)=abb333(65)*spae7k7
      abb333(72)=abb333(71)*abb333(45)
      abb333(60)=abb333(72)+abb333(60)
      abb333(60)=spbk7k2*abb333(60)
      abb333(54)=-abb333(54)*abb333(11)
      abb333(72)=spbl6k3*abb333(25)*abb333(46)
      abb333(54)=abb333(72)+abb333(54)
      abb333(54)=abb333(31)*abb333(54)
      abb333(72)=spbk2k1*abb333(28)
      abb333(72)=abb333(72)+abb333(27)
      abb333(22)=abb333(22)*abb333(72)
      abb333(62)=-spbk2k1*abb333(62)
      abb333(22)=abb333(62)+abb333(22)
      abb333(22)=abb333(8)*abb333(22)
      abb333(62)=-spbk2k1*abb333(69)
      abb333(22)=abb333(22)+abb333(62)
      abb333(22)=spak2k7*abb333(40)*abb333(22)
      abb333(62)=abb333(18)*abb333(19)
      abb333(18)=abb333(18)*abb333(30)
      abb333(18)=abb333(18)+abb333(62)-abb333(70)
      abb333(18)=spbl6k1*abb333(31)*abb333(18)
      abb333(30)=-abb333(37)*abb333(49)
      abb333(31)=-spak2l6*spbe7k2*abb333(71)
      abb333(37)=abb333(66)*abb333(32)
      abb333(49)=spak4l6*abb333(37)
      abb333(31)=abb333(31)+abb333(49)
      abb333(31)=spbk7l6*abb333(31)
      abb333(49)=abb333(9)**3
      abb333(62)=abb333(49)*abb333(16)
      abb333(69)=-spbe7k2*abb333(63)*abb333(6)*abb333(62)
      abb333(70)=spal6k7*spbk7e7*abb333(17)
      abb333(69)=abb333(69)+abb333(70)
      abb333(69)=spak4e7*abb333(34)*abb333(69)
      abb333(62)=abb333(62)*abb333(55)
      abb333(49)=abb333(57)*abb333(49)
      abb333(70)=-abb333(49)*abb333(28)
      abb333(62)=abb333(70)+abb333(62)
      abb333(59)=abb333(62)*abb333(59)
      abb333(34)=abb333(34)*spak4l6
      abb333(17)=-spbe7l6*spal6e7*abb333(17)*abb333(34)
      abb333(49)=spal6e7*abb333(49)
      abb333(25)=-spbk7k2*spae7k7*abb333(25)
      abb333(25)=abb333(49)+abb333(25)
      abb333(25)=spbe7k3*abb333(46)*abb333(25)
      abb333(17)=abb333(25)+abb333(69)+abb333(31)+abb333(60)+abb333(17)+abb333(&
      &36)+abb333(59)+abb333(30)+abb333(18)+abb333(22)+abb333(54)
      abb333(17)=4.0_ki*abb333(17)
      abb333(18)=abb333(9)*mB
      abb333(18)=abb333(18)+abb333(63)
      abb333(22)=c2*abb333(9)
      abb333(12)=abb333(12)*abb333(22)*spak2k4
      abb333(25)=c3*abb333(9)
      abb333(30)=abb333(3)*abb333(25)*spak2k4
      abb333(12)=abb333(30)-abb333(12)
      abb333(30)=-abb333(55)*abb333(12)*abb333(51)*abb333(18)
      abb333(24)=abb333(24)*abb333(9)
      abb333(31)=abb333(24)*abb333(21)
      abb333(36)=abb333(63)*abb333(21)
      abb333(46)=abb333(36)*abb333(23)
      abb333(31)=abb333(31)+abb333(46)
      abb333(31)=abb333(31)*abb333(22)
      abb333(24)=abb333(24)*abb333(13)
      abb333(46)=abb333(63)*abb333(13)
      abb333(23)=abb333(46)*abb333(23)
      abb333(23)=abb333(24)+abb333(23)
      abb333(23)=abb333(23)*abb333(25)
      abb333(23)=abb333(31)-abb333(23)
      abb333(24)=-abb333(23)*abb333(28)
      abb333(24)=abb333(24)+abb333(30)
      abb333(24)=spbk2k1*abb333(24)
      abb333(30)=abb333(35)*abb333(9)
      abb333(21)=abb333(30)*abb333(21)
      abb333(31)=abb333(36)*abb333(14)
      abb333(21)=abb333(21)+abb333(31)
      abb333(21)=abb333(21)*abb333(22)
      abb333(13)=abb333(30)*abb333(13)
      abb333(14)=abb333(46)*abb333(14)
      abb333(13)=abb333(13)+abb333(14)
      abb333(13)=abb333(13)*abb333(25)
      abb333(13)=abb333(21)-abb333(13)
      abb333(13)=-abb333(13)*abb333(26)
      abb333(12)=-abb333(12)*abb333(15)*abb333(18)
      abb333(14)=abb333(12)*abb333(38)
      abb333(13)=abb333(14)+abb333(13)
      abb333(13)=spak2l6*abb333(13)
      abb333(14)=es12-es712+es71
      abb333(14)=abb333(65)*abb333(14)
      abb333(15)=-abb333(23)*abb333(27)
      abb333(12)=abb333(12)*abb333(34)
      abb333(18)=spbk7k1*abb333(56)
      abb333(21)=abb333(58)*spbk7k3
      abb333(18)=-abb333(21)+abb333(18)
      abb333(18)=spal6k7*abb333(18)
      abb333(22)=abb333(66)*spak4k7
      abb333(23)=-spbk7k2*abb333(22)
      abb333(12)=abb333(23)+abb333(12)+abb333(13)+abb333(15)+abb333(24)+abb333(&
      &14)+abb333(18)
      abb333(12)=16.0_ki*abb333(12)
      abb333(13)=-8.0_ki*abb333(33)
      abb333(14)=spak2l6*abb333(39)
      abb333(14)=abb333(14)+abb333(43)
      abb333(14)=16.0_ki*abb333(14)
      abb333(15)=abb333(52)*abb333(6)**2
      abb333(16)=abb333(15)*abb333(16)
      abb333(18)=abb333(16)*abb333(19)
      abb333(15)=-abb333(15)*abb333(57)
      abb333(23)=abb333(15)*abb333(28)
      abb333(18)=abb333(18)+abb333(23)
      abb333(18)=abb333(18)*spbk2k1
      abb333(15)=abb333(27)*abb333(15)
      abb333(18)=abb333(18)+abb333(15)
      abb333(18)=abb333(18)*abb333(8)
      abb333(24)=abb333(64)*abb333(16)*spbk2k1
      abb333(25)=-abb333(24)-abb333(18)+abb333(65)
      abb333(25)=16.0_ki*abb333(25)
      abb333(26)=4.0_ki*abb333(42)
      abb333(27)=spbk7k2*abb333(11)
      abb333(21)=abb333(21)+abb333(27)
      abb333(21)=spae7k7*abb333(21)
      abb333(27)=abb333(39)*spae7k7
      abb333(28)=-spak2l6*abb333(27)
      abb333(30)=-spae7k7*abb333(43)
      abb333(28)=abb333(28)+abb333(30)
      abb333(28)=spbk7l6*abb333(28)
      abb333(30)=abb333(56)*spae7k7
      abb333(31)=-spbk7k1*abb333(30)
      abb333(21)=abb333(28)+abb333(31)+abb333(21)
      abb333(21)=4.0_ki*abb333(21)
      abb333(15)=abb333(15)*spbk7e7
      abb333(16)=abb333(16)*abb333(68)
      abb333(19)=abb333(16)*abb333(19)
      abb333(23)=abb333(23)*abb333(68)
      abb333(15)=abb333(19)+abb333(15)+abb333(23)
      abb333(15)=abb333(15)*abb333(8)
      abb333(19)=abb333(65)*spbk7e7
      abb333(16)=abb333(16)*abb333(64)
      abb333(15)=abb333(15)+abb333(16)-abb333(19)
      abb333(16)=spak2k7*abb333(15)
      abb333(19)=abb333(20)*spbl6k1
      abb333(23)=abb333(47)-abb333(19)
      abb333(23)=spal6k7*spbk7e7*abb333(23)
      abb333(22)=spbk7e7*abb333(22)
      abb333(16)=abb333(22)+abb333(16)+abb333(23)
      abb333(16)=4.0_ki*abb333(16)
      abb333(22)=-spak2l6*abb333(41)
      abb333(23)=-abb333(40)*abb333(43)
      abb333(22)=abb333(22)+abb333(23)
      abb333(22)=4.0_ki*abb333(22)
      abb333(23)=4.0_ki*abb333(40)
      abb333(28)=abb333(58)*abb333(23)
      abb333(11)=abb333(11)-abb333(47)
      abb333(31)=abb333(19)+abb333(11)
      abb333(31)=abb333(40)*abb333(31)
      abb333(15)=-spak2e7*abb333(15)
      abb333(33)=-spbk7e7*abb333(67)
      abb333(15)=abb333(33)+abb333(15)+abb333(31)
      abb333(15)=4.0_ki*abb333(15)
      abb333(20)=spbk7k1*abb333(20)
      abb333(20)=abb333(20)-abb333(48)
      abb333(20)=8.0_ki*abb333(20)
      abb333(23)=-abb333(56)*abb333(23)
      abb333(11)=-abb333(32)*abb333(11)
      abb333(29)=spbl6k1*abb333(29)
      abb333(27)=abb333(27)*abb333(45)
      abb333(31)=-spae7k7*abb333(61)
      abb333(30)=spbe7k1*abb333(30)
      abb333(11)=abb333(30)+abb333(27)+abb333(29)+abb333(11)+abb333(31)
      abb333(11)=4.0_ki*abb333(11)
      abb333(27)=spak2k7*abb333(39)
      abb333(27)=abb333(27)+abb333(44)
      abb333(27)=8.0_ki*abb333(27)
      abb333(29)=-8.0_ki*abb333(58)
      abb333(19)=abb333(19)-abb333(53)
      abb333(19)=8.0_ki*abb333(19)
      abb333(30)=8.0_ki*abb333(56)
      abb333(31)=4.0_ki*abb333(37)
      abb333(33)=-8.0_ki*abb333(66)
      abb333(18)=spae7k7*abb333(18)
      abb333(18)=-abb333(71)+abb333(18)
      abb333(18)=spbe7k2*abb333(18)
      abb333(24)=abb333(32)*abb333(24)
      abb333(18)=abb333(24)+abb333(18)
      abb333(18)=4.0_ki*abb333(18)
      R2d333=abb333(50)
      rat2 = rat2 + R2d333
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='333' value='", &
          & R2d333, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd333h0
