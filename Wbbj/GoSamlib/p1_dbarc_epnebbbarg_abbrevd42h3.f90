module     p1_dbarc_epnebbbarg_abbrevd42h3
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(38), public :: abb42
   complex(ki), public :: R2d42
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb42(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb42(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb42(3)=NC**(-1)
      abb42(4)=es56**(-1)
      abb42(5)=es71**(-1)
      abb42(6)=spak2l5**(-1)
      abb42(7)=spak2l6**(-1)
      abb42(8)=abb42(3)**2
      abb42(8)=abb42(8)-1.0_ki
      abb42(9)=TR*gW
      abb42(9)=CVDC*abb42(9)**2*mB*i_*spak1e7*abb42(5)*abb42(4)*abb42(2)*abb42(&
      &1)
      abb42(8)=c4*abb42(9)*abb42(8)
      abb42(10)=spbe7k1*abb42(8)
      abb42(9)=abb42(9)*c3
      abb42(11)=abb42(9)*spbe7k1
      abb42(12)=abb42(11)*abb42(3)
      abb42(10)=abb42(12)-abb42(10)
      abb42(11)=abb42(11)*NC
      abb42(12)=abb42(11)-abb42(10)
      abb42(13)=abb42(6)*spbl6k2
      abb42(14)=abb42(13)*spbl6k3
      abb42(15)=-abb42(14)*abb42(12)
      abb42(16)=abb42(15)*spak1k4
      abb42(8)=spbk7e7*abb42(8)
      abb42(9)=abb42(9)*spbk7e7
      abb42(17)=abb42(9)*abb42(3)
      abb42(8)=abb42(17)-abb42(8)
      abb42(9)=abb42(9)*NC
      abb42(17)=abb42(9)-abb42(8)
      abb42(14)=-abb42(14)*abb42(17)
      abb42(18)=abb42(14)*spak4k7
      abb42(16)=abb42(16)-abb42(18)
      abb42(16)=abb42(16)*spak2l6
      abb42(18)=abb42(7)*spbl5k2
      abb42(19)=abb42(18)*spbl5k3
      abb42(20)=-abb42(19)*abb42(12)
      abb42(21)=abb42(20)*spak1k4
      abb42(19)=-abb42(19)*abb42(17)
      abb42(22)=abb42(19)*spak4k7
      abb42(21)=abb42(21)-abb42(22)
      abb42(21)=abb42(21)*spak2l5
      abb42(22)=spbl6k3*spbl5k2
      abb42(23)=spbl5k3*spbl6k2
      abb42(22)=abb42(22)+abb42(23)
      abb42(23)=-abb42(22)*abb42(17)
      abb42(24)=abb42(23)*spak4k7
      abb42(22)=-abb42(22)*abb42(12)
      abb42(25)=abb42(22)*spak1k4
      abb42(16)=-abb42(21)-abb42(16)+abb42(24)-abb42(25)
      abb42(21)=2.0_ki*abb42(16)
      abb42(24)=8.0_ki*abb42(16)
      abb42(16)=-4.0_ki*abb42(16)
      abb42(14)=abb42(14)*spak2l6
      abb42(19)=abb42(19)*spak2l5
      abb42(14)=abb42(23)+abb42(14)+abb42(19)
      abb42(19)=4.0_ki*spak3k4
      abb42(23)=abb42(14)*abb42(19)
      abb42(25)=abb42(9)*abb42(13)
      abb42(26)=abb42(8)*abb42(13)
      abb42(25)=abb42(25)-abb42(26)
      abb42(27)=spak4k7*abb42(25)
      abb42(28)=abb42(11)*abb42(13)
      abb42(29)=abb42(10)*abb42(13)
      abb42(28)=abb42(28)-abb42(29)
      abb42(30)=-spak1k4*abb42(28)
      abb42(27)=abb42(27)+abb42(30)
      abb42(27)=spak2l6*abb42(27)
      abb42(30)=-abb42(17)*spbl5k2
      abb42(31)=-spak4k7*abb42(30)
      abb42(32)=-abb42(12)*spbl5k2
      abb42(33)=spak1k4*abb42(32)
      abb42(27)=abb42(27)+abb42(31)+abb42(33)
      abb42(27)=spbl6k4*abb42(27)
      abb42(31)=abb42(9)*abb42(18)
      abb42(8)=abb42(8)*abb42(18)
      abb42(31)=abb42(31)-abb42(8)
      abb42(33)=spak4k7*abb42(31)
      abb42(34)=abb42(11)*abb42(18)
      abb42(10)=abb42(10)*abb42(18)
      abb42(34)=abb42(34)-abb42(10)
      abb42(35)=-spak1k4*abb42(34)
      abb42(33)=abb42(33)+abb42(35)
      abb42(33)=spak2l5*abb42(33)
      abb42(35)=-abb42(17)*spbl6k2
      abb42(36)=-spak4k7*abb42(35)
      abb42(37)=-abb42(12)*spbl6k2
      abb42(38)=spak1k4*abb42(37)
      abb42(33)=abb42(33)+abb42(36)+abb42(38)
      abb42(33)=spbl5k4*abb42(33)
      abb42(14)=-spak3k7*abb42(14)
      abb42(15)=abb42(15)*spak2l6
      abb42(20)=abb42(20)*spak2l5
      abb42(15)=abb42(22)+abb42(15)+abb42(20)
      abb42(20)=spak1k3*abb42(15)
      abb42(14)=abb42(20)+abb42(14)+abb42(27)+abb42(33)
      abb42(14)=4.0_ki*abb42(14)
      abb42(13)=abb42(13)+abb42(18)
      abb42(9)=abb42(13)*abb42(9)
      abb42(8)=-abb42(26)+abb42(9)-abb42(8)
      abb42(8)=abb42(8)*spak2k7
      abb42(9)=abb42(13)*abb42(11)
      abb42(9)=-abb42(9)+abb42(10)+abb42(29)
      abb42(9)=abb42(9)*spak1k2
      abb42(8)=abb42(8)+abb42(9)
      abb42(8)=16.0_ki*abb42(8)
      abb42(9)=-abb42(17)*spal5k7
      abb42(10)=-abb42(12)*spak1l5
      abb42(9)=abb42(9)-abb42(10)
      abb42(10)=-abb42(6)*abb42(9)
      abb42(11)=-abb42(17)*spal6k7
      abb42(12)=-abb42(12)*spak1l6
      abb42(11)=abb42(11)-abb42(12)
      abb42(12)=abb42(7)*abb42(11)
      abb42(10)=abb42(12)+abb42(10)
      abb42(10)=16.0_ki*spbl6l5*abb42(10)
      abb42(12)=spak2l6*abb42(25)
      abb42(12)=abb42(12)-abb42(30)
      abb42(12)=4.0_ki*abb42(12)
      abb42(13)=spak2l5*abb42(31)
      abb42(13)=abb42(13)-abb42(35)
      abb42(13)=4.0_ki*abb42(13)
      abb42(9)=-abb42(9)*abb42(6)*spbl5k2
      abb42(17)=spal6k7*abb42(25)
      abb42(18)=-spak1l6*abb42(28)
      abb42(9)=abb42(18)+abb42(17)+abb42(9)
      abb42(9)=8.0_ki*abb42(9)
      abb42(11)=-abb42(11)*abb42(7)*spbl6k2
      abb42(17)=spal5k7*abb42(31)
      abb42(18)=-spak1l5*abb42(34)
      abb42(11)=abb42(18)+abb42(17)+abb42(11)
      abb42(11)=8.0_ki*abb42(11)
      abb42(17)=spak2l6*abb42(28)
      abb42(17)=abb42(17)-abb42(32)
      abb42(17)=4.0_ki*abb42(17)
      abb42(18)=spak2l5*abb42(34)
      abb42(18)=abb42(18)-abb42(37)
      abb42(18)=4.0_ki*abb42(18)
      abb42(15)=abb42(15)*abb42(19)
      R2d42=abb42(21)
      rat2 = rat2 + R2d42
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='42' value='", &
          & R2d42, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd42h3
