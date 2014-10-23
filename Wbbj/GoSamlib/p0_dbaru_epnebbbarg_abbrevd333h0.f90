module     p0_dbaru_epnebbbarg_abbrevd333h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(54), public :: abb333
   complex(ki), public :: R2d333
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
      abb333(1)=1.0_ki/(-mB**2+es67)
      abb333(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb333(3)=NC**(-1)
      abb333(4)=sqrt2**(-1)
      abb333(5)=es234**(-1)
      abb333(6)=es567**(-1)
      abb333(7)=spbl5k2**(-1)
      abb333(8)=spak2k7**(-1)
      abb333(9)=spbl6k2**(-1)
      abb333(10)=sqrt(mB**2)
      abb333(11)=1.0_ki/(es34+es567-es12-es234)
      abb333(12)=spak2l6**(-1)
      abb333(13)=c3*abb333(3)
      abb333(14)=c2*abb333(3)**2
      abb333(15)=abb333(13)-abb333(14)
      abb333(16)=TR*gW
      abb333(16)=abb333(16)**2*abb333(8)*i_*CVDU*abb333(6)*abb333(4)*abb333(2)*&
      &abb333(1)
      abb333(17)=abb333(16)*mB
      abb333(18)=abb333(17)*spak1l5
      abb333(19)=abb333(18)*abb333(15)
      abb333(20)=-spbk7k2*abb333(19)
      abb333(21)=-abb333(15)*abb333(10)
      abb333(22)=abb333(16)*spak1l5
      abb333(23)=abb333(22)*spbk7k2
      abb333(24)=-abb333(23)*abb333(21)
      abb333(20)=abb333(20)+abb333(24)
      abb333(25)=spak1k4*abb333(11)
      abb333(26)=abb333(25)*spbk3k1
      abb333(20)=abb333(20)*abb333(26)
      abb333(27)=-abb333(15)*abb333(17)
      abb333(28)=abb333(27)*spbk7k2
      abb333(29)=-abb333(16)*spbk7k2*abb333(21)
      abb333(28)=-abb333(28)-abb333(29)
      abb333(25)=spak4l5*abb333(25)*spbk4k3
      abb333(28)=abb333(28)*abb333(25)
      abb333(30)=spbk3k2*abb333(5)
      abb333(18)=abb333(30)*abb333(18)
      abb333(31)=abb333(18)*abb333(14)
      abb333(32)=abb333(18)*abb333(13)
      abb333(31)=abb333(31)-abb333(32)
      abb333(33)=-spbk7k2*abb333(31)
      abb333(30)=abb333(30)*abb333(15)
      abb333(23)=-abb333(30)*abb333(23)*abb333(10)
      abb333(33)=abb333(33)+abb333(23)
      abb333(33)=abb333(33)*spak2k4
      abb333(34)=spbk7k2*abb333(9)
      abb333(35)=abb333(34)*abb333(14)
      abb333(18)=abb333(35)*abb333(18)
      abb333(32)=abb333(32)*abb333(34)
      abb333(18)=abb333(18)-abb333(32)
      abb333(32)=spak3k4*abb333(18)*spbl6k3
      abb333(36)=spbk3k2**2
      abb333(37)=abb333(36)*abb333(14)
      abb333(38)=abb333(36)*abb333(13)
      abb333(37)=abb333(37)-abb333(38)
      abb333(17)=-abb333(37)*abb333(17)*abb333(5)
      abb333(39)=abb333(7)*spak3k4
      abb333(40)=abb333(39)*spak1l6
      abb333(41)=abb333(40)*abb333(17)
      abb333(42)=abb333(41)*spbk7l6
      abb333(20)=-abb333(28)+abb333(20)+abb333(33)+abb333(32)+abb333(42)
      abb333(20)=abb333(20)*spak2l6
      abb333(28)=abb333(27)*abb333(25)
      abb333(32)=abb333(19)*abb333(26)
      abb333(28)=abb333(28)-abb333(32)
      abb333(32)=abb333(34)*abb333(28)
      abb333(18)=abb333(18)*spak2k4
      abb333(18)=-abb333(18)+abb333(32)
      abb333(32)=es71+es12-es712
      abb333(33)=abb333(32)*abb333(18)
      abb333(34)=abb333(34)*abb333(13)
      abb333(34)=abb333(34)-abb333(35)
      abb333(35)=abb333(36)*abb333(5)
      abb333(42)=abb333(16)*abb333(35)
      abb333(43)=mB**3
      abb333(44)=abb333(43)*abb333(42)
      abb333(45)=-abb333(44)*abb333(34)
      abb333(46)=mB**2
      abb333(42)=abb333(46)*abb333(42)
      abb333(34)=-abb333(10)*abb333(42)*abb333(34)
      abb333(45)=abb333(45)-abb333(34)
      abb333(47)=abb333(39)*spak1k2
      abb333(45)=abb333(45)*abb333(47)
      abb333(20)=abb333(33)+abb333(20)-abb333(45)
      abb333(45)=-spak3k4*abb333(9)*abb333(31)
      abb333(48)=abb333(45)*abb333(32)
      abb333(30)=-abb333(22)*abb333(30)
      abb333(49)=spak3k4*abb333(10)
      abb333(50)=abb333(30)*abb333(49)
      abb333(51)=abb333(50)*spak2l6
      abb333(51)=abb333(51)+abb333(48)
      abb333(51)=abb333(51)*spbk7k3
      abb333(51)=abb333(51)-abb333(20)
      abb333(52)=-4.0_ki*abb333(51)
      abb333(53)=abb333(10)**2
      abb333(20)=abb333(53)*abb333(20)
      abb333(53)=-abb333(53)*abb333(48)
      abb333(54)=-spak2l6*spak3k4*abb333(30)*abb333(10)**3
      abb333(53)=abb333(54)+abb333(53)
      abb333(53)=spbk7k3*abb333(53)
      abb333(20)=abb333(53)+abb333(20)
      abb333(20)=8.0_ki*abb333(20)
      abb333(53)=-spbk7k3*abb333(48)
      abb333(33)=abb333(53)+abb333(33)
      abb333(33)=16.0_ki*abb333(33)
      abb333(51)=8.0_ki*abb333(51)
      abb333(53)=abb333(31)*spak2k4
      abb333(28)=abb333(53)-abb333(28)
      abb333(28)=-abb333(28)*abb333(32)
      abb333(48)=-spbl6k3*abb333(48)
      abb333(28)=abb333(48)+abb333(28)
      abb333(28)=8.0_ki*abb333(28)
      abb333(29)=-abb333(25)*abb333(29)
      abb333(23)=-spak2k4*abb333(23)
      abb333(24)=-abb333(26)*abb333(24)
      abb333(48)=spbk7k3*abb333(50)
      abb333(23)=abb333(48)+abb333(24)+abb333(29)+abb333(23)
      abb333(23)=spal6k7*abb333(23)
      abb333(24)=-abb333(42)*abb333(15)
      abb333(29)=-abb333(10)*abb333(17)
      abb333(24)=abb333(29)+abb333(24)
      abb333(24)=abb333(10)*abb333(24)*abb333(40)
      abb333(29)=-abb333(9)*abb333(38)
      abb333(14)=abb333(14)*abb333(9)
      abb333(36)=abb333(36)*abb333(14)
      abb333(29)=abb333(29)+abb333(36)
      abb333(36)=abb333(22)*abb333(5)
      abb333(29)=abb333(29)*abb333(36)*abb333(46)
      abb333(35)=-abb333(10)*abb333(9)*abb333(19)*abb333(35)
      abb333(29)=abb333(35)+abb333(29)
      abb333(29)=abb333(29)*abb333(49)
      abb333(35)=abb333(39)*spak1k7
      abb333(34)=abb333(34)*abb333(35)
      abb333(23)=abb333(34)+abb333(23)+abb333(29)+abb333(24)
      abb333(24)=-abb333(12)*spak3k4*abb333(37)*abb333(43)*abb333(36)*abb333(9)&
      &**2
      abb333(29)=abb333(32)*abb333(24)
      abb333(23)=abb333(29)+2.0_ki*abb333(23)
      abb333(23)=8.0_ki*abb333(23)
      abb333(29)=-16.0_ki*abb333(41)
      abb333(24)=-16.0_ki*abb333(24)
      abb333(34)=spbk7k3*abb333(45)
      abb333(18)=abb333(34)-abb333(18)
      abb333(18)=8.0_ki*abb333(18)
      abb333(17)=-8.0_ki*abb333(17)*abb333(35)
      abb333(34)=8.0_ki*abb333(50)
      abb333(15)=-abb333(10)*abb333(16)*abb333(15)
      abb333(15)=abb333(15)-abb333(27)
      abb333(15)=abb333(15)*abb333(25)
      abb333(16)=-abb333(10)*abb333(30)
      abb333(16)=abb333(16)+abb333(31)
      abb333(16)=spak2k4*abb333(16)
      abb333(21)=abb333(22)*abb333(21)
      abb333(19)=abb333(21)+abb333(19)
      abb333(19)=abb333(19)*abb333(26)
      abb333(21)=spbl6k3*abb333(45)
      abb333(13)=abb333(13)*abb333(9)
      abb333(13)=abb333(13)-abb333(14)
      abb333(14)=-abb333(12)*abb333(47)*abb333(44)*abb333(13)
      abb333(14)=abb333(14)+abb333(21)+abb333(19)+abb333(15)+abb333(16)
      abb333(14)=8.0_ki*abb333(14)
      abb333(13)=-abb333(42)*abb333(13)
      abb333(15)=-8.0_ki*abb333(7)*abb333(32)*abb333(13)*abb333(49)
      abb333(16)=8.0_ki*abb333(39)
      abb333(13)=abb333(10)*abb333(13)*abb333(16)
      R2d333=abb333(52)
      rat2 = rat2 + R2d333
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='333' value='", &
          & R2d333, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd333h0
