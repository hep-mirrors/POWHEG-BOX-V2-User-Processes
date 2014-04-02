module     p5_csbar_epnebbbar_abbrevd1h3
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(29), public :: abb1
   complex(ki), public :: R2d1
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
      abb1(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb1(2)=es56**(-1)
      abb1(3)=spak2l5**(-1)
      abb1(4)=spak2l6**(-1)
      abb1(5)=spbl6k4*abb1(3)
      abb1(6)=spbl5k4*abb1(4)
      abb1(5)=abb1(5)+abb1(6)
      abb1(6)=c2*NC
      abb1(6)=abb1(6)-c1
      abb1(7)=TR*gW
      abb1(6)=abb1(6)*abb1(7)**2*CVSC*i_*mB*abb1(2)*abb1(1)
      abb1(7)=-spbk3k1*abb1(6)
      abb1(8)=-abb1(5)*abb1(7)
      abb1(9)=spbl6k1*abb1(3)
      abb1(10)=-spbl5k1*abb1(4)
      abb1(9)=-abb1(9)+abb1(10)
      abb1(9)=spbk4k3*abb1(9)*abb1(6)
      abb1(8)=abb1(9)+abb1(8)
      abb1(8)=abb1(8)*spak2k4**2
      abb1(9)=spbl6k3*abb1(3)
      abb1(10)=-spak2l6*abb1(9)
      abb1(10)=abb1(10)-spbl5k3
      abb1(10)=spbl6k1*abb1(10)
      abb1(11)=spbl5k3*abb1(4)
      abb1(12)=-spak2l5*abb1(11)
      abb1(12)=abb1(12)-spbl6k3
      abb1(12)=spbl5k1*abb1(12)
      abb1(10)=abb1(12)+abb1(10)
      abb1(12)=-spak2k4*abb1(6)
      abb1(10)=abb1(12)*abb1(10)
      abb1(13)=abb1(9)+abb1(11)
      abb1(14)=abb1(13)*spak2k3
      abb1(15)=-spak2k4*abb1(7)
      abb1(16)=abb1(15)*abb1(14)
      abb1(8)=abb1(16)+abb1(10)+abb1(8)
      abb1(8)=2.0_ki*abb1(8)
      abb1(10)=abb1(7)*spak3k4
      abb1(16)=spbl5k3*abb1(10)
      abb1(17)=-spak1k2*abb1(6)*spbk3k1**2
      abb1(18)=spak3k4*abb1(3)
      abb1(19)=abb1(18)*abb1(17)
      abb1(9)=abb1(9)*abb1(10)
      abb1(20)=spak2l6*abb1(9)
      abb1(16)=abb1(20)+abb1(16)+abb1(19)
      abb1(16)=2.0_ki*abb1(16)
      abb1(19)=4.0_ki*abb1(3)
      abb1(20)=abb1(15)*abb1(19)
      abb1(21)=2.0_ki*abb1(15)
      abb1(22)=abb1(3)*abb1(21)
      abb1(23)=abb1(7)*spak2k3
      abb1(24)=abb1(12)*spbk4k1
      abb1(23)=abb1(23)+abb1(24)
      abb1(24)=abb1(6)*spbl6k1
      abb1(25)=spak2l6*abb1(24)
      abb1(25)=abb1(25)+abb1(23)
      abb1(25)=abb1(3)*abb1(25)
      abb1(26)=abb1(6)*spbl5k1
      abb1(25)=abb1(26)+abb1(25)
      abb1(25)=2.0_ki*abb1(25)
      abb1(27)=spbl6k3*abb1(10)
      abb1(28)=spak3k4*abb1(4)
      abb1(17)=abb1(28)*abb1(17)
      abb1(10)=abb1(11)*abb1(10)
      abb1(11)=spak2l5*abb1(10)
      abb1(11)=abb1(11)+abb1(27)+abb1(17)
      abb1(11)=2.0_ki*abb1(11)
      abb1(17)=4.0_ki*abb1(4)
      abb1(27)=abb1(17)*abb1(15)
      abb1(21)=abb1(4)*abb1(21)
      abb1(26)=spak2l5*abb1(26)
      abb1(23)=abb1(26)+abb1(23)
      abb1(23)=abb1(4)*abb1(23)
      abb1(23)=abb1(24)+abb1(23)
      abb1(23)=2.0_ki*abb1(23)
      abb1(24)=-spbl6k4*abb1(18)
      abb1(26)=-spbl5k4*abb1(28)
      abb1(24)=abb1(26)+abb1(24)
      abb1(15)=abb1(15)*abb1(24)
      abb1(9)=abb1(9)+abb1(10)
      abb1(10)=spak2k3*abb1(9)
      abb1(24)=abb1(18)*abb1(7)
      abb1(26)=-spbl6k1*abb1(24)
      abb1(7)=abb1(7)*abb1(28)
      abb1(29)=-spbl5k1*abb1(7)
      abb1(26)=abb1(26)+abb1(29)
      abb1(26)=spak1k2*abb1(26)
      abb1(10)=abb1(10)+abb1(26)+abb1(15)
      abb1(10)=2.0_ki*abb1(10)
      abb1(15)=4.0_ki*abb1(24)
      abb1(7)=4.0_ki*abb1(7)
      abb1(24)=spbl6k3*spbl5k3*spak3k4
      abb1(18)=-spak2l6*spbl6k3**2*abb1(18)
      abb1(26)=-spak2l5*spbl5k3**2*abb1(28)
      abb1(18)=abb1(26)+abb1(18)-2.0_ki*abb1(24)
      abb1(18)=abb1(6)*abb1(18)
      abb1(9)=spak1k2*abb1(9)
      abb1(9)=abb1(9)+abb1(18)
      abb1(9)=2.0_ki*abb1(9)
      abb1(13)=abb1(12)*abb1(13)
      abb1(18)=4.0_ki*abb1(13)
      abb1(13)=2.0_ki*abb1(13)
      abb1(5)=abb1(12)*abb1(5)
      abb1(12)=-abb1(6)*abb1(14)
      abb1(5)=abb1(12)+abb1(5)
      abb1(5)=4.0_ki*abb1(5)
      abb1(12)=-abb1(6)*abb1(19)
      abb1(6)=-abb1(6)*abb1(17)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd1h3
