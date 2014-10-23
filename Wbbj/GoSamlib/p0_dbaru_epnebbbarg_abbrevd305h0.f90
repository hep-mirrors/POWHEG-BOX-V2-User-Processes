module     p0_dbaru_epnebbbarg_abbrevd305h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(25), public :: abb305
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
      abb305(3)=sqrt(mB**2)
      abb305(4)=NC**(-1)
      abb305(5)=sqrt2**(-1)
      abb305(6)=spbl5k2**(-1)
      abb305(7)=spak2k7**(-1)
      abb305(8)=spbl6k2**(-1)
      abb305(9)=c1+c3
      abb305(10)=TR*gW
      abb305(10)=abb305(10)**2*CVDU*i_*spak1k4*abb305(7)*abb305(5)*abb305(2)*ab&
      &b305(1)
      abb305(11)=abb305(10)*abb305(4)
      abb305(12)=abb305(9)*abb305(11)*spbk7k2
      abb305(13)=abb305(12)*mB**2
      abb305(14)=abb305(10)*spbk7k2
      abb305(15)=abb305(14)*c2
      abb305(16)=mB*abb305(4)
      abb305(16)=abb305(15)*abb305(16)**2
      abb305(13)=abb305(13)-abb305(16)
      abb305(16)=spak1l6*spbk3k1*abb305(3)
      abb305(17)=spak4l6*spbk4k3*abb305(3)
      abb305(16)=abb305(16)+abb305(17)
      abb305(13)=abb305(6)*abb305(13)*abb305(16)
      abb305(17)=c2*abb305(4)**2
      abb305(14)=abb305(17)*abb305(14)
      abb305(18)=abb305(14)-abb305(12)
      abb305(16)=spak2l5*abb305(18)*abb305(16)
      abb305(13)=abb305(13)+abb305(16)
      abb305(16)=es71+es12-es712
      abb305(13)=8.0_ki*abb305(16)*abb305(13)
      abb305(18)=abb305(9)*abb305(11)*abb305(3)
      abb305(19)=abb305(17)*abb305(10)*abb305(3)
      abb305(18)=-abb305(19)+abb305(18)
      abb305(19)=-spak1l6*spbk3k1
      abb305(20)=-spak4l6*spbk4k3
      abb305(19)=abb305(19)+abb305(20)
      abb305(18)=abb305(18)*abb305(19)
      abb305(16)=8.0_ki*abb305(16)
      abb305(19)=-abb305(18)*abb305(16)
      abb305(20)=abb305(8)*mB
      abb305(21)=abb305(20)*spbk4k3
      abb305(22)=abb305(21)*abb305(12)
      abb305(23)=abb305(3)**2
      abb305(24)=abb305(23)*abb305(22)
      abb305(25)=abb305(3)*abb305(4)
      abb305(15)=abb305(15)*abb305(25)**2
      abb305(25)=-abb305(21)*abb305(15)
      abb305(24)=abb305(25)+abb305(24)
      abb305(24)=spak2k4*abb305(24)
      abb305(25)=abb305(20)*spbk3k1
      abb305(12)=abb305(25)*abb305(12)
      abb305(23)=-abb305(23)*abb305(12)
      abb305(15)=abb305(25)*abb305(15)
      abb305(15)=abb305(15)+abb305(23)
      abb305(15)=spak1k2*abb305(15)
      abb305(15)=abb305(24)+abb305(15)
      abb305(15)=8.0_ki*abb305(15)
      abb305(23)=abb305(14)*abb305(21)
      abb305(22)=abb305(23)-abb305(22)
      abb305(23)=abb305(22)*spak2k4
      abb305(14)=abb305(14)*abb305(25)
      abb305(12)=abb305(14)-abb305(12)
      abb305(14)=abb305(12)*spak1k2
      abb305(14)=abb305(23)-abb305(14)
      abb305(23)=-16.0_ki*abb305(14)
      abb305(14)=8.0_ki*abb305(14)
      abb305(10)=abb305(10)*abb305(17)*abb305(20)
      abb305(17)=spbk4k3*abb305(10)
      abb305(9)=abb305(11)*abb305(9)
      abb305(11)=abb305(21)*abb305(9)
      abb305(11)=abb305(11)-abb305(17)
      abb305(17)=-abb305(11)*abb305(16)
      abb305(20)=-spak4k7*abb305(22)
      abb305(12)=-spak1k7*abb305(12)
      abb305(12)=abb305(12)+abb305(20)-abb305(18)
      abb305(12)=8.0_ki*abb305(12)
      abb305(11)=8.0_ki*abb305(11)
      abb305(10)=spbk3k1*abb305(10)
      abb305(9)=abb305(25)*abb305(9)
      abb305(9)=abb305(9)-abb305(10)
      abb305(10)=-abb305(9)*abb305(16)
      abb305(9)=8.0_ki*abb305(9)
      R2d305=0.0_ki
      rat2 = rat2 + R2d305
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='305' value='", &
          & R2d305, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd305h0
