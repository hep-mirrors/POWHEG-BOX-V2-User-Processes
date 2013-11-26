module     p9_csbar_epnebbbarg_abbrevd305h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(47), public :: abb305
   complex(ki), public :: R2d305
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
      abb305(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb305(2)=1.0_ki/(es34+es567-es12-es234)
      abb305(3)=sqrt(mB**2)
      abb305(4)=NC**(-1)
      abb305(5)=spak2l5**(-1)
      abb305(6)=spak2l6**(-1)
      abb305(7)=TR*gW
      abb305(7)=abb305(7)**2*i_*CVSC*abb305(2)*abb305(1)
      abb305(8)=abb305(7)*abb305(4)
      abb305(9)=abb305(8)*abb305(3)
      abb305(10)=spak2e7*spbk3k1
      abb305(11)=abb305(9)*abb305(10)
      abb305(12)=c1+c3
      abb305(13)=spak2k7*spbk7e7
      abb305(14)=-abb305(12)*abb305(11)*abb305(13)
      abb305(15)=abb305(7)*spbk7e7
      abb305(10)=abb305(15)*abb305(10)*abb305(3)
      abb305(16)=c2*abb305(4)**2
      abb305(16)=abb305(16)+c4
      abb305(17)=abb305(16)*spak2k7
      abb305(18)=abb305(10)*abb305(17)
      abb305(14)=abb305(18)+abb305(14)
      abb305(18)=spbl6k3*spak3k4
      abb305(19)=-spbl6k1*spak1k4
      abb305(18)=abb305(19)+abb305(18)
      abb305(19)=abb305(5)*mB**2
      abb305(19)=abb305(19)-spbl5k2
      abb305(14)=4.0_ki*abb305(18)*abb305(14)*abb305(19)
      abb305(18)=abb305(6)*mB
      abb305(19)=abb305(7)*abb305(18)*spbk3k1
      abb305(20)=abb305(19)*spak2e7
      abb305(21)=abb305(20)*spbe7l5
      abb305(22)=-abb305(16)*abb305(21)*spak2k4
      abb305(23)=abb305(12)*abb305(20)*abb305(4)
      abb305(24)=spbe7l5*spak2k4
      abb305(25)=abb305(24)*abb305(23)
      abb305(22)=abb305(25)+abb305(22)
      abb305(25)=abb305(3)**2
      abb305(26)=abb305(22)*abb305(25)
      abb305(10)=-abb305(10)*abb305(16)
      abb305(11)=abb305(11)*abb305(12)*spbk7e7
      abb305(10)=abb305(11)+abb305(10)
      abb305(11)=abb305(10)*spbl6l5
      abb305(27)=abb305(11)*spak4k7
      abb305(26)=abb305(26)+abb305(27)
      abb305(26)=8.0_ki*abb305(26)
      abb305(27)=abb305(7)*spak2k4
      abb305(28)=abb305(27)*abb305(16)
      abb305(29)=-abb305(28)*abb305(3)*spbk3k1
      abb305(9)=abb305(9)*abb305(12)
      abb305(30)=spbk3k1*abb305(9)
      abb305(31)=spak2k4*abb305(30)
      abb305(29)=abb305(31)+abb305(29)
      abb305(29)=abb305(29)*spbl6l5
      abb305(31)=abb305(19)*abb305(4)
      abb305(32)=abb305(12)*abb305(31)*spak2k7
      abb305(33)=-spak2k4*abb305(32)
      abb305(34)=abb305(19)*spak2k4
      abb305(35)=abb305(34)*abb305(17)
      abb305(33)=abb305(35)+abb305(33)
      abb305(33)=abb305(33)*spbk7l5
      abb305(29)=abb305(29)-abb305(33)
      abb305(29)=16.0_ki*abb305(29)
      abb305(33)=16.0_ki*abb305(22)
      abb305(35)=-abb305(13)*abb305(23)
      abb305(36)=abb305(20)*spbk7e7
      abb305(37)=abb305(36)*abb305(17)
      abb305(35)=abb305(37)+abb305(35)
      abb305(37)=spbl5k3*spak3k4
      abb305(38)=spbl5k1*spak1k4
      abb305(37)=abb305(37)-abb305(38)
      abb305(38)=4.0_ki*abb305(37)
      abb305(39)=abb305(35)*abb305(38)
      abb305(22)=8.0_ki*abb305(22)
      abb305(20)=abb305(20)*abb305(16)
      abb305(20)=abb305(20)-abb305(23)
      abb305(40)=-abb305(20)*abb305(25)*abb305(38)
      abb305(20)=abb305(37)*abb305(20)
      abb305(41)=-8.0_ki*abb305(20)
      abb305(20)=4.0_ki*abb305(20)
      abb305(10)=-abb305(10)*abb305(38)
      abb305(38)=8.0_ki*abb305(35)
      abb305(7)=abb305(3)*abb305(16)*abb305(7)
      abb305(42)=abb305(7)-abb305(9)
      abb305(42)=spak4k7*spbl6l5*spbk7e7*spak2e7*abb305(42)
      abb305(43)=abb305(18)*spak2e7
      abb305(44)=abb305(12)*abb305(8)*abb305(43)
      abb305(24)=abb305(24)*abb305(44)
      abb305(45)=-abb305(28)*abb305(43)*spbe7l5
      abb305(24)=abb305(24)+abb305(45)
      abb305(45)=abb305(24)*abb305(25)
      abb305(42)=abb305(42)-abb305(45)
      abb305(45)=spbk4k1*abb305(42)
      abb305(21)=abb305(21)*abb305(16)
      abb305(46)=abb305(23)*spbe7l5
      abb305(21)=abb305(21)-abb305(46)
      abb305(25)=abb305(25)*abb305(21)
      abb305(46)=spak2k3*abb305(25)
      abb305(47)=-spak3k7*abb305(11)
      abb305(45)=abb305(47)+abb305(45)+abb305(46)
      abb305(45)=4.0_ki*abb305(45)
      abb305(27)=abb305(17)*abb305(27)*abb305(18)
      abb305(8)=abb305(12)*spak2k4*abb305(8)*abb305(18)
      abb305(46)=abb305(8)*spak2k7
      abb305(27)=abb305(27)-abb305(46)
      abb305(27)=abb305(27)*spbk7l5
      abb305(46)=abb305(28)*abb305(3)
      abb305(9)=abb305(9)*spak2k4
      abb305(9)=abb305(46)-abb305(9)
      abb305(9)=abb305(9)*spbl6l5
      abb305(9)=abb305(27)+abb305(9)
      abb305(27)=-spbk4k1*abb305(9)
      abb305(19)=abb305(16)*abb305(19)
      abb305(46)=spak2k7*abb305(19)
      abb305(32)=abb305(46)-abb305(32)
      abb305(46)=abb305(32)*spbk7l5
      abb305(7)=spbk3k1*abb305(7)
      abb305(7)=abb305(7)-abb305(30)
      abb305(30)=abb305(7)*spbl6l5
      abb305(30)=abb305(46)+abb305(30)
      abb305(46)=-spak2k3*abb305(30)
      abb305(27)=abb305(46)+abb305(27)
      abb305(27)=8.0_ki*abb305(27)
      abb305(46)=abb305(24)*spbk4k1
      abb305(47)=-abb305(21)*spak2k3
      abb305(46)=abb305(46)+abb305(47)
      abb305(47)=-8.0_ki*abb305(46)
      abb305(46)=4.0_ki*abb305(46)
      abb305(13)=abb305(13)*abb305(44)
      abb305(15)=abb305(15)*abb305(43)
      abb305(17)=abb305(17)*abb305(15)
      abb305(13)=abb305(17)-abb305(13)
      abb305(13)=4.0_ki*abb305(13)
      abb305(17)=spbk4k1*abb305(13)
      abb305(42)=-spbk4k3*abb305(42)
      abb305(25)=spak1k2*abb305(25)
      abb305(11)=spak1k7*abb305(11)
      abb305(11)=abb305(11)+abb305(42)+abb305(25)
      abb305(11)=4.0_ki*abb305(11)
      abb305(9)=spbk4k3*abb305(9)
      abb305(25)=-spak1k2*abb305(30)
      abb305(9)=abb305(25)+abb305(9)
      abb305(9)=8.0_ki*abb305(9)
      abb305(24)=abb305(24)*spbk4k3
      abb305(21)=-abb305(21)*spak1k2
      abb305(21)=abb305(24)-abb305(21)
      abb305(24)=8.0_ki*abb305(21)
      abb305(21)=-4.0_ki*abb305(21)
      abb305(13)=-spbk4k3*abb305(13)
      abb305(25)=4.0_ki*abb305(35)
      abb305(30)=8.0_ki*abb305(37)
      abb305(32)=abb305(32)*abb305(30)
      abb305(7)=abb305(7)*abb305(30)
      abb305(23)=-spbk7e7*abb305(23)
      abb305(30)=abb305(36)*abb305(16)
      abb305(23)=abb305(30)+abb305(23)
      abb305(30)=abb305(23)*spak4k7
      abb305(30)=8.0_ki*abb305(30)
      abb305(12)=abb305(31)*abb305(12)
      abb305(31)=-spak2k4*abb305(12)
      abb305(34)=abb305(34)*abb305(16)
      abb305(31)=abb305(34)+abb305(31)
      abb305(31)=16.0_ki*abb305(31)
      abb305(34)=spbk7e7*abb305(44)
      abb305(15)=abb305(16)*abb305(15)
      abb305(15)=abb305(34)-abb305(15)
      abb305(15)=abb305(15)*spak4k7
      abb305(16)=spbk4k1*abb305(15)
      abb305(34)=-spak3k7*abb305(23)
      abb305(16)=abb305(16)+abb305(34)
      abb305(16)=4.0_ki*abb305(16)
      abb305(18)=abb305(28)*abb305(18)
      abb305(8)=abb305(18)-abb305(8)
      abb305(18)=spbk4k1*abb305(8)
      abb305(12)=abb305(19)-abb305(12)
      abb305(19)=spak2k3*abb305(12)
      abb305(18)=abb305(18)+abb305(19)
      abb305(18)=8.0_ki*abb305(18)
      abb305(15)=-spbk4k3*abb305(15)
      abb305(19)=spak1k7*abb305(23)
      abb305(15)=abb305(15)+abb305(19)
      abb305(15)=4.0_ki*abb305(15)
      abb305(8)=-spbk4k3*abb305(8)
      abb305(12)=spak1k2*abb305(12)
      abb305(8)=abb305(8)+abb305(12)
      abb305(8)=8.0_ki*abb305(8)
      R2d305=0.0_ki
      rat2 = rat2 + R2d305
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='305' value='", &
          & R2d305, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd305h3
