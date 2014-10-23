module     p0_dbaru_epnebbbarg_abbrevd123h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(42), public :: abb123
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
      abb123(6)=spbl5k2**(-1)
      abb123(7)=spbk7k2**(-1)
      abb123(8)=spak2l6**(-1)
      abb123(9)=spbl6k2**(-1)
      abb123(10)=abb123(8)**2*spbl5k2*abb123(9)
      abb123(11)=spak2k7*spak3k4
      abb123(12)=-abb123(11)*abb123(10)
      abb123(13)=2.0_ki*abb123(11)
      abb123(14)=abb123(8)*abb123(5)
      abb123(13)=-abb123(13)*abb123(14)
      abb123(12)=-abb123(13)-abb123(12)
      abb123(13)=TR*gW
      abb123(13)=abb123(4)*i_*CVDU*abb123(3)*abb123(2)*abb123(1)*abb123(13)**2
      abb123(15)=abb123(13)*abb123(7)*spak1k2
      abb123(16)=abb123(15)*mB**3
      abb123(17)=abb123(16)*c4
      abb123(18)=spbk3k2**2
      abb123(19)=abb123(17)*abb123(18)
      abb123(20)=NC*c1
      abb123(16)=abb123(16)*abb123(20)
      abb123(21)=abb123(16)*abb123(18)
      abb123(19)=abb123(19)-abb123(21)
      abb123(12)=abb123(19)*abb123(12)
      abb123(19)=abb123(5)**2
      abb123(22)=abb123(19)*abb123(17)
      abb123(23)=abb123(22)*abb123(18)
      abb123(21)=abb123(21)*abb123(19)
      abb123(21)=abb123(23)-abb123(21)
      abb123(23)=spbl6k2*abb123(6)
      abb123(21)=abb123(21)*abb123(11)*abb123(23)
      abb123(12)=abb123(21)+abb123(12)
      abb123(20)=abb123(20)-c4
      abb123(15)=abb123(20)*abb123(15)
      abb123(21)=abb123(15)*abb123(8)*mB
      abb123(24)=abb123(18)*abb123(21)
      abb123(25)=spbl6l5*spak3k4
      abb123(26)=abb123(24)*abb123(25)
      abb123(27)=abb123(26)*spal6k7
      abb123(28)=abb123(15)*abb123(5)*mB
      abb123(18)=abb123(18)*abb123(28)
      abb123(29)=abb123(18)*abb123(25)
      abb123(30)=abb123(29)*spal5k7
      abb123(24)=abb123(24)*spak3k4
      abb123(31)=spbl5k1*spak1k7
      abb123(32)=abb123(24)*abb123(31)
      abb123(18)=abb123(18)*spak3k4
      abb123(33)=spbl6k1*spak1k7
      abb123(34)=abb123(18)*abb123(33)
      abb123(27)=abb123(12)+abb123(32)+abb123(34)+abb123(27)-abb123(30)
      abb123(30)=es71+es12-es712
      abb123(32)=8.0_ki*abb123(30)*abb123(27)
      abb123(27)=-16.0_ki*abb123(27)
      abb123(13)=abb123(20)*abb123(13)*mB
      abb123(20)=spbk3k2*spak1k2
      abb123(34)=-abb123(20)*abb123(13)
      abb123(35)=-abb123(8)*abb123(34)
      abb123(36)=2.0_ki*spak4k7
      abb123(37)=abb123(35)*abb123(36)
      abb123(38)=abb123(37)*spbl6l5
      abb123(26)=abb123(38)+abb123(26)
      abb123(26)=abb123(26)*spal6k7
      abb123(34)=-abb123(5)*abb123(34)
      abb123(38)=abb123(34)*abb123(36)
      abb123(39)=abb123(38)*spbl6l5
      abb123(29)=abb123(39)+abb123(29)
      abb123(29)=abb123(29)*spal5k7
      abb123(18)=abb123(38)+abb123(18)
      abb123(18)=abb123(18)*abb123(33)
      abb123(24)=abb123(37)+abb123(24)
      abb123(24)=abb123(24)*abb123(31)
      abb123(37)=-abb123(23)*abb123(19)
      abb123(37)=abb123(37)-abb123(10)
      abb123(17)=abb123(17)-abb123(16)
      abb123(37)=abb123(37)*abb123(17)*spbk3k2
      abb123(38)=spak4k7*abb123(37)
      abb123(39)=abb123(8)*spbk3k2
      abb123(40)=-abb123(17)*abb123(39)*abb123(5)
      abb123(36)=abb123(40)*abb123(36)
      abb123(36)=abb123(38)+abb123(36)
      abb123(36)=2.0_ki*abb123(36)
      abb123(36)=abb123(30)*abb123(36)
      abb123(12)=-abb123(26)+abb123(29)-abb123(18)-abb123(24)+abb123(36)-abb123&
      &(12)
      abb123(18)=8.0_ki*abb123(12)
      abb123(12)=-4.0_ki*abb123(12)
      abb123(15)=-mB*spbk3k2*abb123(15)
      abb123(24)=-abb123(8)*abb123(15)
      abb123(26)=abb123(31)*abb123(24)
      abb123(15)=-abb123(5)*abb123(15)
      abb123(29)=abb123(33)*abb123(15)
      abb123(26)=abb123(26)+abb123(29)
      abb123(29)=-spak3k4*abb123(26)
      abb123(36)=-spal6k7*abb123(24)
      abb123(38)=spal5k7*abb123(15)
      abb123(36)=abb123(38)+abb123(36)
      abb123(36)=abb123(25)*abb123(36)
      abb123(37)=2.0_ki*abb123(40)+abb123(37)
      abb123(11)=abb123(11)*abb123(37)
      abb123(11)=abb123(11)+abb123(36)+abb123(29)
      abb123(11)=spbk7k3*abb123(11)
      abb123(29)=-spal6k7*abb123(35)
      abb123(36)=spal5k7*abb123(34)
      abb123(29)=abb123(36)+abb123(29)
      abb123(29)=spbl6l5*abb123(29)
      abb123(36)=abb123(37)*abb123(30)
      abb123(29)=abb123(36)+abb123(29)
      abb123(29)=spak2k4*abb123(29)
      abb123(36)=abb123(5)*abb123(13)
      abb123(20)=spak3k4*abb123(7)*abb123(20)**2
      abb123(38)=abb123(36)*abb123(20)
      abb123(40)=spak2k4*spak1k7
      abb123(34)=-abb123(34)*abb123(40)
      abb123(34)=abb123(38)+abb123(34)
      abb123(34)=spbl6k1*abb123(34)
      abb123(38)=abb123(13)*abb123(8)
      abb123(20)=abb123(38)*abb123(20)
      abb123(35)=-abb123(35)*abb123(40)
      abb123(20)=abb123(20)+abb123(35)
      abb123(20)=spbl5k1*abb123(20)
      abb123(11)=abb123(11)+abb123(34)+abb123(20)+abb123(29)
      abb123(11)=8.0_ki*abb123(11)
      abb123(20)=abb123(24)*spbl5k1
      abb123(29)=abb123(15)*spbl6k1
      abb123(20)=abb123(20)+abb123(29)
      abb123(29)=abb123(20)*spak1k4
      abb123(34)=abb123(24)*spbl6l5
      abb123(35)=abb123(34)*spak4l6
      abb123(40)=abb123(15)*spbl6l5
      abb123(41)=abb123(40)*spak4l5
      abb123(29)=-abb123(29)+abb123(35)-abb123(41)
      abb123(35)=-16.0_ki*abb123(29)
      abb123(41)=-spak2k4*abb123(37)
      abb123(29)=abb123(41)-abb123(29)
      abb123(29)=8.0_ki*abb123(29)
      abb123(25)=8.0_ki*abb123(25)
      abb123(24)=abb123(24)*abb123(25)
      abb123(41)=8.0_ki*spak2k4
      abb123(42)=-abb123(34)*abb123(41)
      abb123(15)=-abb123(15)*abb123(25)
      abb123(25)=abb123(40)*abb123(41)
      abb123(10)=-abb123(10)-2.0_ki*abb123(14)
      abb123(10)=abb123(17)*abb123(10)
      abb123(14)=abb123(19)*abb123(16)
      abb123(14)=abb123(14)-abb123(22)
      abb123(14)=abb123(14)*abb123(23)
      abb123(10)=abb123(14)+abb123(10)
      abb123(14)=-abb123(10)*abb123(30)
      abb123(16)=-spak1k2*abb123(38)
      abb123(17)=-spal6k7*abb123(16)
      abb123(19)=-spak1k2*abb123(36)
      abb123(22)=spal5k7*abb123(19)
      abb123(17)=abb123(22)+abb123(17)
      abb123(17)=spbl6l5*abb123(17)
      abb123(19)=-abb123(19)*abb123(33)
      abb123(16)=-abb123(16)*abb123(31)
      abb123(14)=abb123(19)+abb123(16)+abb123(17)+abb123(14)
      abb123(14)=8.0_ki*abb123(14)
      abb123(10)=16.0_ki*abb123(10)
      abb123(16)=8.0_ki*spbl6l5
      abb123(17)=-abb123(21)*abb123(16)
      abb123(16)=abb123(28)*abb123(16)
      abb123(19)=abb123(37)*spak2k7
      abb123(22)=abb123(34)*spal6k7
      abb123(23)=abb123(40)*spal5k7
      abb123(19)=abb123(26)-abb123(19)+abb123(22)-abb123(23)
      abb123(22)=8.0_ki*abb123(19)
      abb123(19)=-4.0_ki*abb123(19)
      abb123(23)=-spbl6k1*spbk3k2*abb123(36)
      abb123(13)=-spbl5k1*abb123(39)*abb123(13)
      abb123(13)=abb123(23)+abb123(13)
      abb123(13)=16.0_ki*abb123(13)*abb123(7)*spak1k2**2
      abb123(23)=8.0_ki*spak3k4
      abb123(23)=-abb123(37)*abb123(23)
      abb123(20)=8.0_ki*abb123(20)
      abb123(26)=spak3k4*abb123(20)
      abb123(20)=-spak2k4*abb123(20)
      abb123(28)=-spbl6k1*abb123(28)
      abb123(21)=-spbl5k1*abb123(21)
      abb123(21)=abb123(28)+abb123(21)
      abb123(21)=8.0_ki*abb123(21)
      R2d123=0.0_ki
      rat2 = rat2 + R2d123
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='123' value='", &
          & R2d123, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd123h7
