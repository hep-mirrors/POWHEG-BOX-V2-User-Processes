module     p0_dbaru_epnebbbarg_abbrevd307h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(34), public :: abb307
   complex(ki), public :: R2d307
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
      abb307(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb307(2)=1.0_ki/(es34+es567-es12-es234)
      abb307(3)=sqrt(mB**2)
      abb307(4)=NC**(-1)
      abb307(5)=sqrt2**(-1)
      abb307(6)=spak2l5**(-1)
      abb307(7)=spbl6k2**(-1)
      abb307(8)=spak2k7**(-1)
      abb307(9)=spak2l6**(-1)
      abb307(10)=TR*gW
      abb307(10)=abb307(10)**2*CVDU*i_*spak1k4*abb307(8)*abb307(5)*abb307(2)*ab&
      &b307(1)
      abb307(11)=abb307(10)*spbk3k1
      abb307(12)=abb307(11)*spak1k2
      abb307(10)=abb307(10)*spbk4k3
      abb307(13)=abb307(10)*spak2k4
      abb307(12)=abb307(12)-abb307(13)
      abb307(13)=abb307(4)**2
      abb307(14)=-abb307(13)*abb307(12)
      abb307(15)=c2*abb307(7)
      abb307(16)=abb307(14)*abb307(15)
      abb307(17)=c4*abb307(7)
      abb307(18)=abb307(12)*abb307(17)
      abb307(19)=-abb307(4)*abb307(12)
      abb307(20)=c1+c3
      abb307(21)=abb307(19)*abb307(7)*abb307(20)
      abb307(16)=-abb307(21)+abb307(16)-abb307(18)
      abb307(18)=spbl5k2*spbk7k2
      abb307(22)=abb307(3)**2
      abb307(23)=abb307(18)*abb307(22)
      abb307(24)=mB**2
      abb307(25)=abb307(16)*abb307(23)*abb307(24)
      abb307(26)=abb307(6)*abb307(3)
      abb307(27)=abb307(16)*abb307(26)*spbk7k2*mB**3
      abb307(26)=abb307(26)*mB
      abb307(28)=abb307(13)*abb307(26)
      abb307(29)=abb307(28)*c2
      abb307(30)=-c4*abb307(26)
      abb307(30)=-abb307(29)+abb307(30)
      abb307(30)=-abb307(30)*spbk7k2*abb307(12)
      abb307(31)=-abb307(26)*abb307(19)
      abb307(32)=-abb307(20)*spbk7k2*abb307(31)
      abb307(30)=abb307(30)+abb307(32)
      abb307(30)=abb307(30)*spak2l6
      abb307(27)=abb307(30)+abb307(27)
      abb307(30)=es71+es12-es712
      abb307(27)=abb307(27)*abb307(30)
      abb307(14)=abb307(14)*c2
      abb307(32)=abb307(12)*c4
      abb307(14)=abb307(14)-abb307(32)
      abb307(33)=abb307(19)*abb307(20)
      abb307(34)=abb307(14)-abb307(33)
      abb307(23)=-spak2l6*abb307(23)*abb307(34)
      abb307(23)=abb307(23)+abb307(27)+abb307(25)
      abb307(23)=8.0_ki*abb307(23)
      abb307(16)=-abb307(16)*abb307(18)*abb307(24)
      abb307(18)=spak2l6*abb307(18)*abb307(34)
      abb307(16)=abb307(18)+abb307(16)
      abb307(16)=8.0_ki*abb307(16)
      abb307(18)=-abb307(12)*abb307(29)
      abb307(25)=abb307(31)*abb307(20)
      abb307(27)=-abb307(26)*abb307(32)
      abb307(18)=abb307(18)+abb307(27)+abb307(25)
      abb307(18)=abb307(18)*abb307(30)
      abb307(25)=-spbl5k2*abb307(12)
      abb307(27)=-abb307(13)*abb307(25)
      abb307(29)=abb307(27)*c2
      abb307(30)=abb307(25)*c4
      abb307(29)=abb307(29)-abb307(30)
      abb307(30)=-abb307(22)*abb307(29)
      abb307(19)=-abb307(20)*abb307(22)*abb307(19)
      abb307(31)=spbl5k2*abb307(19)
      abb307(18)=abb307(18)+abb307(31)+abb307(30)
      abb307(18)=8.0_ki*abb307(18)
      abb307(30)=spbl5k2*abb307(33)
      abb307(29)=abb307(30)+abb307(29)
      abb307(29)=8.0_ki*abb307(29)
      abb307(14)=abb307(22)*abb307(14)
      abb307(14)=abb307(19)+abb307(14)
      abb307(19)=8.0_ki*spbk7l5
      abb307(14)=abb307(14)*abb307(19)
      abb307(19)=-abb307(34)*abb307(19)
      abb307(22)=abb307(13)*c2
      abb307(22)=abb307(22)+c4
      abb307(30)=abb307(10)*abb307(22)
      abb307(10)=abb307(10)*abb307(4)
      abb307(31)=-abb307(10)*abb307(20)
      abb307(30)=abb307(31)+abb307(30)
      abb307(31)=abb307(24)*spbl5k2
      abb307(32)=abb307(9)*abb307(31)*abb307(7)
      abb307(32)=abb307(32)-spbl5k2
      abb307(33)=-spak4l6*abb307(30)*abb307(32)
      abb307(22)=abb307(11)*abb307(22)
      abb307(11)=abb307(11)*abb307(4)
      abb307(34)=-abb307(11)*abb307(20)
      abb307(22)=abb307(34)+abb307(22)
      abb307(32)=-spak1l6*abb307(22)*abb307(32)
      abb307(32)=abb307(33)+abb307(32)
      abb307(32)=16.0_ki*abb307(32)
      abb307(11)=spak1k2*abb307(11)
      abb307(10)=spak2k4*abb307(10)
      abb307(10)=abb307(11)-abb307(10)
      abb307(11)=abb307(26)+spbl5k2
      abb307(10)=abb307(20)*abb307(11)*abb307(10)
      abb307(13)=abb307(13)*spbl5k2
      abb307(13)=abb307(13)+abb307(28)
      abb307(13)=-c2*abb307(13)*abb307(12)
      abb307(17)=-abb307(17)*abb307(25)
      abb307(15)=abb307(15)*abb307(27)
      abb307(15)=abb307(15)+abb307(17)
      abb307(15)=abb307(24)*abb307(15)
      abb307(17)=abb307(31)*abb307(21)
      abb307(15)=abb307(17)+abb307(15)
      abb307(15)=abb307(9)*abb307(15)
      abb307(11)=-c4*abb307(11)*abb307(12)
      abb307(10)=abb307(15)+abb307(13)+abb307(11)+abb307(10)
      abb307(10)=8.0_ki*abb307(10)
      abb307(11)=-8.0_ki*abb307(30)
      abb307(12)=-8.0_ki*abb307(22)
      R2d307=0.0_ki
      rat2 = rat2 + R2d307
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='307' value='", &
          & R2d307, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd307h1
