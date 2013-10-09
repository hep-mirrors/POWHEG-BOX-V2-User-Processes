module     p9_csbar_epnebbbarg_abbrevd103h1
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(43), public :: abb103
   complex(ki), public :: R2d103
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
      abb103(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb103(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb103(3)=NC**(-1)
      abb103(4)=es56**(-1)
      abb103(5)=spak2l5**(-1)
      abb103(6)=spbl6k2**(-1)
      abb103(7)=c4*abb103(3)**2
      abb103(8)=abb103(7)*spbl5k2
      abb103(9)=c1*abb103(3)
      abb103(10)=abb103(9)*spbl5k2
      abb103(8)=abb103(10)-abb103(8)
      abb103(11)=mB**2
      abb103(12)=abb103(4)*i_*CVSC*abb103(2)*abb103(1)
      abb103(13)=TR*gW
      abb103(13)=abb103(13)**2
      abb103(8)=abb103(6)*abb103(13)*abb103(8)*abb103(11)*abb103(12)
      abb103(14)=-spbe7k3*abb103(8)
      abb103(12)=abb103(12)*abb103(13)*spak2l6
      abb103(13)=abb103(12)*spbe7k3
      abb103(15)=abb103(13)*abb103(9)
      abb103(16)=abb103(13)*abb103(7)
      abb103(15)=abb103(15)-abb103(16)
      abb103(17)=-abb103(5)*abb103(11)*abb103(15)
      abb103(16)=abb103(16)*spbl5k2
      abb103(10)=abb103(10)*abb103(13)
      abb103(10)=-abb103(16)+abb103(10)+abb103(17)+abb103(14)
      abb103(13)=abb103(10)*spbk3k1
      abb103(14)=abb103(13)*spak3e7
      abb103(7)=abb103(7)-abb103(9)
      abb103(7)=abb103(12)*abb103(7)
      abb103(9)=-abb103(5)*abb103(11)*abb103(7)
      abb103(11)=-spbl5k2*abb103(7)
      abb103(8)=abb103(8)+abb103(9)-abb103(11)
      abb103(9)=-spak4e7*abb103(8)
      abb103(11)=spbk4k3*spbe7k1
      abb103(12)=abb103(9)*abb103(11)
      abb103(12)=-abb103(14)+abb103(12)
      abb103(12)=spak2k4*abb103(12)
      abb103(14)=abb103(10)*spak4e7
      abb103(16)=abb103(14)*spak2k4
      abb103(15)=abb103(15)*spbl6l5
      abb103(17)=abb103(15)*spak4l6
      abb103(18)=abb103(17)*spak4e7
      abb103(16)=abb103(18)-abb103(16)
      abb103(18)=spbk4k1*abb103(16)
      abb103(19)=abb103(10)*spak2k4
      abb103(17)=abb103(19)-abb103(17)
      abb103(19)=-spae7k7*abb103(17)
      abb103(20)=-spbk7k1*abb103(19)
      abb103(21)=spak3e7*spbk3k1*abb103(15)
      abb103(7)=abb103(7)*spbl6l5
      abb103(22)=abb103(7)*spak4e7
      abb103(11)=abb103(22)*abb103(11)
      abb103(11)=abb103(21)+abb103(11)
      abb103(11)=spak4l6*abb103(11)
      abb103(11)=abb103(20)+abb103(18)+abb103(11)+abb103(12)
      abb103(11)=4.0_ki*abb103(11)
      abb103(12)=-spbk3k1*abb103(8)
      abb103(18)=spak2k4*abb103(12)
      abb103(20)=spbk3k1*abb103(7)
      abb103(21)=spak4l6*abb103(20)
      abb103(18)=abb103(18)+abb103(21)
      abb103(18)=8.0_ki*abb103(18)
      abb103(21)=spbk3k1*spak4e7
      abb103(23)=abb103(7)*abb103(21)
      abb103(24)=8.0_ki*abb103(23)
      abb103(23)=-4.0_ki*abb103(23)
      abb103(25)=-abb103(21)*abb103(8)
      abb103(26)=8.0_ki*abb103(25)
      abb103(25)=4.0_ki*abb103(25)
      abb103(27)=8.0_ki*abb103(17)
      abb103(17)=-4.0_ki*abb103(17)
      abb103(28)=4.0_ki*spak3k4
      abb103(29)=abb103(28)*abb103(15)
      abb103(30)=abb103(29)*spbk3k1
      abb103(31)=-spae7k7*abb103(30)
      abb103(29)=abb103(21)*abb103(29)
      abb103(30)=spak3e7*abb103(30)
      abb103(32)=8.0_ki*spak3k4
      abb103(33)=abb103(20)*abb103(32)
      abb103(20)=-spak3e7*abb103(20)
      abb103(22)=-spbk4k1*abb103(22)
      abb103(20)=abb103(20)+abb103(22)
      abb103(20)=4.0_ki*abb103(20)
      abb103(22)=spak3e7*abb103(12)
      abb103(34)=spbk4k1*abb103(9)
      abb103(22)=abb103(22)+abb103(34)
      abb103(22)=4.0_ki*abb103(22)
      abb103(34)=-spak2k3*abb103(10)
      abb103(35)=spak2k4*abb103(8)
      abb103(36)=-spak4l6*abb103(7)
      abb103(35)=abb103(35)+abb103(36)
      abb103(35)=spbe7k4*abb103(35)
      abb103(36)=abb103(15)*spak3l6
      abb103(34)=abb103(36)+abb103(34)+abb103(35)
      abb103(35)=-abb103(8)*spbk7e7
      abb103(37)=spak2k7*abb103(35)
      abb103(38)=-spal6k7*abb103(7)*spbk7e7
      abb103(34)=abb103(38)+2.0_ki*abb103(34)+abb103(37)
      abb103(34)=4.0_ki*abb103(34)
      abb103(35)=-spak2e7*abb103(35)
      abb103(37)=abb103(7)*spal6e7
      abb103(38)=spbk7e7*abb103(37)
      abb103(35)=abb103(35)+abb103(38)
      abb103(35)=4.0_ki*abb103(35)
      abb103(38)=4.0_ki*spbe7k1
      abb103(39)=abb103(38)*abb103(7)
      abb103(40)=-spae7k7*abb103(39)
      abb103(41)=spak4e7*abb103(39)
      abb103(39)=spak3e7*abb103(39)
      abb103(7)=8.0_ki*abb103(7)
      abb103(14)=-spbk4k3*abb103(14)
      abb103(42)=spbk7k3*spae7k7
      abb103(43)=abb103(10)*abb103(42)
      abb103(14)=abb103(14)+abb103(43)
      abb103(14)=spak2k3*abb103(14)
      abb103(43)=spbk4k3*spak4e7
      abb103(42)=abb103(43)-abb103(42)
      abb103(36)=abb103(42)*abb103(36)
      abb103(14)=abb103(36)+abb103(14)
      abb103(14)=4.0_ki*abb103(14)
      abb103(36)=abb103(10)*spak2e7
      abb103(15)=abb103(15)*spal6e7
      abb103(15)=abb103(36)+abb103(15)
      abb103(36)=8.0_ki*abb103(15)
      abb103(15)=4.0_ki*abb103(15)
      abb103(42)=-spak2e7*abb103(8)
      abb103(37)=abb103(42)-abb103(37)
      abb103(37)=8.0_ki*spbe7k4*abb103(37)
      abb103(16)=-spbk4k3*abb103(16)
      abb103(19)=spbk7k3*abb103(19)
      abb103(16)=abb103(19)+abb103(16)
      abb103(16)=4.0_ki*abb103(16)
      abb103(13)=abb103(13)*abb103(28)
      abb103(19)=-spae7k7*abb103(13)
      abb103(42)=-abb103(8)*abb103(38)
      abb103(43)=spae7k7*abb103(42)
      abb103(10)=abb103(28)*abb103(21)*abb103(10)
      abb103(9)=-abb103(9)*abb103(38)
      abb103(13)=spak3e7*abb103(13)
      abb103(12)=-abb103(12)*abb103(32)
      abb103(21)=-spak3e7*abb103(42)
      abb103(8)=8.0_ki*abb103(8)
      R2d103=0.0_ki
      rat2 = rat2 + R2d103
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='103' value='", &
          & R2d103, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd103h1
