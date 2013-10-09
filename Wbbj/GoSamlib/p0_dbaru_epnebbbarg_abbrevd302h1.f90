module     p0_dbaru_epnebbbarg_abbrevd302h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(29), public :: abb302
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
      abb302(4)=sqrt(mB**2)
      abb302(5)=spak2l5**(-1)
      abb302(6)=c4*abb302(3)**2
      abb302(6)=abb302(6)+c2
      abb302(7)=c3*abb302(3)
      abb302(8)=c1*abb302(3)
      abb302(7)=-abb302(7)+abb302(6)-abb302(8)
      abb302(8)=TR*gW
      abb302(8)=abb302(8)**2*CVDU*i_*spak1k4*abb302(2)*abb302(1)
      abb302(7)=abb302(7)*spbk4k3*abb302(8)
      abb302(9)=spbe7k2*spae7k7
      abb302(10)=-abb302(9)*abb302(7)
      abb302(11)=abb302(10)*spak4l6
      abb302(12)=c3+c1
      abb302(8)=spbk3k1*abb302(8)
      abb302(12)=abb302(12)*abb302(8)*abb302(3)
      abb302(6)=abb302(8)*abb302(6)
      abb302(6)=abb302(12)-abb302(6)
      abb302(8)=abb302(9)*abb302(6)
      abb302(9)=abb302(8)*spak1l6
      abb302(9)=abb302(11)+abb302(9)
      abb302(9)=abb302(9)*spbk7l5
      abb302(11)=-spbl6k2*abb302(9)
      abb302(12)=abb302(4)*mB*abb302(5)
      abb302(13)=abb302(12)*spak1k2
      abb302(14)=abb302(13)*abb302(8)
      abb302(15)=abb302(12)*spak2k4
      abb302(16)=abb302(15)*abb302(10)
      abb302(14)=abb302(14)-abb302(16)
      abb302(16)=spbk7k2*abb302(14)
      abb302(11)=abb302(11)+abb302(16)
      abb302(11)=4.0_ki*spak2l6*abb302(11)
      abb302(16)=-abb302(6)*spak1l6
      abb302(17)=abb302(7)*spak4l6
      abb302(16)=abb302(16)+abb302(17)
      abb302(17)=abb302(16)*spbl5k2
      abb302(18)=8.0_ki*spak2l6*spbl6k2*abb302(17)
      abb302(19)=8.0_ki*abb302(9)
      abb302(20)=16.0_ki*abb302(17)
      abb302(15)=abb302(15)*abb302(7)
      abb302(13)=-abb302(13)*abb302(6)
      abb302(13)=abb302(15)-abb302(13)
      abb302(13)=spbe7k2*abb302(13)
      abb302(15)=-spbe7l5*abb302(7)
      abb302(21)=abb302(15)*spak4l6
      abb302(22)=spbe7l5*abb302(6)
      abb302(23)=abb302(22)*spak1l6
      abb302(21)=abb302(21)+abb302(23)
      abb302(23)=abb302(21)*spbl6k2
      abb302(13)=-abb302(23)+abb302(13)
      abb302(13)=abb302(13)*spal6e7
      abb302(9)=abb302(9)-abb302(13)
      abb302(9)=8.0_ki*abb302(9)
      abb302(13)=4.0_ki*abb302(13)
      abb302(24)=8.0_ki*abb302(21)
      abb302(21)=-4.0_ki*abb302(21)
      abb302(14)=-4.0_ki*abb302(14)
      abb302(25)=-spak4k7*abb302(7)
      abb302(26)=spak1k7*abb302(6)
      abb302(25)=abb302(26)+abb302(25)
      abb302(26)=abb302(12)*spbk7e7
      abb302(25)=abb302(26)*abb302(25)
      abb302(23)=-abb302(23)+abb302(25)
      abb302(23)=spak2e7*abb302(23)
      abb302(25)=abb302(7)*spae7k7
      abb302(27)=spak4l6*abb302(25)
      abb302(28)=-abb302(6)*spae7k7
      abb302(29)=spak1l6*abb302(28)
      abb302(27)=abb302(27)+abb302(29)
      abb302(27)=spbk7l5*abb302(27)
      abb302(17)=-spak2e7*abb302(17)
      abb302(17)=abb302(27)+abb302(17)
      abb302(17)=spbe7l6*abb302(17)
      abb302(10)=spak2k4*abb302(10)
      abb302(8)=-spak1k2*abb302(8)
      abb302(8)=abb302(8)+abb302(10)
      abb302(8)=spbk7l5*abb302(8)
      abb302(10)=spak4e7*abb302(7)
      abb302(27)=-spak1e7*abb302(6)
      abb302(10)=abb302(10)+abb302(27)
      abb302(10)=spak2k7*abb302(26)*abb302(10)
      abb302(8)=abb302(10)+abb302(17)+abb302(23)+abb302(8)
      abb302(8)=4.0_ki*abb302(8)
      abb302(10)=-spak2k4*abb302(7)
      abb302(17)=-spak1k2*abb302(6)
      abb302(10)=abb302(10)+abb302(17)
      abb302(12)=abb302(12)+spbl5k2
      abb302(10)=abb302(12)*abb302(10)
      abb302(12)=-spbl6l5*abb302(16)
      abb302(10)=abb302(12)+abb302(10)
      abb302(10)=8.0_ki*abb302(10)
      abb302(12)=abb302(15)*spak4e7
      abb302(16)=abb302(22)*spak1e7
      abb302(12)=abb302(12)+abb302(16)
      abb302(16)=-8.0_ki*abb302(12)
      abb302(12)=4.0_ki*abb302(12)
      abb302(17)=spbk7l5*abb302(25)
      abb302(23)=spak2e7*spbl5k2
      abb302(25)=-abb302(7)*abb302(23)
      abb302(17)=abb302(17)+abb302(25)
      abb302(17)=4.0_ki*abb302(17)
      abb302(7)=8.0_ki*abb302(7)
      abb302(25)=4.0_ki*spak2e7
      abb302(15)=abb302(15)*abb302(25)
      abb302(26)=spbk7l5*abb302(28)
      abb302(23)=abb302(6)*abb302(23)
      abb302(23)=abb302(26)+abb302(23)
      abb302(23)=4.0_ki*abb302(23)
      abb302(6)=-8.0_ki*abb302(6)
      abb302(22)=abb302(22)*abb302(25)
      R2d302=0.0_ki
      rat2 = rat2 + R2d302
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='302' value='", &
          & R2d302, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd302h1
