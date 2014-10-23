module     p0_dbaru_epnebbbarg_abbrevd100h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(22), public :: abb100
   complex(ki), public :: R2d100
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
      abb100(1)=1.0_ki/(-mB**2+es67)
      abb100(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb100(3)=1.0_ki/(es34+es567-es12-es234)
      abb100(4)=NC**(-1)
      abb100(5)=sqrt2**(-1)
      abb100(6)=spbl5k2**(-1)
      abb100(7)=sqrt(mB**2)
      abb100(8)=spbk7k2**(-1)
      abb100(9)=2.0_ki*abb100(4)
      abb100(10)=TR*gW
      abb100(10)=CVDU*abb100(10)**2*spal6k7*i_*spak1k4*abb100(5)*abb100(3)*abb1&
      &00(2)*abb100(1)
      abb100(9)=abb100(9)*abb100(10)*c3
      abb100(11)=abb100(9)*spbk3k1
      abb100(12)=abb100(4)**2
      abb100(12)=abb100(12)+1.0_ki
      abb100(13)=abb100(10)*abb100(12)
      abb100(14)=spbk3k1*c2
      abb100(15)=abb100(13)*abb100(14)
      abb100(11)=abb100(11)-abb100(15)
      abb100(11)=abb100(11)*spak1l5
      abb100(9)=abb100(9)*spbk4k3
      abb100(15)=spbk4k3*c2
      abb100(16)=-abb100(13)*abb100(15)
      abb100(16)=abb100(16)+abb100(9)
      abb100(16)=spak4l5*abb100(16)
      abb100(16)=abb100(11)+abb100(16)
      abb100(16)=abb100(7)*abb100(16)
      abb100(10)=abb100(10)*mB*abb100(6)
      abb100(12)=abb100(10)*abb100(12)
      abb100(17)=abb100(12)*abb100(15)
      abb100(10)=abb100(10)*c3*abb100(4)
      abb100(10)=2.0_ki*abb100(10)
      abb100(18)=abb100(10)*spbk4k3
      abb100(17)=abb100(17)-abb100(18)
      abb100(19)=-spak4k7*abb100(17)
      abb100(14)=abb100(12)*abb100(14)
      abb100(20)=abb100(10)*spbk3k1
      abb100(14)=abb100(20)-abb100(14)
      abb100(20)=spak1k7*abb100(14)
      abb100(19)=abb100(20)+abb100(19)
      abb100(19)=spbk7k2*abb100(19)
      abb100(20)=abb100(12)*c2
      abb100(10)=abb100(20)-abb100(10)
      abb100(10)=abb100(10)*spbl6k2
      abb100(20)=spbk4k3*abb100(10)
      abb100(21)=-spak4l6*abb100(20)
      abb100(10)=spbk3k1*abb100(10)
      abb100(22)=-spak1l6*abb100(10)
      abb100(16)=abb100(22)+abb100(21)+abb100(19)+abb100(16)
      abb100(16)=8.0_ki*abb100(16)
      abb100(19)=abb100(8)*spbl6k2
      abb100(15)=abb100(15)*abb100(19)
      abb100(13)=-abb100(13)*abb100(15)
      abb100(9)=abb100(19)*abb100(9)
      abb100(9)=abb100(13)+abb100(9)
      abb100(9)=spak4l5*abb100(9)
      abb100(11)=abb100(19)*abb100(11)
      abb100(9)=abb100(11)+abb100(9)
      abb100(9)=abb100(7)*abb100(9)
      abb100(11)=-spak4l6*abb100(17)
      abb100(13)=spak1l6*abb100(14)
      abb100(11)=abb100(13)+abb100(11)
      abb100(11)=abb100(11)*abb100(8)*spbl6k2**2
      abb100(13)=-spak4k7*abb100(20)
      abb100(10)=-spak1k7*abb100(10)
      abb100(9)=abb100(10)+abb100(13)+abb100(9)+abb100(11)
      abb100(9)=8.0_ki*abb100(9)
      abb100(10)=8.0_ki*abb100(17)
      abb100(11)=abb100(12)*abb100(15)
      abb100(12)=-abb100(19)*abb100(18)
      abb100(11)=abb100(11)+abb100(12)
      abb100(11)=8.0_ki*abb100(11)
      abb100(12)=8.0_ki*abb100(14)
      abb100(13)=-abb100(19)*abb100(12)
      R2d100=0.0_ki
      rat2 = rat2 + R2d100
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='100' value='", &
          & R2d100, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd100h4
