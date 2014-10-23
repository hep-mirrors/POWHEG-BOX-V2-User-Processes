module     p0_dbaru_epnebbbarg_abbrevd301h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(53), public :: abb301
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
      abb301(5)=spak2k7**(-1)
      abb301(6)=sqrt(mB**2)
      abb301(7)=spbl6k2**(-1)
      abb301(8)=spak2l5**(-1)
      abb301(9)=spbl5k2**(-1)
      abb301(10)=c4*abb301(3)**2
      abb301(11)=abb301(10)*abb301(5)
      abb301(12)=TR*gW
      abb301(12)=CVDU*i_*spak1k4*abb301(4)*abb301(2)*abb301(1)*abb301(12)**2
      abb301(13)=abb301(12)*spbk4k3
      abb301(14)=abb301(11)*abb301(13)
      abb301(15)=abb301(12)*abb301(5)*abb301(3)
      abb301(16)=abb301(15)*c1
      abb301(17)=abb301(16)*spbk4k3
      abb301(15)=abb301(15)*c3
      abb301(18)=abb301(15)*spbk4k3
      abb301(14)=-abb301(18)+abb301(14)-abb301(17)
      abb301(17)=abb301(7)*mB
      abb301(18)=abb301(17)*spbl5k2
      abb301(19)=-abb301(18)*abb301(14)
      abb301(20)=abb301(19)*spak2k4
      abb301(12)=abb301(12)*spbk3k1
      abb301(11)=abb301(11)*abb301(12)
      abb301(16)=abb301(16)*spbk3k1
      abb301(15)=abb301(15)*spbk3k1
      abb301(11)=-abb301(15)+abb301(11)-abb301(16)
      abb301(15)=-abb301(18)*abb301(11)
      abb301(16)=abb301(15)*spak1k2
      abb301(16)=abb301(20)-abb301(16)
      abb301(18)=es71+es12-es712
      abb301(20)=abb301(6)*abb301(18)
      abb301(21)=spbk7k2*abb301(20)*abb301(16)
      abb301(22)=-spbl5k2*abb301(14)
      abb301(23)=abb301(22)*spak4l6
      abb301(24)=-spbl5k2*abb301(11)
      abb301(25)=abb301(24)*spak1l6
      abb301(23)=abb301(23)+abb301(25)
      abb301(25)=spbk7l5*abb301(18)
      abb301(26)=spak2l5*abb301(25)*abb301(23)
      abb301(21)=abb301(26)+abb301(21)
      abb301(21)=8.0_ki*abb301(21)
      abb301(26)=abb301(14)*spak4l6
      abb301(27)=abb301(11)*spak1l6
      abb301(26)=abb301(26)+abb301(27)
      abb301(25)=16.0_ki*abb301(25)*abb301(26)
      abb301(16)=abb301(16)*spbk7k2*abb301(6)
      abb301(27)=spak2l5*abb301(23)*spbk7l5
      abb301(16)=abb301(16)+abb301(27)
      abb301(27)=mB**2
      abb301(28)=abb301(27)*abb301(7)
      abb301(29)=-abb301(28)*abb301(14)
      abb301(30)=-spak4l5*abb301(29)
      abb301(31)=-abb301(28)*abb301(11)
      abb301(32)=-spak1l5*abb301(31)
      abb301(30)=abb301(32)+abb301(30)
      abb301(32)=es12+es71-es712
      abb301(32)=abb301(8)*abb301(32)
      abb301(33)=spbk7l5*abb301(32)
      abb301(30)=abb301(33)*abb301(30)
      abb301(34)=-abb301(27)*abb301(14)
      abb301(35)=spak4l6*abb301(34)
      abb301(27)=-abb301(27)*abb301(11)
      abb301(36)=spak1l6*abb301(27)
      abb301(35)=abb301(35)+abb301(36)
      abb301(33)=abb301(9)*abb301(33)*abb301(35)
      abb301(30)=abb301(33)+abb301(16)+abb301(30)
      abb301(30)=16.0_ki*abb301(30)
      abb301(16)=-8.0_ki*abb301(16)
      abb301(33)=abb301(18)*abb301(22)
      abb301(35)=-spak2k4*abb301(33)
      abb301(36)=abb301(18)*abb301(24)
      abb301(37)=spak1k2*abb301(36)
      abb301(35)=abb301(35)+abb301(37)
      abb301(35)=8.0_ki*abb301(35)
      abb301(37)=abb301(22)*spak2k4
      abb301(38)=abb301(24)*spak1k2
      abb301(37)=abb301(37)-abb301(38)
      abb301(38)=-16.0_ki*abb301(37)
      abb301(37)=8.0_ki*abb301(37)
      abb301(39)=c1+c3
      abb301(39)=abb301(39)*abb301(3)
      abb301(10)=abb301(39)-abb301(10)
      abb301(13)=abb301(13)*abb301(10)
      abb301(39)=spak4l6*abb301(13)
      abb301(10)=abb301(12)*abb301(10)
      abb301(12)=spak1l6*abb301(10)
      abb301(12)=abb301(39)+abb301(12)
      abb301(12)=8.0_ki*abb301(12)*spbk7l5**2
      abb301(39)=8.0_ki*spak2l6
      abb301(33)=abb301(33)*abb301(39)
      abb301(40)=abb301(22)*spak2l6
      abb301(41)=16.0_ki*abb301(40)
      abb301(42)=-abb301(22)*abb301(39)
      abb301(43)=abb301(14)*abb301(18)
      abb301(43)=8.0_ki*abb301(43)
      abb301(44)=8.0_ki*spbk7l5
      abb301(13)=abb301(13)*abb301(44)
      abb301(45)=-abb301(17)*abb301(14)
      abb301(46)=8.0_ki*spbk7k2
      abb301(46)=abb301(46)*abb301(20)
      abb301(47)=-abb301(45)*abb301(46)
      abb301(20)=abb301(44)*abb301(20)
      abb301(45)=abb301(45)*abb301(20)
      abb301(48)=-mB*abb301(14)
      abb301(49)=abb301(32)*spak4l6
      abb301(50)=abb301(48)*abb301(49)
      abb301(51)=-mB*abb301(11)
      abb301(52)=abb301(32)*spak1l6
      abb301(53)=abb301(51)*abb301(52)
      abb301(50)=abb301(50)+abb301(53)
      abb301(50)=abb301(6)*abb301(50)
      abb301(26)=-spak2l5*abb301(26)*spbl5k2**2
      abb301(26)=abb301(26)+abb301(50)
      abb301(26)=8.0_ki*abb301(26)
      abb301(23)=-16.0_ki*abb301(23)
      abb301(22)=spak4l5*abb301(22)
      abb301(50)=spak1l5*abb301(24)
      abb301(22)=abb301(50)+abb301(22)
      abb301(22)=abb301(28)*abb301(22)
      abb301(28)=abb301(6)*abb301(48)
      abb301(28)=-abb301(34)+abb301(28)
      abb301(28)=spak4l6*abb301(28)
      abb301(48)=abb301(6)*abb301(51)
      abb301(48)=-abb301(27)+abb301(48)
      abb301(48)=spak1l6*abb301(48)
      abb301(22)=abb301(28)+abb301(48)+abb301(22)
      abb301(22)=16.0_ki*abb301(8)*abb301(22)
      abb301(14)=16.0_ki*abb301(14)
      abb301(28)=abb301(32)*abb301(29)
      abb301(19)=-abb301(6)*abb301(19)
      abb301(19)=-abb301(40)+abb301(19)-abb301(28)
      abb301(19)=8.0_ki*abb301(19)
      abb301(40)=16.0_ki*abb301(8)
      abb301(29)=-abb301(29)*abb301(40)
      abb301(34)=-abb301(34)*abb301(49)
      abb301(27)=-abb301(27)*abb301(52)
      abb301(27)=abb301(34)+abb301(27)
      abb301(27)=abb301(9)*abb301(27)
      abb301(28)=spak4l5*abb301(28)
      abb301(32)=abb301(32)*abb301(31)
      abb301(34)=spak1l5*abb301(32)
      abb301(27)=abb301(27)+abb301(34)+abb301(28)
      abb301(27)=8.0_ki*spbk7k2*abb301(27)
      abb301(28)=abb301(36)*abb301(39)
      abb301(34)=abb301(24)*spak2l6
      abb301(36)=16.0_ki*abb301(34)
      abb301(24)=-abb301(24)*abb301(39)
      abb301(18)=abb301(11)*abb301(18)
      abb301(18)=8.0_ki*abb301(18)
      abb301(10)=abb301(10)*abb301(44)
      abb301(17)=-abb301(17)*abb301(11)
      abb301(39)=-abb301(17)*abb301(46)
      abb301(11)=16.0_ki*abb301(11)
      abb301(17)=abb301(17)*abb301(20)
      abb301(15)=abb301(15)*abb301(6)
      abb301(15)=-abb301(34)-abb301(15)-abb301(32)
      abb301(15)=8.0_ki*abb301(15)
      abb301(20)=-abb301(31)*abb301(40)
      R2d301=0.0_ki
      rat2 = rat2 + R2d301
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='301' value='", &
          & R2d301, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd301h1
