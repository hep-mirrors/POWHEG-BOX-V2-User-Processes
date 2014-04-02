module     p0_dbaru_epnebbbar_abbrevd4h0
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(13), public :: abb4
   complex(ki), public :: R2d4
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
      abb4(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb4(2)=1.0_ki/(es34+es56-es12-es234)
      abb4(3)=es56**(-1)
      abb4(4)=spbl5k2**(-1)
      abb4(5)=spbl6k2**(-1)
      abb4(6)=NC**(-1)
      abb4(7)=c2*NC
      abb4(7)=abb4(7)-c1
      abb4(8)=abb4(4)*spbl6k2
      abb4(9)=abb4(8)*spak1l6
      abb4(9)=abb4(9)+spak1l5
      abb4(9)=-spbk3k1*abb4(9)*abb4(7)
      abb4(8)=abb4(8)*spak4l6
      abb4(8)=abb4(8)+spak4l5
      abb4(8)=-spbk4k3*abb4(8)*abb4(7)
      abb4(8)=abb4(9)+abb4(8)
      abb4(9)=gW*TR
      abb4(9)=abb4(9)**2*abb4(3)*abb4(1)*abb4(2)*CVDU*mB*spak1k4*i_
      abb4(9)=4.0_ki*abb4(9)
      abb4(8)=abb4(8)*abb4(9)
      abb4(10)=abb4(5)*spbl5k2
      abb4(11)=abb4(10)*spak1l5
      abb4(11)=abb4(11)+spak1l6
      abb4(11)=-spbk3k1*abb4(11)*abb4(7)
      abb4(10)=abb4(10)*spak4l5
      abb4(10)=abb4(10)+spak4l6
      abb4(7)=-spbk4k3*abb4(10)*abb4(7)
      abb4(7)=abb4(11)+abb4(7)
      abb4(7)=abb4(7)*abb4(9)
      abb4(10)=abb4(6)**2
      abb4(10)=abb4(10)+1.0_ki
      abb4(10)=abb4(10)*c1
      abb4(11)=NC+abb4(6)
      abb4(11)=abb4(11)*c2
      abb4(10)=abb4(10)-abb4(11)
      abb4(11)=abb4(10)*abb4(4)
      abb4(12)=abb4(9)*spbk4k3
      abb4(13)=-abb4(11)*abb4(12)
      abb4(10)=abb4(10)*abb4(5)
      abb4(12)=-abb4(10)*abb4(12)
      abb4(9)=abb4(9)*spbk3k1
      abb4(11)=-abb4(11)*abb4(9)
      abb4(9)=-abb4(10)*abb4(9)
      R2d4=0.0_ki
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd4h0
