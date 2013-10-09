module     p9_csbar_epnebbbarg_abbrevd3h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(23), public :: abb3
   complex(ki), public :: R2d3
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb3(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb3(2)=es234**(-1)
      abb3(3)=es56**(-1)
      abb3(4)=spak2l5**(-1)
      abb3(5)=spbl6k2**(-1)
      abb3(6)=abb3(3)*i_*CVSC*abb3(2)*abb3(1)
      abb3(7)=TR*gW
      abb3(7)=abb3(7)**2
      abb3(8)=abb3(6)*abb3(7)*spak2k4
      abb3(9)=abb3(8)*spbk3k2
      abb3(10)=c2-c4
      abb3(11)=-abb3(9)*abb3(10)
      abb3(9)=NC*abb3(9)
      abb3(12)=abb3(9)*c3
      abb3(13)=abb3(9)*c1
      abb3(14)=-2.0_ki*abb3(12)+abb3(11)+abb3(13)
      abb3(14)=abb3(14)*spak2l6
      abb3(8)=abb3(8)*spbk4k3
      abb3(15)=-abb3(8)*abb3(10)
      abb3(16)=abb3(8)*NC
      abb3(17)=2.0_ki*c3
      abb3(18)=abb3(17)-c1
      abb3(19)=-abb3(16)*abb3(18)
      abb3(15)=abb3(19)+abb3(15)
      abb3(15)=spak4l6*abb3(15)
      abb3(15)=abb3(15)+abb3(14)
      abb3(15)=spbl5k1*abb3(15)
      abb3(18)=abb3(18)*NC
      abb3(18)=abb3(10)+abb3(18)
      abb3(19)=abb3(4)*abb3(5)*mB**2
      abb3(6)=abb3(7)*spbk4k3*abb3(19)*spak2k4**2*abb3(6)*abb3(18)
      abb3(7)=-spbk2k1*abb3(6)
      abb3(7)=abb3(15)+abb3(7)
      abb3(7)=4.0_ki*abb3(7)
      abb3(15)=2.0_ki*c1
      abb3(9)=abb3(15)*abb3(9)
      abb3(9)=-abb3(12)+abb3(9)-abb3(11)
      abb3(9)=abb3(9)*spak2e7
      abb3(18)=abb3(9)*spbe7k1
      abb3(20)=abb3(19)*abb3(18)
      abb3(15)=abb3(15)-c3
      abb3(15)=abb3(15)*NC
      abb3(15)=abb3(15)+abb3(10)
      abb3(21)=-abb3(15)*spbe7k1
      abb3(22)=abb3(8)*spak4e7
      abb3(19)=abb3(22)*abb3(19)
      abb3(23)=-abb3(19)*abb3(21)
      abb3(20)=abb3(20)+abb3(23)
      abb3(20)=4.0_ki*abb3(20)
      abb3(6)=-spbe7k2*abb3(6)
      abb3(8)=-abb3(10)*abb3(8)*spbe7l5
      abb3(10)=abb3(16)*spbe7l5
      abb3(16)=abb3(10)*c1
      abb3(17)=-abb3(10)*abb3(17)
      abb3(17)=abb3(16)+abb3(17)+abb3(8)
      abb3(17)=spak4l6*abb3(17)
      abb3(14)=spbe7l5*abb3(14)
      abb3(6)=abb3(14)+abb3(6)+abb3(17)
      abb3(6)=2.0_ki*abb3(6)
      abb3(14)=abb3(22)*abb3(21)
      abb3(14)=-abb3(18)+abb3(14)
      abb3(14)=2.0_ki*abb3(14)
      abb3(17)=abb3(22)*abb3(15)
      abb3(9)=abb3(9)+abb3(17)
      abb3(9)=2.0_ki*spbe7l5*abb3(9)
      abb3(10)=abb3(10)*c3
      abb3(8)=-abb3(16)-abb3(10)+2.0_ki*abb3(8)
      abb3(8)=2.0_ki*spal6e7*abb3(8)
      abb3(10)=-abb3(13)-abb3(12)+2.0_ki*abb3(11)
      abb3(10)=spal6e7*spbe7l5*abb3(10)
      abb3(11)=-spbe7k2*abb3(19)*abb3(15)
      abb3(10)=abb3(10)+abb3(11)
      abb3(10)=2.0_ki*abb3(10)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd3h1
