module     p0_dbaru_epnebbbarg_abbrevd42h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(29), public :: abb42
   complex(ki), public :: R2d42
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb42(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb42(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb42(3)=NC**(-1)
      abb42(4)=sqrt2**(-1)
      abb42(5)=es56**(-1)
      abb42(6)=es71**(-1)
      abb42(7)=spak2k7**(-1)
      abb42(8)=spak2l5**(-1)
      abb42(9)=spbl6k2**(-1)
      abb42(10)=spak2l6**(-1)
      abb42(11)=abb42(3)**2
      abb42(11)=abb42(11)-1.0_ki
      abb42(11)=abb42(11)*c4
      abb42(12)=TR*gW
      abb42(12)=abb42(6)*abb42(7)*abb42(12)**2*CVDU*i_*spbk7k1*abb42(5)*abb42(4&
      &)*abb42(2)*abb42(1)
      abb42(13)=abb42(12)*spak1k2
      abb42(14)=spbl5k2*abb42(13)
      abb42(15)=abb42(14)*abb42(11)
      abb42(14)=abb42(14)*c3
      abb42(16)=NC*abb42(14)
      abb42(14)=abb42(3)*abb42(14)
      abb42(14)=abb42(16)+abb42(15)-abb42(14)
      abb42(15)=spak1k4*abb42(14)
      abb42(16)=spbl5k3*spal5l6
      abb42(17)=spak2l6*spbk3k2
      abb42(16)=abb42(16)+abb42(17)
      abb42(17)=abb42(15)*abb42(16)
      abb42(18)=NC-abb42(3)
      abb42(19)=-abb42(12)*abb42(18)
      abb42(20)=-abb42(19)*c3*spak1k2
      abb42(13)=abb42(11)*abb42(13)
      abb42(13)=abb42(13)+abb42(20)
      abb42(20)=abb42(13)*abb42(8)
      abb42(21)=spak2l6*spak1k4
      abb42(22)=mB**2
      abb42(23)=abb42(22)*spbk3k2
      abb42(24)=abb42(21)*abb42(23)*abb42(20)
      abb42(25)=abb42(9)*abb42(23)*abb42(15)
      abb42(17)=-abb42(24)-abb42(25)+abb42(17)
      abb42(24)=-4.0_ki*abb42(17)
      abb42(25)=16.0_ki*abb42(17)
      abb42(17)=8.0_ki*abb42(17)
      abb42(26)=abb42(20)*spak2l6
      abb42(27)=abb42(14)*abb42(9)
      abb42(26)=abb42(26)+abb42(27)
      abb42(23)=-abb42(23)*abb42(26)
      abb42(16)=abb42(14)*abb42(16)
      abb42(16)=abb42(23)+abb42(16)
      abb42(23)=spak1k3*abb42(16)
      abb42(26)=-abb42(26)*abb42(22)*spak1k4
      abb42(21)=abb42(21)*abb42(14)
      abb42(21)=abb42(21)+abb42(26)
      abb42(21)=spbk4k2*abb42(21)
      abb42(15)=spbl5k4*spal5l6*abb42(15)
      abb42(15)=abb42(15)+abb42(23)+abb42(21)
      abb42(15)=8.0_ki*abb42(15)
      abb42(21)=abb42(14)*spak1l6
      abb42(21)=32.0_ki*abb42(21)
      abb42(20)=abb42(20)*abb42(22)
      abb42(20)=abb42(14)-abb42(20)
      abb42(23)=abb42(14)*abb42(22)
      abb42(26)=abb42(10)*abb42(9)
      abb42(27)=abb42(23)*abb42(26)
      abb42(27)=abb42(27)-abb42(20)
      abb42(27)=32.0_ki*spak1l6*abb42(27)
      abb42(13)=abb42(13)*spak1l6
      abb42(28)=-spbl6k2*abb42(13)
      abb42(29)=-spak1l5*abb42(14)
      abb42(28)=abb42(28)+abb42(29)
      abb42(28)=16.0_ki*abb42(28)
      abb42(29)=spak1k2**2
      abb42(19)=-abb42(19)*spbl5k2*abb42(29)*c3
      abb42(12)=abb42(29)*abb42(12)
      abb42(11)=abb42(11)*abb42(12)
      abb42(29)=spbl5k2*abb42(11)
      abb42(19)=abb42(29)+abb42(19)
      abb42(26)=-abb42(26)*abb42(22)
      abb42(26)=abb42(26)+1.0_ki
      abb42(19)=abb42(19)*abb42(26)
      abb42(12)=-abb42(18)*c3*abb42(12)
      abb42(11)=-abb42(11)+abb42(12)
      abb42(11)=abb42(11)*abb42(22)*abb42(8)
      abb42(12)=spbl6l5*abb42(13)
      abb42(11)=abb42(12)+abb42(11)+abb42(19)
      abb42(11)=16.0_ki*abb42(11)
      abb42(12)=-8.0_ki*spal5l6*abb42(14)
      abb42(13)=8.0_ki*spak3k4*abb42(16)
      abb42(14)=spak2l6*abb42(20)
      abb42(16)=-abb42(9)*abb42(23)
      abb42(14)=abb42(16)+abb42(14)
      abb42(14)=8.0_ki*abb42(14)
      R2d42=abb42(24)
      rat2 = rat2 + R2d42
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='42' value='", &
          & R2d42, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd42h1
