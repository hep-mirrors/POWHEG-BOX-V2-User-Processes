module     p0_dbaru_epnebbbarg_abbrevd73h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(22), public :: abb73
   complex(ki), public :: R2d73
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
      abb73(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb73(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb73(3)=sqrt(mB**2)
      abb73(4)=NC**(-1)
      abb73(5)=sqrt2**(-1)
      abb73(6)=spbk7k2**(-1)
      abb73(7)=abb73(4)*c2
      abb73(7)=-abb73(7)+2.0_ki*c1
      abb73(8)=-abb73(4)*spak3k4*abb73(7)
      abb73(9)=c2*spak3k4
      abb73(8)=abb73(8)+abb73(9)
      abb73(9)=spbl5k2*spak1l5
      abb73(10)=spak1l6*spbl6k2
      abb73(11)=abb73(9)+abb73(10)
      abb73(12)=abb73(6)*abb73(8)*spak2l6*abb73(11)
      abb73(13)=abb73(8)*spak1k7*spak2l6
      abb73(12)=abb73(12)+abb73(13)
      abb73(13)=spbk3k2**2
      abb73(14)=gW*TR
      abb73(14)=abb73(14)**2*abb73(3)*abb73(1)*abb73(2)*abb73(5)*CVDU*spal5k7*i_
      abb73(15)=8.0_ki*abb73(14)
      abb73(12)=abb73(12)*abb73(13)*abb73(15)
      abb73(16)=spak1l6*abb73(8)
      abb73(17)=16.0_ki*abb73(14)
      abb73(13)=-abb73(6)*abb73(16)*abb73(13)*abb73(17)
      abb73(7)=abb73(7)*abb73(4)
      abb73(7)=abb73(7)-c2
      abb73(18)=-abb73(6)*abb73(7)*spak4l6*abb73(11)
      abb73(19)=-abb73(7)*spak4l6*spak1k7
      abb73(18)=abb73(18)+abb73(19)
      abb73(19)=spbk3k2*abb73(6)
      abb73(16)=-abb73(16)*abb73(19)
      abb73(16)=abb73(16)-abb73(18)
      abb73(16)=abb73(16)*spbk3k2*abb73(17)
      abb73(17)=abb73(15)*spbk3k2
      abb73(18)=abb73(18)*abb73(17)
      abb73(20)=-spak1k7*abb73(8)
      abb73(9)=-abb73(6)*abb73(9)*abb73(8)
      abb73(9)=abb73(9)+abb73(20)
      abb73(9)=abb73(9)*abb73(17)
      abb73(20)=spak1k2*spak4l5
      abb73(21)=spak1k4*spak2l5
      abb73(20)=abb73(20)-abb73(21)
      abb73(21)=spak1l5*spak2k4
      abb73(20)=abb73(21)+2.0_ki*abb73(20)
      abb73(20)=abb73(20)*spbl5k2
      abb73(21)=es12+es71-es712
      abb73(22)=2.0_ki*spak1k4
      abb73(21)=abb73(21)*abb73(22)
      abb73(22)=spbl6k3*spak3k4*spak1l6
      abb73(10)=abb73(10)*spak2k4
      abb73(10)=abb73(20)-abb73(21)-abb73(22)-abb73(10)
      abb73(10)=-abb73(6)*abb73(10)*abb73(7)
      abb73(20)=spak1k2*spak4k7
      abb73(21)=spak1k7*spak2k4
      abb73(20)=abb73(21)+2.0_ki*abb73(20)
      abb73(20)=-abb73(20)*abb73(7)
      abb73(21)=abb73(19)*spak1k2*abb73(8)
      abb73(10)=abb73(21)+abb73(10)+abb73(20)
      abb73(10)=abb73(10)*abb73(17)
      abb73(14)=abb73(19)*abb73(14)
      abb73(14)=16.0_ki*abb73(14)
      abb73(17)=spak1k4*abb73(7)
      abb73(20)=abb73(17)*abb73(14)
      abb73(19)=abb73(15)*abb73(19)
      abb73(17)=-abb73(17)*abb73(19)
      abb73(11)=-abb73(6)*abb73(11)*abb73(7)
      abb73(21)=-spak1k7*abb73(7)
      abb73(11)=abb73(11)+abb73(21)
      abb73(11)=abb73(11)*abb73(15)
      abb73(21)=spak1l6*abb73(7)
      abb73(14)=-abb73(21)*abb73(14)
      abb73(21)=abb73(21)*abb73(19)
      abb73(8)=abb73(8)*abb73(19)
      abb73(19)=-abb73(19)*spak2k4*abb73(7)
      abb73(7)=abb73(6)*abb73(7)*abb73(15)
      R2d73=0.0_ki
      rat2 = rat2 + R2d73
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='73' value='", &
          & R2d73, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd73h4
