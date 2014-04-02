module     p3_usbar_epnebbbar_abbrevd25h3
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(33), public :: abb25
   complex(ki), public :: R2d25
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
      abb25(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb25(2)=NC**(-1)
      abb25(3)=es234**(-1)
      abb25(4)=es56**(-1)
      abb25(5)=spak2l5**(-1)
      abb25(6)=spak2l6**(-1)
      abb25(7)=spbl5k2**(-1)
      abb25(8)=spbl6k2**(-1)
      abb25(9)=spbl6k1*abb25(5)
      abb25(10)=spbl5k1*abb25(6)
      abb25(11)=abb25(9)+abb25(10)
      abb25(11)=abb25(11)*NC
      abb25(12)=c2*spak2k4
      abb25(13)=abb25(11)*abb25(12)
      abb25(14)=abb25(3)**2*i_*CVSU*abb25(4)*abb25(1)
      abb25(15)=TR*gW
      abb25(15)=abb25(15)**2
      abb25(16)=abb25(14)*abb25(15)*mB
      abb25(17)=abb25(16)*abb25(13)
      abb25(18)=c2*abb25(2)*spak2k4
      abb25(19)=abb25(2)**2
      abb25(19)=abb25(19)-1.0_ki
      abb25(19)=abb25(19)*c1
      abb25(20)=abb25(19)*spak2k4
      abb25(18)=abb25(18)-abb25(20)
      abb25(20)=-abb25(16)*abb25(18)
      abb25(21)=abb25(20)*abb25(10)
      abb25(22)=abb25(20)*abb25(9)
      abb25(17)=abb25(17)+abb25(21)+abb25(22)
      abb25(23)=spbk3k1*spak1k2*abb25(17)
      abb25(12)=abb25(12)*NC
      abb25(24)=abb25(12)*abb25(16)
      abb25(25)=abb25(24)*abb25(9)
      abb25(22)=abb25(25)+abb25(22)
      abb25(22)=abb25(22)*spak2l6
      abb25(20)=abb25(20)+abb25(24)
      abb25(25)=spbl5k1*abb25(20)
      abb25(22)=abb25(22)+abb25(25)
      abb25(25)=-spbl6k3*abb25(22)
      abb25(20)=spbl6k1*abb25(20)
      abb25(24)=abb25(24)*abb25(10)
      abb25(21)=abb25(24)+abb25(21)
      abb25(21)=abb25(21)*spak2l5
      abb25(20)=abb25(20)+abb25(21)
      abb25(21)=-spbl5k3*abb25(20)
      abb25(21)=abb25(23)+abb25(25)+abb25(21)
      abb25(23)=es23+es34
      abb25(21)=abb25(23)*abb25(21)
      abb25(23)=spak2k4**2
      abb25(24)=abb25(23)*abb25(16)
      abb25(25)=abb25(24)*abb25(19)
      abb25(24)=abb25(24)*c2
      abb25(26)=abb25(24)*abb25(2)
      abb25(25)=abb25(25)-abb25(26)
      abb25(26)=abb25(24)*NC
      abb25(27)=abb25(25)+abb25(26)
      abb25(28)=spbl5k1*abb25(27)
      abb25(29)=abb25(25)*abb25(9)
      abb25(30)=abb25(9)*abb25(26)
      abb25(30)=abb25(29)+abb25(30)
      abb25(30)=spak2l6*abb25(30)
      abb25(28)=abb25(28)+abb25(30)
      abb25(28)=spbl6k4*abb25(28)
      abb25(27)=spbl6k1*abb25(27)
      abb25(25)=abb25(25)*abb25(10)
      abb25(26)=abb25(10)*abb25(26)
      abb25(26)=abb25(25)+abb25(26)
      abb25(26)=spak2l5*abb25(26)
      abb25(26)=abb25(27)+abb25(26)
      abb25(26)=spbl5k4*abb25(26)
      abb25(26)=abb25(26)+abb25(28)
      abb25(26)=spbk3k2*abb25(26)
      abb25(11)=-abb25(24)*abb25(11)
      abb25(11)=abb25(11)-abb25(29)-abb25(25)
      abb25(24)=spak1k2*spbk3k2
      abb25(11)=spbk4k1*abb25(11)*abb25(24)
      abb25(16)=abb25(16)*spbk4k3
      abb25(25)=abb25(16)*abb25(23)
      abb25(27)=c2*abb25(25)
      abb25(28)=abb25(27)*abb25(10)
      abb25(29)=abb25(27)*abb25(9)
      abb25(30)=abb25(28)+abb25(29)
      abb25(30)=abb25(30)*NC
      abb25(25)=abb25(19)*abb25(25)
      abb25(31)=abb25(27)*abb25(2)
      abb25(25)=abb25(25)-abb25(31)
      abb25(31)=abb25(25)*abb25(10)
      abb25(32)=abb25(25)*abb25(9)
      abb25(30)=abb25(32)+abb25(30)+abb25(31)
      abb25(33)=-es12*abb25(30)
      abb25(27)=abb25(27)*NC
      abb25(25)=abb25(25)+abb25(27)
      abb25(27)=spbl5k1*abb25(25)
      abb25(29)=NC*abb25(29)
      abb25(29)=abb25(32)+abb25(29)
      abb25(29)=spak2l6*abb25(29)
      abb25(27)=abb25(29)+abb25(27)
      abb25(27)=spbl6k2*abb25(27)
      abb25(25)=spbl6k1*abb25(25)
      abb25(28)=NC*abb25(28)
      abb25(28)=abb25(31)+abb25(28)
      abb25(28)=spak2l5*abb25(28)
      abb25(25)=abb25(28)+abb25(25)
      abb25(25)=spbl5k2*abb25(25)
      abb25(11)=abb25(33)+abb25(11)+abb25(25)+abb25(27)+abb25(21)+abb25(26)
      abb25(11)=4.0_ki*abb25(11)
      abb25(21)=16.0_ki*abb25(30)
      abb25(14)=abb25(14)*mB**3*abb25(23)*abb25(15)*spbk4k3
      abb25(15)=abb25(19)*abb25(14)
      abb25(14)=c2*abb25(14)
      abb25(19)=abb25(14)*abb25(2)
      abb25(15)=abb25(15)-abb25(19)
      abb25(19)=abb25(5)**2
      abb25(23)=abb25(15)*abb25(19)
      abb25(25)=-spbl6k1*abb25(23)
      abb25(26)=abb25(10)*abb25(5)
      abb25(27)=-abb25(15)*abb25(26)
      abb25(14)=abb25(14)*NC
      abb25(28)=-spbl6k1*abb25(19)
      abb25(26)=abb25(28)-abb25(26)
      abb25(26)=abb25(26)*abb25(14)
      abb25(25)=abb25(26)+abb25(25)+abb25(27)
      abb25(25)=abb25(7)*abb25(25)
      abb25(26)=abb25(9)*abb25(6)
      abb25(27)=-abb25(15)*abb25(26)
      abb25(28)=abb25(6)**2
      abb25(29)=abb25(15)*abb25(28)
      abb25(30)=-spbl5k1*abb25(29)
      abb25(31)=-spbl5k1*abb25(28)
      abb25(26)=-abb25(26)+abb25(31)
      abb25(26)=abb25(26)*abb25(14)
      abb25(26)=abb25(26)+abb25(27)+abb25(30)
      abb25(26)=abb25(8)*abb25(26)
      abb25(25)=abb25(25)+abb25(26)
      abb25(25)=16.0_ki*abb25(25)
      abb25(18)=-abb25(16)*abb25(18)
      abb25(12)=abb25(12)*abb25(16)
      abb25(26)=abb25(18)+abb25(12)
      abb25(27)=spbl5k1*abb25(26)
      abb25(30)=abb25(18)*abb25(9)
      abb25(9)=abb25(12)*abb25(9)
      abb25(9)=abb25(9)+abb25(30)
      abb25(31)=spak2l6*abb25(9)
      abb25(31)=abb25(31)+abb25(27)
      abb25(31)=4.0_ki*abb25(31)
      abb25(32)=spbl6k1*abb25(26)
      abb25(18)=abb25(18)*abb25(10)
      abb25(10)=abb25(12)*abb25(10)
      abb25(10)=abb25(10)+abb25(18)
      abb25(12)=spak2l5*abb25(10)
      abb25(12)=abb25(12)+abb25(32)
      abb25(12)=4.0_ki*abb25(12)
      abb25(13)=abb25(16)*abb25(13)
      abb25(13)=abb25(13)+abb25(18)+abb25(30)
      abb25(16)=4.0_ki*spak1k2*abb25(13)
      abb25(18)=abb25(19)*abb25(14)
      abb25(18)=abb25(18)+abb25(23)
      abb25(18)=abb25(18)*abb25(7)
      abb25(15)=abb25(15)+abb25(14)
      abb25(15)=abb25(15)*abb25(6)*abb25(5)
      abb25(19)=abb25(8)*abb25(15)
      abb25(19)=abb25(18)+abb25(19)
      abb25(23)=2.0_ki*spbk2k1
      abb25(19)=abb25(19)*abb25(23)
      abb25(22)=-spbk3k2*abb25(22)
      abb25(30)=2.0_ki*spak4l6
      abb25(9)=-abb25(9)*abb25(30)
      abb25(33)=2.0_ki*spak4l5
      abb25(27)=-abb25(33)*abb25(5)*abb25(27)
      abb25(9)=abb25(27)+abb25(9)+abb25(19)+abb25(22)
      abb25(9)=4.0_ki*abb25(9)
      abb25(14)=abb25(28)*abb25(14)
      abb25(14)=abb25(14)+abb25(29)
      abb25(14)=abb25(14)*abb25(8)
      abb25(19)=abb25(7)*abb25(15)
      abb25(19)=abb25(19)+abb25(14)
      abb25(19)=abb25(19)*abb25(23)
      abb25(20)=-spbk3k2*abb25(20)
      abb25(22)=-abb25(30)*abb25(6)*abb25(32)
      abb25(10)=-abb25(10)*abb25(33)
      abb25(10)=abb25(10)+abb25(22)+abb25(19)+abb25(20)
      abb25(10)=4.0_ki*abb25(10)
      abb25(13)=spak1k4*abb25(13)
      abb25(18)=spbl6k2*abb25(18)
      abb25(14)=spbl5k2*abb25(14)
      abb25(19)=spak4l6*abb25(6)
      abb25(20)=-spak4l5*abb25(5)
      abb25(19)=abb25(19)+abb25(20)
      abb25(19)=spbl6l5*abb25(26)*abb25(19)
      abb25(13)=abb25(18)+abb25(14)+abb25(19)-abb25(13)
      abb25(14)=-abb25(17)*abb25(24)
      abb25(13)=4.0_ki*abb25(15)+abb25(14)+2.0_ki*abb25(13)
      abb25(13)=4.0_ki*abb25(13)
      R2d25=0.0_ki
      rat2 = rat2 + R2d25
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='25' value='", &
          & R2d25, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd25h3
