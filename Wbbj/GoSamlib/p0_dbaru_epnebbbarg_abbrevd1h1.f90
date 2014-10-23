module     p0_dbaru_epnebbbarg_abbrevd1h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(36), public :: abb1
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
      abb1(4)=spak2k7**(-1)
      abb1(5)=spak2l5**(-1)
      abb1(6)=spbl6k2**(-1)
      abb1(7)=c2-c4
      abb1(8)=TR*gW
      abb1(8)=abb1(4)*i_*CVDU*abb1(3)*abb1(2)*abb1(1)*abb1(8)**2
      abb1(9)=abb1(8)*spak1k2
      abb1(10)=abb1(7)*abb1(9)
      abb1(11)=-spbk7k2*abb1(10)
      abb1(12)=2.0_ki*spbk7k2
      abb1(13)=abb1(9)*NC
      abb1(14)=abb1(13)*c3
      abb1(15)=abb1(12)*abb1(14)
      abb1(13)=abb1(13)*c1
      abb1(16)=abb1(13)*spbk7k2
      abb1(15)=abb1(11)+abb1(16)-abb1(15)
      abb1(16)=mB**2*abb1(6)*abb1(5)
      abb1(15)=abb1(15)*abb1(16)
      abb1(17)=spbk3k2*abb1(15)
      abb1(18)=c1-2.0_ki*c3
      abb1(19)=abb1(8)*NC
      abb1(18)=abb1(18)*abb1(19)*spak1l6
      abb1(20)=-abb1(8)*abb1(7)*spak1l6
      abb1(20)=abb1(20)+abb1(18)
      abb1(20)=spbk7k2*abb1(20)
      abb1(21)=abb1(20)*spbl5k3
      abb1(17)=abb1(17)+abb1(21)
      abb1(17)=abb1(17)*spak2k4
      abb1(22)=c1+c3
      abb1(19)=abb1(22)*abb1(19)*spbk7l5
      abb1(22)=spbk3k2*abb1(19)
      abb1(23)=abb1(7)*abb1(8)*spbk3k2
      abb1(24)=2.0_ki*spbk7l5
      abb1(25)=-abb1(24)*abb1(23)
      abb1(22)=abb1(22)-abb1(25)
      abb1(25)=spak1k4*spak2l6
      abb1(26)=abb1(25)*abb1(22)
      abb1(27)=abb1(9)*c4
      abb1(9)=abb1(9)*c2
      abb1(28)=-abb1(9)+abb1(14)+abb1(27)
      abb1(29)=2.0_ki*abb1(13)
      abb1(30)=-abb1(29)+abb1(28)
      abb1(31)=abb1(30)*spbl5k2
      abb1(32)=abb1(31)*spak4l6
      abb1(33)=abb1(32)*spbk7k3
      abb1(17)=abb1(17)-abb1(26)-abb1(33)
      abb1(26)=8.0_ki*abb1(17)
      abb1(10)=spbk3k2*abb1(10)
      abb1(33)=abb1(14)*spbk3k2
      abb1(34)=spbk3k2*abb1(13)
      abb1(34)=abb1(34)-2.0_ki*abb1(33)-abb1(10)
      abb1(34)=abb1(34)*abb1(16)
      abb1(35)=-abb1(7)*abb1(8)*spak1l6
      abb1(35)=abb1(18)+abb1(35)
      abb1(36)=spbl5k3*abb1(35)
      abb1(34)=abb1(34)+abb1(36)
      abb1(34)=8.0_ki*spak3k4*spbk7k3*abb1(34)
      abb1(17)=4.0_ki*abb1(17)
      abb1(29)=-spbk3k2*abb1(29)
      abb1(10)=abb1(29)+abb1(33)-abb1(10)
      abb1(29)=4.0_ki*spak3k4
      abb1(33)=abb1(29)*spbk7k3
      abb1(10)=abb1(10)*abb1(33)
      abb1(30)=spbl5k3*abb1(30)*abb1(33)
      abb1(33)=-es234+es34
      abb1(33)=abb1(33)*abb1(15)
      abb1(32)=-spbk7k4*abb1(32)
      abb1(20)=spbl5k4*spak2k4*abb1(20)
      abb1(31)=-spak3l6*abb1(31)*spbk7k3
      abb1(8)=2.0_ki*abb1(8)
      abb1(7)=-abb1(7)*abb1(8)*spbk7l5
      abb1(7)=abb1(7)-abb1(19)
      abb1(8)=spbk4k2*abb1(7)*abb1(25)
      abb1(19)=spak2k3*abb1(21)
      abb1(21)=abb1(22)*spak2l6
      abb1(22)=-spak1k3*abb1(21)
      abb1(8)=abb1(22)+abb1(19)+abb1(8)+abb1(31)+abb1(32)+abb1(20)+abb1(33)
      abb1(8)=4.0_ki*abb1(8)
      abb1(19)=spbk7l5*abb1(35)
      abb1(15)=-abb1(15)+abb1(19)
      abb1(15)=8.0_ki*abb1(15)
      abb1(12)=-abb1(13)*abb1(12)
      abb1(19)=spbk7k2*abb1(14)
      abb1(11)=abb1(12)+abb1(19)+abb1(11)
      abb1(11)=4.0_ki*abb1(11)
      abb1(12)=-spbk7l5*abb1(28)
      abb1(19)=abb1(13)*abb1(24)
      abb1(12)=abb1(19)+abb1(12)
      abb1(12)=4.0_ki*abb1(12)
      abb1(9)=abb1(13)-2.0_ki*abb1(14)+abb1(27)-abb1(9)
      abb1(9)=abb1(16)*abb1(9)*spbk3k2**2
      abb1(13)=spbk3k2*abb1(18)
      abb1(14)=-spak1l6*abb1(23)
      abb1(13)=abb1(14)+abb1(13)
      abb1(13)=spbl5k3*abb1(13)
      abb1(9)=abb1(9)+abb1(13)
      abb1(9)=abb1(9)*abb1(29)
      abb1(13)=4.0_ki*spbl5k2*abb1(35)
      abb1(14)=-abb1(29)*abb1(21)
      abb1(7)=-4.0_ki*spak2l6*abb1(7)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd1h1
