module     p9_csbar_epnebbbarg_abbrevd14h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(50), public :: abb14
   complex(ki), public :: R2d14
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
      abb14(1)=1.0_ki/(-es71+es712-es12)
      abb14(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb14(3)=NC**(-1)
      abb14(4)=es56**(-1)
      abb14(5)=spbl5k2**(-1)
      abb14(6)=spbl6k2**(-1)
      abb14(7)=abb14(3)*c3
      abb14(8)=c4*abb14(3)**2
      abb14(7)=abb14(7)-abb14(8)
      abb14(8)=TR*gW
      abb14(7)=abb14(7)*mB*abb14(8)**2*spbk7e7*i_*spak2e7*CVSC*abb14(4)*abb14(2&
      &)*abb14(1)
      abb14(8)=abb14(5)*abb14(7)
      abb14(9)=abb14(8)*spal6k7
      abb14(7)=abb14(6)*abb14(7)
      abb14(10)=abb14(7)*spal5k7
      abb14(9)=abb14(9)+abb14(10)
      abb14(10)=spbk3k2*abb14(9)
      abb14(11)=spak3k4*abb14(10)*spbk3k1
      abb14(12)=spbk2k1*spbk3k1
      abb14(13)=spak1k4*abb14(9)*abb14(12)
      abb14(11)=abb14(11)+abb14(13)
      abb14(13)=-es71*abb14(11)
      abb14(14)=abb14(8)*spak2l6
      abb14(15)=abb14(7)*spak2l5
      abb14(14)=abb14(14)+abb14(15)
      abb14(15)=spbk3k2*abb14(14)*spak3k4
      abb14(16)=spak1k7*spbk2k1
      abb14(17)=abb14(16)*spbk3k1
      abb14(18)=abb14(17)*abb14(15)
      abb14(19)=abb14(14)*spbk2k1**2
      abb14(20)=spak1k7*spbk3k1
      abb14(21)=spak1k4*abb14(20)*abb14(19)
      abb14(13)=abb14(13)+abb14(21)+abb14(18)
      abb14(13)=4.0_ki*abb14(13)
      abb14(11)=-8.0_ki*abb14(11)
      abb14(18)=abb14(8)*spak4l6
      abb14(21)=abb14(7)*spak4l5
      abb14(18)=abb14(18)+abb14(21)
      abb14(21)=abb14(17)*abb14(18)
      abb14(22)=8.0_ki*abb14(21)
      abb14(23)=abb14(14)*spbk2k1
      abb14(24)=spak4k7*spbk3k2
      abb14(25)=abb14(24)*abb14(23)
      abb14(21)=abb14(25)-abb14(21)
      abb14(25)=abb14(9)*spbk7k3
      abb14(26)=spak4k7*spbk2k1
      abb14(27)=abb14(26)*abb14(25)
      abb14(27)=abb14(27)-abb14(21)
      abb14(27)=8.0_ki*abb14(27)
      abb14(28)=abb14(7)*spak1l5
      abb14(29)=abb14(8)*spak1l6
      abb14(28)=abb14(28)+abb14(29)
      abb14(29)=spak4k7*abb14(12)*abb14(28)
      abb14(26)=spbk4k3*abb14(26)*abb14(18)
      abb14(30)=abb14(9)*abb14(24)
      abb14(31)=spbk7k1*abb14(30)
      abb14(21)=abb14(31)+abb14(26)+abb14(29)+abb14(21)
      abb14(21)=4.0_ki*abb14(21)
      abb14(15)=-spbk3k1*abb14(15)
      abb14(12)=-abb14(12)*abb14(14)*spak1k4
      abb14(12)=abb14(12)+abb14(15)
      abb14(12)=4.0_ki*abb14(12)
      abb14(15)=spbk3k1*abb14(18)
      abb14(26)=8.0_ki*abb14(15)
      abb14(15)=4.0_ki*abb14(15)
      abb14(29)=4.0_ki*abb14(8)
      abb14(31)=spak1k7*spak3k4*spbk3k1**2
      abb14(32)=-abb14(29)*abb14(31)
      abb14(33)=spak4k7*spbk3k1
      abb14(33)=8.0_ki*abb14(33)
      abb14(34)=-abb14(8)*abb14(33)
      abb14(35)=4.0_ki*spbk3k1
      abb14(36)=abb14(35)*abb14(8)
      abb14(37)=-spak4k7*abb14(36)
      abb14(38)=spak3k4*abb14(36)
      abb14(36)=-spak1k4*abb14(36)
      abb14(39)=8.0_ki*abb14(24)
      abb14(40)=abb14(39)*abb14(8)
      abb14(41)=-abb14(24)*abb14(29)
      abb14(42)=4.0_ki*abb14(7)
      abb14(31)=-abb14(42)*abb14(31)
      abb14(33)=-abb14(7)*abb14(33)
      abb14(35)=abb14(35)*abb14(7)
      abb14(43)=-spak4k7*abb14(35)
      abb14(44)=spak3k4*abb14(35)
      abb14(35)=-spak1k4*abb14(35)
      abb14(39)=abb14(39)*abb14(7)
      abb14(24)=-abb14(24)*abb14(42)
      abb14(45)=abb14(8)*spak3l6
      abb14(46)=abb14(7)*spak3l5
      abb14(45)=abb14(45)+abb14(46)
      abb14(46)=abb14(17)*abb14(45)
      abb14(19)=-spak1k7*abb14(19)
      abb14(47)=spbk2k1*abb14(9)
      abb14(48)=es71*abb14(47)
      abb14(49)=abb14(16)*abb14(18)
      abb14(50)=spbk4k1*abb14(49)
      abb14(19)=abb14(50)+abb14(48)+abb14(19)+abb14(46)
      abb14(19)=4.0_ki*abb14(19)
      abb14(46)=8.0_ki*abb14(47)
      abb14(45)=-spbk3k1*abb14(45)
      abb14(18)=-spbk4k1*abb14(18)
      abb14(18)=abb14(18)+abb14(23)+abb14(45)
      abb14(18)=4.0_ki*abb14(18)
      abb14(9)=4.0_ki*abb14(9)
      abb14(23)=spbk7k2*abb14(9)
      abb14(45)=spak3k7*spbk3k2
      abb14(47)=spbk4k2*spak4k7
      abb14(45)=abb14(16)+abb14(45)+abb14(47)
      abb14(45)=4.0_ki*abb14(45)
      abb14(47)=abb14(8)*abb14(45)
      abb14(45)=abb14(7)*abb14(45)
      abb14(17)=-abb14(17)*abb14(28)
      abb14(28)=-es12+es123-es456+es712+es71
      abb14(28)=abb14(10)*abb14(28)
      abb14(16)=-abb14(16)*abb14(25)
      abb14(14)=abb14(14)*spbk3k2**2
      abb14(25)=spak3k7*abb14(14)
      abb14(48)=-spbk4k3*abb14(49)
      abb14(16)=abb14(48)+abb14(25)+abb14(16)+abb14(28)+abb14(17)
      abb14(16)=4.0_ki*abb14(16)
      abb14(17)=8.0_ki*abb14(10)
      abb14(10)=4.0_ki*abb14(10)
      abb14(8)=8.0_ki*abb14(8)
      abb14(8)=abb14(20)*abb14(8)
      abb14(7)=8.0_ki*abb14(7)
      abb14(7)=abb14(20)*abb14(7)
      abb14(9)=-spbk4k2*abb14(9)
      abb14(14)=-spak4k7*abb14(14)
      abb14(20)=spbk7k3*abb14(30)
      abb14(14)=abb14(20)+abb14(14)
      abb14(14)=4.0_ki*abb14(14)
      R2d14=0.0_ki
      rat2 = rat2 + R2d14
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='14' value='", &
          & R2d14, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd14h0
