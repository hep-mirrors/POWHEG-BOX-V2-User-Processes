module     p0_dbaru_epnebbbarg_abbrevd71h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(62), public :: abb71
   complex(ki), public :: R2d71
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
      abb71(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb71(2)=sqrt2**(-1)
      abb71(3)=es56**(-1)
      abb71(4)=spbl5k2**(-1)
      abb71(5)=spak2k7**(-1)
      abb71(6)=spbl6k2**(-1)
      abb71(7)=spbk3k2*spak3k4
      abb71(8)=abb71(7)*spak1l5
      abb71(9)=spbk7k2*spak4k7
      abb71(10)=abb71(9)*spak1l5
      abb71(11)=abb71(8)-abb71(10)
      abb71(11)=abb71(11)*abb71(6)
      abb71(12)=abb71(7)*spak1l6
      abb71(13)=abb71(9)*spak1l6
      abb71(14)=abb71(12)-abb71(13)
      abb71(14)=abb71(14)*abb71(4)
      abb71(15)=abb71(11)+abb71(14)
      abb71(16)=es12+es71-es712
      abb71(17)=gW*TR
      abb71(17)=abb71(3)*abb71(1)*abb71(2)*CVDU*mB*c2*abb71(17)**2
      abb71(18)=abb71(17)*i_*abb71(5)
      abb71(19)=16.0_ki*abb71(18)
      abb71(20)=abb71(19)*spbk7k3
      abb71(21)=abb71(20)*abb71(16)*abb71(15)
      abb71(22)=abb71(6)*spak1l5
      abb71(23)=abb71(4)*spak1l6
      abb71(24)=abb71(22)+abb71(23)
      abb71(25)=abb71(24)*spbk3k2*spak2k4
      abb71(26)=spbk7k2*abb71(25)
      abb71(27)=abb71(26)*abb71(18)
      abb71(28)=32.0_ki*abb71(27)
      abb71(29)=spak1l5*spak2l6
      abb71(30)=spak1l6*spak2l5
      abb71(29)=abb71(29)+abb71(30)
      abb71(29)=abb71(29)*spbk7k2
      abb71(30)=spak4k7*abb71(29)
      abb71(8)=-spak2l6*abb71(8)
      abb71(12)=-spak2l5*abb71(12)
      abb71(8)=abb71(30)+abb71(8)+abb71(12)
      abb71(12)=spak2l5*spbl5k2
      abb71(12)=-abb71(16)+2.0_ki*abb71(12)
      abb71(11)=-abb71(12)*abb71(11)
      abb71(30)=spak2l6*spbl6k2
      abb71(30)=-abb71(16)+2.0_ki*abb71(30)
      abb71(14)=-abb71(30)*abb71(14)
      abb71(8)=abb71(14)+2.0_ki*abb71(8)+abb71(11)
      abb71(11)=abb71(18)*spbk7k3
      abb71(8)=4.0_ki*abb71(8)*abb71(11)
      abb71(14)=8.0_ki*abb71(18)
      abb71(31)=abb71(26)*abb71(14)
      abb71(26)=abb71(26)*abb71(19)
      abb71(15)=spbk7k3*abb71(15)*abb71(14)
      abb71(27)=4.0_ki*abb71(27)
      abb71(32)=abb71(24)*abb71(7)
      abb71(33)=spbk7l6*abb71(32)
      abb71(34)=-abb71(16)*abb71(24)
      abb71(35)=-spbk7l6*abb71(34)
      abb71(36)=abb71(5)*spak4k7
      abb71(37)=-abb71(35)*abb71(36)
      abb71(33)=abb71(33)+abb71(37)
      abb71(37)=8.0_ki*i_
      abb71(17)=spbk7k3*abb71(37)*abb71(17)
      abb71(33)=abb71(33)*abb71(17)
      abb71(37)=abb71(25)*spbk7l6
      abb71(38)=abb71(37)*abb71(19)
      abb71(39)=spak3k4*spbk7k3**2
      abb71(40)=spak1k7*abb71(39)*abb71(19)
      abb71(41)=-abb71(4)*abb71(40)
      abb71(11)=abb71(11)*spak1k4
      abb71(11)=32.0_ki*abb71(11)
      abb71(42)=-abb71(4)*abb71(11)
      abb71(43)=abb71(9)-abb71(7)
      abb71(43)=spbk7k3*abb71(43)*spak1k2
      abb71(44)=abb71(4)*abb71(43)
      abb71(37)=abb71(44)+abb71(37)
      abb71(37)=abb71(37)*abb71(14)
      abb71(44)=abb71(20)*abb71(4)
      abb71(45)=abb71(44)*spak1k4
      abb71(46)=abb71(14)*abb71(4)
      abb71(47)=abb71(46)*spak1k2
      abb71(48)=abb71(39)*abb71(47)
      abb71(32)=spbk7l5*abb71(32)
      abb71(34)=-spbk7l5*abb71(34)
      abb71(36)=-abb71(34)*abb71(36)
      abb71(32)=abb71(32)+abb71(36)
      abb71(17)=abb71(32)*abb71(17)
      abb71(25)=abb71(25)*spbk7l5
      abb71(32)=abb71(25)*abb71(19)
      abb71(36)=-abb71(6)*abb71(40)
      abb71(11)=-abb71(6)*abb71(11)
      abb71(40)=abb71(6)*abb71(43)
      abb71(25)=abb71(40)+abb71(25)
      abb71(25)=abb71(25)*abb71(14)
      abb71(20)=abb71(20)*abb71(6)
      abb71(40)=abb71(20)*spak1k4
      abb71(43)=abb71(14)*abb71(6)
      abb71(49)=abb71(43)*spak1k2
      abb71(39)=abb71(39)*abb71(49)
      abb71(50)=abb71(23)*spbk7k2
      abb71(51)=abb71(22)*spbk7k2
      abb71(52)=abb71(50)+abb71(51)
      abb71(53)=abb71(19)*abb71(52)*abb71(16)
      abb71(12)=abb71(12)*abb71(51)
      abb71(30)=abb71(30)*abb71(50)
      abb71(12)=abb71(30)+2.0_ki*abb71(29)+abb71(12)
      abb71(18)=4.0_ki*abb71(18)
      abb71(12)=abb71(12)*abb71(18)
      abb71(29)=-abb71(52)*abb71(14)
      abb71(30)=-abb71(35)*abb71(14)
      abb71(35)=spbk7k2*abb71(47)
      abb71(34)=-abb71(34)*abb71(14)
      abb71(50)=spbk7k2*abb71(49)
      abb71(51)=spak1k2*abb71(44)
      abb71(47)=spbk7k3*abb71(47)
      abb71(52)=spak1k2*abb71(20)
      abb71(49)=spbk7k3*abb71(49)
      abb71(24)=abb71(24)*spak3k4*spbk3k2**2
      abb71(54)=abb71(24)*abb71(19)
      abb71(18)=abb71(24)*abb71(18)
      abb71(24)=spak3k4*spbl6k3
      abb71(55)=spak4k7*spbk7l6
      abb71(24)=abb71(24)-abb71(55)
      abb71(55)=spak1l5*spbk3k2
      abb71(56)=-abb71(24)*abb71(55)
      abb71(57)=spbl6k3*abb71(10)
      abb71(56)=abb71(56)+abb71(57)
      abb71(56)=abb71(6)*abb71(56)
      abb71(57)=spak1l6*spbk3k2
      abb71(24)=-abb71(24)*abb71(57)
      abb71(58)=spbl6k3*abb71(13)
      abb71(24)=abb71(24)+abb71(58)
      abb71(24)=abb71(4)*abb71(24)
      abb71(24)=abb71(56)+abb71(24)
      abb71(24)=abb71(24)*abb71(14)
      abb71(56)=spak3k4*spbl5k3
      abb71(58)=spak4k7*spbk7l5
      abb71(56)=abb71(56)-abb71(58)
      abb71(55)=-abb71(56)*abb71(55)
      abb71(10)=spbl5k3*abb71(10)
      abb71(10)=abb71(55)+abb71(10)
      abb71(10)=abb71(6)*abb71(10)
      abb71(55)=-abb71(56)*abb71(57)
      abb71(13)=spbl5k3*abb71(13)
      abb71(13)=abb71(55)+abb71(13)
      abb71(13)=abb71(4)*abb71(13)
      abb71(10)=abb71(10)+abb71(13)
      abb71(10)=abb71(10)*abb71(14)
      abb71(13)=spbl6k2*abb71(23)
      abb71(13)=spak1l5+abb71(13)
      abb71(13)=abb71(13)*abb71(14)
      abb71(22)=spbl5k2*abb71(22)
      abb71(22)=spak1l6+abb71(22)
      abb71(14)=abb71(22)*abb71(14)
      abb71(22)=-spak1k7*abb71(44)
      abb71(20)=-spak1k7*abb71(20)
      abb71(23)=abb71(16)*spbk7k3
      abb71(44)=abb71(23)*abb71(46)
      abb71(55)=-spak4k7*abb71(44)
      abb71(23)=abb71(23)*abb71(43)
      abb71(56)=-spak4k7*abb71(23)
      abb71(57)=-abb71(16)*abb71(46)
      abb71(16)=-abb71(16)*abb71(43)
      abb71(58)=spbk3k2*spak4k7
      abb71(59)=-abb71(46)*abb71(58)
      abb71(58)=-abb71(43)*abb71(58)
      abb71(44)=spak3k4*abb71(44)
      abb71(60)=spbk7k2*spak2k4
      abb71(19)=abb71(60)*abb71(19)
      abb71(61)=abb71(4)*abb71(19)
      abb71(62)=abb71(60)*abb71(46)
      abb71(23)=spak3k4*abb71(23)
      abb71(19)=abb71(6)*abb71(19)
      abb71(60)=abb71(60)*abb71(43)
      abb71(7)=abb71(9)+abb71(7)
      abb71(9)=abb71(7)*abb71(46)
      abb71(7)=abb71(7)*abb71(43)
      R2d71=0.0_ki
      rat2 = rat2 + R2d71
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='71' value='", &
          & R2d71, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd71h0
