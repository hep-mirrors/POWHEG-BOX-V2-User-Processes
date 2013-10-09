module     p9_csbar_epnebbbarg_abbrevd1h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(22), public :: abb1
   complex(ki), public :: R2d1
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
      abb1(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb1(2)=es56**(-1)
      abb1(3)=spak2l5**(-1)
      abb1(4)=spak2l6**(-1)
      abb1(5)=c2-c4
      abb1(6)=TR*gW
      abb1(6)=mB*i_*spak2e7*CVSC*abb1(2)*abb1(1)*abb1(6)**2
      abb1(5)=abb1(5)*abb1(6)
      abb1(7)=-abb1(3)*abb1(5)
      abb1(6)=abb1(6)*NC
      abb1(8)=abb1(6)*c1
      abb1(9)=2.0_ki*abb1(8)
      abb1(10)=abb1(9)*abb1(3)
      abb1(6)=abb1(6)*c3
      abb1(11)=abb1(6)*abb1(3)
      abb1(10)=-abb1(7)+abb1(10)-abb1(11)
      abb1(12)=spbl6k1*abb1(10)
      abb1(5)=-abb1(4)*abb1(5)
      abb1(9)=abb1(9)*abb1(4)
      abb1(6)=abb1(6)*abb1(4)
      abb1(9)=-abb1(5)+abb1(9)-abb1(6)
      abb1(13)=spbl5k1*abb1(9)
      abb1(12)=abb1(13)+abb1(12)
      abb1(12)=abb1(12)*spak2k4*spbe7k3
      abb1(13)=abb1(8)*abb1(3)
      abb1(14)=abb1(13)+abb1(11)
      abb1(15)=spak2k4*spbk3k1
      abb1(16)=-abb1(15)*abb1(14)
      abb1(17)=2.0_ki*abb1(15)
      abb1(18)=abb1(17)*abb1(7)
      abb1(16)=abb1(18)+abb1(16)
      abb1(16)=spbe7l6*abb1(16)
      abb1(8)=abb1(8)*abb1(4)
      abb1(18)=abb1(8)+abb1(6)
      abb1(15)=-abb1(15)*abb1(18)
      abb1(17)=abb1(17)*abb1(5)
      abb1(15)=abb1(17)+abb1(15)
      abb1(15)=spbe7l5*abb1(15)
      abb1(12)=abb1(16)+abb1(15)+abb1(12)
      abb1(12)=2.0_ki*abb1(12)
      abb1(15)=spbk3k1*spak3k4
      abb1(16)=abb1(15)*spbe7k3
      abb1(16)=2.0_ki*abb1(16)
      abb1(17)=-abb1(10)*abb1(16)
      abb1(19)=2.0_ki*spbe7k1
      abb1(20)=abb1(10)*abb1(19)
      abb1(16)=-abb1(9)*abb1(16)
      abb1(19)=abb1(9)*abb1(19)
      abb1(14)=abb1(15)*abb1(14)
      abb1(21)=2.0_ki*abb1(15)
      abb1(22)=-abb1(21)*abb1(7)
      abb1(14)=abb1(22)+abb1(14)
      abb1(14)=spbe7l6*abb1(14)
      abb1(15)=abb1(15)*abb1(18)
      abb1(18)=-abb1(21)*abb1(5)
      abb1(15)=abb1(18)+abb1(15)
      abb1(15)=spbe7l5*abb1(15)
      abb1(14)=abb1(14)+abb1(15)
      abb1(14)=2.0_ki*abb1(14)
      abb1(10)=-spbl6k3*abb1(10)
      abb1(9)=-spbl5k3*abb1(9)
      abb1(9)=abb1(10)+abb1(9)
      abb1(9)=2.0_ki*abb1(9)*spak3k4*spbe7k3
      abb1(7)=-abb1(13)+2.0_ki*abb1(11)-abb1(7)
      abb1(7)=spbe7l6*abb1(7)
      abb1(5)=-abb1(8)+2.0_ki*abb1(6)-abb1(5)
      abb1(5)=spbe7l5*abb1(5)
      abb1(5)=abb1(7)+abb1(5)
      abb1(5)=2.0_ki*abb1(5)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd1h3
