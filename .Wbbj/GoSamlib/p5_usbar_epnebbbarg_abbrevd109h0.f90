module     p5_usbar_epnebbbarg_abbrevd109h0
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(36), public :: abb109
   complex(ki), public :: R2d109
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
      abb109(1)=1.0_ki/(-es71+es712-es12)
      abb109(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb109(3)=1.0_ki/(es34+es567-es12-es234)
      abb109(4)=sqrt(mB**2)
      abb109(5)=NC**(-1)
      abb109(6)=spak2l5**(-1)
      abb109(7)=spbl5k2**(-1)
      abb109(8)=spbl6k2**(-1)
      abb109(9)=abb109(5)**2
      abb109(9)=abb109(9)+1.0_ki
      abb109(10)=TR*gW
      abb109(10)=abb109(10)**2*spbk7e7*i_*spak2e7*CVSU*abb109(3)*abb109(2)*abb1&
      &09(1)
      abb109(11)=abb109(10)*abb109(9)
      abb109(12)=spbk3k1*abb109(11)
      abb109(13)=spal5k7*c4
      abb109(14)=abb109(12)*abb109(13)
      abb109(15)=2.0_ki*abb109(5)
      abb109(15)=abb109(15)*abb109(10)*c3
      abb109(16)=abb109(15)*spbk3k1
      abb109(17)=abb109(16)*spal5k7
      abb109(14)=abb109(14)-abb109(17)
      abb109(18)=spbk3k2*spak3k4
      abb109(19)=abb109(18)*abb109(4)
      abb109(20)=abb109(14)*abb109(19)
      abb109(21)=abb109(14)*abb109(4)
      abb109(22)=spbk2k1*spak1k4
      abb109(23)=abb109(22)*abb109(21)
      abb109(24)=mB**2
      abb109(17)=abb109(7)*abb109(17)*abb109(24)
      abb109(25)=abb109(24)*abb109(12)
      abb109(26)=abb109(7)*c4
      abb109(27)=abb109(25)*abb109(26)
      abb109(28)=abb109(27)*spal5k7
      abb109(17)=abb109(17)-abb109(28)
      abb109(28)=abb109(22)*abb109(4)
      abb109(19)=abb109(28)+abb109(19)
      abb109(17)=abb109(6)*abb109(17)*abb109(19)
      abb109(17)=abb109(17)+abb109(20)+abb109(23)
      abb109(17)=spak2l6*abb109(17)
      abb109(20)=spbl5k3*spak3k4
      abb109(23)=-spbl5k1*spak1k4
      abb109(20)=abb109(23)+abb109(20)
      abb109(20)=spal5l6*abb109(20)
      abb109(23)=spal6k7*spak3k4
      abb109(28)=-spbk7k3*abb109(23)
      abb109(29)=spal6k7*spak1k4
      abb109(30)=spbk7k1*abb109(29)
      abb109(20)=abb109(30)+abb109(28)+abb109(20)
      abb109(20)=abb109(14)*abb109(20)
      abb109(24)=abb109(24)*abb109(16)
      abb109(28)=abb109(8)*spal5k7
      abb109(30)=abb109(24)*abb109(28)
      abb109(31)=abb109(28)*c4
      abb109(25)=abb109(25)*abb109(31)
      abb109(25)=abb109(30)-abb109(25)
      abb109(18)=abb109(18)+abb109(22)
      abb109(22)=-abb109(25)*abb109(18)
      abb109(20)=abb109(20)+abb109(22)
      abb109(20)=abb109(4)*abb109(20)
      abb109(17)=abb109(17)+abb109(20)
      abb109(17)=4.0_ki*abb109(17)
      abb109(20)=spak4l6*abb109(4)
      abb109(14)=abb109(14)*abb109(20)
      abb109(14)=16.0_ki*abb109(14)
      abb109(10)=abb109(10)*mB*spbk3k1
      abb109(22)=abb109(10)*c3*abb109(5)
      abb109(22)=2.0_ki*abb109(22)
      abb109(25)=abb109(22)*abb109(28)
      abb109(9)=abb109(10)*abb109(9)
      abb109(10)=abb109(9)*abb109(31)
      abb109(10)=abb109(25)-abb109(10)
      abb109(12)=abb109(26)*abb109(12)
      abb109(16)=abb109(7)*abb109(16)
      abb109(12)=abb109(12)-abb109(16)
      abb109(12)=abb109(6)*abb109(28)*abb109(12)*mB**3
      abb109(12)=abb109(12)+abb109(10)
      abb109(12)=8.0_ki*abb109(18)*abb109(12)
      abb109(16)=abb109(10)*spak3k4
      abb109(18)=abb109(9)*abb109(26)
      abb109(25)=abb109(22)*abb109(7)
      abb109(18)=abb109(25)-abb109(18)
      abb109(25)=abb109(18)*spal6k7
      abb109(30)=abb109(25)*spak3k4
      abb109(30)=abb109(30)+abb109(16)
      abb109(32)=-spbk3k2*abb109(30)
      abb109(33)=abb109(10)*spak1k4
      abb109(34)=abb109(25)*spak1k4
      abb109(34)=abb109(34)+abb109(33)
      abb109(35)=-spbk2k1*abb109(34)
      abb109(32)=abb109(32)+abb109(35)
      abb109(32)=4.0_ki*abb109(32)
      abb109(35)=4.0_ki*spbk7k2
      abb109(30)=-abb109(30)*abb109(35)
      abb109(24)=abb109(24)*abb109(7)
      abb109(24)=abb109(24)-abb109(27)
      abb109(19)=abb109(19)*abb109(8)*abb109(24)
      abb109(24)=spbk7k3*abb109(16)
      abb109(27)=-spbk7k1*abb109(33)
      abb109(19)=abb109(27)+abb109(24)+abb109(19)
      abb109(19)=4.0_ki*abb109(19)
      abb109(24)=abb109(34)*abb109(35)
      abb109(27)=abb109(13)*abb109(9)
      abb109(34)=abb109(22)*spal5k7
      abb109(27)=abb109(21)+abb109(34)-abb109(27)
      abb109(27)=4.0_ki*abb109(27)
      abb109(34)=spak3k4*abb109(27)
      abb109(35)=abb109(18)*spak4k7
      abb109(35)=8.0_ki*abb109(35)
      abb109(27)=-spak1k4*abb109(27)
      abb109(36)=-spbl5k2*abb109(16)
      abb109(9)=abb109(9)*c4
      abb109(9)=abb109(9)-abb109(22)
      abb109(22)=abb109(9)*abb109(23)
      abb109(22)=abb109(22)+abb109(36)
      abb109(22)=4.0_ki*abb109(22)
      abb109(16)=spbl5k3*abb109(16)
      abb109(23)=-spbl5k1*abb109(33)
      abb109(16)=abb109(16)+abb109(23)
      abb109(16)=4.0_ki*abb109(16)
      abb109(23)=spbl5k2*abb109(33)
      abb109(9)=-abb109(9)*abb109(29)
      abb109(9)=abb109(9)+abb109(23)
      abb109(9)=4.0_ki*abb109(9)
      abb109(13)=abb109(11)*abb109(13)
      abb109(23)=abb109(15)*spal5k7
      abb109(13)=abb109(13)-abb109(23)
      abb109(13)=abb109(13)*abb109(20)
      abb109(20)=-spbk4k1*abb109(13)
      abb109(23)=-spak3l6*abb109(21)
      abb109(20)=abb109(20)+abb109(23)
      abb109(20)=8.0_ki*abb109(20)
      abb109(11)=mB*abb109(11)
      abb109(23)=abb109(11)*abb109(26)
      abb109(15)=abb109(15)*mB
      abb109(26)=abb109(15)*abb109(7)
      abb109(23)=abb109(23)-abb109(26)
      abb109(26)=abb109(23)*spak4k7
      abb109(29)=spbk4k1*abb109(26)
      abb109(33)=-spak3k7*abb109(18)
      abb109(29)=abb109(29)+abb109(33)
      abb109(29)=4.0_ki*abb109(29)
      abb109(10)=abb109(25)-abb109(10)
      abb109(25)=8.0_ki*abb109(10)
      abb109(23)=abb109(23)*spal6k7
      abb109(15)=abb109(15)*abb109(28)
      abb109(11)=abb109(11)*abb109(31)
      abb109(11)=-abb109(11)+abb109(15)+abb109(23)
      abb109(11)=4.0_ki*abb109(11)
      abb109(15)=-spbk4k1*abb109(11)
      abb109(13)=spbk4k3*abb109(13)
      abb109(21)=spak1l6*abb109(21)
      abb109(13)=abb109(13)+abb109(21)
      abb109(13)=8.0_ki*abb109(13)
      abb109(21)=-spbk4k3*abb109(26)
      abb109(18)=spak1k7*abb109(18)
      abb109(18)=abb109(21)+abb109(18)
      abb109(18)=4.0_ki*abb109(18)
      abb109(11)=spbk4k3*abb109(11)
      abb109(10)=4.0_ki*abb109(10)
      R2d109=0.0_ki
      rat2 = rat2 + R2d109
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='109' value='", &
          & R2d109, "'/>"
      end if
   end subroutine
end module p5_usbar_epnebbbarg_abbrevd109h0
