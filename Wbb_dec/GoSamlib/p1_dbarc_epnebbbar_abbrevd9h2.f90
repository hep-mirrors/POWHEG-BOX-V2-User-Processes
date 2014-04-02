module     p1_dbarc_epnebbbar_abbrevd9h2
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(22), public :: abb9
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
      abb9(5)=spbl5k2**(-1)
      abb9(6)=spak2l6**(-1)
      abb9(7)=spak2l5**(-1)
      abb9(8)=abb9(4)*i_*CVDC*abb9(2)*abb9(1)
      abb9(9)=TR*gW
      abb9(9)=abb9(9)**2
      abb9(10)=abb9(8)*abb9(9)*spbl6k2
      abb9(11)=abb9(3)**2
      abb9(11)=abb9(11)-1.0_ki
      abb9(11)=abb9(11)*c1
      abb9(12)=abb9(10)*abb9(11)
      abb9(10)=abb9(10)*c2
      abb9(13)=abb9(3)*abb9(10)
      abb9(10)=NC*abb9(10)
      abb9(10)=abb9(10)+abb9(12)-abb9(13)
      abb9(12)=spak1k4*abb9(10)
      abb9(13)=spbl6k3*spal5l6
      abb9(14)=spak2l5*spbk3k2
      abb9(13)=abb9(13)-abb9(14)
      abb9(14)=abb9(12)*abb9(13)
      abb9(15)=abb9(10)*abb9(5)
      abb9(16)=NC-abb9(3)
      abb9(16)=abb9(16)*abb9(9)*c2
      abb9(9)=abb9(9)*abb9(11)
      abb9(9)=abb9(9)+abb9(16)
      abb9(8)=abb9(8)*abb9(9)
      abb9(9)=abb9(8)*abb9(6)
      abb9(11)=abb9(9)*spak2l5
      abb9(11)=abb9(11)+abb9(15)
      abb9(16)=mB**2
      abb9(17)=abb9(16)*spbk3k2
      abb9(18)=abb9(11)*abb9(17)*spak1k4
      abb9(14)=abb9(18)+abb9(14)
      abb9(18)=2.0_ki*abb9(14)
      abb9(19)=8.0_ki*abb9(14)
      abb9(14)=-4.0_ki*abb9(14)
      abb9(13)=-abb9(10)*abb9(13)
      abb9(11)=-abb9(17)*abb9(11)
      abb9(11)=abb9(11)+abb9(13)
      abb9(13)=spak1k3*abb9(11)
      abb9(17)=spak2l5*abb9(12)
      abb9(20)=abb9(8)*spak2l5
      abb9(21)=-abb9(6)*abb9(20)
      abb9(15)=abb9(21)-abb9(15)
      abb9(15)=abb9(15)*abb9(16)*spak1k4
      abb9(15)=abb9(15)+abb9(17)
      abb9(15)=spbk4k2*abb9(15)
      abb9(12)=-spbl6k4*spal5l6*abb9(12)
      abb9(12)=abb9(12)+abb9(13)+abb9(15)
      abb9(12)=4.0_ki*abb9(12)
      abb9(13)=16.0_ki*spak1l5
      abb9(15)=-abb9(13)*abb9(10)
      abb9(17)=abb9(5)*abb9(16)*abb9(10)
      abb9(21)=abb9(7)*abb9(17)
      abb9(9)=abb9(16)*abb9(9)
      abb9(9)=abb9(21)+abb9(9)-abb9(10)
      abb9(13)=abb9(9)*abb9(13)
      abb9(21)=-spak1l6*abb9(10)
      abb9(8)=abb9(8)*spak1l5
      abb9(22)=-spbl5k2*abb9(8)
      abb9(21)=abb9(22)+abb9(21)
      abb9(21)=8.0_ki*abb9(21)
      abb9(9)=-spak1k2*abb9(9)
      abb9(8)=-spbl6l5*abb9(8)
      abb9(8)=abb9(8)+abb9(9)
      abb9(8)=8.0_ki*abb9(8)
      abb9(9)=4.0_ki*spal5l6*abb9(10)
      abb9(11)=4.0_ki*spak3k4*abb9(11)
      abb9(10)=spak2l5*abb9(10)
      abb9(16)=-abb9(20)*abb9(16)*abb9(6)
      abb9(10)=abb9(16)-abb9(17)+abb9(10)
      abb9(10)=4.0_ki*abb9(10)
      R2d9=abb9(18)
      rat2 = rat2 + R2d9
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='9' value='", &
          & R2d9, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd9h2
