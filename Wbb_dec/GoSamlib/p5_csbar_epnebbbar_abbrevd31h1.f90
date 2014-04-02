module     p5_csbar_epnebbbar_abbrevd31h1
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(30), public :: abb31
   complex(ki), public :: R2d31
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
      abb31(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb31(2)=NC**(-1)
      abb31(3)=es234**(-1)
      abb31(4)=spak2l6**(-1)
      abb31(5)=spbl6k2**(-1)
      abb31(6)=spak2l5**(-1)
      abb31(7)=sqrt(mB**2)
      abb31(8)=2.0_ki*c2
      abb31(9)=abb31(2)*spak2k4
      abb31(10)=abb31(8)*abb31(9)
      abb31(11)=TR*gW
      abb31(11)=abb31(11)**2*i_*CVSC*abb31(3)*abb31(1)
      abb31(12)=abb31(11)*spbk4k3
      abb31(13)=abb31(12)*abb31(10)
      abb31(14)=abb31(13)*spbl5k1
      abb31(15)=abb31(2)**2
      abb31(15)=abb31(15)+1.0_ki
      abb31(15)=spak2k4*abb31(15)*abb31(11)
      abb31(16)=spbk4k3*abb31(15)
      abb31(17)=spbl5k1*c1
      abb31(18)=abb31(16)*abb31(17)
      abb31(14)=abb31(14)-abb31(18)
      abb31(19)=abb31(14)*spak4l6
      abb31(20)=abb31(15)*abb31(17)
      abb31(10)=abb31(11)*abb31(10)
      abb31(11)=abb31(10)*spbl5k1
      abb31(11)=abb31(20)-abb31(11)
      abb31(21)=spak2l6*spbk3k2
      abb31(22)=abb31(11)*abb31(21)
      abb31(19)=abb31(19)-abb31(22)
      abb31(22)=spbl6k1*abb31(19)
      abb31(9)=abb31(12)*abb31(9)**2
      abb31(12)=abb31(12)*spak2k4**2
      abb31(9)=abb31(9)+abb31(12)
      abb31(23)=mB**2
      abb31(24)=abb31(23)*abb31(5)
      abb31(17)=abb31(24)*abb31(9)*abb31(17)
      abb31(8)=abb31(2)*abb31(12)*abb31(8)
      abb31(12)=abb31(8)*abb31(24)
      abb31(25)=abb31(12)*spbl5k1
      abb31(17)=abb31(17)-abb31(25)
      abb31(17)=abb31(17)*abb31(4)
      abb31(25)=spbk2k1*abb31(17)
      abb31(22)=abb31(25)+abb31(22)
      abb31(22)=spak1l6*abb31(22)
      abb31(25)=abb31(5)*mB
      abb31(18)=abb31(18)*abb31(25)
      abb31(26)=spbl5k1*abb31(25)
      abb31(27)=abb31(26)*abb31(13)
      abb31(18)=abb31(18)-abb31(27)
      abb31(27)=-spbk2k1*abb31(7)*abb31(18)
      abb31(28)=abb31(13)*abb31(24)
      abb31(24)=abb31(24)*c1
      abb31(29)=abb31(24)*abb31(16)
      abb31(28)=abb31(28)-abb31(29)
      abb31(29)=spbk2k1*abb31(6)
      abb31(30)=spbl6k1*spak2l6*abb31(28)*abb31(29)
      abb31(27)=abb31(27)+abb31(30)
      abb31(27)=spak1k4*abb31(27)
      abb31(30)=abb31(9)*c1
      abb31(8)=abb31(30)-abb31(8)
      abb31(30)=-abb31(29)*abb31(4)*abb31(8)*abb31(5)**2*mB**4
      abb31(20)=abb31(20)*abb31(25)
      abb31(26)=abb31(26)*abb31(10)
      abb31(20)=abb31(20)-abb31(26)
      abb31(26)=abb31(7)*spbk3k2
      abb31(20)=abb31(20)*abb31(26)
      abb31(20)=abb31(30)-abb31(20)
      abb31(30)=spbl6k1*abb31(6)
      abb31(28)=-spak4l6*abb31(28)*abb31(30)
      abb31(28)=abb31(28)+abb31(20)
      abb31(28)=es12*abb31(28)
      abb31(22)=abb31(28)+abb31(22)+abb31(27)
      abb31(22)=4.0_ki*abb31(22)
      abb31(27)=8.0_ki*abb31(19)
      abb31(20)=8.0_ki*abb31(20)
      abb31(9)=abb31(9)*abb31(24)
      abb31(9)=abb31(9)-abb31(12)
      abb31(12)=abb31(9)*abb31(29)
      abb31(19)=-abb31(12)+abb31(19)
      abb31(19)=8.0_ki*abb31(19)
      abb31(12)=-8.0_ki*abb31(12)
      abb31(24)=-abb31(9)*abb31(30)
      abb31(17)=abb31(17)+abb31(24)
      abb31(17)=4.0_ki*abb31(17)
      abb31(24)=abb31(16)*c1
      abb31(24)=abb31(24)-abb31(13)
      abb31(28)=-spak4l6*abb31(24)
      abb31(29)=abb31(15)*c1
      abb31(29)=abb31(29)-abb31(10)
      abb31(21)=-abb31(29)*abb31(21)
      abb31(21)=abb31(28)+abb31(21)
      abb31(21)=spbl6l5*abb31(21)
      abb31(28)=-abb31(7)*mB
      abb31(23)=abb31(23)+abb31(28)
      abb31(8)=abb31(6)*abb31(8)*abb31(23)
      abb31(9)=-spbl5k2*abb31(4)*abb31(9)
      abb31(14)=spak1k4*abb31(14)
      abb31(11)=-spak1k2*spbk3k2*abb31(11)
      abb31(8)=abb31(11)+abb31(21)+abb31(14)+abb31(9)+abb31(8)
      abb31(8)=4.0_ki*abb31(8)
      abb31(9)=4.0_ki*abb31(7)
      abb31(11)=-abb31(18)*abb31(9)
      abb31(14)=c1*abb31(25)
      abb31(16)=abb31(16)*abb31(14)
      abb31(13)=-abb31(25)*abb31(13)
      abb31(13)=abb31(16)+abb31(13)
      abb31(9)=spbl5k2*abb31(13)*abb31(9)
      abb31(13)=-4.0_ki*abb31(24)
      abb31(14)=abb31(15)*abb31(14)
      abb31(10)=-abb31(25)*abb31(10)
      abb31(10)=abb31(14)+abb31(10)
      abb31(10)=4.0_ki*spbl5k2*abb31(10)*abb31(26)
      abb31(14)=-4.0_ki*spbk3k2*abb31(29)
      R2d31=0.0_ki
      rat2 = rat2 + R2d31
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='31' value='", &
          & R2d31, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd31h1
