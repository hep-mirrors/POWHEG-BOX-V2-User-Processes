module     p1_dbarc_epnebbbarg_abbrevd2h3
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(21), public :: abb2
   complex(ki), public :: R2d2
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb2(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb2(2)=1.0_ki/(es34+es567-es12-es234)
      abb2(3)=es56**(-1)
      abb2(4)=spak2l5**(-1)
      abb2(5)=spak2l6**(-1)
      abb2(6)=-c1+2.0_ki*c3
      abb2(7)=TR*gW
      abb2(7)=abb2(7)**2*mB*i_*spak1k4*CVDC*abb2(3)*abb2(2)*abb2(1)
      abb2(8)=abb2(7)*NC
      abb2(9)=abb2(8)*spbk4k3
      abb2(10)=-abb2(9)*abb2(6)
      abb2(11)=c2-c4
      abb2(12)=abb2(7)*spbk4k3
      abb2(13)=-abb2(12)*abb2(11)
      abb2(10)=abb2(13)+abb2(10)
      abb2(10)=abb2(10)*spak2k4
      abb2(8)=abb2(8)*spbk3k1
      abb2(14)=-abb2(8)*abb2(6)
      abb2(7)=abb2(7)*spbk3k1
      abb2(15)=-abb2(7)*abb2(11)
      abb2(14)=abb2(15)+abb2(14)
      abb2(14)=abb2(14)*spak1k2
      abb2(10)=abb2(10)-abb2(14)
      abb2(14)=spbl6k2*abb2(4)*abb2(10)
      abb2(10)=spbl5k2*abb2(5)*abb2(10)
      abb2(10)=abb2(14)+abb2(10)
      abb2(10)=4.0_ki*abb2(10)
      abb2(14)=spbe7l6*abb2(4)
      abb2(16)=spbe7l5*abb2(5)
      abb2(14)=abb2(14)+abb2(16)
      abb2(12)=abb2(12)*abb2(14)
      abb2(16)=abb2(11)*abb2(12)
      abb2(17)=abb2(9)*abb2(14)
      abb2(18)=-c3+2.0_ki*c1
      abb2(19)=-abb2(17)*abb2(18)
      abb2(19)=abb2(19)-abb2(16)
      abb2(19)=spak4e7*abb2(19)
      abb2(7)=abb2(7)*abb2(14)
      abb2(20)=abb2(11)*abb2(7)
      abb2(14)=abb2(8)*abb2(14)
      abb2(21)=-abb2(14)*abb2(18)
      abb2(21)=abb2(21)-abb2(20)
      abb2(21)=spak1e7*abb2(21)
      abb2(19)=abb2(19)+abb2(21)
      abb2(19)=4.0_ki*abb2(19)
      abb2(21)=-abb2(17)*abb2(6)
      abb2(16)=abb2(21)-abb2(16)
      abb2(16)=spak2k4*abb2(16)
      abb2(6)=abb2(14)*abb2(6)
      abb2(6)=abb2(6)+abb2(20)
      abb2(6)=spak1k2*abb2(6)
      abb2(6)=abb2(16)+abb2(6)
      abb2(6)=2.0_ki*abb2(6)
      abb2(11)=-2.0_ki*abb2(11)
      abb2(12)=-abb2(12)*abb2(11)
      abb2(16)=c1+c3
      abb2(17)=abb2(17)*abb2(16)
      abb2(12)=abb2(17)+abb2(12)
      abb2(17)=2.0_ki*spak2e7
      abb2(12)=abb2(12)*abb2(17)
      abb2(8)=abb2(18)*abb2(8)
      abb2(8)=abb2(8)-abb2(15)
      abb2(8)=abb2(8)*spak1e7
      abb2(9)=abb2(18)*abb2(9)
      abb2(9)=abb2(9)-abb2(13)
      abb2(9)=abb2(9)*spak4e7
      abb2(8)=abb2(8)+abb2(9)
      abb2(9)=2.0_ki*spbe7k2
      abb2(13)=abb2(9)*abb2(4)*abb2(8)
      abb2(8)=abb2(9)*abb2(5)*abb2(8)
      abb2(7)=-abb2(7)*abb2(11)
      abb2(9)=abb2(14)*abb2(16)
      abb2(7)=abb2(9)+abb2(7)
      abb2(7)=abb2(7)*abb2(17)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd2h3
