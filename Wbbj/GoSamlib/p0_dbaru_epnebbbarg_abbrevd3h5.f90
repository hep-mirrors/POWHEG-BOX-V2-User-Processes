module     p0_dbaru_epnebbbarg_abbrevd3h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(24), public :: abb3
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
      abb3(5)=spbk7k2**(-1)
      abb3(6)=spak2l5**(-1)
      abb3(7)=spbl6k2**(-1)
      abb3(8)=c2-c4
      abb3(9)=TR*gW
      abb3(9)=abb3(9)**2*abb3(5)*i_*CVDU*abb3(4)*abb3(3)*abb3(2)*abb3(1)
      abb3(10)=abb3(9)*spbk3k2*spbl5k2
      abb3(11)=abb3(8)*abb3(10)
      abb3(12)=abb3(10)*NC
      abb3(13)=abb3(12)*c3
      abb3(12)=abb3(12)*c1
      abb3(14)=abb3(13)-abb3(11)-2.0_ki*abb3(12)
      abb3(14)=spak1k7*abb3(14)
      abb3(15)=abb3(14)*spak4l6
      abb3(10)=abb3(10)*spal6k7
      abb3(10)=2.0_ki*abb3(10)
      abb3(10)=-abb3(10)*abb3(8)
      abb3(16)=abb3(12)+abb3(13)
      abb3(16)=spal6k7*abb3(16)
      abb3(10)=abb3(10)-abb3(16)
      abb3(16)=2.0_ki*spak1k4
      abb3(17)=abb3(16)*abb3(10)
      abb3(11)=abb3(12)-abb3(11)-2.0_ki*abb3(13)
      abb3(11)=spak1l6*abb3(11)
      abb3(12)=abb3(11)*spak4k7
      abb3(12)=abb3(15)+abb3(17)-abb3(12)
      abb3(13)=8.0_ki*abb3(12)
      abb3(15)=spbk3k2**2
      abb3(17)=abb3(8)*abb3(15)
      abb3(18)=abb3(9)*spak1k7
      abb3(19)=abb3(18)*abb3(17)
      abb3(15)=NC*abb3(15)*abb3(9)
      abb3(20)=abb3(15)*c3
      abb3(21)=abb3(20)*spak1k7
      abb3(22)=2.0_ki*abb3(15)
      abb3(23)=c1*spak1k7
      abb3(22)=abb3(22)*abb3(23)
      abb3(19)=abb3(22)+abb3(19)-abb3(21)
      abb3(21)=abb3(6)*abb3(7)*mB**2
      abb3(22)=-spak3k4*abb3(19)*abb3(21)
      abb3(12)=abb3(22)+abb3(12)
      abb3(12)=8.0_ki*abb3(12)
      abb3(17)=-abb3(9)*abb3(17)
      abb3(15)=c1*abb3(15)
      abb3(15)=abb3(15)-2.0_ki*abb3(20)+abb3(17)
      abb3(15)=spak1k2*abb3(15)*abb3(21)
      abb3(17)=c3*spak1l6
      abb3(20)=2.0_ki*abb3(9)
      abb3(21)=NC*spbk3k2
      abb3(22)=-abb3(21)*abb3(20)*abb3(17)
      abb3(24)=-spbk3k2*abb3(8)
      abb3(21)=c1*abb3(21)
      abb3(21)=abb3(21)+abb3(24)
      abb3(24)=abb3(9)*spak1l6
      abb3(21)=abb3(24)*abb3(21)
      abb3(21)=abb3(22)+abb3(21)
      abb3(21)=spbl5k3*abb3(21)
      abb3(15)=abb3(21)+abb3(15)
      abb3(15)=spak3k4*abb3(15)
      abb3(21)=-spak2k4*abb3(11)
      abb3(15)=abb3(21)+abb3(15)
      abb3(15)=4.0_ki*abb3(15)
      abb3(21)=4.0_ki*spak3k4
      abb3(19)=abb3(19)*abb3(21)
      abb3(8)=-spbl5k2*abb3(8)
      abb3(21)=NC*spbl5k2
      abb3(22)=abb3(21)*c3
      abb3(22)=abb3(22)+abb3(8)
      abb3(18)=abb3(22)*abb3(18)
      abb3(22)=abb3(20)*abb3(21)
      abb3(23)=abb3(22)*abb3(23)
      abb3(18)=abb3(18)-abb3(23)
      abb3(18)=abb3(18)*spak4l6
      abb3(23)=c1+c3
      abb3(9)=abb3(23)*abb3(21)*abb3(9)
      abb3(20)=-abb3(8)*abb3(20)
      abb3(9)=abb3(9)+abb3(20)
      abb3(9)=abb3(16)*spal6k7*abb3(9)
      abb3(16)=abb3(21)*c1
      abb3(8)=-abb3(8)-abb3(16)
      abb3(8)=abb3(24)*abb3(8)
      abb3(16)=abb3(22)*abb3(17)
      abb3(8)=abb3(16)+abb3(8)
      abb3(8)=abb3(8)*spak4k7
      abb3(8)=abb3(8)+abb3(18)-abb3(9)
      abb3(9)=spbk4k2*abb3(8)
      abb3(16)=-spak3k7*abb3(11)
      abb3(17)=spak3l6*abb3(14)
      abb3(18)=2.0_ki*abb3(10)
      abb3(20)=spak1k3*abb3(18)
      abb3(9)=abb3(20)+abb3(17)+abb3(9)+abb3(16)
      abb3(9)=4.0_ki*abb3(9)
      abb3(8)=-spbk4k3*abb3(8)
      abb3(16)=-spak1k2*abb3(18)
      abb3(11)=spak2k7*abb3(11)
      abb3(14)=-spak2l6*abb3(14)
      abb3(8)=abb3(14)+abb3(11)+abb3(8)+abb3(16)
      abb3(8)=4.0_ki*abb3(8)
      abb3(10)=4.0_ki*abb3(10)
      abb3(11)=spak3k4*abb3(10)
      abb3(10)=-spak2k4*abb3(10)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd3h5
