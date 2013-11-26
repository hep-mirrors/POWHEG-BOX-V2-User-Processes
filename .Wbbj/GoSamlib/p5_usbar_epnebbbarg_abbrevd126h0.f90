module     p5_usbar_epnebbbarg_abbrevd126h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(36), public :: abb126
   complex(ki), public :: R2d126
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
      abb126(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb126(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb126(3)=NC**(-1)
      abb126(4)=es56**(-1)
      abb126(5)=spbl5k2**(-1)
      abb126(6)=spbl6k2**(-1)
      abb126(7)=abb126(3)*c1
      abb126(8)=c4*abb126(3)**2
      abb126(7)=abb126(7)-abb126(8)
      abb126(8)=TR*gW
      abb126(7)=abb126(7)*CVSU*i_*mB*abb126(4)*abb126(2)*abb126(1)*abb126(8)**2
      abb126(8)=spak2l6*abb126(7)
      abb126(9)=abb126(8)*spbl6k2*abb126(5)
      abb126(7)=spak2l5*abb126(7)
      abb126(10)=abb126(9)+abb126(7)
      abb126(11)=spak4k7*abb126(10)
      abb126(12)=spbk7e7*abb126(11)
      abb126(13)=abb126(7)*spbe7k3
      abb126(14)=spbe7k3*abb126(9)
      abb126(13)=abb126(13)+abb126(14)
      abb126(15)=-spak3k4*abb126(13)
      abb126(12)=abb126(12)+abb126(15)
      abb126(12)=spal6e7*abb126(12)
      abb126(15)=spbl5k2*abb126(6)
      abb126(16)=abb126(7)*abb126(15)
      abb126(16)=abb126(16)+abb126(8)
      abb126(17)=spak4k7*abb126(16)
      abb126(18)=spbk7e7*abb126(17)
      abb126(15)=abb126(15)*spbe7k3
      abb126(19)=abb126(7)*abb126(15)
      abb126(20)=abb126(8)*spbe7k3
      abb126(19)=abb126(20)+abb126(19)
      abb126(20)=-spak3k4*abb126(19)
      abb126(18)=abb126(18)+abb126(20)
      abb126(18)=spal5e7*abb126(18)
      abb126(12)=abb126(12)+abb126(18)
      abb126(12)=spbk3k1*abb126(12)
      abb126(18)=abb126(19)*spal5e7
      abb126(20)=abb126(13)*spal6e7
      abb126(18)=abb126(18)+abb126(20)
      abb126(20)=spbk7k1*spak4k7*abb126(18)
      abb126(12)=abb126(12)+abb126(20)
      abb126(12)=4.0_ki*abb126(12)
      abb126(20)=spbk7k3*spbe7k3
      abb126(21)=abb126(7)*abb126(20)
      abb126(14)=abb126(14)*spbk7k3
      abb126(14)=abb126(21)+abb126(14)
      abb126(14)=abb126(14)*spak3k4
      abb126(21)=spak4k7*spbk7k3
      abb126(22)=abb126(21)*abb126(10)
      abb126(23)=abb126(22)*spbk7e7
      abb126(14)=abb126(14)+abb126(23)
      abb126(23)=-spal6k7*abb126(14)
      abb126(8)=abb126(8)*abb126(20)
      abb126(7)=abb126(7)*spbk7k3
      abb126(15)=abb126(15)*abb126(7)
      abb126(8)=abb126(8)+abb126(15)
      abb126(8)=abb126(8)*spak3k4
      abb126(15)=abb126(21)*abb126(16)
      abb126(20)=abb126(15)*spbk7e7
      abb126(8)=abb126(8)+abb126(20)
      abb126(20)=-spal5k7*abb126(8)
      abb126(20)=abb126(23)+abb126(20)
      abb126(20)=4.0_ki*abb126(20)
      abb126(19)=abb126(19)*spak4l5
      abb126(13)=abb126(13)*spak4l6
      abb126(13)=abb126(19)+abb126(13)
      abb126(19)=8.0_ki*abb126(13)
      abb126(13)=4.0_ki*abb126(13)
      abb126(14)=spal6e7*abb126(14)
      abb126(8)=spal5e7*abb126(8)
      abb126(8)=abb126(14)+abb126(8)
      abb126(8)=4.0_ki*abb126(8)
      abb126(9)=spbk7k3*abb126(9)
      abb126(7)=abb126(9)+abb126(7)
      abb126(9)=-spak4l6*abb126(7)
      abb126(14)=spbk7k3*abb126(16)
      abb126(21)=-spak4l5*abb126(14)
      abb126(9)=abb126(9)+abb126(21)
      abb126(9)=16.0_ki*abb126(9)
      abb126(21)=4.0_ki*spbe7k1
      abb126(23)=abb126(21)*spae7k7
      abb126(22)=-abb126(22)*abb126(23)
      abb126(24)=8.0_ki*spbk3k1
      abb126(25)=-abb126(11)*abb126(24)
      abb126(26)=abb126(23)*spak3k4
      abb126(27)=abb126(7)*abb126(26)
      abb126(28)=spbk3k1*spak3k4
      abb126(29)=abb126(10)*abb126(28)
      abb126(11)=spbk7k1*abb126(11)
      abb126(11)=abb126(29)+abb126(11)
      abb126(11)=8.0_ki*abb126(11)
      abb126(29)=8.0_ki*abb126(10)
      abb126(30)=spak4e7*spbe7k1
      abb126(31)=-abb126(30)*abb126(29)
      abb126(21)=abb126(21)*spak4e7
      abb126(32)=-abb126(10)*abb126(21)
      abb126(15)=-abb126(15)*abb126(23)
      abb126(24)=-abb126(17)*abb126(24)
      abb126(26)=abb126(14)*abb126(26)
      abb126(28)=abb126(16)*abb126(28)
      abb126(17)=spbk7k1*abb126(17)
      abb126(17)=abb126(28)+abb126(17)
      abb126(17)=8.0_ki*abb126(17)
      abb126(28)=8.0_ki*abb126(16)
      abb126(30)=-abb126(30)*abb126(28)
      abb126(21)=-abb126(16)*abb126(21)
      abb126(33)=abb126(10)*spal6e7
      abb126(34)=abb126(16)*spal5e7
      abb126(33)=abb126(33)+abb126(34)
      abb126(33)=4.0_ki*abb126(33)
      abb126(34)=spbe7k1*abb126(33)
      abb126(35)=-spal6k7*abb126(10)
      abb126(36)=-spal5k7*abb126(16)
      abb126(35)=abb126(35)+abb126(36)
      abb126(36)=4.0_ki*spbk7e7
      abb126(35)=abb126(35)*abb126(36)
      abb126(33)=spbk7e7*abb126(33)
      abb126(10)=-abb126(10)*abb126(23)
      abb126(16)=-abb126(16)*abb126(23)
      abb126(7)=-spal6k7*abb126(7)
      abb126(14)=-spal5k7*abb126(14)
      abb126(7)=abb126(7)+abb126(14)
      abb126(7)=16.0_ki*abb126(7)
      abb126(14)=8.0_ki*abb126(18)
      abb126(18)=4.0_ki*abb126(18)
      R2d126=0.0_ki
      rat2 = rat2 + R2d126
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='126' value='", &
          & R2d126, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd126h0
