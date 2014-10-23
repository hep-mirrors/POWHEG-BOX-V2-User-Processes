module     p0_dbaru_epnebbbarg_abbrevd42h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(26), public :: abb42
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
      abb42(7)=spak2l5**(-1)
      abb42(8)=spak2k7**(-1)
      abb42(9)=spak2l6**(-1)
      abb42(10)=spbl5k3*spak1k4
      abb42(11)=abb42(10)*spbl6k2
      abb42(12)=spbl6k3*spak1k4
      abb42(13)=abb42(12)*spbl5k2
      abb42(11)=abb42(11)+abb42(13)
      abb42(13)=TR*gW
      abb42(13)=abb42(6)*abb42(8)*CVDU*abb42(13)**2*mB*i_*spbk7k1*abb42(5)*abb4&
      &2(4)*abb42(2)*abb42(1)
      abb42(14)=abb42(13)*spak1k2
      abb42(15)=abb42(3)**2
      abb42(15)=abb42(15)-1.0_ki
      abb42(15)=c4*abb42(15)*abb42(14)
      abb42(14)=c3*abb42(14)
      abb42(16)=abb42(14)*abb42(3)
      abb42(15)=abb42(15)-abb42(16)
      abb42(11)=abb42(11)*abb42(15)
      abb42(16)=abb42(14)*NC
      abb42(17)=abb42(15)+abb42(16)
      abb42(18)=abb42(7)*spbl6k2
      abb42(19)=abb42(17)*abb42(18)
      abb42(20)=abb42(19)*spak2l6
      abb42(12)=abb42(12)*abb42(20)
      abb42(21)=abb42(9)*spbl5k2
      abb42(22)=abb42(17)*abb42(21)
      abb42(23)=abb42(22)*spak2l5
      abb42(10)=abb42(10)*abb42(23)
      abb42(24)=spbl5k3*spbl6k2
      abb42(25)=spbl6k3*spbl5k2
      abb42(24)=abb42(24)+abb42(25)
      abb42(16)=abb42(24)*spak1k4*abb42(16)
      abb42(10)=abb42(10)+abb42(12)+abb42(11)+abb42(16)
      abb42(11)=4.0_ki*abb42(10)
      abb42(12)=16.0_ki*abb42(10)
      abb42(10)=-8.0_ki*abb42(10)
      abb42(15)=abb42(24)*abb42(15)
      abb42(16)=spbl5k3*abb42(23)
      abb42(14)=NC*abb42(14)*abb42(24)
      abb42(24)=spbl6k3*abb42(20)
      abb42(14)=abb42(16)+abb42(14)+abb42(15)+abb42(24)
      abb42(15)=-spak1k3*abb42(14)
      abb42(16)=spbl5k2*abb42(17)
      abb42(20)=abb42(20)+abb42(16)
      abb42(24)=-spbl6k4*spak1k4*abb42(20)
      abb42(25)=spbl6k2*abb42(17)
      abb42(23)=abb42(23)+abb42(25)
      abb42(26)=-spbl5k4*spak1k4*abb42(23)
      abb42(15)=abb42(26)+abb42(15)+abb42(24)
      abb42(15)=8.0_ki*abb42(15)
      abb42(24)=abb42(3)*spak1k2
      abb42(24)=abb42(13)*abb42(24)**2
      abb42(13)=abb42(13)*spak1k2**2
      abb42(24)=abb42(24)-abb42(13)
      abb42(24)=abb42(24)*c4
      abb42(13)=abb42(13)*c3
      abb42(26)=NC*abb42(13)
      abb42(13)=abb42(3)*abb42(13)
      abb42(13)=abb42(26)+abb42(24)-abb42(13)
      abb42(18)=abb42(18)+abb42(21)
      abb42(13)=abb42(18)*abb42(13)
      abb42(13)=32.0_ki*abb42(13)
      abb42(18)=spak1l6*abb42(9)
      abb42(21)=spak1l5*abb42(7)
      abb42(24)=abb42(18)-abb42(21)
      abb42(17)=32.0_ki*spbl6l5*abb42(17)*abb42(24)
      abb42(19)=-spak1l6*abb42(19)
      abb42(16)=-abb42(16)*abb42(21)
      abb42(16)=abb42(19)+abb42(16)
      abb42(16)=16.0_ki*abb42(16)
      abb42(18)=-abb42(25)*abb42(18)
      abb42(19)=-spak1l5*abb42(22)
      abb42(18)=abb42(18)+abb42(19)
      abb42(18)=16.0_ki*abb42(18)
      abb42(19)=8.0_ki*abb42(20)
      abb42(20)=8.0_ki*abb42(23)
      abb42(14)=-8.0_ki*spak3k4*abb42(14)
      R2d42=abb42(11)
      rat2 = rat2 + R2d42
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='42' value='", &
          & R2d42, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd42h3
