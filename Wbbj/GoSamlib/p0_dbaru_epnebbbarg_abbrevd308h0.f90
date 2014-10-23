module     p0_dbaru_epnebbbarg_abbrevd308h0
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(49), public :: abb308
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
      abb308(5)=spbl5k2**(-1)
      abb308(6)=spak2k7**(-1)
      abb308(7)=spbl6k2**(-1)
      abb308(8)=spak2l6**(-1)
      abb308(9)=sqrt(mB**2)
      abb308(10)=c2-c4
      abb308(11)=TR*gW
      abb308(11)=abb308(11)**2*CVDU*i_*spak1k4*abb308(6)*abb308(4)*abb308(2)*ab&
      &b308(1)
      abb308(12)=abb308(11)*spbk3k1
      abb308(13)=abb308(10)*abb308(12)
      abb308(14)=abb308(5)*abb308(7)
      abb308(15)=-abb308(14)*abb308(13)
      abb308(16)=abb308(5)*abb308(3)
      abb308(17)=abb308(16)*abb308(7)
      abb308(18)=abb308(17)*abb308(12)
      abb308(19)=abb308(18)*c3
      abb308(18)=abb308(18)*c1
      abb308(15)=-abb308(18)+abb308(15)+abb308(19)
      abb308(18)=mB**3
      abb308(19)=abb308(18)*spbk7k2**2
      abb308(20)=-abb308(19)*abb308(15)
      abb308(21)=2.0_ki*spal6k7
      abb308(22)=abb308(21)*abb308(8)
      abb308(23)=abb308(20)*abb308(22)*spak1k2
      abb308(24)=c1-c3
      abb308(17)=-abb308(17)*abb308(24)
      abb308(14)=-abb308(14)*abb308(10)
      abb308(14)=abb308(17)+abb308(14)
      abb308(17)=abb308(11)*spbk4k3
      abb308(25)=abb308(14)*abb308(17)
      abb308(19)=-abb308(19)*abb308(25)
      abb308(22)=abb308(19)*abb308(22)*spak2k4
      abb308(22)=abb308(23)-abb308(22)
      abb308(23)=spak4l5*spbk4k3
      abb308(26)=spak1l5*spbk3k1
      abb308(23)=abb308(23)+abb308(26)
      abb308(26)=spbk7k2*mB
      abb308(11)=abb308(26)*abb308(11)
      abb308(27)=abb308(24)*abb308(23)*abb308(11)*abb308(3)
      abb308(23)=abb308(11)*abb308(10)*abb308(23)
      abb308(23)=abb308(27)+abb308(23)
      abb308(27)=abb308(12)*spak1l5
      abb308(28)=abb308(17)*spak4l5
      abb308(27)=abb308(27)+abb308(28)
      abb308(28)=spbk7k2*abb308(27)
      abb308(29)=-abb308(24)*abb308(3)*abb308(28)
      abb308(28)=-abb308(28)*abb308(10)
      abb308(28)=abb308(28)+abb308(29)
      abb308(28)=abb308(28)*abb308(9)
      abb308(29)=abb308(28)+abb308(23)
      abb308(29)=abb308(29)*spak2l6
      abb308(30)=abb308(29)-abb308(22)
      abb308(31)=es71+es12-es712
      abb308(30)=abb308(31)*abb308(30)
      abb308(32)=abb308(24)*abb308(3)
      abb308(33)=abb308(10)+abb308(32)
      abb308(34)=abb308(18)*spbk7k2
      abb308(35)=-abb308(33)*abb308(27)*abb308(34)*abb308(7)**2
      abb308(36)=abb308(35)*es71
      abb308(37)=abb308(35)*es712
      abb308(38)=-2.0_ki*abb308(36)+abb308(37)
      abb308(38)=es712*abb308(38)
      abb308(36)=abb308(36)-abb308(37)
      abb308(37)=abb308(35)*es12
      abb308(39)=2.0_ki*abb308(36)+abb308(37)
      abb308(39)=es12*abb308(39)
      abb308(40)=abb308(35)*es71**2
      abb308(38)=abb308(39)+abb308(40)+abb308(38)
      abb308(38)=abb308(8)*abb308(38)
      abb308(39)=-abb308(7)*abb308(23)
      abb308(40)=-abb308(39)*abb308(31)
      abb308(41)=-spbk7l6*spal6k7*abb308(40)
      abb308(38)=abb308(38)+abb308(41)
      abb308(26)=abb308(26)**2
      abb308(41)=-abb308(26)*abb308(15)
      abb308(42)=2.0_ki*spak1k7
      abb308(43)=abb308(41)*abb308(42)
      abb308(25)=-abb308(26)*abb308(25)
      abb308(26)=2.0_ki*spak4k7
      abb308(44)=abb308(25)*abb308(26)
      abb308(43)=abb308(44)+abb308(43)
      abb308(44)=abb308(9)*abb308(31)
      abb308(45)=-abb308(44)*abb308(43)
      abb308(11)=abb308(11)*abb308(5)
      abb308(46)=abb308(11)*spbk4k3
      abb308(47)=abb308(46)*abb308(10)
      abb308(46)=abb308(24)*abb308(46)*abb308(3)
      abb308(46)=abb308(46)+abb308(47)
      abb308(47)=abb308(46)*abb308(31)
      abb308(48)=abb308(47)*spak4l6
      abb308(11)=-abb308(33)*abb308(11)*spbk3k1
      abb308(33)=abb308(11)*abb308(31)
      abb308(49)=abb308(33)*spak1l6
      abb308(48)=abb308(48)-abb308(49)
      abb308(21)=abb308(21)*spbk7l6
      abb308(49)=-abb308(21)*abb308(48)
      abb308(30)=2.0_ki*abb308(38)+abb308(49)+abb308(30)+abb308(45)
      abb308(30)=4.0_ki*abb308(30)
      abb308(38)=abb308(48)+abb308(40)
      abb308(40)=abb308(29)-2.0_ki*abb308(38)
      abb308(40)=8.0_ki*abb308(40)
      abb308(45)=8.0_ki*abb308(48)
      abb308(43)=abb308(9)*abb308(43)
      abb308(48)=abb308(46)*spak4l6
      abb308(49)=abb308(11)*spak1l6
      abb308(48)=abb308(48)-abb308(49)
      abb308(49)=abb308(21)*abb308(48)
      abb308(21)=-abb308(21)-abb308(31)
      abb308(21)=abb308(39)*abb308(21)
      abb308(36)=-abb308(37)-abb308(36)
      abb308(36)=abb308(8)*abb308(36)
      abb308(21)=abb308(29)+3.0_ki*abb308(36)+abb308(21)+abb308(49)+abb308(43)+&
      &abb308(22)
      abb308(21)=8.0_ki*abb308(21)
      abb308(22)=-3.0_ki*abb308(39)+2.0_ki*abb308(48)
      abb308(22)=16.0_ki*abb308(22)
      abb308(36)=-16.0_ki*abb308(48)
      abb308(35)=abb308(8)*abb308(35)
      abb308(35)=abb308(35)-abb308(39)
      abb308(35)=16.0_ki*abb308(35)
      abb308(29)=abb308(29)+abb308(38)
      abb308(29)=4.0_ki*abb308(29)
      abb308(37)=-8.0_ki*abb308(48)
      abb308(38)=-abb308(39)+abb308(48)
      abb308(38)=spak2l6*spbk7l6*abb308(38)
      abb308(41)=-abb308(9)*abb308(41)
      abb308(20)=abb308(41)+abb308(20)
      abb308(20)=spak1k2*abb308(20)
      abb308(25)=abb308(9)*abb308(25)
      abb308(19)=abb308(25)-abb308(19)
      abb308(19)=spak2k4*abb308(19)
      abb308(19)=abb308(20)+abb308(19)+abb308(38)
      abb308(19)=8.0_ki*abb308(19)
      abb308(20)=-abb308(24)*abb308(3)*abb308(27)
      abb308(25)=-abb308(27)*abb308(10)
      abb308(20)=abb308(25)+abb308(20)
      abb308(25)=-abb308(20)*abb308(44)
      abb308(38)=abb308(47)*abb308(26)
      abb308(33)=-abb308(33)*abb308(42)
      abb308(25)=abb308(33)+abb308(38)+abb308(25)
      abb308(25)=4.0_ki*abb308(25)
      abb308(33)=abb308(42)*abb308(11)
      abb308(26)=abb308(26)*abb308(46)
      abb308(26)=abb308(33)-abb308(26)
      abb308(20)=abb308(20)*abb308(9)
      abb308(33)=abb308(20)+abb308(26)
      abb308(33)=8.0_ki*abb308(33)
      abb308(38)=-spak2k4*abb308(46)
      abb308(11)=-spak1k2*abb308(11)
      abb308(11)=abb308(38)+abb308(11)
      abb308(11)=8.0_ki*abb308(11)
      abb308(34)=abb308(15)*abb308(34)*spak1k2*abb308(8)
      abb308(14)=abb308(14)*abb308(17)*spbk7k2
      abb308(18)=spak2k4*abb308(8)*abb308(18)*abb308(14)
      abb308(27)=mB*abb308(27)
      abb308(38)=-abb308(24)*abb308(27)*abb308(3)*abb308(7)
      abb308(41)=abb308(10)*abb308(27)
      abb308(42)=-abb308(7)*abb308(41)
      abb308(38)=abb308(42)+abb308(38)
      abb308(38)=abb308(38)*spbk7l6
      abb308(18)=abb308(38)+abb308(34)-abb308(18)
      abb308(31)=-4.0_ki*abb308(31)*abb308(18)
      abb308(18)=8.0_ki*abb308(18)
      abb308(34)=mB**2
      abb308(14)=abb308(34)*abb308(14)
      abb308(38)=4.0_ki*abb308(44)
      abb308(42)=-abb308(14)*abb308(38)
      abb308(43)=8.0_ki*abb308(9)
      abb308(14)=abb308(14)*abb308(43)
      abb308(44)=-spbl6k2*abb308(48)
      abb308(23)=abb308(44)+2.0_ki*abb308(28)+abb308(23)
      abb308(23)=8.0_ki*spal6k7*abb308(23)
      abb308(28)=16.0_ki*abb308(39)
      abb308(16)=abb308(24)*abb308(16)*mB
      abb308(12)=-abb308(12)*abb308(16)
      abb308(13)=abb308(5)*mB*abb308(13)
      abb308(12)=abb308(12)-abb308(13)
      abb308(13)=-spak1l6*abb308(12)
      abb308(10)=-mB*abb308(10)*abb308(5)
      abb308(10)=-abb308(16)+abb308(10)
      abb308(10)=abb308(17)*abb308(10)
      abb308(16)=-spak4l6*abb308(10)
      abb308(13)=abb308(16)+abb308(13)
      abb308(13)=spbl6k2*abb308(13)
      abb308(16)=-abb308(27)*abb308(32)
      abb308(13)=2.0_ki*abb308(13)-3.0_ki*abb308(20)-abb308(41)+abb308(16)+abb3&
      &08(26)
      abb308(13)=4.0_ki*abb308(13)
      abb308(10)=-8.0_ki*abb308(10)
      abb308(15)=abb308(15)*abb308(34)*spbk7k2
      abb308(16)=-abb308(15)*abb308(38)
      abb308(15)=abb308(15)*abb308(43)
      abb308(12)=-8.0_ki*abb308(12)
      R2d308=0.0_ki
      rat2 = rat2 + R2d308
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='308' value='", &
          & R2d308, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd308h0
