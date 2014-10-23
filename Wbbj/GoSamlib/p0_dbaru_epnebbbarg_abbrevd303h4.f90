module     p0_dbaru_epnebbbarg_abbrevd303h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(27), public :: abb303
   complex(ki), public :: R2d303
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
      abb303(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb303(2)=1.0_ki/(es34+es567-es12-es234)
      abb303(3)=sqrt(mB**2)
      abb303(4)=NC**(-1)
      abb303(5)=sqrt2**(-1)
      abb303(6)=spbk7k2**(-1)
      abb303(7)=spbl6k2**(-1)
      abb303(8)=spbk3k1*spak1k7
      abb303(9)=spbk4k3*spak4k7
      abb303(8)=abb303(8)+abb303(9)
      abb303(9)=c1*abb303(8)
      abb303(10)=abb303(3)*spal6k7*abb303(9)
      abb303(11)=c3*abb303(3)
      abb303(12)=abb303(11)*spal6k7
      abb303(13)=-abb303(8)*abb303(12)
      abb303(10)=abb303(10)+abb303(13)
      abb303(10)=abb303(4)*abb303(10)
      abb303(13)=spbk3k1*spal6k7
      abb303(14)=spak1l6*abb303(13)
      abb303(15)=spbk4k3*spal6k7
      abb303(16)=abb303(15)*spak4l6
      abb303(14)=abb303(14)+abb303(16)
      abb303(14)=spbl6k2*abb303(14)
      abb303(16)=abb303(14)*abb303(11)
      abb303(14)=abb303(3)*c1*abb303(14)
      abb303(14)=abb303(14)-abb303(16)
      abb303(14)=abb303(4)*abb303(14)
      abb303(16)=NC*abb303(16)
      abb303(14)=abb303(16)+abb303(14)
      abb303(14)=abb303(6)*abb303(14)
      abb303(16)=NC*abb303(8)
      abb303(12)=abb303(16)*abb303(12)
      abb303(10)=abb303(14)+abb303(12)+abb303(10)
      abb303(12)=gW*TR
      abb303(12)=abb303(12)**2*abb303(1)*abb303(2)*abb303(5)*CVDU*spak1k4*i_
      abb303(14)=8.0_ki*abb303(12)
      abb303(10)=abb303(10)*abb303(14)
      abb303(17)=mB*abb303(7)
      abb303(18)=abb303(9)*abb303(17)
      abb303(19)=c3*mB
      abb303(20)=abb303(19)*abb303(7)
      abb303(21)=-abb303(8)*abb303(20)
      abb303(18)=abb303(18)+abb303(21)
      abb303(18)=abb303(4)*abb303(18)
      abb303(21)=spbk3k1*c1
      abb303(22)=spak1l6*abb303(21)
      abb303(23)=spbk4k3*c1
      abb303(24)=spak4l6*abb303(23)
      abb303(22)=abb303(22)+abb303(24)
      abb303(22)=abb303(3)*abb303(22)
      abb303(24)=-spbk3k1*spak1l6
      abb303(25)=-spbk4k3*spak4l6
      abb303(24)=abb303(24)+abb303(25)
      abb303(24)=abb303(24)*abb303(11)
      abb303(22)=abb303(22)+abb303(24)
      abb303(22)=abb303(4)*abb303(22)
      abb303(24)=spbk3k1*NC
      abb303(25)=spak1l6*abb303(24)
      abb303(26)=spbk4k3*NC
      abb303(27)=spak4l6*abb303(26)
      abb303(25)=abb303(25)+abb303(27)
      abb303(11)=abb303(25)*abb303(11)
      abb303(11)=abb303(11)+abb303(22)
      abb303(11)=abb303(6)*abb303(11)
      abb303(22)=abb303(16)*abb303(20)
      abb303(11)=abb303(11)+abb303(22)+abb303(18)
      abb303(11)=abb303(11)*abb303(14)
      abb303(18)=abb303(3)-mB
      abb303(9)=-abb303(9)*abb303(18)
      abb303(18)=abb303(18)*c3
      abb303(8)=abb303(8)*abb303(18)
      abb303(8)=abb303(8)+abb303(9)
      abb303(8)=abb303(4)*abb303(8)
      abb303(9)=-abb303(16)*abb303(18)
      abb303(8)=abb303(9)+abb303(8)
      abb303(8)=4.0_ki*abb303(8)*abb303(12)*abb303(6)
      abb303(9)=mB*c1
      abb303(12)=-abb303(9)+abb303(19)
      abb303(12)=abb303(4)*abb303(12)
      abb303(16)=-NC*abb303(19)
      abb303(12)=abb303(16)+abb303(12)
      abb303(14)=abb303(14)*abb303(6)
      abb303(12)=abb303(14)*abb303(15)*abb303(12)
      abb303(15)=-abb303(26)*abb303(20)
      abb303(16)=-abb303(23)*abb303(17)
      abb303(18)=spbk4k3*abb303(20)
      abb303(16)=abb303(16)+abb303(18)
      abb303(16)=abb303(4)*abb303(16)
      abb303(15)=abb303(15)+abb303(16)
      abb303(15)=abb303(15)*abb303(14)
      abb303(16)=abb303(13)*abb303(19)
      abb303(9)=-abb303(13)*abb303(9)
      abb303(9)=abb303(9)+abb303(16)
      abb303(9)=abb303(4)*abb303(9)
      abb303(13)=-NC*abb303(16)
      abb303(9)=abb303(13)+abb303(9)
      abb303(9)=abb303(9)*abb303(14)
      abb303(13)=-abb303(24)*abb303(20)
      abb303(16)=-abb303(21)*abb303(17)
      abb303(17)=spbk3k1*abb303(20)
      abb303(16)=abb303(16)+abb303(17)
      abb303(16)=abb303(4)*abb303(16)
      abb303(13)=abb303(13)+abb303(16)
      abb303(13)=abb303(13)*abb303(14)
      R2d303=0.0_ki
      rat2 = rat2 + R2d303
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='303' value='", &
          & R2d303, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd303h4
