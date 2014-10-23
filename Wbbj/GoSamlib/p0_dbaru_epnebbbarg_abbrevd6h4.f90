module     p0_dbaru_epnebbbarg_abbrevd6h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(11), public :: abb6
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
      abb6(7)=spbk7k2**(-1)
      abb6(8)=spbl6k2**(-1)
      abb6(9)=c3-c1
      abb6(10)=abb6(9)*spak1l6
      abb6(9)=abb6(9)*spak1l5
      abb6(11)=-abb6(8)*spbl5k2*abb6(9)
      abb6(11)=abb6(11)-abb6(10)
      abb6(11)=spal5k7*abb6(11)
      abb6(10)=-abb6(6)*spbl6k2*abb6(10)
      abb6(9)=-abb6(9)+abb6(10)
      abb6(9)=spal6k7*abb6(9)
      abb6(9)=abb6(11)+abb6(9)
      abb6(10)=TR*gW*spbk3k2
      abb6(9)=9.0_ki*abb6(1)*abb6(2)*abb6(3)*abb6(4)*abb6(5)*abb6(7)*CVDU*mB*sp&
      &ak3k4*NC*i_*abb6(9)*abb6(10)**2
      R2d6=0.0_ki
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd6h4
