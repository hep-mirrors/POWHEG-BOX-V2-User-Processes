module     p0_dbaru_epnebbbarg_abbrevd301h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
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
      abb301(4)=spbl6k2**(-1)
      abb301(5)=sqrt(mB**2)
      abb301(6)=TR*gW
      abb301(6)=abb301(6)**2
      abb301(7)=abb301(3)**2*abb301(6)*c4
      abb301(8)=CVDU*i_*spak1k4*abb301(2)*abb301(1)
      abb301(9)=abb301(7)*abb301(8)
      abb301(10)=spbe7k2*abb301(9)
      abb301(11)=mB*abb301(4)
      abb301(12)=abb301(10)*abb301(11)
      abb301(6)=abb301(8)*abb301(6)*abb301(3)
      abb301(13)=abb301(11)*abb301(6)
      abb301(14)=abb301(13)*spbe7k2
      abb301(15)=abb301(14)*c3
      abb301(14)=abb301(14)*c1
      abb301(12)=-abb301(14)+abb301(12)-abb301(15)
      abb301(14)=spbk4k3*abb301(12)
      abb301(15)=abb301(14)*spak4l5
      abb301(12)=spbk3k1*abb301(12)
      abb301(16)=abb301(12)*spak1l5
      abb301(15)=abb301(15)+abb301(16)
      abb301(16)=spbl5k2*abb301(15)
      abb301(17)=abb301(6)*spbe7k2
      abb301(18)=c1+c3
      abb301(19)=abb301(5)*spbk4k3
      abb301(20)=-abb301(18)*abb301(19)*abb301(17)
      abb301(21)=abb301(10)*abb301(19)
      abb301(20)=abb301(21)+abb301(20)
      abb301(20)=abb301(20)*spak4l6
      abb301(21)=abb301(5)*spbk3k1
      abb301(17)=-abb301(18)*abb301(21)*abb301(17)
      abb301(10)=abb301(10)*abb301(21)
      abb301(10)=abb301(10)+abb301(17)
      abb301(10)=abb301(10)*spak1l6
      abb301(10)=abb301(20)+abb301(10)
      abb301(17)=abb301(10)+abb301(16)
      abb301(17)=4.0_ki*abb301(17)
      abb301(20)=spbk7k2*spae7k7
      abb301(22)=abb301(20)*spak2l5
      abb301(23)=abb301(22)*abb301(17)
      abb301(15)=-8.0_ki*abb301(20)*abb301(15)
      abb301(16)=-abb301(16)+abb301(10)
      abb301(16)=8.0_ki*spal5e7*abb301(16)
      abb301(17)=spal5e7*abb301(17)
      abb301(24)=spak2l5*abb301(10)
      abb301(6)=abb301(6)*abb301(18)
      abb301(18)=abb301(19)*abb301(6)
      abb301(7)=abb301(8)*abb301(7)*abb301(5)
      abb301(8)=spbk4k3*abb301(7)
      abb301(8)=abb301(18)-abb301(8)
      abb301(8)=abb301(8)*spak4l6
      abb301(6)=abb301(21)*abb301(6)
      abb301(7)=spbk3k1*abb301(7)
      abb301(6)=abb301(6)-abb301(7)
      abb301(6)=abb301(6)*spak1l6
      abb301(6)=abb301(8)+abb301(6)
      abb301(7)=abb301(6)*spbk7e7
      abb301(8)=spal5k7*abb301(7)
      abb301(8)=2.0_ki*abb301(24)+abb301(8)
      abb301(8)=4.0_ki*abb301(8)
      abb301(18)=4.0_ki*spal5e7
      abb301(7)=-abb301(7)*abb301(18)
      abb301(10)=-4.0_ki*spae7k7*abb301(10)
      abb301(9)=abb301(9)*abb301(11)
      abb301(11)=abb301(13)*c3
      abb301(13)=abb301(13)*c1
      abb301(9)=-abb301(13)+abb301(9)-abb301(11)
      abb301(11)=-spbk4k3*abb301(9)
      abb301(13)=abb301(11)*spak4l5
      abb301(9)=-spbk3k1*abb301(9)
      abb301(18)=abb301(9)*spak1l5
      abb301(13)=abb301(13)+abb301(18)
      abb301(18)=-4.0_ki*spbe7l5*abb301(20)*abb301(13)
      abb301(13)=spbl5k2*abb301(13)
      abb301(6)=abb301(6)+abb301(13)
      abb301(6)=8.0_ki*abb301(6)
      abb301(13)=-spak4e7*abb301(14)
      abb301(19)=-spak1e7*abb301(12)
      abb301(13)=abb301(13)+abb301(19)
      abb301(13)=16.0_ki*abb301(13)
      abb301(19)=spak2k4*abb301(14)
      abb301(20)=spak1k2*abb301(12)
      abb301(19)=abb301(19)-abb301(20)
      abb301(20)=abb301(11)*spbk7e7
      abb301(21)=-spak4k7*abb301(20)
      abb301(24)=abb301(9)*spbk7e7
      abb301(25)=-spak1k7*abb301(24)
      abb301(19)=abb301(25)+abb301(21)-2.0_ki*abb301(19)
      abb301(19)=4.0_ki*abb301(19)
      abb301(20)=spak4e7*abb301(20)
      abb301(21)=spak1e7*abb301(24)
      abb301(20)=abb301(20)+abb301(21)
      abb301(20)=4.0_ki*abb301(20)
      abb301(21)=4.0_ki*abb301(14)
      abb301(24)=-abb301(22)*abb301(21)
      abb301(14)=abb301(14)*spal5e7
      abb301(25)=8.0_ki*abb301(14)
      abb301(14)=-4.0_ki*abb301(14)
      abb301(21)=spae7k7*abb301(21)
      abb301(11)=-8.0_ki*abb301(11)
      abb301(26)=4.0_ki*abb301(12)
      abb301(22)=-abb301(22)*abb301(26)
      abb301(12)=abb301(12)*spal5e7
      abb301(27)=8.0_ki*abb301(12)
      abb301(12)=-4.0_ki*abb301(12)
      abb301(26)=spae7k7*abb301(26)
      abb301(9)=-8.0_ki*abb301(9)
      R2d301=0.0_ki
      rat2 = rat2 + R2d301
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='301' value='", &
          & R2d301, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd301h0
