module     p1_dbarc_epnebbbarg_abbrevd3h3
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(30), public :: abb3
   complex(ki), public :: R2d3
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
      abb3(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb3(2)=es234**(-1)
      abb3(3)=es56**(-1)
      abb3(4)=spak2l5**(-1)
      abb3(5)=spak2l6**(-1)
      abb3(6)=c3*spak1k2
      abb3(7)=c1*spak1k2
      abb3(6)=-abb3(7)+2.0_ki*abb3(6)
      abb3(8)=TR*gW
      abb3(8)=abb3(8)**2*CVDC*i_*mB*abb3(3)*abb3(1)
      abb3(9)=abb3(2)*abb3(8)
      abb3(10)=abb3(9)*spbk3k2
      abb3(11)=abb3(10)*NC
      abb3(12)=abb3(11)*abb3(4)
      abb3(13)=-abb3(12)*abb3(6)
      abb3(14)=c2-c4
      abb3(15)=-spak1k2*abb3(14)
      abb3(16)=abb3(15)*abb3(10)
      abb3(17)=abb3(4)*abb3(16)
      abb3(13)=abb3(17)+abb3(13)
      abb3(13)=spbl6k3*abb3(13)
      abb3(17)=abb3(11)*abb3(5)
      abb3(18)=-abb3(17)*abb3(6)
      abb3(16)=abb3(5)*abb3(16)
      abb3(16)=abb3(16)+abb3(18)
      abb3(16)=spbl5k3*abb3(16)
      abb3(13)=abb3(13)+abb3(16)
      abb3(13)=spak3k4*abb3(13)
      abb3(16)=abb3(15)*abb3(10)*spak2k4
      abb3(18)=-abb3(4)*abb3(16)
      abb3(19)=abb3(6)*spak2k4
      abb3(20)=abb3(12)*abb3(19)
      abb3(18)=abb3(20)+abb3(18)
      abb3(18)=spbl6k2*abb3(18)
      abb3(16)=-abb3(5)*abb3(16)
      abb3(19)=abb3(17)*abb3(19)
      abb3(16)=abb3(19)+abb3(16)
      abb3(16)=spbl5k2*abb3(16)
      abb3(13)=abb3(16)+abb3(18)+abb3(13)
      abb3(13)=4.0_ki*abb3(13)
      abb3(16)=-c3+2.0_ki*c1
      abb3(18)=spak2k4*spak1e7
      abb3(19)=-abb3(18)*abb3(16)
      abb3(20)=spbe7l6*abb3(4)
      abb3(21)=spbe7l5*abb3(5)
      abb3(20)=abb3(20)+abb3(21)
      abb3(11)=abb3(11)*abb3(20)
      abb3(21)=-abb3(11)*abb3(19)
      abb3(22)=abb3(14)*abb3(18)
      abb3(23)=abb3(10)*abb3(20)
      abb3(24)=abb3(23)*abb3(22)
      abb3(25)=abb3(11)*abb3(6)
      abb3(26)=-abb3(23)*abb3(15)
      abb3(25)=abb3(25)+abb3(26)
      abb3(26)=abb3(25)*spak4e7
      abb3(23)=abb3(23)*spak2e7
      abb3(27)=-abb3(23)*abb3(14)
      abb3(28)=c1+c3
      abb3(28)=spak2e7*abb3(28)
      abb3(29)=abb3(11)*abb3(28)
      abb3(27)=-abb3(29)+2.0_ki*abb3(27)
      abb3(29)=2.0_ki*spak1k4
      abb3(30)=-abb3(27)*abb3(29)
      abb3(21)=-abb3(30)+abb3(24)+abb3(26)+abb3(21)
      abb3(21)=4.0_ki*abb3(21)
      abb3(9)=abb3(9)*abb3(20)
      abb3(24)=NC*abb3(9)
      abb3(26)=abb3(28)*abb3(24)
      abb3(28)=-abb3(9)*abb3(14)
      abb3(30)=abb3(28)*spak2e7
      abb3(26)=abb3(26)-2.0_ki*abb3(30)
      abb3(26)=abb3(26)*abb3(29)
      abb3(6)=abb3(6)*abb3(24)
      abb3(9)=abb3(15)*abb3(9)
      abb3(6)=abb3(9)-abb3(6)
      abb3(6)=abb3(6)*spak4e7
      abb3(6)=abb3(26)+abb3(6)
      abb3(9)=spbk4k2*abb3(6)
      abb3(16)=-spak1e7*abb3(16)
      abb3(26)=-abb3(16)*NC
      abb3(29)=spak1e7*abb3(14)
      abb3(26)=abb3(29)+abb3(26)
      abb3(8)=abb3(26)*abb3(8)*abb3(20)
      abb3(20)=-spak3e7*abb3(25)
      abb3(25)=-2.0_ki*abb3(27)
      abb3(26)=spak1k3*abb3(25)
      abb3(29)=spak1e7*abb3(28)
      abb3(30)=abb3(24)*abb3(16)
      abb3(29)=abb3(30)+abb3(29)
      abb3(29)=es34*abb3(29)
      abb3(8)=abb3(29)+abb3(26)+abb3(20)+abb3(9)+abb3(8)
      abb3(8)=2.0_ki*abb3(8)
      abb3(9)=-abb3(24)*abb3(19)
      abb3(18)=-abb3(18)*abb3(28)
      abb3(6)=abb3(9)+abb3(18)-abb3(6)
      abb3(6)=spbk4k3*abb3(6)
      abb3(9)=abb3(23)*abb3(15)
      abb3(7)=-abb3(7)*abb3(11)*spak2e7
      abb3(7)=abb3(7)+abb3(9)
      abb3(6)=3.0_ki*abb3(7)+abb3(6)
      abb3(6)=2.0_ki*abb3(6)
      abb3(7)=abb3(14)*abb3(10)*spak1e7
      abb3(9)=-abb3(4)*abb3(7)
      abb3(11)=abb3(12)*abb3(16)
      abb3(9)=abb3(11)+abb3(9)
      abb3(11)=spbe7k3*spak3k4
      abb3(9)=abb3(9)*abb3(11)
      abb3(10)=-abb3(10)*abb3(22)
      abb3(14)=-abb3(4)*abb3(10)
      abb3(12)=-abb3(12)*abb3(19)
      abb3(12)=abb3(12)+abb3(14)
      abb3(12)=spbe7k2*abb3(12)
      abb3(9)=abb3(9)+abb3(12)
      abb3(9)=2.0_ki*abb3(9)
      abb3(7)=-abb3(5)*abb3(7)
      abb3(12)=abb3(17)*abb3(16)
      abb3(7)=abb3(12)+abb3(7)
      abb3(7)=abb3(7)*abb3(11)
      abb3(10)=-abb3(5)*abb3(10)
      abb3(11)=-abb3(17)*abb3(19)
      abb3(10)=abb3(11)+abb3(10)
      abb3(10)=spbe7k2*abb3(10)
      abb3(7)=abb3(7)+abb3(10)
      abb3(7)=2.0_ki*abb3(7)
      abb3(10)=spak3k4*abb3(25)
      abb3(11)=2.0_ki*spak2k4*abb3(27)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd3h3
