module     p0_dbaru_epnebbbarg_abbrevd308h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(55), public :: abb308
   complex(ki), public :: R2d308
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
      abb308(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb308(2)=1.0_ki/(es34+es567-es12-es234)
      abb308(3)=NC**(-1)
      abb308(4)=sqrt2**(-1)
      abb308(5)=spak2k7**(-1)
      abb308(6)=spbl5k2**(-1)
      abb308(7)=spak2l6**(-1)
      abb308(8)=spbl6k2**(-1)
      abb308(9)=sqrt(mB**2)
      abb308(10)=c2-c4
      abb308(11)=TR*gW
      abb308(11)=abb308(11)**2*CVDU*i_*spak1k4*abb308(5)*abb308(4)*abb308(2)*ab&
      &b308(1)
      abb308(12)=abb308(11)*spbk3k1
      abb308(13)=-abb308(10)*abb308(12)*spbk7l6
      abb308(14)=mB**2
      abb308(15)=abb308(14)*abb308(7)
      abb308(16)=-abb308(15)*abb308(13)
      abb308(17)=c1-c3
      abb308(18)=-abb308(17)*abb308(12)*abb308(3)
      abb308(19)=abb308(15)*spbk7l6
      abb308(20)=-abb308(19)*abb308(18)
      abb308(16)=abb308(20)+abb308(16)
      abb308(16)=abb308(16)*spak1l5
      abb308(11)=abb308(11)*spbk4k3
      abb308(20)=-abb308(10)*abb308(11)*spbk7l6
      abb308(21)=-abb308(15)*abb308(20)
      abb308(17)=-abb308(17)*abb308(11)*abb308(3)
      abb308(19)=-abb308(19)*abb308(17)
      abb308(19)=abb308(19)+abb308(21)
      abb308(19)=abb308(19)*spak4l5
      abb308(16)=abb308(16)+abb308(19)
      abb308(19)=-es712+2.0_ki*es71
      abb308(19)=abb308(19)*es712
      abb308(21)=es71**2
      abb308(19)=abb308(19)-abb308(21)
      abb308(21)=-abb308(16)*abb308(19)
      abb308(22)=es712-es71
      abb308(23)=-es12+2.0_ki*abb308(22)
      abb308(24)=-es12*abb308(16)*abb308(23)
      abb308(25)=-abb308(11)*abb308(10)
      abb308(25)=abb308(25)+abb308(17)
      abb308(26)=spbk7k2*abb308(6)
      abb308(27)=mB**4*abb308(26)*abb308(7)**2
      abb308(28)=-abb308(27)*abb308(25)
      abb308(29)=-abb308(28)*abb308(19)
      abb308(30)=-es12*abb308(28)*abb308(23)
      abb308(29)=abb308(30)+abb308(29)
      abb308(29)=spak2k4*abb308(29)
      abb308(30)=-abb308(12)*abb308(10)
      abb308(30)=abb308(30)+abb308(18)
      abb308(27)=-abb308(27)*abb308(30)
      abb308(31)=abb308(27)*abb308(19)
      abb308(32)=es12*abb308(27)*abb308(23)
      abb308(31)=abb308(32)+abb308(31)
      abb308(31)=spak1k2*abb308(31)
      abb308(21)=abb308(31)+abb308(29)+abb308(24)+abb308(21)
      abb308(21)=abb308(8)*abb308(21)
      abb308(11)=abb308(14)*abb308(11)
      abb308(24)=abb308(6)*abb308(7)
      abb308(29)=abb308(24)*spbk7l6
      abb308(31)=abb308(10)*abb308(29)*abb308(11)
      abb308(32)=abb308(29)*abb308(14)
      abb308(33)=-abb308(32)*abb308(17)
      abb308(31)=abb308(33)+abb308(31)
      abb308(33)=abb308(31)*abb308(19)
      abb308(34)=es12*abb308(31)*abb308(23)
      abb308(33)=abb308(34)+abb308(33)
      abb308(33)=spak4l6*abb308(33)
      abb308(12)=abb308(14)*abb308(12)
      abb308(29)=abb308(10)*abb308(29)*abb308(12)
      abb308(32)=-abb308(32)*abb308(18)
      abb308(29)=abb308(32)+abb308(29)
      abb308(19)=abb308(29)*abb308(19)
      abb308(23)=es12*abb308(29)*abb308(23)
      abb308(19)=abb308(23)+abb308(19)
      abb308(19)=spak1l6*abb308(19)
      abb308(19)=abb308(19)+abb308(33)+abb308(21)
      abb308(21)=-spbk7l6*abb308(18)
      abb308(13)=abb308(21)-abb308(13)
      abb308(21)=abb308(26)*mB
      abb308(23)=abb308(21)*abb308(13)
      abb308(32)=abb308(23)*spak1k7
      abb308(33)=-spbk7l6*abb308(17)
      abb308(20)=abb308(20)-abb308(33)
      abb308(33)=abb308(21)*abb308(20)
      abb308(34)=abb308(33)*spak4k7
      abb308(32)=abb308(32)-abb308(34)
      abb308(22)=abb308(22)-es12
      abb308(34)=2.0_ki*abb308(9)
      abb308(35)=-abb308(34)*abb308(22)*abb308(32)
      abb308(36)=-abb308(20)*spak4l5
      abb308(37)=abb308(13)*spak1l5
      abb308(36)=abb308(36)+abb308(37)
      abb308(37)=-abb308(22)*abb308(36)
      abb308(38)=spak2l6*spbl6k2
      abb308(39)=-abb308(37)*abb308(38)
      abb308(40)=abb308(30)*spak1l5
      abb308(41)=abb308(25)*spak4l5
      abb308(40)=abb308(40)+abb308(41)
      abb308(41)=-abb308(40)*spbk7l6**2
      abb308(42)=2.0_ki*spal6k7
      abb308(42)=abb308(42)*abb308(41)
      abb308(43)=-abb308(22)*abb308(42)
      abb308(19)=abb308(43)+2.0_ki*abb308(19)+abb308(39)+abb308(35)
      abb308(19)=4.0_ki*abb308(19)
      abb308(26)=abb308(15)*abb308(26)
      abb308(35)=-abb308(26)*abb308(30)
      abb308(39)=-abb308(35)*abb308(22)
      abb308(43)=abb308(39)*spak1k2
      abb308(26)=-abb308(26)*abb308(25)
      abb308(44)=-abb308(26)*abb308(22)
      abb308(45)=abb308(44)*spak2k4
      abb308(43)=abb308(43)-abb308(45)
      abb308(45)=abb308(37)-abb308(43)
      abb308(46)=abb308(38)*abb308(36)
      abb308(45)=2.0_ki*abb308(45)-abb308(46)
      abb308(45)=8.0_ki*abb308(45)
      abb308(37)=-8.0_ki*abb308(37)
      abb308(47)=-abb308(22)*spak4l6
      abb308(31)=abb308(31)*abb308(47)
      abb308(48)=-abb308(22)*spak1l6
      abb308(29)=abb308(29)*abb308(48)
      abb308(29)=abb308(31)+abb308(29)
      abb308(27)=abb308(27)*spak1k2
      abb308(28)=abb308(28)*spak2k4
      abb308(27)=abb308(27)-abb308(28)
      abb308(16)=-2.0_ki*abb308(16)+3.0_ki*abb308(27)
      abb308(16)=-abb308(8)*abb308(22)*abb308(16)
      abb308(28)=-abb308(34)*abb308(32)
      abb308(16)=-abb308(42)-abb308(46)+abb308(16)+abb308(28)+2.0_ki*abb308(29)
      abb308(16)=8.0_ki*abb308(16)
      abb308(28)=abb308(26)*spak2k4
      abb308(29)=abb308(35)*spak1k2
      abb308(28)=abb308(28)-abb308(29)
      abb308(29)=abb308(28)+abb308(36)
      abb308(31)=-32.0_ki*abb308(29)
      abb308(32)=16.0_ki*abb308(36)
      abb308(27)=-16.0_ki*abb308(8)*abb308(27)
      abb308(38)=-abb308(38)+abb308(22)
      abb308(38)=abb308(36)*abb308(38)
      abb308(38)=abb308(38)+abb308(43)
      abb308(38)=4.0_ki*abb308(38)
      abb308(29)=8.0_ki*abb308(29)
      abb308(33)=spak2k4*abb308(33)
      abb308(23)=spak1k2*abb308(23)
      abb308(23)=abb308(33)+abb308(23)
      abb308(23)=abb308(9)*abb308(23)
      abb308(33)=-spak2l6*abb308(41)
      abb308(23)=abb308(33)+abb308(23)
      abb308(23)=8.0_ki*abb308(23)
      abb308(33)=-abb308(21)*abb308(25)
      abb308(41)=4.0_ki*abb308(9)
      abb308(41)=-abb308(22)*abb308(41)
      abb308(42)=-abb308(33)*abb308(41)
      abb308(33)=abb308(33)*abb308(9)
      abb308(43)=8.0_ki*abb308(33)
      abb308(46)=spbl6k2**2
      abb308(49)=abb308(25)*abb308(46)
      abb308(50)=spak4l6*abb308(49)
      abb308(46)=abb308(30)*abb308(46)
      abb308(51)=spak1l6*abb308(46)
      abb308(52)=abb308(15)*spbk7k2
      abb308(53)=abb308(52)*abb308(25)
      abb308(54)=-spak4k7*abb308(53)
      abb308(52)=-abb308(52)*abb308(30)
      abb308(55)=spak1k7*abb308(52)
      abb308(50)=abb308(55)+abb308(54)+abb308(50)+abb308(51)
      abb308(50)=spak2l5*abb308(50)
      abb308(51)=-spak4l6*abb308(20)
      abb308(54)=spak1l6*abb308(13)
      abb308(51)=abb308(54)+abb308(51)
      abb308(51)=spbl6k2*abb308(51)
      abb308(54)=spak2k4*abb308(53)
      abb308(55)=spak1k2*abb308(52)
      abb308(51)=abb308(54)+abb308(55)+abb308(51)
      abb308(51)=spal5k7*abb308(51)
      abb308(20)=spak4k7*abb308(20)
      abb308(13)=-spak1k7*abb308(13)
      abb308(13)=abb308(13)+abb308(20)
      abb308(13)=spbl6k2*abb308(13)
      abb308(20)=-spak2k4*abb308(49)
      abb308(46)=spak1k2*abb308(46)
      abb308(13)=abb308(20)+abb308(46)+abb308(13)
      abb308(13)=spal5l6*abb308(13)
      abb308(20)=spbl6k2*abb308(33)
      abb308(20)=abb308(20)+abb308(44)
      abb308(20)=spak4k7*abb308(20)
      abb308(21)=-abb308(21)*abb308(30)
      abb308(33)=abb308(21)*abb308(9)
      abb308(46)=spbl6k2*abb308(33)
      abb308(46)=abb308(46)+abb308(39)
      abb308(46)=spak1k7*abb308(46)
      abb308(13)=abb308(51)+abb308(20)+abb308(46)+abb308(13)+abb308(50)
      abb308(11)=abb308(10)*abb308(11)*abb308(24)
      abb308(14)=abb308(24)*abb308(14)
      abb308(17)=-abb308(14)*abb308(17)
      abb308(11)=abb308(17)+abb308(11)
      abb308(17)=-abb308(11)*abb308(47)
      abb308(10)=abb308(10)*abb308(12)*abb308(24)
      abb308(12)=-abb308(14)*abb308(18)
      abb308(10)=abb308(12)+abb308(10)
      abb308(12)=-abb308(10)*abb308(48)
      abb308(14)=-spal6k7*abb308(36)
      abb308(12)=abb308(14)+abb308(12)+abb308(17)
      abb308(14)=2.0_ki*spbl6k2
      abb308(12)=abb308(14)*abb308(12)
      abb308(17)=-spbl6k2*abb308(40)
      abb308(18)=abb308(40)*abb308(7)*mB
      abb308(20)=abb308(9)*abb308(18)
      abb308(17)=abb308(17)+3.0_ki*abb308(20)
      abb308(17)=-abb308(22)*abb308(17)
      abb308(12)=abb308(12)+abb308(17)+2.0_ki*abb308(13)
      abb308(12)=4.0_ki*abb308(12)
      abb308(13)=8.0_ki*spbl6k2
      abb308(17)=abb308(13)*abb308(40)
      abb308(20)=spak4l6*abb308(11)
      abb308(24)=spak1l6*abb308(10)
      abb308(20)=abb308(24)+abb308(20)
      abb308(14)=abb308(14)*abb308(20)
      abb308(20)=spak4k7*abb308(26)
      abb308(24)=spak1k7*abb308(35)
      abb308(20)=abb308(20)+abb308(24)
      abb308(15)=2.0_ki*abb308(15)+spbl6k2
      abb308(15)=abb308(40)*abb308(15)
      abb308(18)=-abb308(18)*abb308(34)
      abb308(14)=abb308(18)+abb308(14)+abb308(15)-4.0_ki*abb308(20)
      abb308(14)=8.0_ki*abb308(14)
      abb308(15)=-spbk7k2*abb308(40)
      abb308(18)=16.0_ki*abb308(15)
      abb308(20)=-8.0_ki*abb308(28)
      abb308(13)=abb308(6)*mB*abb308(13)*abb308(9)
      abb308(24)=abb308(25)*abb308(13)
      abb308(11)=16.0_ki*abb308(11)
      abb308(25)=abb308(53)*spak4l5
      abb308(28)=abb308(52)*spak1l5
      abb308(25)=abb308(25)-abb308(28)
      abb308(25)=abb308(25)*abb308(8)
      abb308(28)=abb308(25)-abb308(15)
      abb308(22)=-abb308(22)*abb308(28)
      abb308(28)=spak4l6*abb308(44)
      abb308(34)=spak1l6*abb308(39)
      abb308(22)=abb308(34)+abb308(28)+abb308(22)
      abb308(22)=4.0_ki*abb308(22)
      abb308(28)=-8.0_ki*abb308(15)
      abb308(26)=-spak4l6*abb308(26)
      abb308(34)=-spak1l6*abb308(35)
      abb308(25)=abb308(34)+abb308(26)-abb308(25)-abb308(15)
      abb308(25)=8.0_ki*abb308(25)
      abb308(15)=-4.0_ki*abb308(15)
      abb308(21)=-abb308(21)*abb308(41)
      abb308(26)=8.0_ki*abb308(33)
      abb308(13)=abb308(30)*abb308(13)
      abb308(10)=16.0_ki*abb308(10)
      R2d308=0.0_ki
      rat2 = rat2 + R2d308
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='308' value='", &
          & R2d308, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd308h2
