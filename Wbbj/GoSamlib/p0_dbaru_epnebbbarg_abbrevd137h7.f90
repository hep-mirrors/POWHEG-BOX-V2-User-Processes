module     p0_dbaru_epnebbbarg_abbrevd137h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(40), public :: abb137
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
      abb137(6)=spak2l5**(-1)
      abb137(7)=spbk7k2**(-1)
      abb137(8)=spak2l6**(-1)
      abb137(9)=spbl5k2**(-1)
      abb137(10)=spbl6k2**(-1)
      abb137(11)=1.0_ki/(es34+es567-es12-es234)
      abb137(12)=NC**(-1)
      abb137(13)=c1*spbk3k2
      abb137(14)=abb137(13)*NC
      abb137(15)=c4*spbk3k2
      abb137(14)=abb137(14)-abb137(15)
      abb137(16)=es12+es71-es712
      abb137(14)=abb137(14)*abb137(16)
      abb137(17)=abb137(14)*spbl6l5
      abb137(18)=spak4l6*abb137(17)
      abb137(14)=abb137(14)*spak1k4
      abb137(19)=-spbl5k1*abb137(14)
      abb137(18)=abb137(19)+abb137(18)
      abb137(18)=abb137(8)*abb137(18)
      abb137(17)=-spak4l5*abb137(17)
      abb137(14)=-spbl6k1*abb137(14)
      abb137(14)=abb137(14)+abb137(17)
      abb137(14)=abb137(6)*abb137(14)
      abb137(14)=abb137(18)+abb137(14)
      abb137(14)=abb137(3)*abb137(14)
      abb137(17)=abb137(16)*NC
      abb137(18)=c1*abb137(11)
      abb137(19)=-abb137(18)*abb137(17)
      abb137(20)=c4*abb137(11)
      abb137(21)=abb137(16)*abb137(20)
      abb137(19)=abb137(19)+abb137(21)
      abb137(21)=spbl5k2*spbk3k1
      abb137(22)=abb137(8)*spak1k4
      abb137(19)=abb137(22)*abb137(21)*abb137(19)
      abb137(23)=NC*spbl6k2
      abb137(24)=-abb137(18)*abb137(23)
      abb137(25)=spbl6k2*abb137(20)
      abb137(24)=abb137(24)+abb137(25)
      abb137(25)=abb137(6)*spak1k4
      abb137(24)=abb137(25)*abb137(24)*abb137(16)*spbk3k1
      abb137(14)=abb137(14)+abb137(19)+abb137(24)
      abb137(14)=spak1k2*abb137(14)
      abb137(19)=c4*spak2k4
      abb137(24)=abb137(19)*abb137(11)
      abb137(26)=abb137(16)*abb137(24)
      abb137(27)=c1*spak2k4
      abb137(28)=abb137(27)*abb137(11)
      abb137(29)=abb137(28)*abb137(17)
      abb137(29)=abb137(29)-abb137(26)
      abb137(30)=spbl5k2*spbk4k3
      abb137(29)=abb137(22)*abb137(30)*abb137(29)
      abb137(31)=abb137(23)*spbk4k3
      abb137(32)=abb137(16)*abb137(28)*abb137(31)
      abb137(33)=spbl6k2*spbk4k3
      abb137(26)=-abb137(33)*abb137(26)
      abb137(26)=abb137(32)+abb137(26)
      abb137(26)=abb137(26)*abb137(25)
      abb137(14)=abb137(14)+abb137(29)+abb137(26)
      abb137(26)=i_*TR**2
      abb137(14)=abb137(14)*abb137(26)
      abb137(29)=abb137(19)*spbk3k2
      abb137(32)=abb137(27)*spbk3k2
      abb137(34)=NC*abb137(32)
      abb137(34)=abb137(34)-abb137(29)
      abb137(35)=spbl5k2*abb137(10)
      abb137(36)=abb137(8)**2
      abb137(34)=abb137(36)*abb137(34)*abb137(16)*abb137(35)
      abb137(17)=abb137(32)*abb137(17)
      abb137(37)=-abb137(16)*abb137(29)
      abb137(17)=abb137(17)+abb137(37)
      abb137(37)=2.0_ki*abb137(8)
      abb137(17)=abb137(17)*abb137(37)
      abb137(38)=abb137(23)*abb137(32)
      abb137(39)=-spbl6k2*abb137(29)
      abb137(38)=abb137(38)+abb137(39)
      abb137(16)=abb137(6)*abb137(38)*abb137(16)*abb137(9)
      abb137(16)=abb137(17)+abb137(16)
      abb137(16)=abb137(6)*abb137(16)
      abb137(16)=abb137(34)+abb137(16)
      abb137(17)=abb137(3)*mB**2*abb137(26)*spak1k2
      abb137(16)=abb137(16)*abb137(17)
      abb137(14)=abb137(14)+abb137(16)
      abb137(16)=abb137(4)*abb137(2)*abb137(1)*gW**2*abb137(5)*abb137(7)*CVDU*mB
      abb137(34)=8.0_ki*abb137(16)
      abb137(14)=abb137(14)*abb137(34)
      abb137(38)=abb137(12)**2
      abb137(38)=abb137(38)+1.0_ki
      abb137(15)=abb137(38)*abb137(15)
      abb137(39)=NC+abb137(12)
      abb137(13)=abb137(39)*abb137(13)
      abb137(13)=abb137(15)-abb137(13)
      abb137(15)=abb137(13)*spbl6l5*spak4l6
      abb137(40)=-spak1k4*spbl5k1*abb137(13)
      abb137(15)=abb137(40)+abb137(15)
      abb137(15)=abb137(8)*abb137(15)
      abb137(40)=-abb137(13)*spbl6l5*spak4l5
      abb137(13)=-spak1k4*spbl6k1*abb137(13)
      abb137(13)=abb137(13)+abb137(40)
      abb137(13)=abb137(6)*abb137(13)
      abb137(13)=abb137(15)+abb137(13)
      abb137(13)=abb137(3)*abb137(13)
      abb137(15)=abb137(18)*abb137(39)
      abb137(40)=-abb137(20)*abb137(38)
      abb137(15)=abb137(15)+abb137(40)
      abb137(15)=abb137(22)*abb137(21)*abb137(15)
      abb137(21)=abb137(12)*spbk3k1
      abb137(40)=spbl6k2*abb137(21)
      abb137(23)=spbk3k1*abb137(23)
      abb137(23)=abb137(40)+abb137(23)
      abb137(23)=abb137(23)*abb137(18)
      abb137(20)=abb137(20)*spbk3k1*abb137(38)
      abb137(40)=-spbl6k2*abb137(20)
      abb137(23)=abb137(23)+abb137(40)
      abb137(23)=abb137(23)*abb137(25)
      abb137(13)=abb137(13)+abb137(15)+abb137(23)
      abb137(13)=spak1k2*abb137(13)
      abb137(15)=abb137(39)*abb137(28)
      abb137(23)=abb137(38)*abb137(24)
      abb137(15)=abb137(15)-abb137(23)
      abb137(24)=-abb137(22)*abb137(30)*abb137(15)
      abb137(30)=-abb137(12)*abb137(33)
      abb137(30)=abb137(30)-abb137(31)
      abb137(28)=abb137(30)*abb137(28)
      abb137(23)=abb137(33)*abb137(23)
      abb137(23)=abb137(28)+abb137(23)
      abb137(23)=abb137(23)*abb137(25)
      abb137(13)=abb137(13)+abb137(24)+abb137(23)
      abb137(13)=abb137(13)*abb137(26)
      abb137(23)=abb137(38)*abb137(29)
      abb137(24)=abb137(39)*abb137(32)
      abb137(23)=abb137(23)-abb137(24)
      abb137(24)=abb137(23)*abb137(37)
      abb137(28)=spbl6k2*abb137(9)
      abb137(29)=abb137(6)*abb137(28)*abb137(23)
      abb137(24)=abb137(24)+abb137(29)
      abb137(24)=abb137(6)*abb137(24)
      abb137(23)=abb137(36)*abb137(35)*abb137(23)
      abb137(23)=abb137(23)+abb137(24)
      abb137(23)=abb137(23)*abb137(17)
      abb137(13)=abb137(13)+abb137(23)
      abb137(13)=16.0_ki*abb137(13)*abb137(16)
      abb137(16)=abb137(38)*c4
      abb137(23)=abb137(39)*c1
      abb137(16)=abb137(16)-abb137(23)
      abb137(23)=spbl6l5*spbk7k3
      abb137(24)=abb137(16)*abb137(23)*spak4l6
      abb137(29)=spbk7k3*abb137(39)
      abb137(30)=abb137(29)*c1
      abb137(31)=spbk7k3*abb137(38)
      abb137(32)=abb137(31)*c4
      abb137(30)=abb137(30)-abb137(32)
      abb137(32)=spak1k4*spbl5k1*abb137(30)
      abb137(24)=abb137(32)+abb137(24)
      abb137(24)=abb137(8)*abb137(24)
      abb137(16)=-abb137(16)*abb137(23)*spak4l5
      abb137(23)=spak1k4*spbl6k1*abb137(30)
      abb137(16)=abb137(23)+abb137(16)
      abb137(16)=abb137(6)*abb137(16)
      abb137(16)=abb137(24)+abb137(16)
      abb137(16)=abb137(3)*abb137(16)
      abb137(23)=NC*spbk3k1
      abb137(21)=abb137(21)+abb137(23)
      abb137(18)=abb137(21)*abb137(18)
      abb137(18)=abb137(18)-abb137(20)
      abb137(20)=abb137(22)*spbk7l5*abb137(18)
      abb137(18)=abb137(25)*spbk7l6*abb137(18)
      abb137(16)=abb137(16)+abb137(20)+abb137(18)
      abb137(16)=spak1k2*abb137(16)
      abb137(18)=-abb137(22)*abb137(15)*spbk4k3*spbk7l5
      abb137(15)=-abb137(25)*abb137(15)*spbk4k3*spbk7l6
      abb137(15)=abb137(16)+abb137(18)+abb137(15)
      abb137(15)=abb137(15)*abb137(26)
      abb137(16)=abb137(29)*abb137(27)
      abb137(18)=abb137(31)*abb137(19)
      abb137(16)=abb137(16)-abb137(18)
      abb137(18)=-abb137(16)*abb137(37)
      abb137(19)=-abb137(6)*abb137(28)*abb137(16)
      abb137(18)=abb137(18)+abb137(19)
      abb137(18)=abb137(6)*abb137(18)
      abb137(16)=-abb137(36)*abb137(35)*abb137(16)
      abb137(16)=abb137(16)+abb137(18)
      abb137(16)=abb137(16)*abb137(17)
      abb137(15)=abb137(15)+abb137(16)
      abb137(15)=abb137(15)*abb137(34)
      R2d137=0.0_ki
      rat2 = rat2 + R2d137
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='137' value='", &
          & R2d137, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd137h7
