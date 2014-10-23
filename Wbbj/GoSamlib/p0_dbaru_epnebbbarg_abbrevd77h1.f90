module     p0_dbaru_epnebbbarg_abbrevd77h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(48), public :: abb77
   complex(ki), public :: R2d77
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
      abb77(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb77(2)=sqrt(mB**2)
      abb77(3)=NC**(-1)
      abb77(4)=sqrt2**(-1)
      abb77(5)=es71**(-1)
      abb77(6)=spak2l5**(-1)
      abb77(7)=spbl6k2**(-1)
      abb77(8)=spak2k7**(-1)
      abb77(9)=spak2l6**(-1)
      abb77(10)=TR*gW
      abb77(10)=abb77(10)**2*i_*CVDU*abb77(4)*abb77(1)
      abb77(11)=spbk7k1*abb77(5)
      abb77(12)=abb77(10)*abb77(11)*abb77(8)
      abb77(13)=abb77(3)*spak1k2
      abb77(14)=abb77(12)*abb77(13)**2
      abb77(15)=abb77(12)*spak1k2**2
      abb77(16)=abb77(14)+abb77(15)
      abb77(17)=abb77(2)*abb77(6)
      abb77(18)=abb77(17)*spbk3k2
      abb77(19)=abb77(18)*c4
      abb77(20)=mB**3
      abb77(21)=abb77(19)*abb77(20)
      abb77(22)=abb77(16)*abb77(21)
      abb77(20)=abb77(20)*abb77(18)
      abb77(23)=2.0_ki*c3
      abb77(24)=abb77(23)*abb77(3)
      abb77(25)=abb77(15)*abb77(24)
      abb77(26)=abb77(20)*abb77(25)
      abb77(26)=abb77(22)-abb77(26)
      abb77(27)=abb77(26)*abb77(7)
      abb77(28)=abb77(15)*mB
      abb77(29)=mB*abb77(14)
      abb77(29)=abb77(29)+abb77(28)
      abb77(30)=abb77(29)*abb77(19)
      abb77(28)=abb77(28)*abb77(24)
      abb77(31)=abb77(28)*abb77(18)
      abb77(31)=abb77(30)-abb77(31)
      abb77(32)=abb77(31)*spak2l6
      abb77(27)=abb77(27)-abb77(32)
      abb77(32)=-spak4l5*spbl5k2
      abb77(33)=-spbk7k2*spak4k7
      abb77(32)=abb77(32)+abb77(33)
      abb77(27)=abb77(27)*abb77(32)
      abb77(12)=spak1k2*abb77(12)
      abb77(32)=abb77(3)**2
      abb77(32)=abb77(32)+1.0_ki
      abb77(33)=abb77(12)*abb77(32)
      abb77(21)=abb77(33)*abb77(21)
      abb77(12)=abb77(24)*abb77(12)
      abb77(34)=-abb77(12)*abb77(20)
      abb77(21)=abb77(21)+abb77(34)
      abb77(21)=abb77(7)*abb77(21)
      abb77(34)=mB*abb77(33)
      abb77(19)=-abb77(34)*abb77(19)
      abb77(35)=abb77(12)*mB
      abb77(36)=abb77(18)*abb77(35)
      abb77(19)=abb77(19)+abb77(36)
      abb77(19)=spak2l6*abb77(19)
      abb77(19)=abb77(21)+abb77(19)
      abb77(19)=es12*spak1k4*abb77(19)
      abb77(19)=abb77(19)+abb77(27)
      abb77(19)=8.0_ki*abb77(19)
      abb77(21)=16.0_ki*spak4l6*abb77(31)
      abb77(27)=spbk3k2*abb77(6)
      abb77(36)=abb77(27)*c4
      abb77(37)=mB**4
      abb77(38)=abb77(36)*abb77(37)
      abb77(39)=-abb77(33)*abb77(38)
      abb77(37)=abb77(37)*abb77(27)
      abb77(40)=abb77(12)*abb77(37)
      abb77(39)=abb77(39)+abb77(40)
      abb77(40)=abb77(9)*abb77(7)
      abb77(39)=abb77(39)*abb77(40)
      abb77(41)=mB**2
      abb77(42)=abb77(41)*abb77(33)
      abb77(43)=abb77(42)*c4
      abb77(44)=abb77(12)*abb77(41)
      abb77(43)=abb77(43)-abb77(44)
      abb77(45)=abb77(27)*abb77(43)
      abb77(39)=abb77(39)+abb77(45)
      abb77(39)=spak2k4*abb77(39)
      abb77(45)=abb77(12)*spbk3k2
      abb77(46)=spbk3k2*c4
      abb77(47)=abb77(33)*abb77(46)
      abb77(45)=abb77(45)-abb77(47)
      abb77(44)=abb77(44)*spbk3k2
      abb77(42)=abb77(42)*abb77(46)
      abb77(42)=abb77(44)-abb77(42)
      abb77(44)=abb77(42)*abb77(40)
      abb77(44)=abb77(44)-abb77(45)
      abb77(47)=spbk7l5*spak4k7
      abb77(44)=abb77(44)*abb77(47)
      abb77(45)=spak1k4*abb77(45)
      abb77(48)=abb77(40)*spak1k4
      abb77(42)=-abb77(42)*abb77(48)
      abb77(42)=abb77(45)+abb77(42)
      abb77(42)=spbl5k1*abb77(42)
      abb77(39)=abb77(42)+abb77(44)+abb77(39)
      abb77(39)=spak1l6*abb77(39)
      abb77(26)=abb77(26)*abb77(40)
      abb77(26)=abb77(26)-abb77(31)
      abb77(26)=spak4l6*abb77(26)
      abb77(26)=abb77(26)+abb77(39)
      abb77(26)=16.0_ki*abb77(26)
      abb77(31)=8.0_ki*abb77(31)
      abb77(39)=spak4l6*abb77(31)
      abb77(42)=-spak4k7*abb77(31)
      abb77(44)=-spak4l5*abb77(31)
      abb77(45)=abb77(17)*c4
      abb77(29)=abb77(29)*abb77(45)
      abb77(28)=abb77(28)*abb77(17)
      abb77(28)=abb77(28)-abb77(29)
      abb77(29)=8.0_ki*spbl6k2*spak4l6*abb77(28)
      abb77(38)=abb77(16)*abb77(38)
      abb77(20)=-abb77(37)-abb77(20)
      abb77(37)=abb77(15)*abb77(3)
      abb77(20)=abb77(23)*abb77(20)*abb77(37)
      abb77(20)=abb77(20)+abb77(38)+abb77(22)
      abb77(20)=abb77(20)*abb77(40)
      abb77(14)=abb77(14)*abb77(41)
      abb77(22)=abb77(41)*abb77(15)
      abb77(14)=abb77(14)+abb77(22)
      abb77(36)=-abb77(14)*abb77(36)
      abb77(27)=abb77(3)*abb77(27)*abb77(22)
      abb77(18)=abb77(18)*mB*abb77(37)
      abb77(18)=abb77(27)+abb77(18)
      abb77(18)=abb77(18)*abb77(23)
      abb77(27)=abb77(34)*abb77(45)
      abb77(37)=abb77(35)*abb77(17)
      abb77(27)=abb77(27)-abb77(37)
      abb77(37)=spak1l5*spbl5k3*abb77(27)
      abb77(18)=abb77(37)+abb77(20)+abb77(18)+abb77(36)-abb77(30)
      abb77(18)=spak2k4*abb77(18)
      abb77(10)=abb77(10)*mB
      abb77(13)=abb77(13)*abb77(10)*abb77(17)*abb77(23)
      abb77(10)=abb77(45)*abb77(32)*abb77(10)*spak1k2
      abb77(10)=abb77(10)-abb77(13)
      abb77(11)=-spak1k4*abb77(11)*abb77(10)
      abb77(10)=-spak2k4*abb77(8)*abb77(10)
      abb77(10)=abb77(11)+abb77(10)
      abb77(10)=spbk7k3*abb77(10)
      abb77(11)=-c4*abb77(34)
      abb77(11)=abb77(11)+abb77(35)
      abb77(11)=spbl5k3*abb77(2)*abb77(11)
      abb77(13)=-spbk3k1*abb77(28)
      abb77(11)=abb77(13)+abb77(11)
      abb77(11)=spak1k4*abb77(11)
      abb77(13)=abb77(16)*abb77(46)
      abb77(17)=abb77(24)*spbk3k2
      abb77(15)=abb77(17)*abb77(15)
      abb77(13)=abb77(15)-abb77(13)
      abb77(15)=abb77(14)*abb77(46)
      abb77(17)=abb77(22)*abb77(17)
      abb77(15)=abb77(17)-abb77(15)
      abb77(17)=-abb77(15)*abb77(40)
      abb77(17)=abb77(17)+abb77(13)
      abb77(17)=abb77(17)*abb77(47)
      abb77(13)=-spak1k4*abb77(13)
      abb77(15)=abb77(15)*abb77(48)
      abb77(13)=abb77(13)+abb77(15)
      abb77(13)=spbl5k1*abb77(13)
      abb77(15)=-spak2k4*spak1l6
      abb77(20)=spak2l6*spak1k4
      abb77(15)=abb77(15)+abb77(20)
      abb77(15)=spbl6k3*abb77(27)*abb77(15)
      abb77(10)=abb77(15)+abb77(10)+abb77(13)+abb77(17)+abb77(18)+abb77(11)
      abb77(10)=8.0_ki*abb77(10)
      abb77(11)=abb77(33)*c4
      abb77(11)=abb77(11)-abb77(12)
      abb77(12)=abb77(11)*spak1k4
      abb77(13)=16.0_ki*spbl5k3
      abb77(15)=abb77(13)*abb77(12)
      abb77(17)=abb77(43)*abb77(40)
      abb77(18)=spak1k4*abb77(17)
      abb77(18)=-abb77(12)+abb77(18)
      abb77(18)=abb77(18)*abb77(13)
      abb77(20)=8.0_ki*spbl5k3
      abb77(22)=abb77(12)*abb77(20)
      abb77(23)=-spak1k4*abb77(31)
      abb77(17)=abb77(17)-abb77(11)
      abb77(24)=abb77(17)*spak1l6
      abb77(27)=16.0_ki*spbl5k2*abb77(24)
      abb77(16)=c4*abb77(16)
      abb77(14)=-c4*abb77(14)
      abb77(30)=abb77(41)*abb77(25)
      abb77(14)=abb77(14)+abb77(30)
      abb77(14)=abb77(14)*abb77(40)
      abb77(14)=abb77(14)+abb77(16)-abb77(25)
      abb77(14)=spbl5k2*abb77(14)
      abb77(14)=abb77(14)-abb77(28)
      abb77(14)=8.0_ki*abb77(14)
      abb77(16)=abb77(13)*abb77(11)
      abb77(25)=-spak1l6*abb77(16)
      abb77(13)=-abb77(13)*abb77(24)
      abb77(24)=-spak1l6*abb77(11)*abb77(20)
      abb77(16)=spak4l6*abb77(16)
      abb77(28)=-spak2k4*abb77(6)*abb77(43)
      abb77(30)=-abb77(11)*abb77(47)
      abb77(12)=spbl5k1*abb77(12)
      abb77(12)=abb77(12)+abb77(28)+abb77(30)
      abb77(12)=8.0_ki*abb77(12)
      abb77(17)=-spak2k4*abb77(17)*abb77(20)
      abb77(11)=8.0_ki*abb77(11)
      R2d77=0.0_ki
      rat2 = rat2 + R2d77
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='77' value='", &
          & R2d77, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd77h1
