module     p0_dbaru_epnebbbar_abbrevd28h0
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(10), public :: abb28
   complex(ki), public :: R2d28
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_color, only: TR
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      implicit none
      abb28(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb28(2)=1.0_ki/(es34+es56-es12-es234)
      abb28(3)=NC**(-1)
      abb28(4)=spbl6k2**(-1)
      abb28(5)=sqrt(mB**2)
      abb28(6)=CVDU*i_*spak1k4*abb28(2)*abb28(1)
      abb28(7)=TR*gW
      abb28(7)=abb28(7)**2
      abb28(8)=abb28(6)*abb28(7)*c2
      abb28(9)=2.0_ki*abb28(3)
      abb28(10)=abb28(9)*abb28(8)
      abb28(6)=abb28(6)*c1*abb28(7)*abb28(3)**2
      abb28(7)=abb28(8)*NC
      abb28(7)=-abb28(7)+abb28(10)-abb28(6)
      abb28(10)=-spak4l6*spbk4k3*abb28(7)
      abb28(7)=-spak1l6*spbk3k1*abb28(7)
      abb28(7)=abb28(7)+abb28(10)
      abb28(7)=abb28(5)*abb28(7)
      abb28(9)=-abb28(9)+NC
      abb28(10)=mB*abb28(4)
      abb28(8)=abb28(9)*abb28(8)*abb28(10)
      abb28(6)=abb28(6)*abb28(10)
      abb28(6)=abb28(6)+abb28(8)
      abb28(8)=spak4l5*spbk4k3
      abb28(9)=spak1l5*spbk3k1
      abb28(8)=abb28(9)+abb28(8)
      abb28(8)=abb28(8)*abb28(6)*spbl5k2
      abb28(7)=abb28(8)+abb28(7)
      abb28(7)=4.0_ki*abb28(7)
      abb28(8)=4.0_ki*abb28(6)*spbk4k3
      abb28(6)=4.0_ki*abb28(6)*spbk3k1
      R2d28=0.0_ki
      rat2 = rat2 + R2d28
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='28' value='", &
          & R2d28, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd28h0
