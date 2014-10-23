module     p0_dbaru_epnebbbarg_abbrevd6h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(21), public :: abb6
   complex(ki), public :: R2d6
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
      abb6(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb6(2)=sqrt2**(-1)
      abb6(3)=es234**(-1)
      abb6(4)=es567**(-1)
      abb6(5)=es56**(-1)
      abb6(6)=spbk7k2**(-1)
      abb6(7)=spak2l5**(-1)
      abb6(8)=spbl5k2**(-1)
      abb6(9)=spak2l6**(-1)
      abb6(10)=1.0_ki/(es34+es567-es12-es234)
      abb6(11)=c3-c1
      abb6(12)=spal5k7*spak3k4
      abb6(13)=abb6(11)*abb6(12)
      abb6(14)=spbl6k3*spak1l6
      abb6(15)=spak1l5*spbl5k3
      abb6(14)=abb6(14)+abb6(15)
      abb6(14)=abb6(14)*abb6(13)
      abb6(15)=-spal6k7*abb6(11)
      abb6(16)=abb6(15)*spak3k4
      abb6(17)=spak1l5*spbl6k3
      abb6(18)=abb6(17)*abb6(16)
      abb6(13)=-abb6(7)*abb6(13)
      abb6(16)=abb6(9)*abb6(16)
      abb6(13)=abb6(16)+abb6(13)
      abb6(16)=spak1k2*mB**2
      abb6(13)=spbk3k2*abb6(13)*abb6(8)*abb6(16)
      abb6(13)=abb6(13)+abb6(18)+abb6(14)
      abb6(14)=abb6(3)*spbk3k2
      abb6(13)=abb6(13)*abb6(14)
      abb6(18)=spbk3k1*spak1l5
      abb6(19)=spak4l5*spbk4k3
      abb6(18)=abb6(18)+abb6(19)
      abb6(19)=abb6(10)*spak1k4
      abb6(18)=abb6(15)*abb6(19)*abb6(18)
      abb6(20)=spbk4k3*spak4l6
      abb6(21)=spak1l6*spbk3k1
      abb6(20)=abb6(20)+abb6(21)
      abb6(21)=abb6(11)*spal5k7
      abb6(19)=abb6(19)*abb6(20)*abb6(21)
      abb6(15)=-spak1l5*abb6(15)
      abb6(20)=-spak1l6*abb6(21)
      abb6(15)=abb6(20)+abb6(15)
      abb6(15)=abb6(14)*spak2k4*abb6(15)
      abb6(15)=abb6(15)+abb6(19)+abb6(18)
      abb6(15)=spbl6k2*abb6(15)
      abb6(13)=abb6(13)+abb6(15)
      abb6(13)=spbl6k2*abb6(13)
      abb6(15)=-abb6(17)*spbl5k2
      abb6(16)=-spbk3k2*abb6(9)*abb6(16)
      abb6(15)=abb6(15)+2.0_ki*abb6(16)
      abb6(11)=abb6(14)*abb6(12)*abb6(11)*abb6(15)
      abb6(11)=abb6(11)+abb6(13)
      abb6(12)=gW*TR
      abb6(11)=9.0_ki*abb6(1)*abb6(2)*abb6(4)*abb6(5)*abb6(6)*CVDU*NC*i_*abb6(1&
      &1)*abb6(12)**2
      R2d6=0.0_ki
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd6h6
