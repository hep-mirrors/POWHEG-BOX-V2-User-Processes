module     p0_dbaru_epnebbbarg_abbrevd301h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(27), public :: abb301
   complex(ki), public :: R2d301
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
      abb301(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb301(2)=1.0_ki/(es34+es567-es12-es234)
      abb301(3)=NC**(-1)
      abb301(4)=sqrt2**(-1)
      abb301(5)=spbk7k2**(-1)
      abb301(6)=spak2l5**(-1)
      abb301(7)=spbl6k2**(-1)
      abb301(8)=sqrt(mB**2)
      abb301(9)=c1+c3
      abb301(10)=abb301(9)*abb301(3)
      abb301(11)=TR*gW
      abb301(11)=abb301(11)**2*CVDU*i_*spak1k4*abb301(5)*abb301(4)*abb301(2)*ab&
      &b301(1)
      abb301(12)=abb301(11)*spbk4k3
      abb301(13)=abb301(12)*abb301(10)
      abb301(14)=spbl5k2**2
      abb301(15)=abb301(14)*abb301(13)
      abb301(16)=spbl5k2*abb301(3)
      abb301(17)=c4*abb301(16)**2
      abb301(18)=abb301(12)*abb301(17)
      abb301(15)=abb301(15)-abb301(18)
      abb301(15)=abb301(15)*spak4l6
      abb301(11)=abb301(11)*spbk3k1
      abb301(10)=abb301(11)*abb301(10)
      abb301(14)=abb301(14)*abb301(10)
      abb301(17)=abb301(11)*abb301(17)
      abb301(14)=abb301(14)-abb301(17)
      abb301(14)=abb301(14)*spak1l6
      abb301(14)=abb301(15)+abb301(14)
      abb301(15)=abb301(14)*spal5k7
      abb301(17)=16.0_ki*abb301(15)
      abb301(15)=-8.0_ki*abb301(15)
      abb301(14)=8.0_ki*abb301(14)
      abb301(14)=spak2l5*abb301(14)
      abb301(9)=abb301(16)*abb301(9)
      abb301(16)=c4*abb301(3)**2
      abb301(18)=abb301(16)*spbl5k2
      abb301(9)=abb301(9)-abb301(18)
      abb301(18)=abb301(12)*abb301(9)
      abb301(19)=-spak4l6*abb301(18)
      abb301(9)=abb301(11)*abb301(9)
      abb301(20)=-spak1l6*abb301(9)
      abb301(19)=abb301(19)+abb301(20)
      abb301(19)=16.0_ki*abb301(19)
      abb301(11)=abb301(16)*abb301(11)
      abb301(10)=abb301(10)-abb301(11)
      abb301(11)=abb301(10)*spak1l6
      abb301(12)=abb301(16)*abb301(12)
      abb301(12)=abb301(13)-abb301(12)
      abb301(13)=abb301(12)*spak4l6
      abb301(11)=abb301(11)+abb301(13)
      abb301(13)=spak4l5*abb301(18)
      abb301(16)=spak1l5*abb301(9)
      abb301(13)=abb301(16)+abb301(13)
      abb301(13)=abb301(7)*abb301(13)
      abb301(13)=abb301(13)-abb301(11)
      abb301(16)=abb301(6)*mB**2
      abb301(13)=abb301(16)*abb301(13)
      abb301(20)=abb301(8)*mB
      abb301(11)=abb301(6)*abb301(11)*abb301(20)
      abb301(11)=abb301(11)+abb301(13)
      abb301(11)=16.0_ki*abb301(11)
      abb301(13)=abb301(18)*spak4k7
      abb301(21)=abb301(9)*spak1k7
      abb301(13)=abb301(13)+abb301(21)
      abb301(21)=16.0_ki*abb301(13)
      abb301(13)=-8.0_ki*abb301(13)
      abb301(22)=spak2k4*abb301(18)
      abb301(23)=-spak1k2*abb301(9)
      abb301(22)=abb301(22)+abb301(23)
      abb301(22)=8.0_ki*abb301(22)
      abb301(12)=16.0_ki*abb301(12)
      abb301(23)=abb301(18)*spal6k7
      abb301(24)=-16.0_ki*abb301(23)
      abb301(23)=8.0_ki*abb301(23)
      abb301(20)=abb301(7)*abb301(20)
      abb301(20)=abb301(20)+spak2l6
      abb301(20)=8.0_ki*abb301(20)
      abb301(18)=-abb301(18)*abb301(20)
      abb301(16)=abb301(16)*abb301(7)
      abb301(25)=-abb301(16)*abb301(12)
      abb301(10)=16.0_ki*abb301(10)
      abb301(26)=abb301(9)*spal6k7
      abb301(27)=-16.0_ki*abb301(26)
      abb301(26)=8.0_ki*abb301(26)
      abb301(9)=-abb301(9)*abb301(20)
      abb301(16)=-abb301(16)*abb301(10)
      R2d301=0.0_ki
      rat2 = rat2 + R2d301
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='301' value='", &
          & R2d301, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd301h5
