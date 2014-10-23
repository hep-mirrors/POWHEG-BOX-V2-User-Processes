module     p0_dbaru_epnebbbarg_abbrevd4h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(14), public :: abb4
   complex(ki), public :: R2d4
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
      abb4(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb4(2)=sqrt2**(-1)
      abb4(3)=es234**(-1)
      abb4(4)=es567**(-1)
      abb4(5)=es56**(-1)
      abb4(6)=spbl5k2**(-1)
      abb4(7)=spak2k7**(-1)
      abb4(8)=spbl6k2**(-1)
      abb4(9)=1.0_ki/(es34+es567-es12-es234)
      abb4(10)=-abb4(8)*spak1l5
      abb4(11)=-abb4(6)*spak1l6
      abb4(10)=abb4(10)+abb4(11)
      abb4(11)=spbk7l5*spak2l5
      abb4(12)=spbk7l6*spak2l6
      abb4(11)=abb4(11)+abb4(12)
      abb4(12)=c3-c1
      abb4(10)=spbk3k2**2*spak3k4*abb4(10)*abb4(12)*abb4(11)
      abb4(11)=-spal5k7*abb4(12)
      abb4(13)=abb4(11)*abb4(8)
      abb4(12)=-spal6k7*abb4(12)
      abb4(14)=abb4(12)*abb4(6)
      abb4(13)=abb4(13)+abb4(14)
      abb4(14)=-spak3k4*spbk7k3*abb4(13)
      abb4(13)=spbk7k2*spak2k4*abb4(13)
      abb4(13)=abb4(14)+abb4(13)
      abb4(13)=spbk7k2*spbk3k2*spak1k2*abb4(13)
      abb4(10)=abb4(10)+abb4(13)
      abb4(10)=abb4(3)*abb4(10)
      abb4(13)=abb4(9)*spak1k4
      abb4(14)=spbk4k3*abb4(13)*spak2k4
      abb4(13)=spak1k2*abb4(13)*spbk3k1
      abb4(13)=abb4(14)-abb4(13)
      abb4(11)=abb4(8)*abb4(11)*abb4(13)
      abb4(12)=abb4(6)*abb4(12)*abb4(13)
      abb4(11)=abb4(11)+abb4(12)
      abb4(11)=abb4(11)*spbk7k2**2
      abb4(10)=abb4(11)+abb4(10)
      abb4(11)=gW*TR
      abb4(10)=9.0_ki*abb4(1)*abb4(2)*abb4(4)*abb4(5)*abb4(7)*CVDU*mB*NC*i_*abb&
      &4(10)*abb4(11)**2
      R2d4=0.0_ki
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd4h0
