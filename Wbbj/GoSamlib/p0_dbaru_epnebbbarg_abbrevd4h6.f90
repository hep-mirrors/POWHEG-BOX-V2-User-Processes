module     p0_dbaru_epnebbbarg_abbrevd4h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(20), public :: abb4
   complex(ki), public :: R2d4
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
      abb4(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb4(2)=sqrt2**(-1)
      abb4(3)=es234**(-1)
      abb4(4)=es567**(-1)
      abb4(5)=es56**(-1)
      abb4(6)=spbk7k2**(-1)
      abb4(7)=spbl5k2**(-1)
      abb4(8)=spak2l6**(-1)
      abb4(9)=1.0_ki/(es34+es567-es12-es234)
      abb4(10)=c3-c1
      abb4(11)=abb4(10)*spbl6k2
      abb4(12)=spak1l5*spal6k7
      abb4(13)=abb4(11)*abb4(12)
      abb4(14)=abb4(10)*spal5k7
      abb4(15)=spak1l5*spbl5k2
      abb4(16)=-abb4(15)*abb4(14)
      abb4(13)=abb4(13)-abb4(16)
      abb4(16)=-spbl6k3*abb4(13)
      abb4(17)=es12+es71-es712
      abb4(18)=abb4(8)*mB**2
      abb4(19)=abb4(18)*abb4(7)
      abb4(17)=abb4(17)*abb4(19)*spak1k7
      abb4(20)=spak1k7*spbk7l6
      abb4(18)=abb4(18)*spak1k2
      abb4(18)=abb4(20)-abb4(18)
      abb4(18)=abb4(18)*spal5k7
      abb4(17)=abb4(17)-abb4(18)
      abb4(10)=-abb4(17)*abb4(10)
      abb4(17)=-abb4(19)*spal6k7*spak1k2*abb4(11)
      abb4(10)=abb4(17)+abb4(10)
      abb4(10)=spbk3k2*abb4(10)
      abb4(10)=abb4(10)+abb4(16)
      abb4(10)=spak3k4*abb4(10)
      abb4(13)=spbl6k2*spak2k4*abb4(13)
      abb4(10)=abb4(13)+abb4(10)
      abb4(10)=abb4(3)*spbk3k2*abb4(10)
      abb4(13)=abb4(9)*spak1k4
      abb4(16)=abb4(13)*spbk3k1
      abb4(15)=abb4(16)*abb4(15)
      abb4(13)=spbk4k3*abb4(13)*spak4l5
      abb4(17)=abb4(13)*spbl5k2
      abb4(15)=abb4(17)+abb4(15)
      abb4(14)=-abb4(15)*abb4(14)
      abb4(12)=abb4(16)*abb4(12)
      abb4(13)=abb4(13)*spal6k7
      abb4(12)=abb4(13)+abb4(12)
      abb4(11)=-abb4(12)*abb4(11)
      abb4(11)=abb4(11)+abb4(14)
      abb4(11)=spbl6k2*abb4(11)
      abb4(10)=abb4(11)+abb4(10)
      abb4(11)=gW*TR
      abb4(10)=9.0_ki*abb4(1)*abb4(2)*abb4(4)*abb4(5)*abb4(6)*CVDU*NC*i_*abb4(1&
      &0)*abb4(11)**2
      R2d4=0.0_ki
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd4h6
