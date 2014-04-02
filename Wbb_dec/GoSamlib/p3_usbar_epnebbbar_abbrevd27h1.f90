module     p3_usbar_epnebbbar_abbrevd27h1
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(42), public :: abb27
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
      abb27(5)=spbl6k2**(-1)
      abb27(6)=spak2l6**(-1)
      abb27(7)=TR*gW
      abb27(7)=abb27(7)**2*abb27(1)*i_*CVSU
      abb27(8)=abb27(7)*abb27(3)
      abb27(9)=2.0_ki*c2
      abb27(10)=abb27(8)*abb27(9)
      abb27(11)=abb27(10)*spak2k4
      abb27(12)=abb27(2)*abb27(5)
      abb27(13)=abb27(12)*mB
      abb27(14)=abb27(11)*abb27(13)
      abb27(15)=abb27(3)**2
      abb27(15)=abb27(15)+1.0_ki
      abb27(7)=abb27(7)*abb27(15)
      abb27(15)=abb27(7)*spak2k4*c1
      abb27(16)=abb27(13)*abb27(15)
      abb27(14)=abb27(14)-abb27(16)
      abb27(14)=abb27(14)*spbl5k2
      abb27(12)=abb27(12)*spak2k4*mB**3
      abb27(17)=abb27(12)*abb27(10)
      abb27(18)=abb27(7)*c1
      abb27(19)=abb27(12)*abb27(18)
      abb27(17)=abb27(17)-abb27(19)
      abb27(17)=abb27(17)*abb27(4)
      abb27(14)=abb27(14)-abb27(17)
      abb27(17)=abb27(14)*spbk3k1
      abb27(20)=es12*abb27(17)
      abb27(21)=spbk2k1*spak2l6
      abb27(14)=-spbl6k3*abb27(14)*abb27(21)
      abb27(14)=abb27(20)+abb27(14)
      abb27(14)=4.0_ki*abb27(14)
      abb27(20)=abb27(15)*spbl5k3
      abb27(22)=abb27(10)*spbl5k3
      abb27(23)=abb27(22)*spak2k4
      abb27(20)=abb27(20)-abb27(23)
      abb27(23)=spbk2k1*abb27(13)*abb27(20)
      abb27(24)=-8.0_ki*abb27(23)
      abb27(7)=c1*abb27(7)*spbl5k3
      abb27(7)=abb27(7)-abb27(22)
      abb27(22)=abb27(13)*abb27(7)
      abb27(25)=-spbl6k1*spak4l6*abb27(22)
      abb27(17)=abb27(17)+abb27(25)
      abb27(17)=8.0_ki*abb27(17)
      abb27(11)=abb27(15)-abb27(11)
      abb27(15)=mB**2
      abb27(25)=-abb27(4)*abb27(15)
      abb27(25)=abb27(25)+spbl5k2
      abb27(11)=abb27(11)*abb27(25)
      abb27(25)=abb27(11)*spbk3k1
      abb27(26)=-spak2l6*abb27(25)
      abb27(26)=abb27(26)+abb27(23)
      abb27(26)=8.0_ki*abb27(26)
      abb27(23)=4.0_ki*abb27(23)
      abb27(27)=4.0_ki*spak1k2
      abb27(25)=-abb27(27)*abb27(25)
      abb27(28)=8.0_ki*abb27(20)
      abb27(29)=abb27(5)*spak2k4
      abb27(30)=abb27(15)*abb27(29)
      abb27(31)=-abb27(6)*abb27(30)*abb27(7)
      abb27(32)=8.0_ki*abb27(31)
      abb27(20)=4.0_ki*abb27(20)
      abb27(33)=abb27(18)*abb27(13)
      abb27(34)=abb27(13)*abb27(10)
      abb27(34)=abb27(33)-abb27(34)
      abb27(35)=abb27(34)*spbl5k1
      abb27(36)=es12*abb27(35)
      abb27(21)=-spbl6l5*abb27(34)*abb27(21)
      abb27(21)=abb27(36)+abb27(21)
      abb27(21)=4.0_ki*abb27(21)
      abb27(34)=8.0_ki*abb27(35)
      abb27(35)=abb27(18)-abb27(10)
      abb27(36)=abb27(35)*spbl5k1
      abb27(37)=8.0_ki*spak2l6
      abb27(37)=abb27(37)*abb27(36)
      abb27(27)=abb27(36)*abb27(27)
      abb27(36)=abb27(7)*spak2l6
      abb27(38)=8.0_ki*abb27(36)
      abb27(39)=8.0_ki*abb27(7)
      abb27(15)=abb27(15)*abb27(5)
      abb27(40)=abb27(15)*abb27(39)
      abb27(36)=-4.0_ki*abb27(36)
      abb27(41)=abb27(18)*abb27(30)
      abb27(42)=-abb27(13)*spak2k4
      abb27(30)=-abb27(30)+abb27(42)
      abb27(8)=abb27(9)*abb27(8)*abb27(30)
      abb27(8)=abb27(8)+abb27(41)+abb27(16)
      abb27(8)=spbl5k2*abb27(8)
      abb27(9)=abb27(29)*mB**4
      abb27(12)=abb27(9)+abb27(12)
      abb27(12)=abb27(12)*abb27(10)
      abb27(9)=-abb27(18)*abb27(9)
      abb27(9)=abb27(12)+abb27(9)-abb27(19)
      abb27(9)=abb27(4)*abb27(9)
      abb27(8)=abb27(8)+abb27(9)
      abb27(8)=spbk3k2*abb27(8)
      abb27(9)=spak4l6*abb27(2)*mB*abb27(7)
      abb27(12)=-spak1k4*spbk2k1*abb27(22)
      abb27(8)=abb27(12)+abb27(8)+abb27(9)
      abb27(8)=4.0_ki*abb27(8)
      abb27(9)=-spak4l6*abb27(39)
      abb27(11)=-4.0_ki*abb27(11)
      abb27(12)=-4.0_ki*abb27(31)
      abb27(7)=-4.0_ki*spak1k4*abb27(7)
      abb27(13)=abb27(15)+abb27(13)
      abb27(10)=abb27(13)*abb27(10)
      abb27(13)=-abb27(18)*abb27(15)
      abb27(10)=abb27(10)+abb27(13)-abb27(33)
      abb27(10)=4.0_ki*spbl5k2*abb27(10)
      abb27(13)=4.0_ki*abb27(35)
      R2d27=0.0_ki
      rat2 = rat2 + R2d27
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='27' value='", &
          & R2d27, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd27h1
