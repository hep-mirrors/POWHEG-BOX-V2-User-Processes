module     p0_dbaru_epnebbbarg_abbrevd98h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(31), public :: abb98
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
      abb98(6)=spbk7k2**(-1)
      abb98(7)=sqrt(mB**2)
      abb98(8)=spak2l6**(-1)
      abb98(9)=-NC+2.0_ki*abb98(4)
      abb98(10)=TR*gW
      abb98(10)=CVDU*abb98(10)**2*spal5k7*i_*spak1k4*abb98(5)*abb98(3)*abb98(2)&
      &*abb98(1)
      abb98(9)=abb98(9)*abb98(10)*c1
      abb98(11)=-spbk4k3*abb98(9)
      abb98(12)=spbl6k2*abb98(11)
      abb98(10)=abb98(10)*c2*abb98(4)**2
      abb98(13)=spbl6k2*abb98(10)
      abb98(14)=abb98(13)*spbk4k3
      abb98(12)=abb98(14)+abb98(12)
      abb98(15)=abb98(12)*spak4k7
      abb98(9)=-spbk3k1*abb98(9)
      abb98(16)=spbl6k2*abb98(9)
      abb98(13)=abb98(13)*spbk3k1
      abb98(16)=abb98(13)+abb98(16)
      abb98(17)=abb98(16)*spak1k7
      abb98(15)=abb98(15)+abb98(17)
      abb98(17)=-spbl5k2*abb98(15)
      abb98(18)=spbl5k2**2
      abb98(19)=abb98(6)*spbl6k2
      abb98(20)=abb98(18)*abb98(19)
      abb98(21)=-abb98(20)*abb98(11)
      abb98(22)=abb98(14)*abb98(6)
      abb98(23)=-abb98(18)*abb98(22)
      abb98(21)=abb98(23)+abb98(21)
      abb98(21)=spak4l5*abb98(21)
      abb98(20)=-abb98(20)*abb98(9)
      abb98(23)=abb98(13)*abb98(6)
      abb98(18)=-abb98(18)*abb98(23)
      abb98(18)=abb98(18)+abb98(20)
      abb98(18)=spak1l5*abb98(18)
      abb98(17)=abb98(18)+abb98(21)+abb98(17)
      abb98(17)=spak2l5*abb98(17)
      abb98(18)=spbl5k2*abb98(6)
      abb98(20)=abb98(18)*spbl6k2
      abb98(21)=-abb98(20)*abb98(9)
      abb98(13)=abb98(13)*abb98(18)
      abb98(13)=abb98(21)-abb98(13)
      abb98(21)=abb98(13)*spak1l5
      abb98(20)=-abb98(20)*abb98(11)
      abb98(14)=abb98(14)*abb98(18)
      abb98(14)=abb98(20)-abb98(14)
      abb98(20)=abb98(14)*spak4l5
      abb98(20)=abb98(21)+abb98(20)
      abb98(21)=abb98(15)-abb98(20)
      abb98(24)=es71+es12-es712
      abb98(21)=-abb98(21)*abb98(24)
      abb98(17)=abb98(17)+abb98(21)
      abb98(17)=8.0_ki*abb98(17)
      abb98(15)=16.0_ki*abb98(15)
      abb98(20)=-16.0_ki*abb98(20)
      abb98(12)=spak4l5*abb98(12)
      abb98(16)=spak1l5*abb98(16)
      abb98(12)=abb98(12)+abb98(16)
      abb98(12)=8.0_ki*abb98(12)
      abb98(16)=spbk4k3*abb98(10)
      abb98(16)=abb98(16)+abb98(11)
      abb98(21)=spak4k7*abb98(16)
      abb98(25)=spbk3k1*abb98(10)
      abb98(25)=abb98(25)+abb98(9)
      abb98(26)=spak1k7*abb98(25)
      abb98(21)=abb98(21)+abb98(26)
      abb98(21)=spbk7l6*abb98(21)
      abb98(26)=-spak4l5*abb98(16)
      abb98(27)=-spak1l5*abb98(25)
      abb98(26)=abb98(26)+abb98(27)
      abb98(26)=spbl6l5*abb98(26)
      abb98(27)=abb98(7)*mB*abb98(8)
      abb98(28)=abb98(27)*spak2k4
      abb98(29)=abb98(16)*abb98(28)
      abb98(27)=abb98(27)*spak1k2
      abb98(30)=-abb98(25)*abb98(27)
      abb98(21)=abb98(30)+abb98(29)+abb98(21)+abb98(26)
      abb98(21)=8.0_ki*abb98(21)
      abb98(26)=-spak4k7*abb98(14)
      abb98(29)=-spak1k7*abb98(13)
      abb98(26)=abb98(26)+abb98(29)
      abb98(26)=8.0_ki*abb98(26)
      abb98(29)=-abb98(18)*abb98(11)
      abb98(10)=abb98(10)*abb98(18)
      abb98(30)=abb98(10)*spbk4k3
      abb98(29)=abb98(29)-abb98(30)
      abb98(30)=-spak4k7*abb98(29)
      abb98(18)=-abb98(18)*abb98(9)
      abb98(10)=abb98(10)*spbk3k1
      abb98(10)=abb98(18)-abb98(10)
      abb98(18)=-spak1k7*abb98(10)
      abb98(18)=abb98(30)+abb98(18)
      abb98(18)=spbk7l6*abb98(18)
      abb98(30)=spak4l5*abb98(29)
      abb98(31)=spak1l5*abb98(10)
      abb98(30)=abb98(30)+abb98(31)
      abb98(30)=spbl6l5*abb98(30)
      abb98(28)=-abb98(29)*abb98(28)
      abb98(27)=abb98(10)*abb98(27)
      abb98(18)=abb98(27)+abb98(28)+abb98(18)+abb98(30)
      abb98(18)=8.0_ki*abb98(18)
      abb98(14)=-spak2l5*abb98(14)
      abb98(11)=-abb98(19)*abb98(11)
      abb98(11)=abb98(11)-abb98(22)
      abb98(11)=-abb98(11)*abb98(24)
      abb98(11)=abb98(14)+abb98(11)
      abb98(11)=8.0_ki*abb98(11)
      abb98(14)=-8.0_ki*abb98(16)
      abb98(16)=8.0_ki*abb98(29)
      abb98(13)=-spak2l5*abb98(13)
      abb98(9)=-abb98(19)*abb98(9)
      abb98(9)=abb98(9)-abb98(23)
      abb98(9)=-abb98(9)*abb98(24)
      abb98(9)=abb98(13)+abb98(9)
      abb98(9)=8.0_ki*abb98(9)
      abb98(13)=-8.0_ki*abb98(25)
      abb98(10)=8.0_ki*abb98(10)
      R2d98=0.0_ki
      rat2 = rat2 + R2d98
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='98' value='", &
          & R2d98, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd98h6
