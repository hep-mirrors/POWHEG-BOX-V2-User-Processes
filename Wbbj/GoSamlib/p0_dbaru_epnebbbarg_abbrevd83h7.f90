module     p0_dbaru_epnebbbarg_abbrevd83h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(61), public :: abb83
   complex(ki), public :: R2d83
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
      abb83(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb83(2)=NC**(-1)
      abb83(3)=sqrt2**(-1)
      abb83(4)=es56**(-1)
      abb83(5)=spak2l5**(-1)
      abb83(6)=spak2l6**(-1)
      abb83(7)=spbk7k2**(-1)
      abb83(8)=c1*abb83(2)
      abb83(9)=c4*abb83(2)**2
      abb83(8)=-c2+abb83(8)-abb83(9)
      abb83(9)=TR*gW
      abb83(9)=CVDU*i_*mB*abb83(4)*abb83(3)*abb83(1)*abb83(9)**2
      abb83(10)=abb83(9)*abb83(7)
      abb83(11)=abb83(8)*abb83(5)*abb83(10)
      abb83(12)=-spak1k7*abb83(11)
      abb83(13)=abb83(12)*spbk7l6
      abb83(10)=abb83(8)*abb83(6)*abb83(10)
      abb83(14)=-spak1k7*abb83(10)
      abb83(15)=abb83(14)*spbk7l5
      abb83(13)=abb83(13)+abb83(15)
      abb83(15)=spak4k7*spbk3k2
      abb83(16)=abb83(15)*abb83(13)
      abb83(17)=abb83(12)*spbl6k2
      abb83(18)=abb83(14)*spbl5k2
      abb83(17)=abb83(17)+abb83(18)
      abb83(18)=spbk7k3*spak4k7
      abb83(19)=abb83(18)*abb83(17)
      abb83(20)=-abb83(8)*abb83(9)*spak1k7
      abb83(21)=abb83(5)*abb83(20)
      abb83(22)=spbl6k3*abb83(21)
      abb83(20)=abb83(6)*abb83(20)
      abb83(23)=spbl5k3*abb83(20)
      abb83(22)=abb83(22)+abb83(23)
      abb83(22)=spak4k7*abb83(22)
      abb83(23)=abb83(12)*spbl6k3
      abb83(24)=abb83(14)*spbl5k3
      abb83(23)=abb83(23)+abb83(24)
      abb83(24)=spak3k4*spbk3k2
      abb83(25)=abb83(23)*abb83(24)
      abb83(16)=abb83(25)+abb83(22)-abb83(19)+abb83(16)
      abb83(16)=es12*abb83(16)
      abb83(22)=es712-es71
      abb83(19)=abb83(19)*abb83(22)
      abb83(21)=-spbl6k2*abb83(21)
      abb83(20)=-spbl5k2*abb83(20)
      abb83(20)=abb83(21)+abb83(20)
      abb83(21)=spbk4k3*spak2k4
      abb83(20)=spak4k7*abb83(20)*abb83(21)
      abb83(16)=abb83(20)+abb83(16)+abb83(19)
      abb83(16)=8.0_ki*abb83(16)
      abb83(19)=spak2k4*spbk3k2
      abb83(20)=abb83(19)*abb83(17)
      abb83(25)=16.0_ki*abb83(20)
      abb83(20)=8.0_ki*abb83(20)
      abb83(26)=-abb83(11)*spak1k4
      abb83(27)=abb83(26)*spbl6k2
      abb83(28)=-abb83(10)*spak1k4
      abb83(29)=abb83(28)*spbl5k2
      abb83(27)=abb83(27)+abb83(29)
      abb83(29)=spak2k7*spbk7k3
      abb83(29)=abb83(29)+abb83(21)
      abb83(27)=abb83(27)*abb83(29)
      abb83(30)=abb83(28)*spbl5k3
      abb83(31)=-abb83(11)*spbl6k3
      abb83(32)=abb83(31)*spak1k4
      abb83(30)=abb83(30)+abb83(32)
      abb83(32)=abb83(30)*es12
      abb83(27)=-abb83(32)+abb83(27)
      abb83(32)=-16.0_ki*abb83(27)
      abb83(33)=32.0_ki*abb83(30)
      abb83(8)=-abb83(9)*abb83(8)
      abb83(9)=abb83(5)*abb83(8)
      abb83(34)=-abb83(9)*spbl6k3*spak1k2
      abb83(8)=abb83(6)*abb83(8)
      abb83(35)=spbl5k3*spak1k2
      abb83(36)=-abb83(8)*abb83(35)
      abb83(34)=abb83(34)+abb83(36)
      abb83(34)=spak4k7*abb83(34)
      abb83(36)=-abb83(11)*spak1k2
      abb83(37)=abb83(36)*spbk7l6
      abb83(38)=-abb83(10)*spak1k2
      abb83(39)=abb83(38)*spbk7l5
      abb83(37)=abb83(37)+abb83(39)
      abb83(39)=-abb83(15)*abb83(37)
      abb83(40)=abb83(31)*spak1k2
      abb83(41)=-abb83(35)*abb83(10)
      abb83(41)=abb83(40)+abb83(41)
      abb83(42)=-abb83(41)*abb83(24)
      abb83(34)=abb83(42)+abb83(39)+abb83(34)
      abb83(34)=16.0_ki*abb83(34)
      abb83(27)=8.0_ki*abb83(27)
      abb83(30)=16.0_ki*abb83(30)
      abb83(39)=-abb83(26)*abb83(21)
      abb83(42)=abb83(26)*spbk7k3
      abb83(43)=-spak2k7*abb83(42)
      abb83(39)=abb83(39)+abb83(43)
      abb83(39)=spbk7l6*abb83(39)
      abb83(43)=-abb83(28)*abb83(21)
      abb83(44)=abb83(28)*spbk7k3
      abb83(45)=-spak2k7*abb83(44)
      abb83(43)=abb83(43)+abb83(45)
      abb83(43)=spbk7l5*abb83(43)
      abb83(45)=-spbk7l6*abb83(26)
      abb83(46)=-spbk7l5*abb83(28)
      abb83(45)=abb83(45)+abb83(46)
      abb83(46)=spbk3k1*spak1k2
      abb83(45)=abb83(45)*abb83(46)
      abb83(35)=abb83(28)*abb83(35)
      abb83(40)=abb83(40)*spak1k4
      abb83(35)=abb83(35)+abb83(40)
      abb83(40)=-spbk7k1*abb83(35)
      abb83(39)=abb83(40)+abb83(45)+abb83(39)+abb83(43)
      abb83(39)=8.0_ki*abb83(39)
      abb83(40)=es234-es34
      abb83(43)=-abb83(22)-abb83(40)
      abb83(43)=8.0_ki*abb83(17)*abb83(43)
      abb83(45)=-spbl5k3*abb83(10)
      abb83(31)=abb83(31)+abb83(45)
      abb83(31)=spak1k3*abb83(31)
      abb83(45)=spbl6k4*abb83(26)
      abb83(47)=spbl5k4*abb83(28)
      abb83(31)=abb83(31)+abb83(47)+abb83(45)-abb83(13)
      abb83(31)=16.0_ki*abb83(31)
      abb83(45)=spbl6k2*abb83(36)
      abb83(47)=spbl5k2*abb83(38)
      abb83(45)=abb83(45)+abb83(47)
      abb83(45)=16.0_ki*abb83(45)
      abb83(37)=8.0_ki*abb83(37)
      abb83(17)=abb83(17)*abb83(29)
      abb83(23)=abb83(23)*es12
      abb83(17)=-abb83(23)+abb83(17)
      abb83(23)=16.0_ki*abb83(17)
      abb83(17)=-8.0_ki*abb83(17)
      abb83(29)=abb83(46)+abb83(29)
      abb83(13)=abb83(13)*abb83(29)
      abb83(29)=-es23+es123-es71-es12
      abb83(29)=abb83(41)*abb83(29)
      abb83(13)=abb83(29)+abb83(13)
      abb83(13)=8.0_ki*abb83(13)
      abb83(29)=16.0_ki*abb83(41)
      abb83(41)=8.0_ki*abb83(41)
      abb83(46)=-spbl6k4*abb83(36)
      abb83(47)=-spbl5k4*abb83(38)
      abb83(46)=abb83(46)+abb83(47)
      abb83(46)=8.0_ki*abb83(46)
      abb83(35)=8.0_ki*spbk3k1*abb83(35)
      abb83(47)=spak3k4*spbk3k2**2
      abb83(47)=8.0_ki*abb83(47)
      abb83(48)=abb83(12)*abb83(47)
      abb83(49)=16.0_ki*spbk3k2
      abb83(50)=abb83(26)*abb83(49)
      abb83(51)=8.0_ki*spbk3k2
      abb83(26)=-abb83(26)*abb83(51)
      abb83(42)=16.0_ki*abb83(42)
      abb83(52)=-abb83(12)*abb83(49)
      abb83(53)=abb83(12)*abb83(51)
      abb83(54)=16.0_ki*spbk7k3
      abb83(12)=-abb83(12)*abb83(54)
      abb83(47)=abb83(14)*abb83(47)
      abb83(55)=abb83(28)*abb83(49)
      abb83(28)=-abb83(28)*abb83(51)
      abb83(44)=16.0_ki*abb83(44)
      abb83(49)=-abb83(14)*abb83(49)
      abb83(51)=abb83(14)*abb83(51)
      abb83(14)=-abb83(14)*abb83(54)
      abb83(54)=8.0_ki*abb83(11)
      abb83(56)=abb83(15)*abb83(54)
      abb83(57)=8.0_ki*abb83(10)
      abb83(15)=abb83(15)*abb83(57)
      abb83(22)=abb83(22)-es12
      abb83(18)=abb83(22)*abb83(18)
      abb83(58)=-abb83(11)*abb83(18)
      abb83(9)=abb83(9)*spak4k7
      abb83(59)=-abb83(21)*abb83(9)
      abb83(58)=abb83(59)+abb83(58)
      abb83(58)=8.0_ki*abb83(58)
      abb83(59)=16.0_ki*abb83(19)
      abb83(60)=-abb83(59)*abb83(11)
      abb83(61)=-abb83(19)*abb83(54)
      abb83(22)=abb83(40)+abb83(22)
      abb83(40)=abb83(22)*abb83(54)
      abb83(18)=-abb83(10)*abb83(18)
      abb83(8)=abb83(8)*spak4k7
      abb83(21)=-abb83(21)*abb83(8)
      abb83(18)=abb83(21)+abb83(18)
      abb83(18)=8.0_ki*abb83(18)
      abb83(21)=-abb83(59)*abb83(10)
      abb83(19)=-abb83(19)*abb83(57)
      abb83(22)=abb83(22)*abb83(57)
      abb83(11)=-abb83(11)*abb83(24)
      abb83(9)=abb83(9)+abb83(11)
      abb83(9)=8.0_ki*abb83(9)
      abb83(10)=-abb83(10)*abb83(24)
      abb83(8)=abb83(8)+abb83(10)
      abb83(8)=8.0_ki*abb83(8)
      abb83(10)=-spbl6k1*abb83(36)
      abb83(11)=-spbl5k1*abb83(38)
      abb83(10)=abb83(10)+abb83(11)
      abb83(10)=8.0_ki*abb83(10)
      R2d83=0.0_ki
      rat2 = rat2 + R2d83
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='83' value='", &
          & R2d83, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd83h7
