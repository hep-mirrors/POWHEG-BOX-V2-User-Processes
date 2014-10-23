module     p0_dbaru_epnebbbarg_abbrevd16h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(57), public :: abb16
   complex(ki), public :: R2d16
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
      abb16(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb16(2)=sqrt2**(-1)
      abb16(3)=es56**(-1)
      abb16(4)=es71**(-1)
      abb16(5)=spbk7k2**(-1)
      abb16(6)=spbl5k2**(-1)
      abb16(7)=spak2l6**(-1)
      abb16(8)=spak2l5**(-1)
      abb16(9)=spbl6k2**(-1)
      abb16(10)=NC*c3
      abb16(10)=abb16(10)-c4
      abb16(11)=-spbk3k2*abb16(10)
      abb16(12)=TR*gW
      abb16(12)=CVDU*i_*spak1k7*abb16(3)*abb16(2)*abb16(1)*abb16(12)**2
      abb16(13)=abb16(12)*abb16(4)
      abb16(14)=abb16(13)*abb16(5)
      abb16(15)=-abb16(14)*abb16(11)
      abb16(16)=spbl6k3*spak3k4
      abb16(17)=abb16(16)*abb16(15)
      abb16(18)=spak1l5*spbk2k1
      abb16(19)=abb16(17)*abb16(18)
      abb16(12)=abb16(12)*abb16(5)
      abb16(20)=abb16(10)*abb16(12)
      abb16(21)=spbk3k2**2
      abb16(22)=-abb16(21)*abb16(20)
      abb16(23)=mB**2
      abb16(24)=abb16(23)*abb16(7)
      abb16(25)=abb16(24)*abb16(6)
      abb16(26)=abb16(25)*spak3k4
      abb16(27)=abb16(22)*abb16(26)
      abb16(14)=-abb16(14)*abb16(10)
      abb16(21)=-abb16(21)*abb16(14)
      abb16(28)=abb16(26)*es712
      abb16(29)=abb16(28)*abb16(21)
      abb16(10)=-abb16(13)*abb16(10)
      abb16(13)=-spbk3k2*abb16(10)
      abb16(30)=abb16(13)*abb16(16)
      abb16(31)=abb16(30)*spal5k7
      abb16(19)=abb16(19)+abb16(27)+abb16(29)-abb16(31)
      abb16(27)=16.0_ki*abb16(19)
      abb16(29)=abb16(15)*spbl6k2
      abb16(31)=3.0_ki*abb16(24)
      abb16(32)=-abb16(15)*abb16(31)
      abb16(32)=-abb16(29)+abb16(32)
      abb16(32)=es712*abb16(32)
      abb16(11)=-abb16(12)*abb16(11)
      abb16(12)=abb16(11)*spbl6k2
      abb16(23)=abb16(23)*abb16(6)
      abb16(33)=abb16(23)*abb16(12)
      abb16(34)=abb16(23)*es712
      abb16(35)=-abb16(29)*abb16(34)
      abb16(33)=abb16(33)+abb16(35)
      abb16(33)=abb16(8)*abb16(33)
      abb16(35)=abb16(14)*spbl6k2
      abb16(36)=abb16(35)*abb16(18)
      abb16(37)=abb16(10)*spal5k7
      abb16(38)=abb16(37)*spbl6k2
      abb16(36)=abb16(36)-abb16(38)
      abb16(38)=-spbl5k3*abb16(36)
      abb16(39)=abb16(18)*abb16(14)
      abb16(37)=abb16(37)-abb16(39)
      abb16(39)=abb16(37)*spbl6k3
      abb16(40)=spbl5k2*abb16(39)
      abb16(41)=abb16(10)*spbl6k2
      abb16(42)=-spak4k7*abb16(41)
      abb16(43)=abb16(35)*spbk2k1
      abb16(44)=spak1k4*abb16(43)
      abb16(42)=abb16(42)+abb16(44)
      abb16(42)=spbk4k3*abb16(42)
      abb16(44)=abb16(11)*abb16(31)
      abb16(45)=abb16(41)*spal6k7
      abb16(46)=spbl6k3*abb16(45)
      abb16(47)=spbk2k1*spbl6k3
      abb16(48)=-spak1l6*abb16(47)*abb16(35)
      abb16(32)=abb16(42)+abb16(48)-2.0_ki*abb16(40)+abb16(46)+abb16(38)+abb16(&
      &33)+abb16(32)+abb16(12)+abb16(44)
      abb16(32)=spak4l5*abb16(32)
      abb16(33)=spbl6k3*abb16(36)
      abb16(12)=abb16(25)*abb16(12)
      abb16(38)=abb16(25)*es712
      abb16(29)=-abb16(38)*abb16(29)
      abb16(12)=abb16(12)+abb16(29)+abb16(33)
      abb16(12)=spak4l6*abb16(12)
      abb16(29)=abb16(13)*spak4k7
      abb16(33)=abb16(15)*spbk2k1
      abb16(40)=abb16(33)*spak1k4
      abb16(29)=abb16(29)-abb16(40)
      abb16(40)=-spak2l5*spbl6k2*abb16(29)
      abb16(12)=abb16(40)+abb16(12)
      abb16(12)=-abb16(19)+2.0_ki*abb16(12)+abb16(32)
      abb16(12)=4.0_ki*abb16(12)
      abb16(19)=16.0_ki*abb16(25)
      abb16(32)=-abb16(29)*abb16(19)
      abb16(40)=8.0_ki*spak2l5
      abb16(42)=spak3k4*abb16(40)*spbl6k2
      abb16(44)=-abb16(13)*abb16(42)
      abb16(46)=16.0_ki*abb16(26)
      abb16(48)=-abb16(13)*abb16(46)
      abb16(17)=abb16(17)*es712
      abb16(49)=abb16(11)*abb16(16)
      abb16(17)=abb16(17)-abb16(49)
      abb16(49)=-abb16(25)*abb16(17)
      abb16(50)=spak3k4*spbl6k3**2
      abb16(51)=-abb16(50)*abb16(37)
      abb16(49)=abb16(51)+abb16(49)
      abb16(49)=8.0_ki*abb16(49)
      abb16(21)=abb16(21)*es712
      abb16(21)=abb16(21)+abb16(22)
      abb16(22)=abb16(24)*abb16(9)
      abb16(24)=abb16(23)*abb16(8)
      abb16(22)=abb16(24)+abb16(22)+1.0_ki
      abb16(21)=-abb16(22)*abb16(21)*spak3k4
      abb16(24)=abb16(13)*spal5k7
      abb16(18)=abb16(15)*abb16(18)
      abb16(18)=-abb16(24)+abb16(18)
      abb16(18)=spbl5k3*spak3k4*abb16(18)
      abb16(24)=-spal6k7*abb16(30)
      abb16(30)=spak1l6*abb16(16)*abb16(33)
      abb16(18)=abb16(30)+abb16(24)+abb16(18)+abb16(21)
      abb16(18)=4.0_ki*abb16(18)
      abb16(21)=8.0_ki*abb16(29)
      abb16(24)=4.0_ki*abb16(29)
      abb16(29)=8.0_ki*spak3k4
      abb16(30)=abb16(13)*abb16(29)
      abb16(16)=-abb16(16)*abb16(37)
      abb16(26)=abb16(11)*abb16(26)
      abb16(28)=-abb16(15)*abb16(28)
      abb16(26)=abb16(26)+abb16(28)
      abb16(16)=2.0_ki*abb16(26)+abb16(16)
      abb16(16)=spbl5k3*abb16(16)
      abb16(17)=-abb16(17)*abb16(22)
      abb16(22)=spal6k7*abb16(10)
      abb16(26)=abb16(14)*spbk2k1
      abb16(28)=-spak1l6*abb16(26)
      abb16(22)=abb16(28)+abb16(22)
      abb16(22)=abb16(50)*abb16(22)
      abb16(16)=abb16(16)+abb16(22)+abb16(17)
      abb16(16)=4.0_ki*abb16(16)
      abb16(17)=abb16(14)*spak1k4
      abb16(22)=abb16(17)*abb16(47)
      abb16(28)=abb16(10)*spak4k7
      abb16(50)=abb16(28)*spbl6k3
      abb16(22)=abb16(22)-abb16(50)
      abb16(50)=8.0_ki*abb16(22)
      abb16(22)=-4.0_ki*abb16(22)
      abb16(51)=16.0_ki*abb16(36)
      abb16(36)=-4.0_ki*abb16(36)
      abb16(41)=abb16(41)*abb16(40)
      abb16(52)=abb16(10)*abb16(19)
      abb16(53)=-abb16(20)*spbl6k2
      abb16(54)=-abb16(25)*abb16(53)
      abb16(55)=abb16(35)*abb16(38)
      abb16(54)=abb16(54)+abb16(55)
      abb16(54)=8.0_ki*abb16(54)
      abb16(55)=-spbl5k2*abb16(37)
      abb16(17)=abb16(17)*spbk2k1
      abb16(17)=abb16(17)-abb16(28)
      abb16(28)=-spbk4k2*abb16(17)
      abb16(56)=spak1l6*abb16(43)
      abb16(13)=-spak3k7*abb16(13)
      abb16(57)=spak1k3*abb16(33)
      abb16(13)=abb16(57)+abb16(28)+abb16(13)+abb16(56)-abb16(45)+abb16(55)
      abb16(13)=4.0_ki*abb16(13)
      abb16(28)=-8.0_ki*abb16(10)
      abb16(45)=abb16(14)*abb16(31)
      abb16(45)=abb16(35)+abb16(45)
      abb16(45)=es712*abb16(45)
      abb16(23)=-abb16(23)*abb16(53)
      abb16(34)=abb16(35)*abb16(34)
      abb16(23)=abb16(23)+abb16(34)
      abb16(23)=abb16(8)*abb16(23)
      abb16(34)=spbl6l5*abb16(37)
      abb16(17)=-spbl6k4*abb16(17)
      abb16(20)=abb16(20)*abb16(31)
      abb16(10)=spak3k7*spbl6k3*abb16(10)
      abb16(14)=-spak1k3*abb16(14)*abb16(47)
      abb16(10)=abb16(14)+abb16(10)+abb16(17)-3.0_ki*abb16(34)+abb16(23)+abb16(&
      &45)-abb16(53)+abb16(20)
      abb16(10)=4.0_ki*abb16(10)
      abb16(11)=abb16(11)*abb16(25)
      abb16(14)=-abb16(15)*abb16(38)
      abb16(11)=abb16(11)+abb16(14)-abb16(39)
      abb16(11)=4.0_ki*abb16(11)
      abb16(14)=-abb16(33)*abb16(42)
      abb16(15)=-abb16(33)*abb16(46)
      abb16(17)=abb16(33)*abb16(29)
      abb16(20)=abb16(40)*abb16(43)
      abb16(19)=abb16(26)*abb16(19)
      abb16(23)=-8.0_ki*abb16(26)
      R2d16=0.0_ki
      rat2 = rat2 + R2d16
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='16' value='", &
          & R2d16, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd16h6
