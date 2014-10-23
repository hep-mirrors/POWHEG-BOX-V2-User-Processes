module     p0_dbaru_epnebbbarg_abbrevd3h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(11), public :: abb3
   complex(ki), public :: R2d3
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
      abb3(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb3(2)=sqrt2**(-1)
      abb3(3)=es234**(-1)
      abb3(4)=es56**(-1)
      abb3(5)=spbl5k2**(-1)
      abb3(6)=spbk7k2**(-1)
      abb3(7)=spbl6k2**(-1)
      abb3(8)=-abb3(7)*spak1l5
      abb3(9)=-abb3(5)*spak1l6
      abb3(8)=abb3(8)+abb3(9)
      abb3(9)=-c1+2.0_ki*c3
      abb3(9)=abb3(9)*NC
      abb3(10)=c4-c2
      abb3(9)=abb3(9)-abb3(10)
      abb3(11)=TR*gW*spbk3k2
      abb3(11)=abb3(6)*abb3(4)*abb3(3)*abb3(1)*abb3(2)*CVDU*mB*spak3k4*i_*abb3(&
      &11)**2
      abb3(8)=4.0_ki*abb3(11)*abb3(9)*abb3(8)
      abb3(9)=-c3+2.0_ki*c1
      abb3(9)=abb3(9)*NC
      abb3(9)=abb3(9)-abb3(10)
      abb3(10)=4.0_ki*spak1k7
      abb3(9)=abb3(9)*abb3(10)*abb3(11)
      abb3(10)=-abb3(5)*abb3(9)
      abb3(9)=-abb3(7)*abb3(9)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd3h4
