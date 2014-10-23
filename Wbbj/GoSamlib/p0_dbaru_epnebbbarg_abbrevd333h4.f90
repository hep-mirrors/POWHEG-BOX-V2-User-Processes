module     p0_dbaru_epnebbbarg_abbrevd333h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(45), public :: abb333
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
      abb333(8)=spbk7k2**(-1)
      abb333(9)=sqrt(mB**2)
      abb333(10)=spak2l6**(-1)
      abb333(11)=spbl6k2**(-1)
      abb333(12)=1.0_ki/(es34+es567-es12-es234)
      abb333(13)=c3*abb333(3)
      abb333(14)=abb333(3)**2
      abb333(15)=abb333(14)*c2
      abb333(13)=abb333(13)-abb333(15)
      abb333(16)=abb333(4)*abb333(6)*i_*CVDU*abb333(2)*abb333(1)
      abb333(17)=abb333(16)*spak3k4*abb333(5)
      abb333(18)=TR*gW
      abb333(19)=abb333(18)*spbk3k2
      abb333(19)=abb333(19)**2
      abb333(20)=abb333(17)*abb333(19)*abb333(8)
      abb333(21)=abb333(20)*mB
      abb333(22)=-abb333(21)*abb333(13)
      abb333(23)=abb333(7)*spal6k7
      abb333(24)=abb333(23)*spak1l6
      abb333(25)=abb333(22)*abb333(24)*spbl6k2
      abb333(26)=abb333(13)*abb333(17)*mB
      abb333(27)=-abb333(19)*abb333(26)
      abb333(28)=abb333(27)*abb333(23)*spak1k7
      abb333(25)=abb333(25)+abb333(28)
      abb333(29)=-abb333(20)*abb333(13)
      abb333(30)=-abb333(9)*abb333(29)
      abb333(31)=spal6k7*spak1l5
      abb333(32)=abb333(30)*abb333(31)
      abb333(32)=-abb333(32)+abb333(25)
      abb333(33)=-4.0_ki*abb333(32)
      abb333(25)=-abb333(25)*abb333(9)**2
      abb333(34)=-abb333(31)*abb333(29)*abb333(9)**3
      abb333(25)=abb333(34)+abb333(25)
      abb333(25)=8.0_ki*abb333(25)
      abb333(28)=-16.0_ki*abb333(28)
      abb333(32)=8.0_ki*abb333(32)
      abb333(24)=-8.0_ki*abb333(27)*abb333(24)
      abb333(27)=abb333(15)*abb333(17)*abb333(9)
      abb333(34)=c3*abb333(9)
      abb333(35)=abb333(17)*abb333(3)
      abb333(36)=abb333(34)*abb333(35)
      abb333(27)=abb333(27)-abb333(36)
      abb333(18)=abb333(18)**2
      abb333(36)=abb333(18)*spbk3k2
      abb333(37)=-8.0_ki*abb333(31)*abb333(36)*abb333(27)
      abb333(38)=abb333(36)*abb333(5)
      abb333(39)=abb333(16)*abb333(3)
      abb333(40)=abb333(39)*abb333(34)*abb333(38)
      abb333(41)=abb333(18)*abb333(9)
      abb333(42)=abb333(15)*abb333(16)*abb333(41)
      abb333(43)=-spbk3k2*abb333(5)*abb333(42)
      abb333(40)=abb333(40)+abb333(43)
      abb333(40)=spak2k4*abb333(40)
      abb333(39)=c3*abb333(39)*abb333(41)
      abb333(39)=abb333(39)-abb333(42)
      abb333(41)=spak1k4*abb333(12)
      abb333(42)=abb333(41)*spbk3k1
      abb333(43)=-abb333(39)*abb333(42)
      abb333(36)=abb333(36)*abb333(8)
      abb333(44)=abb333(36)*abb333(27)
      abb333(45)=spbk7k3*abb333(44)
      abb333(40)=2.0_ki*abb333(45)+abb333(43)+abb333(40)
      abb333(31)=abb333(31)*abb333(40)
      abb333(15)=-abb333(17)*abb333(15)
      abb333(17)=c3*abb333(35)
      abb333(15)=abb333(17)+abb333(15)
      abb333(17)=spak1k2*abb333(10)
      abb333(35)=mB**3
      abb333(15)=abb333(11)*abb333(23)*abb333(17)*abb333(35)*abb333(19)*abb333(&
      &15)
      abb333(23)=abb333(14)*mB
      abb333(40)=abb333(23)*abb333(20)*abb333(9)
      abb333(43)=mB**2
      abb333(20)=abb333(43)*abb333(20)
      abb333(45)=abb333(20)*abb333(14)
      abb333(40)=abb333(40)+abb333(45)
      abb333(40)=abb333(40)*c2*abb333(9)
      abb333(45)=abb333(9)*abb333(3)
      abb333(21)=abb333(45)*abb333(21)
      abb333(20)=abb333(20)*abb333(3)
      abb333(20)=abb333(21)+abb333(20)
      abb333(20)=abb333(20)*abb333(34)
      abb333(20)=abb333(40)-abb333(20)
      abb333(21)=abb333(11)*spak1l5
      abb333(34)=spak1l6*abb333(7)
      abb333(34)=abb333(21)+abb333(34)
      abb333(20)=abb333(20)*abb333(34)
      abb333(34)=abb333(11)*abb333(7)
      abb333(40)=abb333(34)*abb333(43)
      abb333(19)=spak1k7*abb333(19)*abb333(27)*abb333(40)
      abb333(19)=abb333(19)+abb333(20)
      abb333(20)=spak4l5*abb333(41)*spbk4k3
      abb333(27)=-spal6k7*abb333(39)*abb333(20)
      abb333(15)=abb333(15)+2.0_ki*abb333(19)+abb333(27)+abb333(31)
      abb333(15)=8.0_ki*abb333(15)
      abb333(19)=abb333(22)*abb333(7)
      abb333(22)=16.0_ki*spak1l6*abb333(19)
      abb333(27)=abb333(29)*abb333(35)
      abb333(29)=16.0_ki*abb333(10)*spak1l5*abb333(27)*abb333(11)**2
      abb333(13)=abb333(13)*abb333(16)*mB
      abb333(31)=-spak2k4*abb333(38)*abb333(13)
      abb333(13)=abb333(18)*abb333(13)
      abb333(35)=abb333(13)*abb333(42)
      abb333(26)=abb333(36)*abb333(26)
      abb333(36)=spbk7k3*abb333(26)
      abb333(31)=abb333(36)+abb333(35)+abb333(31)
      abb333(31)=abb333(21)*abb333(31)
      abb333(13)=abb333(11)*abb333(13)*abb333(20)
      abb333(13)=abb333(13)+abb333(31)
      abb333(13)=8.0_ki*abb333(13)
      abb333(19)=8.0_ki*spak1k7*abb333(19)
      abb333(31)=8.0_ki*spak1l5*abb333(44)
      abb333(35)=mB*abb333(3)
      abb333(35)=abb333(35)-abb333(45)
      abb333(35)=abb333(35)*c3
      abb333(14)=abb333(14)*abb333(9)
      abb333(14)=abb333(14)-abb333(23)
      abb333(14)=abb333(14)*c2
      abb333(14)=abb333(35)+abb333(14)
      abb333(16)=abb333(16)*abb333(8)
      abb333(23)=-spak2k4*abb333(14)*abb333(38)*abb333(16)
      abb333(14)=abb333(14)*abb333(16)*abb333(18)
      abb333(16)=abb333(14)*abb333(42)
      abb333(16)=abb333(16)+abb333(23)
      abb333(16)=spak1l5*abb333(16)
      abb333(14)=abb333(14)*abb333(20)
      abb333(17)=abb333(27)*abb333(34)*abb333(17)
      abb333(18)=spbl6k3*abb333(26)*abb333(21)
      abb333(14)=abb333(18)+abb333(17)+abb333(14)+abb333(16)
      abb333(14)=8.0_ki*abb333(14)
      abb333(16)=-8.0_ki*abb333(30)*abb333(40)
      R2d333=abb333(33)
      rat2 = rat2 + R2d333
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='333' value='", &
          & R2d333, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd333h4
