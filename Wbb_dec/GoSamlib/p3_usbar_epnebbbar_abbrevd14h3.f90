module     p3_usbar_epnebbbar_abbrevd14h3
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(37), public :: abb14
   complex(ki), public :: R2d14
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
      abb14(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb14(2)=NC**(-1)
      abb14(3)=es234**(-1)
      abb14(4)=es56**(-1)
      abb14(5)=spak2l5**(-1)
      abb14(6)=spak2l6**(-1)
      abb14(7)=sqrt(mB**2)
      abb14(8)=spbl5k2**(-1)
      abb14(9)=spbl6k2**(-1)
      abb14(10)=1.0_ki/(es34+es56-es12-es234)
      abb14(11)=spbk4k3*abb14(3)
      abb14(12)=c1*abb14(2)
      abb14(12)=abb14(12)-c2
      abb14(13)=-abb14(12)*spak2k4**2
      abb14(14)=abb14(11)*abb14(13)
      abb14(15)=abb14(4)*gW**2
      abb14(16)=gW*abb14(4)
      abb14(16)=abb14(16)**2
      abb14(17)=mB**2*abb14(16)
      abb14(15)=-2.0_ki*abb14(17)+1.0_ki/3.0_ki*abb14(15)
      abb14(17)=spbl6k1*abb14(5)
      abb14(18)=spbl5k1*abb14(6)
      abb14(19)=abb14(17)+abb14(18)
      abb14(20)=i_*TR**2
      abb14(21)=CVSU*abb14(1)
      abb14(15)=-4.0_ki*abb14(19)*mB*abb14(20)*abb14(14)*abb14(21)*abb14(15)
      abb14(16)=abb14(20)*abb14(16)
      abb14(20)=abb14(21)*mB
      abb14(22)=abb14(16)*abb14(20)
      abb14(11)=abb14(22)*abb14(11)
      abb14(13)=-abb14(11)*abb14(13)
      abb14(19)=abb14(13)*abb14(19)
      abb14(23)=8.0_ki*abb14(19)
      abb14(24)=-abb14(7)**2*abb14(23)
      abb14(19)=16.0_ki*abb14(19)
      abb14(14)=-mB**3*abb14(21)*abb14(16)*abb14(14)
      abb14(21)=abb14(5)**2
      abb14(25)=abb14(21)*abb14(14)
      abb14(26)=spbl6k1*abb14(25)
      abb14(27)=abb14(18)*abb14(14)*abb14(5)
      abb14(26)=abb14(26)+abb14(27)
      abb14(26)=abb14(8)*abb14(26)
      abb14(27)=abb14(14)*abb14(6)
      abb14(28)=abb14(17)*abb14(27)
      abb14(29)=abb14(6)**2
      abb14(30)=abb14(29)*abb14(14)
      abb14(31)=spbl5k1*abb14(30)
      abb14(28)=abb14(28)+abb14(31)
      abb14(28)=abb14(9)*abb14(28)
      abb14(26)=abb14(26)+abb14(28)
      abb14(26)=16.0_ki*abb14(26)
      abb14(13)=abb14(13)*spbl6l5
      abb14(13)=4.0_ki*abb14(13)
      abb14(28)=abb14(6)*abb14(13)
      abb14(13)=-abb14(5)*abb14(13)
      abb14(31)=abb14(12)*spak2k4
      abb14(11)=-abb14(11)*abb14(31)
      abb14(32)=4.0_ki*abb14(11)
      abb14(33)=abb14(17)*spak2l6
      abb14(34)=spbl5k1+abb14(33)
      abb14(34)=abb14(34)*abb14(32)
      abb14(35)=abb14(18)*spak2l5
      abb14(36)=spbl6k1+abb14(35)
      abb14(32)=abb14(36)*abb14(32)
      abb14(25)=-abb14(8)*abb14(25)
      abb14(27)=abb14(27)*abb14(5)
      abb14(36)=-abb14(9)*abb14(27)
      abb14(25)=abb14(25)+abb14(36)
      abb14(36)=2.0_ki*spbk2k1
      abb14(25)=abb14(25)*abb14(36)
      abb14(16)=spbk3k2*abb14(31)*abb14(16)*abb14(20)*abb14(3)
      abb14(12)=-spbk3k1*abb14(10)*abb14(22)*abb14(12)
      abb14(20)=abb14(12)*spak1k4
      abb14(16)=abb14(16)+abb14(20)
      abb14(20)=2.0_ki*abb14(11)
      abb14(22)=abb14(20)*spak4l5
      abb14(31)=-abb14(5)*abb14(22)
      abb14(31)=abb14(31)+abb14(16)
      abb14(31)=spbl5k1*abb14(31)
      abb14(33)=abb14(16)*abb14(33)
      abb14(12)=abb14(12)*spak3k4
      abb14(37)=-spbl6k3*spak2l6*abb14(5)
      abb14(37)=-spbl5k3+abb14(37)
      abb14(37)=abb14(12)*abb14(37)
      abb14(20)=abb14(20)*spak4l6
      abb14(17)=-abb14(17)*abb14(20)
      abb14(17)=abb14(17)+abb14(25)+abb14(33)+abb14(31)+abb14(37)
      abb14(17)=4.0_ki*abb14(17)
      abb14(11)=8.0_ki*abb14(11)
      abb14(25)=-abb14(5)*abb14(11)
      abb14(31)=-abb14(8)*abb14(27)
      abb14(30)=-abb14(9)*abb14(30)
      abb14(30)=abb14(31)+abb14(30)
      abb14(30)=abb14(30)*abb14(36)
      abb14(20)=-abb14(6)*abb14(20)
      abb14(20)=abb14(20)+abb14(16)
      abb14(20)=spbl6k1*abb14(20)
      abb14(31)=abb14(16)*abb14(35)
      abb14(33)=-spbl5k3*spak2l5*abb14(6)
      abb14(33)=abb14(33)-spbl6k3
      abb14(33)=abb14(12)*abb14(33)
      abb14(18)=-abb14(18)*abb14(22)
      abb14(18)=abb14(18)+abb14(30)+abb14(31)+abb14(20)+abb14(33)
      abb14(18)=4.0_ki*abb14(18)
      abb14(11)=-abb14(6)*abb14(11)
      abb14(12)=8.0_ki*abb14(12)
      abb14(20)=-abb14(5)*abb14(12)
      abb14(12)=-abb14(6)*abb14(12)
      abb14(21)=-spbl6k2*abb14(21)*abb14(8)
      abb14(22)=-spbl5k2*abb14(29)*abb14(9)
      abb14(21)=abb14(22)+abb14(21)
      abb14(14)=abb14(14)*abb14(21)
      abb14(14)=-2.0_ki*abb14(27)+abb14(14)
      abb14(14)=4.0_ki*abb14(14)
      abb14(16)=8.0_ki*abb14(16)
      abb14(21)=abb14(5)*abb14(16)
      abb14(16)=abb14(6)*abb14(16)
      R2d14=abb14(15)
      rat2 = rat2 + R2d14
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='14' value='", &
          & R2d14, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd14h3
