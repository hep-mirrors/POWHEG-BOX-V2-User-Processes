module     p0_dbaru_epnebbbarg_abbrevd307h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(12), public :: abb307
   complex(ki), public :: R2d307
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
      abb307(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb307(2)=1.0_ki/(es34+es567-es12-es234)
      abb307(3)=NC**(-1)
      abb307(4)=sqrt2**(-1)
      abb307(5)=spbl5k2**(-1)
      abb307(6)=sqrt(mB**2)
      abb307(7)=spbk7k2**(-1)
      abb307(8)=spak4l5*spbk4k3
      abb307(9)=spak1l5*spbk3k1
      abb307(8)=abb307(9)+abb307(8)
      abb307(9)=c3+c1
      abb307(9)=abb307(3)*abb307(9)
      abb307(10)=c2*abb307(3)**2
      abb307(9)=-abb307(10)-c4+abb307(9)
      abb307(10)=TR*gW
      abb307(10)=CVDU*i_*spak1k4*abb307(4)*abb307(2)*abb307(1)*abb307(10)**2
      abb307(8)=abb307(8)*abb307(9)*abb307(6)*abb307(10)*abb307(7)
      abb307(10)=abb307(10)*mB*abb307(5)
      abb307(11)=abb307(9)*abb307(10)*spbk4k3
      abb307(12)=spak4k7*abb307(11)
      abb307(9)=abb307(9)*abb307(10)*spbk3k1
      abb307(10)=spak1k7*abb307(9)
      abb307(8)=abb307(10)+abb307(12)+abb307(8)
      abb307(8)=8.0_ki*abb307(8)
      abb307(10)=8.0_ki*abb307(7)
      abb307(11)=-abb307(11)*abb307(10)
      abb307(9)=-abb307(9)*abb307(10)
      R2d307=0.0_ki
      rat2 = rat2 + R2d307
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='307' value='", &
          & R2d307, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd307h4
