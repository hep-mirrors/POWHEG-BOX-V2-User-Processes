module     p0_dbaru_epnebbbarg_abbrevd302h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(14), public :: abb302
   complex(ki), public :: R2d302
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
      abb302(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb302(2)=1.0_ki/(es34+es567-es12-es234)
      abb302(3)=NC**(-1)
      abb302(4)=sqrt2**(-1)
      abb302(5)=spbl5k2**(-1)
      abb302(6)=spbk7k2**(-1)
      abb302(7)=sqrt(mB**2)
      abb302(8)=c3+c1
      abb302(8)=abb302(3)*abb302(8)
      abb302(9)=c4*abb302(3)**2
      abb302(8)=-c2+abb302(8)-abb302(9)
      abb302(9)=abb302(8)*spbk4k3
      abb302(10)=-spak4l6*abb302(9)
      abb302(8)=abb302(8)*spbk3k1
      abb302(11)=-spak1l6*abb302(8)
      abb302(10)=abb302(11)+abb302(10)
      abb302(11)=TR*gW
      abb302(11)=abb302(11)**2*CVDU*i_*spak1k4*abb302(6)*abb302(4)*abb302(2)*ab&
      &b302(1)
      abb302(12)=abb302(11)*mB*abb302(5)
      abb302(10)=abb302(10)*abb302(12)*spbl6k2
      abb302(13)=-spak4l5*abb302(9)
      abb302(14)=-spak1l5*abb302(8)
      abb302(13)=abb302(14)+abb302(13)
      abb302(11)=abb302(13)*abb302(11)*abb302(7)
      abb302(10)=abb302(11)+abb302(10)
      abb302(10)=8.0_ki*abb302(10)
      abb302(11)=8.0_ki*abb302(12)
      abb302(9)=abb302(9)*abb302(11)
      abb302(8)=abb302(8)*abb302(11)
      R2d302=0.0_ki
      rat2 = rat2 + R2d302
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='302' value='", &
          & R2d302, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd302h4
