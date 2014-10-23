module     p0_dbaru_epnebbbarg_abbrevd42h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(36), public :: abb42
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
      abb42(8)=spbl6k2**(-1)
      abb42(9)=spbk7k2**(-1)
      abb42(10)=spak2l6**(-1)
      abb42(11)=NC-abb42(3)
      abb42(12)=TR*gW
      abb42(12)=abb42(12)**2*CVDU*i_*spak1k7*abb42(5)*abb42(4)*abb42(2)*abb42(1)
      abb42(13)=abb42(12)*abb42(6)
      abb42(14)=abb42(11)*c3*abb42(13)
      abb42(15)=abb42(3)**2
      abb42(15)=abb42(15)-1.0_ki
      abb42(15)=abb42(15)*c4
      abb42(16)=abb42(15)*abb42(13)
      abb42(14)=abb42(16)+abb42(14)
      abb42(16)=mB**2
      abb42(17)=abb42(16)*abb42(7)
      abb42(18)=abb42(17)*abb42(14)
      abb42(13)=spbl5k2*abb42(13)
      abb42(19)=abb42(15)*abb42(13)
      abb42(13)=abb42(13)*c3
      abb42(20)=abb42(13)*abb42(11)
      abb42(20)=abb42(19)+abb42(20)
      abb42(18)=abb42(18)-abb42(20)
      abb42(21)=spak2l6*spbk3k2
      abb42(22)=abb42(21)*abb42(18)
      abb42(23)=abb42(20)*abb42(16)
      abb42(24)=abb42(23)*abb42(8)
      abb42(25)=spbk3k2*abb42(24)
      abb42(22)=abb42(25)+abb42(22)
      abb42(25)=abb42(22)*spak4k7
      abb42(19)=abb42(9)*abb42(19)
      abb42(13)=abb42(9)*abb42(13)
      abb42(26)=abb42(13)*abb42(3)
      abb42(13)=abb42(13)*NC
      abb42(13)=abb42(13)+abb42(19)-abb42(26)
      abb42(19)=spbk2k1*abb42(13)
      abb42(11)=-c3*abb42(11)
      abb42(11)=abb42(11)-abb42(15)
      abb42(12)=abb42(12)*abb42(9)
      abb42(15)=-abb42(11)*abb42(12)*abb42(6)
      abb42(26)=abb42(16)*spbk2k1
      abb42(27)=abb42(26)*abb42(15)*abb42(7)
      abb42(27)=abb42(19)-abb42(27)
      abb42(21)=-abb42(21)*abb42(27)
      abb42(26)=abb42(13)*abb42(26)
      abb42(28)=abb42(26)*abb42(8)*spbk3k2
      abb42(21)=abb42(28)+abb42(21)
      abb42(28)=abb42(21)*spak1k4
      abb42(29)=abb42(19)*spak1k4
      abb42(30)=abb42(20)*spak4k7
      abb42(29)=abb42(29)-abb42(30)
      abb42(30)=spbl5k3*spal5l6
      abb42(31)=abb42(29)*abb42(30)
      abb42(25)=-abb42(25)+abb42(28)-abb42(31)
      abb42(28)=4.0_ki*abb42(25)
      abb42(31)=16.0_ki*abb42(25)
      abb42(25)=-8.0_ki*abb42(25)
      abb42(32)=abb42(20)*abb42(30)
      abb42(22)=abb42(22)-abb42(32)
      abb42(32)=8.0_ki*spak3k4
      abb42(33)=-abb42(22)*abb42(32)
      abb42(34)=spak2l6*abb42(18)
      abb42(24)=abb42(24)+abb42(34)
      abb42(34)=spak4k7*abb42(24)
      abb42(35)=-spak2l6*abb42(27)
      abb42(36)=abb42(26)*abb42(8)
      abb42(35)=abb42(36)+abb42(35)
      abb42(36)=-spak1k4*abb42(35)
      abb42(34)=abb42(34)+abb42(36)
      abb42(34)=spbk4k2*abb42(34)
      abb42(22)=spak3k7*abb42(22)
      abb42(30)=abb42(19)*abb42(30)
      abb42(21)=abb42(30)-abb42(21)
      abb42(30)=spak1k3*abb42(21)
      abb42(29)=spbl5k4*spal5l6*abb42(29)
      abb42(22)=abb42(29)+abb42(30)+abb42(34)+abb42(22)
      abb42(22)=8.0_ki*abb42(22)
      abb42(29)=abb42(19)*spak1l6
      abb42(30)=abb42(20)*spal6k7
      abb42(29)=abb42(29)-abb42(30)
      abb42(29)=32.0_ki*abb42(29)
      abb42(18)=-spal6k7*abb42(18)
      abb42(23)=-spal6k7*abb42(23)
      abb42(26)=spak1l6*abb42(26)
      abb42(23)=abb42(23)+abb42(26)
      abb42(26)=abb42(10)*abb42(8)
      abb42(23)=abb42(23)*abb42(26)
      abb42(27)=-spak1l6*abb42(27)
      abb42(18)=abb42(23)+abb42(18)+abb42(27)
      abb42(18)=32.0_ki*abb42(18)
      abb42(23)=8.0_ki*spal5l6
      abb42(27)=-abb42(20)*abb42(23)
      abb42(24)=-8.0_ki*abb42(24)
      abb42(14)=abb42(14)*spal6k7
      abb42(30)=spak1l6*abb42(15)*spbk2k1
      abb42(14)=abb42(30)-abb42(14)
      abb42(30)=-spbl6k2*abb42(14)
      abb42(20)=spal5k7*abb42(20)
      abb42(34)=-spak1l5*abb42(19)
      abb42(20)=abb42(34)+abb42(30)+abb42(20)
      abb42(20)=16.0_ki*abb42(20)
      abb42(16)=abb42(26)*abb42(16)
      abb42(16)=abb42(16)-1.0_ki
      abb42(26)=-abb42(16)*abb42(11)*abb42(12)*spbl5k2
      abb42(11)=-abb42(17)*abb42(12)*abb42(11)
      abb42(12)=-abb42(13)*abb42(16)
      abb42(13)=-abb42(15)*abb42(17)
      abb42(12)=abb42(13)+abb42(12)
      abb42(12)=es712*abb42(12)
      abb42(13)=spbl6l5*abb42(14)
      abb42(11)=abb42(13)+abb42(12)+abb42(11)+abb42(26)
      abb42(11)=16.0_ki*abb42(11)
      abb42(12)=-abb42(19)*abb42(23)
      abb42(13)=abb42(21)*abb42(32)
      abb42(14)=-8.0_ki*abb42(35)
      R2d42=abb42(28)
      rat2 = rat2 + R2d42
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='42' value='", &
          & R2d42, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd42h5
