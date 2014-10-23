module     p0_dbaru_epnebbbarg_abbrevd81h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(46), public :: abb81
   complex(ki), public :: R2d81
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
      abb81(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb81(2)=NC**(-1)
      abb81(3)=sqrt2**(-1)
      abb81(4)=es56**(-1)
      abb81(5)=spbl5k2**(-1)
      abb81(6)=spbk7k2**(-1)
      abb81(7)=spbl6k2**(-1)
      abb81(8)=c4*abb81(2)**2
      abb81(9)=c3*abb81(2)
      abb81(8)=c2+abb81(8)-abb81(9)
      abb81(9)=TR*gW
      abb81(9)=CVDU*i_*mB*abb81(4)*abb81(3)*abb81(1)*abb81(9)**2
      abb81(10)=abb81(9)*abb81(7)
      abb81(11)=-abb81(8)*abb81(10)
      abb81(12)=-abb81(6)*abb81(11)
      abb81(13)=abb81(12)*spak1l5
      abb81(14)=abb81(9)*abb81(5)
      abb81(15)=-abb81(8)*abb81(14)
      abb81(16)=-abb81(6)*abb81(15)
      abb81(17)=abb81(16)*spak1l6
      abb81(13)=abb81(13)+abb81(17)
      abb81(17)=spak3k4*abb81(13)*spbk3k2**2
      abb81(18)=-16.0_ki*abb81(17)
      abb81(17)=8.0_ki*abb81(17)
      abb81(19)=spak4k7*abb81(8)
      abb81(14)=-abb81(14)*abb81(19)
      abb81(20)=abb81(14)*spak1l6
      abb81(10)=-abb81(10)*abb81(19)
      abb81(21)=abb81(10)*spak1l5
      abb81(20)=abb81(20)+abb81(21)
      abb81(21)=8.0_ki*abb81(20)
      abb81(22)=-spbk7k3*abb81(21)
      abb81(23)=spbk4k3*spak1k4
      abb81(24)=spbk7k3*spak1k7
      abb81(23)=abb81(23)+abb81(24)
      abb81(23)=8.0_ki*abb81(23)
      abb81(25)=abb81(14)*abb81(23)
      abb81(9)=abb81(9)*spbk3k2*abb81(6)
      abb81(26)=abb81(9)*abb81(5)
      abb81(27)=abb81(26)*abb81(8)
      abb81(28)=32.0_ki*spak1k4
      abb81(29)=-abb81(27)*abb81(28)
      abb81(30)=16.0_ki*spak1k4
      abb81(31)=abb81(27)*abb81(30)
      abb81(32)=abb81(30)*spbk7k3
      abb81(33)=-abb81(16)*abb81(32)
      abb81(23)=abb81(10)*abb81(23)
      abb81(9)=abb81(9)*abb81(7)
      abb81(8)=abb81(9)*abb81(8)
      abb81(28)=-abb81(8)*abb81(28)
      abb81(30)=abb81(8)*abb81(30)
      abb81(32)=-abb81(12)*abb81(32)
      abb81(34)=spak1l6*abb81(15)
      abb81(35)=spak1l5*abb81(11)
      abb81(34)=abb81(34)+abb81(35)
      abb81(34)=8.0_ki*abb81(34)
      abb81(15)=-spak1k7*abb81(15)
      abb81(35)=spbk4k2*spak1k4
      abb81(36)=abb81(16)*abb81(35)
      abb81(37)=spak1k3*abb81(27)
      abb81(15)=abb81(37)+abb81(15)+abb81(36)
      abb81(15)=8.0_ki*abb81(15)
      abb81(11)=-spak1k7*abb81(11)
      abb81(35)=abb81(12)*abb81(35)
      abb81(36)=spak1k3*abb81(8)
      abb81(11)=abb81(36)+abb81(11)+abb81(35)
      abb81(11)=8.0_ki*abb81(11)
      abb81(21)=-spbk4k3*abb81(21)
      abb81(35)=abb81(27)*spak1l6
      abb81(36)=abb81(8)*spak1l5
      abb81(35)=abb81(35)+abb81(36)
      abb81(36)=16.0_ki*abb81(35)
      abb81(37)=8.0_ki*abb81(35)
      abb81(38)=16.0_ki*spak1k7
      abb81(39)=abb81(27)*abb81(38)
      abb81(40)=8.0_ki*spak1k7
      abb81(41)=-abb81(27)*abb81(40)
      abb81(24)=16.0_ki*abb81(24)
      abb81(42)=abb81(16)*abb81(24)
      abb81(38)=abb81(8)*abb81(38)
      abb81(40)=-abb81(8)*abb81(40)
      abb81(24)=abb81(12)*abb81(24)
      abb81(13)=-8.0_ki*spbk4k2*abb81(13)
      abb81(26)=-abb81(26)*abb81(19)
      abb81(43)=abb81(26)*spak1l6
      abb81(9)=-abb81(9)*abb81(19)
      abb81(19)=abb81(9)*spak1l5
      abb81(19)=abb81(43)+abb81(19)
      abb81(43)=8.0_ki*spbk2k1
      abb81(44)=abb81(19)*abb81(43)
      abb81(45)=8.0_ki*abb81(26)
      abb81(46)=8.0_ki*abb81(9)
      abb81(35)=abb81(35)*spak3k4
      abb81(20)=abb81(35)+abb81(20)
      abb81(35)=-abb81(20)*abb81(43)
      abb81(27)=spak3k4*abb81(27)
      abb81(14)=abb81(27)+abb81(14)
      abb81(14)=8.0_ki*abb81(14)
      abb81(8)=spak3k4*abb81(8)
      abb81(8)=abb81(8)+abb81(10)
      abb81(8)=8.0_ki*abb81(8)
      abb81(10)=spbk3k1*abb81(20)
      abb81(19)=-spbk7k1*abb81(19)
      abb81(10)=abb81(10)+abb81(19)
      abb81(10)=8.0_ki*abb81(10)
      abb81(19)=16.0_ki*abb81(26)
      abb81(9)=16.0_ki*abb81(9)
      abb81(16)=-8.0_ki*abb81(16)
      abb81(12)=-8.0_ki*abb81(12)
      R2d81=0.0_ki
      rat2 = rat2 + R2d81
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='81' value='", &
          & R2d81, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd81h4
