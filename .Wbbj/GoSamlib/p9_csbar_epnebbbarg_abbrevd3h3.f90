module     p9_csbar_epnebbbarg_abbrevd3h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(18), public :: abb3
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
      abb3(5)=spak2l6**(-1)
      abb3(6)=-c1+2.0_ki*c3
      abb3(7)=abb3(6)*NC
      abb3(8)=c4-c2
      abb3(9)=abb3(7)-abb3(8)
      abb3(10)=abb3(5)*spbl5k1*abb3(9)
      abb3(9)=abb3(4)*spbl6k1*abb3(9)
      abb3(9)=abb3(10)+abb3(9)
      abb3(10)=spbk4k3*spak2k4**2
      abb3(11)=gW*TR
      abb3(11)=abb3(3)*abb3(1)*abb3(2)*CVSC*mB*i_*abb3(11)**2
      abb3(9)=4.0_ki*abb3(9)*abb3(11)*abb3(10)
      abb3(12)=abb3(8)*spbe7l5
      abb3(13)=spbe7l5*abb3(7)
      abb3(13)=-abb3(12)+abb3(13)
      abb3(13)=abb3(5)*abb3(13)
      abb3(14)=abb3(8)*spbe7l6
      abb3(7)=spbe7l6*abb3(7)
      abb3(7)=-abb3(14)+abb3(7)
      abb3(7)=abb3(4)*abb3(7)
      abb3(7)=abb3(13)+abb3(7)
      abb3(11)=2.0_ki*abb3(11)
      abb3(7)=abb3(7)*abb3(11)*abb3(10)
      abb3(10)=c3+c1
      abb3(10)=abb3(10)*NC
      abb3(13)=-spbe7l5*abb3(10)
      abb3(13)=2.0_ki*abb3(12)+abb3(13)
      abb3(13)=abb3(5)*abb3(13)
      abb3(10)=-spbe7l6*abb3(10)
      abb3(10)=2.0_ki*abb3(14)+abb3(10)
      abb3(10)=abb3(4)*abb3(10)
      abb3(10)=abb3(13)+abb3(10)
      abb3(11)=abb3(11)*spak2k4
      abb3(10)=spbk4k3*abb3(11)*spak2e7*abb3(10)
      abb3(13)=-c3+2.0_ki*c1
      abb3(15)=abb3(13)*NC
      abb3(16)=abb3(8)-abb3(15)
      abb3(16)=spbk4k3*abb3(16)*spak4e7
      abb3(17)=spak2e7*spbk3k2
      abb3(18)=abb3(17)*NC
      abb3(13)=abb3(18)*abb3(13)
      abb3(8)=abb3(17)*abb3(8)
      abb3(13)=abb3(16)+abb3(8)-abb3(13)
      abb3(13)=abb3(11)*spbe7k1*abb3(13)
      abb3(16)=abb3(4)*abb3(13)
      abb3(13)=abb3(5)*abb3(13)
      abb3(6)=abb3(6)*abb3(18)
      abb3(6)=abb3(6)-abb3(8)
      abb3(8)=-abb3(5)*spbe7l5
      abb3(17)=-abb3(4)*spbe7l6
      abb3(8)=abb3(8)+abb3(17)
      abb3(6)=abb3(6)*abb3(8)
      abb3(8)=spbe7l5*abb3(15)
      abb3(8)=-abb3(12)+abb3(8)
      abb3(8)=abb3(5)*abb3(8)
      abb3(12)=spbe7l6*abb3(15)
      abb3(12)=-abb3(14)+abb3(12)
      abb3(12)=abb3(4)*abb3(12)
      abb3(8)=abb3(8)+abb3(12)
      abb3(8)=spbk4k3*spak4e7*abb3(8)
      abb3(6)=abb3(8)+abb3(6)
      abb3(6)=abb3(6)*abb3(11)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd3h3
