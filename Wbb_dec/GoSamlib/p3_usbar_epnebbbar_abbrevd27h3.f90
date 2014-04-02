module     p3_usbar_epnebbbar_abbrevd27h3
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(35), public :: abb27
   complex(ki), public :: R2d27
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
      abb27(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb27(2)=sqrt(mB**2)
      abb27(3)=NC**(-1)
      abb27(4)=spak2l5**(-1)
      abb27(5)=spak2l6**(-1)
      abb27(6)=spbl6k2**(-1)
      abb27(7)=abb27(1)*i_*CVSU
      abb27(8)=TR*gW
      abb27(8)=abb27(8)**2
      abb27(9)=abb27(7)*abb27(8)
      abb27(10)=spak2k4*abb27(9)
      abb27(11)=abb27(3)**2
      abb27(11)=abb27(11)+1.0_ki
      abb27(12)=abb27(10)*abb27(11)
      abb27(13)=mB**2
      abb27(14)=abb27(12)*abb27(13)
      abb27(15)=spbl6k1*abb27(2)
      abb27(16)=abb27(15)*c1
      abb27(17)=abb27(14)*abb27(16)
      abb27(10)=abb27(10)*abb27(3)
      abb27(18)=2.0_ki*c2
      abb27(19)=abb27(10)*abb27(18)
      abb27(20)=abb27(19)*abb27(13)
      abb27(21)=abb27(20)*abb27(15)
      abb27(21)=abb27(17)-abb27(21)
      abb27(21)=abb27(21)*abb27(4)
      abb27(22)=abb27(12)*abb27(16)
      abb27(23)=abb27(19)*abb27(15)
      abb27(22)=abb27(22)-abb27(23)
      abb27(22)=abb27(22)*spbl5k2
      abb27(21)=abb27(21)-abb27(22)
      abb27(22)=spak1k2*spbk3k1
      abb27(23)=spak2l6*spbl6k3
      abb27(23)=-abb27(22)+abb27(23)
      abb27(21)=4.0_ki*abb27(21)*abb27(23)
      abb27(23)=abb27(12)*c1
      abb27(24)=abb27(19)-abb27(23)
      abb27(25)=abb27(15)*spbl5k3
      abb27(26)=abb27(25)*abb27(24)
      abb27(27)=8.0_ki*abb27(26)
      abb27(28)=spbl5k3*abb27(5)
      abb27(17)=abb27(28)*abb27(17)
      abb27(29)=abb27(20)*abb27(28)
      abb27(30)=-abb27(15)*abb27(29)
      abb27(17)=abb27(17)+abb27(30)
      abb27(17)=8.0_ki*abb27(6)*abb27(17)
      abb27(26)=4.0_ki*abb27(26)
      abb27(7)=abb27(3)*abb27(7)
      abb27(30)=abb27(8)*abb27(7)*abb27(18)
      abb27(15)=abb27(30)*abb27(15)
      abb27(9)=abb27(11)*abb27(9)
      abb27(11)=abb27(9)*abb27(16)
      abb27(11)=abb27(11)-abb27(15)
      abb27(15)=spbl5k1*spak1k2
      abb27(16)=spak2l6*spbl6l5
      abb27(16)=abb27(16)-abb27(15)
      abb27(11)=4.0_ki*abb27(11)*abb27(16)
      abb27(16)=abb27(20)*abb27(2)
      abb27(20)=abb27(2)*c1
      abb27(14)=abb27(14)*abb27(20)
      abb27(16)=-abb27(14)+abb27(16)
      abb27(16)=abb27(4)*abb27(16)
      abb27(31)=abb27(12)*abb27(20)
      abb27(32)=-abb27(2)*abb27(19)
      abb27(32)=abb27(31)+abb27(32)
      abb27(32)=spbl5k2*abb27(32)
      abb27(16)=abb27(16)+abb27(32)
      abb27(16)=spbk3k1*abb27(16)
      abb27(32)=abb27(9)*c1
      abb27(33)=abb27(32)-abb27(30)
      abb27(25)=-abb27(25)*abb27(33)
      abb27(34)=-spak4l6*abb27(25)
      abb27(28)=abb27(14)*abb27(28)
      abb27(29)=abb27(29)*abb27(2)
      abb27(28)=abb27(28)-abb27(29)
      abb27(29)=-spbk2k1*abb27(6)*abb27(28)
      abb27(16)=abb27(29)+abb27(16)+abb27(34)
      abb27(16)=4.0_ki*abb27(16)
      abb27(29)=abb27(2)*abb27(30)
      abb27(20)=abb27(9)*abb27(20)
      abb27(29)=-abb27(20)+abb27(29)
      abb27(29)=4.0_ki*spbl5k1*abb27(29)
      abb27(34)=mB**3
      abb27(13)=abb27(2)*abb27(13)
      abb27(13)=abb27(34)+abb27(13)
      abb27(13)=abb27(18)*abb27(10)*abb27(13)
      abb27(35)=-abb27(34)*abb27(23)
      abb27(13)=abb27(13)+abb27(35)-abb27(14)
      abb27(13)=abb27(4)*abb27(13)
      abb27(14)=abb27(2)+mB
      abb27(14)=abb27(14)*abb27(18)
      abb27(10)=-abb27(10)*abb27(14)
      abb27(18)=mB*abb27(23)
      abb27(10)=abb27(10)+abb27(18)+abb27(31)
      abb27(10)=spbl5k2*abb27(10)
      abb27(10)=abb27(13)+abb27(10)
      abb27(10)=spbl6k3*abb27(10)
      abb27(13)=-abb27(4)*abb27(34)*abb27(5)*abb27(24)
      abb27(18)=abb27(5)*mB
      abb27(19)=abb27(19)*abb27(18)
      abb27(23)=abb27(18)*c1
      abb27(12)=abb27(23)*abb27(12)
      abb27(12)=abb27(19)-abb27(12)
      abb27(12)=abb27(12)*spbl5k2
      abb27(12)=abb27(13)+abb27(12)
      abb27(13)=abb27(12)*abb27(22)
      abb27(19)=-spak1k4*abb27(25)
      abb27(10)=abb27(19)+abb27(13)+abb27(10)-abb27(28)
      abb27(10)=4.0_ki*abb27(10)
      abb27(13)=abb27(18)*spbl5k3
      abb27(19)=abb27(13)*abb27(24)
      abb27(22)=8.0_ki*abb27(19)
      abb27(19)=-4.0_ki*abb27(19)
      abb27(7)=abb27(14)*abb27(7)*abb27(8)
      abb27(8)=-mB*abb27(32)
      abb27(7)=abb27(7)+abb27(8)-abb27(20)
      abb27(7)=spbl6l5*abb27(7)
      abb27(8)=abb27(30)*abb27(18)
      abb27(9)=abb27(9)*abb27(23)
      abb27(8)=abb27(9)-abb27(8)
      abb27(9)=abb27(8)*abb27(15)
      abb27(7)=abb27(7)+abb27(9)
      abb27(7)=4.0_ki*abb27(7)
      abb27(9)=-abb27(13)*abb27(33)
      abb27(9)=4.0_ki*abb27(9)
      abb27(13)=spak4l6*abb27(9)
      abb27(8)=4.0_ki*abb27(8)
      abb27(12)=4.0_ki*abb27(12)
      abb27(9)=spak1k4*abb27(9)
      R2d27=0.0_ki
      rat2 = rat2 + R2d27
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='27' value='", &
          & R2d27, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd27h3
