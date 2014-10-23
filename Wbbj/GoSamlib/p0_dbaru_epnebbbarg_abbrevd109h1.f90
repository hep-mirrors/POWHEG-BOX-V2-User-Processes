module     p0_dbaru_epnebbbarg_abbrevd109h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(42), public :: abb109
   complex(ki), public :: R2d109
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
      abb109(1)=1.0_ki/(-es71+es712-es12)
      abb109(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb109(3)=1.0_ki/(es34+es567-es12-es234)
      abb109(4)=sqrt(mB**2)
      abb109(5)=NC**(-1)
      abb109(6)=sqrt2**(-1)
      abb109(7)=spbl6k2**(-1)
      abb109(8)=spak2k7**(-1)
      abb109(9)=spak2l5**(-1)
      abb109(10)=spbl5k2**(-1)
      abb109(11)=2.0_ki*abb109(5)
      abb109(12)=TR*gW
      abb109(12)=abb109(8)*abb109(12)**2*CVDU*i_*spak1k4*abb109(6)*abb109(3)*ab&
      &b109(2)*abb109(1)
      abb109(13)=abb109(12)*c1
      abb109(14)=abb109(13)*spbk7l5
      abb109(15)=abb109(11)*abb109(14)
      abb109(14)=abb109(14)*NC
      abb109(12)=abb109(12)*c4*abb109(5)**2
      abb109(16)=spbk7l5*abb109(12)
      abb109(14)=abb109(14)+abb109(16)-abb109(15)
      abb109(15)=es71+es12-es712
      abb109(16)=-abb109(15)*spbk4k3*abb109(14)
      abb109(17)=spak4l6*abb109(16)
      abb109(14)=-abb109(15)*spbk3k1*abb109(14)
      abb109(18)=spak1l6*abb109(14)
      abb109(17)=abb109(18)+abb109(17)
      abb109(17)=mB*abb109(17)
      abb109(18)=abb109(7)*mB
      abb109(19)=-abb109(18)*abb109(16)
      abb109(20)=spak4k7*abb109(19)
      abb109(21)=-abb109(18)*abb109(14)
      abb109(22)=spak1k7*abb109(21)
      abb109(20)=abb109(20)+abb109(22)
      abb109(20)=spbk7k2*abb109(20)
      abb109(19)=spak4l5*abb109(19)
      abb109(21)=spak1l5*abb109(21)
      abb109(19)=abb109(21)+abb109(19)
      abb109(19)=spbl5k2*abb109(19)
      abb109(17)=abb109(19)+abb109(20)+abb109(17)
      abb109(19)=8.0_ki*abb109(4)
      abb109(17)=abb109(17)*abb109(19)
      abb109(11)=abb109(11)*abb109(13)
      abb109(13)=abb109(13)*NC
      abb109(11)=-abb109(11)+abb109(12)+abb109(13)
      abb109(12)=spbk4k3*abb109(11)
      abb109(13)=abb109(18)*abb109(12)
      abb109(20)=-spak2k4*abb109(13)
      abb109(11)=spbk3k1*abb109(11)
      abb109(18)=-abb109(18)*abb109(11)
      abb109(21)=-spak1k2*abb109(18)
      abb109(20)=abb109(20)+abb109(21)
      abb109(21)=spbl5k2*spbk7k2
      abb109(20)=16.0_ki*abb109(21)*abb109(4)*abb109(20)
      abb109(22)=spak4k7*abb109(16)
      abb109(23)=spak1k7*abb109(14)
      abb109(22)=abb109(22)+abb109(23)
      abb109(22)=8.0_ki*abb109(22)
      abb109(23)=spak4l5*abb109(16)
      abb109(24)=spak1l5*abb109(14)
      abb109(23)=abb109(23)+abb109(24)
      abb109(23)=8.0_ki*abb109(23)
      abb109(24)=abb109(12)*spbk7k2
      abb109(25)=spak2k4*abb109(24)
      abb109(26)=abb109(11)*spbk7k2
      abb109(27)=-spak1k2*abb109(26)
      abb109(25)=abb109(25)+abb109(27)
      abb109(25)=16.0_ki*abb109(25)
      abb109(27)=mB**2
      abb109(28)=abb109(27)*abb109(10)*abb109(9)
      abb109(28)=abb109(28)-1.0_ki
      abb109(29)=-abb109(16)*abb109(28)
      abb109(30)=spak2k4*abb109(29)
      abb109(28)=-abb109(14)*abb109(28)
      abb109(31)=-spak1k2*abb109(28)
      abb109(30)=abb109(30)+abb109(31)
      abb109(30)=8.0_ki*abb109(30)
      abb109(27)=abb109(27)*abb109(7)
      abb109(31)=-abb109(27)*abb109(12)
      abb109(32)=abb109(31)*es71
      abb109(33)=abb109(31)*es712
      abb109(34)=-2.0_ki*abb109(32)+abb109(33)
      abb109(34)=es712*abb109(34)
      abb109(32)=abb109(32)-abb109(33)
      abb109(33)=abb109(31)*es12
      abb109(35)=2.0_ki*abb109(32)+abb109(33)
      abb109(35)=es12*abb109(35)
      abb109(36)=es71**2
      abb109(31)=abb109(31)*abb109(36)
      abb109(31)=abb109(35)+abb109(31)+abb109(34)
      abb109(31)=abb109(9)*abb109(31)
      abb109(34)=-spal6k7*abb109(16)
      abb109(31)=abb109(31)+abb109(34)
      abb109(31)=8.0_ki*abb109(31)
      abb109(32)=abb109(32)+abb109(33)
      abb109(33)=16.0_ki*abb109(9)
      abb109(34)=abb109(32)*abb109(33)
      abb109(12)=abb109(12)*abb109(15)
      abb109(35)=8.0_ki*abb109(12)
      abb109(37)=abb109(15)*abb109(4)
      abb109(38)=abb109(13)*abb109(37)
      abb109(32)=abb109(38)+abb109(32)
      abb109(32)=spbk7k2*abb109(32)
      abb109(38)=spal5l6*abb109(16)
      abb109(32)=abb109(32)+abb109(38)
      abb109(32)=8.0_ki*abb109(32)
      abb109(38)=16.0_ki*spak2l6
      abb109(39)=-abb109(24)*abb109(38)
      abb109(29)=-spak2l6*abb109(29)
      abb109(16)=-abb109(27)*abb109(16)
      abb109(16)=abb109(16)+abb109(29)
      abb109(16)=8.0_ki*abb109(16)
      abb109(12)=spak4l6*mB*abb109(12)
      abb109(29)=spak1l6*abb109(11)*abb109(15)*mB
      abb109(12)=abb109(29)+abb109(12)
      abb109(12)=abb109(9)*abb109(12)
      abb109(13)=-spak4k7*abb109(13)
      abb109(29)=spak1k7*abb109(18)
      abb109(13)=abb109(13)+abb109(29)
      abb109(13)=abb109(21)*abb109(13)
      abb109(12)=abb109(13)+abb109(12)
      abb109(12)=abb109(12)*abb109(19)
      abb109(13)=spak4k7*abb109(24)
      abb109(19)=spak1k7*abb109(26)
      abb109(13)=abb109(13)+abb109(19)
      abb109(13)=8.0_ki*abb109(13)
      abb109(19)=8.0_ki*spal6k7
      abb109(21)=-abb109(24)*abb109(19)
      abb109(24)=-abb109(27)*abb109(11)
      abb109(29)=abb109(24)*es71
      abb109(40)=abb109(24)*es712
      abb109(41)=-2.0_ki*abb109(29)+abb109(40)
      abb109(41)=es712*abb109(41)
      abb109(29)=abb109(29)-abb109(40)
      abb109(40)=abb109(24)*es12
      abb109(42)=2.0_ki*abb109(29)+abb109(40)
      abb109(42)=es12*abb109(42)
      abb109(24)=abb109(24)*abb109(36)
      abb109(24)=abb109(42)+abb109(24)+abb109(41)
      abb109(24)=abb109(9)*abb109(24)
      abb109(36)=-spal6k7*abb109(14)
      abb109(24)=abb109(24)+abb109(36)
      abb109(24)=8.0_ki*abb109(24)
      abb109(29)=abb109(29)+abb109(40)
      abb109(33)=abb109(29)*abb109(33)
      abb109(11)=abb109(15)*abb109(11)
      abb109(11)=8.0_ki*abb109(11)
      abb109(15)=-abb109(18)*abb109(37)
      abb109(15)=abb109(15)+abb109(29)
      abb109(15)=spbk7k2*abb109(15)
      abb109(18)=spal5l6*abb109(14)
      abb109(15)=abb109(15)+abb109(18)
      abb109(15)=8.0_ki*abb109(15)
      abb109(18)=-abb109(26)*abb109(38)
      abb109(19)=-abb109(26)*abb109(19)
      abb109(26)=-spak2l6*abb109(28)
      abb109(14)=-abb109(27)*abb109(14)
      abb109(14)=abb109(14)+abb109(26)
      abb109(14)=8.0_ki*abb109(14)
      R2d109=0.0_ki
      rat2 = rat2 + R2d109
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='109' value='", &
          & R2d109, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd109h1
