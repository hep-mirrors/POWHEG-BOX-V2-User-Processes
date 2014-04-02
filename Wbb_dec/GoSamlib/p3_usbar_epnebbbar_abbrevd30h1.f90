module     p3_usbar_epnebbbar_abbrevd30h1
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(26), public :: abb30
   complex(ki), public :: R2d30
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
      abb30(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb30(2)=NC**(-1)
      abb30(3)=es234**(-1)
      abb30(4)=spak2l5**(-1)
      abb30(5)=spbl5k2**(-1)
      abb30(6)=spbl6k2**(-1)
      abb30(7)=sqrt(mB**2)
      abb30(8)=2.0_ki*abb30(2)
      abb30(9)=TR*gW
      abb30(9)=abb30(9)**2*i_*CVSU*abb30(3)*abb30(1)
      abb30(10)=abb30(9)*c2*spak2k4
      abb30(11)=abb30(8)*abb30(10)
      abb30(12)=c1*abb30(2)**2
      abb30(13)=abb30(12)*spak2k4
      abb30(14)=abb30(13)*abb30(9)
      abb30(10)=abb30(10)*NC
      abb30(14)=-abb30(11)+abb30(14)+abb30(10)
      abb30(14)=spbk3k2*abb30(14)
      abb30(15)=-spbl5k1*abb30(14)
      abb30(16)=abb30(15)*spak2l6
      abb30(9)=abb30(9)*spbk4k3
      abb30(13)=abb30(13)*abb30(9)
      abb30(11)=spbk4k3*abb30(11)
      abb30(10)=abb30(10)*spbk4k3
      abb30(10)=-abb30(11)+abb30(13)+abb30(10)
      abb30(11)=-spbl5k1*abb30(10)
      abb30(13)=abb30(11)*spak4l6
      abb30(13)=abb30(16)+abb30(13)
      abb30(16)=mB**2
      abb30(17)=abb30(16)*abb30(4)
      abb30(18)=-abb30(17)*abb30(13)
      abb30(19)=abb30(4)*spak2k4
      abb30(9)=abb30(9)*abb30(19)**2*mB**4
      abb30(8)=-abb30(8)+NC
      abb30(8)=abb30(8)*abb30(6)*c2*abb30(9)
      abb30(9)=abb30(12)*abb30(6)*abb30(9)
      abb30(8)=abb30(9)+abb30(8)
      abb30(8)=abb30(8)*spbk2k1
      abb30(9)=abb30(8)+abb30(18)
      abb30(9)=abb30(5)*abb30(9)
      abb30(12)=abb30(16)*abb30(6)
      abb30(16)=abb30(12)*abb30(15)
      abb30(18)=abb30(14)*abb30(7)
      abb30(19)=abb30(6)*mB
      abb30(20)=abb30(19)*spbl5k1
      abb30(21)=abb30(20)*abb30(18)
      abb30(22)=abb30(17)*abb30(6)
      abb30(23)=spak4l5*abb30(22)*abb30(11)
      abb30(9)=abb30(23)+abb30(9)+abb30(21)+abb30(16)
      abb30(9)=es12*abb30(9)
      abb30(16)=spak4l6*abb30(10)
      abb30(21)=spak2l6*abb30(14)
      abb30(16)=abb30(16)+abb30(21)
      abb30(16)=spak1l5*abb30(16)*spbl5k1**2
      abb30(21)=abb30(7)*spbk2k1
      abb30(20)=spak1k4*abb30(21)*abb30(20)*abb30(10)
      abb30(9)=abb30(20)+abb30(16)+abb30(9)
      abb30(9)=4.0_ki*abb30(9)
      abb30(13)=-8.0_ki*abb30(13)
      abb30(8)=8.0_ki*abb30(5)*abb30(8)
      abb30(16)=spak1k4*abb30(11)
      abb30(20)=spak1k2*abb30(15)
      abb30(16)=abb30(16)+abb30(20)
      abb30(16)=4.0_ki*abb30(16)
      abb30(20)=abb30(10)*abb30(19)
      abb30(21)=4.0_ki*abb30(20)*abb30(21)
      abb30(23)=8.0_ki*abb30(10)
      abb30(24)=abb30(22)*abb30(10)
      abb30(25)=-es12*abb30(24)
      abb30(20)=spbl5k2*abb30(7)*abb30(20)
      abb30(11)=-spak1l6*abb30(11)
      abb30(11)=abb30(11)+abb30(25)+abb30(20)
      abb30(11)=4.0_ki*abb30(11)
      abb30(20)=-8.0_ki*abb30(24)
      abb30(19)=abb30(19)*abb30(18)
      abb30(12)=abb30(14)*abb30(12)
      abb30(24)=abb30(24)*spak4l5
      abb30(12)=-abb30(24)+abb30(19)-abb30(12)
      abb30(19)=abb30(10)*abb30(17)
      abb30(24)=spak4l6*abb30(19)
      abb30(17)=abb30(14)*abb30(17)
      abb30(25)=spak2l6*abb30(17)
      abb30(24)=abb30(25)+abb30(24)
      abb30(24)=abb30(5)*abb30(24)
      abb30(24)=abb30(24)+abb30(12)
      abb30(24)=4.0_ki*spbk2k1*abb30(24)
      abb30(25)=8.0_ki*abb30(14)
      abb30(12)=spbl5k2*abb30(12)
      abb30(26)=abb30(4)*mB
      abb30(10)=-abb30(10)*abb30(26)*abb30(7)
      abb30(10)=abb30(10)+abb30(19)
      abb30(10)=spak4l6*abb30(10)
      abb30(18)=-abb30(26)*abb30(18)
      abb30(17)=abb30(18)+abb30(17)
      abb30(17)=spak2l6*abb30(17)
      abb30(14)=abb30(14)*abb30(22)
      abb30(18)=-es12*abb30(14)
      abb30(15)=-spak1l6*abb30(15)
      abb30(10)=abb30(15)+abb30(17)+abb30(18)+abb30(10)+abb30(12)
      abb30(10)=4.0_ki*abb30(10)
      abb30(12)=-8.0_ki*abb30(14)
      R2d30=0.0_ki
      rat2 = rat2 + R2d30
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='30' value='", &
          & R2d30, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd30h1
