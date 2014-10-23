module     p0_dbaru_epnebbbarg_abbrevd301h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(46), public :: abb301
   complex(ki), public :: R2d301
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
      abb301(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb301(2)=1.0_ki/(es34+es567-es12-es234)
      abb301(3)=NC**(-1)
      abb301(4)=sqrt2**(-1)
      abb301(5)=spak2l6**(-1)
      abb301(6)=spak2k7**(-1)
      abb301(7)=sqrt(mB**2)
      abb301(8)=spak2l5**(-1)
      abb301(9)=spbl5k2**(-1)
      abb301(10)=abb301(6)*abb301(3)
      abb301(11)=TR*gW
      abb301(11)=CVDU*i_*spak1k4*abb301(4)*abb301(2)*abb301(1)*abb301(11)**2
      abb301(12)=abb301(10)*abb301(11)
      abb301(13)=abb301(12)*spbk3k1
      abb301(14)=c1+c3
      abb301(15)=-abb301(13)*abb301(14)
      abb301(16)=c4*abb301(3)**2
      abb301(17)=abb301(16)*abb301(6)
      abb301(18)=abb301(11)*spbk3k1
      abb301(19)=abb301(17)*abb301(18)
      abb301(15)=abb301(19)+abb301(15)
      abb301(19)=abb301(15)*abb301(7)
      abb301(20)=spak1k2*spbl5k2
      abb301(21)=abb301(19)*abb301(20)
      abb301(12)=abb301(12)*spbk4k3
      abb301(22)=abb301(12)*abb301(14)
      abb301(23)=abb301(11)*spbk4k3
      abb301(24)=abb301(17)*abb301(23)
      abb301(22)=abb301(22)-abb301(24)
      abb301(22)=abb301(22)*abb301(7)
      abb301(24)=spak2k4*spbl5k2
      abb301(25)=abb301(22)*abb301(24)
      abb301(21)=abb301(21)+abb301(25)
      abb301(25)=abb301(21)*spbk7l6
      abb301(26)=abb301(14)*abb301(10)*abb301(5)
      abb301(27)=abb301(17)*abb301(5)
      abb301(26)=abb301(26)-abb301(27)
      abb301(27)=abb301(11)*mB
      abb301(28)=abb301(27)*spbk4k3
      abb301(29)=abb301(28)*abb301(26)
      abb301(30)=abb301(29)*spbk7l5
      abb301(31)=abb301(30)*abb301(24)
      abb301(27)=abb301(27)*spbk3k1
      abb301(26)=abb301(27)*abb301(26)
      abb301(32)=abb301(26)*spbk7l5
      abb301(33)=abb301(32)*abb301(20)
      abb301(31)=abb301(31)-abb301(33)
      abb301(31)=abb301(31)*spak2l5
      abb301(25)=abb301(31)+abb301(25)
      abb301(31)=es71+es12-es712
      abb301(33)=-8.0_ki*abb301(31)*abb301(25)
      abb301(30)=abb301(30)*spak2k4
      abb301(32)=abb301(32)*spak1k2
      abb301(30)=abb301(30)-abb301(32)
      abb301(30)=16.0_ki*abb301(30)*abb301(31)
      abb301(32)=abb301(8)*abb301(14)
      abb301(34)=mB**3
      abb301(35)=abb301(32)*abb301(34)*abb301(5)
      abb301(36)=abb301(12)*abb301(35)
      abb301(17)=abb301(17)*abb301(8)
      abb301(11)=abb301(17)*abb301(11)*abb301(5)
      abb301(34)=abb301(11)*abb301(34)
      abb301(37)=abb301(34)*spbk4k3
      abb301(36)=abb301(36)-abb301(37)
      abb301(37)=abb301(36)*spak2k4
      abb301(35)=abb301(13)*abb301(35)
      abb301(34)=abb301(34)*spbk3k1
      abb301(34)=abb301(35)-abb301(34)
      abb301(35)=abb301(34)*spak1k2
      abb301(35)=abb301(37)-abb301(35)
      abb301(35)=abb301(9)*abb301(35)*abb301(31)
      abb301(37)=abb301(3)*abb301(32)
      abb301(38)=abb301(16)*abb301(8)
      abb301(37)=abb301(37)-abb301(38)
      abb301(38)=abb301(37)*abb301(28)
      abb301(39)=spak4l5*abb301(38)
      abb301(37)=abb301(37)*abb301(27)
      abb301(40)=spak1l5*abb301(37)
      abb301(39)=abb301(40)+abb301(39)
      abb301(39)=spbk7l6*abb301(39)
      abb301(39)=-abb301(35)+abb301(39)
      abb301(39)=spbk7l5*abb301(39)
      abb301(39)=-abb301(25)+abb301(39)
      abb301(39)=16.0_ki*abb301(39)
      abb301(25)=8.0_ki*abb301(25)
      abb301(14)=abb301(3)*abb301(14)
      abb301(14)=abb301(14)-abb301(16)
      abb301(16)=abb301(5)*abb301(14)
      abb301(40)=abb301(28)*abb301(16)
      abb301(41)=-spak2k4*abb301(40)
      abb301(16)=abb301(27)*abb301(16)
      abb301(42)=spak1k2*abb301(16)
      abb301(41)=abb301(41)+abb301(42)
      abb301(41)=8.0_ki*abb301(41)*spbk7l5**2
      abb301(40)=abb301(40)*spbk7l5
      abb301(38)=spbk7l6*abb301(38)
      abb301(38)=abb301(40)+abb301(38)
      abb301(38)=16.0_ki*abb301(38)
      abb301(42)=spbk7l6*abb301(31)
      abb301(43)=8.0_ki*abb301(22)*abb301(42)
      abb301(44)=spbk7l6*abb301(7)
      abb301(45)=abb301(44)*spbk7l5
      abb301(45)=8.0_ki*abb301(45)
      abb301(14)=abb301(14)*abb301(45)
      abb301(23)=-abb301(23)*abb301(14)
      abb301(45)=mB**2
      abb301(46)=abb301(45)*abb301(5)
      abb301(13)=-abb301(32)*abb301(13)*abb301(46)
      abb301(11)=abb301(11)*abb301(45)
      abb301(45)=abb301(11)*spbk3k1
      abb301(13)=abb301(45)+abb301(13)
      abb301(13)=abb301(13)*abb301(7)
      abb301(45)=abb301(26)*spbl5k2
      abb301(45)=abb301(45)-abb301(13)
      abb301(45)=abb301(45)*spak1k2
      abb301(12)=-abb301(32)*abb301(12)*abb301(46)
      abb301(11)=abb301(11)*spbk4k3
      abb301(11)=abb301(11)+abb301(12)
      abb301(11)=abb301(11)*abb301(7)
      abb301(12)=abb301(29)*spbl5k2
      abb301(12)=abb301(12)-abb301(11)
      abb301(12)=abb301(12)*spak2k4
      abb301(12)=abb301(45)-abb301(12)
      abb301(12)=abb301(12)*abb301(31)
      abb301(21)=-spbl6k2*abb301(21)
      abb301(45)=-spak2k4*abb301(29)
      abb301(46)=spak1k2*abb301(26)
      abb301(45)=abb301(45)+abb301(46)
      abb301(45)=spak2l5*abb301(45)*spbl5k2**2
      abb301(12)=abb301(21)+abb301(45)+abb301(12)
      abb301(12)=8.0_ki*abb301(12)
      abb301(20)=abb301(26)*abb301(20)
      abb301(21)=abb301(29)*abb301(24)
      abb301(20)=abb301(20)-abb301(21)
      abb301(21)=-16.0_ki*abb301(20)
      abb301(11)=abb301(11)+abb301(36)
      abb301(11)=spak2k4*abb301(11)
      abb301(13)=-abb301(13)-abb301(34)
      abb301(13)=spak1k2*abb301(13)
      abb301(10)=abb301(10)*abb301(32)
      abb301(10)=-abb301(17)+abb301(10)
      abb301(17)=-abb301(28)*abb301(10)
      abb301(24)=abb301(17)*spak4l5
      abb301(10)=-abb301(27)*abb301(10)
      abb301(27)=abb301(10)*spak1l5
      abb301(24)=abb301(24)+abb301(27)
      abb301(27)=-spbl6l5*abb301(24)
      abb301(11)=abb301(27)+abb301(11)+abb301(13)
      abb301(11)=16.0_ki*abb301(11)
      abb301(13)=-8.0_ki*abb301(20)
      abb301(20)=abb301(31)*abb301(17)
      abb301(20)=8.0_ki*abb301(20)
      abb301(27)=spbl6k2*abb301(22)
      abb301(28)=abb301(31)*abb301(29)
      abb301(27)=abb301(27)+abb301(28)
      abb301(27)=8.0_ki*abb301(27)
      abb301(32)=-32.0_ki*abb301(29)
      abb301(22)=-spbl6l5*abb301(22)
      abb301(22)=-abb301(40)+abb301(22)
      abb301(22)=8.0_ki*abb301(22)
      abb301(17)=-8.0_ki*abb301(17)
      abb301(34)=spbk7k2*abb301(35)
      abb301(35)=abb301(42)*abb301(24)
      abb301(34)=abb301(34)+abb301(35)
      abb301(34)=8.0_ki*abb301(34)
      abb301(28)=-8.0_ki*abb301(28)
      abb301(24)=8.0_ki*spbl6k2*abb301(24)
      abb301(29)=16.0_ki*abb301(29)
      abb301(16)=abb301(16)*spbk7l5
      abb301(35)=spbk7l6*abb301(37)
      abb301(35)=abb301(16)+abb301(35)
      abb301(35)=16.0_ki*abb301(35)
      abb301(36)=abb301(31)*abb301(10)
      abb301(36)=8.0_ki*abb301(36)
      abb301(37)=abb301(31)*abb301(26)
      abb301(40)=-8.0_ki*abb301(37)
      abb301(15)=-8.0_ki*abb301(31)*abb301(44)*abb301(15)
      abb301(31)=-spbl6k2*abb301(19)
      abb301(31)=abb301(31)+abb301(37)
      abb301(31)=8.0_ki*abb301(31)
      abb301(37)=-32.0_ki*abb301(26)
      abb301(14)=-abb301(18)*abb301(14)
      abb301(18)=spbl6l5*abb301(19)
      abb301(16)=-abb301(16)+abb301(18)
      abb301(16)=8.0_ki*abb301(16)
      abb301(10)=-8.0_ki*abb301(10)
      abb301(18)=16.0_ki*abb301(26)
      R2d301=0.0_ki
      rat2 = rat2 + R2d301
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='301' value='", &
          & R2d301, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd301h3
