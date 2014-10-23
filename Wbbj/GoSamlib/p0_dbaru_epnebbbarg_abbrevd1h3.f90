module     p0_dbaru_epnebbbarg_abbrevd1h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(29), public :: abb1
   complex(ki), public :: R2d1
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
      abb1(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb1(2)=sqrt2**(-1)
      abb1(3)=es56**(-1)
      abb1(4)=spak2l5**(-1)
      abb1(5)=spak2k7**(-1)
      abb1(6)=spak2l6**(-1)
      abb1(7)=c2-c4
      abb1(8)=TR*gW
      abb1(8)=CVDU*abb1(8)**2*mB*i_*spak1k2*abb1(5)*abb1(3)*abb1(2)*abb1(1)
      abb1(9)=-abb1(7)*abb1(8)*spak2k4
      abb1(10)=abb1(8)*NC
      abb1(11)=abb1(10)*c1
      abb1(12)=abb1(11)*spak2k4
      abb1(10)=abb1(10)*c3
      abb1(13)=abb1(10)*spak2k4
      abb1(14)=-abb1(12)+2.0_ki*abb1(13)-abb1(9)
      abb1(15)=spbk7k2*abb1(6)
      abb1(16)=-abb1(15)*abb1(14)
      abb1(17)=abb1(16)*spbl5k3
      abb1(18)=spbk7k2*abb1(4)
      abb1(14)=-abb1(18)*abb1(14)
      abb1(19)=abb1(14)*spbl6k3
      abb1(9)=2.0_ki*abb1(12)-abb1(13)-abb1(9)
      abb1(12)=abb1(9)*spbl6k2
      abb1(13)=spbk7k3*abb1(4)
      abb1(20)=abb1(13)*abb1(12)
      abb1(9)=abb1(9)*spbl5k2
      abb1(21)=spbk7k3*abb1(6)
      abb1(22)=abb1(21)*abb1(9)
      abb1(17)=-abb1(19)-abb1(17)+abb1(20)+abb1(22)
      abb1(19)=8.0_ki*abb1(17)
      abb1(7)=abb1(7)*abb1(8)
      abb1(8)=-abb1(4)*abb1(7)
      abb1(20)=2.0_ki*spbk7k3
      abb1(22)=abb1(20)*abb1(8)
      abb1(23)=abb1(13)*abb1(10)
      abb1(24)=-abb1(11)*abb1(13)
      abb1(22)=-abb1(23)+abb1(24)+abb1(22)
      abb1(22)=spbl6k3*abb1(22)
      abb1(7)=-abb1(6)*abb1(7)
      abb1(20)=abb1(20)*abb1(7)
      abb1(24)=abb1(21)*abb1(10)
      abb1(25)=-abb1(11)*abb1(21)
      abb1(20)=-abb1(24)+abb1(25)+abb1(20)
      abb1(20)=spbl5k3*abb1(20)
      abb1(20)=abb1(22)+abb1(20)
      abb1(20)=8.0_ki*spak3k4*abb1(20)
      abb1(17)=-4.0_ki*abb1(17)
      abb1(22)=abb1(8)*spbk7k3
      abb1(25)=2.0_ki*abb1(11)
      abb1(13)=abb1(25)*abb1(13)
      abb1(13)=abb1(23)+abb1(22)-abb1(13)
      abb1(22)=spbl6k2*abb1(13)
      abb1(23)=abb1(7)*spbk7k3
      abb1(21)=abb1(25)*abb1(21)
      abb1(21)=-abb1(23)+abb1(21)-abb1(24)
      abb1(23)=-spbl5k2*abb1(21)
      abb1(24)=abb1(8)*spbk7k2
      abb1(26)=2.0_ki*abb1(10)
      abb1(27)=abb1(26)-abb1(11)
      abb1(28)=-abb1(18)*abb1(27)
      abb1(28)=abb1(28)+abb1(24)
      abb1(28)=spbl6k3*abb1(28)
      abb1(29)=-spbk7k2*abb1(7)
      abb1(27)=-abb1(15)*abb1(27)
      abb1(27)=abb1(27)-abb1(29)
      abb1(27)=spbl5k3*abb1(27)
      abb1(22)=abb1(23)+abb1(22)+abb1(28)+abb1(27)
      abb1(22)=spak2k3*abb1(22)
      abb1(12)=-abb1(4)*abb1(12)
      abb1(9)=-abb1(6)*abb1(9)
      abb1(9)=abb1(12)+abb1(9)
      abb1(9)=spbk7k4*abb1(9)
      abb1(12)=spbl6k4*abb1(14)
      abb1(14)=spbl5k4*abb1(16)
      abb1(9)=abb1(14)+abb1(12)+abb1(22)+abb1(9)
      abb1(9)=4.0_ki*abb1(9)
      abb1(12)=abb1(11)*abb1(4)
      abb1(14)=-abb1(4)*abb1(10)
      abb1(14)=abb1(14)+abb1(12)
      abb1(14)=spbk7l6*abb1(14)
      abb1(11)=abb1(11)*abb1(6)
      abb1(16)=-abb1(6)*abb1(10)
      abb1(16)=abb1(16)+abb1(11)
      abb1(16)=spbk7l5*abb1(16)
      abb1(14)=abb1(14)+abb1(16)
      abb1(14)=24.0_ki*abb1(14)
      abb1(16)=abb1(26)*abb1(4)
      abb1(8)=-abb1(12)+abb1(16)-abb1(8)
      abb1(12)=-spbl6k3*abb1(8)
      abb1(16)=abb1(26)*abb1(6)
      abb1(7)=-abb1(11)+abb1(16)-abb1(7)
      abb1(11)=-spbl5k3*abb1(7)
      abb1(11)=abb1(12)+abb1(11)
      abb1(12)=spbk3k2*spak3k4
      abb1(12)=4.0_ki*abb1(12)
      abb1(11)=abb1(11)*abb1(12)
      abb1(8)=-spbl6k2*abb1(8)
      abb1(7)=-spbl5k2*abb1(7)
      abb1(7)=abb1(8)+abb1(7)
      abb1(7)=4.0_ki*abb1(7)
      abb1(8)=abb1(13)*abb1(12)
      abb1(10)=abb1(25)-abb1(10)
      abb1(13)=-abb1(18)*abb1(10)
      abb1(13)=abb1(13)+abb1(24)
      abb1(13)=4.0_ki*abb1(13)
      abb1(12)=-abb1(21)*abb1(12)
      abb1(10)=-abb1(15)*abb1(10)
      abb1(10)=abb1(10)-abb1(29)
      abb1(10)=4.0_ki*abb1(10)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd1h3
