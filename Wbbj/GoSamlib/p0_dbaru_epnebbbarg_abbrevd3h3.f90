module     p0_dbaru_epnebbbarg_abbrevd3h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(17), public :: abb3
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
      abb3(5)=spak2l5**(-1)
      abb3(6)=spak2k7**(-1)
      abb3(7)=spak2l6**(-1)
      abb3(8)=c3-c1
      abb3(9)=-abb3(7)*spbk7l5*abb3(8)
      abb3(8)=-abb3(5)*spbk7l6*abb3(8)
      abb3(8)=abb3(9)+abb3(8)
      abb3(9)=NC*spak2k4
      abb3(10)=gW*TR
      abb3(10)=abb3(6)*abb3(10)**2*abb3(4)*abb3(1)*abb3(2)*CVDU*mB*spak1k2*i_
      abb3(11)=abb3(10)*abb3(3)
      abb3(12)=spbk3k2*abb3(11)
      abb3(13)=abb3(12)*abb3(9)
      abb3(13)=24.0_ki*abb3(13)
      abb3(13)=abb3(8)*abb3(13)
      abb3(14)=-abb3(3)*es34*abb3(8)
      abb3(14)=abb3(8)+abb3(14)
      abb3(10)=12.0_ki*abb3(14)*abb3(10)*NC
      abb3(8)=12.0_ki*abb3(11)*abb3(9)*spbk4k3*abb3(8)
      abb3(9)=-abb3(7)*spbl5k3
      abb3(11)=-abb3(5)*spbl6k3
      abb3(9)=abb3(9)+abb3(11)
      abb3(11)=-c1+2.0_ki*c3
      abb3(9)=abb3(9)*spak3k4*abb3(11)
      abb3(14)=abb3(7)*spbl5k2
      abb3(15)=abb3(5)*spbl6k2
      abb3(14)=abb3(14)+abb3(15)
      abb3(11)=spak2k4*abb3(11)*abb3(14)
      abb3(9)=abb3(11)+abb3(9)
      abb3(9)=NC*abb3(9)
      abb3(11)=c4-c2
      abb3(14)=abb3(11)*abb3(7)
      abb3(15)=spbl5k3*abb3(14)
      abb3(11)=abb3(11)*abb3(5)
      abb3(16)=spbl6k3*abb3(11)
      abb3(15)=abb3(15)+abb3(16)
      abb3(15)=spak3k4*abb3(15)
      abb3(16)=-spbl5k2*abb3(14)
      abb3(17)=-spbl6k2*abb3(11)
      abb3(16)=abb3(16)+abb3(17)
      abb3(16)=spak2k4*abb3(16)
      abb3(9)=abb3(9)+abb3(16)+abb3(15)
      abb3(12)=4.0_ki*abb3(12)
      abb3(9)=abb3(9)*abb3(12)
      abb3(15)=spak2k4*spbk7k2
      abb3(16)=spak3k4*spbk7k3
      abb3(15)=abb3(15)-abb3(16)
      abb3(11)=-abb3(15)*abb3(11)
      abb3(16)=-c3+2.0_ki*c1
      abb3(16)=-NC*abb3(16)*abb3(15)
      abb3(17)=-abb3(5)*abb3(16)
      abb3(11)=abb3(17)+abb3(11)
      abb3(11)=abb3(11)*abb3(12)
      abb3(14)=-abb3(15)*abb3(14)
      abb3(15)=-abb3(7)*abb3(16)
      abb3(14)=abb3(15)+abb3(14)
      abb3(12)=abb3(14)*abb3(12)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd3h3
