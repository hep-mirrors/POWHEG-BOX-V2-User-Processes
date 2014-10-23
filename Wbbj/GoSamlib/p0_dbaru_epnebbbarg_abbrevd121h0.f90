module     p0_dbaru_epnebbbarg_abbrevd121h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(28), public :: abb121
   complex(ki), public :: R2d121
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
      abb121(1)=1.0_ki/(-mB**2+es67)
      abb121(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb121(3)=1.0_ki/(es34+es567-es12-es234)
      abb121(4)=NC**(-1)
      abb121(5)=sqrt2**(-1)
      abb121(6)=spak2k7**(-1)
      abb121(7)=spbl6k2**(-1)
      abb121(8)=sqrt(mB**2)
      abb121(9)=-NC+2.0_ki*abb121(4)
      abb121(10)=TR*gW
      abb121(10)=abb121(6)*abb121(10)**2*CVDU*i_*spak1k4*abb121(5)*abb121(3)*ab&
      &b121(2)*abb121(1)
      abb121(9)=abb121(9)*abb121(10)*c3
      abb121(11)=-spbk3k1*abb121(9)
      abb121(12)=spbk7k2*mB
      abb121(13)=-abb121(12)*abb121(11)
      abb121(14)=c2*abb121(4)**2
      abb121(15)=abb121(14)*abb121(10)*spbk7k2
      abb121(16)=spbk3k1*abb121(15)
      abb121(17)=abb121(16)*mB
      abb121(13)=abb121(13)-abb121(17)
      abb121(13)=abb121(13)*spak2l6
      abb121(17)=-spbk7k2*abb121(11)
      abb121(16)=abb121(17)-abb121(16)
      abb121(17)=abb121(8)*spak2l6
      abb121(18)=abb121(16)*abb121(17)
      abb121(13)=abb121(13)-abb121(18)
      abb121(18)=abb121(13)*spak1l5
      abb121(9)=-spbk4k3*abb121(9)
      abb121(12)=abb121(12)*abb121(9)
      abb121(15)=spbk4k3*abb121(15)
      abb121(19)=abb121(15)*mB
      abb121(12)=abb121(19)+abb121(12)
      abb121(12)=abb121(12)*spak2l6
      abb121(19)=-spbk7k2*abb121(9)
      abb121(15)=abb121(19)-abb121(15)
      abb121(19)=abb121(15)*abb121(17)
      abb121(12)=abb121(12)+abb121(19)
      abb121(19)=abb121(12)*spak4l5
      abb121(18)=abb121(18)-abb121(19)
      abb121(19)=spak2l5*abb121(18)
      abb121(20)=abb121(7)*mB
      abb121(21)=abb121(20)*spbk7k2
      abb121(22)=-abb121(21)*abb121(11)
      abb121(10)=abb121(14)*abb121(10)
      abb121(14)=abb121(20)*abb121(10)
      abb121(23)=abb121(14)*spbk7k2
      abb121(24)=abb121(23)*spbk3k1
      abb121(22)=abb121(22)-abb121(24)
      abb121(24)=abb121(22)*spak1l5
      abb121(21)=-abb121(21)*abb121(9)
      abb121(23)=abb121(23)*spbk4k3
      abb121(21)=abb121(21)-abb121(23)
      abb121(23)=abb121(21)*spak4l5
      abb121(23)=abb121(24)+abb121(23)
      abb121(24)=es71+es12-es712
      abb121(25)=abb121(24)*spak2l5
      abb121(26)=abb121(23)*abb121(25)
      abb121(19)=abb121(26)+abb121(19)
      abb121(19)=8.0_ki*spbl5k2*abb121(19)
      abb121(26)=abb121(23)*abb121(24)
      abb121(18)=abb121(26)+abb121(18)
      abb121(18)=16.0_ki*abb121(18)
      abb121(26)=abb121(7)*mB**2
      abb121(15)=-abb121(26)*abb121(15)
      abb121(27)=abb121(8)*abb121(21)
      abb121(15)=abb121(27)+abb121(15)
      abb121(15)=spak2k4*abb121(15)
      abb121(16)=abb121(26)*abb121(16)
      abb121(26)=-abb121(8)*abb121(22)
      abb121(16)=abb121(26)+abb121(16)
      abb121(16)=spak1k2*abb121(16)
      abb121(15)=abb121(16)+abb121(15)
      abb121(15)=abb121(8)*abb121(15)
      abb121(16)=-abb121(20)*abb121(11)
      abb121(26)=abb121(14)*spbk3k1
      abb121(16)=abb121(16)-abb121(26)
      abb121(26)=abb121(16)*spak1l5
      abb121(20)=-abb121(20)*abb121(9)
      abb121(14)=abb121(14)*spbk4k3
      abb121(14)=abb121(20)-abb121(14)
      abb121(20)=abb121(14)*spak4l5
      abb121(20)=abb121(26)+abb121(20)
      abb121(20)=-abb121(20)*abb121(24)
      abb121(26)=spbk4k3*abb121(10)
      abb121(9)=abb121(9)+abb121(26)
      abb121(26)=abb121(9)*abb121(17)
      abb121(27)=-spak4l5*abb121(26)
      abb121(10)=spbk3k1*abb121(10)
      abb121(10)=abb121(11)+abb121(10)
      abb121(11)=abb121(10)*abb121(17)
      abb121(17)=-spak1l5*abb121(11)
      abb121(17)=abb121(27)+abb121(17)+abb121(20)
      abb121(17)=spbk7l5*abb121(17)
      abb121(20)=-spak4l6*abb121(26)
      abb121(27)=-spak1l6*abb121(11)
      abb121(20)=abb121(27)+abb121(20)
      abb121(20)=spbk7l6*abb121(20)
      abb121(23)=-spbl6l5*spak2l6*abb121(23)
      abb121(15)=abb121(23)+abb121(17)+abb121(20)+abb121(15)
      abb121(15)=8.0_ki*abb121(15)
      abb121(17)=abb121(22)*spak1k2
      abb121(20)=abb121(21)*spak2k4
      abb121(17)=abb121(17)-abb121(20)
      abb121(17)=16.0_ki*abb121(17)
      abb121(20)=spak4l6*abb121(14)
      abb121(23)=spak1l6*abb121(16)
      abb121(20)=abb121(20)+abb121(23)
      abb121(20)=16.0_ki*spbk7l6*abb121(20)
      abb121(23)=spak2k4*abb121(9)
      abb121(27)=-spak1k2*abb121(10)
      abb121(23)=abb121(23)+abb121(27)
      abb121(23)=8.0_ki*abb121(8)*abb121(23)
      abb121(14)=abb121(24)*abb121(14)
      abb121(14)=abb121(14)+abb121(26)
      abb121(14)=8.0_ki*abb121(14)
      abb121(26)=8.0_ki*spak2l6
      abb121(27)=abb121(26)*abb121(21)
      abb121(12)=-spak2l5*abb121(12)
      abb121(28)=abb121(21)*abb121(25)
      abb121(12)=abb121(12)+abb121(28)
      abb121(12)=8.0_ki*abb121(12)
      abb121(28)=abb121(8)-mB
      abb121(9)=spak4l6*abb121(9)*abb121(28)
      abb121(10)=spak1l6*abb121(10)*abb121(28)
      abb121(21)=spak4k7*abb121(21)
      abb121(28)=spak1k7*abb121(22)
      abb121(9)=abb121(28)+abb121(21)+abb121(9)+abb121(10)
      abb121(9)=8.0_ki*abb121(9)
      abb121(10)=abb121(24)*abb121(16)
      abb121(10)=abb121(10)+abb121(11)
      abb121(10)=8.0_ki*abb121(10)
      abb121(11)=abb121(26)*abb121(22)
      abb121(13)=spak2l5*abb121(13)
      abb121(16)=abb121(22)*abb121(25)
      abb121(13)=abb121(13)+abb121(16)
      abb121(13)=8.0_ki*abb121(13)
      R2d121=0.0_ki
      rat2 = rat2 + R2d121
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='121' value='", &
          & R2d121, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd121h0
