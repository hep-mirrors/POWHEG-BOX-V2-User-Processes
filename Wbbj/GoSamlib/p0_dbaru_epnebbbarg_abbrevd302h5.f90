module     p0_dbaru_epnebbbarg_abbrevd302h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(25), public :: abb302
   complex(ki), public :: R2d302
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
      abb302(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb302(2)=1.0_ki/(es34+es567-es12-es234)
      abb302(3)=NC**(-1)
      abb302(4)=sqrt2**(-1)
      abb302(5)=spbk7k2**(-1)
      abb302(6)=sqrt(mB**2)
      abb302(7)=spak2l5**(-1)
      abb302(8)=TR*gW
      abb302(8)=abb302(8)**2*CVDU*i_*spak1k4*abb302(5)*abb302(4)*abb302(2)*abb3&
      &02(1)
      abb302(9)=abb302(8)*spbk4k3
      abb302(10)=abb302(9)*spbl5k2
      abb302(11)=abb302(10)*abb302(3)
      abb302(12)=spbl6k2*spak4l6
      abb302(13)=abb302(11)*abb302(12)
      abb302(14)=abb302(8)*abb302(3)
      abb302(15)=spbk3k1*spbl5k2
      abb302(16)=abb302(14)*abb302(15)
      abb302(17)=spak1l6*spbl6k2
      abb302(18)=abb302(17)*abb302(16)
      abb302(13)=abb302(13)+abb302(18)
      abb302(18)=c1+c3
      abb302(13)=abb302(13)*abb302(18)
      abb302(12)=abb302(12)*abb302(10)
      abb302(19)=abb302(3)**2
      abb302(20)=abb302(12)*abb302(19)
      abb302(15)=abb302(15)*abb302(8)
      abb302(21)=abb302(19)*abb302(15)
      abb302(22)=abb302(21)*abb302(17)
      abb302(20)=abb302(20)+abb302(22)
      abb302(20)=abb302(20)*c4
      abb302(17)=abb302(17)*abb302(15)
      abb302(12)=abb302(17)+abb302(12)
      abb302(12)=abb302(12)*c2
      abb302(12)=-abb302(12)+abb302(13)-abb302(20)
      abb302(13)=abb302(12)*spal6k7
      abb302(17)=-16.0_ki*abb302(13)
      abb302(13)=8.0_ki*abb302(13)
      abb302(12)=8.0_ki*abb302(12)
      abb302(12)=-spak2l6*abb302(12)
      abb302(20)=abb302(10)*spak4l6
      abb302(22)=abb302(19)*abb302(20)
      abb302(21)=abb302(21)*spak1l6
      abb302(21)=abb302(22)+abb302(21)
      abb302(21)=abb302(21)*c4
      abb302(22)=abb302(16)*spak1l6
      abb302(23)=abb302(11)*spak4l6
      abb302(22)=abb302(23)+abb302(22)
      abb302(22)=abb302(22)*abb302(18)
      abb302(23)=abb302(15)*spak1l6
      abb302(20)=abb302(23)+abb302(20)
      abb302(20)=abb302(20)*c2
      abb302(20)=-abb302(21)+abb302(22)-abb302(20)
      abb302(21)=16.0_ki*abb302(20)
      abb302(20)=8.0_ki*abb302(20)
      abb302(19)=abb302(19)*c4
      abb302(19)=abb302(19)+c2
      abb302(15)=-abb302(15)*abb302(19)
      abb302(16)=abb302(16)*abb302(18)
      abb302(15)=abb302(16)+abb302(15)
      abb302(16)=abb302(15)*spak1k7
      abb302(10)=-abb302(10)*abb302(19)
      abb302(11)=abb302(11)*abb302(18)
      abb302(10)=abb302(11)+abb302(10)
      abb302(11)=abb302(10)*spak4k7
      abb302(11)=abb302(16)+abb302(11)
      abb302(16)=16.0_ki*abb302(11)
      abb302(11)=-8.0_ki*abb302(11)
      abb302(22)=abb302(19)*abb302(8)
      abb302(23)=abb302(18)*abb302(14)
      abb302(22)=abb302(22)-abb302(23)
      abb302(22)=abb302(22)*spbk3k1
      abb302(23)=abb302(6)*mB*abb302(7)
      abb302(24)=abb302(22)*abb302(23)
      abb302(15)=abb302(24)-abb302(15)
      abb302(15)=spak1k2*abb302(15)
      abb302(24)=spak1l6*spbk3k1
      abb302(8)=abb302(8)*abb302(24)
      abb302(25)=abb302(9)*spak4l6
      abb302(8)=abb302(8)+abb302(25)
      abb302(8)=-abb302(8)*abb302(19)
      abb302(14)=abb302(14)*abb302(24)
      abb302(24)=abb302(25)*abb302(3)
      abb302(14)=abb302(24)+abb302(14)
      abb302(14)=abb302(14)*abb302(18)
      abb302(8)=abb302(14)+abb302(8)
      abb302(8)=spbl6l5*abb302(8)
      abb302(14)=abb302(18)*abb302(3)
      abb302(14)=-abb302(14)+abb302(19)
      abb302(9)=abb302(9)*abb302(14)
      abb302(14)=-abb302(9)*abb302(23)
      abb302(10)=abb302(14)+abb302(10)
      abb302(10)=spak2k4*abb302(10)
      abb302(8)=abb302(15)+abb302(8)+abb302(10)
      abb302(8)=8.0_ki*abb302(8)
      abb302(9)=8.0_ki*abb302(9)
      abb302(10)=8.0_ki*abb302(22)
      R2d302=0.0_ki
      rat2 = rat2 + R2d302
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='302' value='", &
          & R2d302, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd302h5
