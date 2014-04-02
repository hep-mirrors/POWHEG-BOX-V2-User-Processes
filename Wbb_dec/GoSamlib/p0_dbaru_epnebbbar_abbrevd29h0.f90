module     p0_dbaru_epnebbbar_abbrevd29h0
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(11), public :: abb29
   complex(ki), public :: R2d29
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
      abb29(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb29(2)=1.0_ki/(es34+es56-es12-es234)
      abb29(3)=NC**(-1)
      abb29(4)=spbl5k2**(-1)
      abb29(5)=sqrt(mB**2)
      abb29(6)=mB*abb29(4)
      abb29(7)=abb29(6)*spbl6k2
      abb29(8)=spak1l6*abb29(7)
      abb29(9)=spak1l5*abb29(5)
      abb29(8)=abb29(9)+abb29(8)
      abb29(9)=abb29(3)**2
      abb29(9)=abb29(9)+1.0_ki
      abb29(10)=TR*gW
      abb29(10)=abb29(10)**2*CVDU*i_*spak1k4*abb29(2)*abb29(1)
      abb29(9)=c1*abb29(10)*abb29(9)
      abb29(10)=abb29(10)*c2*abb29(3)
      abb29(9)=-abb29(9)+2.0_ki*abb29(10)
      abb29(10)=abb29(9)*spbk3k1
      abb29(8)=abb29(10)*abb29(8)
      abb29(7)=spak4l6*abb29(7)
      abb29(11)=spak4l5*abb29(5)
      abb29(7)=abb29(7)+abb29(11)
      abb29(9)=abb29(9)*spbk4k3
      abb29(7)=abb29(9)*abb29(7)
      abb29(7)=abb29(7)+abb29(8)
      abb29(7)=4.0_ki*abb29(7)
      abb29(6)=4.0_ki*abb29(6)
      abb29(8)=abb29(9)*abb29(6)
      abb29(6)=abb29(10)*abb29(6)
      R2d29=0.0_ki
      rat2 = rat2 + R2d29
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='29' value='", &
          & R2d29, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd29h0
