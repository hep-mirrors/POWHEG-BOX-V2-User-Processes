module     p9_csbar_epnebbbarg_abbrevd108h2
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(69), public :: abb108
   complex(ki), public :: R2d108
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
      abb108(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb108(2)=sqrt(mB**2)
      abb108(3)=NC**(-1)
      abb108(4)=es234**(-1)
      abb108(5)=es71**(-1)
      abb108(6)=spbl5k2**(-1)
      abb108(7)=spak2l6**(-1)
      abb108(8)=spbl6k2**(-1)
      abb108(9)=spbe7k1*spak2k4
      abb108(10)=abb108(2)*spbk3k2
      abb108(11)=2.0_ki*c1
      abb108(12)=abb108(11)*abb108(6)
      abb108(13)=abb108(3)*mB
      abb108(14)=TR*gW
      abb108(14)=abb108(14)**2*i_*CVSC*abb108(4)*abb108(1)
      abb108(15)=abb108(13)*abb108(12)*abb108(10)*abb108(9)*abb108(14)
      abb108(16)=abb108(5)*spak2k4
      abb108(17)=abb108(14)*abb108(16)
      abb108(18)=spbe7k1*abb108(17)
      abb108(19)=abb108(3)**2
      abb108(19)=abb108(19)+1.0_ki
      abb108(20)=abb108(19)*abb108(18)
      abb108(21)=mB*abb108(20)
      abb108(22)=abb108(21)*c4
      abb108(23)=abb108(22)*abb108(10)
      abb108(24)=abb108(11)*abb108(18)
      abb108(25)=abb108(24)*abb108(13)
      abb108(26)=abb108(25)*abb108(10)
      abb108(23)=abb108(23)-abb108(26)
      abb108(23)=abb108(23)*spak2l5
      abb108(27)=spbk4k3*c4
      abb108(28)=abb108(27)*abb108(21)*abb108(2)
      abb108(29)=abb108(13)*abb108(2)
      abb108(30)=abb108(29)*abb108(24)
      abb108(31)=abb108(30)*spbk4k3
      abb108(28)=abb108(28)-abb108(31)
      abb108(28)=abb108(28)*spak4l5
      abb108(31)=abb108(6)*c4
      abb108(32)=abb108(10)*abb108(31)
      abb108(33)=abb108(19)*abb108(14)
      abb108(34)=abb108(32)*abb108(9)*mB*abb108(33)
      abb108(35)=abb108(22)*abb108(2)
      abb108(36)=abb108(30)-abb108(35)
      abb108(37)=abb108(6)*spbk4k3
      abb108(36)=abb108(37)*abb108(36)
      abb108(38)=spak4k7*spbk7k2
      abb108(39)=spak1k4*spbk2k1
      abb108(39)=abb108(39)-abb108(38)
      abb108(39)=abb108(39)*abb108(36)
      abb108(40)=abb108(36)*spbl6k2
      abb108(41)=-spak4l6*abb108(40)
      abb108(21)=abb108(21)*abb108(32)
      abb108(26)=abb108(26)*abb108(6)
      abb108(21)=abb108(21)-abb108(26)
      abb108(26)=-es712*abb108(21)
      abb108(42)=abb108(21)*spbl6k2
      abb108(43)=spak2l6*abb108(42)
      abb108(15)=abb108(34)-abb108(15)-abb108(23)-abb108(28)+abb108(43)+abb108(&
      &26)+abb108(41)+abb108(39)
      abb108(23)=spbk7l6*spae7k7
      abb108(26)=spbl6k1*spak1e7
      abb108(23)=abb108(23)-abb108(26)
      abb108(15)=abb108(23)*abb108(15)
      abb108(23)=abb108(7)*spbk4k3
      abb108(26)=abb108(30)*abb108(23)
      abb108(28)=abb108(35)*abb108(23)
      abb108(26)=abb108(26)-abb108(28)
      abb108(26)=abb108(26)*spak4l5
      abb108(30)=abb108(10)*abb108(7)
      abb108(25)=abb108(30)*abb108(25)
      abb108(22)=abb108(30)*abb108(22)
      abb108(25)=abb108(25)-abb108(22)
      abb108(25)=abb108(25)*spak2l5
      abb108(25)=abb108(26)+abb108(25)
      abb108(26)=spak2k7*spbk7k1
      abb108(34)=-abb108(26)*spak1e7
      abb108(35)=spak1k2*spbk7k1*spae7k7
      abb108(34)=abb108(35)+abb108(34)
      abb108(34)=abb108(25)*abb108(34)
      abb108(15)=abb108(34)+abb108(15)
      abb108(15)=4.0_ki*abb108(15)
      abb108(34)=abb108(16)*mB
      abb108(33)=abb108(34)*abb108(33)
      abb108(35)=abb108(33)*c4
      abb108(39)=abb108(14)*abb108(3)
      abb108(41)=abb108(39)*abb108(11)
      abb108(43)=abb108(41)*abb108(34)
      abb108(35)=abb108(35)-abb108(43)
      abb108(43)=spak2l5*abb108(35)*abb108(30)
      abb108(35)=-abb108(2)*abb108(35)
      abb108(44)=spak4l5*abb108(35)*abb108(23)
      abb108(43)=abb108(43)-abb108(44)
      abb108(12)=abb108(12)*abb108(39)
      abb108(10)=abb108(34)*abb108(12)*abb108(10)
      abb108(32)=abb108(32)*abb108(33)
      abb108(10)=abb108(10)-abb108(32)
      abb108(10)=abb108(10)*spbl6k2
      abb108(10)=abb108(10)+2.0_ki*abb108(43)
      abb108(32)=abb108(10)*abb108(26)
      abb108(33)=spbl6k2*abb108(37)*abb108(35)
      abb108(34)=spak4k7*spbk7k1
      abb108(35)=abb108(34)*abb108(33)
      abb108(32)=abb108(32)+abb108(35)
      abb108(32)=8.0_ki*abb108(32)
      abb108(35)=abb108(13)**2
      abb108(37)=mB**2
      abb108(39)=abb108(35)+abb108(37)
      abb108(43)=abb108(31)*abb108(23)
      abb108(44)=abb108(43)*abb108(39)*abb108(14)
      abb108(45)=abb108(23)*abb108(37)
      abb108(12)=abb108(12)*abb108(45)
      abb108(44)=abb108(44)-abb108(12)
      abb108(46)=spak2k4**2
      abb108(47)=abb108(46)*abb108(5)
      abb108(44)=abb108(44)*spbe7k1*abb108(47)
      abb108(48)=abb108(44)*spae7k7
      abb108(49)=abb108(48)*spbk7k2
      abb108(50)=abb108(24)*abb108(3)
      abb108(51)=abb108(50)*spbk4k3
      abb108(52)=abb108(20)*abb108(27)
      abb108(51)=abb108(51)-abb108(52)
      abb108(51)=abb108(51)*spak4l5
      abb108(52)=spbk3k2*c4
      abb108(20)=abb108(20)*abb108(52)
      abb108(53)=abb108(50)*spbk3k2
      abb108(20)=abb108(20)-abb108(53)
      abb108(20)=abb108(20)*spak2l5
      abb108(20)=abb108(51)-abb108(20)
      abb108(51)=-spae7k7*abb108(20)
      abb108(54)=abb108(51)*spbk7l6
      abb108(49)=abb108(49)+abb108(54)
      abb108(25)=abb108(42)+2.0_ki*abb108(25)
      abb108(42)=abb108(25)*spak2e7
      abb108(55)=abb108(40)*spak4e7
      abb108(42)=abb108(55)-abb108(42)
      abb108(55)=-abb108(49)-abb108(42)
      abb108(55)=8.0_ki*abb108(55)
      abb108(56)=-spak1e7*abb108(20)
      abb108(57)=abb108(56)*spbl6k1
      abb108(54)=abb108(54)-abb108(57)
      abb108(54)=-8.0_ki*abb108(54)
      abb108(58)=abb108(41)*spbk3k2
      abb108(59)=abb108(7)*abb108(6)
      abb108(60)=abb108(58)*abb108(59)
      abb108(61)=abb108(16)*abb108(60)*abb108(37)
      abb108(62)=abb108(35)*abb108(14)
      abb108(63)=abb108(62)*abb108(16)
      abb108(64)=abb108(17)*abb108(37)
      abb108(63)=abb108(63)+abb108(64)
      abb108(64)=abb108(52)*abb108(59)
      abb108(65)=abb108(63)*abb108(64)
      abb108(61)=abb108(61)-abb108(65)
      abb108(26)=abb108(61)*abb108(26)
      abb108(65)=abb108(12)*abb108(16)
      abb108(63)=abb108(63)*abb108(43)
      abb108(63)=abb108(65)-abb108(63)
      abb108(34)=abb108(63)*abb108(34)
      abb108(26)=abb108(26)+abb108(34)
      abb108(26)=16.0_ki*abb108(26)
      abb108(34)=abb108(35)*abb108(18)
      abb108(35)=abb108(37)*abb108(18)
      abb108(34)=abb108(34)+abb108(35)
      abb108(65)=abb108(34)*abb108(43)
      abb108(50)=abb108(45)*abb108(50)
      abb108(66)=abb108(50)*abb108(6)
      abb108(65)=abb108(65)-abb108(66)
      abb108(66)=abb108(65)*spak4e7
      abb108(67)=abb108(34)*abb108(52)
      abb108(53)=abb108(53)*abb108(37)
      abb108(68)=abb108(67)-abb108(53)
      abb108(59)=abb108(59)*abb108(68)
      abb108(68)=abb108(59)*spak2e7
      abb108(66)=abb108(66)+abb108(68)
      abb108(66)=16.0_ki*abb108(66)
      abb108(68)=abb108(44)*spak1e7
      abb108(69)=abb108(68)*spbk2k1
      abb108(57)=abb108(69)+abb108(57)
      abb108(42)=abb108(42)-abb108(57)
      abb108(42)=8.0_ki*abb108(42)
      abb108(49)=-abb108(49)+abb108(57)
      abb108(49)=4.0_ki*abb108(49)
      abb108(57)=8.0_ki*abb108(20)
      abb108(69)=8.0_ki*abb108(44)
      abb108(10)=-spak2k7*abb108(10)
      abb108(33)=-spak4k7*abb108(33)
      abb108(10)=abb108(10)+abb108(33)
      abb108(10)=spbk7e7*abb108(10)
      abb108(25)=-spak1k2*abb108(25)
      abb108(33)=spak1k4*abb108(40)
      abb108(10)=abb108(25)+abb108(33)+abb108(10)
      abb108(10)=4.0_ki*abb108(10)
      abb108(25)=-spak2k7*abb108(61)
      abb108(33)=-spak4k7*abb108(63)
      abb108(25)=abb108(25)+abb108(33)
      abb108(25)=spbk7e7*abb108(25)
      abb108(33)=abb108(65)*spak1k4
      abb108(40)=-spak1k2*abb108(59)
      abb108(25)=abb108(40)-abb108(33)+abb108(25)
      abb108(25)=8.0_ki*abb108(25)
      abb108(40)=4.0_ki*spbk7k1
      abb108(61)=abb108(56)*abb108(40)
      abb108(41)=abb108(16)*spbk4k3*abb108(41)
      abb108(17)=abb108(17)*abb108(19)
      abb108(19)=abb108(17)*abb108(27)
      abb108(19)=abb108(41)-abb108(19)
      abb108(19)=abb108(19)*spak4l5
      abb108(17)=abb108(17)*abb108(52)
      abb108(16)=abb108(58)*abb108(16)
      abb108(16)=abb108(17)-abb108(16)
      abb108(16)=abb108(16)*spak2l5
      abb108(16)=abb108(19)-abb108(16)
      abb108(17)=8.0_ki*spbk7k1
      abb108(19)=-abb108(16)*abb108(17)
      abb108(27)=4.0_ki*spbk7e7
      abb108(16)=abb108(16)*abb108(27)
      abb108(39)=abb108(43)*abb108(5)*abb108(39)*abb108(46)*abb108(14)
      abb108(12)=abb108(12)*abb108(47)
      abb108(12)=abb108(39)-abb108(12)
      abb108(17)=-abb108(12)*abb108(17)
      abb108(12)=abb108(12)*abb108(27)
      abb108(27)=-spbk7l6*abb108(56)
      abb108(39)=-spbk7k2*abb108(68)
      abb108(27)=abb108(27)+abb108(39)
      abb108(27)=4.0_ki*abb108(27)
      abb108(39)=4.0_ki*spbl6k2
      abb108(41)=-abb108(48)*abb108(39)
      abb108(39)=-abb108(68)*abb108(39)
      abb108(43)=spbk7k2*spae7k7
      abb108(46)=spbk2k1*spak1e7
      abb108(43)=abb108(43)-abb108(46)
      abb108(36)=-4.0_ki*abb108(36)*abb108(43)
      abb108(29)=abb108(29)*abb108(23)
      abb108(45)=abb108(45)*abb108(3)
      abb108(29)=abb108(29)-abb108(45)
      abb108(24)=abb108(29)*abb108(24)
      abb108(23)=c4*abb108(34)*abb108(23)
      abb108(24)=abb108(24)+abb108(23)-abb108(28)
      abb108(24)=abb108(24)*spak4l5
      abb108(13)=abb108(13)*abb108(30)*abb108(18)
      abb108(18)=abb108(35)*spbk3k2*abb108(7)*abb108(3)
      abb108(13)=abb108(13)-abb108(18)
      abb108(11)=abb108(13)*abb108(11)
      abb108(13)=abb108(67)*abb108(7)
      abb108(11)=abb108(11)+abb108(13)-abb108(22)
      abb108(11)=abb108(11)*spak2l5
      abb108(18)=spak4l6*spbl6k2
      abb108(18)=abb108(18)+abb108(38)
      abb108(18)=abb108(18)*abb108(65)
      abb108(22)=abb108(33)*spbk2k1
      abb108(28)=spbk3k2*abb108(34)*abb108(31)
      abb108(29)=abb108(53)*abb108(6)
      abb108(28)=abb108(28)-abb108(29)
      abb108(28)=abb108(28)*spbl6k2
      abb108(29)=abb108(9)*abb108(62)
      abb108(9)=abb108(9)*abb108(37)
      abb108(14)=abb108(9)*abb108(14)
      abb108(14)=abb108(29)+abb108(14)
      abb108(14)=abb108(14)*abb108(64)
      abb108(29)=abb108(59)*es712
      abb108(9)=abb108(9)*abb108(60)
      abb108(9)=-abb108(11)-abb108(24)+abb108(28)+abb108(18)-abb108(29)-abb108(&
      &22)+abb108(14)-abb108(9)
      abb108(9)=4.0_ki*abb108(9)
      abb108(11)=-spae7k7*abb108(9)
      abb108(14)=abb108(23)-abb108(50)
      abb108(14)=abb108(14)*spak4l5
      abb108(18)=abb108(53)*abb108(7)
      abb108(13)=abb108(18)-abb108(13)
      abb108(13)=abb108(13)*spak2l5
      abb108(13)=abb108(13)-abb108(14)
      abb108(13)=abb108(8)*abb108(13)*abb108(43)
      abb108(14)=abb108(21)*abb108(43)
      abb108(13)=abb108(13)+abb108(14)
      abb108(13)=4.0_ki*abb108(13)
      abb108(9)=-spak1e7*abb108(9)
      abb108(14)=-spbl6k1*abb108(51)
      abb108(18)=-spbk2k1*abb108(48)
      abb108(14)=abb108(14)+abb108(18)
      abb108(14)=4.0_ki*abb108(14)
      abb108(18)=abb108(51)*abb108(40)
      abb108(20)=4.0_ki*abb108(20)
      abb108(21)=4.0_ki*abb108(44)
      R2d108=0.0_ki
      rat2 = rat2 + R2d108
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='108' value='", &
          & R2d108, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd108h2
