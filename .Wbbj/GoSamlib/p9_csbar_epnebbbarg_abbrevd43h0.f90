module     p9_csbar_epnebbbarg_abbrevd43h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(35), public :: abb43
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
      abb43(6)=spbl5k2**(-1)
      abb43(7)=spbl6k2**(-1)
      abb43(8)=spak2l5**(-1)
      abb43(9)=spak2l6**(-1)
      abb43(10)=spak1l6*spbk3k1
      abb43(11)=spbl5k3*spal5l6
      abb43(10)=abb43(10)+abb43(11)
      abb43(11)=abb43(4)**2
      abb43(11)=abb43(11)-1.0_ki
      abb43(11)=abb43(11)*c4
      abb43(12)=TR*gW
      abb43(12)=CVSC*abb43(12)**2*spbk7e7*i_*spak2e7*abb43(5)*abb43(3)*abb43(2)&
      &*abb43(1)
      abb43(13)=abb43(12)*mB
      abb43(14)=spbk2k1*abb43(13)
      abb43(15)=abb43(11)*abb43(14)
      abb43(14)=abb43(14)*c3
      abb43(16)=abb43(14)*abb43(4)
      abb43(15)=abb43(15)-abb43(16)
      abb43(16)=abb43(6)*abb43(15)
      abb43(17)=abb43(16)*spak4k7
      abb43(14)=abb43(14)*NC
      abb43(18)=abb43(14)*spak4k7
      abb43(19)=abb43(18)*abb43(6)
      abb43(17)=abb43(17)+abb43(19)
      abb43(19)=abb43(17)*abb43(10)
      abb43(20)=spak1l5*spbk3k1
      abb43(21)=spbl6k3*spal5l6
      abb43(20)=abb43(20)-abb43(21)
      abb43(15)=abb43(7)*abb43(15)
      abb43(21)=abb43(15)*spak4k7
      abb43(18)=abb43(18)*abb43(7)
      abb43(18)=abb43(21)+abb43(18)
      abb43(21)=-abb43(18)*abb43(20)
      abb43(22)=abb43(12)*abb43(7)
      abb43(23)=abb43(22)*abb43(6)
      abb43(24)=spbk2k1*mB**3
      abb43(25)=c3*abb43(24)
      abb43(26)=NC*abb43(23)*abb43(25)
      abb43(27)=-abb43(24)*abb43(11)
      abb43(28)=abb43(25)*abb43(4)
      abb43(27)=abb43(27)+abb43(28)
      abb43(23)=abb43(23)*abb43(27)
      abb43(23)=abb43(26)-abb43(23)
      abb43(26)=spak4k7*abb43(23)
      abb43(27)=2.0_ki*spbk3k2
      abb43(29)=abb43(26)*abb43(27)
      abb43(24)=abb43(11)*abb43(24)*abb43(12)
      abb43(25)=abb43(25)*NC
      abb43(25)=abb43(25)-abb43(28)
      abb43(12)=abb43(12)*abb43(25)
      abb43(12)=abb43(12)+abb43(24)
      abb43(24)=abb43(12)*abb43(6)**2
      abb43(25)=spak4k7*abb43(24)
      abb43(28)=spak2l6*abb43(8)
      abb43(30)=abb43(28)*spbk3k2
      abb43(31)=abb43(25)*abb43(30)
      abb43(12)=abb43(12)*abb43(7)**2
      abb43(32)=spak4k7*abb43(12)
      abb43(33)=spak2l5*abb43(9)
      abb43(34)=abb43(33)*spbk3k2
      abb43(35)=abb43(32)*abb43(34)
      abb43(19)=abb43(35)-abb43(19)+abb43(21)+abb43(29)+abb43(31)
      abb43(21)=-2.0_ki*abb43(19)
      abb43(29)=8.0_ki*abb43(19)
      abb43(19)=4.0_ki*abb43(19)
      abb43(31)=abb43(14)*abb43(7)
      abb43(15)=abb43(31)+abb43(15)
      abb43(20)=abb43(15)*abb43(20)
      abb43(14)=abb43(14)*abb43(6)
      abb43(14)=abb43(14)+abb43(16)
      abb43(10)=abb43(14)*abb43(10)
      abb43(16)=-abb43(27)*abb43(23)
      abb43(27)=abb43(12)*abb43(34)
      abb43(30)=abb43(24)*abb43(30)
      abb43(10)=-abb43(30)+abb43(16)-abb43(27)+abb43(10)+abb43(20)
      abb43(16)=4.0_ki*spak3k4*abb43(10)
      abb43(10)=-spak3k7*abb43(10)
      abb43(20)=abb43(25)*abb43(28)
      abb43(25)=abb43(32)*abb43(33)
      abb43(20)=abb43(25)+2.0_ki*abb43(26)+abb43(20)
      abb43(20)=spbk4k2*abb43(20)
      abb43(25)=spbl6k4*abb43(18)
      abb43(26)=-spbl5k4*abb43(17)
      abb43(25)=abb43(26)+abb43(25)
      abb43(25)=spal5l6*abb43(25)
      abb43(17)=-spak1l6*abb43(17)
      abb43(18)=-spak1l5*abb43(18)
      abb43(17)=abb43(17)+abb43(18)
      abb43(17)=spbk4k1*abb43(17)
      abb43(10)=abb43(17)+abb43(20)+abb43(10)+abb43(25)
      abb43(10)=4.0_ki*abb43(10)
      abb43(17)=abb43(15)*spal5k7
      abb43(18)=abb43(14)*spal6k7
      abb43(17)=abb43(17)+abb43(18)
      abb43(17)=16.0_ki*abb43(17)
      abb43(18)=-abb43(23)*abb43(9)
      abb43(20)=abb43(24)*abb43(8)
      abb43(18)=abb43(18)-abb43(20)
      abb43(20)=spal6k7*abb43(18)
      abb43(25)=-abb43(23)*abb43(8)
      abb43(26)=abb43(12)*abb43(9)
      abb43(25)=abb43(25)-abb43(26)
      abb43(26)=spal5k7*abb43(25)
      abb43(20)=abb43(20)+abb43(26)
      abb43(20)=16.0_ki*abb43(20)
      abb43(26)=4.0_ki*spal5l6
      abb43(27)=abb43(15)*abb43(26)
      abb43(26)=-abb43(14)*abb43(26)
      abb43(24)=-abb43(24)*abb43(28)
      abb43(12)=-abb43(12)*abb43(33)
      abb43(12)=abb43(12)-2.0_ki*abb43(23)+abb43(24)
      abb43(12)=4.0_ki*abb43(12)
      abb43(23)=spak1l6*abb43(14)
      abb43(24)=spak1l5*abb43(15)
      abb43(23)=abb43(23)+abb43(24)
      abb43(23)=4.0_ki*abb43(23)
      abb43(18)=-spak2k7*abb43(18)
      abb43(24)=spbl6k1*spal6k7
      abb43(28)=spbl5k1*spal5k7
      abb43(24)=abb43(24)+abb43(28)
      abb43(28)=NC-abb43(4)
      abb43(28)=abb43(28)*c3
      abb43(11)=abb43(28)+abb43(11)
      abb43(28)=abb43(11)*abb43(6)*abb43(13)
      abb43(30)=abb43(28)*abb43(24)
      abb43(18)=abb43(18)+abb43(30)
      abb43(18)=8.0_ki*abb43(18)
      abb43(13)=abb43(13)*abb43(11)
      abb43(30)=-spal5k7*abb43(13)
      abb43(14)=-spak1k7*abb43(14)
      abb43(28)=-spbl6k2*spal6k7*abb43(28)
      abb43(14)=abb43(28)+abb43(30)+abb43(14)
      abb43(14)=8.0_ki*abb43(14)
      abb43(25)=-spak2k7*abb43(25)
      abb43(11)=abb43(11)*abb43(22)*mB
      abb43(22)=abb43(11)*abb43(24)
      abb43(22)=abb43(25)+abb43(22)
      abb43(22)=8.0_ki*abb43(22)
      abb43(13)=-spal6k7*abb43(13)
      abb43(15)=-spak1k7*abb43(15)
      abb43(11)=-spbl5k2*spal5k7*abb43(11)
      abb43(11)=abb43(11)+abb43(13)+abb43(15)
      abb43(11)=8.0_ki*abb43(11)
      R2d43=abb43(21)
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd43h0
