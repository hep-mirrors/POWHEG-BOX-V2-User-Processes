module     p0_dbaru_epnebbbarg_abbrevd2h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(17), public :: abb2
   complex(ki), public :: R2d2
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
      abb2(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb2(2)=1.0_ki/(es34+es567-es12-es234)
      abb2(3)=sqrt2**(-1)
      abb2(4)=es56**(-1)
      abb2(5)=spak2k7**(-1)
      abb2(6)=spak2l5**(-1)
      abb2(7)=spbl6k2**(-1)
      abb2(8)=c4-c2
      abb2(9)=mB**2*abb2(6)*abb2(7)
      abb2(10)=-abb2(9)*abb2(8)
      abb2(11)=spbk7k2*spak1k2
      abb2(12)=-abb2(10)*abb2(11)
      abb2(13)=-c1+2.0_ki*c3
      abb2(9)=-abb2(9)*abb2(13)
      abb2(14)=NC*spbk7k2
      abb2(15)=abb2(14)*spak1k2
      abb2(16)=abb2(9)*abb2(15)
      abb2(12)=abb2(12)+abb2(16)
      abb2(12)=spbk3k1*abb2(12)
      abb2(16)=spbk7k2*spak2k4
      abb2(10)=abb2(10)*abb2(16)
      abb2(14)=abb2(14)*spak2k4
      abb2(9)=-abb2(9)*abb2(14)
      abb2(9)=abb2(10)+abb2(9)
      abb2(9)=spbk4k3*abb2(9)
      abb2(10)=abb2(13)*NC
      abb2(10)=abb2(10)-abb2(8)
      abb2(13)=spbk3k1*spak1l6*abb2(10)
      abb2(17)=spbk4k3*spak4l6*abb2(10)
      abb2(13)=abb2(13)+abb2(17)
      abb2(13)=spbk7l5*abb2(13)
      abb2(9)=abb2(13)+abb2(12)+abb2(9)
      abb2(12)=gW*TR
      abb2(12)=abb2(4)*abb2(12)**2*abb2(3)*abb2(1)*abb2(2)*abb2(5)*CVDU*spak1k4&
      &*i_
      abb2(9)=8.0_ki*abb2(9)*abb2(12)
      abb2(11)=-abb2(8)*abb2(11)
      abb2(13)=-c3+2.0_ki*c1
      abb2(15)=abb2(13)*abb2(15)
      abb2(11)=abb2(11)+abb2(15)
      abb2(11)=spbk3k1*abb2(11)
      abb2(15)=abb2(8)*abb2(16)
      abb2(14)=-abb2(13)*abb2(14)
      abb2(14)=abb2(15)+abb2(14)
      abb2(14)=spbk4k3*abb2(14)
      abb2(11)=abb2(11)+abb2(14)
      abb2(12)=4.0_ki*abb2(12)
      abb2(11)=abb2(11)*abb2(12)
      abb2(14)=-spbk3k1*spak1k2
      abb2(15)=spbk4k3*spak2k4
      abb2(14)=abb2(14)+abb2(15)
      abb2(13)=abb2(13)*NC
      abb2(13)=abb2(13)-abb2(8)
      abb2(15)=abb2(12)*spbk7l5
      abb2(13)=abb2(15)*abb2(13)*abb2(14)
      abb2(14)=c3+c1
      abb2(14)=NC*abb2(14)
      abb2(8)=-abb2(14)+2.0_ki*abb2(8)
      abb2(8)=abb2(15)*spak2l6*abb2(8)
      abb2(14)=spbk4k3*abb2(8)
      abb2(15)=spbk3k1*abb2(10)*spbl5k2*spak1l6
      abb2(10)=spbk4k3*abb2(10)*spak4l6*spbl5k2
      abb2(10)=abb2(15)+abb2(10)
      abb2(10)=abb2(10)*abb2(12)
      abb2(8)=spbk3k1*abb2(8)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd2h1
