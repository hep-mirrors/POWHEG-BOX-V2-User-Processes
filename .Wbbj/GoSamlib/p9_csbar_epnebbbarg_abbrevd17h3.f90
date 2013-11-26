module     p9_csbar_epnebbbarg_abbrevd17h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(55), public :: abb17
   complex(ki), public :: R2d17
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
      abb17(1)=1.0_ki/(-es71+es712-es12)
      abb17(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb17(3)=es56**(-1)
      abb17(4)=spak2l5**(-1)
      abb17(5)=spak2l6**(-1)
      abb17(6)=spbl5k2**(-1)
      abb17(7)=spbl6k2**(-1)
      abb17(8)=NC*c3
      abb17(8)=abb17(8)-c4
      abb17(9)=TR*gW
      abb17(8)=abb17(8)*abb17(9)**2*spbk7e7*i_*spak2e7*CVSC*abb17(3)*abb17(2)*a&
      &bb17(1)
      abb17(9)=-mB*abb17(8)
      abb17(10)=-abb17(4)*abb17(9)
      abb17(11)=abb17(10)*spbl6k3
      abb17(9)=-abb17(5)*abb17(9)
      abb17(12)=abb17(9)*spbl5k3
      abb17(13)=abb17(11)+abb17(12)
      abb17(14)=spbk3k1*spak3k4
      abb17(15)=abb17(14)*spak2k7
      abb17(16)=abb17(15)*abb17(13)
      abb17(17)=8.0_ki*abb17(16)
      abb17(8)=mB**3*abb17(8)
      abb17(18)=-abb17(8)*abb17(4)**2
      abb17(19)=abb17(18)*abb17(15)
      abb17(20)=spbl6k3*abb17(19)
      abb17(21)=-abb17(8)*abb17(5)*abb17(4)
      abb17(22)=abb17(21)*abb17(15)
      abb17(23)=spbl5k3*abb17(22)
      abb17(20)=abb17(20)+abb17(23)
      abb17(20)=abb17(6)*abb17(20)
      abb17(23)=spbl6k3*abb17(22)
      abb17(8)=-abb17(8)*abb17(5)**2
      abb17(24)=abb17(8)*spbl5k3
      abb17(25)=abb17(15)*abb17(24)
      abb17(23)=abb17(23)+abb17(25)
      abb17(23)=abb17(7)*abb17(23)
      abb17(20)=abb17(20)+abb17(23)
      abb17(20)=8.0_ki*abb17(20)
      abb17(23)=abb17(21)*spak2k7
      abb17(25)=abb17(23)*spbl6k1
      abb17(26)=abb17(8)*spbl5k1*spak2k7
      abb17(25)=abb17(25)+abb17(26)
      abb17(25)=abb17(25)*abb17(7)
      abb17(26)=abb17(23)*spbl5k1
      abb17(27)=abb17(18)*spak2k7
      abb17(28)=abb17(27)*spbl6k1
      abb17(26)=abb17(26)+abb17(28)
      abb17(26)=abb17(26)*abb17(6)
      abb17(25)=abb17(25)+abb17(26)
      abb17(26)=-spbk3k2*abb17(25)
      abb17(28)=abb17(10)*spbl6k1
      abb17(29)=abb17(9)*spbl5k1
      abb17(30)=abb17(28)+abb17(29)
      abb17(31)=-spal6k7*spbl6k3
      abb17(32)=spbk4k3*spak4k7
      abb17(31)=abb17(32)+abb17(31)
      abb17(31)=abb17(30)*abb17(31)
      abb17(32)=-spbl5k3*abb17(28)
      abb17(33)=-spbl5k1*abb17(12)
      abb17(32)=abb17(32)+abb17(33)
      abb17(32)=spal5k7*abb17(32)
      abb17(33)=abb17(30)*spak1k7
      abb17(34)=spbk3k1*abb17(33)
      abb17(26)=abb17(26)+abb17(34)+abb17(32)+abb17(31)
      abb17(26)=spak2k4*abb17(26)
      abb17(31)=spbl6k3*spak2k7
      abb17(32)=-abb17(18)*abb17(31)
      abb17(34)=spbl5k3*spak2k7
      abb17(35)=-abb17(21)*abb17(34)
      abb17(32)=abb17(32)+abb17(35)
      abb17(32)=abb17(6)*abb17(32)
      abb17(35)=-abb17(21)*abb17(31)
      abb17(36)=-abb17(8)*abb17(34)
      abb17(35)=abb17(35)+abb17(36)
      abb17(35)=abb17(7)*abb17(35)
      abb17(32)=abb17(32)+abb17(35)
      abb17(32)=spbk2k1*spak2k4*abb17(32)
      abb17(35)=spak4k7*spbk3k1
      abb17(36)=spak1k2*abb17(35)*abb17(30)
      abb17(32)=abb17(32)+abb17(36)
      abb17(34)=abb17(34)*abb17(9)
      abb17(31)=abb17(31)*abb17(10)
      abb17(31)=abb17(34)+abb17(31)
      abb17(34)=spak4l6*spbl6k1
      abb17(36)=spak4l5*spbl5k1
      abb17(34)=abb17(34)+abb17(36)
      abb17(34)=-2.0_ki*abb17(34)
      abb17(34)=abb17(31)*abb17(34)
      abb17(16)=-abb17(16)+abb17(34)+2.0_ki*abb17(32)+abb17(26)
      abb17(16)=2.0_ki*abb17(16)
      abb17(26)=4.0_ki*spak1k2
      abb17(26)=abb17(26)*abb17(30)
      abb17(32)=abb17(14)*abb17(26)
      abb17(34)=abb17(10)*spbl6k3**2
      abb17(36)=spak3k4*spak2k7
      abb17(37)=-abb17(36)*abb17(34)
      abb17(38)=abb17(36)*spbl6k3
      abb17(39)=-abb17(12)*abb17(38)
      abb17(37)=abb17(37)+abb17(39)
      abb17(37)=4.0_ki*abb17(37)
      abb17(39)=abb17(13)*spbl5k3
      abb17(40)=-4.0_ki*abb17(36)*abb17(39)
      abb17(30)=spak2k7*abb17(30)
      abb17(41)=8.0_ki*abb17(30)
      abb17(25)=-8.0_ki*abb17(25)
      abb17(30)=2.0_ki*abb17(30)
      abb17(42)=4.0_ki*abb17(9)
      abb17(43)=spbl6l5*spak2k7
      abb17(44)=abb17(42)*abb17(43)
      abb17(45)=4.0_ki*abb17(10)
      abb17(43)=-abb17(45)*abb17(43)
      abb17(31)=-2.0_ki*abb17(31)
      abb17(11)=spal6k7*abb17(11)
      abb17(46)=abb17(10)*spal5k7
      abb17(47)=spbl5k3*abb17(46)
      abb17(11)=abb17(47)+abb17(11)
      abb17(11)=abb17(14)*abb17(11)
      abb17(19)=abb17(6)*abb17(19)
      abb17(47)=abb17(7)*abb17(22)
      abb17(19)=abb17(19)+abb17(47)
      abb17(19)=spbk3k2*abb17(19)
      abb17(47)=spak3k4*spak1k7*spbk3k1**2
      abb17(48)=-abb17(10)*abb17(47)
      abb17(11)=abb17(48)+abb17(19)+abb17(11)
      abb17(11)=2.0_ki*abb17(11)
      abb17(19)=abb17(45)*abb17(35)
      abb17(48)=2.0_ki*abb17(35)
      abb17(49)=-abb17(10)*abb17(48)
      abb17(50)=-abb17(14)*abb17(45)
      abb17(27)=abb17(27)*abb17(6)
      abb17(51)=abb17(7)*abb17(23)
      abb17(51)=abb17(27)+abb17(51)
      abb17(51)=spbk2k1*abb17(51)
      abb17(28)=-spal6k7*abb17(28)
      abb17(52)=-spbl5k1*abb17(46)
      abb17(53)=spak3k7*spbk3k1
      abb17(54)=abb17(10)*abb17(53)
      abb17(10)=abb17(10)*spak4k7
      abb17(55)=spbk4k1*abb17(10)
      abb17(28)=abb17(55)+abb17(54)+abb17(51)+abb17(28)+abb17(52)
      abb17(28)=2.0_ki*abb17(28)
      abb17(51)=abb17(9)*spal6k7
      abb17(52)=spbl6k3*abb17(51)
      abb17(54)=spal5k7*abb17(12)
      abb17(52)=abb17(54)+abb17(52)
      abb17(52)=abb17(14)*abb17(52)
      abb17(22)=abb17(6)*abb17(22)
      abb17(8)=abb17(8)*abb17(7)
      abb17(15)=abb17(15)*abb17(8)
      abb17(15)=abb17(22)+abb17(15)
      abb17(15)=spbk3k2*abb17(15)
      abb17(22)=-abb17(9)*abb17(47)
      abb17(15)=abb17(22)+abb17(15)+abb17(52)
      abb17(15)=2.0_ki*abb17(15)
      abb17(22)=abb17(42)*abb17(35)
      abb17(35)=-abb17(9)*abb17(48)
      abb17(47)=-abb17(14)*abb17(42)
      abb17(8)=abb17(8)*spak2k7
      abb17(48)=abb17(6)*abb17(23)
      abb17(48)=abb17(48)+abb17(8)
      abb17(48)=spbk2k1*abb17(48)
      abb17(52)=-spbl6k1*abb17(51)
      abb17(29)=-spal5k7*abb17(29)
      abb17(53)=abb17(9)*abb17(53)
      abb17(9)=abb17(9)*spak4k7
      abb17(54)=spbk4k1*abb17(9)
      abb17(29)=abb17(54)+abb17(53)+abb17(48)+abb17(52)+abb17(29)
      abb17(29)=2.0_ki*abb17(29)
      abb17(12)=spbl6k3*abb17(12)
      abb17(12)=abb17(34)+abb17(12)
      abb17(12)=spal6k7*abb17(12)
      abb17(34)=spal5k7*abb17(39)
      abb17(12)=abb17(34)+abb17(12)
      abb17(12)=spak3k4*abb17(12)
      abb17(18)=-abb17(18)*abb17(38)
      abb17(34)=-abb17(21)*abb17(36)*spbl5k3
      abb17(18)=abb17(18)+abb17(34)
      abb17(18)=abb17(6)*abb17(18)
      abb17(21)=-abb17(21)*abb17(38)
      abb17(24)=-abb17(36)*abb17(24)
      abb17(21)=abb17(21)+abb17(24)
      abb17(21)=abb17(7)*abb17(21)
      abb17(18)=abb17(18)+abb17(21)
      abb17(18)=spbk3k2*abb17(18)
      abb17(14)=-spak1k7*abb17(14)*abb17(13)
      abb17(12)=abb17(14)+abb17(18)+abb17(12)
      abb17(12)=2.0_ki*abb17(12)
      abb17(14)=abb17(13)*spak4k7
      abb17(18)=4.0_ki*abb17(14)
      abb17(14)=2.0_ki*abb17(14)
      abb17(21)=spbl6k2*abb17(27)
      abb17(8)=spbl5k2*abb17(8)
      abb17(8)=abb17(21)+abb17(8)
      abb17(21)=abb17(51)-abb17(46)
      abb17(21)=spbl6l5*abb17(21)
      abb17(13)=spak3k7*abb17(13)
      abb17(10)=spbl6k4*abb17(10)
      abb17(9)=spbl5k4*abb17(9)
      abb17(8)=abb17(9)+abb17(10)+abb17(13)+abb17(21)+6.0_ki*abb17(23)-abb17(33&
      &)+3.0_ki*abb17(8)
      abb17(8)=2.0_ki*abb17(8)
      R2d17=0.0_ki
      rat2 = rat2 + R2d17
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='17' value='", &
          & R2d17, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd17h3
