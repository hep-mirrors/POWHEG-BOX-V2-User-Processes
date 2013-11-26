module     p1_dbarc_epnebbbarg_abbrevd42h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(32), public :: abb42
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
      abb42(6)=spbl5k2**(-1)
      abb42(7)=spak2l6**(-1)
      abb42(8)=spak2l5**(-1)
      abb42(9)=abb42(3)**2
      abb42(9)=abb42(9)-1.0_ki
      abb42(10)=TR*gW
      abb42(10)=abb42(10)**2*CVDC*i_*spak1e7*abb42(5)*abb42(4)*abb42(2)*abb42(1)
      abb42(9)=abb42(9)*abb42(10)
      abb42(11)=spbl6k2*abb42(9)
      abb42(12)=c4*spbk7e7
      abb42(13)=abb42(11)*abb42(12)
      abb42(14)=abb42(10)*c3
      abb42(15)=spbl6k2*abb42(14)
      abb42(16)=abb42(15)*NC
      abb42(17)=abb42(16)*spbk7e7
      abb42(15)=abb42(15)*abb42(3)
      abb42(18)=spbk7e7*abb42(15)
      abb42(13)=-abb42(18)+abb42(13)+abb42(17)
      abb42(17)=mB**2
      abb42(18)=abb42(17)*spbk3k2
      abb42(19)=abb42(18)*abb42(6)
      abb42(20)=spak2l5*spbk3k2
      abb42(19)=abb42(19)-abb42(20)
      abb42(20)=abb42(13)*abb42(19)
      abb42(12)=abb42(9)*abb42(12)
      abb42(10)=abb42(10)*c3*abb42(3)
      abb42(21)=spbk7e7*abb42(10)
      abb42(12)=abb42(21)-abb42(12)
      abb42(18)=abb42(18)*spak2l5
      abb42(21)=abb42(12)*abb42(18)
      abb42(14)=NC*abb42(14)
      abb42(22)=abb42(14)*abb42(18)
      abb42(23)=abb42(22)*spbk7e7
      abb42(21)=abb42(21)-abb42(23)
      abb42(21)=abb42(21)*abb42(7)
      abb42(20)=-abb42(21)+abb42(20)
      abb42(21)=abb42(20)*spak4k7
      abb42(23)=c4*spbe7k1
      abb42(11)=abb42(11)*abb42(23)
      abb42(16)=abb42(16)*spbe7k1
      abb42(15)=spbe7k1*abb42(15)
      abb42(11)=-abb42(15)+abb42(11)+abb42(16)
      abb42(15)=abb42(11)*abb42(19)
      abb42(9)=abb42(9)*abb42(23)
      abb42(10)=spbe7k1*abb42(10)
      abb42(9)=abb42(10)-abb42(9)
      abb42(10)=abb42(9)*abb42(18)
      abb42(16)=abb42(22)*spbe7k1
      abb42(10)=abb42(10)-abb42(16)
      abb42(10)=abb42(10)*abb42(7)
      abb42(10)=-abb42(10)+abb42(15)
      abb42(15)=abb42(10)*spak1k4
      abb42(16)=abb42(11)*spak1k4
      abb42(18)=abb42(13)*spak4k7
      abb42(16)=abb42(16)-abb42(18)
      abb42(18)=spbl6k3*spal5l6
      abb42(19)=abb42(16)*abb42(18)
      abb42(15)=-abb42(19)+abb42(21)-abb42(15)
      abb42(19)=-2.0_ki*abb42(15)
      abb42(21)=8.0_ki*abb42(15)
      abb42(15)=4.0_ki*abb42(15)
      abb42(22)=abb42(18)*abb42(13)
      abb42(20)=abb42(20)+abb42(22)
      abb42(22)=4.0_ki*spak3k4
      abb42(23)=-abb42(20)*abb42(22)
      abb42(24)=abb42(13)*spak2l5
      abb42(25)=abb42(17)*abb42(13)
      abb42(26)=abb42(25)*abb42(6)
      abb42(27)=abb42(14)*spbk7e7
      abb42(12)=abb42(27)-abb42(12)
      abb42(27)=abb42(12)*abb42(7)
      abb42(28)=abb42(17)*spak2l5
      abb42(29)=-abb42(28)*abb42(27)
      abb42(24)=abb42(29)+abb42(24)-abb42(26)
      abb42(29)=-spak4k7*abb42(24)
      abb42(30)=abb42(11)*spak2l5
      abb42(31)=abb42(17)*abb42(11)
      abb42(32)=abb42(31)*abb42(6)
      abb42(14)=abb42(14)*spbe7k1
      abb42(9)=abb42(9)-abb42(14)
      abb42(14)=abb42(9)*abb42(7)
      abb42(28)=abb42(28)*abb42(14)
      abb42(28)=-abb42(32)+abb42(30)+abb42(28)
      abb42(30)=spak1k4*abb42(28)
      abb42(29)=abb42(29)+abb42(30)
      abb42(29)=spbk4k2*abb42(29)
      abb42(20)=spak3k7*abb42(20)
      abb42(18)=abb42(18)*abb42(11)
      abb42(10)=abb42(18)+abb42(10)
      abb42(18)=-spak1k3*abb42(10)
      abb42(16)=-spbl6k4*spal5l6*abb42(16)
      abb42(16)=abb42(16)+abb42(18)+abb42(29)+abb42(20)
      abb42(16)=4.0_ki*abb42(16)
      abb42(18)=abb42(11)*spak1l5
      abb42(20)=abb42(13)*spal5k7
      abb42(18)=abb42(18)-abb42(20)
      abb42(18)=16.0_ki*abb42(18)
      abb42(20)=-spal5k7*abb42(25)
      abb42(25)=spak1l5*abb42(31)
      abb42(20)=abb42(20)+abb42(25)
      abb42(20)=abb42(8)*abb42(6)*abb42(20)
      abb42(25)=-abb42(17)*abb42(27)
      abb42(25)=abb42(25)+abb42(13)
      abb42(27)=spal5k7*abb42(25)
      abb42(14)=abb42(17)*abb42(14)
      abb42(14)=abb42(14)+abb42(11)
      abb42(17)=-spak1l5*abb42(14)
      abb42(17)=abb42(20)+abb42(27)+abb42(17)
      abb42(17)=16.0_ki*abb42(17)
      abb42(20)=4.0_ki*spal5l6
      abb42(27)=abb42(13)*abb42(20)
      abb42(24)=4.0_ki*abb42(24)
      abb42(12)=abb42(12)*spal5k7
      abb42(9)=abb42(9)*spak1l5
      abb42(9)=abb42(12)+abb42(9)
      abb42(12)=spbl5k2*abb42(9)
      abb42(13)=spal6k7*abb42(13)
      abb42(29)=-spak1l6*abb42(11)
      abb42(12)=abb42(29)+abb42(12)+abb42(13)
      abb42(12)=8.0_ki*abb42(12)
      abb42(13)=abb42(8)*abb42(26)
      abb42(13)=abb42(13)-abb42(25)
      abb42(13)=spak2k7*abb42(13)
      abb42(25)=-abb42(8)*abb42(32)
      abb42(14)=abb42(25)+abb42(14)
      abb42(14)=spak1k2*abb42(14)
      abb42(9)=spbl6l5*abb42(9)
      abb42(9)=abb42(9)+abb42(13)+abb42(14)
      abb42(9)=8.0_ki*abb42(9)
      abb42(11)=abb42(11)*abb42(20)
      abb42(10)=-abb42(10)*abb42(22)
      abb42(13)=4.0_ki*abb42(28)
      R2d42=abb42(19)
      rat2 = rat2 + R2d42
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='42' value='", &
          & R2d42, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd42h2
