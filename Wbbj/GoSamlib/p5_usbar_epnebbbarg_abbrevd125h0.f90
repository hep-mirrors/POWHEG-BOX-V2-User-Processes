module     p5_usbar_epnebbbarg_abbrevd125h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(41), public :: abb125
   complex(ki), public :: R2d125
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_usbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_color, only: TR
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb125(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb125(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb125(3)=es56**(-1)
      abb125(4)=spbl5k2**(-1)
      abb125(5)=spbl6k2**(-1)
      abb125(6)=TR*gW
      abb125(6)=CVSU*i_*mB*abb125(3)*abb125(2)*abb125(1)*abb125(6)**2
      abb125(7)=c1*abb125(6)*NC
      abb125(6)=abb125(6)*c4
      abb125(6)=abb125(7)-abb125(6)
      abb125(7)=-spak2l6*abb125(6)
      abb125(8)=spbe7k3*spbk3k1
      abb125(9)=abb125(8)*abb125(7)
      abb125(6)=-spak2l5*abb125(6)
      abb125(10)=abb125(6)*spbk3k1
      abb125(11)=spbl5k2*abb125(5)
      abb125(12)=abb125(11)*spbe7k3
      abb125(13)=abb125(10)*abb125(12)
      abb125(9)=abb125(9)+abb125(13)
      abb125(9)=abb125(9)*spal5e7
      abb125(8)=abb125(8)*abb125(6)
      abb125(13)=abb125(7)*spbl6k2*abb125(4)
      abb125(14)=spbe7k3*abb125(13)
      abb125(15)=abb125(14)*spbk3k1
      abb125(8)=abb125(8)+abb125(15)
      abb125(8)=abb125(8)*spal6e7
      abb125(8)=abb125(9)+abb125(8)
      abb125(8)=abb125(8)*spak3k4
      abb125(9)=abb125(13)+abb125(6)
      abb125(15)=spbe7k1*spbk3k1
      abb125(16)=abb125(15)*abb125(9)
      abb125(17)=abb125(16)*spak1k4
      abb125(18)=abb125(17)*spal6e7
      abb125(19)=abb125(6)*abb125(11)
      abb125(19)=abb125(19)+abb125(7)
      abb125(15)=abb125(15)*abb125(19)
      abb125(20)=spal5e7*spak1k4
      abb125(21)=abb125(20)*abb125(15)
      abb125(8)=abb125(8)-abb125(18)-abb125(21)
      abb125(18)=es71*abb125(8)
      abb125(21)=abb125(16)*spak1e7
      abb125(22)=spbk7k3*spak3k4
      abb125(23)=spbk7k1*spak1k4
      abb125(22)=abb125(22)-abb125(23)
      abb125(24)=abb125(22)*spal6k7
      abb125(25)=-abb125(21)*abb125(24)
      abb125(26)=abb125(15)*spak1e7
      abb125(22)=abb125(22)*spal5k7
      abb125(27)=-abb125(26)*abb125(22)
      abb125(18)=-2.0_ki*abb125(18)+abb125(25)+abb125(27)
      abb125(18)=2.0_ki*abb125(18)
      abb125(25)=spak1l6*abb125(9)
      abb125(27)=spak1l5*abb125(19)
      abb125(25)=abb125(25)+abb125(27)
      abb125(25)=2.0_ki*abb125(25)
      abb125(25)=spak3k4*abb125(25)*spbk3k1**2
      abb125(13)=spbk3k1*abb125(13)
      abb125(13)=abb125(13)+abb125(10)
      abb125(24)=abb125(13)*abb125(24)
      abb125(27)=abb125(7)*spbk3k1
      abb125(10)=abb125(10)*abb125(11)
      abb125(10)=abb125(27)+abb125(10)
      abb125(11)=abb125(10)*abb125(22)
      abb125(11)=abb125(24)+abb125(11)+abb125(25)
      abb125(11)=4.0_ki*abb125(11)
      abb125(22)=-8.0_ki*abb125(8)
      abb125(24)=abb125(21)*spak4l6
      abb125(25)=abb125(26)*spak4l5
      abb125(24)=abb125(24)+abb125(25)
      abb125(25)=4.0_ki*abb125(24)
      abb125(27)=abb125(10)*spak4l5
      abb125(28)=abb125(13)*spak4l6
      abb125(27)=abb125(27)+abb125(28)
      abb125(28)=8.0_ki*abb125(27)
      abb125(29)=spbe7k1*abb125(19)
      abb125(30)=abb125(29)*spak4l5
      abb125(31)=spbe7k1*abb125(9)
      abb125(32)=abb125(31)*spak4l6
      abb125(30)=abb125(30)+abb125(32)
      abb125(32)=abb125(30)*spbk4k3
      abb125(15)=abb125(15)*spak1l5
      abb125(15)=abb125(32)+abb125(15)
      abb125(32)=abb125(31)*spal6k7
      abb125(33)=abb125(29)*spal5k7
      abb125(32)=abb125(32)+abb125(33)
      abb125(33)=abb125(32)*spbk7k3
      abb125(16)=abb125(16)*spak1l6
      abb125(16)=abb125(16)+abb125(33)+abb125(15)
      abb125(16)=abb125(16)*spak4e7
      abb125(7)=abb125(7)*spbe7k3
      abb125(12)=abb125(12)*abb125(6)
      abb125(7)=abb125(7)+abb125(12)
      abb125(12)=abb125(7)*spal5e7
      abb125(6)=abb125(6)*spbe7k3
      abb125(6)=abb125(6)+abb125(14)
      abb125(14)=abb125(6)*spal6e7
      abb125(12)=abb125(12)+abb125(14)
      abb125(33)=2.0_ki*abb125(12)
      abb125(34)=spbk7k1*abb125(33)*spak4k7
      abb125(8)=-abb125(16)+abb125(24)+abb125(34)+abb125(8)
      abb125(16)=-4.0_ki*abb125(8)
      abb125(24)=24.0_ki*abb125(27)
      abb125(8)=2.0_ki*abb125(8)
      abb125(27)=4.0_ki*abb125(27)
      abb125(15)=spak1k4*abb125(15)
      abb125(34)=spak1k4*abb125(31)
      abb125(35)=spak3k4*abb125(6)
      abb125(34)=abb125(34)+abb125(35)
      abb125(34)=spbk7k3*abb125(34)
      abb125(35)=-abb125(6)*abb125(23)
      abb125(34)=abb125(34)+abb125(35)
      abb125(34)=spal6k7*abb125(34)
      abb125(35)=spak1k4*abb125(29)
      abb125(36)=spak3k4*abb125(7)
      abb125(35)=abb125(35)+abb125(36)
      abb125(35)=spbk7k3*abb125(35)
      abb125(23)=-abb125(7)*abb125(23)
      abb125(23)=abb125(35)+abb125(23)
      abb125(23)=spal5k7*abb125(23)
      abb125(17)=spak1l6*abb125(17)
      abb125(15)=abb125(17)+abb125(34)+abb125(23)+abb125(15)
      abb125(15)=2.0_ki*abb125(15)
      abb125(17)=abb125(7)*spak4l5
      abb125(23)=abb125(6)*spak4l6
      abb125(17)=abb125(17)+abb125(23)
      abb125(23)=4.0_ki*abb125(17)
      abb125(17)=-2.0_ki*abb125(17)
      abb125(34)=-spak3k4*abb125(12)
      abb125(35)=abb125(31)*spal6e7
      abb125(36)=spak1k4*abb125(35)
      abb125(37)=abb125(29)*abb125(20)
      abb125(34)=abb125(34)+abb125(36)+abb125(37)
      abb125(34)=spbk7k3*abb125(34)
      abb125(14)=-spak1k4*abb125(14)
      abb125(20)=-abb125(7)*abb125(20)
      abb125(14)=abb125(14)+abb125(20)
      abb125(14)=spbk7k1*abb125(14)
      abb125(14)=abb125(34)+abb125(14)
      abb125(14)=4.0_ki*abb125(14)
      abb125(20)=8.0_ki*abb125(13)
      abb125(34)=-spak3k4*abb125(20)
      abb125(20)=spak1k4*abb125(20)
      abb125(36)=8.0_ki*abb125(10)
      abb125(37)=-spak3k4*abb125(36)
      abb125(36)=spak1k4*abb125(36)
      abb125(32)=-spbk7k1*spak1e7*abb125(32)
      abb125(38)=abb125(29)*spal5e7
      abb125(35)=abb125(38)+abb125(35)
      abb125(38)=2.0_ki*abb125(35)
      abb125(39)=-es71*abb125(38)
      abb125(30)=-spbk4k1*spak1e7*abb125(30)
      abb125(21)=-spak3l6*abb125(21)
      abb125(26)=-spak3l5*abb125(26)
      abb125(21)=abb125(26)+abb125(21)+abb125(30)+abb125(39)+abb125(32)
      abb125(21)=2.0_ki*abb125(21)
      abb125(26)=abb125(9)*spal6k7
      abb125(30)=abb125(19)*spal5k7
      abb125(26)=abb125(26)+abb125(30)
      abb125(30)=spbk7k1*abb125(26)
      abb125(32)=abb125(9)*spak4l6
      abb125(39)=abb125(19)*spak4l5
      abb125(32)=abb125(32)+abb125(39)
      abb125(39)=spbk4k1*abb125(32)
      abb125(40)=spak3l6*abb125(13)
      abb125(41)=spak3l5*abb125(10)
      abb125(30)=abb125(41)+abb125(40)+abb125(39)+abb125(30)
      abb125(30)=4.0_ki*abb125(30)
      abb125(39)=-8.0_ki*abb125(35)
      abb125(35)=-4.0_ki*abb125(35)
      abb125(26)=-spbk7e7*abb125(26)
      abb125(32)=spbe7k4*abb125(32)
      abb125(31)=-spak1l6*abb125(31)
      abb125(29)=-spak1l5*abb125(29)
      abb125(6)=spak3l6*abb125(6)
      abb125(7)=spak3l5*abb125(7)
      abb125(6)=abb125(32)+abb125(7)+abb125(6)+abb125(26)+abb125(31)+abb125(29)
      abb125(6)=2.0_ki*abb125(6)
      abb125(7)=-spal6e7*abb125(9)
      abb125(26)=-spal5e7*abb125(19)
      abb125(7)=abb125(7)+abb125(26)
      abb125(7)=4.0_ki*spbk7e7*abb125(7)
      abb125(9)=8.0_ki*abb125(9)
      abb125(19)=8.0_ki*abb125(19)
      abb125(13)=-spak1l6*abb125(13)
      abb125(10)=-spak1l5*abb125(10)
      abb125(10)=abb125(13)+abb125(10)
      abb125(10)=16.0_ki*abb125(10)
      abb125(12)=4.0_ki*abb125(12)
      R2d125=0.0_ki
      rat2 = rat2 + R2d125
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='125' value='", &
          & R2d125, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd125h0
