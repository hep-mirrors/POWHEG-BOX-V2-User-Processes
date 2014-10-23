module     p0_dbaru_epnebbbarg_abbrevd121h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(45), public :: abb121
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
      abb121(4)=sqrt(mB**2)
      abb121(5)=NC**(-1)
      abb121(6)=sqrt2**(-1)
      abb121(7)=spak2k7**(-1)
      abb121(8)=spak2l5**(-1)
      abb121(9)=spak2l6**(-1)
      abb121(10)=spbl6k2**(-1)
      abb121(11)=2.0_ki*abb121(5)
      abb121(12)=abb121(11)-NC
      abb121(13)=abb121(12)*spbk3k1
      abb121(14)=TR*gW
      abb121(14)=abb121(14)**2*CVDU*i_*spak1k4*abb121(6)*abb121(3)*abb121(2)*ab&
      &b121(1)
      abb121(15)=abb121(14)*spbk7l6
      abb121(16)=abb121(7)*abb121(15)
      abb121(17)=abb121(16)*c3
      abb121(18)=abb121(17)*abb121(4)
      abb121(19)=abb121(18)*abb121(13)
      abb121(20)=c2*abb121(5)**2
      abb121(21)=abb121(16)*abb121(4)
      abb121(22)=abb121(20)*abb121(21)
      abb121(23)=abb121(22)*spbk3k1
      abb121(19)=abb121(19)-abb121(23)
      abb121(23)=spak1k2*spbl5k2
      abb121(24)=abb121(23)*abb121(19)
      abb121(25)=NC*spbk4k3
      abb121(26)=abb121(11)*spbk4k3
      abb121(25)=abb121(25)-abb121(26)
      abb121(27)=-abb121(18)*abb121(25)
      abb121(22)=abb121(22)*spbk4k3
      abb121(22)=-abb121(22)+abb121(27)
      abb121(27)=spak2k4*spbl5k2
      abb121(28)=abb121(27)*abb121(22)
      abb121(24)=abb121(24)-abb121(28)
      abb121(28)=spbl6k2*spak2l6
      abb121(28)=-es12-abb121(28)+es712-es71
      abb121(29)=abb121(24)*abb121(28)
      abb121(30)=spak2k4*abb121(22)
      abb121(31)=-spak1k2*abb121(19)
      abb121(30)=abb121(30)+abb121(31)
      abb121(30)=spak2l5*abb121(30)*spbl5k2**2
      abb121(29)=abb121(30)+abb121(29)
      abb121(29)=8.0_ki*abb121(29)
      abb121(24)=-16.0_ki*abb121(24)
      abb121(30)=abb121(8)*abb121(4)**2
      abb121(31)=abb121(17)*spbk4k3
      abb121(32)=abb121(30)*abb121(31)
      abb121(33)=mB*abb121(8)
      abb121(18)=abb121(18)*abb121(33)
      abb121(34)=abb121(18)*spbk4k3
      abb121(32)=abb121(32)-abb121(34)
      abb121(32)=-abb121(32)*abb121(12)
      abb121(34)=abb121(16)*spbk4k3
      abb121(35)=abb121(34)*abb121(30)
      abb121(21)=abb121(21)*abb121(33)
      abb121(36)=-spbk4k3*abb121(21)
      abb121(35)=abb121(35)+abb121(36)
      abb121(35)=abb121(35)*abb121(20)
      abb121(32)=abb121(35)+abb121(32)
      abb121(32)=spak2k4*abb121(32)
      abb121(17)=abb121(17)*spbk3k1
      abb121(35)=abb121(30)*abb121(17)
      abb121(18)=abb121(18)*spbk3k1
      abb121(18)=abb121(35)-abb121(18)
      abb121(18)=abb121(18)*abb121(12)
      abb121(16)=abb121(16)*spbk3k1
      abb121(30)=-abb121(16)*abb121(30)
      abb121(21)=spbk3k1*abb121(21)
      abb121(21)=abb121(30)+abb121(21)
      abb121(21)=abb121(21)*abb121(20)
      abb121(18)=abb121(21)+abb121(18)
      abb121(18)=spak1k2*abb121(18)
      abb121(18)=abb121(32)+abb121(18)
      abb121(18)=mB*abb121(18)
      abb121(15)=c3*abb121(15)
      abb121(21)=abb121(33)*NC
      abb121(30)=spbk4k3*abb121(15)*abb121(21)
      abb121(15)=abb121(15)*abb121(33)
      abb121(26)=abb121(15)*abb121(26)
      abb121(32)=abb121(20)*abb121(33)
      abb121(35)=abb121(32)*spbk7l6
      abb121(36)=abb121(14)*spbk4k3
      abb121(37)=abb121(35)*abb121(36)
      abb121(26)=-abb121(30)+abb121(26)-abb121(37)
      abb121(30)=spbk7l5*abb121(26)
      abb121(11)=abb121(11)*abb121(33)
      abb121(11)=abb121(11)-abb121(21)
      abb121(21)=-abb121(31)*abb121(11)
      abb121(33)=abb121(32)*abb121(34)
      abb121(21)=abb121(33)+abb121(21)
      abb121(33)=abb121(21)*spak2l6
      abb121(37)=-spbl6l5*abb121(33)
      abb121(30)=abb121(30)+abb121(37)
      abb121(30)=spak4l5*abb121(30)
      abb121(15)=abb121(15)*abb121(13)
      abb121(37)=abb121(14)*spbk3k1
      abb121(35)=abb121(35)*abb121(37)
      abb121(15)=abb121(15)-abb121(35)
      abb121(35)=spbk7l5*abb121(15)
      abb121(11)=-abb121(17)*abb121(11)
      abb121(32)=abb121(32)*abb121(16)
      abb121(11)=abb121(32)+abb121(11)
      abb121(32)=abb121(11)*spak2l6
      abb121(38)=-spbl6l5*abb121(32)
      abb121(35)=abb121(35)+abb121(38)
      abb121(35)=spak1l5*abb121(35)
      abb121(18)=abb121(35)+abb121(30)+abb121(18)
      abb121(18)=16.0_ki*abb121(18)
      abb121(30)=abb121(21)*spak2k4
      abb121(35)=abb121(11)*spak1k2
      abb121(30)=abb121(30)-abb121(35)
      abb121(30)=32.0_ki*abb121(30)
      abb121(35)=abb121(8)*mB**3
      abb121(38)=abb121(12)*abb121(35)
      abb121(31)=-abb121(31)*abb121(38)
      abb121(35)=abb121(35)*abb121(20)
      abb121(34)=abb121(34)*abb121(35)
      abb121(31)=abb121(34)+abb121(31)
      abb121(31)=spak2k4*abb121(31)
      abb121(17)=abb121(17)*abb121(38)
      abb121(16)=-abb121(16)*abb121(35)
      abb121(16)=abb121(16)+abb121(17)
      abb121(16)=spak1k2*abb121(16)
      abb121(16)=abb121(31)+abb121(16)
      abb121(17)=abb121(10)*abb121(9)
      abb121(16)=32.0_ki*abb121(16)*abb121(17)
      abb121(31)=16.0_ki*abb121(26)
      abb121(34)=-16.0_ki*abb121(33)
      abb121(28)=8.0_ki*abb121(28)
      abb121(39)=-abb121(22)*abb121(28)
      abb121(40)=16.0_ki*abb121(22)
      abb121(41)=spbl6l5*spak2l6
      abb121(42)=-abb121(22)*abb121(41)
      abb121(12)=-spbk4k3*abb121(12)*c3
      abb121(43)=abb121(20)*spbk4k3
      abb121(12)=abb121(43)+abb121(12)
      abb121(14)=abb121(14)*abb121(4)
      abb121(44)=spbk7l5*abb121(14)*spbk7l6
      abb121(12)=abb121(12)*abb121(44)
      abb121(12)=abb121(12)+abb121(42)
      abb121(12)=8.0_ki*abb121(12)
      abb121(42)=c3*abb121(7)
      abb121(45)=abb121(14)*abb121(42)
      abb121(25)=-abb121(45)*abb121(25)
      abb121(14)=abb121(14)*abb121(7)
      abb121(43)=abb121(14)*abb121(43)
      abb121(25)=abb121(25)-abb121(43)
      abb121(27)=abb121(25)*abb121(27)
      abb121(43)=abb121(45)*abb121(13)
      abb121(20)=abb121(20)*spbk3k1
      abb121(14)=abb121(14)*abb121(20)
      abb121(14)=abb121(43)-abb121(14)
      abb121(23)=abb121(14)*abb121(23)
      abb121(23)=abb121(27)-abb121(23)
      abb121(27)=8.0_ki*spbl6k2
      abb121(43)=-abb121(23)*abb121(27)
      abb121(38)=-abb121(42)*abb121(38)
      abb121(35)=abb121(35)*abb121(7)
      abb121(35)=abb121(38)+abb121(35)
      abb121(36)=spak2k4*abb121(36)
      abb121(37)=spak1k2*abb121(37)
      abb121(36)=abb121(36)-abb121(37)
      abb121(35)=abb121(35)*abb121(36)
      abb121(36)=abb121(9)*abb121(35)
      abb121(37)=spak4k7*abb121(21)
      abb121(38)=spak1k7*abb121(11)
      abb121(36)=abb121(38)+abb121(36)+abb121(37)
      abb121(36)=16.0_ki*abb121(36)
      abb121(37)=-abb121(25)*abb121(27)
      abb121(38)=spbl6l5*abb121(25)
      abb121(26)=abb121(38)-abb121(26)
      abb121(26)=8.0_ki*abb121(26)
      abb121(38)=8.0_ki*spbk7k2
      abb121(23)=abb121(23)*abb121(38)
      abb121(17)=-spbk7k2*abb121(35)*abb121(17)
      abb121(35)=spak4l6*abb121(21)
      abb121(42)=spak1l6*abb121(11)
      abb121(17)=abb121(42)+abb121(17)+abb121(35)
      abb121(17)=16.0_ki*abb121(17)
      abb121(35)=abb121(25)*abb121(38)
      abb121(25)=-spbk7l5*abb121(25)
      abb121(25)=abb121(33)+abb121(25)
      abb121(25)=8.0_ki*abb121(25)
      abb121(21)=abb121(21)*spak4l5
      abb121(11)=abb121(11)*spak1l5
      abb121(11)=abb121(21)+abb121(11)
      abb121(11)=-abb121(11)*abb121(28)
      abb121(21)=8.0_ki*abb121(22)
      abb121(22)=16.0_ki*abb121(15)
      abb121(33)=-16.0_ki*abb121(32)
      abb121(28)=-abb121(19)*abb121(28)
      abb121(42)=16.0_ki*abb121(19)
      abb121(27)=-abb121(14)*abb121(27)
      abb121(38)=abb121(14)*abb121(38)
      abb121(41)=-abb121(19)*abb121(41)
      abb121(13)=-c3*abb121(13)
      abb121(13)=abb121(20)+abb121(13)
      abb121(13)=abb121(13)*abb121(44)
      abb121(13)=abb121(13)+abb121(41)
      abb121(13)=8.0_ki*abb121(13)
      abb121(20)=spbl6l5*abb121(14)
      abb121(15)=abb121(20)-abb121(15)
      abb121(15)=8.0_ki*abb121(15)
      abb121(14)=-spbk7l5*abb121(14)
      abb121(14)=abb121(32)+abb121(14)
      abb121(14)=8.0_ki*abb121(14)
      abb121(19)=8.0_ki*abb121(19)
      R2d121=0.0_ki
      rat2 = rat2 + R2d121
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='121' value='", &
          & R2d121, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd121h3
