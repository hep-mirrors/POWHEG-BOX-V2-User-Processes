module     p0_dbaru_epnebbbarg_abbrevd292h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(54), public :: abb292
   complex(ki), public :: R2d292
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
      abb292(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb292(2)=NC**(-1)
      abb292(3)=sqrt2**(-1)
      abb292(4)=spbl6k2**(-1)
      abb292(5)=spbk7k2**(-1)
      abb292(6)=sqrt(mB**2)
      abb292(7)=spak2l5**(-1)
      abb292(8)=spbl5k2**(-1)
      abb292(9)=spak2l6**(-1)
      abb292(10)=c4*abb292(2)**2
      abb292(11)=TR*gW
      abb292(11)=abb292(11)**2*i_*CVDU*abb292(3)*abb292(1)
      abb292(12)=spbk3k2*abb292(11)*abb292(5)
      abb292(13)=abb292(10)*abb292(12)
      abb292(14)=abb292(6)*spak1l6
      abb292(15)=abb292(14)*abb292(13)
      abb292(12)=abb292(12)*abb292(2)
      abb292(16)=abb292(12)*abb292(14)
      abb292(17)=abb292(16)*c3
      abb292(16)=abb292(16)*c1
      abb292(15)=-abb292(16)+abb292(15)-abb292(17)
      abb292(16)=c1+c3
      abb292(17)=abb292(16)*abb292(12)
      abb292(17)=abb292(17)-abb292(13)
      abb292(18)=abb292(4)*mB
      abb292(17)=abb292(18)*abb292(17)
      abb292(19)=spbl5k2*spak1l5
      abb292(20)=abb292(17)*abb292(19)
      abb292(21)=abb292(20)-abb292(15)
      abb292(22)=spak4l5*spbl5k2
      abb292(23)=abb292(22)*spal5k7
      abb292(24)=abb292(23)*abb292(21)
      abb292(25)=spbk2k1*spak1k4
      abb292(26)=abb292(21)*abb292(25)
      abb292(27)=spal5k7*abb292(26)
      abb292(28)=abb292(15)*spbl6k2
      abb292(29)=spak4l6*spal5k7
      abb292(30)=abb292(28)*abb292(29)
      abb292(31)=abb292(12)*c3
      abb292(12)=abb292(12)*c1
      abb292(12)=-abb292(12)+abb292(13)-abb292(31)
      abb292(13)=mB*abb292(12)
      abb292(29)=abb292(13)*abb292(29)
      abb292(31)=abb292(29)*abb292(19)
      abb292(24)=-abb292(30)-abb292(31)+abb292(24)-abb292(27)
      abb292(27)=abb292(11)*abb292(2)
      abb292(30)=abb292(16)*abb292(27)*abb292(18)
      abb292(10)=abb292(10)*abb292(11)
      abb292(11)=abb292(18)*abb292(10)
      abb292(11)=abb292(30)-abb292(11)
      abb292(18)=spbk3k2*abb292(11)
      abb292(30)=abb292(18)*spak4k7
      abb292(31)=abb292(30)*spal5k7
      abb292(32)=-abb292(19)*abb292(31)
      abb292(32)=abb292(32)-abb292(24)
      abb292(32)=16.0_ki*abb292(32)
      abb292(33)=abb292(14)*abb292(16)
      abb292(34)=abb292(33)*abb292(27)
      abb292(14)=abb292(10)*abb292(14)
      abb292(34)=abb292(34)-abb292(14)
      abb292(35)=-spbk3k2*abb292(34)
      abb292(18)=-abb292(18)*abb292(19)
      abb292(18)=abb292(18)+abb292(35)
      abb292(18)=abb292(18)*spak4k7*spal5k7
      abb292(18)=abb292(18)-abb292(24)
      abb292(18)=8.0_ki*abb292(18)
      abb292(13)=abb292(13)*spak4l6
      abb292(13)=abb292(13)-abb292(30)
      abb292(24)=abb292(19)*abb292(13)
      abb292(35)=-abb292(21)*abb292(22)
      abb292(28)=spak4l6*abb292(28)
      abb292(24)=abb292(28)+abb292(26)+abb292(35)+abb292(24)
      abb292(24)=8.0_ki*spak2l5*abb292(24)
      abb292(26)=16.0_ki*spak4l5
      abb292(28)=-abb292(15)*abb292(26)
      abb292(35)=abb292(25)*abb292(17)
      abb292(13)=abb292(13)+abb292(35)
      abb292(36)=spak1l5*abb292(13)
      abb292(21)=-spak4l5*abb292(21)
      abb292(21)=abb292(21)+abb292(36)
      abb292(21)=16.0_ki*abb292(21)
      abb292(36)=abb292(15)*mB**2
      abb292(37)=abb292(7)*abb292(8)
      abb292(38)=abb292(36)*abb292(37)
      abb292(39)=-abb292(9)*abb292(4)*abb292(36)
      abb292(38)=abb292(38)-abb292(39)
      abb292(26)=-abb292(38)*abb292(26)
      abb292(40)=8.0_ki*abb292(15)
      abb292(41)=spak4l5*abb292(40)
      abb292(27)=abb292(27)*abb292(5)
      abb292(33)=abb292(27)*abb292(33)
      abb292(14)=abb292(14)*abb292(5)
      abb292(14)=abb292(33)-abb292(14)
      abb292(33)=abb292(14)*spak4l5
      abb292(42)=8.0_ki*abb292(33)
      abb292(43)=spbk7k3*abb292(42)
      abb292(42)=-spbl6k3*abb292(42)
      abb292(44)=spak4l6*abb292(40)
      abb292(45)=8.0_ki*spak4k7
      abb292(34)=-abb292(34)*abb292(45)
      abb292(46)=abb292(20)*spak4k7
      abb292(47)=8.0_ki*abb292(46)
      abb292(48)=es12+es71-es712
      abb292(48)=abb292(48)*abb292(47)
      abb292(49)=16.0_ki*abb292(46)
      abb292(50)=spak1k7*abb292(30)
      abb292(46)=-abb292(46)+abb292(50)
      abb292(46)=16.0_ki*abb292(46)
      abb292(16)=-abb292(27)*abb292(16)
      abb292(10)=abb292(5)*abb292(10)
      abb292(10)=abb292(10)+abb292(16)
      abb292(10)=spak4l6*mB*abb292(10)
      abb292(16)=abb292(5)*abb292(11)
      abb292(25)=abb292(16)*abb292(25)
      abb292(10)=abb292(25)+abb292(10)
      abb292(10)=spak1l5*abb292(10)
      abb292(19)=abb292(16)*abb292(19)
      abb292(19)=abb292(19)+abb292(14)
      abb292(25)=-spak4l5*abb292(19)
      abb292(10)=abb292(25)+abb292(10)
      abb292(10)=spbl5k3*abb292(10)
      abb292(20)=-abb292(20)-abb292(38)
      abb292(20)=spak2k4*abb292(20)
      abb292(25)=-spak1k2*abb292(30)
      abb292(27)=spbk7l5*spak4k7*spak1l5*abb292(17)
      abb292(10)=abb292(27)+abb292(25)+abb292(10)+abb292(20)
      abb292(10)=8.0_ki*abb292(10)
      abb292(20)=abb292(17)*spak1k4
      abb292(25)=-16.0_ki*abb292(20)
      abb292(27)=abb292(37)*abb292(4)
      abb292(30)=abb292(9)*abb292(4)**2
      abb292(27)=abb292(27)+abb292(30)
      abb292(12)=-abb292(27)*abb292(12)*mB**3
      abb292(27)=-16.0_ki*spak1k4*abb292(12)
      abb292(20)=8.0_ki*abb292(20)
      abb292(30)=abb292(16)*spak1k4
      abb292(37)=8.0_ki*abb292(30)
      abb292(38)=-spbk7k3*abb292(37)
      abb292(50)=spbl6k3*abb292(37)
      abb292(37)=spbl5k3*abb292(37)
      abb292(40)=spak1k4*abb292(40)
      abb292(19)=-8.0_ki*abb292(19)
      abb292(51)=abb292(15)*spal5k7
      abb292(52)=16.0_ki*abb292(51)
      abb292(51)=8.0_ki*abb292(51)
      abb292(15)=-abb292(39)+abb292(15)
      abb292(15)=spak2l5*abb292(15)
      abb292(39)=spbk7k3*spal5k7
      abb292(53)=spbk3k1*spak1l5
      abb292(54)=-spal5l6*spbl6k3
      abb292(39)=abb292(54)+abb292(53)+abb292(39)
      abb292(14)=abb292(14)*abb292(39)
      abb292(36)=abb292(8)*abb292(36)
      abb292(14)=abb292(36)+abb292(14)+abb292(15)
      abb292(14)=8.0_ki*abb292(14)
      abb292(15)=abb292(17)*spak1k7
      abb292(36)=16.0_ki*abb292(15)
      abb292(15)=-8.0_ki*abb292(15)
      abb292(39)=-spbl5k3*spak1l5
      abb292(53)=spbk7k3*spak1k7
      abb292(54)=-spbl6k3*spak1l6
      abb292(39)=abb292(54)+abb292(39)+abb292(53)
      abb292(39)=abb292(16)*abb292(39)
      abb292(53)=abb292(17)+abb292(12)
      abb292(53)=spak1k2*abb292(53)
      abb292(39)=abb292(53)+abb292(39)
      abb292(39)=8.0_ki*abb292(39)
      abb292(23)=abb292(23)*abb292(17)
      abb292(35)=abb292(35)*spal5k7
      abb292(23)=-abb292(29)+abb292(31)+abb292(23)-abb292(35)
      abb292(29)=-16.0_ki*abb292(23)
      abb292(23)=-8.0_ki*abb292(23)
      abb292(22)=-abb292(17)*abb292(22)
      abb292(13)=abb292(22)+abb292(13)
      abb292(13)=spak2l5*abb292(13)
      abb292(22)=-spbk3k1*abb292(33)
      abb292(13)=abb292(22)+abb292(13)
      abb292(13)=8.0_ki*abb292(13)
      abb292(22)=16.0_ki*abb292(17)
      abb292(22)=-spak4l5*abb292(22)
      abb292(17)=-8.0_ki*spak4l6*abb292(17)
      abb292(11)=-abb292(11)*abb292(45)
      abb292(12)=spak2k4*abb292(12)
      abb292(30)=spbk3k1*abb292(30)
      abb292(12)=abb292(12)+abb292(30)
      abb292(12)=8.0_ki*abb292(12)
      abb292(16)=-8.0_ki*abb292(16)
      R2d292=0.0_ki
      rat2 = rat2 + R2d292
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='292' value='", &
          & R2d292, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd292h4
