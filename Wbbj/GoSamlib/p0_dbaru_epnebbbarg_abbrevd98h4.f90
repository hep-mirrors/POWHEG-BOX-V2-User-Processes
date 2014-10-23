module     p0_dbaru_epnebbbarg_abbrevd98h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(25), public :: abb98
   complex(ki), public :: R2d98
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
      abb98(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb98(2)=1.0_ki/(es34+es567-es12-es234)
      abb98(3)=1.0_ki/(mB**2-es67-es56+es567)
      abb98(4)=NC**(-1)
      abb98(5)=sqrt2**(-1)
      abb98(6)=spbl6k2**(-1)
      abb98(7)=sqrt(mB**2)
      abb98(8)=spbk7k2**(-1)
      abb98(9)=c2*abb98(4)**2
      abb98(10)=TR*gW
      abb98(10)=CVDU*abb98(10)**2*spal5k7*i_*spak1k4*abb98(5)*abb98(3)*abb98(2)&
      &*abb98(1)
      abb98(11)=abb98(10)*mB*abb98(6)
      abb98(12)=abb98(9)*abb98(11)
      abb98(13)=2.0_ki*abb98(4)
      abb98(11)=abb98(11)*c1
      abb98(14)=abb98(13)*abb98(11)
      abb98(11)=abb98(11)*NC
      abb98(11)=abb98(11)+abb98(12)-abb98(14)
      abb98(12)=spbk4k3*abb98(11)
      abb98(14)=-spak4k7*abb98(12)
      abb98(11)=spbk3k1*abb98(11)
      abb98(15)=-spak1k7*abb98(11)
      abb98(14)=abb98(15)+abb98(14)
      abb98(14)=spbk7k2*abb98(14)
      abb98(15)=abb98(13)*spbk4k3
      abb98(16)=abb98(10)*c1
      abb98(17)=abb98(16)*abb98(15)
      abb98(18)=abb98(10)*spbk4k3
      abb98(19)=-abb98(18)*abb98(9)
      abb98(20)=abb98(16)*NC
      abb98(21)=-spbk4k3*abb98(20)
      abb98(17)=abb98(21)+abb98(17)+abb98(19)
      abb98(19)=spak4l6*abb98(7)
      abb98(17)=abb98(17)*abb98(19)
      abb98(21)=spbl5k2*abb98(12)
      abb98(22)=-spak4l5*abb98(21)
      abb98(13)=abb98(13)*spbk3k1
      abb98(23)=abb98(16)*abb98(13)
      abb98(10)=abb98(10)*spbk3k1
      abb98(24)=-abb98(10)*abb98(9)
      abb98(20)=-spbk3k1*abb98(20)
      abb98(20)=abb98(20)+abb98(23)+abb98(24)
      abb98(23)=spak1l6*abb98(7)
      abb98(20)=abb98(20)*abb98(23)
      abb98(24)=spbl5k2*abb98(11)
      abb98(25)=-spak1l5*abb98(24)
      abb98(14)=abb98(25)+abb98(20)+abb98(17)+abb98(22)+abb98(14)
      abb98(14)=8.0_ki*abb98(14)
      abb98(17)=-spak4l5*abb98(12)
      abb98(20)=-spak1l5*abb98(11)
      abb98(17)=abb98(20)+abb98(17)
      abb98(17)=abb98(17)*abb98(8)*spbl5k2**2
      abb98(20)=abb98(8)*spbl5k2
      abb98(16)=abb98(20)*abb98(16)
      abb98(15)=abb98(15)*abb98(16)
      abb98(9)=abb98(20)*abb98(9)
      abb98(18)=-abb98(18)*abb98(9)
      abb98(22)=abb98(16)*NC
      abb98(25)=-spbk4k3*abb98(22)
      abb98(15)=abb98(25)+abb98(15)+abb98(18)
      abb98(15)=abb98(15)*abb98(19)
      abb98(13)=abb98(13)*abb98(16)
      abb98(9)=-abb98(10)*abb98(9)
      abb98(10)=-spbk3k1*abb98(22)
      abb98(9)=abb98(10)+abb98(13)+abb98(9)
      abb98(9)=abb98(9)*abb98(23)
      abb98(10)=-spak4k7*abb98(21)
      abb98(13)=-spak1k7*abb98(24)
      abb98(9)=abb98(9)+abb98(13)+abb98(10)+abb98(15)+abb98(17)
      abb98(9)=8.0_ki*abb98(9)
      abb98(10)=8.0_ki*abb98(12)
      abb98(12)=abb98(20)*abb98(10)
      abb98(11)=8.0_ki*abb98(11)
      abb98(13)=abb98(20)*abb98(11)
      R2d98=0.0_ki
      rat2 = rat2 + R2d98
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='98' value='", &
          & R2d98, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd98h4
