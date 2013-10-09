module     p5_usbar_epnebbbarg_abbrevd59h2
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(42), public :: abb59
   complex(ki), public :: R2d59
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
      abb59(1)=1.0_ki/(-es71+es712-es12)
      abb59(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb59(3)=1.0_ki/(-es71+es56-es567+es234)
      abb59(4)=NC**(-1)
      abb59(5)=es56**(-1)
      abb59(6)=spbl5k2**(-1)
      abb59(7)=spak2l6**(-1)
      abb59(8)=spbl6k2**(-1)
      abb59(9)=1.0_ki/(es34+es567-es12-es234)
      abb59(10)=spak2l5**(-1)
      abb59(11)=TR*gW
      abb59(12)=abb59(1)**2*abb59(11)**2
      abb59(13)=spbk7e7*i_*spak2e7*CVSU*abb59(5)
      abb59(14)=abb59(13)*abb59(3)*abb59(2)
      abb59(15)=abb59(12)*abb59(14)
      abb59(16)=c3*abb59(15)
      abb59(17)=abb59(16)*NC
      abb59(18)=abb59(4)**2
      abb59(18)=abb59(18)-1.0_ki
      abb59(18)=abb59(18)*c4
      abb59(15)=abb59(18)*abb59(15)
      abb59(16)=abb59(16)*abb59(4)
      abb59(15)=abb59(17)+abb59(15)-abb59(16)
      abb59(16)=spak4k7*spbl6k1
      abb59(17)=abb59(16)*abb59(15)
      abb59(19)=spak1l5*spbk3k1*abb59(17)
      abb59(17)=spal5l6*abb59(17)*spbl6k3
      abb59(12)=abb59(13)*abb59(12)
      abb59(20)=abb59(18)*abb59(2)
      abb59(21)=abb59(12)*abb59(20)
      abb59(22)=c3*abb59(2)
      abb59(12)=abb59(12)*abb59(22)
      abb59(23)=abb59(12)*abb59(4)
      abb59(21)=abb59(21)-abb59(23)
      abb59(23)=abb59(9)*spbk3k1
      abb59(24)=abb59(21)*abb59(23)
      abb59(25)=abb59(23)*NC
      abb59(26)=abb59(25)*abb59(12)
      abb59(24)=abb59(24)+abb59(26)
      abb59(26)=spak1k4*spbl6k1*abb59(24)
      abb59(27)=abb59(24)*spak3k4
      abb59(28)=spbl6k3*abb59(27)
      abb59(26)=abb59(26)-abb59(28)
      abb59(28)=abb59(26)*spal5k7
      abb59(29)=NC*c3
      abb59(30)=c3*abb59(4)
      abb59(18)=abb59(29)+abb59(18)-abb59(30)
      abb59(11)=abb59(11)*mB*abb59(1)
      abb59(11)=abb59(11)**2
      abb59(14)=abb59(18)*abb59(14)*abb59(11)
      abb59(18)=spak4k7*abb59(14)
      abb59(29)=abb59(7)*abb59(6)
      abb59(30)=abb59(29)*spbk2k1
      abb59(31)=spbl5k3*spak2l5*abb59(30)*abb59(18)
      abb59(17)=-abb59(31)-abb59(19)+abb59(17)-abb59(28)
      abb59(16)=abb59(14)*abb59(16)*spbk3k2
      abb59(19)=abb59(6)*abb59(16)
      abb59(28)=spbk2k1*abb59(6)
      abb59(31)=spbl6k3*abb59(28)
      abb59(32)=abb59(29)*spbk3k1
      abb59(33)=es12*abb59(32)
      abb59(31)=-abb59(31)+abb59(33)
      abb59(18)=abb59(18)*abb59(31)
      abb59(18)=abb59(18)+abb59(19)
      abb59(16)=spak2l5*abb59(7)*abb59(16)
      abb59(19)=abb59(16)*abb59(8)
      abb59(11)=abb59(11)*abb59(13)
      abb59(13)=abb59(11)*abb59(20)
      abb59(11)=abb59(11)*abb59(22)
      abb59(20)=abb59(11)*abb59(4)
      abb59(13)=abb59(13)-abb59(20)
      abb59(13)=abb59(13)*abb59(23)
      abb59(11)=abb59(11)*abb59(25)
      abb59(11)=abb59(13)+abb59(11)
      abb59(13)=spbk3k2*spak2k7
      abb59(20)=abb59(13)*abb59(29)
      abb59(22)=spak3k4*abb59(20)
      abb59(23)=abb59(30)*spak2k7
      abb59(25)=spak1k4*abb59(23)
      abb59(22)=abb59(22)+abb59(25)
      abb59(11)=abb59(11)*abb59(22)
      abb59(11)=abb59(17)+abb59(19)+abb59(18)+abb59(11)
      abb59(19)=-es12+es712-es71
      abb59(19)=4.0_ki*abb59(19)*abb59(11)
      abb59(11)=8.0_ki*abb59(11)
      abb59(22)=spbl6k1*abb59(15)
      abb59(25)=abb59(13)*abb59(22)
      abb59(29)=abb59(25)*spak4l5
      abb59(31)=abb59(13)*abb59(14)
      abb59(33)=abb59(30)*abb59(31)
      abb59(34)=abb59(33)*spak2k4
      abb59(29)=abb59(34)+abb59(29)
      abb59(34)=16.0_ki*abb59(29)
      abb59(24)=spak2k7*abb59(24)
      abb59(35)=spbl6k2*spak4l5
      abb59(36)=abb59(24)*abb59(35)
      abb59(37)=16.0_ki*abb59(36)
      abb59(38)=abb59(10)*abb59(31)*abb59(6)
      abb59(39)=spbl6k1*abb59(38)
      abb59(20)=abb59(20)*abb59(14)
      abb59(40)=spbl5k1*abb59(20)
      abb59(39)=abb59(40)+abb59(39)
      abb59(39)=spak4l5*abb59(39)
      abb59(40)=abb59(7)*abb59(31)
      abb59(41)=abb59(40)*spak4l5
      abb59(42)=spbl6k1*abb59(41)
      abb59(16)=-abb59(16)+abb59(42)
      abb59(16)=abb59(8)*abb59(16)
      abb59(20)=abb59(20)*spak4l6
      abb59(42)=spbl6k1*abb59(20)
      abb59(16)=abb59(42)+abb59(16)-abb59(18)+abb59(39)-abb59(17)
      abb59(16)=16.0_ki*abb59(16)
      abb59(17)=abb59(36)-abb59(29)
      abb59(17)=16.0_ki*abb59(17)
      abb59(18)=spak1l5*spbk3k1
      abb59(29)=-spal5l6*spbl6k3
      abb59(18)=abb59(29)+abb59(18)
      abb59(18)=abb59(22)*abb59(18)
      abb59(29)=abb59(14)*spbk3k2*spbl6k1
      abb59(36)=-abb59(8)*abb59(7)*abb59(29)
      abb59(30)=spbl5k3*abb59(30)*abb59(14)
      abb59(30)=abb59(30)+abb59(36)
      abb59(30)=spak2l5*abb59(30)
      abb59(29)=-abb59(6)*abb59(29)
      abb59(36)=abb59(28)*abb59(14)
      abb59(39)=spbl6k3*abb59(36)
      abb59(42)=abb59(14)*es12
      abb59(32)=-abb59(32)*abb59(42)
      abb59(18)=abb59(30)+abb59(32)+abb59(39)+abb59(29)+abb59(18)
      abb59(18)=spak2k4*abb59(18)
      abb59(26)=spak2l5*abb59(26)
      abb59(18)=abb59(18)+abb59(26)
      abb59(18)=4.0_ki*abb59(18)
      abb59(26)=abb59(8)*spbk2k1*abb59(40)
      abb59(28)=abb59(10)*abb59(28)*abb59(31)
      abb59(26)=abb59(28)+abb59(26)
      abb59(26)=spak2k4*abb59(26)
      abb59(28)=-spak4l6*abb59(25)
      abb59(15)=spak4l5*abb59(13)*abb59(15)
      abb59(29)=-spbl5k1*abb59(15)
      abb59(30)=-spak1k4*spbk2k1*abb59(24)
      abb59(13)=-abb59(13)*abb59(27)
      abb59(13)=abb59(29)+abb59(28)+abb59(30)+abb59(13)+abb59(26)
      abb59(13)=8.0_ki*abb59(13)
      abb59(26)=spbl6k2*abb59(38)
      abb59(26)=abb59(26)+abb59(40)
      abb59(26)=spak2k4*abb59(26)
      abb59(25)=-spak1k4*abb59(25)
      abb59(15)=-spbl6l5*abb59(15)
      abb59(15)=abb59(15)+abb59(25)+abb59(26)
      abb59(15)=8.0_ki*abb59(15)
      abb59(25)=-spak1l5*abb59(22)
      abb59(14)=-spak2l5*abb59(14)*abb59(7)
      abb59(14)=abb59(25)+abb59(14)
      abb59(14)=spbk2k1*spak2k7*abb59(14)
      abb59(22)=spal5l6*abb59(22)
      abb59(22)=abb59(22)-abb59(36)
      abb59(22)=spak2k7*abb59(22)
      abb59(25)=spak3l5*abb59(24)
      abb59(22)=abb59(25)+abb59(22)
      abb59(22)=spbl6k2*abb59(22)
      abb59(23)=abb59(23)*abb59(42)
      abb59(12)=NC*abb59(12)
      abb59(12)=abb59(12)+abb59(21)
      abb59(12)=abb59(35)*abb59(12)*abb59(9)*spak2k7
      abb59(21)=spbk4k1*abb59(12)
      abb59(14)=abb59(21)+abb59(23)+abb59(22)+abb59(14)
      abb59(14)=8.0_ki*abb59(14)
      abb59(21)=-spak1l5*spbl6k2*abb59(24)
      abb59(12)=-spbk4k3*abb59(12)
      abb59(12)=abb59(21)+abb59(12)
      abb59(12)=8.0_ki*abb59(12)
      abb59(21)=spak1k4*abb59(33)
      abb59(20)=-spbl6k2*abb59(20)
      abb59(20)=abb59(20)-abb59(41)+abb59(21)
      abb59(20)=8.0_ki*abb59(20)
      R2d59=0.0_ki
      rat2 = rat2 + R2d59
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='59' value='", &
          & R2d59, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd59h2
