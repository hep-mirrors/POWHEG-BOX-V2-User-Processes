module     p3_usbar_epnebbbar_abbrevd28h2
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(38), public :: abb28
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
      abb28(4)=spbl5k2**(-1)
      abb28(5)=spak2l6**(-1)
      abb28(6)=sqrt(mB**2)
      abb28(7)=2.0_ki*c2
      abb28(7)=abb28(7)*abb28(3)
      abb28(8)=TR*gW
      abb28(8)=abb28(8)**2*i_*CVSU*abb28(2)*abb28(1)
      abb28(9)=abb28(8)*spbk3k1
      abb28(10)=abb28(7)*abb28(9)
      abb28(11)=abb28(3)**2
      abb28(11)=abb28(11)+1.0_ki
      abb28(9)=abb28(9)*abb28(11)
      abb28(12)=abb28(9)*c1
      abb28(12)=abb28(12)-abb28(10)
      abb28(13)=spbl6k3*spak3k4
      abb28(14)=spbl6k1*spak1k4
      abb28(13)=abb28(13)-abb28(14)
      abb28(14)=4.0_ki*abb28(13)
      abb28(12)=-spbl5k2*abb28(12)*spak2l5**2*abb28(14)
      abb28(14)=spak2k4*mB
      abb28(15)=abb28(4)*abb28(14)
      abb28(16)=abb28(15)*abb28(10)
      abb28(17)=abb28(15)*c1
      abb28(18)=abb28(17)*abb28(9)
      abb28(16)=abb28(16)-abb28(18)
      abb28(16)=abb28(16)*abb28(6)
      abb28(18)=mB**2
      abb28(19)=abb28(18)*abb28(4)
      abb28(20)=abb28(19)*spak2k4
      abb28(21)=abb28(20)*abb28(10)
      abb28(22)=abb28(19)*c1
      abb28(23)=abb28(22)*abb28(9)
      abb28(24)=abb28(23)*spak2k4
      abb28(16)=abb28(16)-abb28(21)+abb28(24)
      abb28(16)=abb28(16)*spbl6k2
      abb28(21)=spak2l5*c1
      abb28(24)=abb28(9)*abb28(21)
      abb28(25)=spak2l5*abb28(10)
      abb28(26)=abb28(24)-abb28(25)
      abb28(27)=2.0_ki*abb28(6)
      abb28(28)=spak2k4*abb28(5)
      abb28(29)=abb28(28)*mB
      abb28(30)=-abb28(27)*abb28(29)
      abb28(31)=spak4l5*spbl6l5
      abb28(30)=-abb28(30)-abb28(31)
      abb28(30)=abb28(26)*abb28(30)
      abb28(25)=abb28(25)*abb28(5)
      abb28(32)=abb28(21)*abb28(5)
      abb28(33)=abb28(32)*abb28(9)
      abb28(33)=abb28(25)-abb28(33)
      abb28(34)=abb28(18)*spak2k4
      abb28(35)=-abb28(34)*abb28(33)
      abb28(16)=abb28(16)-abb28(35)+abb28(30)
      abb28(16)=8.0_ki*abb28(16)
      abb28(30)=abb28(28)*abb28(19)
      abb28(35)=abb28(30)*abb28(10)
      abb28(36)=abb28(23)*abb28(28)
      abb28(35)=abb28(35)-abb28(36)
      abb28(35)=16.0_ki*abb28(35)
      abb28(36)=4.0_ki*abb28(26)
      abb28(13)=-abb28(13)*abb28(36)
      abb28(37)=-spbl5k3*spak3k4
      abb28(38)=spbl5k1*spak1k4
      abb28(37)=abb28(37)+abb28(38)
      abb28(37)=abb28(37)*abb28(36)
      abb28(38)=8.0_ki*abb28(26)
      abb28(7)=abb28(7)*abb28(8)
      abb28(15)=abb28(15)*abb28(7)
      abb28(8)=abb28(8)*abb28(11)
      abb28(11)=abb28(17)*abb28(8)
      abb28(11)=abb28(15)-abb28(11)
      abb28(11)=abb28(11)*abb28(6)
      abb28(15)=abb28(20)*abb28(7)
      abb28(17)=abb28(8)*abb28(22)
      abb28(20)=abb28(17)*spak2k4
      abb28(11)=abb28(11)-abb28(15)+abb28(20)
      abb28(11)=abb28(11)*spbl6k2
      abb28(15)=abb28(8)*abb28(21)
      abb28(20)=abb28(15)*abb28(29)
      abb28(21)=abb28(7)*spak2l5
      abb28(22)=abb28(5)*abb28(21)
      abb28(14)=abb28(22)*abb28(14)
      abb28(14)=abb28(20)-abb28(14)
      abb28(14)=abb28(14)*abb28(27)
      abb28(8)=abb28(32)*abb28(8)
      abb28(8)=abb28(8)-abb28(22)
      abb28(8)=abb28(8)*abb28(34)
      abb28(15)=abb28(21)-abb28(15)
      abb28(20)=abb28(15)*abb28(31)
      abb28(8)=abb28(20)+abb28(11)+abb28(14)-abb28(8)
      abb28(11)=spbk4k1*abb28(8)
      abb28(14)=abb28(10)*abb28(19)
      abb28(14)=abb28(14)-abb28(23)
      abb28(20)=abb28(10)*abb28(4)*mB
      abb28(9)=abb28(9)*mB
      abb28(21)=abb28(9)*abb28(4)*c1
      abb28(20)=abb28(20)-abb28(21)
      abb28(20)=abb28(20)*abb28(6)
      abb28(21)=abb28(14)-abb28(20)
      abb28(21)=abb28(21)*spbl6k2
      abb28(18)=abb28(26)*abb28(18)*abb28(5)
      abb28(9)=abb28(9)*abb28(32)
      abb28(22)=abb28(25)*mB
      abb28(9)=abb28(9)-abb28(22)
      abb28(22)=abb28(9)*abb28(27)
      abb28(18)=abb28(21)+abb28(18)-abb28(22)
      abb28(21)=-spak2k3*abb28(18)
      abb28(22)=abb28(26)*spbl6l5
      abb28(25)=-spak3l5*abb28(22)
      abb28(11)=abb28(25)+abb28(21)+abb28(11)
      abb28(11)=4.0_ki*abb28(11)
      abb28(7)=abb28(30)*abb28(7)
      abb28(17)=abb28(17)*abb28(28)
      abb28(7)=abb28(7)-abb28(17)
      abb28(17)=spbk4k1*abb28(7)
      abb28(14)=abb28(14)*abb28(5)
      abb28(21)=spak2k3*abb28(14)
      abb28(17)=abb28(17)+abb28(21)
      abb28(17)=8.0_ki*abb28(17)
      abb28(15)=4.0_ki*abb28(15)
      abb28(21)=-spbk4k1*abb28(15)
      abb28(8)=-spbk4k3*abb28(8)
      abb28(18)=-spak1k2*abb28(18)
      abb28(22)=spak1l5*abb28(22)
      abb28(8)=abb28(22)+abb28(18)+abb28(8)
      abb28(8)=4.0_ki*abb28(8)
      abb28(7)=-spbk4k3*abb28(7)
      abb28(14)=spak1k2*abb28(14)
      abb28(7)=abb28(7)+abb28(14)
      abb28(7)=8.0_ki*abb28(7)
      abb28(14)=spbk4k3*abb28(15)
      abb28(15)=spak2l5+abb28(19)
      abb28(10)=abb28(15)*abb28(10)
      abb28(10)=-abb28(10)+abb28(24)+abb28(20)+abb28(23)
      abb28(15)=spbk3k2*spak3k4
      abb28(18)=spbk2k1*spak1k4
      abb28(15)=abb28(15)+abb28(18)
      abb28(15)=4.0_ki*abb28(15)
      abb28(10)=abb28(10)*abb28(15)
      abb28(15)=abb28(33)*abb28(19)*abb28(15)
      abb28(18)=abb28(26)*spbl6k2
      abb28(9)=abb28(9)*abb28(6)
      abb28(9)=abb28(18)-abb28(9)
      abb28(9)=4.0_ki*abb28(9)
      abb28(18)=-spak3k4*abb28(9)
      abb28(9)=spak1k4*abb28(9)
      R2d28=0.0_ki
      rat2 = rat2 + R2d28
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='28' value='", &
          & R2d28, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd28h2
