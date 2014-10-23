module     p0_dbaru_epnebbbarg_abbrevd6h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(19), public :: abb6
   complex(ki), public :: R2d6
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
      abb6(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb6(2)=sqrt2**(-1)
      abb6(3)=es234**(-1)
      abb6(4)=es567**(-1)
      abb6(5)=es56**(-1)
      abb6(6)=spbl5k2**(-1)
      abb6(7)=spak2k7**(-1)
      abb6(8)=spbl6k2**(-1)
      abb6(9)=spak2l5**(-1)
      abb6(10)=spak2l6**(-1)
      abb6(11)=1.0_ki/(es34+es567-es12-es234)
      abb6(12)=spak2l6*spbk7l6
      abb6(13)=spak2l5*spbk7l5
      abb6(12)=abb6(12)+abb6(13)
      abb6(13)=abb6(8)*spak1l5
      abb6(14)=abb6(6)*spak1l6
      abb6(15)=abb6(13)+abb6(14)
      abb6(12)=abb6(15)*abb6(12)
      abb6(15)=abb6(6)*abb6(8)
      abb6(16)=abb6(10)*spak2l5*abb6(8)**2
      abb6(17)=abb6(9)*spak2l6*abb6(6)**2
      abb6(15)=2.0_ki*abb6(15)+abb6(16)+abb6(17)
      abb6(15)=spbk7k2*mB**2*abb6(15)*spak1k2
      abb6(12)=abb6(15)-abb6(12)
      abb6(15)=c3-c1
      abb6(12)=spak3k4*abb6(12)*abb6(15)*abb6(3)*spbk3k2**2
      abb6(16)=spak1k4*spbk3k1
      abb6(17)=abb6(16)*spak1l6
      abb6(18)=spak1k4*spbk4k3
      abb6(19)=abb6(18)*spak4l6
      abb6(17)=abb6(17)+abb6(19)
      abb6(19)=abb6(6)*spbl6k2*abb6(17)
      abb6(18)=abb6(18)*spak4l5
      abb6(16)=abb6(16)*spak1l5
      abb6(16)=abb6(18)+abb6(16)
      abb6(18)=abb6(19)+abb6(16)
      abb6(18)=spak2l6*abb6(18)
      abb6(16)=abb6(8)*abb6(16)*spbl5k2
      abb6(16)=abb6(16)+abb6(17)
      abb6(16)=spak2l5*abb6(16)
      abb6(16)=abb6(18)+abb6(16)
      abb6(16)=abb6(11)*abb6(16)
      abb6(17)=spak2l5*abb6(8)
      abb6(18)=spak2l6*abb6(6)
      abb6(17)=abb6(17)+abb6(18)
      abb6(18)=spak1l5*spbl5k3
      abb6(19)=spak1l6*spbl6k3
      abb6(18)=abb6(18)+abb6(19)
      abb6(17)=spak3k4*abb6(17)*abb6(18)
      abb6(14)=abb6(14)*spbl6k2
      abb6(14)=abb6(14)+spak1l5
      abb6(14)=spak2l6*abb6(14)*spak2k4
      abb6(13)=spbl5k2*abb6(13)
      abb6(13)=abb6(13)+spak1l6
      abb6(13)=spak2l5*spak2k4*abb6(13)
      abb6(13)=abb6(13)+abb6(14)-abb6(17)
      abb6(13)=abb6(3)*spbk3k2*abb6(13)
      abb6(13)=abb6(13)-abb6(16)
      abb6(13)=spbk7k2*abb6(15)*abb6(13)
      abb6(12)=abb6(13)+abb6(12)
      abb6(13)=gW*TR
      abb6(12)=9.0_ki*abb6(1)*abb6(2)*abb6(4)*abb6(5)*abb6(7)*CVDU*mB*NC*i_*abb&
      &6(12)*abb6(13)**2
      R2d6=0.0_ki
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd6h0
