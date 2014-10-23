module     p0_dbaru_epnebbbarg_abbrevd16h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(20), public :: abb16
   complex(ki), public :: R2d16
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
      abb16(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb16(2)=sqrt2**(-1)
      abb16(3)=es56**(-1)
      abb16(4)=es71**(-1)
      abb16(5)=spbl5k2**(-1)
      abb16(6)=spak2k7**(-1)
      abb16(7)=spbl6k2**(-1)
      abb16(8)=NC*c3
      abb16(8)=abb16(8)-c4
      abb16(9)=TR*gW
      abb16(8)=abb16(8)*abb16(6)*CVDU*mB*abb16(9)**2*spbk7k1*i_*spak1k2*abb16(4&
      &)*abb16(3)*abb16(2)*abb16(1)
      abb16(9)=spak1l6*abb16(5)
      abb16(10)=spak1l5*abb16(7)
      abb16(11)=abb16(9)+abb16(10)
      abb16(12)=spak3k4*abb16(11)
      abb16(13)=abb16(12)*abb16(8)*spbk3k2**2
      abb16(14)=16.0_ki*abb16(13)
      abb16(9)=abb16(9)*spbl6k2
      abb16(9)=abb16(9)+spak1l5
      abb16(15)=2.0_ki*abb16(9)
      abb16(15)=spak4l6*abb16(15)
      abb16(10)=abb16(10)*spbl5k2
      abb16(10)=abb16(10)+spak1l6
      abb16(16)=2.0_ki*abb16(10)
      abb16(16)=spak4l5*abb16(16)
      abb16(15)=abb16(16)+abb16(15)
      abb16(16)=-spbk3k2*abb16(8)
      abb16(15)=abb16(16)*abb16(15)
      abb16(13)=-abb16(13)+abb16(15)
      abb16(13)=4.0_ki*abb16(13)
      abb16(12)=abb16(12)*abb16(16)
      abb16(12)=8.0_ki*abb16(12)
      abb16(15)=spbl6k3*abb16(12)
      abb16(17)=8.0_ki*spak1k4
      abb16(17)=abb16(16)*abb16(17)
      abb16(18)=-abb16(5)*abb16(17)
      abb16(12)=spbl5k3*abb16(12)
      abb16(17)=-abb16(7)*abb16(17)
      abb16(8)=-8.0_ki*abb16(8)
      abb16(9)=abb16(9)*abb16(8)
      abb16(10)=abb16(10)*abb16(8)
      abb16(11)=4.0_ki*abb16(16)*abb16(11)
      abb16(16)=8.0_ki*abb16(16)
      abb16(16)=abb16(16)*spak3k4
      abb16(19)=abb16(5)*abb16(16)
      abb16(16)=abb16(7)*abb16(16)
      abb16(20)=abb16(5)*abb16(8)
      abb16(8)=abb16(7)*abb16(8)
      R2d16=0.0_ki
      rat2 = rat2 + R2d16
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='16' value='", &
          & R2d16, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd16h0
