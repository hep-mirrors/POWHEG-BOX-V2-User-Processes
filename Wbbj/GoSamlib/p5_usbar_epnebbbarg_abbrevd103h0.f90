module     p5_usbar_epnebbbarg_abbrevd103h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(43), public :: abb103
   complex(ki), public :: R2d103
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
      abb103(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb103(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb103(3)=NC**(-1)
      abb103(4)=es56**(-1)
      abb103(5)=spbl5k2**(-1)
      abb103(6)=spbl6k2**(-1)
      abb103(7)=c1*abb103(3)
      abb103(8)=c4*abb103(3)**2
      abb103(7)=abb103(7)-abb103(8)
      abb103(8)=TR*gW
      abb103(7)=abb103(7)*CVSU*i_*mB*abb103(4)*abb103(2)*abb103(1)*abb103(8)**2
      abb103(8)=-spbe7k3*abb103(7)
      abb103(9)=-spak2l5*abb103(8)
      abb103(10)=abb103(9)*spbk3k1
      abb103(8)=-spak2l6*abb103(8)
      abb103(11)=spbl6k2*abb103(5)
      abb103(12)=abb103(11)*spbk3k1
      abb103(13)=abb103(12)*abb103(8)
      abb103(10)=abb103(10)+abb103(13)
      abb103(13)=-spak4l6*abb103(10)
      abb103(14)=abb103(8)*spbk3k1
      abb103(15)=spbl5k2*abb103(6)
      abb103(16)=abb103(15)*spbk3k1
      abb103(17)=abb103(16)*abb103(9)
      abb103(14)=abb103(14)+abb103(17)
      abb103(17)=-spak4l5*abb103(14)
      abb103(13)=abb103(13)+abb103(17)
      abb103(13)=spak3e7*abb103(13)
      abb103(17)=spak2l5*abb103(7)
      abb103(18)=abb103(17)*spak4e7
      abb103(7)=spak2l6*abb103(7)
      abb103(19)=abb103(11)*spak4e7
      abb103(20)=abb103(19)*abb103(7)
      abb103(18)=abb103(18)+abb103(20)
      abb103(20)=spak4l6*abb103(18)
      abb103(21)=abb103(7)*spak4e7
      abb103(22)=abb103(15)*spak4e7
      abb103(23)=abb103(22)*abb103(17)
      abb103(21)=abb103(21)+abb103(23)
      abb103(23)=spak4l5*abb103(21)
      abb103(20)=abb103(20)+abb103(23)
      abb103(20)=spbk4k3*spbe7k1*abb103(20)
      abb103(23)=abb103(8)*spak4e7
      abb103(22)=abb103(22)*abb103(9)
      abb103(22)=abb103(23)+abb103(22)
      abb103(23)=abb103(22)*spak4l5
      abb103(24)=abb103(9)*spak4e7
      abb103(19)=abb103(19)*abb103(8)
      abb103(19)=abb103(24)+abb103(19)
      abb103(24)=abb103(19)*spak4l6
      abb103(23)=abb103(23)+abb103(24)
      abb103(24)=-spbk4k1*abb103(23)
      abb103(25)=abb103(8)*abb103(11)
      abb103(25)=abb103(25)+abb103(9)
      abb103(26)=abb103(25)*spak4l6
      abb103(9)=abb103(9)*abb103(15)
      abb103(8)=abb103(9)+abb103(8)
      abb103(9)=abb103(8)*spak4l5
      abb103(9)=abb103(26)+abb103(9)
      abb103(26)=spbk7k1*spae7k7*abb103(9)
      abb103(13)=abb103(26)+abb103(24)+abb103(13)+abb103(20)
      abb103(13)=4.0_ki*abb103(13)
      abb103(20)=abb103(17)*spbk3k1
      abb103(12)=abb103(12)*abb103(7)
      abb103(12)=abb103(20)+abb103(12)
      abb103(20)=spak4l6*abb103(12)
      abb103(24)=abb103(7)*spbk3k1
      abb103(16)=abb103(16)*abb103(17)
      abb103(16)=abb103(24)+abb103(16)
      abb103(24)=spak4l5*abb103(16)
      abb103(20)=abb103(20)+abb103(24)
      abb103(20)=8.0_ki*abb103(20)
      abb103(11)=abb103(7)*abb103(11)
      abb103(11)=abb103(11)+abb103(17)
      abb103(24)=spbk3k1*spak4e7
      abb103(26)=abb103(24)*abb103(11)
      abb103(27)=8.0_ki*abb103(26)
      abb103(26)=-4.0_ki*abb103(26)
      abb103(15)=abb103(17)*abb103(15)
      abb103(7)=abb103(15)+abb103(7)
      abb103(15)=abb103(24)*abb103(7)
      abb103(17)=8.0_ki*abb103(15)
      abb103(15)=-4.0_ki*abb103(15)
      abb103(28)=8.0_ki*abb103(9)
      abb103(29)=-4.0_ki*abb103(9)
      abb103(30)=4.0_ki*spak3k4
      abb103(10)=abb103(10)*abb103(30)
      abb103(31)=spae7k7*abb103(10)
      abb103(24)=abb103(30)*abb103(24)
      abb103(32)=-abb103(25)*abb103(24)
      abb103(10)=-spak3e7*abb103(10)
      abb103(33)=8.0_ki*spak3k4
      abb103(34)=abb103(12)*abb103(33)
      abb103(14)=abb103(14)*abb103(30)
      abb103(30)=spae7k7*abb103(14)
      abb103(24)=-abb103(8)*abb103(24)
      abb103(14)=-spak3e7*abb103(14)
      abb103(33)=abb103(16)*abb103(33)
      abb103(12)=-spak3e7*abb103(12)
      abb103(35)=-spbk4k1*abb103(18)
      abb103(12)=abb103(12)+abb103(35)
      abb103(12)=4.0_ki*abb103(12)
      abb103(16)=-spak3e7*abb103(16)
      abb103(35)=-spbk4k1*abb103(21)
      abb103(16)=abb103(16)+abb103(35)
      abb103(16)=4.0_ki*abb103(16)
      abb103(35)=-spak4l6*abb103(11)
      abb103(36)=-spak4l5*abb103(7)
      abb103(35)=abb103(35)+abb103(36)
      abb103(35)=spbe7k4*abb103(35)
      abb103(36)=-spak3l6*abb103(25)
      abb103(37)=-spak3l5*abb103(8)
      abb103(35)=abb103(37)+abb103(35)+abb103(36)
      abb103(36)=-spal6k7*abb103(11)
      abb103(37)=-spal5k7*abb103(7)
      abb103(36)=abb103(37)+abb103(36)
      abb103(36)=spbk7e7*abb103(36)
      abb103(35)=2.0_ki*abb103(35)+abb103(36)
      abb103(35)=4.0_ki*abb103(35)
      abb103(36)=abb103(11)*spal6e7
      abb103(37)=abb103(7)*spal5e7
      abb103(36)=abb103(36)+abb103(37)
      abb103(37)=4.0_ki*spbk7e7*abb103(36)
      abb103(38)=4.0_ki*spbe7k1
      abb103(39)=abb103(11)*abb103(38)
      abb103(40)=-spae7k7*abb103(39)
      abb103(18)=abb103(18)*abb103(38)
      abb103(39)=spak3e7*abb103(39)
      abb103(11)=8.0_ki*abb103(11)
      abb103(41)=abb103(7)*abb103(38)
      abb103(42)=-spae7k7*abb103(41)
      abb103(21)=abb103(21)*abb103(38)
      abb103(38)=spak3e7*abb103(41)
      abb103(7)=8.0_ki*abb103(7)
      abb103(19)=-spbk4k3*abb103(19)
      abb103(41)=spbk7k3*spae7k7
      abb103(43)=abb103(25)*abb103(41)
      abb103(19)=abb103(19)+abb103(43)
      abb103(19)=spak3l6*abb103(19)
      abb103(22)=-spbk4k3*abb103(22)
      abb103(43)=abb103(8)*abb103(41)
      abb103(22)=abb103(22)+abb103(43)
      abb103(22)=spak3l5*abb103(22)
      abb103(19)=abb103(19)+abb103(22)
      abb103(19)=4.0_ki*abb103(19)
      abb103(22)=abb103(25)*spal6e7
      abb103(8)=abb103(8)*spal5e7
      abb103(8)=abb103(22)+abb103(8)
      abb103(22)=8.0_ki*abb103(8)
      abb103(8)=-4.0_ki*abb103(8)
      abb103(25)=-8.0_ki*spbe7k4*abb103(36)
      abb103(23)=spbk4k3*abb103(23)
      abb103(9)=-abb103(9)*abb103(41)
      abb103(9)=abb103(23)+abb103(9)
      abb103(9)=4.0_ki*abb103(9)
      R2d103=0.0_ki
      rat2 = rat2 + R2d103
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='103' value='", &
          & R2d103, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd103h0
