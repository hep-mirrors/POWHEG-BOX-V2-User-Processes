module     p5_csbar_epnebbbar_abbrevd9h0
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(19), public :: abb9
   complex(ki), public :: R2d9
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_csbar_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_color, only: TR
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      implicit none
      abb9(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb9(2)=1.0_ki/(es34+es56-es12-es234)
      abb9(3)=NC**(-1)
      abb9(4)=es56**(-1)
      abb9(5)=spbl5k2**(-1)
      abb9(6)=spbl6k2**(-1)
      abb9(7)=c2*NC
      abb9(7)=abb9(7)-c1
      abb9(8)=abb9(6)*spbl5k2
      abb9(9)=abb9(8)*spak4l5
      abb9(9)=abb9(9)+spak4l6
      abb9(10)=spak2l5*abb9(9)*abb9(7)
      abb9(11)=abb9(5)*spbl6k2
      abb9(12)=abb9(11)*spak4l6
      abb9(12)=abb9(12)+spak4l5
      abb9(13)=spak2l6*abb9(12)*abb9(7)
      abb9(12)=abb9(12)*spak2l6
      abb9(9)=abb9(9)*spak2l5
      abb9(9)=abb9(12)+abb9(9)
      abb9(12)=abb9(3)*c1
      abb9(12)=abb9(12)-c2
      abb9(9)=abb9(3)*abb9(9)*abb9(12)
      abb9(9)=abb9(9)+abb9(10)+abb9(13)
      abb9(10)=gW*TR
      abb9(10)=abb9(10)**2*abb9(1)*abb9(2)*abb9(4)*CVSC*mB*i_
      abb9(13)=-2.0_ki*abb9(9)*abb9(10)*spbk3k1
      abb9(10)=4.0_ki*abb9(10)
      abb9(14)=abb9(10)*spbk3k1
      abb9(9)=abb9(9)*abb9(14)
      abb9(11)=abb9(11)*spak2l6
      abb9(11)=abb9(11)+spak2l5
      abb9(15)=c2*spak3k4
      abb9(16)=-abb9(15)*abb9(11)
      abb9(17)=c1*spak3k4
      abb9(18)=abb9(17)*abb9(11)*abb9(3)
      abb9(16)=abb9(18)+abb9(16)
      abb9(16)=abb9(3)*abb9(16)
      abb9(18)=abb9(15)*NC
      abb9(18)=abb9(18)-abb9(17)
      abb9(19)=abb9(18)*abb9(11)
      abb9(16)=abb9(16)+abb9(19)
      abb9(16)=abb9(16)*abb9(14)
      abb9(8)=abb9(8)*spak2l5
      abb9(8)=abb9(8)+spak2l6
      abb9(15)=-abb9(15)*abb9(8)
      abb9(17)=abb9(17)*abb9(8)*abb9(3)
      abb9(15)=abb9(17)+abb9(15)
      abb9(15)=abb9(3)*abb9(15)
      abb9(17)=abb9(18)*abb9(8)
      abb9(15)=abb9(15)+abb9(17)
      abb9(14)=abb9(15)*abb9(14)
      abb9(15)=abb9(7)*abb9(11)
      abb9(11)=abb9(3)*abb9(11)*abb9(12)
      abb9(11)=abb9(11)+abb9(15)
      abb9(11)=abb9(11)*abb9(10)
      abb9(7)=abb9(7)*abb9(8)
      abb9(8)=abb9(3)*abb9(8)*abb9(12)
      abb9(7)=abb9(8)+abb9(7)
      abb9(7)=abb9(7)*abb9(10)
      R2d9=abb9(13)
      rat2 = rat2 + R2d9
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='9' value='", &
          & R2d9, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd9h0
