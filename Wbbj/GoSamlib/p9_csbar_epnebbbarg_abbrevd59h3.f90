module     p9_csbar_epnebbbarg_abbrevd59h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(40), public :: abb59
   complex(ki), public :: R2d59
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
      abb59(1)=1.0_ki/(-es71+es712-es12)
      abb59(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb59(3)=1.0_ki/(-es71+es56-es567+es234)
      abb59(4)=NC**(-1)
      abb59(5)=es56**(-1)
      abb59(6)=spak2l5**(-1)
      abb59(7)=spak2l6**(-1)
      abb59(8)=1.0_ki/(es34+es567-es12-es234)
      abb59(9)=spbl5k2**(-1)
      abb59(10)=spbl6k2**(-1)
      abb59(11)=spbl6k1*abb59(6)
      abb59(12)=spbl5k1*abb59(7)
      abb59(13)=abb59(11)+abb59(12)
      abb59(14)=spbk3k1*abb59(13)
      abb59(15)=abb59(1)*TR*gW
      abb59(15)=i_*spak2e7*spbk7e7*CVSC*abb59(5)*abb59(2)*abb59(15)**2
      abb59(16)=abb59(15)*c3
      abb59(17)=abb59(3)*mB
      abb59(18)=abb59(16)*abb59(17)
      abb59(19)=abb59(18)*abb59(14)
      abb59(20)=NC*spak4k7
      abb59(21)=abb59(19)*abb59(20)
      abb59(22)=abb59(4)**2
      abb59(22)=abb59(22)-1.0_ki
      abb59(22)=abb59(22)*c4
      abb59(23)=abb59(22)*abb59(15)
      abb59(17)=abb59(17)*abb59(23)
      abb59(24)=abb59(18)*abb59(4)
      abb59(17)=abb59(17)-abb59(24)
      abb59(14)=abb59(17)*abb59(14)
      abb59(24)=abb59(14)*spak4k7
      abb59(21)=abb59(21)+abb59(24)
      abb59(21)=abb59(21)*spak1k2
      abb59(15)=abb59(15)*spak2k7*mB
      abb59(24)=abb59(15)*c3
      abb59(25)=abb59(8)*spbk3k1
      abb59(26)=abb59(24)*abb59(25)
      abb59(27)=abb59(26)*NC
      abb59(28)=abb59(27)*abb59(6)
      abb59(29)=c3*abb59(4)
      abb59(22)=abb59(22)-abb59(29)
      abb59(29)=abb59(15)*abb59(22)
      abb59(25)=abb59(29)*abb59(25)
      abb59(30)=abb59(25)*abb59(6)
      abb59(28)=abb59(28)+abb59(30)
      abb59(31)=abb59(28)*spbl6k3
      abb59(32)=abb59(27)*abb59(7)
      abb59(33)=abb59(7)*abb59(25)
      abb59(32)=abb59(32)+abb59(33)
      abb59(34)=abb59(32)*spbl5k3
      abb59(31)=abb59(31)+abb59(34)
      abb59(31)=abb59(31)*spak3k4
      abb59(34)=abb59(17)*spak4k7
      abb59(20)=abb59(20)*abb59(18)
      abb59(20)=abb59(34)+abb59(20)
      abb59(34)=abb59(20)*spbl6k3
      abb59(35)=spak2l6*abb59(11)*abb59(34)
      abb59(20)=abb59(20)*spbl5k3
      abb59(36)=spak2l5*abb59(12)*abb59(20)
      abb59(25)=abb59(27)+abb59(25)
      abb59(25)=spak1k4*abb59(13)*abb59(25)
      abb59(20)=spbl6k1*abb59(20)
      abb59(27)=spbl5k1*abb59(34)
      abb59(20)=-abb59(25)+abb59(20)+abb59(27)-abb59(21)+abb59(31)+abb59(35)+ab&
      &b59(36)
      abb59(21)=-es12+es712-es71
      abb59(21)=4.0_ki*abb59(21)*abb59(20)
      abb59(25)=8.0_ki*abb59(20)
      abb59(15)=abb59(15)*abb59(3)
      abb59(22)=abb59(15)*abb59(22)
      abb59(27)=abb59(22)*abb59(12)
      abb59(31)=abb59(22)*abb59(11)
      abb59(34)=abb59(27)+abb59(31)
      abb59(35)=spbk3k2*spak2k4
      abb59(36)=abb59(34)*abb59(35)
      abb59(15)=abb59(15)*c3
      abb59(13)=abb59(15)*abb59(13)
      abb59(37)=NC*spak2k4
      abb59(38)=abb59(37)*spbk3k2
      abb59(39)=abb59(13)*abb59(38)
      abb59(36)=abb59(39)+abb59(36)
      abb59(39)=16.0_ki*abb59(36)
      abb59(26)=abb59(37)*abb59(26)
      abb59(40)=abb59(7)*abb59(26)
      abb59(33)=abb59(33)*spak2k4
      abb59(33)=abb59(40)+abb59(33)
      abb59(33)=abb59(33)*spbl5k2
      abb59(26)=abb59(6)*abb59(26)
      abb59(30)=abb59(30)*spak2k4
      abb59(26)=abb59(26)+abb59(30)
      abb59(26)=abb59(26)*spbl6k2
      abb59(26)=abb59(33)+abb59(26)
      abb59(30)=16.0_ki*abb59(26)
      abb59(33)=abb59(3)*spak2k7*mB**3
      abb59(23)=abb59(23)*abb59(33)
      abb59(16)=abb59(33)*abb59(16)
      abb59(33)=abb59(4)*abb59(16)
      abb59(23)=abb59(23)-abb59(33)
      abb59(23)=abb59(23)*abb59(35)
      abb59(16)=abb59(16)*abb59(38)
      abb59(16)=abb59(16)+abb59(23)
      abb59(23)=abb59(12)*abb59(6)
      abb59(33)=abb59(6)**2
      abb59(35)=abb59(33)*spbl6k1
      abb59(23)=abb59(23)+abb59(35)
      abb59(23)=-abb59(9)*abb59(23)*abb59(16)
      abb59(35)=abb59(11)*abb59(7)
      abb59(38)=abb59(7)**2
      abb59(40)=abb59(38)*spbl5k1
      abb59(35)=abb59(35)+abb59(40)
      abb59(35)=-abb59(10)*abb59(35)*abb59(16)
      abb59(20)=abb59(35)+abb59(23)-abb59(20)
      abb59(20)=16.0_ki*abb59(20)
      abb59(23)=abb59(36)-abb59(26)
      abb59(23)=16.0_ki*abb59(23)
      abb59(14)=spak2k4*abb59(14)
      abb59(19)=abb59(19)*abb59(37)
      abb59(14)=abb59(14)+abb59(19)
      abb59(14)=spak1k2*abb59(14)
      abb59(17)=abb59(17)*spak2k4
      abb59(18)=abb59(37)*abb59(18)
      abb59(17)=abb59(18)+abb59(17)
      abb59(18)=-spak2l6*abb59(11)
      abb59(18)=abb59(18)-spbl5k1
      abb59(18)=spbl6k3*abb59(17)*abb59(18)
      abb59(19)=-spak2l5*abb59(12)
      abb59(19)=abb59(19)-spbl6k1
      abb59(17)=spbl5k3*abb59(17)*abb59(19)
      abb59(14)=abb59(14)+abb59(17)+abb59(18)
      abb59(14)=4.0_ki*abb59(14)
      abb59(17)=abb59(28)*spbl6k2
      abb59(18)=abb59(32)*spbl5k2
      abb59(17)=abb59(17)+abb59(18)
      abb59(18)=-spak2k3*abb59(17)
      abb59(15)=abb59(15)*NC
      abb59(19)=abb59(11)*abb59(15)
      abb59(19)=abb59(31)+abb59(19)
      abb59(19)=spak2l6*abb59(19)
      abb59(26)=abb59(15)+abb59(22)
      abb59(35)=spbl5k1*abb59(26)
      abb59(19)=abb59(19)+abb59(35)
      abb59(19)=spbl6k2*abb59(19)
      abb59(35)=abb59(12)*abb59(15)
      abb59(35)=abb59(27)+abb59(35)
      abb59(35)=spak2l5*abb59(35)
      abb59(26)=spbl6k1*abb59(26)
      abb59(26)=abb59(35)+abb59(26)
      abb59(26)=spbl5k2*abb59(26)
      abb59(13)=abb59(13)*NC
      abb59(13)=abb59(13)+abb59(34)
      abb59(34)=-es12*abb59(13)
      abb59(24)=abb59(24)*NC
      abb59(24)=abb59(29)+abb59(24)
      abb59(24)=abb59(24)*spak2k4*abb59(8)
      abb59(29)=spbl5k2*abb59(7)*abb59(24)
      abb59(24)=spbl6k2*abb59(6)*abb59(24)
      abb59(24)=abb59(29)+abb59(24)
      abb59(29)=-spbk4k1*abb59(24)
      abb59(18)=abb59(29)+abb59(18)+abb59(34)+abb59(26)+abb59(19)
      abb59(18)=8.0_ki*abb59(18)
      abb59(17)=-spak1k2*abb59(17)
      abb59(19)=spbk4k3*abb59(24)
      abb59(17)=abb59(19)+abb59(17)
      abb59(17)=8.0_ki*abb59(17)
      abb59(19)=abb59(9)*abb59(16)*abb59(33)
      abb59(24)=-spak1k4*abb59(28)
      abb59(26)=abb59(16)*abb59(7)*abb59(6)
      abb59(29)=abb59(10)*abb59(26)
      abb59(24)=abb59(29)+abb59(19)+abb59(24)
      abb59(24)=spbk2k1*abb59(24)
      abb59(29)=spak3k4*spbk3k2
      abb59(28)=-abb59(28)*abb59(29)
      abb59(31)=-spbk3k2*abb59(31)
      abb59(15)=abb59(15)*spbk3k2
      abb59(11)=-abb59(11)*abb59(15)
      abb59(11)=abb59(31)+abb59(11)
      abb59(11)=spak4l6*abb59(11)
      abb59(22)=abb59(22)*spbk3k2
      abb59(22)=abb59(22)+abb59(15)
      abb59(31)=spak4l5*abb59(22)*abb59(6)
      abb59(33)=-spbl5k1*abb59(31)
      abb59(11)=abb59(33)+abb59(11)+abb59(28)+abb59(24)
      abb59(11)=8.0_ki*abb59(11)
      abb59(16)=abb59(10)*abb59(16)*abb59(38)
      abb59(24)=-spak1k4*abb59(32)
      abb59(28)=abb59(9)*abb59(26)
      abb59(24)=abb59(16)+abb59(28)+abb59(24)
      abb59(24)=spbk2k1*abb59(24)
      abb59(28)=-abb59(32)*abb59(29)
      abb59(27)=-spbk3k2*abb59(27)
      abb59(12)=-abb59(12)*abb59(15)
      abb59(12)=abb59(27)+abb59(12)
      abb59(12)=spak4l5*abb59(12)
      abb59(15)=spak4l6*abb59(22)*abb59(7)
      abb59(22)=-spbl6k1*abb59(15)
      abb59(12)=abb59(12)+abb59(22)+abb59(28)+abb59(24)
      abb59(12)=8.0_ki*abb59(12)
      abb59(13)=-spak1k4*spbk3k2*abb59(13)
      abb59(19)=spbl6k2*abb59(19)
      abb59(16)=spbl5k2*abb59(16)
      abb59(15)=abb59(15)-abb59(31)
      abb59(15)=spbl6l5*abb59(15)
      abb59(13)=abb59(15)+abb59(16)+abb59(19)+2.0_ki*abb59(26)+abb59(13)
      abb59(13)=8.0_ki*abb59(13)
      R2d59=0.0_ki
      rat2 = rat2 + R2d59
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='59' value='", &
          & R2d59, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd59h3
