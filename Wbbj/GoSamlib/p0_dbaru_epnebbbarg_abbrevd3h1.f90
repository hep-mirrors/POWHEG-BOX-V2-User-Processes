module     p0_dbaru_epnebbbarg_abbrevd3h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(36), public :: abb3
   complex(ki), public :: R2d3
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
      abb3(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb3(2)=sqrt2**(-1)
      abb3(3)=es234**(-1)
      abb3(4)=es56**(-1)
      abb3(5)=spak2k7**(-1)
      abb3(6)=spak2l5**(-1)
      abb3(7)=spbl6k2**(-1)
      abb3(8)=c4-c2
      abb3(9)=4.0_ki*spak2l6
      abb3(10)=-abb3(9)*spak1k4*abb3(8)
      abb3(11)=-spak1k2*spak4l6*abb3(8)
      abb3(10)=abb3(10)-abb3(11)
      abb3(11)=abb3(8)*spak2k4*spak1l6
      abb3(12)=abb3(10)+abb3(11)
      abb3(13)=c3+c1
      abb3(14)=2.0_ki*spak2l6
      abb3(15)=abb3(14)*spak1k4*abb3(13)
      abb3(16)=-c3+2.0_ki*c1
      abb3(17)=-spak1k2*spak4l6*abb3(16)
      abb3(15)=abb3(15)+abb3(17)
      abb3(17)=2.0_ki*c3
      abb3(18)=abb3(17)-c1
      abb3(19)=-spak1l6*abb3(18)
      abb3(20)=abb3(19)*spak2k4
      abb3(21)=abb3(15)+abb3(20)
      abb3(22)=abb3(21)*NC
      abb3(22)=abb3(22)+abb3(12)
      abb3(22)=abb3(22)*spbk7l5
      abb3(23)=mB**2*abb3(6)*abb3(7)
      abb3(24)=abb3(23)*spbk7k2
      abb3(25)=abb3(24)*c3
      abb3(26)=abb3(24)*c1
      abb3(25)=abb3(25)-abb3(26)
      abb3(27)=NC*spak1k2
      abb3(28)=3.0_ki*abb3(27)
      abb3(29)=abb3(25)*abb3(28)*spak2k4
      abb3(30)=abb3(22)+abb3(29)
      abb3(31)=gW*TR
      abb3(31)=abb3(31)**2*abb3(4)*abb3(1)*abb3(2)*abb3(5)*CVDU
      abb3(32)=abb3(31)*i_*abb3(3)
      abb3(33)=abb3(32)*spbk3k2
      abb3(34)=8.0_ki*abb3(33)
      abb3(30)=abb3(30)*abb3(34)
      abb3(23)=abb3(23)*spak3k4
      abb3(35)=abb3(23)*spbk7k3
      abb3(36)=abb3(35)*abb3(16)
      abb3(17)=-abb3(17)*abb3(24)
      abb3(17)=abb3(26)+abb3(17)
      abb3(17)=spak2k4*abb3(17)
      abb3(17)=abb3(17)+abb3(36)
      abb3(17)=abb3(17)*abb3(27)
      abb3(24)=spak2k4*abb3(24)
      abb3(24)=abb3(24)-abb3(35)
      abb3(24)=spak1k2*abb3(8)*abb3(24)
      abb3(17)=-abb3(22)+abb3(24)+abb3(17)
      abb3(17)=abb3(17)*abb3(34)
      abb3(22)=spak2k4*spbk7k2
      abb3(24)=spak3k4*spbk7k3
      abb3(22)=abb3(22)-abb3(24)
      abb3(24)=abb3(27)*abb3(16)*abb3(22)
      abb3(22)=-spak1k2*abb3(8)*abb3(22)
      abb3(22)=abb3(22)+abb3(24)
      abb3(24)=4.0_ki*abb3(33)
      abb3(22)=abb3(22)*abb3(24)
      abb3(10)=-spbk4k2*abb3(10)
      abb3(15)=-spbk4k2*abb3(15)
      abb3(26)=-es34*abb3(19)
      abb3(15)=abb3(26)+abb3(15)
      abb3(15)=NC*abb3(15)
      abb3(26)=abb3(8)*spak1l6
      abb3(33)=-es34*abb3(26)
      abb3(10)=abb3(15)+abb3(33)+abb3(10)
      abb3(10)=spbk7l5*abb3(10)
      abb3(9)=abb3(9)*spak1k3*abb3(8)
      abb3(15)=-abb3(14)*spak1k3*abb3(13)
      abb3(16)=spak1k2*spak3l6*abb3(16)
      abb3(15)=abb3(15)+abb3(16)
      abb3(15)=NC*abb3(15)
      abb3(16)=abb3(8)*spak1k2
      abb3(33)=-spak3l6*abb3(16)
      abb3(9)=abb3(15)+abb3(9)+abb3(33)
      abb3(15)=spbk3k2*spbk7l5
      abb3(9)=abb3(9)*abb3(15)
      abb3(25)=abb3(25)*abb3(28)
      abb3(28)=-es34*abb3(25)
      abb3(9)=abb3(9)+abb3(28)+abb3(10)
      abb3(9)=abb3(3)*abb3(9)
      abb3(10)=NC*abb3(19)
      abb3(10)=abb3(26)+abb3(10)
      abb3(10)=spbk7l5*abb3(10)
      abb3(9)=abb3(9)+abb3(25)+abb3(10)
      abb3(10)=4.0_ki*abb3(31)
      abb3(9)=i_*abb3(9)*abb3(10)
      abb3(10)=spbk4k3*abb3(12)
      abb3(12)=NC*spbk4k3*abb3(21)
      abb3(10)=abb3(12)+abb3(10)
      abb3(10)=spbk7l5*abb3(10)
      abb3(12)=spbk4k3*abb3(29)
      abb3(21)=c3*abb3(27)
      abb3(21)=-abb3(16)+abb3(21)
      abb3(15)=abb3(15)*spak2l6*abb3(21)
      abb3(10)=3.0_ki*abb3(15)+abb3(12)+abb3(10)
      abb3(10)=4.0_ki*abb3(10)*abb3(32)
      abb3(12)=spak3k4*spbl5k3
      abb3(15)=abb3(12)*abb3(26)
      abb3(12)=abb3(12)*abb3(19)
      abb3(19)=-spbl5k2*abb3(20)
      abb3(12)=abb3(19)+abb3(12)
      abb3(12)=NC*abb3(12)
      abb3(18)=-abb3(27)*abb3(18)
      abb3(16)=abb3(16)+abb3(18)
      abb3(16)=spbk3k2*abb3(23)*abb3(16)
      abb3(11)=-spbl5k2*abb3(11)
      abb3(11)=abb3(16)+abb3(12)+abb3(15)+abb3(11)
      abb3(11)=abb3(11)*abb3(24)
      abb3(8)=abb3(8)*abb3(14)
      abb3(12)=abb3(13)*NC*spak2l6
      abb3(8)=abb3(8)-abb3(12)
      abb3(12)=abb3(24)*spbk7l5
      abb3(13)=abb3(12)*spak3k4*abb3(8)
      abb3(8)=-abb3(12)*spak2k4*abb3(8)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd3h1
