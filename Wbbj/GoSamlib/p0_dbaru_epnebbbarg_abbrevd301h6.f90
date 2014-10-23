module     p0_dbaru_epnebbbarg_abbrevd301h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(23), public :: abb301
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
      abb301(6)=sqrt(mB**2)
      abb301(7)=spak2l6**(-1)
      abb301(8)=TR*gW
      abb301(8)=abb301(8)**2*CVDU*i_*spak1k4*abb301(5)*abb301(4)*abb301(2)*abb3&
      &01(1)
      abb301(9)=abb301(8)*spbk3k1
      abb301(10)=abb301(9)*c1
      abb301(11)=abb301(9)*c3
      abb301(10)=abb301(10)+abb301(11)
      abb301(12)=spbl6k2*abb301(3)
      abb301(13)=abb301(12)*spal5k7
      abb301(14)=abb301(13)*abb301(10)
      abb301(15)=c4*abb301(3)**2
      abb301(16)=abb301(15)*spbl6k2
      abb301(17)=abb301(16)*spal5k7
      abb301(18)=abb301(17)*abb301(9)
      abb301(14)=abb301(14)-abb301(18)
      abb301(18)=spak1l5*spbl5k2
      abb301(19)=abb301(18)*abb301(14)
      abb301(8)=abb301(8)*spbk4k3
      abb301(20)=abb301(8)*c1
      abb301(21)=abb301(8)*c3
      abb301(20)=abb301(20)+abb301(21)
      abb301(13)=abb301(13)*abb301(20)
      abb301(17)=abb301(17)*abb301(8)
      abb301(13)=-abb301(17)+abb301(13)
      abb301(17)=spak4l5*spbl5k2
      abb301(22)=abb301(17)*abb301(13)
      abb301(19)=abb301(19)+abb301(22)
      abb301(22)=16.0_ki*abb301(19)
      abb301(19)=-8.0_ki*abb301(19)
      abb301(23)=abb301(12)*c1
      abb301(16)=abb301(16)-abb301(23)
      abb301(23)=-abb301(8)*abb301(16)
      abb301(21)=abb301(21)*abb301(12)
      abb301(21)=abb301(21)+abb301(23)
      abb301(17)=abb301(21)*abb301(17)
      abb301(16)=-abb301(9)*abb301(16)
      abb301(11)=abb301(11)*abb301(12)
      abb301(11)=abb301(11)+abb301(16)
      abb301(12)=abb301(11)*abb301(18)
      abb301(12)=abb301(17)+abb301(12)
      abb301(16)=8.0_ki*spak2l5
      abb301(12)=abb301(12)*abb301(16)
      abb301(17)=-spak4l5*abb301(21)
      abb301(18)=-spak1l5*abb301(11)
      abb301(17)=abb301(17)+abb301(18)
      abb301(17)=16.0_ki*abb301(17)
      abb301(18)=abb301(3)*abb301(20)
      abb301(8)=abb301(15)*abb301(8)
      abb301(8)=-abb301(8)+abb301(18)
      abb301(18)=-spak2k4*abb301(8)
      abb301(10)=abb301(3)*abb301(10)
      abb301(9)=abb301(15)*abb301(9)
      abb301(9)=abb301(10)-abb301(9)
      abb301(10)=spak1k2*abb301(9)
      abb301(10)=abb301(10)+abb301(18)
      abb301(10)=abb301(6)*abb301(10)*mB*abb301(7)
      abb301(15)=spak4l5*abb301(8)
      abb301(18)=spak1l5*abb301(9)
      abb301(15)=abb301(15)+abb301(18)
      abb301(15)=spbl6l5*abb301(15)
      abb301(10)=abb301(15)+abb301(10)
      abb301(10)=8.0_ki*abb301(10)
      abb301(15)=-16.0_ki*abb301(13)
      abb301(13)=8.0_ki*abb301(13)
      abb301(18)=-abb301(21)*abb301(16)
      abb301(8)=8.0_ki*abb301(8)
      abb301(20)=-16.0_ki*abb301(14)
      abb301(14)=8.0_ki*abb301(14)
      abb301(11)=-abb301(11)*abb301(16)
      abb301(9)=8.0_ki*abb301(9)
      R2d301=0.0_ki
      rat2 = rat2 + R2d301
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='301' value='", &
          & R2d301, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd301h6
