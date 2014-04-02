module     p5_csbar_epnebbbar_abbrevd2h3
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(32), public :: abb2
   complex(ki), public :: R2d2
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
      abb2(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb2(2)=NC**(-1)
      abb2(3)=es56**(-1)
      abb2(4)=spak2l5**(-1)
      abb2(5)=spak2l6**(-1)
      abb2(6)=c1*abb2(2)**2
      abb2(7)=c2*abb2(2)
      abb2(7)=abb2(6)-abb2(7)
      abb2(8)=CVSC*i_*mB*abb2(3)*abb2(1)
      abb2(9)=TR*gW
      abb2(9)=abb2(9)**2
      abb2(7)=abb2(7)*abb2(8)*abb2(9)*spak2k4
      abb2(10)=abb2(7)*abb2(5)
      abb2(11)=-spbk3k1*abb2(10)
      abb2(12)=spbl5k1*spak1k2
      abb2(13)=abb2(11)*abb2(12)
      abb2(7)=abb2(7)*abb2(4)
      abb2(14)=-spbk3k1*abb2(7)
      abb2(15)=spbl6k1*spak1k2
      abb2(16)=abb2(14)*abb2(15)
      abb2(13)=abb2(13)+abb2(16)
      abb2(13)=8.0_ki*abb2(13)
      abb2(6)=abb2(8)*abb2(6)
      abb2(8)=abb2(2)*abb2(8)*c2
      abb2(6)=abb2(8)-abb2(6)
      abb2(8)=abb2(9)*abb2(6)
      abb2(16)=-abb2(4)*abb2(8)
      abb2(17)=spbl6k1*abb2(16)
      abb2(8)=-abb2(5)*abb2(8)
      abb2(18)=spbl5k1*abb2(8)
      abb2(17)=abb2(17)+abb2(18)
      abb2(17)=4.0_ki*spbk4k3*abb2(17)*spak2k4**2
      abb2(18)=-abb2(7)*abb2(15)
      abb2(19)=-abb2(10)*abb2(12)
      abb2(18)=abb2(18)+abb2(19)
      abb2(19)=spbk4k1*abb2(18)
      abb2(6)=-abb2(6)*abb2(9)*spbk3k1
      abb2(9)=-abb2(4)*abb2(6)
      abb2(20)=abb2(9)*abb2(15)
      abb2(6)=-abb2(5)*abb2(6)
      abb2(21)=abb2(6)*abb2(12)
      abb2(20)=abb2(20)+abb2(21)
      abb2(20)=spak2k3*abb2(20)
      abb2(19)=abb2(20)+abb2(19)
      abb2(19)=4.0_ki*abb2(19)
      abb2(18)=-spbk4k3*abb2(18)
      abb2(20)=spbl6k1*abb2(9)
      abb2(21)=spbl5k1*abb2(6)
      abb2(20)=abb2(20)+abb2(21)
      abb2(20)=abb2(20)*spak1k2**2
      abb2(18)=abb2(18)+abb2(20)
      abb2(18)=4.0_ki*abb2(18)
      abb2(20)=4.0_ki*spak3k4
      abb2(21)=spbk3k1**2*abb2(20)*spak1k2
      abb2(22)=-abb2(16)*abb2(21)
      abb2(23)=8.0_ki*abb2(14)
      abb2(14)=-16.0_ki*abb2(14)
      abb2(24)=spbk4k1*abb2(7)
      abb2(25)=-spak2k3*abb2(9)
      abb2(24)=abb2(25)+abb2(24)
      abb2(24)=4.0_ki*abb2(24)
      abb2(25)=8.0_ki*spak1k2
      abb2(26)=-abb2(9)*abb2(25)
      abb2(21)=-abb2(8)*abb2(21)
      abb2(27)=8.0_ki*abb2(11)
      abb2(11)=-16.0_ki*abb2(11)
      abb2(28)=spbk4k1*abb2(10)
      abb2(29)=-spak2k3*abb2(6)
      abb2(28)=abb2(29)+abb2(28)
      abb2(28)=4.0_ki*abb2(28)
      abb2(25)=-abb2(6)*abb2(25)
      abb2(29)=-abb2(9)*abb2(20)
      abb2(20)=-abb2(6)*abb2(20)
      abb2(30)=-abb2(7)*spbl6k3
      abb2(31)=-abb2(10)*spbl5k3
      abb2(30)=abb2(30)+abb2(31)
      abb2(31)=8.0_ki*abb2(30)
      abb2(30)=4.0_ki*abb2(30)
      abb2(32)=spbl6k3*spak2k3
      abb2(15)=abb2(32)+abb2(15)
      abb2(15)=abb2(16)*abb2(15)
      abb2(32)=spbl5k3*spak2k3
      abb2(12)=abb2(32)+abb2(12)
      abb2(12)=abb2(8)*abb2(12)
      abb2(7)=spbl6k4*abb2(7)
      abb2(10)=spbl5k4*abb2(10)
      abb2(7)=abb2(10)+abb2(7)+abb2(12)+abb2(15)
      abb2(7)=4.0_ki*abb2(7)
      abb2(10)=4.0_ki*spak1k4
      abb2(9)=abb2(9)*abb2(10)
      abb2(12)=-4.0_ki*abb2(16)
      abb2(6)=abb2(6)*abb2(10)
      abb2(8)=-4.0_ki*abb2(8)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd2h3
