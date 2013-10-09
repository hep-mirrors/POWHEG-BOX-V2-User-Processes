module     p9_csbar_epnebbbarg_abbrevd125h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(38), public :: abb125
   complex(ki), public :: R2d125
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
      abb125(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb125(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb125(3)=es56**(-1)
      abb125(4)=spak2l5**(-1)
      abb125(5)=spbl6k2**(-1)
      abb125(6)=NC*c1
      abb125(6)=abb125(6)-c4
      abb125(7)=TR*gW
      abb125(6)=abb125(7)**2*abb125(6)*abb125(3)*i_*CVSC*abb125(2)*abb125(1)
      abb125(7)=-spak2l6*abb125(6)
      abb125(8)=mB**2
      abb125(9)=-abb125(4)*abb125(8)*abb125(7)
      abb125(6)=abb125(5)*spbl5k2*abb125(8)*abb125(6)
      abb125(8)=-spbl5k2*abb125(7)
      abb125(6)=abb125(9)+abb125(6)-abb125(8)
      abb125(8)=-spbe7k3*abb125(6)
      abb125(9)=abb125(8)*spak3k4
      abb125(10)=-spak2e7*spbk3k1*abb125(9)
      abb125(11)=spbe7k1*spbk3k1
      abb125(12)=-abb125(11)*abb125(6)
      abb125(13)=spak1k4*spak2e7
      abb125(14)=abb125(13)*abb125(12)
      abb125(15)=spbl6l5*spbk3k1
      abb125(16)=abb125(7)*abb125(15)
      abb125(17)=spak3k4*spbe7k3*abb125(16)
      abb125(18)=abb125(7)*spbl6l5
      abb125(11)=abb125(18)*abb125(11)
      abb125(19)=abb125(11)*spak1k4
      abb125(17)=abb125(17)-abb125(19)
      abb125(17)=abb125(17)*spal6e7
      abb125(10)=abb125(17)+abb125(10)+abb125(14)
      abb125(14)=es71*abb125(10)
      abb125(17)=abb125(12)*spak1e7
      abb125(20)=spbk7k1*spak1k4
      abb125(21)=abb125(20)*spak2k7
      abb125(22)=spbk7k3*spak2k7
      abb125(23)=-spak3k4*abb125(22)
      abb125(23)=abb125(23)+abb125(21)
      abb125(23)=abb125(17)*abb125(23)
      abb125(24)=spbk7k3*spak3k4
      abb125(24)=abb125(24)-abb125(20)
      abb125(24)=abb125(24)*spal6k7
      abb125(25)=abb125(11)*spak1e7
      abb125(26)=abb125(25)*abb125(24)
      abb125(14)=2.0_ki*abb125(14)+abb125(26)+abb125(23)
      abb125(14)=2.0_ki*abb125(14)
      abb125(23)=-spak1k2*abb125(6)
      abb125(26)=spak1l6*abb125(18)
      abb125(23)=abb125(23)-abb125(26)
      abb125(23)=abb125(23)*spbk3k1**2
      abb125(26)=-spbk3k1*abb125(6)
      abb125(27)=abb125(26)*abb125(22)
      abb125(23)=abb125(27)+2.0_ki*abb125(23)
      abb125(23)=spak3k4*abb125(23)
      abb125(27)=-abb125(26)*abb125(21)
      abb125(24)=-abb125(16)*abb125(24)
      abb125(23)=abb125(24)+abb125(27)+abb125(23)
      abb125(23)=4.0_ki*abb125(23)
      abb125(24)=8.0_ki*abb125(10)
      abb125(27)=abb125(17)*spak2k4
      abb125(28)=abb125(25)*spak4l6
      abb125(27)=abb125(27)+abb125(28)
      abb125(28)=4.0_ki*abb125(27)
      abb125(29)=abb125(26)*spak2k4
      abb125(30)=abb125(7)*spak4l6
      abb125(15)=abb125(30)*abb125(15)
      abb125(15)=abb125(15)+abb125(29)
      abb125(29)=8.0_ki*abb125(15)
      abb125(31)=-spbe7k1*abb125(6)
      abb125(32)=abb125(31)*spak2k4
      abb125(33)=spbl6l5*spbe7k1
      abb125(30)=abb125(30)*abb125(33)
      abb125(30)=abb125(32)+abb125(30)
      abb125(32)=abb125(30)*spbk4k3
      abb125(34)=abb125(22)*abb125(31)
      abb125(12)=abb125(12)*spak1k2
      abb125(11)=abb125(11)*spak1l6
      abb125(7)=abb125(33)*abb125(7)
      abb125(33)=abb125(7)*spal6k7
      abb125(35)=abb125(33)*spbk7k3
      abb125(11)=abb125(32)+abb125(11)-abb125(34)+abb125(35)-abb125(12)
      abb125(11)=spak4e7*abb125(11)
      abb125(34)=abb125(8)*spak2e7
      abb125(35)=abb125(18)*spbe7k3
      abb125(36)=abb125(35)*spal6e7
      abb125(36)=abb125(36)-abb125(34)
      abb125(37)=2.0_ki*spak4k7
      abb125(37)=-abb125(37)*spbk7k1*abb125(36)
      abb125(10)=-abb125(10)-abb125(27)+abb125(37)+abb125(11)
      abb125(11)=-4.0_ki*abb125(10)
      abb125(27)=-24.0_ki*abb125(15)
      abb125(10)=2.0_ki*abb125(10)
      abb125(15)=-4.0_ki*abb125(15)
      abb125(12)=-abb125(32)+abb125(12)
      abb125(12)=spak1k4*abb125(12)
      abb125(32)=spak1k4*abb125(31)
      abb125(9)=abb125(32)+abb125(9)
      abb125(9)=abb125(9)*abb125(22)
      abb125(21)=-abb125(8)*abb125(21)
      abb125(22)=abb125(7)*spak1k4
      abb125(32)=abb125(35)*spak3k4
      abb125(37)=-abb125(22)-abb125(32)
      abb125(37)=spbk7k3*abb125(37)
      abb125(38)=abb125(20)*abb125(35)
      abb125(37)=abb125(37)+abb125(38)
      abb125(37)=spal6k7*abb125(37)
      abb125(19)=-spak1l6*abb125(19)
      abb125(9)=abb125(19)+abb125(37)+abb125(9)+abb125(21)+abb125(12)
      abb125(9)=2.0_ki*abb125(9)
      abb125(12)=abb125(8)*spak2k4
      abb125(19)=abb125(35)*spak4l6
      abb125(12)=abb125(19)+abb125(12)
      abb125(19)=4.0_ki*abb125(12)
      abb125(12)=2.0_ki*abb125(12)
      abb125(13)=abb125(31)*abb125(13)
      abb125(21)=-spak3k4*abb125(34)
      abb125(13)=abb125(13)+abb125(21)
      abb125(13)=spbk7k3*abb125(13)
      abb125(20)=-abb125(20)*abb125(34)
      abb125(21)=-abb125(22)+abb125(32)
      abb125(21)=spbk7k3*abb125(21)
      abb125(21)=abb125(21)+abb125(38)
      abb125(21)=spal6e7*abb125(21)
      abb125(13)=abb125(21)+abb125(13)+abb125(20)
      abb125(13)=4.0_ki*abb125(13)
      abb125(20)=8.0_ki*abb125(16)
      abb125(21)=spak3k4*abb125(20)
      abb125(20)=-spak1k4*abb125(20)
      abb125(22)=-spak2k7*abb125(31)
      abb125(22)=abb125(22)+abb125(33)
      abb125(22)=spbk7k1*spak1e7*abb125(22)
      abb125(32)=abb125(31)*spak2e7
      abb125(33)=abb125(7)*spal6e7
      abb125(32)=abb125(33)-abb125(32)
      abb125(33)=2.0_ki*abb125(32)
      abb125(34)=es71*abb125(33)
      abb125(17)=spak2k3*abb125(17)
      abb125(30)=spbk4k1*spak1e7*abb125(30)
      abb125(25)=spak3l6*abb125(25)
      abb125(17)=abb125(25)+abb125(30)+abb125(17)+abb125(34)+abb125(22)
      abb125(17)=2.0_ki*abb125(17)
      abb125(22)=abb125(6)*spak2k7
      abb125(25)=abb125(18)*spal6k7
      abb125(22)=abb125(25)+abb125(22)
      abb125(25)=-spbk7k1*abb125(22)
      abb125(30)=-spak2k3*abb125(26)
      abb125(34)=abb125(6)*spak2k4
      abb125(37)=abb125(18)*spak4l6
      abb125(34)=abb125(37)-abb125(34)
      abb125(37)=-spbk4k1*abb125(34)
      abb125(38)=-spak3l6*abb125(16)
      abb125(25)=abb125(38)+abb125(37)+abb125(30)+abb125(25)
      abb125(25)=4.0_ki*abb125(25)
      abb125(30)=8.0_ki*abb125(32)
      abb125(32)=4.0_ki*abb125(32)
      abb125(31)=-spak1k2*abb125(31)
      abb125(8)=-spak2k3*abb125(8)
      abb125(22)=spbk7e7*abb125(22)
      abb125(34)=-spbe7k4*abb125(34)
      abb125(7)=spak1l6*abb125(7)
      abb125(35)=-spak3l6*abb125(35)
      abb125(7)=abb125(35)+abb125(34)+abb125(7)+abb125(22)+abb125(31)+abb125(8)
      abb125(7)=2.0_ki*abb125(7)
      abb125(8)=spak2e7*abb125(6)
      abb125(22)=spal6e7*abb125(18)
      abb125(8)=abb125(8)+abb125(22)
      abb125(8)=4.0_ki*spbk7e7*abb125(8)
      abb125(18)=-8.0_ki*abb125(18)
      abb125(22)=-spak1k2*abb125(26)
      abb125(16)=spak1l6*abb125(16)
      abb125(16)=abb125(22)+abb125(16)
      abb125(16)=16.0_ki*abb125(16)
      abb125(22)=-4.0_ki*abb125(36)
      abb125(31)=2.0_ki*abb125(36)
      abb125(26)=8.0_ki*abb125(26)
      abb125(34)=-spak3k4*abb125(26)
      abb125(26)=spak1k4*abb125(26)
      abb125(6)=-8.0_ki*abb125(6)
      R2d125=0.0_ki
      rat2 = rat2 + R2d125
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='125' value='", &
          & R2d125, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd125h1
