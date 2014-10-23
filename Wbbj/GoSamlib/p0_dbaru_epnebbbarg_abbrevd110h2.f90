module     p0_dbaru_epnebbbarg_abbrevd110h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(36), public :: abb110
   complex(ki), public :: R2d110
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
      abb110(1)=1.0_ki/(-es71+es712-es12)
      abb110(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb110(3)=1.0_ki/(es34+es567-es12-es234)
      abb110(4)=sqrt(mB**2)
      abb110(5)=NC**(-1)
      abb110(6)=sqrt2**(-1)
      abb110(7)=spbl5k2**(-1)
      abb110(8)=spak2k7**(-1)
      abb110(9)=spak2l6**(-1)
      abb110(10)=spbl6k2**(-1)
      abb110(11)=2.0_ki*c1
      abb110(12)=TR*gW
      abb110(12)=abb110(8)*abb110(12)**2*CVDU*i_*spak1k4*abb110(6)*abb110(3)*ab&
      &b110(2)*abb110(1)
      abb110(13)=abb110(5)*abb110(11)*abb110(12)
      abb110(14)=mB*abb110(13)
      abb110(15)=abb110(14)*spbk4k3
      abb110(16)=abb110(5)**2
      abb110(16)=abb110(16)+1.0_ki
      abb110(17)=abb110(12)*abb110(16)
      abb110(18)=mB*abb110(17)
      abb110(19)=spbk4k3*c4
      abb110(20)=abb110(18)*abb110(19)
      abb110(15)=abb110(15)-abb110(20)
      abb110(21)=-spak4l5*abb110(15)
      abb110(22)=abb110(14)*spbk3k1
      abb110(23)=spbk3k1*c4
      abb110(18)=abb110(18)*abb110(23)
      abb110(22)=abb110(22)-abb110(18)
      abb110(24)=-spak1l5*abb110(22)
      abb110(25)=spbk7k2*abb110(7)
      abb110(15)=-abb110(25)*abb110(15)
      abb110(26)=-spak4k7*abb110(15)
      abb110(22)=abb110(25)*abb110(22)
      abb110(27)=spak1k7*abb110(22)
      abb110(21)=abb110(27)+abb110(26)+abb110(21)+abb110(24)
      abb110(24)=es71+es12-es712
      abb110(26)=abb110(24)*abb110(4)*spbk7l6
      abb110(21)=abb110(26)*abb110(21)
      abb110(27)=abb110(20)*abb110(7)
      abb110(28)=abb110(14)*abb110(7)
      abb110(29)=abb110(28)*spbk4k3
      abb110(27)=abb110(27)-abb110(29)
      abb110(27)=-spak4l6*abb110(27)
      abb110(29)=abb110(18)*abb110(7)
      abb110(28)=abb110(28)*spbk3k1
      abb110(28)=abb110(29)-abb110(28)
      abb110(28)=-spak1l6*abb110(28)
      abb110(27)=abb110(28)+abb110(27)
      abb110(26)=spbl6k2*abb110(26)*abb110(27)
      abb110(21)=abb110(26)+abb110(21)
      abb110(21)=8.0_ki*abb110(21)
      abb110(26)=abb110(13)*spbk3k1
      abb110(27)=abb110(17)*abb110(23)
      abb110(26)=abb110(26)-abb110(27)
      abb110(27)=abb110(24)*spak1l5
      abb110(28)=abb110(27)*abb110(26)
      abb110(13)=abb110(13)*spbk4k3
      abb110(17)=abb110(17)*abb110(19)
      abb110(13)=abb110(13)-abb110(17)
      abb110(17)=abb110(24)*spak4l5
      abb110(29)=abb110(17)*abb110(13)
      abb110(28)=abb110(28)+abb110(29)
      abb110(29)=spbk7l6*abb110(28)
      abb110(15)=abb110(15)*abb110(4)
      abb110(30)=abb110(15)*spbl6k2
      abb110(12)=abb110(12)*mB**2
      abb110(11)=abb110(12)*abb110(11)*abb110(5)
      abb110(25)=abb110(25)*abb110(9)
      abb110(31)=abb110(25)*abb110(11)
      abb110(32)=abb110(31)*spbk4k3
      abb110(12)=abb110(12)*abb110(16)
      abb110(16)=abb110(12)*abb110(19)
      abb110(19)=abb110(16)*abb110(25)
      abb110(19)=abb110(32)-abb110(19)
      abb110(32)=abb110(24)*abb110(19)
      abb110(30)=abb110(30)-abb110(32)
      abb110(33)=spak2k4*abb110(30)
      abb110(22)=abb110(22)*abb110(4)
      abb110(34)=abb110(22)*spbl6k2
      abb110(31)=abb110(31)*spbk3k1
      abb110(12)=abb110(12)*abb110(23)
      abb110(23)=abb110(12)*abb110(25)
      abb110(23)=abb110(31)-abb110(23)
      abb110(25)=abb110(24)*abb110(23)
      abb110(31)=abb110(34)+abb110(25)
      abb110(34)=spak1k2*abb110(31)
      abb110(33)=abb110(34)+abb110(33)-abb110(29)
      abb110(33)=16.0_ki*abb110(33)
      abb110(34)=-16.0_ki*abb110(29)
      abb110(32)=-spak2k4*abb110(32)
      abb110(25)=spak1k2*abb110(25)
      abb110(25)=abb110(25)+abb110(32)-abb110(29)
      abb110(25)=8.0_ki*abb110(25)
      abb110(29)=spbk4k3*abb110(11)
      abb110(29)=abb110(29)-abb110(16)
      abb110(32)=abb110(9)*abb110(7)
      abb110(29)=abb110(24)*abb110(32)*abb110(29)
      abb110(35)=-spak2k4*abb110(29)
      abb110(36)=abb110(11)*spbk3k1
      abb110(36)=abb110(36)-abb110(12)
      abb110(32)=abb110(24)*abb110(32)*abb110(36)
      abb110(36)=spak1k2*abb110(32)
      abb110(35)=abb110(35)+abb110(36)
      abb110(35)=8.0_ki*spbl6k2*abb110(35)
      abb110(24)=8.0_ki*abb110(24)
      abb110(15)=-abb110(15)*abb110(24)
      abb110(29)=-spak4l6*abb110(29)
      abb110(32)=-spak1l6*abb110(32)
      abb110(28)=abb110(32)+abb110(29)-abb110(28)
      abb110(28)=spbl6k2*abb110(28)
      abb110(29)=abb110(9)*spbk4k3
      abb110(32)=abb110(29)*abb110(11)
      abb110(16)=abb110(16)*abb110(9)
      abb110(16)=abb110(32)-abb110(16)
      abb110(29)=abb110(14)*abb110(29)
      abb110(20)=abb110(20)*abb110(9)
      abb110(20)=abb110(29)-abb110(20)
      abb110(20)=abb110(20)*abb110(4)
      abb110(20)=abb110(16)+abb110(20)
      abb110(20)=abb110(20)*abb110(17)
      abb110(29)=abb110(9)*spbk3k1
      abb110(11)=abb110(29)*abb110(11)
      abb110(12)=abb110(12)*abb110(9)
      abb110(11)=abb110(11)-abb110(12)
      abb110(12)=abb110(14)*abb110(29)
      abb110(14)=abb110(18)*abb110(9)
      abb110(12)=abb110(12)-abb110(14)
      abb110(12)=abb110(12)*abb110(4)
      abb110(12)=abb110(11)+abb110(12)
      abb110(12)=abb110(12)*abb110(27)
      abb110(14)=spak4k7*abb110(30)
      abb110(18)=-spak1k7*abb110(31)
      abb110(12)=abb110(18)+abb110(14)+abb110(20)+abb110(12)+abb110(28)
      abb110(12)=8.0_ki*abb110(12)
      abb110(14)=-spak4k7*abb110(19)
      abb110(18)=-spak1k7*abb110(23)
      abb110(14)=abb110(14)+abb110(18)
      abb110(14)=16.0_ki*abb110(14)
      abb110(13)=-spbk7k2*abb110(13)
      abb110(18)=abb110(13)*spak4l5
      abb110(20)=-spbk7k2*abb110(26)
      abb110(26)=abb110(20)*spak1l5
      abb110(18)=abb110(18)+abb110(26)
      abb110(26)=-8.0_ki*abb110(18)
      abb110(19)=-spak2k4*abb110(19)
      abb110(23)=spak1k2*abb110(23)
      abb110(19)=abb110(19)+abb110(23)
      abb110(19)=8.0_ki*abb110(19)
      abb110(16)=-abb110(16)*abb110(17)
      abb110(11)=-abb110(11)*abb110(27)
      abb110(11)=abb110(16)+abb110(11)
      abb110(11)=abb110(10)*spbk7k2*abb110(11)
      abb110(13)=-abb110(13)*abb110(17)
      abb110(16)=-abb110(20)*abb110(27)
      abb110(11)=abb110(11)+abb110(13)+abb110(16)
      abb110(11)=8.0_ki*abb110(11)
      abb110(13)=16.0_ki*abb110(18)
      abb110(16)=abb110(22)*abb110(24)
      R2d110=0.0_ki
      rat2 = rat2 + R2d110
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='110' value='", &
          & R2d110, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd110h2
