module     p1_dbarc_epnebbbarg_abbrevd8h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(54), public :: abb8
   complex(ki), public :: R2d8
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb8(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb8(2)=sqrt(mB**2)
      abb8(3)=es234**(-1)
      abb8(4)=es567**(-1)
      abb8(5)=spak2l5**(-1)
      abb8(6)=spbl6k2**(-1)
      abb8(7)=1.0_ki/(es34+es567-es12-es234)
      abb8(8)=spak1k4*abb8(7)
      abb8(9)=c2-c4
      abb8(10)=TR*gW
      abb8(10)=abb8(10)**2*i_*CVDC*abb8(4)*abb8(1)
      abb8(11)=-abb8(9)*abb8(10)*abb8(8)
      abb8(12)=2.0_ki*spak1e7
      abb8(13)=-abb8(12)*abb8(11)
      abb8(14)=abb8(10)*NC
      abb8(8)=abb8(14)*abb8(8)
      abb8(15)=abb8(8)*c1
      abb8(16)=abb8(15)*spak1e7
      abb8(8)=abb8(8)*c3
      abb8(17)=abb8(8)*spak1e7
      abb8(13)=-abb8(17)+abb8(13)-abb8(16)
      abb8(13)=abb8(13)*spbk3k1
      abb8(18)=abb8(10)*spbk3k2*abb8(3)
      abb8(19)=abb8(18)*spak2k4
      abb8(20)=spak1e7*abb8(19)
      abb8(21)=abb8(20)*NC
      abb8(22)=abb8(21)*c1
      abb8(23)=c3*abb8(21)
      abb8(24)=abb8(22)+abb8(23)
      abb8(25)=abb8(13)+abb8(24)
      abb8(26)=spbe7k2*abb8(5)
      abb8(27)=abb8(2)*mB
      abb8(28)=abb8(26)*abb8(27)
      abb8(29)=abb8(28)*abb8(25)
      abb8(30)=abb8(15)+abb8(8)
      abb8(31)=-abb8(28)*abb8(30)
      abb8(32)=2.0_ki*abb8(28)
      abb8(33)=-abb8(32)*abb8(11)
      abb8(31)=abb8(33)+abb8(31)
      abb8(33)=spak4e7*spbk4k3
      abb8(31)=abb8(31)*abb8(33)
      abb8(20)=-abb8(20)*abb8(9)
      abb8(32)=abb8(32)*abb8(20)
      abb8(18)=abb8(18)*spak3k4
      abb8(34)=abb8(18)*spak1e7
      abb8(35)=abb8(34)*NC
      abb8(36)=abb8(35)*c1
      abb8(37)=abb8(35)*c3
      abb8(38)=abb8(36)+abb8(37)
      abb8(34)=-abb8(34)*abb8(9)
      abb8(39)=-2.0_ki*abb8(34)-abb8(38)
      abb8(39)=abb8(39)*spbe7k3
      abb8(40)=abb8(27)*abb8(5)*abb8(39)
      abb8(29)=abb8(31)+abb8(40)+abb8(32)+abb8(29)
      abb8(29)=spak2l6*abb8(29)
      abb8(31)=abb8(9)*abb8(18)*abb8(5)
      abb8(32)=-abb8(27)*abb8(31)
      abb8(40)=abb8(18)*NC
      abb8(41)=abb8(40)*abb8(5)
      abb8(42)=abb8(41)*abb8(27)
      abb8(43)=abb8(42)*c3
      abb8(44)=2.0_ki*c1
      abb8(45)=-abb8(44)*abb8(42)
      abb8(45)=abb8(45)+abb8(43)-abb8(32)
      abb8(45)=spbe7k3*abb8(45)
      abb8(46)=-abb8(9)*abb8(19)
      abb8(19)=NC*abb8(19)
      abb8(47)=abb8(19)*abb8(44)
      abb8(48)=abb8(19)*c3
      abb8(47)=-abb8(48)+abb8(46)+abb8(47)
      abb8(49)=abb8(28)*abb8(47)
      abb8(50)=abb8(11)+2.0_ki*abb8(15)
      abb8(51)=-abb8(8)+abb8(50)
      abb8(28)=abb8(51)*abb8(28)
      abb8(52)=-spbk3k1*abb8(28)
      abb8(45)=abb8(45)+abb8(52)+abb8(49)
      abb8(45)=spak1k2*abb8(45)
      abb8(49)=spbk4k3*spak2k4
      abb8(28)=abb8(28)*abb8(49)
      abb8(28)=abb8(45)+abb8(28)
      abb8(28)=spal6e7*abb8(28)
      abb8(45)=-spak1e7*abb8(11)
      abb8(52)=abb8(17)-abb8(45)
      abb8(52)=spbk3k1*abb8(52)
      abb8(53)=abb8(8)+abb8(11)
      abb8(53)=abb8(33)*abb8(53)
      abb8(52)=abb8(53)+abb8(52)-abb8(23)-abb8(20)
      abb8(52)=3.0_ki*abb8(52)
      abb8(27)=abb8(27)*abb8(6)
      abb8(53)=abb8(27)*spbe7k2
      abb8(52)=abb8(53)*abb8(52)
      abb8(54)=-abb8(27)*abb8(39)
      abb8(52)=2.0_ki*abb8(54)+abb8(52)
      abb8(52)=spbl5k2*abb8(52)
      abb8(42)=-c1*abb8(42)
      abb8(32)=abb8(42)+2.0_ki*abb8(43)+abb8(32)
      abb8(42)=spak2e7*spbe7k3
      abb8(32)=spak1l6*abb8(32)*abb8(42)
      abb8(43)=-c3*abb8(12)
      abb8(54)=c1*spak1e7
      abb8(43)=abb8(54)+abb8(43)
      abb8(43)=abb8(14)*abb8(43)
      abb8(10)=abb8(9)*abb8(10)
      abb8(54)=spak1e7*abb8(10)
      abb8(43)=abb8(54)+abb8(43)
      abb8(54)=spbk3k2**2*spak3k4*abb8(3)
      abb8(27)=spbe7l5*abb8(43)*abb8(54)*abb8(27)
      abb8(35)=abb8(35)*abb8(44)
      abb8(35)=-abb8(37)+abb8(35)+abb8(34)
      abb8(35)=abb8(35)*spbl5k3
      abb8(43)=-abb8(53)*abb8(35)
      abb8(27)=abb8(32)+abb8(43)+2.0_ki*abb8(29)+abb8(27)+abb8(52)+abb8(28)
      abb8(27)=2.0_ki*abb8(27)
      abb8(28)=-spbk3k1*abb8(51)
      abb8(28)=abb8(28)+abb8(47)
      abb8(28)=spbl5k2*abb8(28)
      abb8(9)=-abb8(18)*abb8(9)
      abb8(18)=-abb8(40)*abb8(44)
      abb8(29)=abb8(40)*c3
      abb8(18)=abb8(18)+abb8(29)-abb8(9)
      abb8(18)=spbl5k3*abb8(18)
      abb8(18)=abb8(18)+abb8(28)
      abb8(18)=spak1l6*abb8(18)
      abb8(28)=-abb8(44)+c3
      abb8(14)=abb8(14)*abb8(28)
      abb8(10)=abb8(10)+abb8(14)
      abb8(14)=abb8(6)*mB**2
      abb8(10)=spak1k2*abb8(54)*abb8(14)*abb8(5)*abb8(10)
      abb8(28)=abb8(51)*spbl5k2
      abb8(32)=-spak4l6*spbk4k3*abb8(28)
      abb8(10)=abb8(32)+abb8(10)+abb8(18)
      abb8(10)=4.0_ki*abb8(10)
      abb8(18)=abb8(14)*abb8(26)
      abb8(26)=2.0_ki*abb8(18)
      abb8(32)=abb8(26)*abb8(11)
      abb8(43)=abb8(8)*abb8(18)
      abb8(51)=abb8(18)*abb8(15)
      abb8(32)=abb8(51)+abb8(43)+abb8(32)
      abb8(32)=abb8(32)*abb8(33)
      abb8(25)=-abb8(18)*abb8(25)
      abb8(26)=-abb8(26)*abb8(20)
      abb8(38)=abb8(14)*abb8(38)
      abb8(51)=2.0_ki*abb8(14)
      abb8(52)=abb8(51)*abb8(34)
      abb8(38)=abb8(52)+abb8(38)
      abb8(38)=spbe7k3*abb8(5)*abb8(38)
      abb8(25)=abb8(32)+abb8(38)+abb8(26)+abb8(25)
      abb8(25)=4.0_ki*abb8(25)
      abb8(26)=abb8(15)*abb8(12)
      abb8(17)=abb8(26)-abb8(17)-abb8(45)
      abb8(17)=spbk3k1*abb8(17)
      abb8(21)=-abb8(44)*abb8(21)
      abb8(17)=abb8(17)+abb8(21)+abb8(23)-abb8(20)
      abb8(17)=spbl5k2*abb8(17)
      abb8(21)=abb8(33)*abb8(28)
      abb8(17)=abb8(35)+abb8(17)+abb8(21)
      abb8(17)=2.0_ki*abb8(17)
      abb8(21)=abb8(50)*abb8(18)
      abb8(21)=abb8(21)-abb8(43)
      abb8(26)=-spbk3k1*abb8(21)
      abb8(18)=abb8(18)*abb8(47)
      abb8(28)=-abb8(44)*abb8(41)
      abb8(32)=abb8(41)*c3
      abb8(28)=abb8(28)+abb8(32)+abb8(31)
      abb8(28)=spbe7k3*abb8(14)*abb8(28)
      abb8(18)=abb8(28)+abb8(26)+abb8(18)
      abb8(18)=spak1k2*abb8(18)
      abb8(21)=abb8(21)*abb8(49)
      abb8(18)=abb8(21)+abb8(18)
      abb8(18)=2.0_ki*abb8(18)
      abb8(21)=-abb8(30)-2.0_ki*abb8(11)
      abb8(21)=abb8(33)*abb8(21)
      abb8(13)=abb8(21)+abb8(13)+abb8(24)+2.0_ki*abb8(20)
      abb8(13)=spbe7k2*abb8(13)
      abb8(13)=abb8(39)+abb8(13)
      abb8(13)=2.0_ki*abb8(13)
      abb8(21)=-abb8(36)+2.0_ki*abb8(37)+abb8(34)
      abb8(24)=2.0_ki*spbe7l5
      abb8(21)=abb8(21)*abb8(24)
      abb8(12)=abb8(8)*abb8(12)
      abb8(12)=-abb8(16)+abb8(12)-abb8(45)
      abb8(12)=spbk3k1*abb8(12)
      abb8(8)=-abb8(15)+abb8(11)+2.0_ki*abb8(8)
      abb8(11)=abb8(8)*abb8(33)
      abb8(11)=abb8(11)+abb8(12)+abb8(22)-2.0_ki*abb8(23)-abb8(20)
      abb8(11)=abb8(11)*abb8(24)
      abb8(12)=spal6e7*spbe7l5
      abb8(15)=2.0_ki*abb8(12)
      abb8(16)=-spbk4k3*abb8(8)*abb8(15)
      abb8(20)=c1*abb8(40)
      abb8(9)=abb8(20)-2.0_ki*abb8(29)-abb8(9)
      abb8(9)=abb8(9)*abb8(15)
      abb8(8)=-spbk3k1*abb8(8)
      abb8(15)=-c1*abb8(19)
      abb8(8)=abb8(8)+abb8(15)+2.0_ki*abb8(48)+abb8(46)
      abb8(8)=abb8(8)*abb8(12)
      abb8(12)=c1*abb8(41)
      abb8(12)=abb8(12)+abb8(31)
      abb8(12)=abb8(14)*abb8(12)
      abb8(14)=-abb8(51)*abb8(32)
      abb8(12)=abb8(14)+abb8(12)
      abb8(12)=abb8(12)*abb8(42)
      abb8(8)=abb8(8)+abb8(12)
      abb8(8)=2.0_ki*abb8(8)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd8h1
