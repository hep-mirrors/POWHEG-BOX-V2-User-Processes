module     p0_dbaru_epnebbbarg_abbrevd333h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(50), public :: abb333
   complex(ki), public :: R2d333
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
      abb333(1)=1.0_ki/(-mB**2+es67)
      abb333(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb333(3)=NC**(-1)
      abb333(4)=sqrt2**(-1)
      abb333(5)=es234**(-1)
      abb333(6)=es567**(-1)
      abb333(7)=spbk7k2**(-1)
      abb333(8)=sqrt(mB**2)
      abb333(9)=spak2l5**(-1)
      abb333(10)=1.0_ki/(es34+es567-es12-es234)
      abb333(11)=spak2l6**(-1)
      abb333(12)=spbl6k2**(-1)
      abb333(13)=c3*abb333(3)
      abb333(14)=c2*abb333(3)**2
      abb333(13)=abb333(13)-abb333(14)
      abb333(14)=abb333(13)*spal6k7
      abb333(15)=TR*gW
      abb333(15)=abb333(6)*i_*CVDU*abb333(4)*abb333(2)*abb333(1)*abb333(15)**2
      abb333(16)=abb333(15)*abb333(7)
      abb333(17)=abb333(16)*spbl5k2
      abb333(18)=spbk3k2*abb333(5)
      abb333(19)=abb333(17)*abb333(18)
      abb333(20)=spak1l6*spak2k4
      abb333(21)=abb333(20)*abb333(19)*abb333(14)
      abb333(22)=-abb333(16)*abb333(13)
      abb333(23)=-abb333(18)*abb333(22)
      abb333(24)=-spal6k7*abb333(23)
      abb333(25)=spbl5k3*spak3k4
      abb333(26)=abb333(25)*spak1l6
      abb333(27)=abb333(24)*abb333(26)
      abb333(28)=abb333(17)*abb333(14)
      abb333(29)=spak1k4*abb333(10)
      abb333(30)=abb333(29)*spbk3k1
      abb333(31)=abb333(28)*abb333(30)*spak1l6
      abb333(21)=abb333(21)+abb333(27)-abb333(31)
      abb333(21)=abb333(21)*spbl6k2
      abb333(27)=abb333(15)*spbl5k2
      abb333(31)=abb333(27)*abb333(14)
      abb333(32)=-abb333(18)*abb333(31)
      abb333(33)=abb333(32)*spak2k4
      abb333(34)=abb333(31)*abb333(30)
      abb333(33)=abb333(33)+abb333(34)
      abb333(35)=abb333(33)*spak1k7
      abb333(36)=spbk3k2*abb333(15)*abb333(5)
      abb333(37)=abb333(36)*abb333(14)
      abb333(38)=abb333(37)*abb333(25)
      abb333(39)=abb333(38)*spak1k7
      abb333(40)=abb333(29)*spbk4k3
      abb333(31)=abb333(31)*abb333(40)
      abb333(41)=abb333(31)*spak4k7
      abb333(39)=abb333(39)+abb333(41)
      abb333(41)=abb333(40)*spak4l6
      abb333(28)=spbl6k2*abb333(41)*abb333(28)
      abb333(21)=-abb333(28)-abb333(39)+abb333(21)-abb333(35)
      abb333(16)=abb333(16)*abb333(5)*spbk3k2**2
      abb333(28)=abb333(16)*abb333(14)
      abb333(42)=abb333(9)*spak1k2
      abb333(43)=abb333(42)*spak3k4
      abb333(44)=abb333(8)*mB
      abb333(45)=abb333(43)*abb333(44)
      abb333(46)=abb333(28)*abb333(45)
      abb333(46)=abb333(46)-abb333(21)
      abb333(47)=4.0_ki*abb333(46)
      abb333(21)=-abb333(21)*abb333(8)**2
      abb333(28)=mB*abb333(28)*abb333(8)**3*abb333(43)
      abb333(21)=abb333(28)+abb333(21)
      abb333(21)=8.0_ki*abb333(21)
      abb333(28)=abb333(35)+abb333(39)
      abb333(28)=16.0_ki*abb333(28)
      abb333(35)=-8.0_ki*abb333(46)
      abb333(34)=abb333(38)+abb333(34)
      abb333(34)=spak1l6*abb333(34)
      abb333(32)=abb333(32)*abb333(20)
      abb333(39)=spak4l6*abb333(31)
      abb333(32)=abb333(39)+abb333(32)+abb333(34)
      abb333(32)=8.0_ki*abb333(32)
      abb333(34)=8.0_ki*abb333(45)
      abb333(39)=abb333(37)*abb333(34)
      abb333(18)=-spak2k4*abb333(18)
      abb333(18)=abb333(18)+abb333(30)
      abb333(27)=-abb333(27)*abb333(13)
      abb333(46)=abb333(44)*abb333(12)
      abb333(48)=abb333(46)*spak1k7
      abb333(18)=abb333(48)*abb333(27)*abb333(18)
      abb333(49)=abb333(8)+mB
      abb333(50)=-spak1l6*abb333(8)*abb333(23)*abb333(49)
      abb333(36)=abb333(36)*abb333(13)
      abb333(48)=-abb333(36)*abb333(48)
      abb333(48)=abb333(50)+abb333(48)
      abb333(48)=abb333(48)*abb333(25)
      abb333(50)=abb333(40)*spak4k7
      abb333(27)=abb333(27)*abb333(46)*abb333(50)
      abb333(24)=spbk7k3*abb333(24)*abb333(45)
      abb333(18)=abb333(18)+abb333(48)+abb333(27)+abb333(24)
      abb333(24)=spak1k2*abb333(37)
      abb333(14)=abb333(15)*abb333(14)
      abb333(27)=abb333(14)*abb333(40)
      abb333(24)=abb333(27)+abb333(24)
      abb333(24)=abb333(24)*abb333(44)*spak2k4
      abb333(27)=mB**3
      abb333(37)=mB**2
      abb333(45)=abb333(8)*abb333(37)
      abb333(27)=abb333(27)+abb333(45)
      abb333(16)=-abb333(16)*abb333(13)
      abb333(45)=2.0_ki*abb333(8)
      abb333(27)=abb333(12)*abb333(45)*spak1k2*spak3k4*abb333(16)*abb333(27)
      abb333(24)=abb333(27)+abb333(24)
      abb333(24)=abb333(9)*abb333(24)
      abb333(19)=-abb333(19)*abb333(13)
      abb333(20)=abb333(19)*abb333(20)
      abb333(27)=-abb333(49)*abb333(20)
      abb333(17)=-abb333(17)*abb333(13)
      abb333(48)=abb333(49)*abb333(17)*abb333(29)
      abb333(49)=spak4l6*spbk4k3*abb333(48)
      abb333(27)=abb333(49)+abb333(27)
      abb333(27)=abb333(45)*abb333(27)
      abb333(14)=-abb333(14)*abb333(29)*abb333(44)*abb333(42)
      abb333(45)=spak1l6*abb333(48)*abb333(45)
      abb333(14)=abb333(14)+abb333(45)
      abb333(14)=spbk3k1*abb333(14)
      abb333(33)=abb333(38)+abb333(33)
      abb333(38)=abb333(37)*abb333(12)
      abb333(45)=abb333(38)*spak1k2
      abb333(33)=abb333(45)*abb333(33)
      abb333(48)=abb333(38)*spak2k4
      abb333(31)=-abb333(48)*abb333(31)
      abb333(31)=abb333(31)+abb333(33)
      abb333(31)=abb333(11)*abb333(31)
      abb333(14)=abb333(31)+abb333(14)+abb333(27)+abb333(24)+2.0_ki*abb333(18)
      abb333(14)=8.0_ki*abb333(14)
      abb333(18)=abb333(17)*abb333(30)
      abb333(24)=spak1l6*abb333(18)
      abb333(26)=-abb333(23)*abb333(26)
      abb333(27)=abb333(17)*abb333(41)
      abb333(20)=abb333(27)+abb333(26)-abb333(20)+abb333(24)
      abb333(20)=16.0_ki*abb333(20)
      abb333(16)=16.0_ki*abb333(11)*abb333(16)*mB**4*abb333(12)**2*abb333(43)
      abb333(13)=-abb333(15)*abb333(13)
      abb333(15)=-abb333(13)*abb333(30)*abb333(42)
      abb333(24)=abb333(43)*abb333(23)
      abb333(26)=spbk7k3*abb333(24)
      abb333(15)=abb333(26)+abb333(15)
      abb333(15)=abb333(38)*abb333(15)
      abb333(26)=-abb333(36)*abb333(42)
      abb333(13)=abb333(9)*abb333(13)*abb333(40)
      abb333(13)=abb333(26)+abb333(13)
      abb333(13)=abb333(48)*abb333(13)
      abb333(13)=abb333(13)+abb333(15)
      abb333(13)=8.0_ki*abb333(13)
      abb333(15)=abb333(19)*spak2k4
      abb333(19)=abb333(23)*abb333(25)
      abb333(15)=abb333(19)+abb333(15)-abb333(18)
      abb333(18)=-spak1k7*abb333(15)
      abb333(19)=abb333(17)*abb333(50)
      abb333(18)=abb333(19)+abb333(18)
      abb333(18)=8.0_ki*abb333(18)
      abb333(19)=-abb333(23)*abb333(34)
      abb333(25)=abb333(37)-abb333(44)
      abb333(23)=-spak2k4*abb333(23)*abb333(25)
      abb333(22)=-abb333(25)*abb333(22)*abb333(29)
      abb333(25)=spbk3k1*abb333(22)
      abb333(23)=abb333(25)+abb333(23)
      abb333(23)=abb333(42)*abb333(23)
      abb333(25)=-abb333(45)*abb333(15)
      abb333(17)=abb333(17)*abb333(40)
      abb333(26)=-abb333(48)*abb333(17)
      abb333(25)=abb333(26)+abb333(25)
      abb333(25)=abb333(11)*abb333(25)
      abb333(22)=-spbk4k3*abb333(9)*spak2k4*abb333(22)
      abb333(24)=spbl6k3*abb333(38)*abb333(24)
      abb333(22)=abb333(24)+abb333(25)+abb333(22)+abb333(23)
      abb333(22)=8.0_ki*abb333(22)
      abb333(23)=8.0_ki*abb333(46)
      abb333(17)=abb333(17)*abb333(23)
      abb333(15)=-abb333(15)*abb333(23)
      R2d333=abb333(47)
      rat2 = rat2 + R2d333
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='333' value='", &
          & R2d333, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd333h5
