module     p0_dbaru_epnebbbarg_abbrevd3h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(37), public :: abb3
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
      abb3(5)=spbl5k2**(-1)
      abb3(6)=spak2k7**(-1)
      abb3(7)=spbl6k2**(-1)
      abb3(8)=c1*NC
      abb3(9)=c3*NC
      abb3(10)=abb3(8)+abb3(9)
      abb3(11)=TR*gW
      abb3(11)=abb3(11)**2*CVDU*i_*mB*abb3(6)*abb3(4)*abb3(2)*abb3(1)
      abb3(12)=abb3(11)*spbk7k2*abb3(3)
      abb3(13)=abb3(12)*spbk3k2
      abb3(14)=abb3(13)*abb3(7)
      abb3(15)=abb3(14)*abb3(10)
      abb3(16)=c2-c4
      abb3(17)=2.0_ki*abb3(14)
      abb3(17)=abb3(17)*abb3(16)
      abb3(15)=abb3(17)+abb3(15)
      abb3(17)=spak2l5*spak1k4
      abb3(18)=abb3(15)*abb3(17)
      abb3(13)=abb3(13)*abb3(5)
      abb3(19)=abb3(13)*abb3(10)
      abb3(20)=2.0_ki*abb3(13)
      abb3(20)=abb3(20)*abb3(16)
      abb3(19)=abb3(20)+abb3(19)
      abb3(20)=spak2l6*spak1k4
      abb3(21)=abb3(19)*abb3(20)
      abb3(18)=abb3(18)+abb3(21)
      abb3(21)=abb3(14)*spak1k2
      abb3(22)=-abb3(21)*abb3(16)
      abb3(23)=2.0_ki*abb3(8)
      abb3(24)=abb3(23)*abb3(21)
      abb3(21)=abb3(21)*abb3(9)
      abb3(24)=abb3(22)-abb3(24)+abb3(21)
      abb3(25)=-abb3(24)*spak4l5
      abb3(26)=abb3(13)*spak1k2
      abb3(27)=-abb3(26)*abb3(16)
      abb3(23)=abb3(23)*abb3(26)
      abb3(26)=abb3(26)*abb3(9)
      abb3(23)=abb3(27)-abb3(23)+abb3(26)
      abb3(28)=-abb3(23)*spak4l6
      abb3(29)=abb3(16)-abb3(8)+2.0_ki*abb3(9)
      abb3(30)=abb3(29)*spak1l5
      abb3(14)=abb3(14)*spak2k4
      abb3(31)=abb3(14)*abb3(30)
      abb3(32)=abb3(29)*spak1l6
      abb3(13)=abb3(13)*spak2k4
      abb3(33)=abb3(13)*abb3(32)
      abb3(18)=-2.0_ki*abb3(18)+abb3(25)+abb3(28)+abb3(31)+abb3(33)
      abb3(18)=8.0_ki*abb3(18)
      abb3(25)=spak2k4*abb3(23)
      abb3(9)=-abb3(16)+abb3(9)
      abb3(9)=spak1k2*abb3(9)
      abb3(8)=abb3(8)*spak1k2
      abb3(28)=-abb3(9)+2.0_ki*abb3(8)
      abb3(28)=spbk7k3*spak3k4*abb3(28)*spbk3k2*abb3(3)
      abb3(31)=abb3(11)*abb3(5)
      abb3(33)=abb3(31)*abb3(28)
      abb3(25)=abb3(33)+abb3(25)
      abb3(25)=4.0_ki*abb3(25)
      abb3(33)=spak2k4*abb3(24)
      abb3(11)=abb3(11)*abb3(7)
      abb3(28)=abb3(11)*abb3(28)
      abb3(28)=abb3(28)+abb3(33)
      abb3(28)=4.0_ki*abb3(28)
      abb3(33)=abb3(12)*abb3(7)
      abb3(34)=2.0_ki*abb3(33)
      abb3(35)=abb3(34)*abb3(16)
      abb3(36)=abb3(10)*abb3(33)
      abb3(35)=abb3(36)+abb3(35)
      abb3(17)=abb3(35)*abb3(17)
      abb3(12)=abb3(12)*abb3(5)
      abb3(35)=abb3(10)*abb3(12)
      abb3(36)=2.0_ki*abb3(12)
      abb3(37)=abb3(16)*abb3(36)
      abb3(35)=abb3(35)+abb3(37)
      abb3(20)=abb3(35)*abb3(20)
      abb3(17)=abb3(17)+abb3(20)
      abb3(20)=abb3(36)*abb3(8)
      abb3(35)=abb3(9)*abb3(12)
      abb3(20)=abb3(20)-abb3(35)
      abb3(20)=abb3(20)*spak4l6
      abb3(9)=abb3(9)*abb3(33)
      abb3(8)=abb3(34)*abb3(8)
      abb3(8)=abb3(9)-abb3(8)
      abb3(8)=abb3(8)*spak4l5
      abb3(8)=-abb3(20)+abb3(8)+2.0_ki*abb3(17)
      abb3(9)=spbk4k2*abb3(8)
      abb3(15)=abb3(15)*spak2l5
      abb3(17)=abb3(19)*spak2l6
      abb3(15)=abb3(15)+abb3(17)
      abb3(17)=spak1k3*abb3(15)
      abb3(19)=-abb3(12)*abb3(32)
      abb3(20)=-abb3(33)*abb3(30)
      abb3(19)=abb3(19)+abb3(20)
      abb3(19)=es34*abb3(19)
      abb3(20)=spak3l6*abb3(23)
      abb3(23)=spak3l5*abb3(24)
      abb3(24)=abb3(11)*spak1l5
      abb3(34)=abb3(31)*spak1l6
      abb3(24)=abb3(34)+abb3(24)
      abb3(24)=abb3(24)*abb3(29)*spbk7k2
      abb3(9)=abb3(23)+abb3(20)+abb3(19)+2.0_ki*abb3(17)+abb3(9)+abb3(24)
      abb3(9)=4.0_ki*abb3(9)
      abb3(17)=abb3(33)*spak1l5
      abb3(12)=abb3(12)*spak1l6
      abb3(12)=abb3(17)+abb3(12)
      abb3(12)=abb3(12)*abb3(29)*spak2k4
      abb3(8)=-abb3(8)+abb3(12)
      abb3(8)=spbk4k3*abb3(8)
      abb3(12)=-abb3(26)+abb3(27)
      abb3(12)=spak2l6*abb3(12)
      abb3(17)=-abb3(21)+abb3(22)
      abb3(17)=spak2l5*abb3(17)
      abb3(12)=abb3(12)+abb3(17)
      abb3(8)=3.0_ki*abb3(12)+abb3(8)
      abb3(8)=4.0_ki*abb3(8)
      abb3(12)=-abb3(31)*abb3(32)
      abb3(11)=-abb3(11)*abb3(30)
      abb3(11)=abb3(12)+abb3(11)
      abb3(12)=4.0_ki*spak3k4
      abb3(11)=abb3(12)*abb3(11)*abb3(3)*spbk3k2**2
      abb3(12)=abb3(15)*abb3(12)
      abb3(13)=spak2l6*abb3(13)
      abb3(14)=spak2l5*abb3(14)
      abb3(13)=abb3(13)+abb3(14)
      abb3(10)=-abb3(10)-2.0_ki*abb3(16)
      abb3(10)=4.0_ki*abb3(10)*abb3(13)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd3h0
