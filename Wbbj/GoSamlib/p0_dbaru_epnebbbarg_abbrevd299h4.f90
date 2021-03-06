module     p0_dbaru_epnebbbarg_abbrevd299h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(74), public :: abb299
   complex(ki), public :: R2d299
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb299(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb299(2)=NC**(-1)
      abb299(3)=sqrt2**(-1)
      abb299(4)=spak2l6**(-1)
      abb299(5)=spbl6k2**(-1)
      abb299(6)=spbl5k2**(-1)
      abb299(7)=sqrt(mB**2)
      abb299(8)=spbk7k2**(-1)
      abb299(9)=spak2l5**(-1)
      abb299(10)=mB**3
      abb299(11)=abb299(10)*spak1k7
      abb299(12)=c1+c3
      abb299(13)=spak4l5*abb299(12)
      abb299(14)=TR*gW
      abb299(14)=abb299(14)**2*i_*CVDU*abb299(3)*abb299(1)
      abb299(15)=abb299(14)*abb299(2)
      abb299(16)=abb299(13)*abb299(11)*abb299(15)
      abb299(17)=abb299(2)**2
      abb299(18)=abb299(17)*c2
      abb299(19)=abb299(18)*spak4l5
      abb299(20)=c4*spak4l5
      abb299(21)=abb299(19)+abb299(20)
      abb299(22)=abb299(14)*spak1k7
      abb299(23)=abb299(21)*abb299(10)*abb299(22)
      abb299(16)=abb299(16)-abb299(23)
      abb299(16)=abb299(16)*spbk3k2
      abb299(23)=abb299(4)*abb299(5)
      abb299(24)=abb299(16)*abb299(23)
      abb299(25)=c3*abb299(2)
      abb299(26)=c1*abb299(2)
      abb299(27)=c4-abb299(26)+abb299(18)-abb299(25)
      abb299(28)=abb299(14)*abb299(6)
      abb299(29)=abb299(28)*spbk3k2
      abb299(30)=spak1k7*mB
      abb299(31)=-abb299(27)*abb299(29)*abb299(30)
      abb299(32)=abb299(31)*spak1k4
      abb299(33)=abb299(27)*spak1k4
      abb299(29)=abb299(11)*abb299(29)
      abb299(34)=abb299(29)*abb299(33)
      abb299(35)=abb299(34)*abb299(23)
      abb299(35)=abb299(35)+abb299(32)
      abb299(35)=spbk2k1*abb299(35)
      abb299(36)=abb299(14)*mB
      abb299(37)=abb299(27)*abb299(36)*spak4l5*spak1k7
      abb299(38)=spbk3k2*abb299(37)
      abb299(24)=abb299(35)+abb299(24)+abb299(38)
      abb299(35)=16.0_ki*spal6k7
      abb299(24)=abb299(24)*abb299(35)
      abb299(39)=mB**2
      abb299(40)=abb299(14)*abb299(8)*spbk3k2
      abb299(41)=abb299(40)*abb299(7)
      abb299(42)=abb299(39)*abb299(41)
      abb299(43)=abb299(42)*abb299(21)
      abb299(44)=abb299(40)*abb299(2)
      abb299(45)=abb299(44)*abb299(12)
      abb299(46)=spak4l5*abb299(45)
      abb299(47)=abb299(39)*abb299(7)
      abb299(48)=-abb299(47)*abb299(46)
      abb299(43)=abb299(43)+abb299(48)
      abb299(43)=abb299(5)*abb299(43)
      abb299(48)=abb299(7)*abb299(8)
      abb299(49)=abb299(48)*abb299(15)
      abb299(50)=abb299(49)*abb299(12)
      abb299(51)=-spak4l5*abb299(50)
      abb299(52)=abb299(14)*abb299(7)
      abb299(53)=abb299(52)*abb299(8)
      abb299(54)=abb299(53)*abb299(21)
      abb299(51)=abb299(54)+abb299(51)
      abb299(54)=spbk7k3*spal6k7
      abb299(55)=abb299(51)*abb299(54)
      abb299(56)=abb299(21)*abb299(41)
      abb299(57)=abb299(46)*abb299(7)
      abb299(56)=abb299(56)-abb299(57)
      abb299(57)=-spak2l6*abb299(56)
      abb299(43)=abb299(57)+abb299(43)+abb299(55)
      abb299(43)=spbl5k2*spak1l5*abb299(43)
      abb299(18)=abb299(18)+c4
      abb299(55)=abb299(18)*abb299(40)
      abb299(57)=abb299(45)-abb299(55)
      abb299(58)=spak1k4*abb299(57)
      abb299(59)=abb299(58)*abb299(47)
      abb299(60)=spak1l5*abb299(59)
      abb299(34)=abb299(34)+abb299(60)
      abb299(34)=abb299(5)*abb299(34)
      abb299(14)=-abb299(18)*abb299(48)*abb299(14)*spak1k4
      abb299(60)=spak1k4*abb299(50)
      abb299(14)=abb299(60)+abb299(14)
      abb299(54)=spak1l5*abb299(14)*abb299(54)
      abb299(34)=abb299(54)+abb299(34)
      abb299(34)=spbk2k1*abb299(34)
      abb299(16)=abb299(5)*abb299(16)
      abb299(54)=abb299(58)*abb299(7)
      abb299(60)=-spak1l5*abb299(54)
      abb299(32)=abb299(60)+abb299(32)
      abb299(32)=spbk2k1*abb299(32)
      abb299(32)=abb299(32)+abb299(38)
      abb299(32)=spak2l6*abb299(32)
      abb299(16)=abb299(43)+abb299(32)+abb299(16)+abb299(34)
      abb299(16)=8.0_ki*abb299(16)
      abb299(32)=-abb299(7)*abb299(45)
      abb299(34)=abb299(41)*abb299(18)
      abb299(32)=abb299(34)+abb299(32)
      abb299(34)=abb299(32)*spak1l5
      abb299(38)=abb299(31)+abb299(34)
      abb299(43)=16.0_ki*spak4l6
      abb299(60)=-abb299(38)*abb299(43)
      abb299(34)=-2.0_ki*abb299(31)-abb299(34)
      abb299(34)=abb299(34)*abb299(43)
      abb299(61)=abb299(20)*abb299(40)
      abb299(19)=abb299(19)*abb299(40)
      abb299(19)=-abb299(19)+abb299(46)-abb299(61)
      abb299(61)=-mB*abb299(19)
      abb299(62)=abb299(19)*abb299(23)
      abb299(63)=abb299(10)*abb299(62)
      abb299(64)=abb299(58)*abb299(23)
      abb299(65)=abb299(10)*abb299(6)
      abb299(66)=abb299(65)*abb299(64)
      abb299(67)=abb299(6)*mB
      abb299(68)=-abb299(67)*abb299(58)
      abb299(66)=abb299(66)+abb299(68)
      abb299(69)=-spbk2k1*abb299(66)
      abb299(61)=abb299(69)+abb299(63)+abb299(61)
      abb299(61)=spak1l6*abb299(61)
      abb299(29)=abb299(23)*abb299(27)*abb299(29)
      abb299(29)=abb299(29)+abb299(31)
      abb299(63)=abb299(47)*abb299(45)
      abb299(69)=-abb299(42)*abb299(18)
      abb299(63)=abb299(69)+abb299(63)
      abb299(63)=abb299(63)*abb299(23)
      abb299(32)=abb299(63)+abb299(32)
      abb299(32)=spak1l5*abb299(32)
      abb299(32)=abb299(32)+abb299(29)
      abb299(32)=spak4l6*abb299(32)
      abb299(32)=abb299(32)+abb299(61)
      abb299(32)=16.0_ki*abb299(32)
      abb299(38)=-8.0_ki*spak4l6*abb299(38)
      abb299(25)=abb299(25)+abb299(26)
      abb299(25)=abb299(25)*spak4l5
      abb299(25)=abb299(25)-abb299(21)
      abb299(26)=abb299(36)*abb299(8)
      abb299(25)=abb299(25)*abb299(26)
      abb299(33)=abb299(33)*spbk2k1
      abb299(36)=abb299(28)*mB
      abb299(61)=abb299(36)*abb299(8)
      abb299(63)=abb299(61)*abb299(33)
      abb299(25)=abb299(25)+abb299(63)
      abb299(63)=8.0_ki*spak1l6
      abb299(69)=-spbk7k3*abb299(25)*abb299(63)
      abb299(19)=abb299(30)*abb299(19)
      abb299(70)=abb299(67)*spak1k7
      abb299(71)=abb299(58)*abb299(70)
      abb299(72)=-spbk2k1*abb299(71)
      abb299(70)=abb299(45)*abb299(70)
      abb299(55)=abb299(67)*abb299(55)
      abb299(73)=abb299(55)*spak1k7
      abb299(70)=abb299(70)-abb299(73)
      abb299(73)=spbl6k2*spak4l6
      abb299(74)=abb299(70)*abb299(73)
      abb299(72)=abb299(74)+abb299(72)+abb299(19)
      abb299(72)=8.0_ki*abb299(72)
      abb299(74)=8.0_ki*spak1l5
      abb299(56)=abb299(56)*abb299(74)
      abb299(12)=abb299(12)*abb299(15)*abb299(7)
      abb299(15)=abb299(18)*abb299(52)
      abb299(12)=abb299(12)-abb299(15)
      abb299(15)=-spak4k7*abb299(12)
      abb299(52)=abb299(18)*abb299(53)
      abb299(50)=abb299(52)-abb299(50)
      abb299(52)=abb299(50)*abb299(73)
      abb299(15)=abb299(52)+abb299(15)
      abb299(15)=spak1l5*abb299(15)
      abb299(28)=abb299(30)*abb299(28)
      abb299(30)=-abb299(28)*abb299(33)
      abb299(15)=abb299(30)+abb299(37)+abb299(15)
      abb299(15)=8.0_ki*abb299(15)
      abb299(30)=abb299(6)*abb299(64)*abb299(11)
      abb299(30)=abb299(30)-abb299(71)
      abb299(30)=abb299(30)*spbk2k1
      abb299(11)=abb299(11)*abb299(62)
      abb299(11)=abb299(30)-abb299(11)+abb299(19)
      abb299(19)=-es712+es12+es71
      abb299(11)=8.0_ki*abb299(11)*abb299(19)
      abb299(19)=16.0_ki*abb299(31)
      abb299(30)=abb299(19)*spak4k7
      abb299(33)=-16.0_ki*spak4k7*abb299(29)
      abb299(31)=8.0_ki*abb299(31)
      abb299(37)=spak4k7*abb299(31)
      abb299(52)=spal5k7*spbk7k3
      abb299(53)=spal5l6*spbl6k3
      abb299(62)=spbk3k1*spak1l5
      abb299(52)=abb299(62)+abb299(53)+abb299(52)
      abb299(14)=abb299(14)*abb299(52)
      abb299(17)=abb299(17)*c2*spak4l5
      abb299(17)=abb299(17)+abb299(20)
      abb299(20)=abb299(48)*abb299(22)
      abb299(22)=abb299(26)*spak1k7
      abb299(22)=2.0_ki*abb299(22)
      abb299(20)=abb299(20)+abb299(22)
      abb299(20)=-abb299(20)*abb299(17)
      abb299(26)=abb299(27)*abb299(28)
      abb299(28)=abb299(26)*abb299(8)*spbk2k1*spak1k4
      abb299(48)=abb299(49)*spak1k7
      abb299(22)=abb299(22)*abb299(2)
      abb299(22)=abb299(48)+abb299(22)
      abb299(22)=abb299(22)*abb299(13)
      abb299(20)=2.0_ki*abb299(28)+abb299(22)+abb299(20)
      abb299(20)=spbk7k3*abb299(20)
      abb299(22)=es12*abb299(66)
      abb299(28)=abb299(10)*abb299(40)
      abb299(28)=abb299(28)+abb299(42)
      abb299(28)=abb299(28)*abb299(17)
      abb299(10)=abb299(10)*abb299(44)
      abb299(48)=abb299(44)*abb299(7)
      abb299(39)=abb299(39)*abb299(48)
      abb299(10)=abb299(10)+abb299(39)
      abb299(10)=-abb299(10)*abb299(13)
      abb299(10)=abb299(10)+abb299(28)
      abb299(10)=abb299(10)*abb299(23)
      abb299(28)=abb299(40)*mB
      abb299(28)=abb299(28)+abb299(41)
      abb299(17)=-abb299(28)*abb299(17)
      abb299(28)=abb299(44)*mB
      abb299(28)=abb299(28)+abb299(48)
      abb299(13)=abb299(28)*abb299(13)
      abb299(10)=abb299(10)+abb299(13)+abb299(17)
      abb299(10)=spak1k2*abb299(10)
      abb299(13)=abb299(42)*abb299(6)
      abb299(17)=-abb299(13)*abb299(21)
      abb299(21)=abb299(47)*abb299(6)
      abb299(28)=abb299(21)*abb299(46)
      abb299(17)=abb299(17)+abb299(28)
      abb299(17)=spak1k2*abb299(17)
      abb299(28)=abb299(21)*abb299(45)
      abb299(13)=-abb299(13)*abb299(18)
      abb299(13)=abb299(13)+abb299(28)
      abb299(13)=spak2k4*spak1l5*abb299(13)
      abb299(13)=abb299(17)+abb299(13)
      abb299(13)=abb299(9)*abb299(13)
      abb299(17)=abb299(59)*abb299(23)
      abb299(17)=abb299(17)-abb299(54)
      abb299(17)=spak2l5*abb299(17)
      abb299(18)=-spbl6k3*spak1l6
      abb299(28)=spbl5k3*spak1l5
      abb299(18)=abb299(28)+abb299(18)
      abb299(18)=abb299(51)*abb299(18)
      abb299(21)=-abb299(21)*abb299(58)
      abb299(28)=spbk7l6*spak4l6*abb299(70)
      abb299(10)=abb299(28)+abb299(17)+abb299(13)+abb299(10)+abb299(22)+abb299(&
      &20)+abb299(21)+abb299(14)+abb299(18)
      abb299(10)=8.0_ki*abb299(10)
      abb299(13)=16.0_ki*abb299(68)
      abb299(14)=16.0_ki*abb299(66)
      abb299(17)=-8.0_ki*abb299(68)
      abb299(18)=-abb299(54)*abb299(74)
      abb299(12)=spal6k7*abb299(12)*abb299(74)
      abb299(20)=-abb299(63)*abb299(36)*abb299(27)
      abb299(21)=-spak1l5*abb299(50)
      abb299(21)=abb299(21)+abb299(26)
      abb299(21)=8.0_ki*abb299(21)
      abb299(19)=abb299(19)*spal6k7
      abb299(22)=abb299(29)*abb299(35)
      abb299(26)=-spal6k7*abb299(31)
      abb299(28)=-abb299(67)*abb299(45)
      abb299(28)=abb299(55)+abb299(28)
      abb299(29)=abb299(28)*spak1l6
      abb299(31)=16.0_ki*abb299(29)
      abb299(23)=abb299(23)*abb299(57)*abb299(65)
      abb299(23)=abb299(23)+abb299(28)
      abb299(35)=-16.0_ki*spak1l6*abb299(23)
      abb299(29)=8.0_ki*abb299(29)
      abb299(36)=-abb299(28)*abb299(43)
      abb299(39)=8.0_ki*spak4k7
      abb299(28)=-abb299(28)*abb299(39)
      abb299(25)=8.0_ki*abb299(25)
      abb299(23)=-8.0_ki*spak2k4*abb299(23)
      abb299(27)=8.0_ki*abb299(27)*abb299(61)
      R2d299=0.0_ki
      rat2 = rat2 + R2d299
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='299' value='", &
          & R2d299, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd299h4
