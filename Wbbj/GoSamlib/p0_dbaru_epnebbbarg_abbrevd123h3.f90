module     p0_dbaru_epnebbbarg_abbrevd123h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(45), public :: abb123
   complex(ki), public :: R2d123
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb123(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb123(2)=1.0_ki/(-es71+es56-es567+es234)
      abb123(3)=sqrt2**(-1)
      abb123(4)=es56**(-1)
      abb123(5)=spak2l5**(-1)
      abb123(6)=spak2k7**(-1)
      abb123(7)=spak2l6**(-1)
      abb123(8)=spbl5k2**(-1)
      abb123(9)=spbl6k2**(-1)
      abb123(10)=NC*c1
      abb123(10)=abb123(10)-c4
      abb123(11)=TR*gW
      abb123(11)=abb123(4)*i_*CVDU*abb123(3)*abb123(2)*abb123(1)*abb123(11)**2
      abb123(12)=abb123(11)*abb123(10)
      abb123(13)=abb123(12)*abb123(6)*mB*spak1k2**2
      abb123(14)=-spbl5k1*abb123(7)*abb123(13)
      abb123(13)=-spbl6k1*abb123(5)*abb123(13)
      abb123(13)=abb123(14)+abb123(13)
      abb123(14)=spbk3k2*spbk7k3
      abb123(15)=abb123(14)*abb123(13)
      abb123(16)=abb123(15)*spak3k4
      abb123(17)=spbk7k2*abb123(13)
      abb123(18)=spak2k4*spbk3k2
      abb123(19)=abb123(18)*abb123(17)
      abb123(20)=abb123(16)-abb123(19)
      abb123(21)=es71+es12-es712
      abb123(22)=8.0_ki*abb123(21)
      abb123(23)=abb123(20)*abb123(22)
      abb123(20)=-16.0_ki*abb123(20)
      abb123(24)=2.0_ki*spak4k7
      abb123(24)=abb123(24)*abb123(17)*spbk7k3
      abb123(25)=spbl5k2*abb123(9)
      abb123(26)=abb123(7)**2
      abb123(27)=-abb123(25)*abb123(26)
      abb123(28)=spbl6k2*abb123(8)
      abb123(29)=abb123(5)**2
      abb123(30)=-abb123(28)*abb123(29)
      abb123(27)=abb123(27)+abb123(30)
      abb123(10)=abb123(10)*abb123(11)*abb123(6)*spak1k2
      abb123(11)=mB**3
      abb123(30)=abb123(11)*abb123(10)
      abb123(27)=abb123(30)*abb123(27)
      abb123(31)=abb123(7)*abb123(5)
      abb123(30)=-abb123(30)*abb123(31)
      abb123(27)=abb123(27)+2.0_ki*abb123(30)
      abb123(30)=spak2k4*spbk7k3
      abb123(32)=abb123(30)*abb123(27)
      abb123(33)=abb123(21)*abb123(32)
      abb123(24)=abb123(24)-abb123(33)
      abb123(11)=abb123(12)*abb123(11)*spak1k2
      abb123(12)=abb123(25)*abb123(26)*abb123(11)
      abb123(25)=abb123(28)*abb123(29)*abb123(11)
      abb123(12)=abb123(12)+abb123(25)
      abb123(25)=spbk7k3**2
      abb123(26)=abb123(25)*spak3k4
      abb123(28)=abb123(26)*abb123(12)
      abb123(10)=-mB*abb123(10)
      abb123(29)=-abb123(7)*abb123(10)
      abb123(33)=abb123(29)*spbl5k1
      abb123(10)=-abb123(5)*abb123(10)
      abb123(34)=abb123(10)*spbl6k1
      abb123(33)=abb123(33)+abb123(34)
      abb123(30)=abb123(30)*spbk7k2
      abb123(34)=abb123(33)*abb123(30)
      abb123(35)=abb123(33)*spak3k4
      abb123(36)=-abb123(25)*abb123(35)
      abb123(36)=abb123(36)+abb123(34)
      abb123(36)=spak1k7*abb123(36)
      abb123(29)=abb123(29)*spbl6l5
      abb123(37)=abb123(29)*spal6k7
      abb123(10)=abb123(10)*spbl6l5
      abb123(38)=abb123(10)*spal5k7
      abb123(37)=abb123(37)-abb123(38)
      abb123(26)=abb123(26)-abb123(30)
      abb123(26)=-abb123(26)*abb123(37)
      abb123(11)=-abb123(31)*abb123(11)
      abb123(31)=abb123(11)*abb123(25)
      abb123(15)=-2.0_ki*abb123(31)-abb123(15)
      abb123(15)=spak3k4*abb123(15)
      abb123(15)=abb123(36)+abb123(15)+abb123(19)+abb123(28)-abb123(24)+abb123(&
      &26)
      abb123(15)=8.0_ki*abb123(15)
      abb123(26)=abb123(29)*spak4l6
      abb123(28)=abb123(10)*spak4l5
      abb123(26)=abb123(26)-abb123(28)
      abb123(28)=-spbk7k3*abb123(26)
      abb123(31)=spbk7k3*abb123(33)
      abb123(36)=abb123(31)*spak1k4
      abb123(28)=abb123(28)+abb123(36)+abb123(32)
      abb123(32)=16.0_ki*abb123(28)
      abb123(36)=abb123(33)*spak1k4
      abb123(36)=abb123(36)-abb123(26)
      abb123(38)=abb123(36)*spbk7k2*spak2k4
      abb123(39)=spbk7k2*abb123(27)*spak2k4**2
      abb123(38)=abb123(39)+abb123(38)
      abb123(38)=spbk4k3*abb123(38)
      abb123(30)=-abb123(30)*abb123(37)
      abb123(34)=-spak1k7*abb123(34)
      abb123(16)=abb123(38)+abb123(34)-2.0_ki*abb123(19)+abb123(16)+abb123(30)+&
      &abb123(24)
      abb123(16)=4.0_ki*abb123(16)
      abb123(19)=-8.0_ki*abb123(28)
      abb123(24)=8.0_ki*spak3k4
      abb123(25)=-abb123(24)*abb123(25)*abb123(13)
      abb123(22)=abb123(17)*abb123(22)
      abb123(28)=-16.0_ki*abb123(17)
      abb123(30)=spak2k3*abb123(27)
      abb123(34)=-spak3l6*abb123(29)
      abb123(38)=spak3l5*abb123(10)
      abb123(30)=abb123(30)+abb123(38)+abb123(34)
      abb123(30)=spbk7k3*abb123(30)
      abb123(34)=spak2k4*abb123(27)
      abb123(34)=abb123(34)+abb123(36)
      abb123(34)=spbk7k4*abb123(34)
      abb123(31)=spak1k3*abb123(31)
      abb123(30)=abb123(34)+abb123(31)+abb123(30)
      abb123(30)=8.0_ki*abb123(30)
      abb123(17)=4.0_ki*abb123(17)
      abb123(31)=abb123(13)*spbk7k3
      abb123(34)=8.0_ki*abb123(31)
      abb123(31)=-4.0_ki*abb123(31)
      abb123(38)=abb123(14)*spak3k4
      abb123(12)=abb123(38)*abb123(12)
      abb123(39)=abb123(18)*spbk7k2
      abb123(40)=abb123(39)*abb123(33)
      abb123(35)=-abb123(14)*abb123(35)
      abb123(35)=abb123(35)+abb123(40)
      abb123(35)=spak1k7*abb123(35)
      abb123(38)=abb123(38)-abb123(39)
      abb123(37)=-abb123(38)*abb123(37)
      abb123(38)=abb123(18)*abb123(27)
      abb123(39)=abb123(38)*abb123(21)
      abb123(40)=-abb123(13)*spbk3k2**2
      abb123(11)=-abb123(11)*abb123(14)
      abb123(11)=abb123(11)+abb123(40)
      abb123(11)=spak3k4*abb123(11)
      abb123(11)=abb123(35)+2.0_ki*abb123(11)+abb123(39)+abb123(12)+abb123(37)
      abb123(11)=4.0_ki*abb123(11)
      abb123(12)=-spbk3k2*abb123(26)
      abb123(14)=spbk3k2*abb123(33)
      abb123(26)=abb123(14)*spak1k4
      abb123(12)=abb123(12)+abb123(26)
      abb123(26)=abb123(38)+abb123(12)
      abb123(35)=8.0_ki*abb123(26)
      abb123(12)=abb123(38)+3.0_ki*abb123(12)
      abb123(12)=8.0_ki*abb123(12)
      abb123(26)=4.0_ki*abb123(26)
      abb123(37)=8.0_ki*abb123(29)
      abb123(38)=spak3k4*spbk3k2
      abb123(39)=abb123(38)*abb123(37)
      abb123(40)=-abb123(18)*abb123(37)
      abb123(41)=8.0_ki*abb123(10)
      abb123(42)=-abb123(38)*abb123(41)
      abb123(43)=abb123(18)*abb123(41)
      abb123(36)=spbk4k2*abb123(36)
      abb123(44)=-spal6k7*spbk7k2
      abb123(45)=-spak3l6*spbk3k2
      abb123(44)=abb123(45)+abb123(44)
      abb123(29)=abb123(29)*abb123(44)
      abb123(44)=spal5k7*spbk7k2
      abb123(45)=spak3l5*spbk3k2
      abb123(44)=abb123(45)+abb123(44)
      abb123(10)=abb123(10)*abb123(44)
      abb123(21)=-es234+es34-abb123(21)
      abb123(21)=abb123(27)*abb123(21)
      abb123(44)=-spak1k7*spbk7k2*abb123(33)
      abb123(45)=spak1k3*abb123(14)
      abb123(10)=abb123(45)+abb123(36)+abb123(44)+abb123(21)+abb123(10)+abb123(&
      &29)
      abb123(10)=4.0_ki*abb123(10)
      abb123(21)=-16.0_ki*abb123(27)
      abb123(13)=16.0_ki*spbk3k2*abb123(13)
      abb123(27)=8.0_ki*abb123(38)*abb123(27)
      abb123(14)=abb123(14)*abb123(24)
      abb123(24)=8.0_ki*abb123(33)
      abb123(18)=-abb123(18)*abb123(24)
      R2d123=0.0_ki
      rat2 = rat2 + R2d123
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='123' value='", &
          & R2d123, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd123h3
