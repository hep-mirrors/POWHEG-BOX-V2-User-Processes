module     p0_dbaru_epnebbbarg_abbrevd109h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(44), public :: abb109
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
      abb109(7)=spbl5k2**(-1)
      abb109(8)=spbl6k2**(-1)
      abb109(9)=spak2k7**(-1)
      abb109(10)=spak2l5**(-1)
      abb109(11)=-NC+2.0_ki*abb109(5)
      abb109(12)=TR*gW
      abb109(12)=abb109(9)*abb109(12)**2*CVDU*i_*spak1k4*abb109(6)*abb109(3)*ab&
      &b109(2)*abb109(1)
      abb109(11)=abb109(11)*abb109(12)*c1
      abb109(13)=-spbk4k3*abb109(11)
      abb109(14)=spbk7k2*mB
      abb109(15)=abb109(14)**2
      abb109(16)=abb109(15)*abb109(7)
      abb109(17)=abb109(16)*abb109(13)
      abb109(18)=c4*abb109(5)**2
      abb109(19)=abb109(18)*abb109(12)*abb109(7)
      abb109(20)=abb109(19)*spbk4k3
      abb109(21)=abb109(15)*abb109(20)
      abb109(17)=abb109(21)+abb109(17)
      abb109(17)=-spak4k7*abb109(17)
      abb109(11)=-spbk3k1*abb109(11)
      abb109(16)=abb109(16)*abb109(11)
      abb109(21)=abb109(19)*spbk3k1
      abb109(15)=abb109(15)*abb109(21)
      abb109(15)=abb109(15)+abb109(16)
      abb109(15)=-spak1k7*abb109(15)
      abb109(15)=abb109(15)+abb109(17)
      abb109(16)=es71+es12-es712
      abb109(17)=-abb109(16)*abb109(8)
      abb109(22)=-abb109(4)*abb109(17)
      abb109(15)=abb109(22)*abb109(15)
      abb109(23)=abb109(12)*spbk4k3
      abb109(24)=abb109(18)*abb109(23)
      abb109(24)=abb109(13)+abb109(24)
      abb109(25)=-spak4l5*abb109(24)
      abb109(12)=abb109(12)*spbk3k1
      abb109(26)=abb109(18)*abb109(12)
      abb109(26)=abb109(11)+abb109(26)
      abb109(27)=-spak1l5*abb109(26)
      abb109(25)=abb109(27)+abb109(25)
      abb109(27)=spbk7k2*mB**2
      abb109(25)=abb109(25)*abb109(22)*abb109(27)
      abb109(28)=spbk7k2*abb109(13)
      abb109(29)=abb109(18)*spbk7k2
      abb109(30)=abb109(29)*abb109(23)
      abb109(28)=abb109(30)+abb109(28)
      abb109(30)=-abb109(16)*abb109(4)
      abb109(31)=-abb109(30)*spak4l6
      abb109(32)=-abb109(28)*abb109(31)
      abb109(33)=-spbk7k2*abb109(11)
      abb109(34)=abb109(29)*abb109(12)
      abb109(33)=abb109(33)-abb109(34)
      abb109(30)=-abb109(30)*spak1l6
      abb109(34)=abb109(33)*abb109(30)
      abb109(32)=abb109(32)+abb109(34)
      abb109(32)=spak2l5*abb109(32)
      abb109(34)=abb109(27)*abb109(7)
      abb109(35)=abb109(34)*abb109(13)
      abb109(36)=abb109(20)*abb109(27)
      abb109(35)=abb109(36)+abb109(35)
      abb109(36)=abb109(35)*abb109(31)
      abb109(34)=abb109(34)*abb109(11)
      abb109(27)=abb109(21)*abb109(27)
      abb109(27)=abb109(27)+abb109(34)
      abb109(34)=abb109(27)*abb109(30)
      abb109(15)=abb109(32)+abb109(36)+abb109(34)+abb109(25)+abb109(15)
      abb109(15)=8.0_ki*abb109(15)
      abb109(25)=abb109(28)*spak4l6
      abb109(28)=abb109(33)*spak1l6
      abb109(25)=abb109(25)-abb109(28)
      abb109(25)=abb109(25)*abb109(4)
      abb109(28)=32.0_ki*spak2l5*abb109(25)
      abb109(32)=abb109(14)*abb109(7)
      abb109(33)=-abb109(32)*abb109(13)
      abb109(19)=abb109(19)*abb109(14)
      abb109(34)=abb109(19)*spbk4k3
      abb109(33)=abb109(33)-abb109(34)
      abb109(34)=abb109(33)*abb109(16)
      abb109(36)=-spak4k7*abb109(34)
      abb109(32)=-abb109(32)*abb109(11)
      abb109(19)=abb109(19)*spbk3k1
      abb109(19)=abb109(32)-abb109(19)
      abb109(32)=abb109(19)*abb109(16)
      abb109(37)=-spak1k7*abb109(32)
      abb109(36)=abb109(36)+abb109(37)
      abb109(36)=8.0_ki*abb109(36)
      abb109(37)=-spak4l5*abb109(34)
      abb109(38)=-spak1l5*abb109(32)
      abb109(37)=abb109(37)+abb109(38)
      abb109(37)=8.0_ki*abb109(37)
      abb109(38)=abb109(7)**2*mB**3
      abb109(39)=abb109(38)*spbk7k2
      abb109(40)=-abb109(39)*abb109(13)
      abb109(29)=abb109(38)*abb109(29)
      abb109(38)=abb109(29)*abb109(23)
      abb109(38)=abb109(40)-abb109(38)
      abb109(40)=abb109(16)*abb109(10)
      abb109(38)=abb109(38)*abb109(40)
      abb109(38)=abb109(38)-abb109(34)
      abb109(41)=spak2k4*abb109(38)
      abb109(39)=-abb109(39)*abb109(11)
      abb109(29)=abb109(29)*abb109(12)
      abb109(29)=abb109(39)-abb109(29)
      abb109(29)=abb109(29)*abb109(40)
      abb109(29)=abb109(29)-abb109(32)
      abb109(39)=-spak1k2*abb109(29)
      abb109(39)=abb109(41)+abb109(39)
      abb109(39)=8.0_ki*abb109(39)
      abb109(40)=spak2k4*abb109(33)
      abb109(41)=-spak1k2*abb109(19)
      abb109(40)=abb109(40)+abb109(41)
      abb109(40)=16.0_ki*abb109(40)
      abb109(31)=-abb109(24)*abb109(31)
      abb109(30)=-abb109(26)*abb109(30)
      abb109(30)=abb109(31)+abb109(30)
      abb109(30)=8.0_ki*abb109(30)
      abb109(31)=abb109(14)*abb109(13)
      abb109(18)=abb109(18)*abb109(14)
      abb109(23)=abb109(18)*abb109(23)
      abb109(23)=abb109(23)+abb109(31)
      abb109(31)=abb109(17)*spal5k7
      abb109(41)=abb109(23)*abb109(31)
      abb109(42)=spal6k7*abb109(34)
      abb109(41)=abb109(41)+abb109(42)
      abb109(41)=8.0_ki*abb109(41)
      abb109(42)=abb109(7)*mB
      abb109(13)=abb109(42)*abb109(13)
      abb109(20)=abb109(20)*mB
      abb109(13)=abb109(20)+abb109(13)
      abb109(13)=abb109(16)*abb109(13)
      abb109(13)=8.0_ki*abb109(13)
      abb109(17)=abb109(17)*mB
      abb109(20)=abb109(24)*abb109(17)
      abb109(20)=8.0_ki*abb109(20)
      abb109(24)=8.0_ki*spal5l6
      abb109(34)=-abb109(34)*abb109(24)
      abb109(38)=-spak2l6*abb109(38)
      abb109(35)=-abb109(35)*abb109(22)
      abb109(35)=abb109(35)+abb109(38)
      abb109(35)=8.0_ki*abb109(35)
      abb109(38)=-spak2l6*abb109(33)
      abb109(23)=abb109(23)*abb109(8)
      abb109(43)=-spak2l5*abb109(23)
      abb109(38)=abb109(38)+abb109(43)
      abb109(38)=16.0_ki*abb109(38)
      abb109(25)=16.0_ki*spal5k7*abb109(25)
      abb109(43)=spak4k7*abb109(33)
      abb109(44)=spak1k7*abb109(19)
      abb109(43)=abb109(43)+abb109(44)
      abb109(43)=8.0_ki*abb109(43)
      abb109(23)=-spal5k7*abb109(23)
      abb109(33)=-spal6k7*abb109(33)
      abb109(23)=abb109(23)+abb109(33)
      abb109(23)=8.0_ki*abb109(23)
      abb109(14)=-abb109(14)*abb109(11)
      abb109(12)=abb109(18)*abb109(12)
      abb109(12)=abb109(14)-abb109(12)
      abb109(14)=-abb109(12)*abb109(31)
      abb109(18)=spal6k7*abb109(32)
      abb109(14)=abb109(14)+abb109(18)
      abb109(14)=8.0_ki*abb109(14)
      abb109(11)=abb109(42)*abb109(11)
      abb109(18)=abb109(21)*mB
      abb109(11)=abb109(18)+abb109(11)
      abb109(11)=abb109(16)*abb109(11)
      abb109(11)=8.0_ki*abb109(11)
      abb109(16)=abb109(26)*abb109(17)
      abb109(16)=8.0_ki*abb109(16)
      abb109(17)=-abb109(32)*abb109(24)
      abb109(18)=-spak2l6*abb109(29)
      abb109(21)=-abb109(27)*abb109(22)
      abb109(18)=abb109(21)+abb109(18)
      abb109(18)=8.0_ki*abb109(18)
      abb109(21)=-spak2l6*abb109(19)
      abb109(12)=abb109(12)*abb109(8)
      abb109(22)=spak2l5*abb109(12)
      abb109(21)=abb109(21)+abb109(22)
      abb109(21)=16.0_ki*abb109(21)
      abb109(12)=spal5k7*abb109(12)
      abb109(19)=-spal6k7*abb109(19)
      abb109(12)=abb109(12)+abb109(19)
      abb109(12)=8.0_ki*abb109(12)
      R2d109=0.0_ki
      rat2 = rat2 + R2d109
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='109' value='", &
          & R2d109, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd109h0
