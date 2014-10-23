module     p0_dbaru_epnebbbarg_abbrevd305h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(16), public :: abb305
   complex(ki), public :: R2d305
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
      abb305(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb305(2)=1.0_ki/(es34+es567-es12-es234)
      abb305(3)=NC**(-1)
      abb305(4)=sqrt2**(-1)
      abb305(5)=spbl6k2**(-1)
      abb305(6)=sqrt(mB**2)
      abb305(7)=spbk7k2**(-1)
      abb305(8)=spbk3k1*c2
      abb305(9)=-spak1l6*abb305(8)
      abb305(10)=spbk4k3*c2
      abb305(11)=-spak4l6*abb305(10)
      abb305(9)=abb305(9)+abb305(11)
      abb305(11)=abb305(7)*abb305(6)
      abb305(9)=abb305(9)*abb305(11)
      abb305(12)=-spak1k7*abb305(8)
      abb305(13)=-spak4k7*abb305(10)
      abb305(12)=abb305(12)+abb305(13)
      abb305(13)=abb305(5)*mB
      abb305(12)=abb305(12)*abb305(13)
      abb305(9)=abb305(9)+abb305(12)
      abb305(9)=abb305(9)*abb305(3)
      abb305(12)=c3+c1
      abb305(14)=abb305(12)*spbk3k1
      abb305(15)=spak1l6*abb305(14)
      abb305(12)=abb305(12)*spbk4k3
      abb305(16)=spak4l6*abb305(12)
      abb305(15)=abb305(15)+abb305(16)
      abb305(11)=abb305(15)*abb305(11)
      abb305(15)=spak1k7*abb305(14)
      abb305(16)=spak4k7*abb305(12)
      abb305(15)=abb305(15)+abb305(16)
      abb305(15)=abb305(15)*abb305(13)
      abb305(9)=abb305(9)+abb305(11)+abb305(15)
      abb305(11)=abb305(3)*abb305(1)*abb305(2)
      abb305(11)=8.0_ki*abb305(11)
      abb305(15)=gW*TR
      abb305(15)=abb305(15)**2*abb305(4)*CVDU*spak1k4*i_
      abb305(9)=abb305(11)*abb305(15)*abb305(9)
      abb305(11)=abb305(11)*abb305(15)*abb305(13)*abb305(7)
      abb305(10)=abb305(3)*abb305(10)
      abb305(10)=-abb305(12)+abb305(10)
      abb305(10)=abb305(10)*abb305(11)
      abb305(8)=abb305(3)*abb305(8)
      abb305(8)=-abb305(14)+abb305(8)
      abb305(8)=abb305(8)*abb305(11)
      R2d305=0.0_ki
      rat2 = rat2 + R2d305
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='305' value='", &
          & R2d305, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd305h4
