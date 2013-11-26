module     p5_usbar_epnebbbarg_abbrevd2h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(34), public :: abb2
   complex(ki), public :: R2d2
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
      abb2(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb2(2)=1.0_ki/(es34+es567-es12-es234)
      abb2(3)=es56**(-1)
      abb2(4)=spbl5k2**(-1)
      abb2(5)=spbl6k2**(-1)
      abb2(6)=TR*gW
      abb2(6)=CVSU*i_*mB*abb2(3)*abb2(2)*abb2(1)*abb2(6)**2
      abb2(7)=abb2(6)*NC
      abb2(8)=abb2(7)*spbk3k1
      abb2(9)=c1*abb2(4)
      abb2(10)=abb2(8)*abb2(9)
      abb2(11)=abb2(7)*c3
      abb2(12)=abb2(11)*spbk3k1
      abb2(13)=2.0_ki*abb2(4)
      abb2(14)=abb2(12)*abb2(13)
      abb2(15)=c2-c4
      abb2(16)=abb2(6)*abb2(4)
      abb2(17)=-abb2(16)*abb2(15)*spbk3k1
      abb2(10)=abb2(17)+abb2(10)-abb2(14)
      abb2(10)=abb2(10)*spak2l6
      abb2(14)=c1*abb2(5)
      abb2(18)=abb2(8)*abb2(14)
      abb2(19)=2.0_ki*abb2(5)
      abb2(20)=abb2(12)*abb2(19)
      abb2(21)=abb2(6)*abb2(5)
      abb2(22)=abb2(15)*abb2(21)
      abb2(23)=-spbk3k1*abb2(22)
      abb2(18)=abb2(23)+abb2(18)-abb2(20)
      abb2(18)=abb2(18)*spak2l5
      abb2(10)=abb2(10)+abb2(18)
      abb2(18)=-spbk3k2*spak3k4
      abb2(20)=-spbk2k1*spak1k4
      abb2(18)=abb2(18)+abb2(20)
      abb2(10)=4.0_ki*abb2(10)*abb2(18)
      abb2(6)=abb2(6)*spbk3k1*spbe7k2
      abb2(18)=abb2(6)*NC
      abb2(20)=abb2(18)*c3
      abb2(24)=abb2(20)*abb2(4)
      abb2(18)=abb2(18)*c1
      abb2(25)=abb2(18)*abb2(4)
      abb2(24)=abb2(24)+abb2(25)
      abb2(26)=spak2k4*abb2(24)
      abb2(27)=2.0_ki*spak2k4
      abb2(27)=-abb2(27)*abb2(15)
      abb2(28)=abb2(6)*abb2(4)
      abb2(29)=-abb2(28)*abb2(27)
      abb2(26)=abb2(29)+abb2(26)
      abb2(26)=abb2(26)*spal6e7
      abb2(29)=abb2(20)*abb2(5)
      abb2(18)=abb2(18)*abb2(5)
      abb2(29)=abb2(29)+abb2(18)
      abb2(30)=-spak2k4*abb2(29)
      abb2(6)=abb2(6)*abb2(5)
      abb2(31)=abb2(6)*abb2(27)
      abb2(30)=abb2(31)+abb2(30)
      abb2(30)=abb2(30)*spal5e7
      abb2(26)=abb2(26)-abb2(30)
      abb2(30)=-spak4e7*abb2(15)
      abb2(31)=abb2(6)*abb2(30)
      abb2(32)=abb2(20)*spak4e7
      abb2(33)=abb2(32)*abb2(19)
      abb2(34)=abb2(18)*spak4e7
      abb2(31)=-abb2(33)+abb2(34)+abb2(31)
      abb2(31)=abb2(31)*spak2l5
      abb2(30)=abb2(28)*abb2(30)
      abb2(32)=abb2(32)*abb2(13)
      abb2(33)=abb2(25)*spak4e7
      abb2(30)=-abb2(32)+abb2(33)+abb2(30)
      abb2(30)=abb2(30)*spak2l6
      abb2(26)=2.0_ki*abb2(26)+abb2(31)+abb2(30)
      abb2(26)=4.0_ki*abb2(26)
      abb2(8)=c1*abb2(8)
      abb2(30)=abb2(8)*abb2(13)
      abb2(31)=abb2(12)*abb2(4)
      abb2(17)=abb2(17)+abb2(31)-abb2(30)
      abb2(30)=spbe7k3*spak3k4
      abb2(31)=spbe7k1*spak1k4
      abb2(30)=abb2(30)-abb2(31)
      abb2(30)=abb2(30)*spak2e7
      abb2(30)=2.0_ki*abb2(30)
      abb2(17)=abb2(17)*abb2(30)
      abb2(8)=abb2(8)*abb2(19)
      abb2(12)=abb2(12)*abb2(5)
      abb2(8)=abb2(23)+abb2(12)-abb2(8)
      abb2(8)=abb2(8)*abb2(30)
      abb2(12)=-spbe7k2*abb2(27)
      abb2(21)=abb2(12)*abb2(21)
      abb2(7)=abb2(7)*spbe7k2
      abb2(14)=abb2(7)*abb2(14)
      abb2(23)=abb2(14)*spak2k4
      abb2(27)=spbe7k2*abb2(11)*spak2k4
      abb2(30)=abb2(27)*abb2(5)
      abb2(21)=abb2(30)+abb2(21)+abb2(23)
      abb2(21)=abb2(21)*spal5e7
      abb2(7)=abb2(7)*abb2(9)
      abb2(9)=abb2(7)*spak2k4
      abb2(12)=abb2(12)*abb2(16)
      abb2(23)=abb2(27)*abb2(4)
      abb2(9)=abb2(23)+abb2(9)+abb2(12)
      abb2(9)=abb2(9)*spal6e7
      abb2(9)=abb2(21)+abb2(9)
      abb2(12)=spak4e7*spbe7k2
      abb2(16)=-abb2(15)*abb2(12)*abb2(16)
      abb2(11)=abb2(12)*abb2(11)
      abb2(21)=abb2(11)*abb2(13)
      abb2(7)=abb2(7)*spak4e7
      abb2(7)=-abb2(21)+abb2(7)+abb2(16)
      abb2(7)=abb2(7)*spak2l6
      abb2(11)=abb2(11)*abb2(19)
      abb2(14)=abb2(14)*spak4e7
      abb2(12)=abb2(12)*abb2(22)
      abb2(11)=abb2(12)+abb2(11)-abb2(14)
      abb2(11)=abb2(11)*spak2l5
      abb2(7)=abb2(7)-abb2(11)+2.0_ki*abb2(9)
      abb2(9)=spbk4k1*abb2(7)
      abb2(11)=abb2(20)*abb2(13)
      abb2(12)=abb2(15)*abb2(28)
      abb2(11)=-abb2(25)+abb2(11)+abb2(12)
      abb2(11)=abb2(11)*spak2l6
      abb2(12)=abb2(20)*abb2(19)
      abb2(13)=abb2(15)*abb2(6)
      abb2(12)=-abb2(18)+abb2(12)+abb2(13)
      abb2(12)=abb2(12)*spak2l5
      abb2(11)=abb2(11)+abb2(12)
      abb2(12)=-spak3e7*abb2(11)
      abb2(13)=-2.0_ki*abb2(15)
      abb2(6)=-abb2(6)*abb2(13)
      abb2(6)=abb2(6)+abb2(29)
      abb2(6)=abb2(6)*spal5e7
      abb2(13)=-abb2(28)*abb2(13)
      abb2(13)=abb2(13)+abb2(24)
      abb2(13)=abb2(13)*spal6e7
      abb2(6)=abb2(6)+abb2(13)
      abb2(6)=2.0_ki*abb2(6)
      abb2(13)=spak2k3*abb2(6)
      abb2(9)=abb2(13)+abb2(9)+abb2(12)
      abb2(9)=2.0_ki*abb2(9)
      abb2(7)=-spbk4k3*abb2(7)
      abb2(11)=spak1e7*abb2(11)
      abb2(12)=spak1k2*abb2(6)
      abb2(7)=abb2(12)+abb2(7)+abb2(11)
      abb2(7)=2.0_ki*abb2(7)
      abb2(11)=spak3k4*abb2(6)
      abb2(6)=-spak1k4*abb2(6)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd2h0
