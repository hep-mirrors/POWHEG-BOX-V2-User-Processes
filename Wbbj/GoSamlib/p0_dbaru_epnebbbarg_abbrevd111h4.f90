module     p0_dbaru_epnebbbarg_abbrevd111h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(12), public :: abb111
   complex(ki), public :: R2d111
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
      abb111(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb111(2)=1.0_ki/(es34+es567-es12-es234)
      abb111(3)=sqrt2**(-1)
      abb111(4)=es56**(-1)
      abb111(5)=spbl5k2**(-1)
      abb111(6)=spbk7k2**(-1)
      abb111(7)=spbl6k2**(-1)
      abb111(8)=spak4k7*spbk4k3
      abb111(9)=spak1k7*spbk3k1
      abb111(8)=abb111(8)+abb111(9)
      abb111(9)=spbk3k1*abb111(6)
      abb111(10)=abb111(9)*spak1l6
      abb111(11)=spbk4k3*abb111(6)
      abb111(12)=abb111(11)*spak4l6
      abb111(10)=abb111(10)+abb111(12)
      abb111(12)=spbl6k2*abb111(10)
      abb111(12)=abb111(12)+abb111(8)
      abb111(12)=abb111(5)*abb111(12)
      abb111(9)=abb111(9)*spak1l5
      abb111(11)=abb111(11)*spak4l5
      abb111(9)=abb111(9)+abb111(11)
      abb111(11)=abb111(12)+abb111(9)
      abb111(12)=TR*gW
      abb111(12)=CVDU*mB*abb111(12)**2*spak1k4*i_*c2*abb111(4)*abb111(3)*abb111&
      &(2)*abb111(1)
      abb111(12)=8.0_ki*abb111(12)
      abb111(11)=abb111(11)*abb111(12)
      abb111(9)=spbl5k2*abb111(9)
      abb111(8)=abb111(9)+abb111(8)
      abb111(8)=abb111(7)*abb111(8)
      abb111(8)=abb111(8)+abb111(10)
      abb111(8)=abb111(8)*abb111(12)
      R2d111=0.0_ki
      rat2 = rat2 + R2d111
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='111' value='", &
          & R2d111, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd111h4
