module     p1_dbarc_epnebbbarg_abbrevd1h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(34), public :: abb1
   complex(ki), public :: R2d1
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
      abb1(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb1(2)=es56**(-1)
      abb1(3)=spbl5k2**(-1)
      abb1(4)=spak2l6**(-1)
      abb1(5)=c2-c4
      abb1(6)=TR*gW
      abb1(6)=abb1(6)**2*i_*CVDC*abb1(2)*abb1(1)
      abb1(7)=abb1(5)*abb1(6)
      abb1(8)=abb1(6)*NC
      abb1(9)=abb1(8)*c3
      abb1(10)=2.0_ki*abb1(9)
      abb1(8)=abb1(8)*c1
      abb1(7)=abb1(7)+abb1(10)-abb1(8)
      abb1(11)=abb1(3)*mB**2*spak1k2*abb1(4)
      abb1(12)=-abb1(11)*abb1(7)*spbk3k2**2
      abb1(13)=abb1(6)*spbk3k2
      abb1(14)=-abb1(13)*abb1(5)
      abb1(15)=abb1(10)*spbk3k2
      abb1(16)=abb1(8)*spbk3k2
      abb1(15)=abb1(16)+abb1(14)-abb1(15)
      abb1(17)=spbl6k3*spak1l5*abb1(15)
      abb1(12)=abb1(12)+abb1(17)
      abb1(12)=4.0_ki*spak3k4*abb1(12)
      abb1(17)=2.0_ki*spbe7l6
      abb1(13)=abb1(5)*abb1(17)*abb1(13)
      abb1(18)=abb1(9)*spbk3k2
      abb1(19)=abb1(18)+abb1(16)
      abb1(19)=spbe7l6*abb1(19)
      abb1(13)=abb1(13)+abb1(19)
      abb1(19)=spak1k4*spal5e7
      abb1(20)=abb1(13)*abb1(19)
      abb1(21)=-abb1(5)*abb1(6)*spbe7k2
      abb1(10)=abb1(10)*spbe7k2
      abb1(22)=abb1(8)*spbe7k2
      abb1(10)=abb1(21)-abb1(10)+abb1(22)
      abb1(23)=spak1l5*abb1(10)
      abb1(24)=abb1(23)*spbl6k3
      abb1(25)=abb1(24)*spak4e7
      abb1(26)=abb1(10)*spbk3k2
      abb1(27)=abb1(11)*spak4e7
      abb1(28)=abb1(26)*abb1(27)
      abb1(29)=abb1(6)*spak1e7
      abb1(30)=abb1(29)*c4
      abb1(29)=abb1(29)*c2
      abb1(31)=abb1(9)*spak1e7
      abb1(29)=-abb1(30)+abb1(29)-abb1(31)
      abb1(30)=2.0_ki*spak1e7
      abb1(31)=abb1(30)*abb1(8)
      abb1(31)=abb1(31)+abb1(29)
      abb1(32)=abb1(31)*spbl6k2
      abb1(33)=abb1(32)*spak4l5
      abb1(34)=abb1(33)*spbe7k3
      abb1(20)=-abb1(20)+abb1(25)+abb1(28)-abb1(34)
      abb1(25)=4.0_ki*abb1(20)
      abb1(20)=-2.0_ki*abb1(20)
      abb1(15)=abb1(15)*abb1(11)
      abb1(7)=-spak1l5*abb1(7)
      abb1(28)=spbl6k3*abb1(7)
      abb1(15)=abb1(15)+abb1(28)
      abb1(28)=2.0_ki*spak3k4
      abb1(34)=abb1(28)*spbe7k3
      abb1(15)=abb1(15)*abb1(34)
      abb1(14)=abb1(18)+abb1(14)
      abb1(14)=spak1e7*abb1(14)
      abb1(16)=-abb1(16)*abb1(30)
      abb1(14)=abb1(16)+abb1(14)
      abb1(14)=abb1(14)*abb1(34)
      abb1(16)=-spbl6k3*abb1(31)*abb1(34)
      abb1(18)=-abb1(26)*abb1(11)
      abb1(18)=abb1(18)-abb1(24)
      abb1(18)=spak3e7*abb1(18)
      abb1(24)=-abb1(10)*abb1(27)
      abb1(6)=2.0_ki*abb1(6)
      abb1(5)=abb1(5)*abb1(6)
      abb1(5)=abb1(5)+abb1(9)+abb1(8)
      abb1(5)=abb1(5)*spbe7l6
      abb1(6)=abb1(5)*abb1(19)
      abb1(6)=abb1(24)+abb1(6)
      abb1(6)=spbk4k2*abb1(6)
      abb1(19)=spbe7k4*abb1(33)
      abb1(23)=-spbl6k4*abb1(23)*spak4e7
      abb1(24)=spak3l5*abb1(32)*spbe7k3
      abb1(13)=abb1(13)*spal5e7
      abb1(26)=spak1k3*abb1(13)
      abb1(6)=abb1(26)+abb1(24)+abb1(23)+abb1(19)+abb1(18)+abb1(6)
      abb1(6)=2.0_ki*abb1(6)
      abb1(18)=4.0_ki*spbl6k2*abb1(7)
      abb1(7)=spbe7l6*abb1(7)
      abb1(10)=-abb1(10)*abb1(11)
      abb1(7)=abb1(10)+abb1(7)
      abb1(7)=2.0_ki*abb1(7)
      abb1(9)=abb1(9)*spbe7k2
      abb1(9)=abb1(9)+abb1(21)
      abb1(9)=spak1e7*abb1(9)
      abb1(10)=-abb1(22)*abb1(30)
      abb1(9)=abb1(10)+abb1(9)
      abb1(9)=2.0_ki*abb1(9)
      abb1(10)=spbe7l6*abb1(29)
      abb1(8)=abb1(17)*abb1(8)*spak1e7
      abb1(8)=abb1(8)+abb1(10)
      abb1(8)=2.0_ki*abb1(8)
      abb1(10)=abb1(28)*abb1(13)
      abb1(5)=-2.0_ki*spal5e7*abb1(5)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd1h2
