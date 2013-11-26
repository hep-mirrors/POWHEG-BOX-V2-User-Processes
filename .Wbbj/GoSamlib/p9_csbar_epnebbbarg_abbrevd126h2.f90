module     p9_csbar_epnebbbarg_abbrevd126h2
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(35), public :: abb126
   complex(ki), public :: R2d126
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
      abb126(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb126(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb126(3)=NC**(-1)
      abb126(4)=es56**(-1)
      abb126(5)=spbl5k2**(-1)
      abb126(6)=spak2l6**(-1)
      abb126(7)=c4*abb126(3)**2
      abb126(8)=c1*abb126(3)
      abb126(7)=abb126(7)-abb126(8)
      abb126(8)=TR*gW
      abb126(8)=abb126(8)**2*abb126(4)*i_*CVSC*abb126(2)*abb126(1)
      abb126(9)=mB**2
      abb126(10)=abb126(5)*abb126(8)*abb126(9)*spbl6k2*abb126(7)
      abb126(7)=abb126(7)*spak2l5*abb126(8)
      abb126(8)=-abb126(6)*abb126(9)*abb126(7)
      abb126(9)=-spbl6k2*abb126(7)
      abb126(8)=-abb126(9)+abb126(8)-abb126(10)
      abb126(9)=abb126(8)*spbe7k3
      abb126(10)=-spak2e7*abb126(9)
      abb126(11)=abb126(10)*spak3k4
      abb126(12)=-spak2e7*abb126(8)
      abb126(13)=abb126(12)*spbk7e7
      abb126(14)=-spak4k7*abb126(13)
      abb126(7)=abb126(7)*spbl6l5
      abb126(15)=abb126(7)*spbe7k3
      abb126(16)=abb126(15)*spak3k4
      abb126(17)=abb126(7)*spbk7e7
      abb126(18)=-spak4k7*abb126(17)
      abb126(18)=abb126(18)+abb126(16)
      abb126(18)=spal5e7*abb126(18)
      abb126(14)=abb126(18)+abb126(14)+abb126(11)
      abb126(14)=spbk3k1*abb126(14)
      abb126(18)=abb126(15)*spal5e7
      abb126(10)=abb126(10)+abb126(18)
      abb126(18)=spbk7k1*spak4k7
      abb126(19)=-abb126(10)*abb126(18)
      abb126(14)=abb126(19)+abb126(14)
      abb126(14)=4.0_ki*abb126(14)
      abb126(19)=spak4k7*spbk7k3
      abb126(20)=-abb126(19)*abb126(8)
      abb126(21)=spbk7e7*abb126(20)
      abb126(22)=-spbk7k3*abb126(8)
      abb126(23)=abb126(22)*spak3k4
      abb126(24)=spbe7k3*abb126(23)
      abb126(21)=abb126(21)+abb126(24)
      abb126(21)=spak2k7*abb126(21)
      abb126(24)=abb126(17)*abb126(19)
      abb126(16)=abb126(16)*spbk7k3
      abb126(16)=abb126(24)+abb126(16)
      abb126(24)=spal5k7*abb126(16)
      abb126(21)=abb126(21)+abb126(24)
      abb126(21)=4.0_ki*abb126(21)
      abb126(9)=spak2k4*abb126(9)
      abb126(15)=abb126(15)*spak4l5
      abb126(9)=abb126(9)+abb126(15)
      abb126(15)=-8.0_ki*abb126(9)
      abb126(9)=-4.0_ki*abb126(9)
      abb126(13)=-abb126(19)*abb126(13)
      abb126(11)=-spbk7k3*abb126(11)
      abb126(16)=-spal5e7*abb126(16)
      abb126(11)=abb126(16)+abb126(13)+abb126(11)
      abb126(11)=4.0_ki*abb126(11)
      abb126(13)=-spak2k4*abb126(22)
      abb126(16)=abb126(7)*spbk7k3
      abb126(24)=spak4l5*abb126(16)
      abb126(13)=abb126(13)+abb126(24)
      abb126(13)=16.0_ki*abb126(13)
      abb126(24)=4.0_ki*spbe7k1
      abb126(25)=abb126(24)*spae7k7
      abb126(26)=abb126(25)*abb126(7)
      abb126(19)=abb126(19)*abb126(26)
      abb126(27)=8.0_ki*abb126(7)
      abb126(28)=spbk3k1*spak4k7*abb126(27)
      abb126(29)=abb126(7)*spak3k4
      abb126(30)=-spbk7k3*abb126(25)*abb126(29)
      abb126(29)=-spbk3k1*abb126(29)
      abb126(18)=-abb126(7)*abb126(18)
      abb126(18)=abb126(29)+abb126(18)
      abb126(18)=8.0_ki*abb126(18)
      abb126(29)=spak4e7*spbe7k1*abb126(27)
      abb126(31)=spak4e7*abb126(7)*abb126(24)
      abb126(7)=abb126(7)*spal5e7
      abb126(7)=abb126(12)+abb126(7)
      abb126(7)=4.0_ki*abb126(7)
      abb126(12)=-spbe7k1*abb126(7)
      abb126(32)=-spak2k7*spbk7e7*abb126(8)
      abb126(17)=spal5k7*abb126(17)
      abb126(17)=abb126(32)+abb126(17)
      abb126(17)=4.0_ki*abb126(17)
      abb126(7)=-spbk7e7*abb126(7)
      abb126(22)=spak2k7*abb126(22)
      abb126(16)=spal5k7*abb126(16)
      abb126(16)=abb126(22)+abb126(16)
      abb126(16)=16.0_ki*abb126(16)
      abb126(22)=-8.0_ki*abb126(10)
      abb126(10)=-4.0_ki*abb126(10)
      abb126(20)=abb126(20)*abb126(25)
      abb126(32)=-spak4k7*abb126(8)
      abb126(33)=8.0_ki*spbk3k1*abb126(32)
      abb126(34)=-abb126(8)*abb126(25)
      abb126(23)=-abb126(25)*abb126(23)
      abb126(25)=spbk3k1*spak3k4*abb126(8)
      abb126(32)=-spbk7k1*abb126(32)
      abb126(25)=abb126(25)+abb126(32)
      abb126(25)=8.0_ki*abb126(25)
      abb126(32)=-abb126(8)*spak4e7
      abb126(35)=8.0_ki*spbe7k1*abb126(32)
      abb126(24)=abb126(24)*abb126(32)
      abb126(8)=-8.0_ki*abb126(8)
      R2d126=0.0_ki
      rat2 = rat2 + R2d126
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='126' value='", &
          & R2d126, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd126h2
