module     p1_dbarc_epnebbbar_abbrevd9h3
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(21), public :: abb9
   complex(ki), public :: R2d9
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_color, only: TR
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      implicit none
      abb9(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb9(2)=1.0_ki/(es34+es56-es12-es234)
      abb9(3)=NC**(-1)
      abb9(4)=es56**(-1)
      abb9(5)=spak2l5**(-1)
      abb9(6)=spak2l6**(-1)
      abb9(7)=spak1k4*spbl5k2
      abb9(8)=abb9(7)*spbl6k3
      abb9(9)=spak1k4*spbl6k2
      abb9(10)=abb9(9)*spbl5k3
      abb9(8)=abb9(8)+abb9(10)
      abb9(10)=abb9(3)**2
      abb9(10)=abb9(10)-1.0_ki
      abb9(11)=TR*gW
      abb9(11)=CVDC*i_*mB*abb9(4)*abb9(2)*abb9(1)*abb9(11)**2
      abb9(10)=c1*abb9(11)*abb9(10)
      abb9(12)=abb9(11)*c2
      abb9(13)=abb9(3)*abb9(12)
      abb9(10)=abb9(10)-abb9(13)
      abb9(8)=abb9(8)*abb9(10)
      abb9(12)=abb9(12)*NC
      abb9(13)=abb9(12)+abb9(10)
      abb9(14)=spak1k4*abb9(13)
      abb9(15)=abb9(6)*spbl5k2
      abb9(16)=abb9(15)*spbl5k3
      abb9(17)=spak2l5*abb9(16)*abb9(14)
      abb9(18)=abb9(5)*spbl6k2
      abb9(19)=abb9(18)*spbl6k3
      abb9(14)=spak2l6*abb9(19)*abb9(14)
      abb9(20)=spbl6k3*spbl5k2
      abb9(21)=spbl5k3*spbl6k2
      abb9(20)=abb9(20)+abb9(21)
      abb9(12)=abb9(20)*spak1k4*abb9(12)
      abb9(8)=abb9(14)+abb9(17)+abb9(8)+abb9(12)
      abb9(12)=2.0_ki*abb9(8)
      abb9(14)=8.0_ki*abb9(8)
      abb9(8)=-4.0_ki*abb9(8)
      abb9(10)=abb9(20)*abb9(10)
      abb9(11)=NC*c2*abb9(11)*abb9(20)
      abb9(16)=abb9(16)*abb9(13)*spak2l5
      abb9(17)=abb9(19)*abb9(13)*spak2l6
      abb9(10)=abb9(16)+abb9(11)+abb9(17)+abb9(10)
      abb9(11)=-spak1k3*abb9(10)
      abb9(7)=-abb9(7)*abb9(13)
      abb9(16)=abb9(13)*abb9(18)
      abb9(17)=abb9(16)*spak2l6
      abb9(19)=-spak1k4*abb9(17)
      abb9(7)=abb9(19)+abb9(7)
      abb9(7)=spbl6k4*abb9(7)
      abb9(9)=-abb9(9)*abb9(13)
      abb9(19)=abb9(13)*abb9(15)
      abb9(20)=abb9(19)*spak2l5
      abb9(21)=-spak1k4*abb9(20)
      abb9(9)=abb9(21)+abb9(9)
      abb9(9)=spbl5k4*abb9(9)
      abb9(7)=abb9(9)+abb9(11)+abb9(7)
      abb9(7)=4.0_ki*abb9(7)
      abb9(9)=abb9(18)+abb9(15)
      abb9(11)=16.0_ki*spak1k2
      abb9(9)=abb9(11)*abb9(9)*abb9(13)
      abb9(11)=spak1l6*abb9(6)
      abb9(15)=spak1l5*abb9(5)
      abb9(18)=abb9(11)-abb9(15)
      abb9(18)=16.0_ki*spbl6l5*abb9(13)*abb9(18)
      abb9(16)=-spak1l6*abb9(16)
      abb9(21)=abb9(13)*spbl5k2
      abb9(15)=-abb9(21)*abb9(15)
      abb9(15)=abb9(16)+abb9(15)
      abb9(15)=8.0_ki*abb9(15)
      abb9(13)=abb9(13)*spbl6k2
      abb9(11)=-abb9(13)*abb9(11)
      abb9(16)=-spak1l5*abb9(19)
      abb9(11)=abb9(11)+abb9(16)
      abb9(11)=8.0_ki*abb9(11)
      abb9(16)=abb9(17)+abb9(21)
      abb9(16)=4.0_ki*abb9(16)
      abb9(13)=abb9(20)+abb9(13)
      abb9(13)=4.0_ki*abb9(13)
      abb9(10)=-4.0_ki*spak3k4*abb9(10)
      R2d9=abb9(12)
      rat2 = rat2 + R2d9
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='9' value='", &
          & R2d9, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd9h3
