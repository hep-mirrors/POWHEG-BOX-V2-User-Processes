module     p0_dbaru_epnebbbarg_abbrevd121h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(19), public :: abb121
   complex(ki), public :: R2d121
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
      abb121(1)=1.0_ki/(-mB**2+es67)
      abb121(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb121(3)=1.0_ki/(es34+es567-es12-es234)
      abb121(4)=sqrt(mB**2)
      abb121(5)=NC**(-1)
      abb121(6)=sqrt2**(-1)
      abb121(7)=spbk7k2**(-1)
      abb121(8)=2.0_ki*abb121(5)
      abb121(9)=abb121(8)-NC
      abb121(10)=TR*gW
      abb121(10)=abb121(6)*abb121(10)**2*CVDU*i_*spak1k4*abb121(4)*abb121(3)*ab&
      &b121(2)*abb121(1)
      abb121(11)=abb121(10)*spal6k7
      abb121(12)=abb121(11)*spbk4k3
      abb121(13)=c3*abb121(7)
      abb121(14)=-abb121(9)*abb121(12)*abb121(13)
      abb121(15)=c2*abb121(5)**2
      abb121(16)=abb121(15)*abb121(7)
      abb121(17)=abb121(16)*abb121(12)
      abb121(14)=abb121(17)+abb121(14)
      abb121(17)=-spak4l6*abb121(14)
      abb121(11)=abb121(11)*spbk3k1
      abb121(18)=-abb121(9)*abb121(11)*abb121(13)
      abb121(19)=abb121(16)*abb121(11)
      abb121(18)=abb121(19)+abb121(18)
      abb121(19)=-spak1l6*abb121(18)
      abb121(17)=abb121(19)+abb121(17)
      abb121(17)=spbl6k2*abb121(17)
      abb121(14)=-spak4l5*abb121(14)
      abb121(18)=-spak1l5*abb121(18)
      abb121(14)=abb121(18)+abb121(14)
      abb121(14)=spbl5k2*abb121(14)
      abb121(12)=-spak4k7*abb121(12)
      abb121(11)=-spak1k7*abb121(11)
      abb121(11)=abb121(11)+abb121(12)
      abb121(9)=-c3*abb121(9)
      abb121(9)=abb121(9)+abb121(15)
      abb121(9)=abb121(9)*abb121(11)
      abb121(9)=abb121(14)+abb121(17)+abb121(9)
      abb121(9)=8.0_ki*abb121(9)
      abb121(11)=abb121(16)*abb121(10)
      abb121(10)=abb121(13)*abb121(10)
      abb121(12)=abb121(10)*NC
      abb121(8)=abb121(8)*abb121(10)
      abb121(8)=-abb121(8)+abb121(11)+abb121(12)
      abb121(10)=spbk4k3*abb121(8)
      abb121(11)=spak4l6*abb121(10)
      abb121(8)=spbk3k1*abb121(8)
      abb121(12)=spak1l6*abb121(8)
      abb121(11)=abb121(11)+abb121(12)
      abb121(11)=8.0_ki*abb121(11)
      abb121(10)=-spak4k7*abb121(10)
      abb121(8)=-spak1k7*abb121(8)
      abb121(8)=abb121(10)+abb121(8)
      abb121(8)=8.0_ki*abb121(8)
      R2d121=0.0_ki
      rat2 = rat2 + R2d121
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='121' value='", &
          & R2d121, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd121h4
