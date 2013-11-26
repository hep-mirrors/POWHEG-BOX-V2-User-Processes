module     p5_usbar_epnebbbarg_abbrevd59h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(43), public :: abb59
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
      abb59(7)=spbl6k2**(-1)
      abb59(8)=spak2l5**(-1)
      abb59(9)=spak2l6**(-1)
      abb59(10)=1.0_ki/(es34+es567-es12-es234)
      abb59(11)=abb59(4)**2
      abb59(11)=abb59(11)-1.0_ki
      abb59(12)=abb59(1)*TR*gW
      abb59(12)=i_*spak2e7*spbk7e7*CVSU*abb59(5)*abb59(2)*abb59(12)**2
      abb59(13)=abb59(12)*mB
      abb59(14)=abb59(11)*abb59(13)
      abb59(15)=c4*abb59(7)*abb59(14)
      abb59(16)=abb59(13)*c3
      abb59(17)=abb59(16)*abb59(4)
      abb59(18)=abb59(17)*abb59(7)
      abb59(15)=abb59(15)-abb59(18)
      abb59(18)=abb59(10)*spbk3k1
      abb59(19)=-abb59(18)*spbk2k1*abb59(15)
      abb59(16)=abb59(16)*NC
      abb59(20)=abb59(16)*abb59(7)
      abb59(21)=abb59(20)*abb59(18)
      abb59(22)=abb59(21)*spbk2k1
      abb59(19)=abb59(19)-abb59(22)
      abb59(19)=abb59(19)*spak1k4
      abb59(22)=-abb59(18)*spbk3k2*abb59(15)
      abb59(21)=abb59(21)*spbk3k2
      abb59(21)=abb59(22)-abb59(21)
      abb59(21)=abb59(21)*spak3k4
      abb59(19)=abb59(19)+abb59(21)
      abb59(21)=abb59(19)*spal5k7
      abb59(14)=c4*abb59(6)*abb59(14)
      abb59(22)=abb59(17)*abb59(6)
      abb59(14)=abb59(14)-abb59(22)
      abb59(22)=-abb59(18)*spbk2k1*abb59(14)
      abb59(23)=abb59(16)*abb59(6)
      abb59(24)=abb59(23)*abb59(18)
      abb59(25)=abb59(24)*spbk2k1
      abb59(22)=abb59(22)-abb59(25)
      abb59(22)=abb59(22)*spak1k4
      abb59(18)=-abb59(18)*spbk3k2*abb59(14)
      abb59(24)=abb59(24)*spbk3k2
      abb59(18)=abb59(18)-abb59(24)
      abb59(18)=abb59(18)*spak3k4
      abb59(18)=abb59(22)+abb59(18)
      abb59(22)=abb59(18)*spal6k7
      abb59(24)=abb59(3)*spbk2k1
      abb59(25)=abb59(24)*spak4k7
      abb59(26)=abb59(25)*abb59(20)
      abb59(27)=abb59(26)*spbk3k1
      abb59(28)=-abb59(24)*abb59(15)
      abb59(29)=spak4k7*spbk3k1
      abb59(30)=abb59(28)*abb59(29)
      abb59(27)=abb59(27)-abb59(30)
      abb59(27)=abb59(27)*spak1l5
      abb59(25)=abb59(25)*abb59(23)
      abb59(30)=abb59(25)*spbk3k1
      abb59(31)=-abb59(24)*abb59(14)
      abb59(29)=abb59(31)*abb59(29)
      abb59(29)=abb59(30)-abb59(29)
      abb59(29)=abb59(29)*spak1l6
      abb59(30)=abb59(31)*spak4k7
      abb59(25)=abb59(30)-abb59(25)
      abb59(25)=spbl5k3*abb59(25)*spal5l6
      abb59(30)=abb59(28)*spak4k7
      abb59(26)=abb59(30)-abb59(26)
      abb59(26)=spbl6k3*abb59(26)*spal5l6
      abb59(11)=abb59(11)*c4
      abb59(30)=c3*abb59(4)
      abb59(30)=abb59(11)-abb59(30)
      abb59(32)=abb59(24)*spbk3k2
      abb59(12)=mB**3*abb59(12)*abb59(32)
      abb59(33)=abb59(12)*abb59(7)**2
      abb59(34)=abb59(33)*abb59(30)
      abb59(35)=abb59(34)*spak4k7
      abb59(36)=NC*c3
      abb59(37)=abb59(36)*spak4k7
      abb59(38)=abb59(37)*abb59(33)
      abb59(35)=abb59(38)+abb59(35)
      abb59(35)=abb59(35)*spak2l5*abb59(9)
      abb59(38)=-abb59(36)-abb59(30)
      abb59(38)=abb59(38)*abb59(12)*abb59(6)**2
      abb59(39)=-spak4k7*abb59(38)*spak2l6*abb59(8)
      abb59(12)=abb59(6)*abb59(12)*abb59(7)
      abb59(30)=abb59(12)*abb59(30)
      abb59(40)=abb59(30)*spak4k7
      abb59(37)=abb59(37)*abb59(12)
      abb59(37)=abb59(37)+abb59(40)
      abb59(21)=abb59(26)-abb59(21)-abb59(22)-abb59(35)-2.0_ki*abb59(37)+abb59(&
      &29)-abb59(25)+abb59(27)-abb59(39)
      abb59(22)=es71+es12-es712
      abb59(22)=-4.0_ki*abb59(22)*abb59(21)
      abb59(25)=8.0_ki*abb59(21)
      abb59(26)=-spak2k7*abb59(32)*abb59(15)
      abb59(27)=abb59(20)*spak2k7
      abb59(29)=abb59(27)*abb59(32)
      abb59(26)=abb59(26)-abb59(29)
      abb59(29)=abb59(26)*spak4l5
      abb59(35)=-spak2k7*abb59(32)*abb59(14)
      abb59(37)=abb59(23)*spak2k7
      abb59(32)=abb59(37)*abb59(32)
      abb59(32)=abb59(35)-abb59(32)
      abb59(35)=abb59(32)*spak4l6
      abb59(29)=abb59(29)+abb59(35)
      abb59(29)=16.0_ki*abb59(29)
      abb59(35)=abb59(38)*spak2k7
      abb59(39)=abb59(8)*abb59(35)
      abb59(40)=abb59(30)*spak2k7
      abb59(41)=abb59(36)*spak2k7
      abb59(42)=abb59(41)*abb59(12)
      abb59(40)=abb59(40)+abb59(42)
      abb59(42)=-abb59(9)*abb59(40)
      abb59(39)=abb59(39)+abb59(42)
      abb59(39)=spak4l6*abb59(39)
      abb59(42)=-abb59(8)*abb59(40)
      abb59(43)=abb59(34)*spak2k7
      abb59(41)=abb59(41)*abb59(33)
      abb59(41)=abb59(43)+abb59(41)
      abb59(43)=-abb59(9)*abb59(41)
      abb59(42)=abb59(42)+abb59(43)
      abb59(42)=spak4l5*abb59(42)
      abb59(21)=abb59(42)+abb59(39)-abb59(21)
      abb59(21)=16.0_ki*abb59(21)
      abb59(39)=abb59(23)*abb59(24)
      abb59(31)=abb59(39)-abb59(31)
      abb59(39)=-spak1l6*abb59(31)
      abb59(24)=abb59(20)*abb59(24)
      abb59(24)=abb59(24)-abb59(28)
      abb59(28)=-spak1l5*abb59(24)
      abb59(28)=abb59(28)+abb59(39)
      abb59(28)=spbk3k1*abb59(28)
      abb59(24)=spbl6k3*abb59(24)
      abb59(31)=-spbl5k3*abb59(31)
      abb59(24)=abb59(31)+abb59(24)
      abb59(24)=spal5l6*abb59(24)
      abb59(12)=abb59(36)*abb59(12)
      abb59(12)=abb59(12)+abb59(30)
      abb59(12)=2.0_ki*abb59(12)+abb59(24)+abb59(28)
      abb59(12)=spak2k4*abb59(12)
      abb59(24)=abb59(8)*spak2k4
      abb59(28)=-abb59(38)*abb59(24)
      abb59(28)=abb59(28)+abb59(18)
      abb59(28)=spak2l6*abb59(28)
      abb59(30)=abb59(36)*abb59(33)
      abb59(30)=abb59(30)+abb59(34)
      abb59(31)=abb59(9)*spak2k4
      abb59(30)=abb59(30)*abb59(31)
      abb59(30)=abb59(30)+abb59(19)
      abb59(30)=spak2l5*abb59(30)
      abb59(12)=abb59(30)+abb59(28)+abb59(12)
      abb59(12)=4.0_ki*abb59(12)
      abb59(18)=-spak2k7*abb59(18)
      abb59(28)=spbk3k2*abb59(3)
      abb59(30)=-spak2k7*abb59(28)*abb59(14)
      abb59(33)=abb59(28)*spak2k7
      abb59(23)=abb59(33)*abb59(23)
      abb59(23)=abb59(30)-abb59(23)
      abb59(30)=spbl6k1*spak4l6
      abb59(34)=spbl5k1*spak4l5
      abb59(30)=abb59(30)+abb59(34)
      abb59(34)=-abb59(23)*abb59(30)
      abb59(35)=abb59(35)*abb59(24)
      abb59(36)=-abb59(40)*abb59(31)
      abb59(18)=abb59(36)+abb59(35)+abb59(34)+abb59(18)
      abb59(18)=8.0_ki*abb59(18)
      abb59(32)=-spak1k4*abb59(32)
      abb59(11)=abb59(13)*abb59(11)
      abb59(11)=abb59(11)-abb59(17)
      abb59(11)=spak2k7*abb59(28)*abb59(11)
      abb59(13)=abb59(33)*abb59(16)
      abb59(11)=abb59(11)+abb59(13)
      abb59(13)=-spak4l5*abb59(11)
      abb59(16)=spbl6k2*spak4l6*abb59(23)
      abb59(13)=abb59(16)+abb59(32)+abb59(13)
      abb59(13)=8.0_ki*abb59(13)
      abb59(16)=-spak2k7*abb59(19)
      abb59(17)=-spak2k7*abb59(28)*abb59(15)
      abb59(19)=abb59(33)*abb59(20)
      abb59(17)=abb59(17)-abb59(19)
      abb59(19)=-abb59(17)*abb59(30)
      abb59(20)=-abb59(40)*abb59(24)
      abb59(23)=-abb59(41)*abb59(31)
      abb59(16)=abb59(23)+abb59(20)+abb59(19)+abb59(16)
      abb59(16)=8.0_ki*abb59(16)
      abb59(19)=-spak1k4*abb59(26)
      abb59(11)=-spak4l6*abb59(11)
      abb59(17)=spbl5k2*spak4l5*abb59(17)
      abb59(11)=abb59(17)+abb59(19)+abb59(11)
      abb59(11)=8.0_ki*abb59(11)
      abb59(17)=abb59(3)*spbk2k1**2
      abb59(14)=spak2k7*abb59(17)*abb59(14)
      abb59(19)=abb59(17)*abb59(37)
      abb59(14)=abb59(14)+abb59(19)
      abb59(14)=spak1l6*abb59(14)
      abb59(15)=spak2k7*abb59(17)*abb59(15)
      abb59(17)=abb59(17)*abb59(27)
      abb59(15)=abb59(15)+abb59(17)
      abb59(15)=spak1l5*abb59(15)
      abb59(14)=abb59(14)+abb59(15)
      abb59(14)=8.0_ki*abb59(14)
      R2d59=0.0_ki
      rat2 = rat2 + R2d59
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='59' value='", &
          & R2d59, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd59h0
