module     p0_dbaru_epnebbbarg_abbrevd43h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(48), public :: abb43
   complex(ki), public :: R2d43
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
      abb43(1)=1.0_ki/(-es71+es712-es12)
      abb43(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb43(3)=1.0_ki/(-es71+es56-es567+es234)
      abb43(4)=NC**(-1)
      abb43(5)=sqrt2**(-1)
      abb43(6)=es56**(-1)
      abb43(7)=spak2k7**(-1)
      abb43(8)=spak2l5**(-1)
      abb43(9)=spbl5k2**(-1)
      abb43(10)=spak2l6**(-1)
      abb43(11)=abb43(6)*abb43(7)*i_*CVDU*abb43(5)*abb43(3)*abb43(2)*abb43(1)
      abb43(12)=abb43(11)*spbk7k3
      abb43(13)=abb43(12)*spak1l5
      abb43(14)=TR*gW
      abb43(15)=abb43(14)**2
      abb43(16)=abb43(15)*abb43(13)
      abb43(17)=es712-es71
      abb43(18)=-abb43(17)*abb43(16)*c1
      abb43(19)=es12*c1
      abb43(20)=abb43(19)*abb43(16)
      abb43(18)=abb43(20)+abb43(18)
      abb43(18)=abb43(18)*NC
      abb43(20)=abb43(4)**2
      abb43(21)=abb43(20)-1.0_ki
      abb43(22)=abb43(21)*c4
      abb43(23)=c1*abb43(4)
      abb43(24)=abb43(22)-abb43(23)
      abb43(25)=-es712+es71+es12
      abb43(16)=abb43(25)*abb43(16)*abb43(24)
      abb43(16)=abb43(18)+abb43(16)
      abb43(18)=abb43(16)*spbl6k1
      abb43(14)=abb43(14)*mB
      abb43(14)=abb43(14)**2
      abb43(26)=abb43(14)*abb43(10)
      abb43(12)=abb43(12)*abb43(26)
      abb43(21)=c4*abb43(21)*abb43(12)
      abb43(12)=c1*abb43(12)
      abb43(27)=abb43(12)*abb43(4)
      abb43(21)=abb43(21)-abb43(27)
      abb43(27)=-abb43(21)*abb43(17)
      abb43(28)=es12*abb43(9)
      abb43(29)=-abb43(28)*abb43(27)
      abb43(30)=-abb43(12)*abb43(17)
      abb43(31)=-abb43(28)*abb43(30)
      abb43(32)=abb43(9)*es12**2
      abb43(33)=abb43(32)*abb43(12)
      abb43(31)=abb43(31)-abb43(33)
      abb43(31)=abb43(31)*NC
      abb43(33)=abb43(32)*abb43(21)
      abb43(18)=abb43(18)-abb43(33)+abb43(29)+abb43(31)
      abb43(29)=abb43(18)*spak1k4
      abb43(31)=-abb43(9)*abb43(17)
      abb43(31)=abb43(31)+abb43(28)
      abb43(33)=abb43(31)*spbl6k2
      abb43(13)=abb43(14)*abb43(13)
      abb43(34)=abb43(33)*abb43(13)*abb43(24)
      abb43(35)=NC*spbl6k2
      abb43(31)=c1*abb43(31)*abb43(35)
      abb43(13)=abb43(13)*abb43(31)
      abb43(13)=abb43(34)+abb43(13)
      abb43(13)=abb43(13)*abb43(8)
      abb43(25)=abb43(25)*spak1l5*abb43(21)
      abb43(34)=abb43(12)*es12
      abb43(34)=abb43(34)+abb43(30)
      abb43(34)=NC*abb43(34)*spak1l5
      abb43(13)=abb43(13)+abb43(34)+abb43(25)
      abb43(25)=abb43(13)*spak2k4
      abb43(34)=es12*abb43(21)
      abb43(34)=-abb43(27)-abb43(34)
      abb43(34)=spak1k2*abb43(34)
      abb43(16)=abb43(16)*spbl6l5
      abb43(36)=-spak1k2*abb43(30)
      abb43(12)=abb43(12)*spak1k2
      abb43(37)=abb43(12)*es12
      abb43(36)=abb43(36)-abb43(37)
      abb43(36)=abb43(36)*NC
      abb43(16)=-abb43(16)+abb43(36)+abb43(34)
      abb43(34)=abb43(16)*spak4l5
      abb43(36)=spak1k2*abb43(9)
      abb43(27)=abb43(36)*abb43(27)
      abb43(37)=abb43(28)*spak1k2
      abb43(21)=abb43(37)*abb43(21)
      abb43(21)=abb43(21)+abb43(27)
      abb43(21)=abb43(21)*spbl6k2
      abb43(27)=-abb43(36)*abb43(30)
      abb43(12)=abb43(12)*abb43(28)
      abb43(12)=abb43(27)-abb43(12)
      abb43(12)=abb43(12)*abb43(35)
      abb43(12)=abb43(21)-abb43(12)
      abb43(21)=abb43(12)*spak4l6
      abb43(21)=abb43(25)-abb43(21)-abb43(29)+abb43(34)
      abb43(25)=-4.0_ki*abb43(21)
      abb43(21)=8.0_ki*abb43(21)
      abb43(27)=8.0_ki*spak3k4
      abb43(12)=-abb43(12)*abb43(27)
      abb43(16)=abb43(16)*abb43(27)
      abb43(29)=abb43(11)*spak1l5
      abb43(15)=abb43(29)*abb43(15)
      abb43(30)=abb43(15)*abb43(24)
      abb43(34)=abb43(15)*c1
      abb43(38)=abb43(34)*NC
      abb43(38)=abb43(38)+abb43(30)
      abb43(39)=abb43(38)*spbl6l5
      abb43(26)=abb43(26)*abb43(11)
      abb43(20)=abb43(20)*abb43(26)
      abb43(40)=abb43(20)-abb43(26)
      abb43(40)=abb43(40)*c4
      abb43(23)=abb43(23)*abb43(26)
      abb43(40)=abb43(40)-abb43(23)
      abb43(41)=abb43(40)*spak1k2
      abb43(42)=abb43(26)*c1
      abb43(43)=abb43(42)*NC
      abb43(44)=abb43(43)*spak1k2
      abb43(39)=abb43(41)+abb43(39)+abb43(44)
      abb43(44)=spak2l5*abb43(39)
      abb43(45)=-abb43(40)*abb43(37)
      abb43(11)=abb43(11)*abb43(14)
      abb43(22)=abb43(22)*abb43(11)
      abb43(11)=c1*abb43(11)
      abb43(46)=-abb43(4)*abb43(11)
      abb43(22)=abb43(22)+abb43(46)
      abb43(46)=abb43(36)*spbl6k2
      abb43(22)=abb43(22)*abb43(46)
      abb43(47)=abb43(37)*abb43(42)
      abb43(11)=abb43(46)*abb43(11)
      abb43(11)=-abb43(47)+abb43(11)
      abb43(11)=NC*abb43(11)
      abb43(38)=abb43(38)*spbl6k1
      abb43(48)=spak1k2*abb43(38)
      abb43(11)=abb43(44)+abb43(48)+abb43(11)+abb43(45)+abb43(22)
      abb43(11)=32.0_ki*spbk7k2*abb43(11)
      abb43(22)=abb43(36)*abb43(17)
      abb43(22)=-abb43(37)+abb43(22)
      abb43(22)=spbl6k2*abb43(40)*abb43(22)
      abb43(37)=-abb43(42)*abb43(17)
      abb43(44)=-abb43(36)*abb43(37)
      abb43(44)=-abb43(47)+abb43(44)
      abb43(44)=abb43(44)*abb43(35)
      abb43(22)=abb43(22)+abb43(44)
      abb43(22)=8.0_ki*abb43(22)
      abb43(34)=-abb43(34)*abb43(17)
      abb43(15)=abb43(19)*abb43(15)
      abb43(15)=abb43(34)+abb43(15)
      abb43(15)=abb43(15)*NC
      abb43(34)=abb43(17)-es12
      abb43(30)=abb43(34)*abb43(30)
      abb43(15)=abb43(15)-abb43(30)
      abb43(30)=-spbl6l5*abb43(15)
      abb43(41)=abb43(41)*abb43(34)
      abb43(44)=-abb43(26)*abb43(19)
      abb43(44)=abb43(44)-abb43(37)
      abb43(44)=NC*spak1k2*abb43(44)
      abb43(30)=abb43(30)+abb43(44)+abb43(41)
      abb43(30)=8.0_ki*abb43(30)
      abb43(39)=spal5k7*abb43(39)
      abb43(41)=abb43(40)+abb43(43)
      abb43(41)=abb43(28)*abb43(41)
      abb43(38)=-abb43(38)+abb43(41)
      abb43(38)=spak1k7*abb43(38)
      abb43(41)=abb43(40)*abb43(46)
      abb43(35)=abb43(36)*abb43(42)*abb43(35)
      abb43(35)=abb43(41)+abb43(35)
      abb43(35)=spal6k7*abb43(35)
      abb43(35)=abb43(35)+abb43(39)+abb43(38)
      abb43(35)=2.0_ki*abb43(35)
      abb43(35)=spbk7k2*abb43(35)
      abb43(14)=abb43(29)*abb43(14)
      abb43(24)=abb43(33)*abb43(14)*abb43(24)
      abb43(14)=abb43(14)*abb43(31)
      abb43(14)=abb43(24)+abb43(14)
      abb43(14)=abb43(8)*abb43(14)
      abb43(20)=abb43(20)*spak1l5
      abb43(24)=abb43(26)*spak1l5
      abb43(20)=abb43(20)-abb43(24)
      abb43(20)=abb43(20)*c4
      abb43(23)=abb43(23)*spak1l5
      abb43(20)=abb43(20)-abb43(23)
      abb43(20)=-abb43(20)*abb43(34)
      abb43(23)=spak1l5*abb43(37)
      abb43(19)=abb43(19)*abb43(24)
      abb43(19)=abb43(19)+abb43(23)
      abb43(19)=NC*abb43(19)
      abb43(14)=abb43(14)+abb43(19)+abb43(35)+abb43(20)
      abb43(14)=8.0_ki*abb43(14)
      abb43(13)=-abb43(13)*abb43(27)
      abb43(15)=spbl6k1*abb43(15)
      abb43(17)=abb43(28)*abb43(17)
      abb43(17)=-abb43(32)+abb43(17)
      abb43(17)=abb43(40)*abb43(17)
      abb43(19)=-abb43(28)*abb43(37)
      abb43(20)=-abb43(32)*abb43(42)
      abb43(19)=abb43(20)+abb43(19)
      abb43(19)=NC*abb43(19)
      abb43(15)=abb43(15)+abb43(19)+abb43(17)
      abb43(15)=8.0_ki*abb43(15)
      abb43(17)=abb43(18)*abb43(27)
      R2d43=abb43(25)
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd43h2
