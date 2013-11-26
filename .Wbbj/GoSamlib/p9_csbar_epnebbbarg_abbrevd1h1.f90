module     p9_csbar_epnebbbarg_abbrevd1h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(27), public :: abb1
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
      abb1(4)=spbl6k2**(-1)
      abb1(5)=c4-c2
      abb1(6)=-spbl5k3*abb1(5)
      abb1(7)=-c1+2.0_ki*c3
      abb1(8)=-spbl5k3*abb1(7)
      abb1(9)=NC*abb1(8)
      abb1(9)=-abb1(6)+abb1(9)
      abb1(10)=gW*TR
      abb1(10)=abb1(10)**2*CVSC*abb1(1)*abb1(2)
      abb1(11)=abb1(10)*i_
      abb1(11)=4.0_ki*abb1(11)
      abb1(12)=spak3k4*spbk3k1
      abb1(9)=abb1(11)*abb1(9)*abb1(12)*spak2l6
      abb1(13)=-c3+2.0_ki*c1
      abb1(14)=spbe7k3*spak3k4
      abb1(15)=abb1(14)*NC
      abb1(16)=abb1(13)*abb1(15)*spbk3k1
      abb1(17)=abb1(5)*abb1(14)*spbk3k1
      abb1(16)=abb1(16)-abb1(17)
      abb1(17)=abb1(11)*spak2e7
      abb1(18)=mB**2*abb1(3)*abb1(4)
      abb1(19)=abb1(17)*abb1(18)*abb1(16)
      abb1(20)=spak2l6*spbe7k1*spak4e7
      abb1(21)=abb1(8)*abb1(20)
      abb1(22)=spbk3k1*spal6e7*spak2k4
      abb1(23)=c3+c1
      abb1(24)=-spbe7l5*abb1(23)*abb1(22)
      abb1(21)=abb1(21)+abb1(24)
      abb1(21)=NC*abb1(21)
      abb1(24)=abb1(13)*NC
      abb1(24)=abb1(24)-abb1(5)
      abb1(25)=spbl5k1*spak4l6
      abb1(26)=spbk2k1*abb1(18)*spak2k4
      abb1(25)=abb1(25)+abb1(26)
      abb1(25)=-spak2e7*spbe7k3*abb1(25)*abb1(24)
      abb1(20)=-abb1(6)*abb1(20)
      abb1(26)=2.0_ki*spbe7l5
      abb1(26)=abb1(5)*abb1(26)
      abb1(22)=abb1(26)*abb1(22)
      abb1(20)=abb1(25)+abb1(21)+abb1(20)+abb1(22)
      abb1(21)=2.0_ki*i_
      abb1(10)=abb1(10)*abb1(21)
      abb1(20)=abb1(20)*abb1(10)
      abb1(6)=abb1(6)*abb1(14)
      abb1(8)=abb1(8)*abb1(15)
      abb1(8)=-abb1(6)+abb1(8)
      abb1(21)=abb1(10)*spak2l6
      abb1(8)=abb1(8)*abb1(21)
      abb1(22)=spak2e7*abb1(10)
      abb1(16)=-abb1(16)*abb1(22)
      abb1(15)=abb1(13)*abb1(15)
      abb1(25)=-spbl5k3*abb1(15)
      abb1(6)=-abb1(6)+abb1(25)
      abb1(6)=abb1(6)*abb1(22)
      abb1(25)=NC*abb1(7)
      abb1(25)=-abb1(5)+abb1(25)
      abb1(11)=abb1(11)*spak2l6*spbl5k1*abb1(25)
      abb1(17)=-abb1(17)*abb1(24)*abb1(18)*spbe7k1
      abb1(25)=NC*spbe7l5
      abb1(7)=abb1(7)*abb1(25)
      abb1(27)=abb1(5)*spbe7l5
      abb1(7)=-abb1(27)+abb1(7)
      abb1(7)=abb1(7)*abb1(21)
      abb1(21)=abb1(22)*spbe7k1*abb1(24)
      abb1(13)=-abb1(13)*abb1(25)
      abb1(13)=abb1(27)+abb1(13)
      abb1(13)=abb1(13)*abb1(22)
      abb1(23)=abb1(25)*abb1(23)
      abb1(23)=abb1(23)-abb1(26)
      abb1(10)=abb1(10)*spal6e7*abb1(23)
      abb1(12)=abb1(12)*abb1(10)
      abb1(5)=abb1(14)*abb1(5)
      abb1(5)=abb1(5)-abb1(15)
      abb1(5)=abb1(22)*abb1(5)*abb1(18)*spbk3k2
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd1h1
