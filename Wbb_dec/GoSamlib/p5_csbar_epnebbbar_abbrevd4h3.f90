module     p5_csbar_epnebbbar_abbrevd4h3
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(19), public :: abb4
   complex(ki), public :: R2d4
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
      abb4(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb4(2)=1.0_ki/(es34+es56-es12-es234)
      abb4(3)=es56**(-1)
      abb4(4)=spak2l5**(-1)
      abb4(5)=NC**(-1)
      abb4(6)=spak2l6**(-1)
      abb4(7)=spbl6k3*spak3k4
      abb4(8)=spbl6k1*spak1k4
      abb4(7)=abb4(7)-abb4(8)
      abb4(8)=TR*gW
      abb4(8)=CVSC*i_*mB*abb4(3)*abb4(2)*abb4(1)*abb4(8)**2
      abb4(9)=abb4(8)*spbk3k1
      abb4(10)=abb4(9)*c2
      abb4(11)=abb4(10)*NC
      abb4(9)=abb4(9)*c1
      abb4(11)=abb4(11)-abb4(9)
      abb4(12)=abb4(4)*abb4(11)
      abb4(13)=-abb4(12)*spak2l6*abb4(7)
      abb4(14)=spbl5k3*spak3k4
      abb4(15)=spbl5k1*spak1k4
      abb4(14)=abb4(14)-abb4(15)
      abb4(15)=-abb4(11)*abb4(14)
      abb4(13)=abb4(15)+abb4(13)
      abb4(13)=4.0_ki*abb4(13)
      abb4(9)=abb4(9)*abb4(5)
      abb4(9)=abb4(9)-abb4(10)
      abb4(9)=abb4(9)*abb4(5)
      abb4(10)=abb4(9)-abb4(11)
      abb4(15)=spak2k4*abb4(4)
      abb4(16)=abb4(15)*abb4(10)
      abb4(16)=16.0_ki*abb4(16)
      abb4(17)=abb4(8)*c1
      abb4(18)=abb4(15)*abb4(17)
      abb4(19)=abb4(18)*abb4(5)
      abb4(8)=abb4(8)*c2
      abb4(15)=abb4(15)*abb4(8)
      abb4(19)=abb4(19)-abb4(15)
      abb4(19)=abb4(19)*abb4(5)
      abb4(15)=abb4(15)*NC
      abb4(15)=abb4(19)-abb4(15)+abb4(18)
      abb4(18)=spbk4k1*abb4(15)
      abb4(19)=abb4(4)*abb4(9)
      abb4(12)=abb4(19)-abb4(12)
      abb4(19)=spak2k3*abb4(12)
      abb4(18)=abb4(19)+abb4(18)
      abb4(18)=8.0_ki*abb4(18)
      abb4(15)=-spbk4k3*abb4(15)
      abb4(19)=spak1k2*abb4(12)
      abb4(15)=abb4(15)+abb4(19)
      abb4(15)=8.0_ki*abb4(15)
      abb4(19)=abb4(6)*abb4(11)
      abb4(14)=-abb4(19)*spak2l5*abb4(14)
      abb4(7)=-abb4(11)*abb4(7)
      abb4(7)=abb4(7)+abb4(14)
      abb4(7)=4.0_ki*abb4(7)
      abb4(11)=spak2k4*abb4(6)
      abb4(10)=abb4(11)*abb4(10)
      abb4(10)=16.0_ki*abb4(10)
      abb4(14)=abb4(11)*abb4(17)
      abb4(17)=abb4(14)*abb4(5)
      abb4(8)=abb4(11)*abb4(8)
      abb4(11)=abb4(17)-abb4(8)
      abb4(11)=abb4(11)*abb4(5)
      abb4(8)=abb4(8)*NC
      abb4(8)=abb4(11)-abb4(8)+abb4(14)
      abb4(11)=spbk4k1*abb4(8)
      abb4(9)=abb4(6)*abb4(9)
      abb4(9)=abb4(9)-abb4(19)
      abb4(14)=spak2k3*abb4(9)
      abb4(11)=abb4(14)+abb4(11)
      abb4(11)=8.0_ki*abb4(11)
      abb4(8)=-spbk4k3*abb4(8)
      abb4(14)=spak1k2*abb4(9)
      abb4(8)=abb4(8)+abb4(14)
      abb4(8)=8.0_ki*abb4(8)
      abb4(12)=4.0_ki*abb4(12)
      abb4(14)=spak3k4*abb4(12)
      abb4(9)=4.0_ki*abb4(9)
      abb4(17)=spak3k4*abb4(9)
      abb4(12)=-spak1k4*abb4(12)
      abb4(9)=-spak1k4*abb4(9)
      R2d4=0.0_ki
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd4h3
