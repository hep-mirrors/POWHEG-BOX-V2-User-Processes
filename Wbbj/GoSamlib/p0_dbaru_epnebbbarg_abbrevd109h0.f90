module     p0_dbaru_epnebbbarg_abbrevd109h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(54), public :: abb109
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
      abb109(6)=spbl5k2**(-1)
      abb109(7)=spbl6k2**(-1)
      abb109(8)=spak2l5**(-1)
      abb109(9)=mB**2
      abb109(10)=TR*gW
      abb109(10)=CVDU*i_*spak1k4*abb109(3)*abb109(2)*abb109(1)*abb109(10)**2
      abb109(11)=abb109(9)*abb109(10)*abb109(6)
      abb109(12)=spbk7k2**2
      abb109(13)=c4*abb109(5)**2
      abb109(14)=abb109(13)*spbe7k2
      abb109(15)=abb109(14)*spae7k7
      abb109(16)=abb109(11)*abb109(12)*abb109(15)
      abb109(17)=-spbk4k3*abb109(16)
      abb109(18)=c1*spbe7k2
      abb109(19)=abb109(11)*abb109(18)
      abb109(12)=spae7k7*abb109(12)*abb109(19)
      abb109(20)=-NC+2.0_ki*abb109(5)
      abb109(21)=-spbk4k3*abb109(20)
      abb109(22)=-abb109(12)*abb109(21)
      abb109(17)=abb109(17)+abb109(22)
      abb109(17)=spak4k7*abb109(17)
      abb109(16)=-spbk3k1*abb109(16)
      abb109(22)=-spbk3k1*abb109(20)
      abb109(12)=-abb109(12)*abb109(22)
      abb109(12)=abb109(16)+abb109(12)
      abb109(12)=spak1k7*abb109(12)
      abb109(16)=abb109(18)*abb109(10)
      abb109(23)=spbk7k2*spae7k7
      abb109(24)=abb109(23)*abb109(16)
      abb109(25)=abb109(24)*abb109(9)
      abb109(26)=-abb109(25)*abb109(21)
      abb109(27)=abb109(14)*abb109(23)
      abb109(9)=abb109(9)*abb109(27)
      abb109(28)=abb109(10)*spbk4k3
      abb109(29)=-abb109(28)*abb109(9)
      abb109(26)=abb109(29)+abb109(26)
      abb109(26)=spak4l5*abb109(26)
      abb109(25)=-abb109(25)*abb109(22)
      abb109(29)=abb109(10)*spbk3k1
      abb109(9)=-abb109(29)*abb109(9)
      abb109(9)=abb109(9)+abb109(25)
      abb109(9)=spak1l5*abb109(9)
      abb109(9)=abb109(9)+abb109(26)+abb109(12)+abb109(17)
      abb109(12)=abb109(7)*abb109(4)
      abb109(9)=abb109(12)*abb109(9)
      abb109(17)=abb109(27)*abb109(28)
      abb109(25)=-abb109(24)*abb109(21)
      abb109(17)=-abb109(17)+abb109(25)
      abb109(25)=spak4l6*abb109(4)
      abb109(17)=abb109(17)*abb109(25)
      abb109(26)=abb109(27)*abb109(29)
      abb109(30)=-abb109(24)*abb109(22)
      abb109(26)=-abb109(26)+abb109(30)
      abb109(30)=spak1l6*abb109(4)
      abb109(26)=abb109(26)*abb109(30)
      abb109(17)=abb109(17)+abb109(26)
      abb109(17)=spak2l5*abb109(17)
      abb109(11)=abb109(11)*abb109(27)
      abb109(26)=abb109(11)*spbk4k3
      abb109(19)=abb109(19)*abb109(23)
      abb109(31)=abb109(21)*abb109(19)
      abb109(26)=abb109(26)+abb109(31)
      abb109(31)=abb109(26)*abb109(25)
      abb109(11)=abb109(11)*spbk3k1
      abb109(19)=abb109(22)*abb109(19)
      abb109(11)=abb109(19)+abb109(11)
      abb109(19)=abb109(11)*abb109(30)
      abb109(9)=abb109(17)+abb109(31)+abb109(19)+abb109(9)
      abb109(9)=4.0_ki*abb109(9)
      abb109(17)=abb109(30)*abb109(29)
      abb109(19)=abb109(25)*abb109(28)
      abb109(17)=abb109(17)+abb109(19)
      abb109(19)=-c1*abb109(20)
      abb109(13)=abb109(19)+abb109(13)
      abb109(19)=spbk7k2*abb109(13)
      abb109(20)=16.0_ki*spal5k7*abb109(19)*abb109(17)
      abb109(31)=-abb109(16)*abb109(22)
      abb109(32)=abb109(14)*abb109(29)
      abb109(32)=abb109(32)-abb109(31)
      abb109(32)=abb109(32)*abb109(30)
      abb109(16)=-abb109(16)*abb109(21)
      abb109(33)=abb109(14)*abb109(28)
      abb109(33)=abb109(16)-abb109(33)
      abb109(33)=abb109(33)*abb109(25)
      abb109(32)=abb109(32)-abb109(33)
      abb109(33)=abb109(32)*spal5e7
      abb109(33)=16.0_ki*abb109(33)
      abb109(32)=spak2l5*abb109(32)
      abb109(17)=-spbk7e7*spal5k7*abb109(13)*abb109(17)
      abb109(17)=abb109(32)+abb109(17)
      abb109(17)=8.0_ki*abb109(17)
      abb109(10)=abb109(10)*mB
      abb109(32)=abb109(10)*abb109(6)
      abb109(34)=abb109(32)*abb109(18)
      abb109(35)=abb109(34)*abb109(23)
      abb109(36)=-abb109(35)*abb109(21)
      abb109(37)=abb109(32)*spbk4k3
      abb109(38)=abb109(27)*abb109(37)
      abb109(36)=abb109(36)-abb109(38)
      abb109(38)=-spak4k7*abb109(36)
      abb109(35)=abb109(35)*abb109(22)
      abb109(32)=abb109(32)*spbk3k1
      abb109(39)=abb109(27)*abb109(32)
      abb109(35)=abb109(39)+abb109(35)
      abb109(39)=spak1k7*abb109(35)
      abb109(38)=abb109(38)+abb109(39)
      abb109(38)=4.0_ki*abb109(38)
      abb109(39)=-spak4l5*abb109(36)
      abb109(40)=spak1l5*abb109(35)
      abb109(39)=abb109(39)+abb109(40)
      abb109(39)=4.0_ki*abb109(39)
      abb109(40)=abb109(6)**2*mB**3
      abb109(41)=abb109(40)*abb109(27)
      abb109(42)=abb109(41)*abb109(28)
      abb109(24)=abb109(40)*abb109(24)
      abb109(40)=abb109(21)*abb109(24)
      abb109(40)=abb109(42)+abb109(40)
      abb109(40)=abb109(40)*abb109(8)
      abb109(40)=abb109(40)+abb109(36)
      abb109(42)=-spak2k4*abb109(40)
      abb109(41)=abb109(41)*abb109(29)
      abb109(24)=abb109(22)*abb109(24)
      abb109(24)=abb109(41)+abb109(24)
      abb109(24)=abb109(24)*abb109(8)
      abb109(24)=abb109(24)-abb109(35)
      abb109(41)=spak1k2*abb109(24)
      abb109(41)=abb109(42)+abb109(41)
      abb109(41)=4.0_ki*abb109(41)
      abb109(42)=abb109(19)*abb109(37)
      abb109(43)=-spak4k7*abb109(42)
      abb109(44)=abb109(19)*abb109(32)
      abb109(45)=-spak1k7*abb109(44)
      abb109(43)=abb109(43)+abb109(45)
      abb109(43)=8.0_ki*abb109(43)
      abb109(45)=-abb109(34)*abb109(21)
      abb109(46)=abb109(37)*abb109(14)
      abb109(46)=abb109(45)-abb109(46)
      abb109(47)=abb109(46)*spak4e7
      abb109(34)=-abb109(34)*abb109(22)
      abb109(48)=abb109(32)*abb109(14)
      abb109(48)=abb109(34)-abb109(48)
      abb109(49)=abb109(48)*spak1e7
      abb109(47)=abb109(47)+abb109(49)
      abb109(47)=8.0_ki*abb109(47)
      abb109(49)=abb109(13)*abb109(37)
      abb109(50)=spak4k7*abb109(49)
      abb109(51)=abb109(13)*abb109(32)
      abb109(52)=spak1k7*abb109(51)
      abb109(50)=abb109(50)+abb109(52)
      abb109(50)=spbk7e7*abb109(50)
      abb109(52)=spak2k4*abb109(46)
      abb109(53)=-spak1k2*abb109(48)
      abb109(50)=abb109(53)+abb109(52)+abb109(50)
      abb109(50)=4.0_ki*abb109(50)
      abb109(16)=spae7k7*abb109(16)
      abb109(28)=-abb109(28)*abb109(15)
      abb109(16)=abb109(28)+abb109(16)
      abb109(16)=abb109(16)*abb109(25)
      abb109(25)=spae7k7*abb109(31)
      abb109(28)=-abb109(29)*abb109(15)
      abb109(25)=abb109(28)+abb109(25)
      abb109(25)=abb109(25)*abb109(30)
      abb109(16)=abb109(16)+abb109(25)
      abb109(16)=4.0_ki*abb109(16)
      abb109(18)=abb109(10)*abb109(18)
      abb109(25)=-abb109(18)*abb109(21)
      abb109(28)=abb109(23)*abb109(25)
      abb109(29)=abb109(10)*spbk4k3
      abb109(30)=-abb109(29)*abb109(27)
      abb109(28)=abb109(30)+abb109(28)
      abb109(30)=spal5k7*abb109(7)
      abb109(28)=abb109(28)*abb109(30)
      abb109(31)=spal6k7*abb109(36)
      abb109(28)=abb109(28)+abb109(31)
      abb109(28)=4.0_ki*abb109(28)
      abb109(31)=abb109(15)*abb109(37)
      abb109(37)=abb109(45)*spae7k7
      abb109(31)=abb109(31)-abb109(37)
      abb109(31)=4.0_ki*abb109(31)
      abb109(37)=abb109(15)*abb109(29)
      abb109(45)=abb109(18)*spae7k7
      abb109(21)=abb109(21)*abb109(45)
      abb109(21)=abb109(37)+abb109(21)
      abb109(37)=4.0_ki*abb109(7)
      abb109(21)=abb109(21)*abb109(37)
      abb109(52)=4.0_ki*spal5l6
      abb109(36)=-abb109(36)*abb109(52)
      abb109(40)=spak2l6*abb109(40)
      abb109(26)=-abb109(26)*abb109(12)
      abb109(26)=abb109(26)+abb109(40)
      abb109(26)=4.0_ki*abb109(26)
      abb109(19)=abb109(19)*abb109(30)
      abb109(40)=-abb109(29)*abb109(19)
      abb109(42)=spal6k7*abb109(42)
      abb109(40)=abb109(40)+abb109(42)
      abb109(40)=8.0_ki*abb109(40)
      abb109(42)=abb109(46)*spal6e7
      abb109(53)=abb109(14)*abb109(29)
      abb109(25)=abb109(25)-abb109(53)
      abb109(53)=spal5e7*abb109(7)
      abb109(54)=abb109(25)*abb109(53)
      abb109(42)=abb109(42)-abb109(54)
      abb109(42)=8.0_ki*abb109(42)
      abb109(13)=abb109(13)*abb109(30)
      abb109(29)=abb109(29)*abb109(13)
      abb109(49)=-spal6k7*abb109(49)
      abb109(29)=abb109(29)+abb109(49)
      abb109(29)=spbk7e7*abb109(29)
      abb109(46)=-spak2l6*abb109(46)
      abb109(49)=spak2l5*abb109(7)
      abb109(25)=abb109(25)*abb109(49)
      abb109(25)=abb109(25)+abb109(46)+abb109(29)
      abb109(25)=4.0_ki*abb109(25)
      abb109(18)=-abb109(18)*abb109(22)
      abb109(23)=abb109(23)*abb109(18)
      abb109(10)=abb109(10)*spbk3k1
      abb109(27)=-abb109(10)*abb109(27)
      abb109(23)=abb109(27)+abb109(23)
      abb109(23)=abb109(23)*abb109(30)
      abb109(27)=-spal6k7*abb109(35)
      abb109(23)=abb109(23)+abb109(27)
      abb109(23)=4.0_ki*abb109(23)
      abb109(27)=abb109(15)*abb109(32)
      abb109(29)=abb109(34)*spae7k7
      abb109(27)=abb109(27)-abb109(29)
      abb109(27)=4.0_ki*abb109(27)
      abb109(15)=abb109(15)*abb109(10)
      abb109(22)=abb109(22)*abb109(45)
      abb109(15)=abb109(15)+abb109(22)
      abb109(15)=abb109(15)*abb109(37)
      abb109(22)=abb109(35)*abb109(52)
      abb109(24)=spak2l6*abb109(24)
      abb109(11)=-abb109(11)*abb109(12)
      abb109(11)=abb109(11)+abb109(24)
      abb109(11)=4.0_ki*abb109(11)
      abb109(12)=-abb109(10)*abb109(19)
      abb109(19)=spal6k7*abb109(44)
      abb109(12)=abb109(12)+abb109(19)
      abb109(12)=8.0_ki*abb109(12)
      abb109(19)=abb109(48)*spal6e7
      abb109(14)=abb109(14)*abb109(10)
      abb109(14)=abb109(14)-abb109(18)
      abb109(18)=abb109(14)*abb109(53)
      abb109(18)=abb109(19)+abb109(18)
      abb109(18)=8.0_ki*abb109(18)
      abb109(10)=abb109(10)*abb109(13)
      abb109(13)=-spal6k7*abb109(51)
      abb109(10)=abb109(10)+abb109(13)
      abb109(10)=spbk7e7*abb109(10)
      abb109(13)=-spak2l6*abb109(48)
      abb109(14)=-abb109(14)*abb109(49)
      abb109(10)=abb109(14)+abb109(13)+abb109(10)
      abb109(10)=4.0_ki*abb109(10)
      R2d109=0.0_ki
      rat2 = rat2 + R2d109
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='109' value='", &
          & R2d109, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd109h0
