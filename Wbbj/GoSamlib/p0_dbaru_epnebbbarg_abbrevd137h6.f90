module     p0_dbaru_epnebbbarg_abbrevd137h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(57), public :: abb137
   complex(ki), public :: R2d137
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
      abb137(1)=1.0_ki/(-es71+es712-es12)
      abb137(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb137(3)=1.0_ki/(-es71+es56-es567+es234)
      abb137(4)=sqrt2**(-1)
      abb137(5)=es56**(-1)
      abb137(6)=spbk7k2**(-1)
      abb137(7)=spak2l5**(-1)
      abb137(8)=spbl5k2**(-1)
      abb137(9)=spak2l6**(-1)
      abb137(10)=1.0_ki/(es34+es567-es12-es234)
      abb137(11)=NC**(-1)
      abb137(12)=TR*gW
      abb137(13)=abb137(12)*mB
      abb137(13)=abb137(13)**2
      abb137(14)=abb137(13)*abb137(9)
      abb137(15)=abb137(5)*i_*CVDU*abb137(4)*abb137(2)
      abb137(16)=abb137(15)*abb137(6)*abb137(1)
      abb137(17)=abb137(16)*abb137(3)
      abb137(18)=spbk3k2*abb137(17)
      abb137(19)=abb137(14)*abb137(18)
      abb137(20)=NC*c1
      abb137(21)=abb137(20)*abb137(19)
      abb137(22)=abb137(19)*c4
      abb137(23)=abb137(21)-abb137(22)
      abb137(23)=abb137(23)*spak4l5
      abb137(24)=abb137(23)*spak1k2
      abb137(12)=abb137(12)**2
      abb137(25)=abb137(12)*spak1k4
      abb137(26)=abb137(25)*spbl6k2
      abb137(27)=abb137(16)*c1
      abb137(28)=abb137(26)*abb137(27)
      abb137(29)=abb137(28)*NC
      abb137(30)=abb137(16)*c4
      abb137(31)=abb137(26)*abb137(30)
      abb137(29)=abb137(29)-abb137(31)
      abb137(29)=abb137(29)*spak4l5
      abb137(32)=spbk4k3*abb137(10)
      abb137(33)=abb137(29)*abb137(32)
      abb137(34)=abb137(21)*spak1l5
      abb137(35)=abb137(22)*spak1l5
      abb137(34)=abb137(34)-abb137(35)
      abb137(36)=abb137(34)*spak2k4
      abb137(37)=abb137(8)*spak1k4
      abb137(38)=abb137(37)*abb137(21)
      abb137(39)=abb137(37)*abb137(22)
      abb137(38)=abb137(38)-abb137(39)
      abb137(40)=abb137(38)*es12
      abb137(41)=abb137(20)-c4
      abb137(18)=abb137(18)*spak1l5
      abb137(42)=abb137(18)*abb137(41)
      abb137(43)=spbl6k2*abb137(8)
      abb137(44)=abb137(43)*abb137(13)
      abb137(45)=-abb137(44)*abb137(42)
      abb137(46)=abb137(7)*spak2k4
      abb137(47)=abb137(45)*abb137(46)
      abb137(21)=abb137(21)*abb137(43)
      abb137(48)=abb137(22)*abb137(43)
      abb137(21)=abb137(21)-abb137(48)
      abb137(49)=spak4l6*spak1k2
      abb137(50)=abb137(21)*abb137(49)
      abb137(16)=abb137(16)*spak1l5
      abb137(26)=abb137(26)*abb137(16)
      abb137(51)=-abb137(26)*abb137(41)
      abb137(52)=spbk3k1*abb137(10)
      abb137(53)=abb137(51)*abb137(52)
      abb137(54)=abb137(12)*spak4l5
      abb137(55)=-abb137(42)*abb137(54)
      abb137(56)=-spbl6l5*abb137(55)
      abb137(42)=-abb137(25)*abb137(42)
      abb137(57)=-spbl6k1*abb137(42)
      abb137(24)=abb137(57)+abb137(50)+abb137(56)+abb137(47)+abb137(33)-abb137(&
      &53)-abb137(40)+abb137(24)-abb137(36)
      abb137(33)=-es12+es712-es71
      abb137(24)=8.0_ki*abb137(33)*abb137(24)
      abb137(33)=abb137(11)*c4
      abb137(36)=abb137(33)-c1
      abb137(18)=-abb137(11)*abb137(18)*abb137(36)
      abb137(40)=-abb137(44)*abb137(18)
      abb137(40)=abb137(40)+abb137(45)
      abb137(40)=abb137(7)*abb137(40)
      abb137(19)=abb137(19)*c1
      abb137(44)=-spak1l5*abb137(19)
      abb137(35)=abb137(11)*abb137(35)
      abb137(35)=abb137(44)+abb137(35)
      abb137(35)=abb137(11)*abb137(35)
      abb137(34)=abb137(40)+abb137(35)-abb137(34)
      abb137(34)=spak2k4*abb137(34)
      abb137(35)=abb137(43)*abb137(19)
      abb137(40)=-abb137(11)*abb137(48)
      abb137(35)=abb137(35)+abb137(40)
      abb137(35)=abb137(11)*abb137(35)
      abb137(21)=abb137(35)+abb137(21)
      abb137(21)=spak4l6*abb137(21)
      abb137(35)=spak4l5*abb137(19)
      abb137(40)=abb137(11)*spak4l5
      abb137(22)=-abb137(22)*abb137(40)
      abb137(22)=abb137(35)+abb137(22)
      abb137(22)=abb137(11)*abb137(22)
      abb137(21)=abb137(21)+abb137(23)+abb137(22)
      abb137(21)=spak1k2*abb137(21)
      abb137(19)=-abb137(37)*abb137(19)
      abb137(22)=abb137(11)*abb137(39)
      abb137(19)=abb137(19)+abb137(22)
      abb137(19)=abb137(11)*abb137(19)
      abb137(19)=abb137(19)-abb137(38)
      abb137(19)=es12*abb137(19)
      abb137(22)=spak4l5*abb137(28)
      abb137(23)=-abb137(31)*abb137(40)
      abb137(22)=abb137(22)+abb137(23)
      abb137(22)=abb137(11)*abb137(22)
      abb137(22)=abb137(29)+abb137(22)
      abb137(22)=abb137(22)*abb137(32)
      abb137(23)=abb137(36)*abb137(11)
      abb137(26)=-abb137(26)*abb137(23)
      abb137(26)=abb137(26)-abb137(51)
      abb137(26)=abb137(26)*abb137(52)
      abb137(28)=abb137(18)*abb137(54)
      abb137(28)=-abb137(55)+abb137(28)
      abb137(28)=spbl6l5*abb137(28)
      abb137(18)=abb137(25)*abb137(18)
      abb137(18)=abb137(18)-abb137(42)
      abb137(18)=spbl6k1*abb137(18)
      abb137(18)=abb137(18)+abb137(28)+abb137(26)+abb137(22)+abb137(19)+abb137(&
      &21)+abb137(34)
      abb137(18)=16.0_ki*abb137(18)
      abb137(19)=abb137(23)-abb137(41)
      abb137(13)=abb137(13)*abb137(17)
      abb137(17)=abb137(13)*abb137(9)
      abb137(21)=spak2k4*abb137(19)*abb137(17)*spak1l5
      abb137(22)=-abb137(11)*spak4l5*abb137(36)
      abb137(26)=abb137(41)*spak4l5
      abb137(22)=abb137(22)+abb137(26)
      abb137(26)=spak1k2*abb137(17)*abb137(22)
      abb137(28)=es12*abb137(19)*abb137(37)*abb137(17)
      abb137(20)=abb137(23)-abb137(20)
      abb137(13)=abb137(13)*spak1l5
      abb137(23)=abb137(20)*abb137(13)*abb137(43)
      abb137(29)=abb137(43)*c4
      abb137(13)=abb137(29)*abb137(13)
      abb137(13)=abb137(13)+abb137(23)
      abb137(13)=abb137(13)*abb137(46)
      abb137(12)=spbl6l5*abb137(22)*abb137(3)*abb137(16)*abb137(12)
      abb137(20)=-abb137(20)*abb137(17)*abb137(43)
      abb137(17)=-abb137(29)*abb137(17)
      abb137(17)=abb137(17)+abb137(20)
      abb137(17)=abb137(17)*abb137(49)
      abb137(16)=abb137(25)*abb137(16)
      abb137(20)=-spbl6k1*abb137(19)*abb137(16)*abb137(3)
      abb137(12)=abb137(20)+abb137(17)+abb137(12)+abb137(13)+abb137(28)+abb137(&
      &21)+abb137(26)
      abb137(12)=spbk7k3*abb137(12)
      abb137(13)=abb137(15)*abb137(1)*abb137(14)*abb137(37)
      abb137(14)=abb137(13)*abb137(33)
      abb137(15)=c1*abb137(13)
      abb137(14)=abb137(14)-abb137(15)
      abb137(14)=abb137(14)*abb137(11)
      abb137(15)=abb137(15)*NC
      abb137(13)=abb137(13)*c4
      abb137(13)=abb137(14)-abb137(15)+abb137(13)
      abb137(14)=-spak2k4*abb137(32)
      abb137(15)=spak1k2*abb137(52)
      abb137(14)=abb137(15)+abb137(14)
      abb137(13)=abb137(13)*abb137(14)
      abb137(14)=abb137(25)*abb137(30)
      abb137(15)=abb137(25)*abb137(27)
      abb137(17)=NC*abb137(15)
      abb137(17)=-abb137(14)+abb137(17)
      abb137(17)=spak4l5*abb137(17)
      abb137(15)=spak4l5*abb137(15)
      abb137(14)=-abb137(40)*abb137(14)
      abb137(14)=abb137(15)+abb137(14)
      abb137(14)=abb137(11)*abb137(14)
      abb137(14)=abb137(17)+abb137(14)
      abb137(14)=abb137(14)*abb137(32)
      abb137(15)=-abb137(52)*abb137(16)*abb137(19)
      abb137(14)=abb137(14)+abb137(15)
      abb137(14)=spbk7l6*abb137(14)
      abb137(12)=abb137(14)+abb137(12)+abb137(13)
      abb137(12)=8.0_ki*abb137(12)
      R2d137=0.0_ki
      rat2 = rat2 + R2d137
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='137' value='", &
          & R2d137, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd137h6
