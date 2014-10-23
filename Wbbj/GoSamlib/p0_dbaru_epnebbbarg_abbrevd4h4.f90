module     p0_dbaru_epnebbbarg_abbrevd4h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(12), public :: abb4
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
      abb4(6)=spbl5k2**(-1)
      abb4(7)=spbl6k2**(-1)
      abb4(8)=spbk7k2**(-1)
      abb4(9)=spal5k7*abb4(7)
      abb4(10)=spal6k7*abb4(6)
      abb4(9)=abb4(9)+abb4(10)
      abb4(10)=c3-c1
      abb4(9)=-abb4(9)*spak1k7*abb4(10)
      abb4(11)=spbl5k2*abb4(7)*spak1l5
      abb4(11)=abb4(11)+spak1l6
      abb4(11)=-spal5k7*abb4(11)
      abb4(12)=spbl6k2*abb4(6)*spak1l6
      abb4(12)=abb4(12)+spak1l5
      abb4(12)=-spal6k7*abb4(12)
      abb4(11)=abb4(11)+abb4(12)
      abb4(10)=abb4(8)*abb4(10)*abb4(11)
      abb4(9)=abb4(10)+abb4(9)
      abb4(10)=TR*gW*spbk3k2
      abb4(9)=9.0_ki*abb4(1)*abb4(2)*abb4(3)*abb4(4)*abb4(5)*CVDU*mB*spak3k4*NC&
      &*i_*abb4(9)*abb4(10)**2
      R2d4=0.0_ki
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd4h4
