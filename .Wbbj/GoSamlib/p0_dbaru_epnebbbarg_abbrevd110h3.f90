module     p0_dbaru_epnebbbarg_abbrevd110h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(56), public :: abb110
   complex(ki), public :: R2d110
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
      abb110(1)=1.0_ki/(-es71+es712-es12)
      abb110(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb110(3)=1.0_ki/(es34+es567-es12-es234)
      abb110(4)=sqrt(mB**2)
      abb110(5)=NC**(-1)
      abb110(6)=spak2l5**(-1)
      abb110(7)=spak2l6**(-1)
      abb110(8)=spbl6k2**(-1)
      abb110(9)=abb110(5)**2
      abb110(10)=TR*gW
      abb110(10)=CVDU*i_*spak1k4*abb110(3)*abb110(2)*abb110(1)*abb110(10)**2
      abb110(11)=abb110(9)*abb110(10)
      abb110(12)=abb110(11)*spbe7k2
      abb110(13)=abb110(10)*spbe7k2
      abb110(12)=abb110(12)+abb110(13)
      abb110(14)=mB**2
      abb110(15)=abb110(14)*abb110(12)
      abb110(16)=abb110(4)*abb110(7)
      abb110(17)=spae7k7*c4
      abb110(18)=abb110(17)*abb110(15)*abb110(16)
      abb110(19)=spak2k4*spbk4k3
      abb110(20)=spak1k2*spbk3k1
      abb110(19)=abb110(19)-abb110(20)
      abb110(20)=abb110(18)*abb110(19)
      abb110(16)=abb110(16)*abb110(14)
      abb110(21)=spae7k7*abb110(5)
      abb110(22)=abb110(21)*abb110(13)
      abb110(23)=abb110(16)*abb110(22)
      abb110(24)=2.0_ki*c1
      abb110(25)=abb110(19)*abb110(24)
      abb110(26)=-abb110(23)*abb110(25)
      abb110(20)=abb110(26)+abb110(20)
      abb110(20)=abb110(8)*abb110(20)
      abb110(26)=abb110(17)*abb110(4)
      abb110(27)=abb110(12)*abb110(26)
      abb110(28)=-abb110(27)*abb110(19)
      abb110(29)=abb110(13)*abb110(4)
      abb110(30)=abb110(29)*abb110(21)
      abb110(31)=abb110(30)*abb110(25)
      abb110(20)=abb110(20)+abb110(31)+abb110(28)
      abb110(20)=spbl5k2*abb110(20)
      abb110(28)=abb110(24)*spbk4k3
      abb110(31)=abb110(30)*abb110(28)
      abb110(32)=abb110(27)*spbk4k3
      abb110(31)=abb110(31)-abb110(32)
      abb110(32)=-spak4k7*spbk7l5
      abb110(33)=-spak4l6*spbl6l5
      abb110(32)=abb110(33)+abb110(32)
      abb110(32)=abb110(31)*abb110(32)
      abb110(27)=abb110(27)*spbk3k1
      abb110(33)=abb110(24)*spbk3k1
      abb110(34)=abb110(33)*abb110(30)
      abb110(27)=abb110(27)-abb110(34)
      abb110(34)=spak1k7*spbk7l5
      abb110(35)=spak1l6*spbl6l5
      abb110(34)=abb110(35)+abb110(34)
      abb110(34)=abb110(27)*abb110(34)
      abb110(35)=abb110(19)*abb110(6)
      abb110(15)=abb110(15)*abb110(26)
      abb110(26)=-abb110(15)*abb110(35)
      abb110(36)=-abb110(35)*abb110(24)
      abb110(14)=abb110(30)*abb110(14)
      abb110(30)=-abb110(14)*abb110(36)
      abb110(20)=abb110(20)+abb110(34)+abb110(32)+abb110(30)+abb110(26)
      abb110(20)=4.0_ki*spbk7l6*abb110(20)
      abb110(26)=abb110(10)*abb110(5)
      abb110(30)=abb110(26)*abb110(4)
      abb110(32)=abb110(30)*abb110(28)
      abb110(11)=abb110(11)+abb110(10)
      abb110(34)=abb110(4)*c4
      abb110(37)=abb110(11)*abb110(34)
      abb110(38)=abb110(37)*spbk4k3
      abb110(32)=abb110(32)-abb110(38)
      abb110(32)=abb110(32)*spak4k7
      abb110(30)=abb110(30)*abb110(33)
      abb110(37)=abb110(37)*spbk3k1
      abb110(30)=abb110(30)-abb110(37)
      abb110(30)=abb110(30)*spak1k7
      abb110(30)=abb110(32)+abb110(30)
      abb110(30)=abb110(30)*spbl6l5
      abb110(32)=spbk7k2*abb110(30)
      abb110(37)=-c4*abb110(35)
      abb110(38)=-abb110(37)*abb110(11)
      abb110(26)=-abb110(26)*abb110(36)
      abb110(26)=abb110(26)-abb110(38)
      abb110(16)=abb110(16)*abb110(26)
      abb110(26)=es71+es12-es712
      abb110(26)=-2.0_ki*abb110(26)
      abb110(26)=abb110(16)*abb110(26)
      abb110(26)=abb110(26)+abb110(32)
      abb110(26)=8.0_ki*abb110(26)
      abb110(13)=mB*abb110(13)
      abb110(21)=abb110(21)*abb110(13)
      abb110(32)=abb110(21)*abb110(7)
      abb110(38)=-abb110(32)*abb110(25)
      abb110(9)=abb110(9)+1.0_ki
      abb110(9)=abb110(13)*abb110(9)
      abb110(39)=abb110(17)*abb110(7)
      abb110(40)=abb110(39)*abb110(9)
      abb110(41)=-abb110(40)*abb110(19)
      abb110(38)=abb110(38)-abb110(41)
      abb110(41)=abb110(38)*spbk7l5
      abb110(42)=-abb110(21)*abb110(36)
      abb110(43)=abb110(9)*abb110(17)
      abb110(44)=abb110(43)*abb110(35)
      abb110(42)=abb110(42)-abb110(44)
      abb110(44)=abb110(42)*spbk7l6
      abb110(41)=abb110(41)-abb110(44)
      abb110(29)=abb110(29)*abb110(5)
      abb110(45)=abb110(24)*abb110(29)
      abb110(34)=abb110(12)*abb110(34)
      abb110(45)=abb110(45)-abb110(34)
      abb110(45)=spak1e7*abb110(45)*spbk3k1
      abb110(46)=abb110(34)*spbk4k3
      abb110(47)=abb110(29)*abb110(28)
      abb110(46)=abb110(46)-abb110(47)
      abb110(46)=abb110(46)*spak4e7
      abb110(45)=abb110(45)-abb110(46)
      abb110(45)=abb110(45)*spbl6l5
      abb110(46)=-abb110(45)-abb110(41)
      abb110(46)=8.0_ki*abb110(46)
      abb110(44)=8.0_ki*abb110(44)
      abb110(45)=8.0_ki*abb110(45)
      abb110(41)=-4.0_ki*abb110(41)
      abb110(47)=-abb110(9)*abb110(37)
      abb110(13)=abb110(13)*abb110(5)
      abb110(48)=-abb110(13)*abb110(36)
      abb110(47)=abb110(48)-abb110(47)
      abb110(48)=8.0_ki*abb110(47)
      abb110(49)=abb110(7)*c4
      abb110(50)=abb110(9)*abb110(49)
      abb110(51)=abb110(50)*abb110(19)
      abb110(52)=abb110(13)*abb110(7)
      abb110(53)=abb110(52)*abb110(25)
      abb110(51)=-abb110(53)+abb110(51)
      abb110(51)=8.0_ki*abb110(51)
      abb110(16)=spak2k7*abb110(16)
      abb110(16)=2.0_ki*abb110(16)-abb110(30)
      abb110(16)=spbk7e7*abb110(16)
      abb110(30)=-abb110(34)*abb110(19)
      abb110(29)=abb110(29)*abb110(25)
      abb110(29)=abb110(29)+abb110(30)
      abb110(29)=spbl6l5*abb110(29)
      abb110(16)=abb110(29)+abb110(16)
      abb110(16)=4.0_ki*abb110(16)
      abb110(11)=mB*abb110(11)
      abb110(29)=abb110(37)*abb110(11)
      abb110(10)=abb110(10)*abb110(5)*mB
      abb110(30)=abb110(36)*abb110(10)
      abb110(29)=abb110(30)-abb110(29)
      abb110(30)=8.0_ki*spbk7k2
      abb110(34)=abb110(29)*abb110(30)
      abb110(37)=4.0_ki*spbk7e7
      abb110(29)=-abb110(29)*abb110(37)
      abb110(49)=abb110(11)*abb110(49)
      abb110(19)=abb110(19)*abb110(49)
      abb110(10)=abb110(7)*abb110(10)
      abb110(25)=abb110(10)*abb110(25)
      abb110(19)=abb110(25)-abb110(19)
      abb110(25)=abb110(19)*abb110(30)
      abb110(19)=-abb110(19)*abb110(37)
      abb110(38)=-4.0_ki*spbl6l5*abb110(38)
      abb110(53)=4.0_ki*spbk7l5
      abb110(31)=-abb110(31)*abb110(53)
      abb110(40)=abb110(40)*spbk4k3
      abb110(32)=abb110(32)*abb110(28)
      abb110(32)=abb110(40)-abb110(32)
      abb110(40)=-spak4l6*abb110(32)
      abb110(54)=spbk3k1*abb110(7)
      abb110(55)=abb110(54)*abb110(24)
      abb110(21)=abb110(55)*abb110(21)
      abb110(43)=abb110(43)*abb110(54)
      abb110(21)=abb110(43)-abb110(21)
      abb110(43)=-spak1l6*abb110(21)
      abb110(40)=abb110(43)+abb110(40)
      abb110(40)=spbl6l5*abb110(40)
      abb110(32)=-spak4k7*abb110(32)
      abb110(21)=-spak1k7*abb110(21)
      abb110(21)=abb110(21)+abb110(32)
      abb110(21)=spbk7l5*abb110(21)
      abb110(32)=mB**3
      abb110(22)=abb110(32)*abb110(22)
      abb110(43)=abb110(22)*abb110(7)
      abb110(23)=-abb110(43)+abb110(23)
      abb110(56)=spak2k4*abb110(6)*spbk4k3
      abb110(23)=abb110(23)*abb110(56)
      abb110(14)=abb110(22)-abb110(14)
      abb110(22)=spak1k2*abb110(54)*abb110(6)
      abb110(14)=abb110(14)*abb110(22)
      abb110(14)=abb110(23)+abb110(14)
      abb110(14)=abb110(14)*abb110(24)
      abb110(23)=spbl6k2*abb110(42)
      abb110(12)=abb110(32)*abb110(12)
      abb110(24)=abb110(12)*abb110(39)
      abb110(18)=abb110(24)-abb110(18)
      abb110(18)=abb110(18)*abb110(56)
      abb110(12)=-abb110(12)*abb110(17)
      abb110(12)=abb110(12)+abb110(15)
      abb110(12)=abb110(12)*abb110(22)
      abb110(12)=abb110(23)+abb110(14)+abb110(18)+abb110(12)+abb110(21)+abb110(&
      &40)
      abb110(12)=4.0_ki*abb110(12)
      abb110(14)=-abb110(24)*abb110(35)
      abb110(15)=-abb110(43)*abb110(36)
      abb110(14)=abb110(15)+abb110(14)
      abb110(14)=abb110(8)*abb110(14)
      abb110(14)=-abb110(42)+abb110(14)
      abb110(14)=4.0_ki*spbk7k2*abb110(14)
      abb110(15)=4.0_ki*abb110(47)
      abb110(17)=abb110(10)*abb110(28)
      abb110(18)=abb110(49)*spbk4k3
      abb110(17)=abb110(17)-abb110(18)
      abb110(17)=abb110(17)*spak4k7
      abb110(10)=abb110(33)*abb110(10)
      abb110(18)=abb110(54)*c4
      abb110(11)=abb110(18)*abb110(11)
      abb110(10)=abb110(10)-abb110(11)
      abb110(10)=abb110(10)*spak1k7
      abb110(10)=abb110(17)+abb110(10)
      abb110(11)=abb110(10)*abb110(30)
      abb110(17)=abb110(52)*abb110(28)
      abb110(21)=abb110(50)*spbk4k3
      abb110(17)=abb110(17)-abb110(21)
      abb110(17)=abb110(17)*spak4e7
      abb110(13)=abb110(55)*abb110(13)
      abb110(9)=abb110(18)*abb110(9)
      abb110(9)=abb110(13)-abb110(9)
      abb110(9)=abb110(9)*spak1e7
      abb110(9)=abb110(17)+abb110(9)
      abb110(9)=8.0_ki*abb110(9)
      abb110(10)=-abb110(10)*abb110(37)
      abb110(13)=abb110(27)*abb110(53)
      R2d110=0.0_ki
      rat2 = rat2 + R2d110
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='110' value='", &
          & R2d110, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd110h3
