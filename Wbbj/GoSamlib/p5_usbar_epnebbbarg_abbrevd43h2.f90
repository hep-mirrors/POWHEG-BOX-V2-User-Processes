module     p5_usbar_epnebbbarg_abbrevd43h2
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(39), public :: abb43
   complex(ki), public :: R2d43
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb43(1)=1.0_ki/(-es71+es712-es12)
      abb43(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb43(3)=1.0_ki/(-es71+es56-es567+es234)
      abb43(4)=NC**(-1)
      abb43(5)=es56**(-1)
      abb43(6)=spbl5k2**(-1)
      abb43(7)=spak2l6**(-1)
      abb43(8)=spbl6k2**(-1)
      abb43(9)=spak2l5**(-1)
      abb43(10)=CVSU*spbk7e7*i_*spak2e7*abb43(5)*abb43(3)*abb43(2)*abb43(1)
      abb43(11)=TR*gW
      abb43(12)=abb43(11)*mB
      abb43(12)=abb43(12)**2
      abb43(13)=abb43(10)*abb43(12)
      abb43(14)=abb43(6)*abb43(13)
      abb43(15)=abb43(4)**2
      abb43(15)=abb43(15)-1.0_ki
      abb43(16)=c4*abb43(14)*abb43(15)
      abb43(17)=abb43(14)*c3
      abb43(18)=abb43(17)*abb43(4)
      abb43(17)=abb43(17)*NC
      abb43(17)=abb43(17)+abb43(16)-abb43(18)
      abb43(18)=spbk2k1*abb43(17)
      abb43(19)=spak4k7*abb43(18)
      abb43(20)=abb43(19)*spbl6k3
      abb43(21)=spak4k7*abb43(7)
      abb43(22)=abb43(21)*abb43(18)
      abb43(23)=spbl5k3*spak2l5
      abb43(24)=abb43(22)*abb43(23)
      abb43(25)=abb43(21)*abb43(17)
      abb43(26)=es12*spbk3k1
      abb43(27)=abb43(25)*abb43(26)
      abb43(15)=abb43(15)*c4
      abb43(28)=c3*abb43(4)
      abb43(29)=NC*c3
      abb43(28)=-abb43(28)+abb43(15)+abb43(29)
      abb43(29)=abb43(10)*spbl6k1
      abb43(11)=abb43(11)**2
      abb43(30)=abb43(28)*abb43(29)*abb43(11)
      abb43(31)=spak4k7*abb43(30)
      abb43(32)=spal5l6*spbl6k3
      abb43(33)=spak1l5*spbk3k1
      abb43(32)=abb43(32)-abb43(33)
      abb43(33)=-abb43(31)*abb43(32)
      abb43(34)=NC-abb43(4)
      abb43(14)=-abb43(34)*abb43(14)*c3*spbl6k1
      abb43(16)=-spbl6k1*abb43(16)
      abb43(14)=abb43(16)+abb43(14)
      abb43(16)=spak4k7*abb43(14)
      abb43(35)=abb43(16)*spbk3k2
      abb43(28)=abb43(28)*abb43(29)*abb43(12)
      abb43(21)=abb43(21)*abb43(28)
      abb43(29)=abb43(8)*spak2l5
      abb43(36)=abb43(29)*spbk3k2
      abb43(37)=abb43(21)*abb43(36)
      abb43(20)=-abb43(27)+abb43(33)+abb43(20)+abb43(24)+abb43(35)-abb43(37)
      abb43(24)=-2.0_ki*abb43(20)
      abb43(27)=8.0_ki*abb43(20)
      abb43(20)=4.0_ki*abb43(20)
      abb43(33)=spbk2k1*abb43(7)
      abb43(35)=abb43(33)*abb43(17)
      abb43(23)=abb43(35)*abb43(23)
      abb43(37)=abb43(7)*abb43(17)
      abb43(26)=abb43(37)*abb43(26)
      abb43(38)=abb43(18)*spbl6k3
      abb43(32)=abb43(32)*abb43(30)
      abb43(39)=abb43(14)*spbk3k2
      abb43(28)=abb43(7)*abb43(28)
      abb43(36)=abb43(28)*abb43(36)
      abb43(23)=-abb43(23)+abb43(36)+abb43(32)-abb43(38)+abb43(26)-abb43(39)
      abb43(26)=4.0_ki*spak3k4*abb43(23)
      abb43(23)=-spak3k7*abb43(23)
      abb43(32)=-spal5l6*abb43(31)
      abb43(19)=abb43(32)+abb43(19)
      abb43(19)=spbl6k4*abb43(19)
      abb43(21)=-abb43(21)*abb43(29)
      abb43(16)=abb43(21)+abb43(16)
      abb43(16)=spbk4k2*abb43(16)
      abb43(21)=-es12*abb43(25)
      abb43(25)=spak1l5*abb43(31)
      abb43(21)=abb43(25)+abb43(21)
      abb43(21)=spbk4k1*abb43(21)
      abb43(22)=spbl5k4*spak2l5*abb43(22)
      abb43(16)=abb43(22)+abb43(21)+abb43(16)+abb43(19)+abb43(23)
      abb43(16)=4.0_ki*abb43(16)
      abb43(19)=abb43(35)*spak2k7
      abb43(21)=abb43(30)*spal5k7
      abb43(19)=abb43(21)-abb43(19)
      abb43(19)=16.0_ki*abb43(19)
      abb43(21)=spbl5k1*abb43(37)
      abb43(22)=abb43(8)*abb43(28)
      abb43(23)=-abb43(9)*abb43(14)
      abb43(21)=abb43(21)+abb43(22)+abb43(23)
      abb43(21)=spal5k7*abb43(21)
      abb43(22)=-spal6k7*abb43(7)*abb43(14)
      abb43(21)=abb43(22)+abb43(21)
      abb43(21)=16.0_ki*abb43(21)
      abb43(22)=-spal5l6*abb43(30)
      abb43(22)=abb43(22)+abb43(18)
      abb43(22)=4.0_ki*abb43(22)
      abb43(23)=4.0_ki*spak2l5*abb43(35)
      abb43(25)=abb43(28)*abb43(29)
      abb43(14)=abb43(25)-abb43(14)
      abb43(14)=4.0_ki*abb43(14)
      abb43(25)=es12*abb43(37)
      abb43(28)=-spak1l5*abb43(30)
      abb43(25)=abb43(28)+abb43(25)
      abb43(25)=4.0_ki*abb43(25)
      abb43(28)=abb43(10)*c3
      abb43(12)=abb43(28)*abb43(12)
      abb43(29)=abb43(12)*NC
      abb43(13)=abb43(15)*abb43(13)
      abb43(12)=abb43(12)*abb43(4)
      abb43(12)=abb43(29)+abb43(13)-abb43(12)
      abb43(13)=-abb43(8)*abb43(33)*abb43(12)
      abb43(18)=-abb43(9)*abb43(18)
      abb43(13)=abb43(13)+abb43(18)
      abb43(13)=spak2k7*abb43(13)
      abb43(18)=-spal6k7*abb43(30)
      abb43(28)=abb43(34)*abb43(28)
      abb43(10)=abb43(10)*abb43(15)
      abb43(10)=abb43(28)+abb43(10)
      abb43(10)=spal5k7*abb43(11)*abb43(10)
      abb43(11)=-spbl5k1*abb43(10)
      abb43(11)=abb43(11)+abb43(18)+abb43(13)
      abb43(11)=8.0_ki*abb43(11)
      abb43(12)=abb43(7)*abb43(12)
      abb43(13)=-spbl6k2*abb43(9)*abb43(17)
      abb43(13)=-abb43(12)+abb43(13)
      abb43(13)=spak2k7*abb43(13)
      abb43(15)=spak1k7*abb43(30)
      abb43(10)=-spbl6l5*abb43(10)
      abb43(10)=abb43(10)+abb43(15)+abb43(13)
      abb43(10)=8.0_ki*abb43(10)
      abb43(12)=-spal5k7*abb43(12)
      abb43(13)=-spbl6k2*spal6k7*abb43(37)
      abb43(15)=-spak1k7*abb43(35)
      abb43(12)=abb43(15)+abb43(12)+abb43(13)
      abb43(12)=8.0_ki*abb43(12)
      R2d43=abb43(24)
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd43h2
