module     p9_csbar_epnebbbarg_abbrevd110h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(35), public :: abb110
   complex(ki), public :: R2d110
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
      abb110(1)=1.0_ki/(-es71+es712-es12)
      abb110(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb110(3)=1.0_ki/(es34+es567-es12-es234)
      abb110(4)=sqrt(mB**2)
      abb110(5)=NC**(-1)
      abb110(6)=spbl5k2**(-1)
      abb110(7)=spak2l6**(-1)
      abb110(8)=spbl6k2**(-1)
      abb110(9)=TR*gW
      abb110(9)=abb110(9)**2*spbk7e7*i_*spak2e7*CVSC*abb110(3)*abb110(2)*abb110&
      &(1)
      abb110(10)=abb110(9)*c3*spbk3k1
      abb110(11)=abb110(10)*NC
      abb110(12)=abb110(11)*abb110(6)
      abb110(13)=mB**2
      abb110(14)=abb110(12)*abb110(13)
      abb110(15)=2.0_ki*abb110(5)
      abb110(16)=abb110(13)*abb110(15)
      abb110(17)=abb110(10)*abb110(6)
      abb110(18)=abb110(16)*abb110(17)
      abb110(19)=c4*abb110(5)**2
      abb110(20)=abb110(9)*abb110(6)
      abb110(21)=abb110(19)*abb110(20)
      abb110(22)=abb110(21)*spbk3k1
      abb110(23)=abb110(22)*abb110(13)
      abb110(14)=-abb110(14)+abb110(18)-abb110(23)
      abb110(18)=spbk3k2*spak3k4
      abb110(24)=spbk2k1*spak1k4
      abb110(18)=abb110(18)+abb110(24)
      abb110(14)=abb110(14)*abb110(18)
      abb110(24)=spbk7k3*spak3k4
      abb110(25)=spbk7k1*spak1k4
      abb110(24)=abb110(24)-abb110(25)
      abb110(24)=abb110(24)*spal5k7
      abb110(25)=spbl6k3*spak3k4
      abb110(26)=spbl6k1*spak1k4
      abb110(25)=abb110(25)-abb110(26)
      abb110(25)=abb110(25)*spal5l6
      abb110(24)=abb110(24)+abb110(25)
      abb110(25)=abb110(9)*abb110(19)
      abb110(26)=abb110(25)*spbk3k1
      abb110(27)=abb110(15)*abb110(10)
      abb110(26)=-abb110(26)+abb110(27)-abb110(11)
      abb110(27)=-abb110(26)*abb110(24)
      abb110(14)=abb110(27)+abb110(14)
      abb110(27)=abb110(4)*spal6k7
      abb110(14)=abb110(27)*abb110(14)
      abb110(28)=abb110(19)*spbk3k1
      abb110(29)=abb110(9)*abb110(8)
      abb110(30)=abb110(13)*abb110(29)*abb110(28)
      abb110(16)=abb110(16)*abb110(10)*abb110(8)
      abb110(11)=abb110(13)*abb110(11)*abb110(8)
      abb110(16)=abb110(30)-abb110(16)+abb110(11)
      abb110(30)=abb110(18)*abb110(7)
      abb110(16)=abb110(27)*abb110(16)*abb110(30)
      abb110(26)=abb110(26)*abb110(27)
      abb110(31)=abb110(26)*abb110(18)
      abb110(16)=abb110(16)+abb110(31)
      abb110(16)=spak2l5*abb110(16)
      abb110(14)=abb110(16)+abb110(14)
      abb110(14)=4.0_ki*abb110(14)
      abb110(16)=abb110(15)-NC
      abb110(10)=abb110(10)*mB
      abb110(31)=-abb110(16)*abb110(10)*abb110(6)
      abb110(28)=mB*abb110(28)
      abb110(32)=abb110(28)*abb110(20)
      abb110(31)=abb110(31)+abb110(32)
      abb110(32)=abb110(31)*abb110(18)
      abb110(33)=abb110(32)*spal6k7
      abb110(28)=abb110(28)*abb110(29)
      abb110(29)=abb110(15)*abb110(8)
      abb110(34)=abb110(10)*abb110(29)
      abb110(10)=NC*abb110(10)*abb110(8)
      abb110(10)=abb110(10)+abb110(28)-abb110(34)
      abb110(28)=abb110(18)*abb110(10)
      abb110(34)=-spal5k7*abb110(28)
      abb110(34)=abb110(34)-abb110(33)
      abb110(34)=8.0_ki*abb110(34)
      abb110(33)=-8.0_ki*abb110(33)
      abb110(35)=abb110(26)*spak4l5
      abb110(35)=16.0_ki*abb110(35)
      abb110(28)=-4.0_ki*spal5l6*abb110(28)
      abb110(17)=abb110(29)*abb110(17)
      abb110(13)=abb110(17)*abb110(13)
      abb110(11)=abb110(11)*abb110(6)
      abb110(23)=abb110(23)*abb110(8)
      abb110(11)=-abb110(13)+abb110(11)+abb110(23)
      abb110(11)=abb110(11)*abb110(4)
      abb110(12)=abb110(12)+abb110(22)
      abb110(13)=mB**3
      abb110(12)=abb110(12)*abb110(13)*abb110(8)
      abb110(13)=abb110(17)*abb110(13)
      abb110(12)=-abb110(13)+abb110(12)
      abb110(11)=abb110(11)+abb110(12)
      abb110(11)=abb110(11)*abb110(18)
      abb110(13)=-abb110(10)*abb110(24)
      abb110(17)=-spak2l6*abb110(32)
      abb110(11)=abb110(17)+abb110(13)+abb110(11)
      abb110(11)=4.0_ki*abb110(11)
      abb110(13)=abb110(31)*spak4l6
      abb110(17)=abb110(10)*spak4l5
      abb110(13)=abb110(13)-abb110(17)
      abb110(13)=8.0_ki*abb110(13)
      abb110(17)=4.0_ki*spak3k4
      abb110(18)=abb110(17)*abb110(31)
      abb110(12)=-abb110(12)*abb110(30)
      abb110(12)=abb110(12)+abb110(32)
      abb110(12)=4.0_ki*spak2k7*abb110(12)
      abb110(22)=abb110(31)*spak4k7
      abb110(22)=8.0_ki*abb110(22)
      abb110(23)=4.0_ki*spak1k4
      abb110(24)=abb110(23)*abb110(31)
      abb110(30)=abb110(26)*abb110(17)
      abb110(17)=abb110(17)*abb110(10)
      abb110(32)=abb110(23)*abb110(10)
      abb110(23)=-abb110(26)*abb110(23)
      abb110(16)=c3*abb110(9)*abb110(16)
      abb110(16)=abb110(16)-abb110(25)
      abb110(16)=abb110(16)*abb110(27)*spak4l5
      abb110(25)=-spbk4k1*abb110(16)
      abb110(27)=-spak3l5*abb110(26)
      abb110(25)=abb110(25)+abb110(27)
      abb110(25)=8.0_ki*abb110(25)
      abb110(9)=abb110(9)*mB
      abb110(27)=abb110(29)*abb110(9)
      abb110(9)=abb110(9)*abb110(8)
      abb110(29)=abb110(9)*NC
      abb110(27)=abb110(27)-abb110(29)
      abb110(27)=abb110(27)*c3
      abb110(9)=abb110(9)*abb110(19)
      abb110(9)=abb110(27)-abb110(9)
      abb110(9)=abb110(9)*spak4l5
      abb110(19)=abb110(20)*c3
      abb110(15)=abb110(19)*abb110(15)
      abb110(19)=abb110(19)*NC
      abb110(15)=abb110(19)+abb110(21)-abb110(15)
      abb110(15)=mB*abb110(15)
      abb110(19)=abb110(15)*spak4l6
      abb110(9)=abb110(9)+abb110(19)
      abb110(19)=spbk4k1*abb110(9)
      abb110(20)=-spak3l5*abb110(10)
      abb110(21)=spak3l6*abb110(31)
      abb110(19)=abb110(21)+abb110(19)+abb110(20)
      abb110(19)=4.0_ki*abb110(19)
      abb110(15)=abb110(15)*spak4k7
      abb110(20)=-spbk4k1*abb110(15)
      abb110(21)=-spak3k7*abb110(31)
      abb110(20)=abb110(20)+abb110(21)
      abb110(20)=4.0_ki*abb110(20)
      abb110(16)=spbk4k3*abb110(16)
      abb110(21)=spak1l5*abb110(26)
      abb110(16)=abb110(16)+abb110(21)
      abb110(16)=8.0_ki*abb110(16)
      abb110(9)=-spbk4k3*abb110(9)
      abb110(10)=spak1l5*abb110(10)
      abb110(21)=-spak1l6*abb110(31)
      abb110(9)=abb110(21)+abb110(9)+abb110(10)
      abb110(9)=4.0_ki*abb110(9)
      abb110(10)=spbk4k3*abb110(15)
      abb110(15)=spak1k7*abb110(31)
      abb110(10)=abb110(10)+abb110(15)
      abb110(10)=4.0_ki*abb110(10)
      R2d110=0.0_ki
      rat2 = rat2 + R2d110
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='110' value='", &
          & R2d110, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd110h0
