module     p0_dbaru_epnebbbarg_abbrevd10h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(15), public :: abb10
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
      abb10(6)=spbk7k2**(-1)
      abb10(7)=spak2l5**(-1)
      abb10(8)=spbl6k2**(-1)
      abb10(9)=1.0_ki/(es34+es567-es12-es234)
      abb10(10)=c3-c1
      abb10(11)=spak2k4*abb10(10)
      abb10(12)=abb10(10)*spak3k4
      abb10(13)=-abb10(6)*spbk7k3*abb10(12)
      abb10(11)=abb10(11)+abb10(13)
      abb10(13)=spal6k7*spbl5k2
      abb10(11)=abb10(13)*abb10(11)
      abb10(14)=es12+es71-es712
      abb10(14)=-abb10(14)*mB**2*abb10(7)*abb10(8)
      abb10(15)=spal6k7*spbk7l5
      abb10(14)=abb10(14)+abb10(15)
      abb10(12)=spbk3k2*abb10(6)*abb10(12)*abb10(14)
      abb10(11)=abb10(12)+abb10(11)
      abb10(11)=abb10(3)*spbk3k2*abb10(11)
      abb10(10)=abb10(13)*abb10(10)*abb10(9)*spak1k4
      abb10(12)=-spbk3k1*abb10(10)
      abb10(11)=abb10(12)+abb10(11)
      abb10(11)=spak1k7*abb10(11)
      abb10(10)=-spak4k7*spbk4k3*abb10(10)
      abb10(10)=abb10(10)+abb10(11)
      abb10(11)=gW*TR
      abb10(10)=9.0_ki*abb10(1)*abb10(2)*abb10(4)*abb10(5)*CVDU*NC*i_*abb10(10)&
      &*abb10(11)**2
      R2d10=0.0_ki
      rat2 = rat2 + R2d10
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='10' value='", &
          & R2d10, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd10h5
