module     p0_dbaru_epnebbbarg_abbrevd59h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(33), public :: abb59
   complex(ki), public :: R2d59
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
      abb59(1)=1.0_ki/(-es71+es712-es12)
      abb59(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb59(3)=1.0_ki/(-es71+es56-es567+es234)
      abb59(4)=NC**(-1)
      abb59(5)=sqrt2**(-1)
      abb59(6)=es56**(-1)
      abb59(7)=spbl5k2**(-1)
      abb59(8)=spak2k7**(-1)
      abb59(9)=spbl6k2**(-1)
      abb59(10)=1.0_ki/(es34+es567-es12-es234)
      abb59(11)=spak1l5*abb59(9)
      abb59(12)=spak1l6*abb59(7)
      abb59(11)=abb59(11)+abb59(12)
      abb59(12)=abb59(10)*spbk7k2
      abb59(13)=abb59(11)*abb59(12)*spbk3k1
      abb59(12)=abb59(12)*spbk4k3
      abb59(14)=abb59(7)*spak4l6
      abb59(15)=abb59(12)*abb59(14)
      abb59(16)=abb59(9)*spak4l5
      abb59(12)=abb59(12)*abb59(16)
      abb59(12)=abb59(12)+abb59(13)+abb59(15)
      abb59(13)=abb59(12)*es12
      abb59(15)=abb59(12)*es712
      abb59(13)=abb59(13)-abb59(15)
      abb59(17)=abb59(12)*es71
      abb59(18)=abb59(17)+2.0_ki*abb59(13)
      abb59(18)=abb59(18)*es71
      abb59(19)=2.0_ki*es12
      abb59(20)=abb59(12)*abb59(19)
      abb59(15)=abb59(20)-abb59(15)
      abb59(15)=abb59(15)*es712
      abb59(20)=es12**2
      abb59(21)=abb59(12)*abb59(20)
      abb59(15)=abb59(21)+abb59(18)-abb59(15)
      abb59(18)=abb59(4)*c4
      abb59(18)=abb59(18)-c1
      abb59(21)=abb59(18)*abb59(4)
      abb59(21)=abb59(21)-c4
      abb59(15)=abb59(15)*abb59(21)
      abb59(12)=NC*abb59(12)
      abb59(22)=abb59(19)-es712
      abb59(22)=abb59(22)*es712
      abb59(22)=abb59(22)-abb59(20)
      abb59(23)=-abb59(12)*abb59(22)
      abb59(24)=es712-es12
      abb59(25)=-es71+2.0_ki*abb59(24)
      abb59(26)=-es71*abb59(12)*abb59(25)
      abb59(23)=abb59(26)+abb59(23)
      abb59(23)=c1*abb59(23)
      abb59(15)=abb59(23)+abb59(15)
      abb59(15)=spak1k4*abb59(15)
      abb59(14)=abb59(14)*spbl6k2
      abb59(14)=abb59(14)+spak4l5
      abb59(14)=abb59(14)*spak1l6
      abb59(16)=abb59(16)*spbl5k2
      abb59(16)=abb59(16)+spak4l6
      abb59(16)=abb59(16)*spak1l5
      abb59(14)=abb59(14)+abb59(16)
      abb59(16)=NC*abb59(14)
      abb59(23)=abb59(16)*es712
      abb59(26)=abb59(16)*abb59(19)
      abb59(26)=abb59(26)-abb59(23)
      abb59(26)=es712*abb59(26)
      abb59(27)=abb59(16)*es12
      abb59(23)=abb59(27)-abb59(23)
      abb59(27)=abb59(16)*es71
      abb59(28)=-2.0_ki*abb59(23)-abb59(27)
      abb59(28)=es71*abb59(28)
      abb59(16)=-abb59(16)*abb59(20)
      abb59(16)=abb59(28)+abb59(16)+abb59(26)
      abb59(16)=c1*abb59(16)
      abb59(26)=abb59(14)*es12
      abb59(28)=abb59(14)*es712
      abb59(26)=abb59(26)-abb59(28)
      abb59(29)=abb59(14)*es71
      abb59(30)=abb59(29)+2.0_ki*abb59(26)
      abb59(30)=abb59(30)*es71
      abb59(31)=abb59(14)*abb59(19)
      abb59(28)=abb59(31)-abb59(28)
      abb59(28)=abb59(28)*es712
      abb59(31)=abb59(14)*abb59(20)
      abb59(28)=abb59(31)+abb59(30)-abb59(28)
      abb59(30)=c4*abb59(28)
      abb59(16)=abb59(16)+abb59(30)
      abb59(16)=spbk7k3*abb59(16)
      abb59(11)=spbk2k1*abb59(11)
      abb59(30)=abb59(11)*es12
      abb59(31)=abb59(11)*es712
      abb59(30)=abb59(30)-abb59(31)
      abb59(32)=abb59(11)*es71
      abb59(33)=abb59(32)+2.0_ki*abb59(30)
      abb59(33)=abb59(33)*es71
      abb59(19)=abb59(19)*abb59(11)
      abb59(19)=abb59(19)-abb59(31)
      abb59(19)=abb59(19)*es712
      abb59(20)=abb59(20)*abb59(11)
      abb59(19)=-abb59(33)+abb59(19)-abb59(20)
      abb59(20)=c4*abb59(19)
      abb59(31)=NC*abb59(11)
      abb59(22)=-abb59(31)*abb59(22)
      abb59(25)=-es71*abb59(31)*abb59(25)
      abb59(22)=abb59(25)+abb59(22)
      abb59(22)=c1*abb59(22)
      abb59(20)=abb59(22)+abb59(20)
      abb59(20)=spbk7k3*abb59(20)
      abb59(18)=-abb59(4)*spbk7k3*abb59(18)
      abb59(19)=abb59(19)*abb59(18)
      abb59(19)=abb59(20)+abb59(19)
      abb59(19)=spak1k4*abb59(19)
      abb59(20)=abb59(28)*abb59(18)
      abb59(16)=abb59(19)+abb59(16)+abb59(20)
      abb59(16)=abb59(3)*abb59(16)
      abb59(15)=abb59(15)+abb59(16)
      abb59(16)=TR*abb59(1)*gW
      abb59(16)=i_*abb59(8)*abb59(6)*abb59(5)*abb59(2)*abb59(16)**2*CVDU*mB
      abb59(19)=8.0_ki*abb59(16)
      abb59(15)=abb59(15)*abb59(19)
      abb59(13)=abb59(13)+abb59(17)
      abb59(13)=-abb59(13)*abb59(21)
      abb59(17)=abb59(24)-es71
      abb59(20)=abb59(17)*c1
      abb59(12)=abb59(12)*abb59(20)
      abb59(12)=abb59(12)+abb59(13)
      abb59(12)=spak1k4*abb59(12)
      abb59(13)=abb59(27)+abb59(23)
      abb59(13)=c1*abb59(13)
      abb59(22)=abb59(26)+abb59(29)
      abb59(23)=-c4*abb59(22)
      abb59(13)=abb59(13)+abb59(23)
      abb59(13)=spbk7k3*abb59(13)
      abb59(23)=abb59(30)+abb59(32)
      abb59(24)=c4*abb59(23)
      abb59(25)=abb59(31)*abb59(20)
      abb59(24)=abb59(25)+abb59(24)
      abb59(24)=spbk7k3*abb59(24)
      abb59(23)=abb59(23)*abb59(18)
      abb59(23)=abb59(24)+abb59(23)
      abb59(23)=spak1k4*abb59(23)
      abb59(18)=-abb59(22)*abb59(18)
      abb59(13)=abb59(23)+abb59(13)+abb59(18)
      abb59(13)=abb59(3)*abb59(13)
      abb59(12)=abb59(12)+abb59(13)
      abb59(12)=16.0_ki*abb59(12)*abb59(16)
      abb59(13)=abb59(21)*abb59(17)*spbk3k2*abb59(11)
      abb59(16)=NC*spbk3k2
      abb59(11)=abb59(16)*abb59(11)*abb59(20)
      abb59(11)=abb59(11)+abb59(13)
      abb59(11)=spak1k4*abb59(11)
      abb59(13)=-abb59(21)*abb59(17)*spbk3k2*abb59(14)
      abb59(14)=-abb59(20)*abb59(16)*abb59(14)
      abb59(11)=abb59(11)+abb59(14)+abb59(13)
      abb59(11)=abb59(3)*abb59(11)*abb59(19)
      R2d59=0.0_ki
      rat2 = rat2 + R2d59
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='59' value='", &
          & R2d59, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd59h0
