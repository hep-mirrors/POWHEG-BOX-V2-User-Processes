module     p0_dbaru_epnebbbarg_abbrevd304h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(21), public :: abb304
   complex(ki), public :: R2d304
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
      abb304(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb304(2)=1.0_ki/(es34+es567-es12-es234)
      abb304(3)=sqrt(mB**2)
      abb304(4)=NC**(-1)
      abb304(5)=sqrt2**(-1)
      abb304(6)=spbk7k2**(-1)
      abb304(7)=spbl5k2**(-1)
      abb304(8)=c1-c3
      abb304(9)=TR*gW
      abb304(9)=CVDU*i_*spak1k4*abb304(5)*abb304(2)*abb304(1)*abb304(9)**2
      abb304(10)=abb304(9)*abb304(6)
      abb304(11)=abb304(10)*abb304(3)
      abb304(12)=abb304(4)*abb304(11)
      abb304(13)=-abb304(12)*abb304(8)
      abb304(14)=c2-c4
      abb304(15)=abb304(11)*abb304(14)
      abb304(13)=abb304(15)+abb304(13)
      abb304(15)=abb304(13)*spak4l5
      abb304(16)=spal5k7*spbk4k3
      abb304(17)=-abb304(16)*abb304(15)
      abb304(13)=abb304(13)*spak1l5
      abb304(18)=spal5k7*spbk3k1
      abb304(19)=-abb304(18)*abb304(13)
      abb304(17)=abb304(19)+abb304(17)
      abb304(17)=spbl5k2*abb304(17)
      abb304(19)=abb304(8)*abb304(4)
      abb304(19)=abb304(19)-abb304(14)
      abb304(20)=spak4k7*spbk4k3
      abb304(21)=spak1k7*spbk3k1
      abb304(20)=abb304(20)+abb304(21)
      abb304(21)=abb304(3)*abb304(19)*abb304(9)*spal5k7*abb304(20)
      abb304(17)=abb304(17)+abb304(21)
      abb304(17)=8.0_ki*abb304(17)
      abb304(9)=-abb304(19)*abb304(20)*abb304(7)*abb304(9)*mB
      abb304(15)=spbk4k3*abb304(15)
      abb304(13)=spbk3k1*abb304(13)
      abb304(9)=abb304(13)+abb304(15)+abb304(9)
      abb304(9)=8.0_ki*abb304(9)
      abb304(10)=abb304(10)*mB
      abb304(11)=abb304(11)-abb304(10)
      abb304(11)=-abb304(14)*abb304(11)
      abb304(13)=abb304(10)*abb304(4)
      abb304(12)=abb304(13)-abb304(12)
      abb304(12)=-abb304(8)*abb304(12)
      abb304(11)=abb304(12)+abb304(11)
      abb304(11)=4.0_ki*abb304(20)*abb304(11)
      abb304(10)=abb304(14)*abb304(10)
      abb304(8)=-abb304(13)*abb304(8)
      abb304(8)=abb304(10)+abb304(8)
      abb304(10)=-8.0_ki*abb304(16)*abb304(8)
      abb304(12)=abb304(7)*abb304(8)
      abb304(12)=8.0_ki*abb304(12)
      abb304(13)=spbk4k3*abb304(12)
      abb304(8)=-8.0_ki*abb304(18)*abb304(8)
      abb304(12)=spbk3k1*abb304(12)
      R2d304=0.0_ki
      rat2 = rat2 + R2d304
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='304' value='", &
          & R2d304, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd304h4
