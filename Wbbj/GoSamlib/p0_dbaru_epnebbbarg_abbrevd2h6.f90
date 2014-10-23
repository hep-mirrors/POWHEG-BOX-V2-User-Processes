module     p0_dbaru_epnebbbarg_abbrevd2h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(9), public :: abb2
   complex(ki), public :: R2d2
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
      abb2(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb2(2)=1.0_ki/(es34+es567-es12-es234)
      abb2(3)=sqrt2**(-1)
      abb2(4)=es56**(-1)
      abb2(5)=spbk7k2**(-1)
      abb2(6)=spbk3k1*spak1k7
      abb2(7)=spbk4k3*spak4k7
      abb2(6)=abb2(6)+abb2(7)
      abb2(7)=-c3+2.0_ki*c1
      abb2(7)=abb2(7)*NC
      abb2(8)=c4-c2
      abb2(7)=abb2(7)-abb2(8)
      abb2(9)=gW*TR
      abb2(9)=abb2(5)*abb2(4)*abb2(9)**2*abb2(3)*abb2(1)*abb2(2)*CVDU*spbl6k2*s&
      &pak1k4*i_
      abb2(6)=4.0_ki*abb2(9)*abb2(7)*abb2(6)
      abb2(7)=c3+c1
      abb2(7)=abb2(7)*NC
      abb2(7)=abb2(7)-2.0_ki*abb2(8)
      abb2(8)=4.0_ki*spal5k7
      abb2(7)=abb2(7)*abb2(8)*abb2(9)
      abb2(8)=-spbk4k3*abb2(7)
      abb2(7)=-spbk3k1*abb2(7)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd2h6
