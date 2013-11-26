module     p9_csbar_epnebbbarg_abbrevd43h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(33), public :: abb43
   complex(ki), public :: R2d43
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
      abb43(1)=1.0_ki/(-es71+es712-es12)
      abb43(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb43(3)=1.0_ki/(-es71+es56-es567+es234)
      abb43(4)=NC**(-1)
      abb43(5)=es56**(-1)
      abb43(6)=spak2l5**(-1)
      abb43(7)=spak2l6**(-1)
      abb43(8)=spbl5k2**(-1)
      abb43(9)=spbl6k2**(-1)
      abb43(10)=abb43(6)*spbl6k1
      abb43(11)=abb43(7)*spbl5k1
      abb43(12)=abb43(10)+abb43(11)
      abb43(13)=TR*gW
      abb43(13)=CVSC*abb43(13)**2*spbk7e7*i_*spak2e7*abb43(5)*abb43(3)*abb43(2)&
      &*abb43(1)
      abb43(14)=mB*abb43(13)*c3
      abb43(15)=NC*abb43(14)*abb43(12)
      abb43(16)=abb43(4)**2
      abb43(16)=abb43(16)-1.0_ki
      abb43(17)=c4*abb43(16)*abb43(13)*mB
      abb43(18)=abb43(14)*abb43(4)
      abb43(17)=abb43(17)-abb43(18)
      abb43(18)=abb43(17)*abb43(11)
      abb43(19)=abb43(17)*abb43(10)
      abb43(15)=abb43(15)+abb43(18)+abb43(19)
      abb43(20)=spak4k7*abb43(15)
      abb43(21)=spbk3k1*spak1k2
      abb43(22)=abb43(20)*abb43(21)
      abb43(14)=abb43(14)*NC
      abb43(17)=abb43(17)+abb43(14)
      abb43(23)=spak4k7*abb43(17)
      abb43(24)=abb43(10)*abb43(23)
      abb43(25)=spak2l6*spbl6k3
      abb43(26)=abb43(24)*abb43(25)
      abb43(27)=abb43(11)*abb43(23)
      abb43(28)=spak2l5*spbl5k3
      abb43(29)=abb43(27)*abb43(28)
      abb43(30)=spbl5k1*abb43(23)
      abb43(31)=abb43(30)*spbl6k3
      abb43(23)=spbl6k1*abb43(23)
      abb43(32)=abb43(23)*spbl5k3
      abb43(22)=-abb43(22)+abb43(26)+abb43(29)+abb43(31)+abb43(32)
      abb43(26)=2.0_ki*abb43(22)
      abb43(29)=8.0_ki*abb43(22)
      abb43(22)=-4.0_ki*abb43(22)
      abb43(21)=abb43(15)*abb43(21)
      abb43(31)=abb43(14)*abb43(11)
      abb43(18)=abb43(31)+abb43(18)
      abb43(28)=abb43(18)*abb43(28)
      abb43(14)=abb43(14)*abb43(10)
      abb43(14)=abb43(19)+abb43(14)
      abb43(19)=abb43(14)*abb43(25)
      abb43(25)=spbl6k1*abb43(17)
      abb43(31)=abb43(25)*spbl5k3
      abb43(32)=spbl5k1*abb43(17)
      abb43(33)=abb43(32)*spbl6k3
      abb43(19)=abb43(31)-abb43(21)+abb43(28)+abb43(33)+abb43(19)
      abb43(21)=4.0_ki*spak3k4*abb43(19)
      abb43(19)=-spak3k7*abb43(19)
      abb43(20)=spbk4k1*spak1k2*abb43(20)
      abb43(24)=-spak2l6*abb43(24)
      abb43(24)=abb43(24)-abb43(30)
      abb43(24)=spbl6k4*abb43(24)
      abb43(27)=-spak2l5*abb43(27)
      abb43(23)=abb43(27)-abb43(23)
      abb43(23)=spbl5k4*abb43(23)
      abb43(19)=abb43(20)+abb43(23)+abb43(19)+abb43(24)
      abb43(19)=4.0_ki*abb43(19)
      abb43(20)=abb43(15)*spak2k7
      abb43(20)=16.0_ki*abb43(20)
      abb43(13)=abb43(13)*mB**3
      abb43(23)=abb43(13)*c3
      abb43(24)=abb43(6)**2
      abb43(27)=spbl6k1*abb43(24)*abb43(23)
      abb43(28)=abb43(23)*abb43(11)
      abb43(30)=abb43(6)*abb43(28)
      abb43(27)=abb43(27)+abb43(30)
      abb43(27)=NC*abb43(27)
      abb43(13)=c4*abb43(13)*abb43(16)
      abb43(16)=abb43(4)*abb43(23)
      abb43(13)=abb43(13)-abb43(16)
      abb43(16)=abb43(13)*abb43(24)
      abb43(30)=spbl6k1*abb43(16)
      abb43(11)=abb43(6)*abb43(13)*abb43(11)
      abb43(11)=abb43(27)+abb43(30)+abb43(11)
      abb43(27)=abb43(8)*spak2k7
      abb43(11)=abb43(11)*abb43(27)
      abb43(12)=abb43(13)*abb43(12)
      abb43(10)=abb43(10)*abb43(23)
      abb43(10)=abb43(10)+abb43(28)
      abb43(10)=NC*abb43(10)
      abb43(10)=abb43(12)+abb43(10)
      abb43(12)=abb43(9)*spak2k7
      abb43(10)=abb43(12)*abb43(7)*abb43(10)
      abb43(10)=abb43(11)+abb43(10)
      abb43(10)=16.0_ki*abb43(10)
      abb43(11)=-spak2l6*abb43(14)
      abb43(11)=abb43(11)-abb43(32)
      abb43(11)=4.0_ki*abb43(11)
      abb43(28)=-spak2l5*abb43(18)
      abb43(28)=abb43(28)-abb43(25)
      abb43(28)=4.0_ki*abb43(28)
      abb43(30)=-4.0_ki*spak1k2*abb43(15)
      abb43(23)=NC*abb43(23)
      abb43(24)=abb43(23)*abb43(24)
      abb43(16)=abb43(24)+abb43(16)
      abb43(16)=abb43(16)*abb43(27)
      abb43(13)=abb43(23)+abb43(13)
      abb43(23)=abb43(13)*abb43(7)*abb43(6)
      abb43(24)=-abb43(23)*abb43(12)
      abb43(24)=-abb43(16)+abb43(24)
      abb43(24)=spbk2k1*abb43(24)
      abb43(14)=-spal6k7*abb43(14)
      abb43(31)=spal5k7*abb43(6)
      abb43(32)=-abb43(32)*abb43(31)
      abb43(14)=abb43(32)+abb43(24)+abb43(14)
      abb43(14)=8.0_ki*abb43(14)
      abb43(12)=abb43(12)*abb43(13)*abb43(7)**2
      abb43(13)=-abb43(23)*abb43(27)
      abb43(13)=abb43(13)-abb43(12)
      abb43(13)=spbk2k1*abb43(13)
      abb43(18)=-spal5k7*abb43(18)
      abb43(24)=spal6k7*abb43(7)
      abb43(25)=-abb43(25)*abb43(24)
      abb43(13)=abb43(18)+abb43(13)+abb43(25)
      abb43(13)=8.0_ki*abb43(13)
      abb43(15)=spak1k7*abb43(15)
      abb43(18)=abb43(24)-abb43(31)
      abb43(17)=spbl6l5*abb43(17)*abb43(18)
      abb43(16)=-spbl6k2*abb43(16)
      abb43(18)=spak2k7*abb43(23)
      abb43(12)=-spbl5k2*abb43(12)
      abb43(12)=abb43(12)+abb43(16)+abb43(15)-2.0_ki*abb43(18)+abb43(17)
      abb43(12)=8.0_ki*abb43(12)
      R2d43=abb43(26)
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd43h3
