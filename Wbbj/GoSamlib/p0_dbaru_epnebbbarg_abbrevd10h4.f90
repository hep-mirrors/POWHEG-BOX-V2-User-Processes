module     p0_dbaru_epnebbbarg_abbrevd10h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(10), public :: abb10
   complex(ki), public :: R2d10
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
      abb10(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb10(2)=sqrt2**(-1)
      abb10(3)=es234**(-1)
      abb10(4)=es567**(-1)
      abb10(5)=es56**(-1)
      abb10(6)=spbl5k2**(-1)
      abb10(7)=spbl6k2**(-1)
      abb10(8)=-abb10(7)*spal5k7
      abb10(9)=-abb10(6)*spal6k7
      abb10(8)=abb10(8)+abb10(9)
      abb10(9)=TR*gW*spbk3k2
      abb10(10)=c3-c1
      abb10(8)=9.0_ki*abb10(1)*abb10(2)*abb10(3)*abb10(4)*abb10(5)*CVDU*mB*spak&
      &3k4*spak1k7*NC*i_*abb10(9)**2*abb10(10)*abb10(8)
      R2d10=0.0_ki
      rat2 = rat2 + R2d10
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='10' value='", &
          & R2d10, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd10h4
