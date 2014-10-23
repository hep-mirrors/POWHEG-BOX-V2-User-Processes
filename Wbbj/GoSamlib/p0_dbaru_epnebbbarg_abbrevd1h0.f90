module     p0_dbaru_epnebbbarg_abbrevd1h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(25), public :: abb1
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
      abb1(4)=spbl5k2**(-1)
      abb1(5)=spak2k7**(-1)
      abb1(6)=spbl6k2**(-1)
      abb1(7)=c1+c3
      abb1(8)=TR*gW
      abb1(8)=abb1(8)**2*CVDU*i_*mB*abb1(5)*abb1(3)*abb1(2)*abb1(1)
      abb1(9)=abb1(8)*spbk3k2*spbk7k2
      abb1(10)=abb1(9)*NC
      abb1(11)=abb1(7)*abb1(10)*spak1k4
      abb1(12)=abb1(4)*abb1(11)
      abb1(13)=c2-c4
      abb1(14)=2.0_ki*spak1k4
      abb1(14)=-abb1(14)*abb1(13)
      abb1(15)=abb1(9)*abb1(4)
      abb1(16)=-abb1(15)*abb1(14)
      abb1(12)=abb1(16)+abb1(12)
      abb1(12)=abb1(12)*spak2l6
      abb1(11)=-abb1(6)*abb1(11)
      abb1(9)=abb1(9)*abb1(6)
      abb1(16)=abb1(9)*abb1(14)
      abb1(11)=abb1(16)+abb1(11)
      abb1(11)=abb1(11)*spak2l5
      abb1(16)=spak1l6*abb1(4)
      abb1(17)=spak1l5*abb1(6)
      abb1(16)=abb1(16)+abb1(17)
      abb1(17)=-c1+2.0_ki*c3
      abb1(18)=-abb1(17)*abb1(10)*abb1(16)
      abb1(19)=abb1(9)*spak1l5
      abb1(20)=abb1(15)*spak1l6
      abb1(19)=abb1(19)+abb1(20)
      abb1(19)=-abb1(19)*abb1(13)
      abb1(18)=abb1(19)+abb1(18)
      abb1(18)=abb1(18)*spak2k4
      abb1(11)=abb1(18)+abb1(12)-abb1(11)
      abb1(12)=8.0_ki*abb1(11)
      abb1(16)=abb1(16)*abb1(17)
      abb1(17)=abb1(8)*NC
      abb1(18)=abb1(16)*abb1(17)
      abb1(19)=abb1(8)*abb1(6)
      abb1(20)=abb1(19)*spak1l5
      abb1(8)=abb1(8)*abb1(4)
      abb1(21)=abb1(8)*spak1l6
      abb1(20)=abb1(20)+abb1(21)
      abb1(21)=abb1(13)*abb1(20)
      abb1(18)=abb1(18)+abb1(21)
      abb1(21)=-8.0_ki*spbk7k3*spak3k4*spbk3k2*abb1(18)
      abb1(11)=4.0_ki*abb1(11)
      abb1(17)=abb1(17)*spbk7k2
      abb1(22)=abb1(17)*abb1(7)
      abb1(23)=spak1k4*abb1(22)
      abb1(24)=abb1(4)*abb1(23)
      abb1(8)=abb1(8)*spbk7k2
      abb1(25)=-abb1(8)*abb1(14)
      abb1(24)=abb1(25)+abb1(24)
      abb1(24)=spak2l6*abb1(24)
      abb1(23)=abb1(6)*abb1(23)
      abb1(19)=abb1(19)*spbk7k2
      abb1(14)=-abb1(19)*abb1(14)
      abb1(14)=abb1(14)+abb1(23)
      abb1(14)=spak2l5*abb1(14)
      abb1(14)=abb1(24)+abb1(14)
      abb1(14)=spbk4k2*abb1(14)
      abb1(23)=-2.0_ki*abb1(13)
      abb1(9)=abb1(23)*abb1(9)
      abb1(7)=abb1(10)*abb1(7)
      abb1(10)=abb1(7)*abb1(6)
      abb1(9)=abb1(9)-abb1(10)
      abb1(9)=abb1(9)*spak2l5
      abb1(10)=abb1(23)*abb1(15)
      abb1(7)=abb1(7)*abb1(4)
      abb1(7)=abb1(10)-abb1(7)
      abb1(7)=abb1(7)*spak2l6
      abb1(7)=abb1(9)+abb1(7)
      abb1(9)=-spak1k3*abb1(7)
      abb1(10)=-abb1(13)*spbk7k2*abb1(20)
      abb1(13)=-abb1(17)*abb1(16)
      abb1(10)=abb1(13)+abb1(10)
      abb1(13)=-es234+es34
      abb1(13)=abb1(10)*abb1(13)
      abb1(9)=abb1(14)+abb1(9)+abb1(13)
      abb1(9)=4.0_ki*abb1(9)
      abb1(10)=-8.0_ki*abb1(10)
      abb1(13)=4.0_ki*spak3k4
      abb1(14)=-abb1(13)*abb1(18)*spbk3k2**2
      abb1(7)=-abb1(7)*abb1(13)
      abb1(13)=-abb1(4)*abb1(22)
      abb1(8)=abb1(8)*abb1(23)
      abb1(8)=abb1(8)+abb1(13)
      abb1(8)=spak2l6*abb1(8)
      abb1(13)=-abb1(6)*abb1(22)
      abb1(15)=abb1(19)*abb1(23)
      abb1(13)=abb1(15)+abb1(13)
      abb1(13)=spak2l5*abb1(13)
      abb1(8)=abb1(8)+abb1(13)
      abb1(8)=4.0_ki*abb1(8)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd1h0
