module     p0_dbaru_epnebbbarg_abbrevd98h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(54), public :: abb98
   complex(ki), public :: R2d98
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
      abb98(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb98(2)=1.0_ki/(es34+es567-es12-es234)
      abb98(3)=1.0_ki/(mB**2-es67-es56+es567)
      abb98(4)=NC**(-1)
      abb98(5)=sqrt2**(-1)
      abb98(6)=spbk7k2**(-1)
      abb98(7)=spak2l6**(-1)
      abb98(8)=spak2l5**(-1)
      abb98(9)=sqrt(mB**2)
      abb98(10)=TR*gW
      abb98(10)=abb98(10)**2*CVDU*i_*spak1k4*abb98(5)*abb98(3)*abb98(2)*abb98(1)
      abb98(11)=abb98(10)*mB*abb98(6)
      abb98(12)=abb98(11)*abb98(8)
      abb98(13)=abb98(12)*spbk4k3
      abb98(14)=spbl6k2*c1
      abb98(15)=abb98(13)*abb98(14)
      abb98(16)=2.0_ki*abb98(4)
      abb98(17)=abb98(15)*abb98(16)
      abb98(18)=c2*abb98(4)**2
      abb98(19)=abb98(18)*spbl6k2
      abb98(20)=abb98(19)*abb98(13)
      abb98(17)=abb98(17)-abb98(20)
      abb98(20)=-spbl5k2*abb98(17)
      abb98(21)=NC*spbl5k2
      abb98(22)=abb98(21)*abb98(15)
      abb98(20)=abb98(22)+abb98(20)
      abb98(22)=-es12+es712-es71
      abb98(23)=abb98(20)*abb98(22)
      abb98(24)=abb98(16)-NC
      abb98(25)=abb98(11)*c1
      abb98(26)=-abb98(25)*abb98(24)
      abb98(27)=-spbl6k2*abb98(26)
      abb98(28)=abb98(11)*abb98(19)
      abb98(27)=abb98(27)-abb98(28)
      abb98(28)=spbl5k2**2
      abb98(29)=abb98(28)*spbk4k3
      abb98(30)=abb98(29)*abb98(27)
      abb98(31)=abb98(10)*spbl6k2
      abb98(32)=c1*abb98(6)
      abb98(33)=-abb98(24)*abb98(31)*abb98(32)
      abb98(34)=abb98(18)*abb98(6)
      abb98(31)=abb98(34)*abb98(31)
      abb98(31)=abb98(33)+abb98(31)
      abb98(33)=abb98(31)*abb98(29)
      abb98(35)=abb98(9)*abb98(33)
      abb98(23)=abb98(23)+abb98(35)+abb98(30)
      abb98(23)=spak4l5*abb98(23)
      abb98(12)=abb98(12)*spbk3k1
      abb98(14)=abb98(12)*abb98(14)
      abb98(30)=abb98(14)*abb98(16)
      abb98(19)=abb98(19)*abb98(12)
      abb98(19)=abb98(30)-abb98(19)
      abb98(30)=-spbl5k2*abb98(19)
      abb98(35)=abb98(21)*abb98(14)
      abb98(30)=abb98(35)+abb98(30)
      abb98(35)=abb98(30)*abb98(22)
      abb98(36)=abb98(28)*spbk3k1
      abb98(37)=abb98(36)*abb98(27)
      abb98(38)=abb98(31)*abb98(36)
      abb98(39)=abb98(9)*abb98(38)
      abb98(35)=abb98(35)+abb98(39)+abb98(37)
      abb98(35)=spak1l5*abb98(35)
      abb98(23)=abb98(35)+abb98(23)
      abb98(23)=spak2k7*abb98(23)
      abb98(35)=spbk4k3*spbl5k2
      abb98(37)=-abb98(35)*abb98(27)
      abb98(39)=abb98(35)*abb98(31)
      abb98(40)=abb98(39)*abb98(9)
      abb98(37)=abb98(37)-abb98(40)
      abb98(15)=abb98(15)*NC
      abb98(15)=-abb98(15)+abb98(17)
      abb98(17)=abb98(15)*es71
      abb98(41)=-abb98(37)+2.0_ki*abb98(17)
      abb98(42)=abb98(15)*es12
      abb98(15)=abb98(15)*es712
      abb98(43)=abb98(42)-2.0_ki*abb98(15)+abb98(41)
      abb98(43)=es12*abb98(43)
      abb98(44)=abb98(17)-abb98(37)
      abb98(44)=es71*abb98(44)
      abb98(41)=abb98(15)-abb98(41)
      abb98(41)=es712*abb98(41)
      abb98(41)=abb98(43)+abb98(44)+abb98(41)
      abb98(41)=spak4k7*abb98(41)
      abb98(43)=spbk3k1*spbl5k2
      abb98(27)=-abb98(43)*abb98(27)
      abb98(31)=abb98(43)*abb98(31)
      abb98(44)=abb98(31)*abb98(9)
      abb98(27)=abb98(27)-abb98(44)
      abb98(14)=abb98(14)*NC
      abb98(14)=-abb98(14)+abb98(19)
      abb98(19)=abb98(14)*es71
      abb98(45)=-abb98(27)+2.0_ki*abb98(19)
      abb98(46)=abb98(14)*es12
      abb98(14)=abb98(14)*es712
      abb98(47)=abb98(46)-2.0_ki*abb98(14)+abb98(45)
      abb98(47)=es12*abb98(47)
      abb98(48)=abb98(19)-abb98(27)
      abb98(48)=es71*abb98(48)
      abb98(45)=abb98(14)-abb98(45)
      abb98(45)=es712*abb98(45)
      abb98(45)=abb98(47)+abb98(48)+abb98(45)
      abb98(45)=spak1k7*abb98(45)
      abb98(29)=-abb98(29)*abb98(26)
      abb98(47)=abb98(28)*abb98(18)
      abb98(48)=abb98(11)*spbk4k3
      abb98(49)=abb98(47)*abb98(48)
      abb98(29)=abb98(29)-abb98(49)
      abb98(49)=spal5k7*abb98(7)
      abb98(50)=-abb98(22)*abb98(49)
      abb98(51)=-abb98(29)*abb98(50)
      abb98(52)=spal5k7*abb98(9)
      abb98(33)=abb98(33)*abb98(52)
      abb98(33)=abb98(33)+abb98(51)
      abb98(33)=spak2k4*abb98(33)
      abb98(36)=-abb98(36)*abb98(26)
      abb98(51)=abb98(11)*spbk3k1
      abb98(47)=abb98(47)*abb98(51)
      abb98(36)=abb98(36)-abb98(47)
      abb98(47)=abb98(36)*abb98(50)
      abb98(38)=-abb98(38)*abb98(52)
      abb98(38)=abb98(38)+abb98(47)
      abb98(38)=spak1k2*abb98(38)
      abb98(47)=spbk4k3*abb98(26)
      abb98(50)=abb98(48)*abb98(18)
      abb98(47)=abb98(50)+abb98(47)
      abb98(50)=abb98(49)*spak2k4
      abb98(47)=abb98(50)*abb98(47)
      abb98(53)=-spbk3k1*abb98(26)
      abb98(54)=-abb98(51)*abb98(18)
      abb98(53)=abb98(54)+abb98(53)
      abb98(54)=abb98(49)*spak1k2
      abb98(53)=abb98(54)*abb98(53)
      abb98(47)=abb98(47)+abb98(53)
      abb98(47)=spak2l5*abb98(47)*spbl5k2**3
      abb98(23)=abb98(47)+abb98(38)+abb98(33)+abb98(41)+abb98(45)+abb98(23)
      abb98(23)=8.0_ki*abb98(23)
      abb98(15)=abb98(17)+abb98(42)-abb98(15)
      abb98(17)=abb98(15)+abb98(40)
      abb98(33)=-spak4k7*abb98(17)
      abb98(14)=abb98(19)+abb98(46)-abb98(14)
      abb98(19)=abb98(14)+abb98(44)
      abb98(38)=-spak1k7*abb98(19)
      abb98(33)=abb98(33)+abb98(38)
      abb98(33)=16.0_ki*abb98(33)
      abb98(20)=abb98(20)*spak2k7
      abb98(38)=spak4l5*abb98(20)
      abb98(29)=abb98(29)*abb98(50)
      abb98(30)=abb98(30)*spak2k7
      abb98(40)=spak1l5*abb98(30)
      abb98(36)=-abb98(36)*abb98(54)
      abb98(29)=abb98(36)+abb98(40)+abb98(38)+abb98(29)
      abb98(29)=16.0_ki*abb98(29)
      abb98(36)=abb98(10)*abb98(8)
      abb98(38)=spbl5k2*abb98(36)*mB**3
      abb98(40)=abb98(38)*abb98(32)
      abb98(25)=abb98(28)*abb98(25)
      abb98(25)=abb98(40)+abb98(25)
      abb98(24)=-abb98(25)*abb98(24)
      abb98(11)=abb98(28)*abb98(11)
      abb98(25)=abb98(38)*abb98(6)
      abb98(11)=abb98(11)+abb98(25)
      abb98(11)=abb98(11)*abb98(18)
      abb98(11)=abb98(11)+abb98(24)
      abb98(24)=-abb98(50)*spbk4k3
      abb98(25)=abb98(54)*spbk3k1
      abb98(24)=abb98(24)+abb98(25)
      abb98(11)=16.0_ki*abb98(11)*abb98(24)
      abb98(17)=-spak4l5*abb98(17)
      abb98(19)=-spak1l5*abb98(19)
      abb98(24)=abb98(10)*spbk4k3
      abb98(25)=abb98(50)*abb98(24)
      abb98(10)=abb98(10)*spbk3k1
      abb98(28)=-abb98(54)*abb98(10)
      abb98(25)=abb98(28)+abb98(25)
      abb98(28)=abb98(21)*c1
      abb98(38)=abb98(18)*spbl5k2
      abb98(28)=abb98(28)+abb98(38)
      abb98(40)=abb98(16)*c1
      abb98(41)=abb98(40)*spbl5k2
      abb98(41)=abb98(41)-abb98(28)
      abb98(25)=abb98(25)*abb98(41)*mB
      abb98(17)=abb98(19)+abb98(17)+abb98(25)
      abb98(17)=8.0_ki*abb98(17)
      abb98(19)=NC*c1
      abb98(18)=abb98(19)+abb98(18)
      abb98(19)=abb98(13)*abb98(18)
      abb98(25)=abb98(40)*abb98(13)
      abb98(19)=abb98(19)-abb98(25)
      abb98(19)=-abb98(19)*abb98(22)
      abb98(16)=abb98(16)*abb98(32)
      abb98(41)=abb98(16)*spbl5k2
      abb98(21)=abb98(21)*abb98(32)
      abb98(42)=abb98(38)*abb98(6)
      abb98(21)=-abb98(42)+abb98(41)-abb98(21)
      abb98(24)=-abb98(24)*abb98(21)
      abb98(41)=abb98(24)*abb98(9)
      abb98(19)=-abb98(41)+abb98(19)
      abb98(41)=-spak4l5*abb98(19)
      abb98(18)=abb98(12)*abb98(18)
      abb98(40)=abb98(40)*abb98(12)
      abb98(18)=abb98(18)-abb98(40)
      abb98(18)=abb98(18)*abb98(22)
      abb98(10)=-abb98(10)*abb98(21)
      abb98(21)=abb98(10)*abb98(9)
      abb98(18)=abb98(21)+abb98(18)
      abb98(21)=spak1l5*abb98(18)
      abb98(21)=abb98(41)+abb98(21)
      abb98(21)=spbl6l5*abb98(21)
      abb98(41)=spak4k7*abb98(19)
      abb98(42)=-spak1k7*abb98(18)
      abb98(41)=abb98(41)+abb98(42)
      abb98(41)=spbk7l6*abb98(41)
      abb98(32)=abb98(32)*NC
      abb98(16)=abb98(34)+abb98(32)-abb98(16)
      abb98(16)=abb98(16)*abb98(36)*mB**2
      abb98(32)=abb98(7)*abb98(9)
      abb98(22)=-abb98(16)*abb98(22)*abb98(32)
      abb98(34)=spbk4k3*abb98(22)
      abb98(36)=abb98(35)*abb98(26)
      abb98(42)=abb98(38)*abb98(48)
      abb98(36)=abb98(42)+abb98(36)
      abb98(42)=abb98(7)*abb98(9)**2
      abb98(44)=-abb98(36)*abb98(42)
      abb98(34)=abb98(44)+abb98(34)
      abb98(34)=spak2k4*abb98(34)
      abb98(22)=-spbk3k1*abb98(22)
      abb98(26)=-abb98(43)*abb98(26)
      abb98(38)=abb98(38)*abb98(51)
      abb98(26)=abb98(26)-abb98(38)
      abb98(38)=-abb98(26)*abb98(42)
      abb98(22)=abb98(38)+abb98(22)
      abb98(22)=spak1k2*abb98(22)
      abb98(38)=abb98(36)*abb98(50)
      abb98(42)=abb98(26)*abb98(54)
      abb98(38)=abb98(38)+abb98(42)
      abb98(38)=spbk7l5*abb98(38)
      abb98(21)=abb98(38)+abb98(41)+abb98(21)+abb98(34)+abb98(22)
      abb98(21)=8.0_ki*abb98(21)
      abb98(20)=spak4k7*abb98(20)
      abb98(22)=spak1k7*abb98(30)
      abb98(20)=abb98(20)+abb98(22)
      abb98(20)=8.0_ki*abb98(20)
      abb98(13)=abb98(13)*abb98(28)
      abb98(22)=abb98(25)*spbl5k2
      abb98(13)=-abb98(22)+abb98(13)
      abb98(13)=abb98(13)*spak2k7
      abb98(22)=-spak4l5*abb98(13)
      abb98(12)=abb98(12)*abb98(28)
      abb98(25)=abb98(40)*spbl5k2
      abb98(12)=-abb98(25)+abb98(12)
      abb98(12)=abb98(12)*spak2k7
      abb98(25)=-spak1l5*abb98(12)
      abb98(22)=abb98(22)+abb98(25)
      abb98(22)=spbl6l5*abb98(22)
      abb98(25)=spak4k7*abb98(13)
      abb98(28)=spak1k7*abb98(12)
      abb98(25)=abb98(25)+abb98(28)
      abb98(25)=spbk7l6*abb98(25)
      abb98(28)=spak2k4*abb98(35)
      abb98(30)=-spak1k2*abb98(43)
      abb98(28)=abb98(28)+abb98(30)
      abb98(16)=abb98(32)*spak2k7*abb98(16)*abb98(28)
      abb98(16)=abb98(25)+abb98(22)+abb98(16)
      abb98(16)=8.0_ki*abb98(16)
      abb98(22)=8.0_ki*abb98(52)
      abb98(25)=-abb98(39)*abb98(22)
      abb98(28)=abb98(36)*abb98(49)
      abb98(30)=32.0_ki*abb98(28)
      abb98(15)=abb98(37)-abb98(15)
      abb98(15)=spak2k7*abb98(15)
      abb98(32)=abb98(52)*spbl6l5
      abb98(24)=abb98(24)*abb98(32)
      abb98(15)=abb98(24)+abb98(15)
      abb98(15)=8.0_ki*abb98(15)
      abb98(19)=-8.0_ki*abb98(19)
      abb98(13)=-8.0_ki*abb98(13)
      abb98(24)=-16.0_ki*abb98(28)
      abb98(22)=-abb98(31)*abb98(22)
      abb98(26)=abb98(26)*abb98(49)
      abb98(28)=-32.0_ki*abb98(26)
      abb98(14)=abb98(27)-abb98(14)
      abb98(14)=spak2k7*abb98(14)
      abb98(10)=abb98(10)*abb98(32)
      abb98(10)=abb98(10)+abb98(14)
      abb98(10)=8.0_ki*abb98(10)
      abb98(14)=8.0_ki*abb98(18)
      abb98(12)=-8.0_ki*abb98(12)
      abb98(18)=16.0_ki*abb98(26)
      R2d98=0.0_ki
      rat2 = rat2 + R2d98
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='98' value='", &
          & R2d98, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd98h7