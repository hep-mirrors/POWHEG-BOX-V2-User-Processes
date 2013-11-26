module     p1_dbarc_epnebbbarg_abbrevd8h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(36), public :: abb8
   complex(ki), public :: R2d8
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
      abb8(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb8(2)=sqrt(mB**2)
      abb8(3)=es234**(-1)
      abb8(4)=es567**(-1)
      abb8(5)=spbl5k2**(-1)
      abb8(6)=spbl6k2**(-1)
      abb8(7)=1.0_ki/(es34+es567-es12-es234)
      abb8(8)=TR*gW
      abb8(8)=abb8(8)**2*i_*CVDC*abb8(4)*abb8(1)
      abb8(9)=abb8(8)*spbe7k2
      abb8(10)=abb8(9)*abb8(2)
      abb8(11)=spak1k4*abb8(7)
      abb8(12)=abb8(11)*abb8(10)
      abb8(13)=c2-c4
      abb8(14)=-abb8(12)*abb8(13)
      abb8(15)=c1*NC
      abb8(16)=abb8(12)*abb8(15)
      abb8(17)=c3*NC
      abb8(18)=abb8(12)*abb8(17)
      abb8(19)=-abb8(18)-abb8(16)-2.0_ki*abb8(14)
      abb8(20)=2.0_ki*spal5l6
      abb8(19)=spak4e7*abb8(19)*abb8(20)
      abb8(21)=2.0_ki*abb8(15)
      abb8(22)=abb8(21)*abb8(12)
      abb8(22)=-abb8(18)+abb8(22)+abb8(14)
      abb8(23)=-spak4l5*spal6e7*abb8(22)
      abb8(24)=2.0_ki*abb8(17)
      abb8(25)=abb8(24)*abb8(12)
      abb8(16)=abb8(14)+abb8(25)-abb8(16)
      abb8(25)=spak4l6*spal5e7*abb8(16)
      abb8(19)=abb8(25)+abb8(23)+abb8(19)
      abb8(19)=spbk4k3*abb8(19)
      abb8(23)=spbk3k2*abb8(3)
      abb8(10)=abb8(23)*abb8(10)
      abb8(25)=abb8(13)*abb8(10)
      abb8(26)=abb8(9)*NC
      abb8(27)=abb8(26)*abb8(2)
      abb8(28)=abb8(27)*abb8(23)
      abb8(29)=abb8(28)*c3
      abb8(28)=abb8(28)*c1
      abb8(30)=-abb8(29)+2.0_ki*abb8(28)-abb8(25)
      abb8(30)=spak2k4*abb8(30)
      abb8(22)=-spbk3k1*abb8(22)
      abb8(31)=abb8(3)*abb8(2)*spak3k4
      abb8(32)=spbe7k3*spbk3k2*abb8(8)*abb8(31)
      abb8(33)=abb8(13)+abb8(17)
      abb8(21)=abb8(21)-abb8(33)
      abb8(34)=-abb8(21)*abb8(32)
      abb8(22)=abb8(22)+abb8(34)+abb8(30)
      abb8(22)=spak1l5*spal6e7*abb8(22)
      abb8(30)=c3-c1
      abb8(34)=spbk3k2**2
      abb8(35)=spak1e7*abb8(5)
      abb8(26)=abb8(26)*abb8(6)*abb8(30)*abb8(34)*abb8(35)*mB**2*abb8(31)
      abb8(30)=c3+c1
      abb8(31)=abb8(23)*spak1e7
      abb8(27)=abb8(31)*abb8(27)*abb8(30)
      abb8(30)=2.0_ki*spak1e7
      abb8(36)=-abb8(30)*abb8(13)
      abb8(10)=abb8(10)*abb8(36)
      abb8(10)=abb8(10)+abb8(27)
      abb8(10)=spak2k4*abb8(10)
      abb8(14)=-abb8(30)*abb8(14)
      abb8(18)=-spak1e7*abb8(18)
      abb8(27)=abb8(15)*spak1e7
      abb8(12)=-abb8(12)*abb8(27)
      abb8(12)=abb8(18)+abb8(12)+abb8(14)
      abb8(12)=spbk3k1*abb8(12)
      abb8(14)=abb8(17)*spak1e7
      abb8(14)=abb8(14)+abb8(27)
      abb8(18)=abb8(36)+abb8(14)
      abb8(36)=-abb8(18)*abb8(32)
      abb8(10)=abb8(12)+abb8(36)+abb8(10)
      abb8(10)=abb8(10)*abb8(20)
      abb8(12)=-2.0_ki*abb8(29)+abb8(28)+abb8(25)
      abb8(12)=spak2k4*abb8(12)
      abb8(16)=spbk3k1*abb8(16)
      abb8(20)=abb8(13)+abb8(15)
      abb8(24)=abb8(24)-abb8(20)
      abb8(25)=abb8(24)*abb8(32)
      abb8(12)=abb8(16)+abb8(25)+abb8(12)
      abb8(12)=spak1l6*spal5e7*abb8(12)
      abb8(10)=abb8(12)+abb8(10)+3.0_ki*abb8(26)+abb8(19)+abb8(22)
      abb8(10)=2.0_ki*abb8(10)
      abb8(12)=abb8(6)*abb8(33)
      abb8(16)=2.0_ki*abb8(6)
      abb8(19)=-abb8(15)*abb8(16)
      abb8(12)=abb8(19)+abb8(12)
      abb8(8)=abb8(8)*mB
      abb8(19)=abb8(8)*spak3k4*abb8(34)*abb8(3)
      abb8(12)=spak1l5*abb8(19)*abb8(12)
      abb8(19)=abb8(21)*abb8(19)
      abb8(22)=-spak1l6*abb8(5)*abb8(19)
      abb8(12)=abb8(12)+abb8(22)
      abb8(12)=4.0_ki*abb8(12)
      abb8(19)=2.0_ki*abb8(35)*abb8(19)
      abb8(22)=abb8(23)*spak3k4
      abb8(8)=abb8(22)*abb8(8)
      abb8(25)=abb8(8)*abb8(6)
      abb8(26)=abb8(25)*abb8(33)
      abb8(28)=abb8(16)*abb8(8)
      abb8(29)=-abb8(15)*abb8(28)
      abb8(26)=abb8(29)+abb8(26)
      abb8(26)=spbe7k3*abb8(26)
      abb8(9)=abb8(9)*mB
      abb8(29)=abb8(9)*abb8(23)
      abb8(32)=abb8(29)*abb8(6)
      abb8(33)=-abb8(32)*abb8(33)
      abb8(16)=abb8(16)*abb8(29)
      abb8(29)=abb8(15)*abb8(16)
      abb8(29)=abb8(29)+abb8(33)
      abb8(29)=spak2k4*abb8(29)
      abb8(11)=abb8(9)*abb8(11)
      abb8(33)=abb8(11)*abb8(6)
      abb8(34)=abb8(21)*abb8(33)
      abb8(36)=-spbk3k1*abb8(34)
      abb8(26)=abb8(36)+abb8(26)+abb8(29)
      abb8(26)=spak1l5*abb8(26)
      abb8(29)=-spak4l5*spbk4k3*abb8(34)
      abb8(26)=abb8(29)+abb8(26)
      abb8(26)=2.0_ki*abb8(26)
      abb8(29)=-abb8(17)*abb8(30)
      abb8(30)=-spak1e7*abb8(13)
      abb8(27)=abb8(29)+abb8(27)-abb8(30)
      abb8(9)=abb8(9)*abb8(5)
      abb8(22)=abb8(22)*abb8(9)
      abb8(27)=2.0_ki*abb8(22)*abb8(27)
      abb8(9)=abb8(9)*spak2k4
      abb8(29)=-abb8(31)*abb8(9)
      abb8(31)=abb8(11)*abb8(5)
      abb8(34)=spak4e7*spbk4k3
      abb8(36)=abb8(34)*abb8(31)
      abb8(29)=abb8(36)+abb8(29)
      abb8(29)=abb8(21)*abb8(29)
      abb8(13)=abb8(17)+abb8(15)-2.0_ki*abb8(13)
      abb8(8)=spbe7k3*abb8(8)*abb8(35)*abb8(13)
      abb8(11)=spbk3k1*abb8(11)*abb8(21)*abb8(35)
      abb8(8)=abb8(11)+abb8(8)+abb8(29)
      abb8(8)=2.0_ki*abb8(8)
      abb8(11)=spbk3k1*abb8(18)
      abb8(13)=abb8(34)*abb8(13)
      abb8(11)=abb8(13)+abb8(11)
      abb8(11)=abb8(33)*abb8(11)
      abb8(13)=abb8(25)*abb8(14)
      abb8(15)=abb8(28)*abb8(30)
      abb8(13)=abb8(15)+abb8(13)
      abb8(13)=spbe7k3*abb8(13)
      abb8(14)=-abb8(32)*abb8(14)
      abb8(15)=-abb8(16)*abb8(30)
      abb8(14)=abb8(15)+abb8(14)
      abb8(14)=spak2k4*abb8(14)
      abb8(11)=abb8(13)+abb8(14)+abb8(11)
      abb8(11)=2.0_ki*abb8(11)
      abb8(13)=abb8(24)*abb8(31)
      abb8(14)=2.0_ki*spbk4k3*spal6e7*abb8(13)
      abb8(15)=spal6e7*abb8(22)*abb8(24)
      abb8(18)=-abb8(32)*abb8(20)
      abb8(16)=abb8(17)*abb8(16)
      abb8(16)=abb8(16)+abb8(18)
      abb8(16)=spal5e7*spak3k4*abb8(16)
      abb8(15)=abb8(15)+abb8(16)
      abb8(15)=2.0_ki*abb8(15)
      abb8(9)=-abb8(23)*abb8(24)*abb8(9)
      abb8(13)=spbk3k1*abb8(13)
      abb8(9)=abb8(9)+abb8(13)
      abb8(9)=spal6e7*abb8(9)
      abb8(13)=abb8(25)*abb8(20)
      abb8(16)=-abb8(17)*abb8(28)
      abb8(13)=abb8(16)+abb8(13)
      abb8(13)=spal5e7*spbe7k3*abb8(13)
      abb8(9)=abb8(13)+abb8(9)
      abb8(9)=2.0_ki*abb8(9)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd8h0
