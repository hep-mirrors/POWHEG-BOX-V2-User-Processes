module     p0_dbaru_epnebbbarg_abbrevd75h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(64), public :: abb75
   complex(ki), public :: R2d75
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
      abb75(1)=1.0_ki/(-mB**2+es67)
      abb75(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb75(3)=NC**(-1)
      abb75(4)=sqrt2**(-1)
      abb75(5)=spak2k7**(-1)
      abb75(6)=sqrt(mB**2)
      abb75(7)=spak2l6**(-1)
      abb75(8)=spbl6k2**(-1)
      abb75(9)=abb75(4)*i_*CVDU*abb75(2)*abb75(1)
      abb75(10)=TR*gW
      abb75(10)=abb75(10)**2
      abb75(11)=abb75(9)*abb75(10)*abb75(5)
      abb75(12)=2.0_ki*abb75(3)
      abb75(13)=abb75(12)-NC
      abb75(14)=-abb75(13)*abb75(11)*c3*spbk7l6
      abb75(15)=spbk3k2*abb75(14)
      abb75(16)=c2*abb75(3)**2
      abb75(17)=abb75(11)*abb75(16)
      abb75(18)=abb75(17)*spbk3k2
      abb75(19)=spbk7l6*abb75(18)
      abb75(15)=abb75(19)+abb75(15)
      abb75(19)=abb75(15)*spak2k4
      abb75(20)=-es12+es712-es71
      abb75(21)=spbl6k2*spak2l6
      abb75(21)=-abb75(21)+abb75(20)
      abb75(22)=abb75(21)*abb75(19)
      abb75(23)=spak2l5*abb75(22)
      abb75(10)=abb75(10)*spbk7l6
      abb75(16)=abb75(9)*abb75(10)*abb75(16)
      abb75(24)=spbk3k2*abb75(16)
      abb75(9)=abb75(10)*abb75(9)*c3
      abb75(10)=-abb75(13)*abb75(9)*spbk3k2
      abb75(10)=abb75(24)+abb75(10)
      abb75(24)=abb75(10)*spbk7k3
      abb75(25)=spak3k4*spak2l5
      abb75(26)=abb75(25)*abb75(24)
      abb75(27)=abb75(15)*abb75(25)
      abb75(28)=spbl6k3*spak2l6*abb75(27)
      abb75(26)=abb75(28)+abb75(26)+abb75(23)
      abb75(28)=spbl5k2*spak1l5
      abb75(26)=abb75(28)*abb75(26)
      abb75(29)=abb75(17)*spbk7l6
      abb75(14)=abb75(29)+abb75(14)
      abb75(29)=spbk3k2**2
      abb75(30)=-abb75(25)*abb75(29)*abb75(14)
      abb75(31)=abb75(6)**2
      abb75(32)=abb75(31)*spak1k2
      abb75(33)=-abb75(32)*abb75(30)
      abb75(26)=abb75(33)+abb75(26)
      abb75(26)=8.0_ki*abb75(26)
      abb75(33)=16.0_ki*spak1k2
      abb75(34)=abb75(30)*abb75(33)
      abb75(24)=-spak3k4*abb75(24)
      abb75(35)=abb75(15)*spak3k4
      abb75(36)=abb75(35)*spak2l6
      abb75(37)=-spbl6k3*abb75(36)
      abb75(22)=abb75(37)+abb75(24)-abb75(22)
      abb75(22)=16.0_ki*spak1l5*abb75(22)
      abb75(9)=-abb75(9)*abb75(13)
      abb75(9)=abb75(9)+abb75(16)
      abb75(13)=abb75(9)*spbk7k3
      abb75(16)=abb75(14)*spak2l6
      abb75(24)=abb75(16)*spbl6k3
      abb75(13)=abb75(13)+abb75(24)
      abb75(24)=abb75(13)*abb75(28)*spak4l5
      abb75(37)=abb75(15)*spak1k2
      abb75(38)=abb75(37)*spak4l5
      abb75(39)=abb75(38)*abb75(31)
      abb75(24)=abb75(39)+abb75(24)
      abb75(39)=abb75(7)*spak1k2
      abb75(40)=abb75(39)*mB**2
      abb75(41)=abb75(40)*abb75(8)
      abb75(42)=abb75(41)*abb75(30)
      abb75(42)=abb75(42)-abb75(24)
      abb75(42)=16.0_ki*abb75(42)
      abb75(43)=32.0_ki*abb75(38)
      abb75(44)=abb75(15)*spak4l5
      abb75(45)=32.0_ki*abb75(41)*abb75(44)
      abb75(24)=8.0_ki*abb75(24)
      abb75(38)=16.0_ki*abb75(38)
      abb75(46)=16.0_ki*abb75(41)
      abb75(47)=-abb75(44)*abb75(46)
      abb75(48)=abb75(37)*spak3k4
      abb75(31)=-8.0_ki*abb75(31)*abb75(48)
      abb75(48)=16.0_ki*abb75(48)
      abb75(49)=abb75(35)*abb75(46)
      abb75(50)=abb75(13)*spak3k4
      abb75(51)=-spak1l5*abb75(50)
      abb75(20)=abb75(14)*abb75(20)
      abb75(52)=abb75(16)*spbl6k2
      abb75(20)=abb75(20)-abb75(52)
      abb75(52)=-spak1l5*abb75(20)
      abb75(53)=spak2k4*abb75(52)
      abb75(51)=abb75(53)+abb75(51)
      abb75(51)=spbl5k3*abb75(51)
      abb75(13)=abb75(13)*spak2k4
      abb75(53)=-abb75(28)*abb75(13)
      abb75(54)=-abb75(19)*abb75(32)
      abb75(51)=abb75(51)+abb75(54)+abb75(53)
      abb75(51)=8.0_ki*abb75(51)
      abb75(53)=abb75(33)*abb75(19)
      abb75(54)=abb75(19)*abb75(46)
      abb75(55)=abb75(20)*spak2l5
      abb75(55)=8.0_ki*abb75(55)
      abb75(28)=-abb75(28)*abb75(55)
      abb75(52)=-16.0_ki*abb75(52)
      abb75(56)=spbk7l5*abb75(9)
      abb75(57)=spbl6l5*abb75(16)
      abb75(56)=abb75(57)+abb75(56)
      abb75(56)=spak1l5*abb75(56)
      abb75(32)=abb75(14)*abb75(32)
      abb75(32)=abb75(32)+abb75(56)
      abb75(32)=8.0_ki*abb75(32)
      abb75(33)=abb75(33)*abb75(14)
      abb75(46)=-abb75(14)*abb75(46)
      abb75(56)=abb75(11)*NC
      abb75(57)=abb75(56)*c3
      abb75(11)=abb75(12)*abb75(11)
      abb75(12)=abb75(11)*c3
      abb75(12)=-abb75(57)+abb75(12)-abb75(17)
      abb75(17)=-abb75(25)*abb75(29)*abb75(12)
      abb75(25)=-abb75(40)*abb75(17)
      abb75(29)=-spak1k7*abb75(30)
      abb75(25)=abb75(25)+abb75(29)
      abb75(25)=8.0_ki*abb75(25)
      abb75(29)=abb75(44)*spak1k7
      abb75(11)=-abb75(11)+abb75(56)
      abb75(11)=abb75(11)*spbk3k2*c3
      abb75(11)=abb75(18)+abb75(11)
      abb75(18)=abb75(11)*spak4l5
      abb75(39)=mB*abb75(39)*abb75(6)
      abb75(56)=abb75(40)+2.0_ki*abb75(39)
      abb75(57)=abb75(18)*abb75(56)
      abb75(57)=-abb75(29)+abb75(57)
      abb75(57)=16.0_ki*abb75(57)
      abb75(58)=-abb75(40)*abb75(18)
      abb75(29)=abb75(58)+abb75(29)
      abb75(29)=8.0_ki*abb75(29)
      abb75(58)=abb75(11)*spak3k4
      abb75(59)=abb75(40)*abb75(58)
      abb75(60)=-spak1k7*abb75(35)
      abb75(59)=abb75(59)+abb75(60)
      abb75(59)=8.0_ki*abb75(59)
      abb75(60)=abb75(11)*spak2k4
      abb75(56)=abb75(60)*abb75(56)
      abb75(61)=spak1k7*abb75(19)
      abb75(62)=2.0_ki*spak1k4
      abb75(63)=-abb75(10)*abb75(62)
      abb75(37)=2.0_ki*abb75(37)
      abb75(64)=spak4k7*abb75(37)
      abb75(56)=abb75(64)+abb75(63)+abb75(61)+abb75(56)
      abb75(56)=8.0_ki*abb75(56)
      abb75(40)=abb75(12)*abb75(40)
      abb75(61)=spak1k7*abb75(14)
      abb75(40)=abb75(40)+abb75(61)
      abb75(40)=8.0_ki*abb75(40)
      abb75(11)=-16.0_ki*spak2l5*abb75(11)*abb75(39)
      abb75(39)=abb75(41)*spbk7k2
      abb75(17)=abb75(39)*abb75(17)
      abb75(30)=-spak1l6*abb75(30)
      abb75(17)=abb75(17)+abb75(30)
      abb75(17)=8.0_ki*abb75(17)
      abb75(30)=abb75(44)*spak1l6
      abb75(18)=abb75(18)*abb75(39)
      abb75(18)=abb75(30)+abb75(18)
      abb75(30)=-16.0_ki*abb75(18)
      abb75(18)=8.0_ki*abb75(18)
      abb75(41)=-abb75(39)*abb75(58)
      abb75(35)=-spak1l6*abb75(35)
      abb75(35)=abb75(41)+abb75(35)
      abb75(35)=8.0_ki*abb75(35)
      abb75(41)=-abb75(39)*abb75(60)
      abb75(44)=spak1l6*abb75(19)
      abb75(15)=-spak2l6*abb75(15)*abb75(62)
      abb75(37)=spak4l6*abb75(37)
      abb75(15)=abb75(37)+abb75(15)+abb75(41)+abb75(44)
      abb75(15)=8.0_ki*abb75(15)
      abb75(12)=-abb75(12)*abb75(39)
      abb75(14)=spak1l6*abb75(14)
      abb75(12)=abb75(12)+abb75(14)
      abb75(12)=8.0_ki*abb75(12)
      abb75(9)=8.0_ki*abb75(9)
      abb75(14)=8.0_ki*abb75(16)
      abb75(16)=8.0_ki*abb75(27)*abb75(21)
      abb75(21)=-spak4l5*abb75(20)
      abb75(27)=16.0_ki*abb75(21)
      abb75(21)=-8.0_ki*abb75(21)
      abb75(10)=8.0_ki*abb75(10)
      abb75(37)=spak3k4*abb75(10)
      abb75(36)=8.0_ki*abb75(36)
      abb75(20)=-spak2k4*abb75(20)
      abb75(20)=abb75(20)+abb75(50)
      abb75(20)=8.0_ki*abb75(20)
      abb75(23)=-8.0_ki*abb75(23)
      abb75(10)=-spak2k4*abb75(10)
      abb75(19)=-8.0_ki*spak2l6*abb75(19)
      abb75(13)=-8.0_ki*abb75(13)
      R2d75=0.0_ki
      rat2 = rat2 + R2d75
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='75' value='", &
          & R2d75, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd75h2
