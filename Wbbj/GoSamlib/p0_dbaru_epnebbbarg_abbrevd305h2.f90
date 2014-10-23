module     p0_dbaru_epnebbbarg_abbrevd305h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(38), public :: abb305
   complex(ki), public :: R2d305
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
      abb305(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb305(2)=1.0_ki/(es34+es567-es12-es234)
      abb305(3)=sqrt(mB**2)
      abb305(4)=NC**(-1)
      abb305(5)=sqrt2**(-1)
      abb305(6)=spbl5k2**(-1)
      abb305(7)=spak2l6**(-1)
      abb305(8)=spak2k7**(-1)
      abb305(9)=TR*gW
      abb305(9)=CVDU*i_*spak1k4*abb305(5)*abb305(2)*abb305(1)*abb305(9)**2
      abb305(10)=abb305(9)*abb305(8)*abb305(4)
      abb305(11)=abb305(10)*c3
      abb305(10)=abb305(10)*c1
      abb305(12)=abb305(10)+abb305(11)
      abb305(12)=spbk3k1*abb305(12)
      abb305(13)=c2*abb305(4)**2
      abb305(14)=abb305(13)*abb305(8)
      abb305(15)=abb305(9)*spbk3k1
      abb305(16)=abb305(14)*abb305(15)
      abb305(12)=abb305(12)-abb305(16)
      abb305(16)=mB**2
      abb305(17)=abb305(16)*spbk7k2
      abb305(18)=abb305(17)*abb305(12)
      abb305(19)=spbl6k2*abb305(6)
      abb305(20)=abb305(18)*abb305(19)
      abb305(21)=spbk7k2*abb305(12)
      abb305(22)=spak2l5*spbl6k2
      abb305(23)=abb305(21)*abb305(22)
      abb305(20)=abb305(20)-abb305(23)
      abb305(23)=abb305(20)*spak1k2
      abb305(9)=abb305(9)*spbk4k3
      abb305(14)=abb305(14)*abb305(9)
      abb305(11)=abb305(11)*spbk4k3
      abb305(11)=abb305(14)-abb305(11)
      abb305(10)=abb305(10)*spbk4k3
      abb305(14)=abb305(10)-abb305(11)
      abb305(17)=abb305(17)*abb305(14)
      abb305(24)=abb305(17)*abb305(19)
      abb305(25)=-spbk7k2*abb305(11)
      abb305(10)=abb305(10)*spbk7k2
      abb305(25)=abb305(25)+abb305(10)
      abb305(26)=abb305(25)*abb305(22)
      abb305(24)=abb305(24)-abb305(26)
      abb305(26)=abb305(24)*spak2k4
      abb305(23)=abb305(26)-abb305(23)
      abb305(26)=abb305(3)**2
      abb305(27)=-abb305(26)*abb305(23)
      abb305(28)=mB**3
      abb305(29)=abb305(28)*spbk7k2
      abb305(11)=-abb305(29)*abb305(11)
      abb305(10)=abb305(10)*abb305(28)
      abb305(10)=abb305(11)+abb305(10)
      abb305(11)=abb305(6)*abb305(3)
      abb305(10)=abb305(10)*abb305(11)
      abb305(28)=spbk7k2*mB*spak2l5*abb305(3)
      abb305(30)=abb305(14)*abb305(28)
      abb305(10)=abb305(10)-abb305(30)
      abb305(10)=abb305(10)*spak2k4
      abb305(11)=abb305(11)*abb305(29)
      abb305(11)=abb305(11)-abb305(28)
      abb305(11)=spak1k2*abb305(12)*abb305(11)
      abb305(10)=abb305(10)-abb305(11)
      abb305(11)=es71+es12-es712
      abb305(28)=abb305(11)*abb305(7)
      abb305(10)=-abb305(10)*abb305(28)
      abb305(10)=abb305(10)+abb305(27)
      abb305(10)=8.0_ki*abb305(10)
      abb305(27)=-16.0_ki*abb305(23)
      abb305(23)=8.0_ki*abb305(23)
      abb305(29)=abb305(12)*spak1k2
      abb305(30)=abb305(14)*spak2k4
      abb305(29)=abb305(29)-abb305(30)
      abb305(30)=-spbl6k2*abb305(29)
      abb305(31)=-abb305(26)*abb305(30)
      abb305(32)=-abb305(3)*mB*abb305(29)
      abb305(28)=-abb305(32)*abb305(28)
      abb305(28)=abb305(28)+abb305(31)
      abb305(28)=8.0_ki*abb305(28)
      abb305(31)=-16.0_ki*abb305(30)
      abb305(30)=8.0_ki*abb305(30)
      abb305(29)=-spbk7l6*abb305(29)
      abb305(33)=8.0_ki*abb305(29)
      abb305(26)=-abb305(26)*abb305(33)
      abb305(29)=-16.0_ki*abb305(29)
      abb305(34)=c1+c3
      abb305(34)=abb305(34)*abb305(4)
      abb305(13)=abb305(34)-abb305(13)
      abb305(34)=8.0_ki*spbk7l6
      abb305(9)=abb305(34)*abb305(9)*abb305(13)
      abb305(25)=abb305(25)*spak2l5
      abb305(17)=abb305(17)*abb305(6)
      abb305(17)=abb305(25)-abb305(17)
      abb305(11)=8.0_ki*abb305(11)
      abb305(17)=-abb305(17)*abb305(11)
      abb305(25)=abb305(14)*abb305(11)
      abb305(35)=abb305(14)*spak2l5
      abb305(36)=abb305(16)*abb305(14)
      abb305(37)=abb305(36)*abb305(6)
      abb305(35)=abb305(35)-abb305(37)
      abb305(37)=abb305(11)*spbk7l6
      abb305(35)=abb305(35)*abb305(37)
      abb305(20)=-spak1k7*abb305(20)
      abb305(24)=-spak4k7*abb305(24)
      abb305(20)=abb305(24)+abb305(20)
      abb305(20)=8.0_ki*abb305(20)
      abb305(24)=abb305(12)*spak1k7
      abb305(38)=abb305(14)*spak4k7
      abb305(24)=abb305(24)+abb305(38)
      abb305(38)=-8.0_ki*spbl6k2*abb305(24)
      abb305(32)=abb305(32)*abb305(7)
      abb305(24)=-spbk7l6*abb305(24)
      abb305(24)=-abb305(32)+abb305(24)
      abb305(24)=8.0_ki*abb305(24)
      abb305(32)=abb305(36)*abb305(19)
      abb305(36)=-abb305(14)*abb305(22)
      abb305(32)=abb305(32)+abb305(36)
      abb305(32)=8.0_ki*abb305(32)
      abb305(14)=8.0_ki*abb305(14)
      abb305(13)=abb305(34)*abb305(15)*abb305(13)
      abb305(15)=abb305(21)*spak2l5
      abb305(18)=abb305(18)*abb305(6)
      abb305(15)=abb305(15)-abb305(18)
      abb305(15)=-abb305(15)*abb305(11)
      abb305(11)=abb305(12)*abb305(11)
      abb305(18)=abb305(12)*spak2l5
      abb305(16)=abb305(16)*abb305(12)
      abb305(21)=abb305(16)*abb305(6)
      abb305(18)=abb305(18)-abb305(21)
      abb305(18)=abb305(18)*abb305(37)
      abb305(16)=abb305(16)*abb305(19)
      abb305(19)=-abb305(12)*abb305(22)
      abb305(16)=abb305(16)+abb305(19)
      abb305(16)=8.0_ki*abb305(16)
      abb305(12)=8.0_ki*abb305(12)
      R2d305=0.0_ki
      rat2 = rat2 + R2d305
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='305' value='", &
          & R2d305, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd305h2
