module     p0_dbaru_epnebbbarg_abbrevd76h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(61), public :: abb76
   complex(ki), public :: R2d76
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
      abb76(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb76(2)=sqrt(mB**2)
      abb76(3)=NC**(-1)
      abb76(4)=sqrt2**(-1)
      abb76(5)=es71**(-1)
      abb76(6)=spbl5k2**(-1)
      abb76(7)=spak2l6**(-1)
      abb76(8)=spak2k7**(-1)
      abb76(9)=spbl6k2**(-1)
      abb76(10)=spak2l5**(-1)
      abb76(11)=abb76(8)*i_*CVDU*abb76(4)*abb76(1)
      abb76(12)=TR*gW
      abb76(12)=abb76(12)**2
      abb76(13)=abb76(11)*abb76(12)*spbk7k1*abb76(5)
      abb76(14)=abb76(13)*spbk3k2
      abb76(15)=abb76(14)*NC
      abb76(16)=abb76(15)*c3
      abb76(17)=abb76(2)*abb76(7)
      abb76(18)=abb76(17)*mB
      abb76(19)=spak1k2**2
      abb76(20)=abb76(18)*abb76(19)
      abb76(21)=abb76(16)*abb76(20)
      abb76(22)=abb76(20)*abb76(3)
      abb76(23)=2.0_ki*c3
      abb76(23)=abb76(23)*abb76(14)
      abb76(24)=abb76(22)*abb76(23)
      abb76(14)=abb76(14)*c4
      abb76(25)=abb76(3)*spak1k2
      abb76(26)=abb76(25)**2
      abb76(27)=abb76(26)*abb76(14)
      abb76(28)=abb76(27)*abb76(18)
      abb76(21)=-abb76(24)+abb76(21)+abb76(28)
      abb76(24)=abb76(21)*spak2l5
      abb76(28)=-spbl6k2*abb76(24)
      abb76(29)=abb76(23)*abb76(3)
      abb76(16)=abb76(29)-abb76(16)
      abb76(19)=abb76(19)*abb76(16)
      abb76(19)=-abb76(27)+abb76(19)
      abb76(27)=mB**3
      abb76(17)=abb76(27)*abb76(17)
      abb76(29)=abb76(19)*abb76(17)
      abb76(30)=spbl6k2*abb76(6)
      abb76(31)=-abb76(29)*abb76(30)
      abb76(28)=abb76(31)+abb76(28)
      abb76(28)=spak4l6*abb76(28)
      abb76(29)=abb76(29)*abb76(6)
      abb76(24)=abb76(29)+abb76(24)
      abb76(29)=spbk7k2*spak4k7
      abb76(31)=-abb76(24)*abb76(29)
      abb76(32)=abb76(3)**2
      abb76(33)=abb76(32)*spak1k2
      abb76(34)=abb76(33)*abb76(14)
      abb76(23)=abb76(23)*abb76(25)
      abb76(35)=c3*spak1k2
      abb76(15)=abb76(15)*abb76(35)
      abb76(15)=abb76(15)+abb76(34)-abb76(23)
      abb76(23)=abb76(6)*spak1k4
      abb76(17)=-abb76(23)*abb76(17)
      abb76(34)=spak2l5*spak1k4
      abb76(18)=abb76(34)*abb76(18)
      abb76(17)=abb76(17)+abb76(18)
      abb76(17)=es12*abb76(15)*abb76(17)
      abb76(17)=abb76(17)+abb76(28)+abb76(31)
      abb76(17)=8.0_ki*abb76(17)
      abb76(18)=16.0_ki*spak4l5
      abb76(28)=-abb76(21)*abb76(18)
      abb76(27)=abb76(19)*abb76(2)*abb76(27)*abb76(7)**2
      abb76(31)=abb76(27)*abb76(9)
      abb76(36)=abb76(18)*abb76(31)
      abb76(37)=mB**2
      abb76(38)=abb76(37)*abb76(15)
      abb76(39)=abb76(38)*abb76(30)
      abb76(40)=-spak1k4*abb76(39)
      abb76(41)=abb76(15)*spak1k4
      abb76(42)=spak2l5*spbl6k2*abb76(41)
      abb76(40)=abb76(40)+abb76(42)
      abb76(40)=16.0_ki*abb76(40)
      abb76(42)=8.0_ki*spak4l5
      abb76(43)=-abb76(21)*abb76(42)
      abb76(44)=abb76(13)*c3
      abb76(20)=NC*abb76(20)*abb76(44)
      abb76(44)=2.0_ki*abb76(44)
      abb76(22)=abb76(22)*abb76(44)
      abb76(45)=abb76(13)*abb76(7)
      abb76(46)=abb76(45)*c4
      abb76(26)=mB*abb76(46)*abb76(26)*abb76(2)
      abb76(20)=abb76(20)+abb76(26)-abb76(22)
      abb76(22)=abb76(20)*abb76(42)
      abb76(26)=spbk7k3*abb76(22)
      abb76(47)=spbl6k3*abb76(22)
      abb76(48)=8.0_ki*spak4k7
      abb76(49)=abb76(21)*abb76(48)
      abb76(21)=8.0_ki*abb76(21)
      abb76(50)=spak4l6*abb76(21)
      abb76(51)=-16.0_ki*abb76(41)
      abb76(22)=spbl5k2*abb76(22)
      abb76(52)=abb76(20)*spak4l5
      abb76(53)=-spbl5k3*abb76(52)
      abb76(54)=spak2k4*abb76(9)
      abb76(27)=abb76(27)*abb76(54)
      abb76(27)=abb76(27)+abb76(53)
      abb76(27)=8.0_ki*abb76(27)
      abb76(35)=abb76(35)*NC
      abb76(53)=abb76(33)*c4
      abb76(53)=abb76(35)+abb76(53)
      abb76(13)=abb76(13)*abb76(53)
      abb76(25)=abb76(44)*abb76(25)
      abb76(13)=-abb76(25)+abb76(13)
      abb76(44)=abb76(13)*spbl6k3
      abb76(53)=abb76(44)*spak1k4
      abb76(53)=16.0_ki*abb76(53)
      abb76(55)=abb76(13)*spak1k4
      abb76(56)=8.0_ki*abb76(55)
      abb76(57)=-spbk7k3*abb76(56)
      abb76(56)=spbl5k3*abb76(56)
      abb76(21)=spak1k4*abb76(21)
      abb76(58)=abb76(10)*abb76(6)
      abb76(59)=-abb76(58)*abb76(37)
      abb76(60)=abb76(37)*abb76(7)
      abb76(61)=abb76(9)*abb76(60)
      abb76(59)=abb76(59)+abb76(61)+1.0_ki
      abb76(19)=abb76(19)*abb76(59)
      abb76(59)=-NC+2.0_ki*abb76(3)
      abb76(59)=abb76(59)*c3
      abb76(61)=-c4*abb76(32)
      abb76(59)=abb76(61)+abb76(59)
      abb76(11)=spbk7k3*abb76(11)*spak1k2*abb76(12)*abb76(59)
      abb76(12)=-spak1l5*spbl5k3*abb76(13)
      abb76(59)=spak1l6*abb76(44)
      abb76(11)=abb76(59)+abb76(12)+abb76(11)+abb76(19)
      abb76(11)=8.0_ki*abb76(11)
      abb76(12)=-8.0_ki*abb76(20)
      abb76(19)=-spak1l5*spbk3k1
      abb76(59)=spal5k7*spbk7k3
      abb76(61)=spal5l6*spbl6k3
      abb76(19)=abb76(61)+abb76(59)+abb76(19)
      abb76(19)=abb76(20)*abb76(19)
      abb76(20)=-spak2l5*abb76(31)
      abb76(19)=abb76(20)+abb76(19)+abb76(24)
      abb76(19)=8.0_ki*abb76(19)
      abb76(20)=abb76(58)*abb76(38)
      abb76(24)=abb76(60)*abb76(15)
      abb76(31)=abb76(9)*abb76(24)
      abb76(31)=-abb76(20)+abb76(31)
      abb76(31)=spak1k4*abb76(31)
      abb76(31)=abb76(41)+abb76(31)
      abb76(31)=8.0_ki*abb76(31)
      abb76(58)=abb76(15)*spak2l5
      abb76(59)=spbl6k2*abb76(58)
      abb76(39)=-abb76(39)+abb76(59)
      abb76(39)=abb76(39)*abb76(48)
      abb76(59)=abb76(15)*abb76(48)
      abb76(48)=-abb76(44)*abb76(48)
      abb76(38)=abb76(6)*abb76(38)
      abb76(38)=abb76(38)-abb76(58)
      abb76(29)=abb76(38)*abb76(29)
      abb76(14)=abb76(14)*abb76(32)
      abb76(14)=-abb76(14)+abb76(16)
      abb76(16)=abb76(23)*abb76(37)
      abb76(16)=abb76(16)-abb76(34)
      abb76(14)=es12*abb76(14)*abb76(16)
      abb76(14)=abb76(29)+abb76(14)
      abb76(14)=8.0_ki*abb76(14)
      abb76(16)=-abb76(15)*abb76(18)
      abb76(20)=abb76(15)-abb76(20)
      abb76(20)=abb76(20)*abb76(18)
      abb76(23)=-abb76(15)*abb76(42)
      abb76(29)=spbl5k2*abb76(13)*abb76(42)
      abb76(32)=abb76(24)*abb76(54)
      abb76(34)=-spak4l6*abb76(44)
      abb76(38)=-spbk3k1*abb76(55)
      abb76(34)=abb76(38)-abb76(32)+abb76(34)
      abb76(34)=8.0_ki*abb76(34)
      abb76(38)=8.0_ki*abb76(41)
      abb76(41)=abb76(13)*spbl6k2
      abb76(44)=abb76(41)*abb76(18)
      abb76(30)=abb76(30)*abb76(13)*abb76(37)
      abb76(55)=abb76(10)*abb76(30)
      abb76(55)=abb76(55)-abb76(41)
      abb76(18)=abb76(55)*abb76(18)
      abb76(42)=abb76(42)*abb76(41)
      abb76(55)=spak2k4*abb76(55)
      abb76(58)=-spbl6l5*spak4l5*abb76(13)
      abb76(55)=abb76(58)+abb76(55)
      abb76(55)=8.0_ki*abb76(55)
      abb76(15)=abb76(6)*abb76(7)*abb76(15)*mB**4
      abb76(24)=-spak2l5*abb76(24)
      abb76(15)=abb76(15)+abb76(24)
      abb76(15)=spak2k4*abb76(15)
      abb76(24)=spbk3k1*abb76(52)
      abb76(15)=abb76(15)+abb76(24)
      abb76(15)=8.0_ki*abb76(15)
      abb76(24)=8.0_ki*abb76(32)
      abb76(32)=abb76(46)*abb76(33)
      abb76(33)=abb76(45)*abb76(35)
      abb76(32)=abb76(33)+abb76(32)
      abb76(32)=abb76(37)*abb76(32)
      abb76(25)=-abb76(25)*abb76(60)
      abb76(25)=abb76(25)+abb76(32)
      abb76(25)=8.0_ki*spbl6k3*abb76(25)*abb76(54)
      abb76(32)=spak2l5*abb76(41)
      abb76(30)=-abb76(30)+abb76(32)
      abb76(30)=8.0_ki*abb76(30)
      abb76(13)=-8.0_ki*abb76(13)
      R2d76=0.0_ki
      rat2 = rat2 + R2d76
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='76' value='", &
          & R2d76, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd76h2
