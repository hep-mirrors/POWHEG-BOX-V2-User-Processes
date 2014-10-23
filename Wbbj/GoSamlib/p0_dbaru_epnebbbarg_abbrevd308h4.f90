module     p0_dbaru_epnebbbarg_abbrevd308h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(14), public :: abb308
   complex(ki), public :: R2d308
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
      abb308(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb308(2)=1.0_ki/(es34+es567-es12-es234)
      abb308(3)=NC**(-1)
      abb308(4)=sqrt2**(-1)
      abb308(5)=spbl5k2**(-1)
      abb308(6)=spbk7k2**(-1)
      abb308(7)=sqrt(mB**2)
      abb308(8)=c3-c1
      abb308(8)=abb308(3)*abb308(8)
      abb308(8)=-abb308(8)+c2-c4
      abb308(9)=abb308(8)*spbk4k3
      abb308(10)=spak4l6*abb308(9)
      abb308(8)=abb308(8)*spbk3k1
      abb308(11)=spak1l6*abb308(8)
      abb308(10)=abb308(11)+abb308(10)
      abb308(11)=TR*gW
      abb308(11)=abb308(11)**2*CVDU*i_*spak1k4*abb308(6)*abb308(4)*abb308(2)*ab&
      &b308(1)
      abb308(12)=abb308(11)*mB*abb308(5)
      abb308(10)=abb308(10)*abb308(12)*spbl6k2
      abb308(13)=spak4l5*abb308(9)
      abb308(14)=spak1l5*abb308(8)
      abb308(13)=abb308(14)+abb308(13)
      abb308(11)=abb308(13)*abb308(11)*abb308(7)
      abb308(10)=abb308(11)+abb308(10)
      abb308(10)=8.0_ki*abb308(10)
      abb308(11)=8.0_ki*abb308(12)
      abb308(9)=abb308(9)*abb308(11)
      abb308(8)=abb308(8)*abb308(11)
      R2d308=0.0_ki
      rat2 = rat2 + R2d308
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='308' value='", &
          & R2d308, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd308h4
