module     p9_csbar_epnebbbarg_abbrevd42h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(26), public :: abb42
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
      abb42(6)=spbl5k2**(-1)
      abb42(7)=spbl6k2**(-1)
      abb42(8)=abb42(3)**2
      abb42(8)=abb42(8)-1.0_ki
      abb42(9)=TR*gW
      abb42(9)=abb42(9)**2*CVSC*i_*mB*abb42(5)*abb42(4)*abb42(2)*abb42(1)
      abb42(8)=abb42(8)*abb42(9)
      abb42(10)=spbe7k1*abb42(8)
      abb42(11)=c4*spak2l6
      abb42(12)=abb42(10)*abb42(11)
      abb42(9)=abb42(9)*c1
      abb42(13)=spbe7k1*abb42(9)
      abb42(14)=abb42(13)*spak2l6
      abb42(15)=abb42(14)*abb42(3)
      abb42(12)=abb42(12)-abb42(15)
      abb42(15)=spbl6k2*abb42(6)
      abb42(16)=abb42(12)*abb42(15)
      abb42(17)=abb42(15)*abb42(14)
      abb42(13)=abb42(13)*spak2l5
      abb42(17)=abb42(17)+abb42(13)
      abb42(17)=abb42(17)*NC
      abb42(18)=c4*spak2l5
      abb42(10)=abb42(10)*abb42(18)
      abb42(19)=abb42(13)*abb42(3)
      abb42(10)=abb42(10)-abb42(19)
      abb42(16)=abb42(10)+abb42(16)+abb42(17)
      abb42(17)=spak1e7*abb42(16)
      abb42(19)=abb42(17)*spbk3k1
      abb42(20)=spae7k7*abb42(16)
      abb42(21)=abb42(20)*spbk7k3
      abb42(19)=abb42(19)-abb42(21)
      abb42(21)=abb42(19)*spak4l6
      abb42(22)=spbl5k2*abb42(7)
      abb42(10)=abb42(10)*abb42(22)
      abb42(13)=abb42(22)*abb42(13)
      abb42(13)=abb42(13)+abb42(14)
      abb42(13)=abb42(13)*NC
      abb42(10)=abb42(12)+abb42(10)+abb42(13)
      abb42(12)=spae7k7*abb42(10)
      abb42(13)=abb42(12)*spbk7k3
      abb42(14)=spak1e7*abb42(10)
      abb42(23)=abb42(14)*spbk3k1
      abb42(13)=abb42(13)-abb42(23)
      abb42(23)=abb42(13)*spak4l5
      abb42(21)=abb42(21)-abb42(23)
      abb42(23)=2.0_ki*abb42(21)
      abb42(21)=-4.0_ki*abb42(21)
      abb42(24)=4.0_ki*spak3k4
      abb42(19)=-abb42(19)*abb42(24)
      abb42(13)=abb42(13)*abb42(24)
      abb42(24)=spak2l6*abb42(9)
      abb42(25)=abb42(24)*abb42(15)
      abb42(9)=spak2l5*abb42(9)
      abb42(25)=abb42(25)+abb42(9)
      abb42(25)=abb42(25)*NC
      abb42(11)=abb42(8)*abb42(11)
      abb42(26)=abb42(24)*abb42(3)
      abb42(11)=abb42(26)-abb42(11)
      abb42(15)=abb42(11)*abb42(15)
      abb42(8)=abb42(8)*abb42(18)
      abb42(18)=abb42(9)*abb42(3)
      abb42(8)=abb42(18)-abb42(8)
      abb42(15)=abb42(25)-abb42(15)-abb42(8)
      abb42(15)=abb42(15)*spal6k7
      abb42(9)=abb42(9)*abb42(22)
      abb42(9)=abb42(9)+abb42(24)
      abb42(9)=abb42(9)*NC
      abb42(8)=abb42(8)*abb42(22)
      abb42(8)=abb42(9)-abb42(8)-abb42(11)
      abb42(8)=abb42(8)*spal5k7
      abb42(8)=abb42(15)+abb42(8)
      abb42(9)=-16.0_ki*spbk7k1*abb42(8)
      abb42(11)=abb42(16)*spal6e7
      abb42(15)=abb42(10)*spal5e7
      abb42(11)=abb42(11)+abb42(15)
      abb42(11)=16.0_ki*abb42(11)
      abb42(8)=spbk7e7*abb42(8)
      abb42(15)=-spak1l6*abb42(16)
      abb42(10)=-spak1l5*abb42(10)
      abb42(8)=abb42(10)+abb42(15)+abb42(8)
      abb42(8)=8.0_ki*abb42(8)
      abb42(10)=4.0_ki*abb42(20)
      abb42(15)=4.0_ki*abb42(17)
      abb42(12)=4.0_ki*abb42(12)
      abb42(14)=4.0_ki*abb42(14)
      R2d42=abb42(23)
      rat2 = rat2 + R2d42
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='42' value='", &
          & R2d42, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd42h0
