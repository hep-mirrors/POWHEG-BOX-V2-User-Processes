module     p9_csbar_epnebbbarg_abbrevd42h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(32), public :: abb42
   complex(ki), public :: R2d42
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb42(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb42(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb42(3)=NC**(-1)
      abb42(4)=es56**(-1)
      abb42(5)=es71**(-1)
      abb42(6)=spak2l5**(-1)
      abb42(7)=spbl6k2**(-1)
      abb42(8)=TR*gW
      abb42(8)=abb42(5)*i_*CVSC*abb42(4)*abb42(2)*abb42(1)*abb42(8)**2
      abb42(9)=abb42(8)*spbe7k1
      abb42(10)=abb42(3)**2
      abb42(10)=abb42(10)-1.0_ki
      abb42(11)=mB**2
      abb42(12)=abb42(11)*spbl5k2
      abb42(13)=abb42(12)*c4
      abb42(14)=abb42(13)*abb42(10)*abb42(9)
      abb42(15)=c1*abb42(9)*abb42(12)
      abb42(16)=abb42(15)*abb42(3)
      abb42(14)=abb42(14)-abb42(16)
      abb42(14)=abb42(14)*abb42(7)
      abb42(9)=spak2l6*abb42(9)
      abb42(16)=abb42(9)*c1
      abb42(17)=abb42(3)*abb42(16)
      abb42(18)=abb42(17)*abb42(11)
      abb42(9)=abb42(9)*abb42(10)
      abb42(19)=abb42(11)*c4
      abb42(20)=abb42(19)*abb42(9)
      abb42(18)=abb42(18)-abb42(20)
      abb42(18)=abb42(18)*abb42(6)
      abb42(20)=c4*spbl5k2
      abb42(21)=abb42(20)*abb42(9)
      abb42(22)=abb42(17)*spbl5k2
      abb42(14)=-abb42(14)+abb42(18)-abb42(22)+abb42(21)
      abb42(18)=-spak1e7*abb42(14)
      abb42(21)=abb42(11)*abb42(6)
      abb42(21)=abb42(21)-spbl5k2
      abb42(22)=abb42(16)*spak1e7
      abb42(23)=-abb42(22)*abb42(21)
      abb42(15)=abb42(15)*abb42(7)
      abb42(24)=abb42(15)*spak1e7
      abb42(23)=abb42(23)-abb42(24)
      abb42(23)=abb42(23)*NC
      abb42(18)=-abb42(23)+abb42(18)
      abb42(23)=abb42(18)*spbk3k1
      abb42(24)=spae7k7*abb42(14)
      abb42(25)=abb42(16)*spae7k7
      abb42(26)=-abb42(25)*abb42(21)
      abb42(27)=abb42(15)*spae7k7
      abb42(26)=abb42(26)-abb42(27)
      abb42(26)=abb42(26)*NC
      abb42(24)=abb42(24)+abb42(26)
      abb42(26)=abb42(24)*spbk7k3
      abb42(23)=abb42(23)+abb42(26)
      abb42(26)=abb42(23)*spak2k4
      abb42(9)=abb42(9)*c4
      abb42(9)=abb42(9)-abb42(17)
      abb42(9)=abb42(9)*spbl6l5
      abb42(17)=abb42(9)*spae7k7
      abb42(27)=NC*spbl6l5
      abb42(25)=abb42(25)*abb42(27)
      abb42(17)=abb42(17)+abb42(25)
      abb42(25)=abb42(17)*spbk7k3
      abb42(22)=abb42(22)*abb42(27)
      abb42(28)=abb42(9)*spak1e7
      abb42(22)=abb42(22)+abb42(28)
      abb42(28)=abb42(22)*spbk3k1
      abb42(25)=abb42(25)-abb42(28)
      abb42(28)=abb42(25)*spak4l6
      abb42(26)=abb42(26)-abb42(28)
      abb42(28)=-2.0_ki*abb42(26)
      abb42(26)=4.0_ki*abb42(26)
      abb42(29)=4.0_ki*spak3k4
      abb42(25)=-abb42(25)*abb42(29)
      abb42(30)=abb42(8)*c1
      abb42(31)=abb42(30)*spak2l6
      abb42(32)=abb42(21)*abb42(31)
      abb42(12)=abb42(12)*abb42(30)
      abb42(30)=abb42(12)*abb42(7)
      abb42(30)=abb42(32)+abb42(30)
      abb42(30)=abb42(30)*NC
      abb42(8)=abb42(10)*abb42(8)
      abb42(10)=abb42(8)*abb42(13)
      abb42(12)=abb42(12)*abb42(3)
      abb42(10)=abb42(10)-abb42(12)
      abb42(10)=abb42(10)*abb42(7)
      abb42(12)=abb42(31)*abb42(3)
      abb42(11)=abb42(12)*abb42(11)
      abb42(8)=-spak2l6*abb42(8)
      abb42(13)=abb42(8)*abb42(19)
      abb42(11)=abb42(11)+abb42(13)
      abb42(11)=abb42(11)*abb42(6)
      abb42(13)=abb42(8)*abb42(20)
      abb42(19)=spbl5k2*abb42(12)
      abb42(10)=abb42(10)+abb42(30)-abb42(11)+abb42(19)+abb42(13)
      abb42(10)=abb42(10)*spak2k7
      abb42(8)=abb42(8)*c4
      abb42(8)=abb42(8)+abb42(12)
      abb42(8)=abb42(8)*spbl6l5
      abb42(11)=abb42(31)*abb42(27)
      abb42(8)=abb42(8)-abb42(11)
      abb42(8)=abb42(8)*spal6k7
      abb42(8)=abb42(10)+abb42(8)
      abb42(10)=-16.0_ki*spbk7k1*abb42(8)
      abb42(11)=-abb42(16)*abb42(21)
      abb42(11)=abb42(11)-abb42(15)
      abb42(11)=abb42(11)*NC
      abb42(11)=abb42(11)+abb42(14)
      abb42(12)=abb42(11)*spak2e7
      abb42(13)=abb42(27)*abb42(16)
      abb42(9)=abb42(13)+abb42(9)
      abb42(13)=abb42(9)*spal6e7
      abb42(12)=abb42(12)+abb42(13)
      abb42(12)=16.0_ki*abb42(12)
      abb42(8)=spbk7e7*abb42(8)
      abb42(11)=spak1k2*abb42(11)
      abb42(9)=spak1l6*abb42(9)
      abb42(8)=abb42(9)+abb42(11)+abb42(8)
      abb42(8)=8.0_ki*abb42(8)
      abb42(9)=-4.0_ki*abb42(17)
      abb42(11)=-4.0_ki*abb42(22)
      abb42(13)=-4.0_ki*abb42(24)
      abb42(14)=-abb42(23)*abb42(29)
      abb42(15)=4.0_ki*abb42(18)
      R2d42=abb42(28)
      rat2 = rat2 + R2d42
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='42' value='", &
          & R2d42, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd42h1
