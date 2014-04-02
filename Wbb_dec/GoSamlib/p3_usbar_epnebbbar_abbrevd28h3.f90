module     p3_usbar_epnebbbar_abbrevd28h3
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(17), public :: abb28
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
      abb28(3)=sqrt(mB**2)
      abb28(4)=NC**(-1)
      abb28(5)=spak2l6**(-1)
      abb28(6)=abb28(4)**2
      abb28(6)=abb28(6)+1.0_ki
      abb28(7)=TR*gW
      abb28(7)=abb28(7)**2*i_*CVSU*abb28(2)*abb28(1)
      abb28(8)=abb28(7)*spbk3k1
      abb28(9)=abb28(8)*abb28(6)
      abb28(10)=spbl6l5*abb28(3)
      abb28(11)=abb28(10)*spak2k4
      abb28(12)=abb28(11)*c1
      abb28(13)=abb28(12)*abb28(9)
      abb28(14)=c2*abb28(4)
      abb28(15)=2.0_ki*abb28(14)
      abb28(8)=abb28(15)*abb28(8)
      abb28(15)=abb28(11)*abb28(8)
      abb28(13)=abb28(13)-abb28(15)
      abb28(13)=8.0_ki*abb28(13)
      abb28(15)=abb28(9)*c1
      abb28(15)=abb28(15)-abb28(8)
      abb28(10)=-abb28(10)*abb28(15)
      abb28(16)=-spak2k3*abb28(10)
      abb28(14)=abb28(14)*abb28(7)
      abb28(14)=2.0_ki*abb28(14)
      abb28(11)=abb28(14)*abb28(11)
      abb28(6)=abb28(7)*abb28(6)
      abb28(7)=abb28(6)*abb28(12)
      abb28(7)=abb28(11)-abb28(7)
      abb28(11)=-spbk4k1*abb28(7)
      abb28(11)=abb28(16)+abb28(11)
      abb28(11)=4.0_ki*abb28(11)
      abb28(7)=spbk4k3*abb28(7)
      abb28(10)=-spak1k2*abb28(10)
      abb28(7)=abb28(7)+abb28(10)
      abb28(7)=4.0_ki*abb28(7)
      abb28(10)=spak3k4*spbl5k3
      abb28(12)=spak1k4*spbl5k1
      abb28(10)=abb28(10)-abb28(12)
      abb28(10)=4.0_ki*abb28(10)
      abb28(12)=-abb28(15)*abb28(3)*abb28(10)
      abb28(16)=mB*abb28(5)
      abb28(15)=abb28(16)*abb28(15)
      abb28(10)=-spak2l5*abb28(15)*abb28(10)
      abb28(16)=abb28(16)*spak2k4
      abb28(17)=abb28(16)*c1
      abb28(9)=abb28(17)*abb28(9)
      abb28(8)=abb28(16)*abb28(8)
      abb28(8)=abb28(9)-abb28(8)
      abb28(8)=8.0_ki*abb28(8)
      abb28(9)=spak2k3*abb28(15)
      abb28(14)=abb28(14)*abb28(16)
      abb28(6)=abb28(6)*abb28(17)
      abb28(6)=abb28(14)-abb28(6)
      abb28(14)=-spbk4k1*abb28(6)
      abb28(9)=abb28(9)+abb28(14)
      abb28(9)=4.0_ki*abb28(9)
      abb28(6)=spbk4k3*abb28(6)
      abb28(14)=spak1k2*abb28(15)
      abb28(6)=abb28(6)+abb28(14)
      abb28(6)=4.0_ki*abb28(6)
      R2d28=0.0_ki
      rat2 = rat2 + R2d28
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='28' value='", &
          & R2d28, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd28h3
