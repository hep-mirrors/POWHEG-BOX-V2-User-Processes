module     p0_dbaru_epnebbbarg_abbrevd58h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(36), public :: abb58
   complex(ki), public :: R2d58
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
      abb58(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb58(2)=NC**(-1)
      abb58(3)=sqrt2**(-1)
      abb58(4)=es234**(-1)
      abb58(5)=es56**(-1)
      abb58(6)=es71**(-1)
      abb58(7)=spak2l5**(-1)
      abb58(8)=spak2k7**(-1)
      abb58(9)=spak2l6**(-1)
      abb58(10)=1.0_ki/(es71+es34+es56-es712-es234)
      abb58(11)=spbl6k3*spak3k4
      abb58(12)=spak2k4*spbl6k2
      abb58(11)=abb58(11)-abb58(12)
      abb58(12)=abb58(7)*spbk3k2
      abb58(11)=abb58(11)*abb58(12)
      abb58(13)=spak2k4*spbl5k2
      abb58(14)=spbl5k3*spak3k4
      abb58(13)=abb58(13)-abb58(14)
      abb58(15)=abb58(9)*spbk3k2
      abb58(13)=abb58(13)*abb58(15)
      abb58(13)=abb58(13)-abb58(11)
      abb58(16)=abb58(2)*c4
      abb58(17)=abb58(16)*abb58(4)
      abb58(18)=c3*abb58(4)
      abb58(17)=abb58(17)-abb58(18)
      abb58(17)=abb58(17)*abb58(2)
      abb58(19)=c4*abb58(4)
      abb58(17)=abb58(17)-abb58(19)
      abb58(13)=-abb58(13)*abb58(17)
      abb58(11)=-NC*abb58(11)
      abb58(19)=spak2k4*NC
      abb58(20)=abb58(19)*spbl5k2
      abb58(14)=abb58(14)*NC
      abb58(14)=abb58(20)-abb58(14)
      abb58(14)=abb58(14)*abb58(15)
      abb58(11)=abb58(11)+abb58(14)
      abb58(11)=abb58(11)*abb58(18)
      abb58(11)=-abb58(11)+abb58(13)
      abb58(13)=i_*abb58(8)
      abb58(14)=abb58(13)*spak1k2
      abb58(20)=abb58(11)*abb58(14)
      abb58(21)=abb58(16)*abb58(10)
      abb58(22)=c3*abb58(10)
      abb58(21)=abb58(21)-abb58(22)
      abb58(21)=abb58(21)*abb58(2)
      abb58(23)=c4*abb58(10)
      abb58(21)=abb58(21)-abb58(23)
      abb58(23)=abb58(22)*NC
      abb58(23)=abb58(23)+abb58(21)
      abb58(24)=abb58(7)*spbl6k2
      abb58(25)=abb58(24)*spak2l6
      abb58(25)=abb58(25)+spbl5k2
      abb58(26)=abb58(25)*spbl6k3*spak1k4
      abb58(27)=abb58(9)*spbl5k2
      abb58(28)=abb58(27)*spak2l5
      abb58(28)=abb58(28)+spbl6k2
      abb58(29)=abb58(28)*spbl5k3*spak1k4
      abb58(26)=abb58(29)+abb58(26)
      abb58(13)=abb58(13)*abb58(26)*abb58(23)
      abb58(13)=abb58(13)+abb58(20)
      abb58(13)=abb58(13)*spbk7k1*TR**2
      abb58(20)=abb58(5)*abb58(1)*abb58(3)*CVDU*mB
      abb58(26)=abb58(20)*abb58(6)
      abb58(29)=8.0_ki*spak1k2*abb58(13)*gW**2*abb58(26)
      abb58(20)=abb58(20)*spak1k2
      abb58(30)=abb58(6)*gW
      abb58(13)=abb58(13)*abb58(20)*abb58(30)**2
      abb58(30)=32.0_ki*abb58(13)
      abb58(24)=abb58(27)+abb58(24)
      abb58(24)=abb58(24)*spbk7k3
      abb58(21)=abb58(21)*spak2k4*abb58(24)
      abb58(22)=abb58(22)*abb58(19)*abb58(24)
      abb58(21)=abb58(22)+abb58(21)
      abb58(22)=gW*TR
      abb58(22)=abb58(22)**2
      abb58(14)=abb58(14)*abb58(26)*abb58(22)
      abb58(24)=32.0_ki*abb58(14)
      abb58(21)=abb58(21)*abb58(24)
      abb58(26)=abb58(12)*spbk7l6
      abb58(27)=abb58(15)*spbk7l5
      abb58(26)=abb58(26)+abb58(27)
      abb58(27)=spak2k4*abb58(26)
      abb58(31)=abb58(27)*abb58(18)
      abb58(27)=abb58(27)*abb58(4)
      abb58(32)=abb58(27)*abb58(16)
      abb58(31)=abb58(31)-abb58(32)
      abb58(31)=abb58(31)*abb58(2)
      abb58(32)=abb58(27)*c4
      abb58(26)=abb58(19)*abb58(26)
      abb58(33)=abb58(26)*abb58(18)
      abb58(31)=abb58(31)+abb58(32)-abb58(33)
      abb58(31)=abb58(31)*abb58(24)
      abb58(32)=spbk7k3*spak4l6
      abb58(33)=abb58(32)*abb58(9)
      abb58(34)=spbk7k3*spak4l5
      abb58(35)=abb58(34)*abb58(7)
      abb58(33)=abb58(35)-abb58(33)
      abb58(33)=spbl6l5*abb58(33)
      abb58(35)=abb58(33)*abb58(10)
      abb58(27)=abb58(35)+abb58(27)
      abb58(16)=abb58(16)-c3
      abb58(16)=abb58(16)*abb58(2)
      abb58(16)=abb58(16)-c4
      abb58(27)=abb58(27)*abb58(16)
      abb58(35)=abb58(10)*NC
      abb58(33)=abb58(33)*abb58(35)
      abb58(26)=abb58(4)*abb58(26)
      abb58(26)=abb58(33)+abb58(26)
      abb58(26)=c3*abb58(26)
      abb58(26)=abb58(26)+abb58(27)
      abb58(24)=abb58(26)*abb58(24)
      abb58(13)=-16.0_ki*abb58(13)
      abb58(26)=abb58(9)*spbk7l5
      abb58(27)=abb58(7)*spbk7l6
      abb58(26)=abb58(26)+abb58(27)
      abb58(27)=abb58(4)*es34*abb58(26)
      abb58(27)=abb58(26)-abb58(27)
      abb58(33)=spbk7l5*abb58(28)
      abb58(36)=spbk7l6*abb58(25)
      abb58(33)=abb58(36)+abb58(33)
      abb58(36)=abb58(33)*abb58(10)
      abb58(36)=-abb58(36)-abb58(27)
      abb58(36)=abb58(36)*abb58(16)
      abb58(27)=-NC*abb58(27)
      abb58(33)=-abb58(33)*abb58(35)
      abb58(27)=abb58(33)+abb58(27)
      abb58(27)=c3*abb58(27)
      abb58(27)=abb58(27)+abb58(36)
      abb58(14)=16.0_ki*abb58(14)
      abb58(27)=abb58(27)*abb58(14)
      abb58(26)=abb58(26)*spbk4k3
      abb58(17)=-abb58(17)*spak2k4*abb58(26)
      abb58(18)=-abb58(18)*abb58(19)*abb58(26)
      abb58(17)=abb58(18)+abb58(17)
      abb58(17)=abb58(17)*abb58(14)
      abb58(18)=abb58(32)*spbl6k2
      abb58(26)=abb58(34)*spbl5k2
      abb58(18)=abb58(18)+abb58(26)
      abb58(26)=abb58(18)*abb58(10)
      abb58(32)=abb58(26)*abb58(7)
      abb58(33)=spak2k4*spbk7k2
      abb58(34)=spbk7k3*spak3k4
      abb58(33)=abb58(33)-abb58(34)
      abb58(33)=abb58(33)*abb58(4)
      abb58(36)=abb58(33)*abb58(12)
      abb58(32)=abb58(32)-abb58(36)
      abb58(32)=abb58(32)*abb58(16)
      abb58(18)=abb58(18)*abb58(35)
      abb58(35)=abb58(7)*abb58(18)
      abb58(19)=abb58(19)*spbk7k2
      abb58(34)=abb58(34)*NC
      abb58(19)=abb58(19)-abb58(34)
      abb58(19)=abb58(19)*abb58(4)
      abb58(12)=-abb58(12)*abb58(19)
      abb58(12)=abb58(35)+abb58(12)
      abb58(12)=c3*abb58(12)
      abb58(12)=abb58(12)+abb58(32)
      abb58(12)=abb58(12)*abb58(14)
      abb58(26)=abb58(26)*abb58(9)
      abb58(32)=abb58(33)*abb58(15)
      abb58(26)=abb58(26)-abb58(32)
      abb58(16)=abb58(26)*abb58(16)
      abb58(18)=abb58(9)*abb58(18)
      abb58(15)=-abb58(15)*abb58(19)
      abb58(15)=abb58(18)+abb58(15)
      abb58(15)=c3*abb58(15)
      abb58(15)=abb58(15)+abb58(16)
      abb58(14)=abb58(15)*abb58(14)
      abb58(15)=abb58(28)*spbl5k3*spak4k7
      abb58(16)=abb58(25)*spbl6k3*spak4k7
      abb58(15)=abb58(16)+abb58(15)
      abb58(15)=abb58(8)*abb58(15)*abb58(23)
      abb58(11)=abb58(11)+abb58(15)
      abb58(11)=8.0_ki*i_*abb58(6)**2*abb58(22)*abb58(20)*spbk7k1*abb58(11)
      R2d58=0.0_ki
      rat2 = rat2 + R2d58
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='58' value='", &
          & R2d58, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd58h3
