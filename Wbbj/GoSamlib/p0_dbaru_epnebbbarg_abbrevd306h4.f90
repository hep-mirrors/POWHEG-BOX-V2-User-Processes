module     p0_dbaru_epnebbbarg_abbrevd306h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(13), public :: abb306
   complex(ki), public :: R2d306
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
      abb306(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb306(2)=1.0_ki/(es34+es567-es12-es234)
      abb306(3)=NC**(-1)
      abb306(4)=sqrt2**(-1)
      abb306(5)=spbl6k2**(-1)
      abb306(6)=spbk7k2**(-1)
      abb306(7)=sqrt(mB**2)
      abb306(8)=spak1l6*spbk3k1
      abb306(9)=spak4l6*spbk4k3
      abb306(8)=abb306(8)+abb306(9)
      abb306(8)=abb306(7)*abb306(8)
      abb306(9)=spak1l5*spbk3k1
      abb306(10)=spak4l5*spbk4k3
      abb306(9)=abb306(9)+abb306(10)
      abb306(9)=spbl5k2*abb306(9)
      abb306(10)=abb306(5)*mB
      abb306(11)=-abb306(10)*abb306(9)
      abb306(11)=abb306(11)-abb306(8)
      abb306(12)=c1-c3
      abb306(11)=abb306(3)*abb306(12)*abb306(11)
      abb306(8)=c1*NC*abb306(8)
      abb306(13)=NC*abb306(10)*c1
      abb306(9)=abb306(9)*abb306(13)
      abb306(8)=abb306(11)+abb306(8)+abb306(9)
      abb306(9)=gW*TR
      abb306(9)=abb306(9)**2*abb306(4)*abb306(1)*abb306(2)*abb306(6)*CVDU*spak1&
      &k4*i_
      abb306(9)=8.0_ki*abb306(9)
      abb306(8)=abb306(8)*abb306(9)
      abb306(10)=abb306(12)*abb306(10)*abb306(3)
      abb306(10)=abb306(10)-abb306(13)
      abb306(11)=-abb306(9)*spbk4k3*abb306(10)
      abb306(9)=-abb306(9)*spbk3k1*abb306(10)
      R2d306=0.0_ki
      rat2 = rat2 + R2d306
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='306' value='", &
          & R2d306, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd306h4
