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
      abb59(5)=es56**(-1)
      abb59(6)=spbl5k2**(-1)
      abb59(7)=spbl6k2**(-1)
      abb59(8)=1.0_ki/(es34+es567-es12-es234)
      abb59(9)=es12+es71-es712
      abb59(10)=spbk7k3*spak4l6
      abb59(11)=abb59(9)*abb59(10)
      abb59(12)=abb59(7)*spak4l5
      abb59(13)=-abb59(12)*spbl5k2*abb59(9)
      abb59(14)=spbk7k3*abb59(13)
      abb59(11)=abb59(11)-abb59(14)
      abb59(11)=abb59(11)*spak1l5
      abb59(14)=spbk7k3*spak4l5
      abb59(15)=abb59(14)*abb59(9)
      abb59(16)=abb59(6)*spak4l6
      abb59(17)=-abb59(16)*spbl6k2*abb59(9)
      abb59(18)=spbk7k3*abb59(17)
      abb59(15)=abb59(15)-abb59(18)
      abb59(15)=abb59(15)*spak1l6
      abb59(11)=abb59(11)+abb59(15)
      abb59(15)=abb59(4)*c4
      abb59(15)=abb59(15)-c1
      abb59(15)=abb59(15)*abb59(4)
      abb59(15)=abb59(15)-c4
      abb59(18)=-abb59(11)*abb59(15)
      abb59(11)=-c1*NC*abb59(11)
      abb59(19)=c1*NC
      abb59(19)=abb59(15)+abb59(19)
      abb59(20)=spak1l5*abb59(7)
      abb59(21)=spak1l6*abb59(6)
      abb59(20)=abb59(20)+abb59(21)
      abb59(21)=abb59(20)*spbk2k1
      abb59(22)=spbk7k3*abb59(21)
      abb59(23)=spak1k4*abb59(19)*abb59(9)*abb59(22)
      abb59(11)=abb59(23)+abb59(11)+abb59(18)
      abb59(18)=abb59(3)*spae7k7
      abb59(11)=abb59(11)*abb59(18)
      abb59(23)=abb59(12)+abb59(16)
      abb59(23)=abb59(23)*spbk4k3
      abb59(20)=abb59(20)*spbk3k1
      abb59(20)=abb59(23)+abb59(20)
      abb59(23)=abb59(9)*abb59(20)
      abb59(24)=abb59(8)*spbk7k2
      abb59(25)=abb59(15)*abb59(23)*abb59(24)
      abb59(26)=c1*abb59(23)*NC
      abb59(27)=abb59(24)*abb59(26)
      abb59(25)=abb59(27)+abb59(25)
      abb59(27)=spae7k7*spak1k4
      abb59(25)=abb59(25)*abb59(27)
      abb59(11)=abb59(25)+abb59(11)
      abb59(25)=TR*abb59(1)*gW
      abb59(25)=i_*abb59(25)**2*abb59(2)*abb59(5)*CVDU*mB
      abb59(28)=abb59(25)*spbe7k2
      abb59(29)=4.0_ki*abb59(28)
      abb59(11)=abb59(11)*abb59(29)
      abb59(30)=abb59(13)*spbk3k2
      abb59(9)=abb59(9)*spbk3k2
      abb59(31)=abb59(9)*spak4l6
      abb59(30)=abb59(30)-abb59(31)
      abb59(30)=abb59(30)*spak1l5
      abb59(32)=abb59(17)*spbk3k2
      abb59(33)=abb59(9)*spak4l5
      abb59(32)=abb59(32)-abb59(33)
      abb59(32)=abb59(32)*spak1l6
      abb59(30)=abb59(30)+abb59(32)
      abb59(30)=-abb59(30)*abb59(15)
      abb59(32)=spbk3k2*NC
      abb59(13)=-abb59(32)*abb59(13)
      abb59(31)=NC*abb59(31)
      abb59(13)=abb59(31)+abb59(13)
      abb59(13)=spak1l5*abb59(13)
      abb59(17)=-abb59(32)*abb59(17)
      abb59(31)=NC*abb59(33)
      abb59(17)=abb59(31)+abb59(17)
      abb59(17)=spak1l6*abb59(17)
      abb59(13)=abb59(13)+abb59(17)
      abb59(13)=c1*abb59(13)
      abb59(9)=-spak1k4*abb59(19)*abb59(9)*abb59(21)
      abb59(9)=abb59(9)+abb59(13)+abb59(30)
      abb59(9)=16.0_ki*abb59(3)*abb59(9)*abb59(25)
      abb59(12)=abb59(12)*spbl5k2
      abb59(13)=abb59(12)*spbk7k3
      abb59(10)=abb59(13)+abb59(10)
      abb59(10)=abb59(10)*spak1l5
      abb59(13)=abb59(16)*spbl6k2
      abb59(16)=abb59(13)*spbk7k3
      abb59(14)=abb59(16)+abb59(14)
      abb59(14)=abb59(14)*spak1l6
      abb59(10)=abb59(10)+abb59(14)
      abb59(14)=-abb59(10)*abb59(15)
      abb59(16)=spak1k4*abb59(22)*abb59(19)
      abb59(17)=c1*NC*abb59(10)
      abb59(14)=abb59(16)-abb59(17)+abb59(14)
      abb59(14)=abb59(14)*abb59(18)
      abb59(16)=abb59(27)*abb59(19)*abb59(24)*abb59(20)
      abb59(14)=abb59(14)+abb59(16)
      abb59(14)=abb59(14)*abb59(28)
      abb59(16)=-8.0_ki*abb59(14)
      abb59(14)=16.0_ki*abb59(14)
      abb59(17)=abb59(15)*spak2k7*abb59(10)
      abb59(19)=NC*spak2k7
      abb59(10)=c1*abb59(19)*abb59(10)
      abb59(20)=-abb59(15)*spak2k7*abb59(22)
      abb59(19)=-abb59(19)*abb59(22)*c1
      abb59(19)=abb59(19)+abb59(20)
      abb59(19)=spak1k4*abb59(19)
      abb59(10)=abb59(19)+abb59(10)+abb59(17)
      abb59(10)=abb59(3)*abb59(10)
      abb59(17)=-abb59(15)*abb59(23)*abb59(8)
      abb59(19)=-abb59(8)*abb59(26)
      abb59(17)=abb59(19)+abb59(17)
      abb59(17)=spak1k4*abb59(17)
      abb59(10)=abb59(17)+abb59(10)
      abb59(10)=spbe7k2*abb59(10)
      abb59(13)=abb59(13)+spak4l5
      abb59(13)=abb59(13)*spak1l6
      abb59(12)=abb59(12)+spak4l6
      abb59(12)=abb59(12)*spak1l5
      abb59(12)=abb59(13)+abb59(12)
      abb59(13)=spbk7e7*spbk3k2*spak2k7
      abb59(17)=-abb59(15)*abb59(13)*abb59(12)
      abb59(19)=abb59(15)*abb59(13)*abb59(21)
      abb59(20)=abb59(21)*c1
      abb59(13)=abb59(13)*NC
      abb59(22)=abb59(13)*abb59(20)
      abb59(19)=abb59(22)+abb59(19)
      abb59(19)=spak1k4*abb59(19)
      abb59(13)=-c1*abb59(13)*abb59(12)
      abb59(13)=abb59(19)+abb59(13)+abb59(17)
      abb59(13)=abb59(3)*abb59(13)
      abb59(10)=abb59(13)+abb59(10)
      abb59(10)=8.0_ki*abb59(10)*abb59(25)
      abb59(13)=abb59(15)*spbk3k2*abb59(21)
      abb59(17)=abb59(32)*abb59(20)
      abb59(13)=abb59(17)+abb59(13)
      abb59(13)=spak1k4*abb59(13)
      abb59(15)=-abb59(15)*spbk3k2*abb59(12)
      abb59(12)=-c1*abb59(32)*abb59(12)
      abb59(12)=abb59(13)+abb59(12)+abb59(15)
      abb59(12)=abb59(12)*abb59(18)*abb59(29)
      R2d59=0.0_ki
      rat2 = rat2 + R2d59
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='59' value='", &
          & R2d59, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd59h0
