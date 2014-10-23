module     p0_dbaru_epnebbbarg_abbrevd1h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(23), public :: abb1
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
      abb1(4)=spbk7k2**(-1)
      abb1(5)=c3+c1
      abb1(6)=spal6k7*spak1k4
      abb1(7)=abb1(5)*abb1(6)*NC
      abb1(8)=2.0_ki*c1
      abb1(9)=abb1(8)-c3
      abb1(10)=abb1(9)*NC*spak4l6
      abb1(11)=c4-c2
      abb1(12)=abb1(11)*spak4l6
      abb1(12)=abb1(12)-abb1(10)
      abb1(12)=abb1(12)*spak1k7
      abb1(13)=2.0_ki*abb1(11)
      abb1(14)=abb1(13)*abb1(6)
      abb1(12)=abb1(12)+abb1(14)-abb1(7)
      abb1(14)=gW*TR
      abb1(14)=abb1(3)*abb1(1)*abb1(2)*abb1(4)*CVDU*i_*abb1(14)**2
      abb1(15)=abb1(14)*spbk3k2
      abb1(16)=spbl5k2*abb1(15)
      abb1(16)=8.0_ki*abb1(16)
      abb1(16)=abb1(12)*abb1(16)
      abb1(17)=4.0_ki*spbl5k2
      abb1(17)=abb1(17)*abb1(14)
      abb1(18)=abb1(17)*spbk3k2
      abb1(12)=abb1(12)*abb1(18)
      abb1(19)=c3*spak3k4
      abb1(8)=spak3k4*abb1(8)
      abb1(8)=abb1(8)-abb1(19)
      abb1(8)=NC*abb1(8)
      abb1(20)=-spak3k4*abb1(11)
      abb1(8)=abb1(8)+abb1(20)
      abb1(8)=4.0_ki*abb1(8)*spbk3k2**2*abb1(14)*spak1k7
      abb1(9)=abb1(9)*NC
      abb1(9)=abb1(9)-abb1(11)
      abb1(14)=4.0_ki*spak1k7
      abb1(14)=abb1(15)*abb1(14)*abb1(9)*spak3k4*spbl5k3
      abb1(15)=NC*spal6k7
      abb1(5)=abb1(5)*abb1(15)
      abb1(21)=2.0_ki*spal6k7
      abb1(22)=abb1(21)*abb1(11)
      abb1(22)=abb1(22)-abb1(5)
      abb1(22)=spak1k3*abb1(22)
      abb1(23)=-spak1k7*spak3l6*abb1(9)
      abb1(22)=abb1(23)+abb1(22)
      abb1(22)=spbk3k2*abb1(22)
      abb1(11)=-spbk4k2*abb1(11)
      abb1(6)=2.0_ki*abb1(6)
      abb1(6)=-abb1(11)*abb1(6)
      abb1(7)=-spbk4k2*abb1(7)
      abb1(11)=-spak4l6*abb1(11)
      abb1(10)=-spbk4k2*abb1(10)
      abb1(10)=abb1(11)+abb1(10)
      abb1(10)=spak1k7*abb1(10)
      abb1(6)=abb1(22)+abb1(10)+abb1(6)+abb1(7)
      abb1(6)=abb1(6)*abb1(17)
      abb1(7)=-spak1k7*abb1(9)*abb1(17)
      abb1(9)=-abb1(20)*abb1(21)
      abb1(10)=-c1*spak3k4
      abb1(10)=abb1(10)-abb1(19)
      abb1(10)=abb1(10)*abb1(15)
      abb1(9)=abb1(9)+abb1(10)
      abb1(9)=abb1(9)*abb1(18)
      abb1(10)=-spal6k7*abb1(13)
      abb1(5)=abb1(10)+abb1(5)
      abb1(5)=abb1(5)*abb1(17)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd1h5
