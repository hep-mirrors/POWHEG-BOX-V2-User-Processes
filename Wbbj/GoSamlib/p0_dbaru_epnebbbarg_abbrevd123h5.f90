module     p0_dbaru_epnebbbarg_abbrevd123h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(51), public :: abb123
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
      abb123(6)=spbk7k2**(-1)
      abb123(7)=spak2l6**(-1)
      abb123(8)=spbl6k2**(-1)
      abb123(9)=NC*c1
      abb123(10)=abb123(9)-c4
      abb123(11)=abb123(4)*i_*CVDU*abb123(3)*abb123(2)
      abb123(12)=abb123(11)*abb123(1)
      abb123(13)=abb123(6)*abb123(12)
      abb123(14)=abb123(13)*spak1l6
      abb123(15)=abb123(10)*abb123(14)
      abb123(16)=spbk3k2**2
      abb123(17)=abb123(15)*abb123(16)
      abb123(18)=spbl5k2*abb123(8)
      abb123(19)=abb123(18)*abb123(7)
      abb123(20)=abb123(19)*spak3k4
      abb123(21)=TR*gW
      abb123(22)=abb123(21)*mB
      abb123(22)=abb123(22)**2
      abb123(23)=-abb123(20)*abb123(22)
      abb123(24)=abb123(22)*abb123(5)
      abb123(25)=-spak3k4*abb123(24)
      abb123(23)=abb123(23)+abb123(25)
      abb123(23)=spak2k7*abb123(17)*abb123(23)
      abb123(25)=abb123(16)*abb123(9)
      abb123(26)=abb123(24)*abb123(13)
      abb123(27)=abb123(25)*abb123(26)
      abb123(28)=abb123(26)*c4
      abb123(29)=abb123(28)*abb123(16)
      abb123(27)=abb123(29)-abb123(27)
      abb123(29)=spak1k7*es12
      abb123(30)=spak3k4*abb123(8)
      abb123(31)=abb123(29)*abb123(30)
      abb123(32)=abb123(31)*abb123(27)
      abb123(33)=abb123(27)*spak1k2
      abb123(34)=spal6k7*spak3k4
      abb123(35)=abb123(33)*abb123(34)
      abb123(32)=abb123(23)+abb123(32)+abb123(35)
      abb123(21)=abb123(21)**2
      abb123(17)=abb123(21)*abb123(17)
      abb123(36)=abb123(17)*spak3k4
      abb123(37)=abb123(36)*spbl5k1
      abb123(38)=abb123(37)*spak1k7
      abb123(17)=abb123(17)*abb123(34)
      abb123(39)=abb123(17)*spbl6l5
      abb123(38)=abb123(32)+abb123(38)+abb123(39)
      abb123(40)=es712-es71
      abb123(41)=-abb123(38)*abb123(40)
      abb123(23)=abb123(23)+abb123(39)+abb123(35)
      abb123(23)=es12*abb123(23)
      abb123(35)=spak1k7*abb123(27)*es12**2*abb123(30)
      abb123(18)=abb123(18)*spak1k2
      abb123(39)=abb123(18)*spak3k4
      abb123(27)=abb123(39)*abb123(27)
      abb123(42)=abb123(27)*spal5k7
      abb123(43)=abb123(40)-es12
      abb123(44)=-abb123(43)*abb123(42)
      abb123(45)=abb123(29)*abb123(37)
      abb123(23)=abb123(44)+abb123(45)+abb123(35)+abb123(41)+abb123(23)
      abb123(23)=8.0_ki*abb123(23)
      abb123(35)=-abb123(42)-abb123(38)
      abb123(35)=16.0_ki*abb123(35)
      abb123(38)=abb123(10)*spbk3k2
      abb123(14)=-abb123(14)*abb123(38)
      abb123(41)=-abb123(22)*abb123(14)
      abb123(42)=abb123(41)*abb123(19)
      abb123(44)=-abb123(24)*abb123(14)
      abb123(42)=abb123(42)+abb123(44)
      abb123(40)=abb123(40)*abb123(42)
      abb123(29)=abb123(29)*abb123(8)
      abb123(45)=spal6k7*spak1k2
      abb123(29)=abb123(29)+abb123(45)
      abb123(12)=abb123(24)*abb123(12)
      abb123(45)=abb123(12)*abb123(38)
      abb123(46)=abb123(45)*abb123(29)
      abb123(47)=es12*abb123(42)
      abb123(40)=abb123(40)-abb123(46)-abb123(47)
      abb123(46)=2.0_ki*spak4k7
      abb123(47)=-abb123(46)*abb123(40)
      abb123(48)=abb123(21)*spak1l6*abb123(1)
      abb123(49)=-abb123(48)*abb123(11)*abb123(38)
      abb123(50)=abb123(49)*abb123(46)
      abb123(51)=abb123(50)*spal6k7
      abb123(17)=abb123(51)-abb123(17)
      abb123(17)=abb123(17)*spbl6l5
      abb123(50)=abb123(50)-abb123(36)
      abb123(51)=spbl5k1*spak1k7
      abb123(50)=abb123(50)*abb123(51)
      abb123(45)=abb123(45)*abb123(18)
      abb123(46)=abb123(45)*abb123(46)
      abb123(27)=abb123(46)-abb123(27)
      abb123(27)=abb123(27)*spal5k7
      abb123(17)=abb123(50)+abb123(17)+abb123(27)-abb123(32)+abb123(47)
      abb123(27)=8.0_ki*abb123(17)
      abb123(17)=-4.0_ki*abb123(17)
      abb123(32)=spbl6l5*spal6k7
      abb123(32)=abb123(32)+abb123(51)
      abb123(46)=abb123(49)*abb123(32)
      abb123(45)=spal5k7*abb123(45)
      abb123(40)=abb123(45)+abb123(46)-abb123(40)
      abb123(40)=spak2k4*abb123(40)
      abb123(45)=spal5k7*abb123(39)
      abb123(31)=abb123(45)+abb123(31)
      abb123(45)=abb123(26)*abb123(38)
      abb123(31)=abb123(45)*abb123(31)
      abb123(46)=abb123(45)*spak1k2
      abb123(14)=-abb123(21)*abb123(14)
      abb123(47)=abb123(14)*spbl6l5
      abb123(49)=abb123(46)-abb123(47)
      abb123(34)=abb123(34)*abb123(49)
      abb123(44)=abb123(44)*spak3k4
      abb123(20)=abb123(20)*abb123(41)
      abb123(20)=abb123(44)+abb123(20)
      abb123(41)=spak2k7*abb123(20)
      abb123(14)=abb123(14)*spbl5k1
      abb123(44)=abb123(14)*spak1k7
      abb123(50)=-spak3k4*abb123(44)
      abb123(31)=abb123(41)+abb123(50)+abb123(34)+abb123(31)
      abb123(31)=spbk7k3*abb123(31)
      abb123(16)=-abb123(16)*c4
      abb123(16)=abb123(16)+abb123(25)
      abb123(16)=abb123(39)*abb123(22)*abb123(13)*abb123(16)
      abb123(25)=abb123(30)*es12
      abb123(30)=abb123(33)*abb123(25)
      abb123(33)=-spak3k4*abb123(33)
      abb123(34)=-spbl6l5*abb123(36)
      abb123(33)=abb123(33)+abb123(34)
      abb123(33)=spak2l6*abb123(33)
      abb123(34)=spak1k2*abb123(37)
      abb123(16)=abb123(33)+abb123(31)+abb123(34)+abb123(16)+abb123(30)+abb123(&
      &40)
      abb123(16)=8.0_ki*abb123(16)
      abb123(30)=abb123(49)*spak4l6
      abb123(31)=es12*abb123(8)
      abb123(33)=abb123(31)*abb123(45)
      abb123(33)=abb123(33)-abb123(14)
      abb123(34)=abb123(33)*spak1k4
      abb123(36)=abb123(45)*abb123(18)
      abb123(37)=abb123(36)*spak4l5
      abb123(30)=-abb123(34)+abb123(37)+abb123(30)
      abb123(34)=16.0_ki*abb123(30)
      abb123(37)=-spak2k4*abb123(42)
      abb123(30)=abb123(37)+abb123(30)
      abb123(30)=8.0_ki*abb123(30)
      abb123(37)=-8.0_ki*spak3k4*abb123(49)
      abb123(40)=8.0_ki*spak2k4
      abb123(41)=abb123(49)*abb123(40)
      abb123(39)=-8.0_ki*abb123(45)*abb123(39)
      abb123(50)=abb123(36)*abb123(40)
      abb123(11)=abb123(32)*abb123(48)*abb123(11)*abb123(10)
      abb123(19)=abb123(19)*abb123(22)
      abb123(19)=abb123(19)+abb123(24)
      abb123(19)=abb123(15)*abb123(19)
      abb123(24)=abb123(19)*abb123(43)
      abb123(32)=spal5k7*abb123(18)
      abb123(32)=abb123(32)+abb123(29)
      abb123(10)=-abb123(32)*abb123(12)*abb123(10)
      abb123(10)=abb123(10)+abb123(24)+abb123(11)
      abb123(10)=8.0_ki*abb123(10)
      abb123(11)=16.0_ki*abb123(19)
      abb123(9)=abb123(26)*abb123(9)
      abb123(9)=abb123(9)-abb123(28)
      abb123(12)=spak1k2*abb123(9)
      abb123(15)=abb123(15)*abb123(21)
      abb123(19)=-spbl6l5*abb123(15)
      abb123(12)=abb123(12)+abb123(19)
      abb123(12)=8.0_ki*abb123(12)
      abb123(19)=8.0_ki*abb123(9)*abb123(18)
      abb123(21)=abb123(42)*spak2k7
      abb123(24)=abb123(29)*abb123(45)
      abb123(26)=abb123(47)*spal6k7
      abb123(28)=abb123(36)*spal5k7
      abb123(21)=-abb123(44)-abb123(26)+abb123(21)+abb123(28)+abb123(24)
      abb123(24)=-8.0_ki*abb123(21)
      abb123(21)=4.0_ki*abb123(21)
      abb123(13)=-abb123(18)*abb123(22)*abb123(13)*abb123(38)
      abb123(18)=-spak2l6*abb123(49)
      abb123(22)=abb123(46)*abb123(31)
      abb123(26)=-spak1k2*abb123(14)
      abb123(13)=abb123(18)+abb123(26)+abb123(13)+abb123(22)
      abb123(13)=16.0_ki*abb123(13)
      abb123(18)=-8.0_ki*abb123(20)
      abb123(20)=-abb123(45)*abb123(25)
      abb123(14)=spak3k4*abb123(14)
      abb123(14)=abb123(20)+abb123(14)
      abb123(14)=8.0_ki*abb123(14)
      abb123(20)=abb123(33)*abb123(40)
      abb123(9)=abb123(9)*abb123(31)
      abb123(15)=-spbl5k1*abb123(15)
      abb123(9)=abb123(9)+abb123(15)
      abb123(9)=8.0_ki*abb123(9)
      R2d123=0.0_ki
      rat2 = rat2 + R2d123
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='123' value='", &
          & R2d123, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd123h5
