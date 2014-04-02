module     p3_usbar_epnebbbar_abbrevd28h1
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(25), public :: abb28
   complex(ki), public :: R2d28
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p3_usbar_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_color, only: TR
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      implicit none
      abb28(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb28(2)=1.0_ki/(es34+es56-es12-es234)
      abb28(3)=NC**(-1)
      abb28(4)=sqrt(mB**2)
      abb28(5)=spbl6k2**(-1)
      abb28(6)=abb28(3)**2
      abb28(6)=abb28(6)+1.0_ki
      abb28(7)=TR*gW
      abb28(7)=abb28(7)**2*i_*CVSU*abb28(2)*abb28(1)
      abb28(8)=abb28(7)*spbk3k1
      abb28(9)=abb28(8)*abb28(6)
      abb28(10)=spak2l6*c1
      abb28(11)=abb28(9)*abb28(10)
      abb28(12)=c2*abb28(3)
      abb28(13)=2.0_ki*abb28(12)
      abb28(8)=abb28(13)*abb28(8)
      abb28(13)=abb28(8)*spak2l6
      abb28(11)=abb28(11)-abb28(13)
      abb28(13)=-spbl5k2*abb28(11)
      abb28(14)=spbl5k3*spak3k4
      abb28(15)=spbl5k1*spak1k4
      abb28(14)=abb28(14)-abb28(15)
      abb28(15)=4.0_ki*abb28(14)
      abb28(16)=spak2l5*abb28(13)*abb28(15)
      abb28(17)=spbl5k2*c1
      abb28(18)=abb28(9)*abb28(17)
      abb28(19)=abb28(8)*spbl5k2
      abb28(18)=abb28(18)-abb28(19)
      abb28(19)=8.0_ki*spak2k4
      abb28(20)=abb28(4)*mB*abb28(5)
      abb28(21)=abb28(18)*abb28(19)*abb28(20)
      abb28(9)=abb28(9)*c1
      abb28(8)=abb28(9)-abb28(8)
      abb28(9)=abb28(14)*abb28(8)
      abb28(14)=8.0_ki*abb28(20)*abb28(9)
      abb28(15)=-abb28(11)*abb28(15)
      abb28(22)=4.0_ki*spak2l5
      abb28(9)=-abb28(9)*abb28(22)
      abb28(19)=abb28(8)*abb28(19)
      abb28(22)=8.0_ki*abb28(11)
      abb28(12)=abb28(12)*abb28(7)
      abb28(12)=2.0_ki*abb28(12)
      abb28(23)=abb28(12)*spbl5k2
      abb28(6)=abb28(7)*abb28(6)
      abb28(7)=abb28(6)*abb28(17)
      abb28(7)=abb28(23)-abb28(7)
      abb28(17)=spbk4k1*spak2k4
      abb28(23)=-abb28(7)*abb28(17)
      abb28(24)=spak2k3*abb28(18)
      abb28(23)=abb28(23)+abb28(24)
      abb28(20)=4.0_ki*abb28(20)
      abb28(23)=abb28(23)*abb28(20)
      abb28(24)=abb28(6)*c1
      abb28(24)=abb28(24)-abb28(12)
      abb28(17)=abb28(24)*abb28(17)
      abb28(25)=spak2k3*abb28(8)
      abb28(17)=abb28(17)+abb28(25)
      abb28(17)=4.0_ki*abb28(17)
      abb28(12)=abb28(12)*spak2l6
      abb28(6)=abb28(6)*abb28(10)
      abb28(6)=abb28(12)-abb28(6)
      abb28(6)=4.0_ki*abb28(6)
      abb28(10)=spbk4k1*abb28(6)
      abb28(12)=spbk4k3*spak2k4
      abb28(7)=abb28(7)*abb28(12)
      abb28(18)=spak1k2*abb28(18)
      abb28(7)=abb28(7)+abb28(18)
      abb28(7)=abb28(7)*abb28(20)
      abb28(12)=-abb28(24)*abb28(12)
      abb28(8)=spak1k2*abb28(8)
      abb28(8)=abb28(12)+abb28(8)
      abb28(8)=4.0_ki*abb28(8)
      abb28(6)=-spbk4k3*abb28(6)
      abb28(11)=4.0_ki*abb28(11)
      abb28(12)=4.0_ki*abb28(13)
      abb28(13)=spak3k4*abb28(12)
      abb28(12)=-spak1k4*abb28(12)
      R2d28=0.0_ki
      rat2 = rat2 + R2d28
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='28' value='", &
          & R2d28, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd28h1
