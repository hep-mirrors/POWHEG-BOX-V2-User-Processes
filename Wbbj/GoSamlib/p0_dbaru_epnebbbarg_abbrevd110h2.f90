module     p0_dbaru_epnebbbarg_abbrevd110h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(54), public :: abb110
   complex(ki), public :: R2d110
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
      abb110(1)=1.0_ki/(-es71+es712-es12)
      abb110(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb110(3)=1.0_ki/(es34+es567-es12-es234)
      abb110(4)=sqrt(mB**2)
      abb110(5)=NC**(-1)
      abb110(6)=spbl5k2**(-1)
      abb110(7)=spak2l6**(-1)
      abb110(8)=spbl6k2**(-1)
      abb110(9)=abb110(4)*abb110(6)
      abb110(10)=abb110(5)*mB
      abb110(11)=abb110(9)*abb110(10)
      abb110(12)=2.0_ki*c1
      abb110(13)=TR*gW
      abb110(13)=CVDU*i_*spak1k4*abb110(3)*abb110(2)*abb110(1)*abb110(13)**2
      abb110(14)=abb110(13)*spbe7k2
      abb110(15)=abb110(12)*abb110(14)
      abb110(16)=abb110(15)*spae7k7
      abb110(17)=abb110(11)*abb110(16)
      abb110(18)=abb110(17)*spbk4k3
      abb110(19)=abb110(5)**2
      abb110(19)=abb110(19)+1.0_ki
      abb110(20)=abb110(14)*abb110(19)
      abb110(21)=mB*abb110(20)
      abb110(22)=abb110(21)*abb110(9)
      abb110(23)=spbk4k3*c4
      abb110(24)=abb110(23)*spae7k7
      abb110(25)=abb110(22)*abb110(24)
      abb110(18)=abb110(25)-abb110(18)
      abb110(25)=spak4k7*spbk7k2
      abb110(26)=-spak4l6*spbl6k2
      abb110(26)=abb110(26)-abb110(25)
      abb110(26)=abb110(18)*abb110(26)
      abb110(17)=abb110(17)*spbk3k1
      abb110(27)=spbk3k1*c4
      abb110(28)=abb110(27)*spae7k7
      abb110(29)=abb110(22)*abb110(28)
      abb110(17)=abb110(29)-abb110(17)
      abb110(29)=spak1k7*spbk7k2
      abb110(30)=-spak1l6*spbl6k2
      abb110(30)=abb110(30)-abb110(29)
      abb110(30)=abb110(17)*abb110(30)
      abb110(31)=abb110(21)*abb110(4)*spae7k7
      abb110(32)=abb110(23)*abb110(31)
      abb110(10)=abb110(10)*abb110(4)
      abb110(33)=abb110(16)*abb110(10)
      abb110(34)=-spbk4k3*abb110(33)
      abb110(32)=abb110(32)+abb110(34)
      abb110(32)=spak4l5*abb110(32)
      abb110(31)=abb110(27)*abb110(31)
      abb110(33)=-spbk3k1*abb110(33)
      abb110(31)=abb110(31)+abb110(33)
      abb110(31)=spak1l5*abb110(31)
      abb110(26)=abb110(30)+abb110(26)+abb110(32)+abb110(31)
      abb110(26)=4.0_ki*spbk7l6*abb110(26)
      abb110(30)=abb110(13)*abb110(19)
      abb110(31)=mB*abb110(30)
      abb110(9)=abb110(31)*abb110(9)
      abb110(32)=abb110(23)*abb110(9)
      abb110(33)=abb110(11)*abb110(13)
      abb110(34)=abb110(12)*spbk4k3
      abb110(35)=abb110(34)*abb110(33)
      abb110(32)=abb110(32)-abb110(35)
      abb110(35)=abb110(32)*abb110(25)
      abb110(9)=abb110(27)*abb110(9)
      abb110(36)=abb110(12)*spbk3k1
      abb110(33)=abb110(36)*abb110(33)
      abb110(9)=abb110(9)-abb110(33)
      abb110(33)=abb110(9)*abb110(29)
      abb110(33)=abb110(35)+abb110(33)
      abb110(33)=spbl6k2*abb110(33)
      abb110(35)=abb110(4)*abb110(7)
      abb110(31)=abb110(31)*abb110(35)
      abb110(37)=abb110(31)*abb110(23)
      abb110(10)=abb110(10)*abb110(7)
      abb110(38)=abb110(10)*abb110(13)
      abb110(34)=abb110(38)*abb110(34)
      abb110(34)=abb110(37)-abb110(34)
      abb110(34)=abb110(34)*spak4l5
      abb110(31)=abb110(31)*abb110(27)
      abb110(36)=abb110(38)*abb110(36)
      abb110(31)=abb110(31)-abb110(36)
      abb110(31)=abb110(31)*spak1l5
      abb110(31)=abb110(34)+abb110(31)
      abb110(34)=es71+es12-es712
      abb110(34)=-2.0_ki*abb110(34)
      abb110(34)=abb110(31)*abb110(34)
      abb110(33)=abb110(34)+abb110(33)
      abb110(33)=8.0_ki*abb110(33)
      abb110(34)=abb110(12)*abb110(5)
      abb110(36)=abb110(7)*abb110(6)
      abb110(37)=abb110(34)*abb110(36)
      abb110(38)=mB**2
      abb110(39)=abb110(14)*abb110(38)
      abb110(40)=abb110(37)*abb110(39)
      abb110(41)=abb110(40)*spae7k7
      abb110(42)=abb110(41)*spbk4k3
      abb110(43)=abb110(39)*abb110(19)
      abb110(44)=abb110(43)*abb110(23)
      abb110(45)=abb110(36)*spae7k7
      abb110(46)=abb110(44)*abb110(45)
      abb110(42)=abb110(46)-abb110(42)
      abb110(46)=abb110(42)*spak2k4
      abb110(41)=abb110(41)*spbk3k1
      abb110(43)=abb110(43)*abb110(27)
      abb110(45)=abb110(43)*abb110(45)
      abb110(41)=abb110(45)-abb110(41)
      abb110(45)=abb110(41)*spak1k2
      abb110(45)=abb110(46)-abb110(45)
      abb110(46)=spbk7k2*abb110(45)
      abb110(47)=abb110(28)*abb110(20)
      abb110(16)=abb110(16)*abb110(5)
      abb110(48)=abb110(16)*spbk3k1
      abb110(47)=abb110(47)-abb110(48)
      abb110(48)=abb110(47)*spak1l5
      abb110(49)=abb110(24)*abb110(20)
      abb110(16)=abb110(16)*spbk4k3
      abb110(16)=abb110(49)-abb110(16)
      abb110(16)=abb110(16)*spak4l5
      abb110(48)=abb110(48)+abb110(16)
      abb110(49)=abb110(48)*spbk7l6
      abb110(46)=abb110(49)+abb110(46)
      abb110(11)=abb110(11)*abb110(15)
      abb110(50)=abb110(11)*spbk3k1
      abb110(51)=abb110(22)*abb110(27)
      abb110(50)=abb110(51)-abb110(50)
      abb110(51)=abb110(50)*spak1e7
      abb110(11)=abb110(11)*spbk4k3
      abb110(22)=abb110(22)*abb110(23)
      abb110(11)=abb110(22)-abb110(11)
      abb110(22)=abb110(11)*spak4e7
      abb110(22)=abb110(51)+abb110(22)
      abb110(22)=abb110(22)*spbl6k2
      abb110(51)=-abb110(22)+abb110(46)
      abb110(51)=8.0_ki*abb110(51)
      abb110(49)=8.0_ki*abb110(49)
      abb110(22)=8.0_ki*abb110(22)
      abb110(38)=abb110(38)*abb110(13)
      abb110(37)=abb110(37)*abb110(38)
      abb110(52)=spbk4k3*abb110(37)
      abb110(19)=abb110(36)*abb110(38)*abb110(19)
      abb110(38)=abb110(19)*abb110(23)
      abb110(38)=abb110(52)-abb110(38)
      abb110(52)=-abb110(38)*abb110(25)
      abb110(37)=spbk3k1*abb110(37)
      abb110(19)=abb110(19)*abb110(27)
      abb110(19)=abb110(37)-abb110(19)
      abb110(37)=-abb110(19)*abb110(29)
      abb110(37)=abb110(52)+abb110(37)
      abb110(37)=16.0_ki*abb110(37)
      abb110(52)=abb110(40)*spbk4k3
      abb110(53)=abb110(44)*abb110(36)
      abb110(52)=abb110(52)-abb110(53)
      abb110(53)=abb110(52)*spak4e7
      abb110(40)=abb110(40)*spbk3k1
      abb110(36)=abb110(43)*abb110(36)
      abb110(36)=abb110(40)-abb110(36)
      abb110(40)=abb110(36)*spak1e7
      abb110(40)=abb110(53)+abb110(40)
      abb110(40)=16.0_ki*abb110(40)
      abb110(46)=4.0_ki*abb110(46)
      abb110(53)=abb110(20)*abb110(27)
      abb110(15)=abb110(15)*abb110(5)
      abb110(54)=abb110(15)*spbk3k1
      abb110(53)=abb110(53)-abb110(54)
      abb110(53)=abb110(53)*spak1l5
      abb110(20)=abb110(20)*abb110(23)
      abb110(15)=abb110(15)*spbk4k3
      abb110(15)=abb110(20)-abb110(15)
      abb110(15)=abb110(15)*spak4l5
      abb110(15)=abb110(53)+abb110(15)
      abb110(20)=8.0_ki*abb110(15)
      abb110(32)=-spak4k7*abb110(32)
      abb110(9)=-spak1k7*abb110(9)
      abb110(9)=abb110(9)+abb110(32)
      abb110(9)=spbk7e7*abb110(9)
      abb110(11)=spak2k4*abb110(11)
      abb110(32)=-spak1k2*abb110(50)
      abb110(9)=abb110(11)+abb110(32)+abb110(9)
      abb110(9)=spbl6k2*abb110(9)
      abb110(11)=spak2k7*spbk7e7*abb110(31)
      abb110(9)=2.0_ki*abb110(11)+abb110(9)
      abb110(9)=4.0_ki*abb110(9)
      abb110(11)=abb110(52)*spak2k4
      abb110(31)=abb110(36)*spak1k2
      abb110(11)=abb110(11)-abb110(31)
      abb110(31)=8.0_ki*abb110(11)
      abb110(32)=spak4k7*abb110(38)
      abb110(36)=spak1k7*abb110(19)
      abb110(32)=abb110(36)+abb110(32)
      abb110(32)=spbk7e7*abb110(32)
      abb110(11)=abb110(32)-abb110(11)
      abb110(11)=8.0_ki*abb110(11)
      abb110(13)=abb110(34)*abb110(13)
      abb110(32)=abb110(13)*spbk4k3
      abb110(23)=abb110(30)*abb110(23)
      abb110(23)=abb110(32)-abb110(23)
      abb110(23)=abb110(23)*spak4l5
      abb110(13)=abb110(13)*spbk3k1
      abb110(27)=abb110(30)*abb110(27)
      abb110(13)=abb110(13)-abb110(27)
      abb110(13)=abb110(13)*spak1l5
      abb110(13)=abb110(23)+abb110(13)
      abb110(23)=8.0_ki*spbk7k2
      abb110(27)=abb110(13)*abb110(23)
      abb110(30)=4.0_ki*spbk7e7
      abb110(13)=-abb110(13)*abb110(30)
      abb110(32)=abb110(38)*spak2k4
      abb110(19)=abb110(19)*spak1k2
      abb110(19)=abb110(32)-abb110(19)
      abb110(23)=-abb110(19)*abb110(23)
      abb110(19)=abb110(19)*abb110(30)
      abb110(30)=4.0_ki*spbl6k2*abb110(45)
      abb110(32)=4.0_ki*spbk7k2
      abb110(18)=-abb110(18)*abb110(32)
      abb110(36)=spak4l6*abb110(42)
      abb110(38)=spak1l6*abb110(41)
      abb110(16)=abb110(38)+abb110(36)+abb110(16)
      abb110(16)=spbl6k2*abb110(16)
      abb110(36)=spae7k7*abb110(7)
      abb110(38)=abb110(5)*abb110(39)*abb110(36)
      abb110(10)=abb110(10)*abb110(14)*spae7k7
      abb110(10)=abb110(38)-abb110(10)
      abb110(10)=abb110(10)*abb110(12)
      abb110(12)=spbk3k1*abb110(10)
      abb110(14)=spbl6k2*abb110(47)
      abb110(38)=-abb110(43)*abb110(36)
      abb110(21)=abb110(21)*abb110(35)
      abb110(28)=abb110(28)*abb110(21)
      abb110(12)=abb110(14)+abb110(12)+abb110(38)+abb110(28)
      abb110(12)=spak1l5*abb110(12)
      abb110(10)=spbk4k3*abb110(10)
      abb110(14)=-abb110(44)*abb110(36)
      abb110(21)=abb110(24)*abb110(21)
      abb110(10)=abb110(10)+abb110(14)+abb110(21)
      abb110(10)=spak4l5*abb110(10)
      abb110(14)=abb110(42)*abb110(25)
      abb110(21)=abb110(41)*abb110(29)
      abb110(10)=abb110(21)+abb110(14)+abb110(12)+abb110(10)+abb110(16)
      abb110(10)=4.0_ki*abb110(10)
      abb110(12)=abb110(34)*abb110(39)
      abb110(14)=-spbk4k3*abb110(12)
      abb110(14)=abb110(44)+abb110(14)
      abb110(14)=spak4l5*abb110(14)
      abb110(12)=-spbk3k1*abb110(12)
      abb110(12)=abb110(43)+abb110(12)
      abb110(12)=spak1l5*abb110(12)
      abb110(12)=abb110(14)+abb110(12)
      abb110(12)=abb110(8)*abb110(36)*abb110(12)
      abb110(12)=abb110(12)-abb110(48)
      abb110(12)=4.0_ki*spbk7k2*abb110(12)
      abb110(14)=4.0_ki*abb110(15)
      abb110(15)=-abb110(17)*abb110(32)
      R2d110=0.0_ki
      rat2 = rat2 + R2d110
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='110' value='", &
          & R2d110, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd110h2
