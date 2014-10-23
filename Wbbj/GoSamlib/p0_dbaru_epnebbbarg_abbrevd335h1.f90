module     p0_dbaru_epnebbbarg_abbrevd335h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(49), public :: abb335
   complex(ki), public :: R2d335
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
      abb335(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb335(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb335(3)=NC**(-1)
      abb335(4)=sqrt2**(-1)
      abb335(5)=es234**(-1)
      abb335(6)=es567**(-1)
      abb335(7)=spak2k7**(-1)
      abb335(8)=sqrt(mB**2)
      abb335(9)=spbl6k2**(-1)
      abb335(10)=1.0_ki/(es34+es567-es12-es234)
      abb335(11)=spak2l5**(-1)
      abb335(12)=spbl5k2**(-1)
      abb335(13)=c1*abb335(3)
      abb335(14)=c2*abb335(3)**2
      abb335(13)=abb335(13)-abb335(14)
      abb335(14)=TR*gW
      abb335(14)=abb335(6)*i_*CVDU*abb335(4)*abb335(2)*abb335(1)*abb335(14)**2
      abb335(15)=abb335(14)*abb335(7)
      abb335(16)=-abb335(15)*abb335(13)
      abb335(17)=spak1k4*abb335(10)
      abb335(18)=abb335(17)*spbk3k1
      abb335(19)=spak1l6*spbk7l5
      abb335(20)=-abb335(18)*abb335(19)*abb335(16)
      abb335(15)=abb335(15)*abb335(5)
      abb335(21)=abb335(15)*spbk3k2
      abb335(22)=-abb335(21)*abb335(13)*abb335(19)
      abb335(23)=abb335(22)*spak2k4
      abb335(20)=abb335(20)+abb335(23)
      abb335(23)=-spbk7l5*abb335(16)
      abb335(24)=abb335(17)*spbk4k3
      abb335(25)=abb335(24)*spak4l6
      abb335(26)=abb335(23)*abb335(25)
      abb335(27)=abb335(26)+abb335(20)
      abb335(28)=es71+es12-es712
      abb335(27)=abb335(27)*abb335(28)
      abb335(29)=abb335(20)*spbl5k2
      abb335(30)=abb335(26)*spbl5k2
      abb335(29)=abb335(29)+abb335(30)
      abb335(31)=abb335(29)*spak2l5
      abb335(32)=spbl5k3*spak3k4
      abb335(22)=abb335(32)*abb335(22)
      abb335(33)=abb335(22)*spak2l5
      abb335(14)=abb335(13)*abb335(14)*abb335(5)
      abb335(34)=spbk7k3*spak3k4
      abb335(35)=abb335(14)*abb335(34)
      abb335(36)=-abb335(19)*spbk3k2*abb335(35)
      abb335(33)=abb335(36)+abb335(33)
      abb335(15)=-abb335(15)*abb335(13)
      abb335(36)=spbk3k2**2
      abb335(37)=-abb335(36)*abb335(15)
      abb335(38)=-spbk7l5*abb335(37)
      abb335(39)=abb335(9)*spak3k4
      abb335(40)=abb335(39)*spak1k2
      abb335(41)=abb335(38)*abb335(40)
      abb335(42)=abb335(8)*mB
      abb335(43)=abb335(41)*abb335(42)
      abb335(27)=-abb335(43)+abb335(31)+abb335(27)-abb335(33)
      abb335(31)=-4.0_ki*abb335(27)
      abb335(43)=abb335(8)**2
      abb335(20)=abb335(43)*abb335(20)
      abb335(26)=abb335(26)*abb335(43)
      abb335(26)=abb335(26)+abb335(20)
      abb335(26)=-abb335(26)*abb335(28)
      abb335(20)=-spbl5k2*abb335(20)
      abb335(30)=-abb335(43)*abb335(30)
      abb335(20)=abb335(20)+abb335(30)
      abb335(20)=spak2l5*abb335(20)
      abb335(30)=abb335(43)*abb335(33)
      abb335(33)=mB*abb335(8)**3*abb335(41)
      abb335(20)=abb335(33)+abb335(20)+abb335(26)+abb335(30)
      abb335(20)=8.0_ki*abb335(20)
      abb335(26)=-16.0_ki*abb335(27)
      abb335(27)=8.0_ki*abb335(27)
      abb335(30)=spak1l6*spbk3k2
      abb335(15)=-abb335(30)*abb335(15)
      abb335(33)=abb335(8)+mB
      abb335(41)=abb335(33)*abb335(15)
      abb335(43)=-spak2k4*abb335(41)
      abb335(44)=-spak1l6*abb335(16)
      abb335(45)=spbk3k1*abb335(44)*abb335(17)
      abb335(46)=abb335(33)*abb335(45)
      abb335(43)=abb335(43)+abb335(46)
      abb335(43)=spbl5k2*abb335(43)
      abb335(17)=abb335(16)*abb335(17)
      abb335(46)=spak4l6*spbk4k3
      abb335(33)=-spbl5k2*abb335(46)*abb335(17)*abb335(33)
      abb335(40)=abb335(37)*abb335(40)
      abb335(47)=mB**3
      abb335(48)=mB**2
      abb335(49)=abb335(8)*abb335(48)
      abb335(47)=abb335(47)+abb335(49)
      abb335(47)=abb335(11)*abb335(47)*abb335(40)
      abb335(41)=abb335(41)*abb335(32)
      abb335(33)=abb335(43)+abb335(41)+abb335(47)+abb335(33)
      abb335(33)=abb335(8)*abb335(33)
      abb335(41)=abb335(44)*abb335(18)
      abb335(16)=abb335(16)*abb335(25)
      abb335(25)=abb335(15)*spak2k4
      abb335(16)=-abb335(25)+abb335(41)-abb335(16)
      abb335(25)=abb335(28)*abb335(16)
      abb335(30)=abb335(30)*abb335(35)
      abb335(25)=abb335(30)+abb335(25)
      abb335(30)=abb335(42)*abb335(11)
      abb335(25)=abb335(30)*abb335(25)
      abb335(25)=abb335(25)+abb335(33)
      abb335(33)=abb335(48)*abb335(11)
      abb335(35)=spak3k4*abb335(33)*abb335(12)
      abb335(19)=abb335(35)*abb335(36)*abb335(14)*abb335(19)
      abb335(22)=abb335(22)-abb335(29)
      abb335(22)=spal5k7*abb335(22)
      abb335(29)=abb335(39)*abb335(42)
      abb335(36)=spak1k7*abb335(38)*abb335(29)
      abb335(19)=abb335(22)+abb335(19)+2.0_ki*abb335(25)+abb335(36)
      abb335(19)=8.0_ki*abb335(19)
      abb335(22)=-spbl5k2*abb335(16)
      abb335(25)=abb335(32)*abb335(15)
      abb335(22)=abb335(22)-abb335(25)
      abb335(32)=abb335(33)*abb335(39)
      abb335(36)=abb335(37)*abb335(32)
      abb335(38)=abb335(36)*spak1k2
      abb335(41)=abb335(38)-abb335(22)
      abb335(41)=32.0_ki*abb335(41)
      abb335(22)=2.0_ki*abb335(38)-abb335(22)
      abb335(22)=16.0_ki*abb335(22)
      abb335(38)=spak2k4*abb335(11)
      abb335(43)=-abb335(38)*abb335(15)
      abb335(44)=abb335(11)*abb335(45)
      abb335(43)=abb335(43)+abb335(44)
      abb335(44)=-abb335(42)+2.0_ki*abb335(48)
      abb335(43)=abb335(44)*abb335(43)
      abb335(44)=abb335(17)*abb335(42)
      abb335(17)=abb335(17)*abb335(48)
      abb335(45)=-2.0_ki*abb335(17)+abb335(44)
      abb335(45)=abb335(11)*abb335(45)*abb335(46)
      abb335(40)=mB**4*abb335(11)**2*abb335(40)
      abb335(25)=abb335(33)*abb335(25)
      abb335(25)=abb335(40)+2.0_ki*abb335(25)
      abb335(25)=abb335(12)*abb335(25)
      abb335(25)=abb335(25)+abb335(45)+abb335(43)
      abb335(25)=16.0_ki*abb335(25)
      abb335(16)=-spbk7k2*abb335(16)
      abb335(33)=-abb335(15)*abb335(34)
      abb335(16)=abb335(33)+abb335(16)
      abb335(16)=8.0_ki*abb335(16)
      abb335(13)=abb335(13)*abb335(21)
      abb335(21)=abb335(42)-abb335(48)
      abb335(21)=-abb335(13)*abb335(21)
      abb335(33)=abb335(21)*abb335(11)
      abb335(34)=abb335(33)*spak3k4
      abb335(40)=-spak1k2*abb335(34)
      abb335(42)=spbk7l5*abb335(13)
      abb335(43)=abb335(42)*spak3k4
      abb335(45)=spak1k7*abb335(43)
      abb335(40)=abb335(40)+abb335(45)
      abb335(40)=16.0_ki*abb335(40)
      abb335(33)=abb335(33)*spak2k4
      abb335(17)=abb335(44)-abb335(17)
      abb335(44)=abb335(17)*abb335(11)
      abb335(45)=abb335(44)*spbk3k1
      abb335(33)=abb335(33)-abb335(45)
      abb335(45)=spak1k2*abb335(33)
      abb335(17)=spbk4k3*abb335(17)*abb335(38)
      abb335(18)=abb335(23)*abb335(18)
      abb335(38)=abb335(42)*spak2k4
      abb335(18)=abb335(18)-abb335(38)
      abb335(38)=spak1k7*abb335(18)
      abb335(23)=abb335(23)*abb335(24)
      abb335(24)=spak4k7*abb335(23)
      abb335(17)=abb335(24)+abb335(38)+abb335(17)+abb335(45)
      abb335(17)=16.0_ki*abb335(17)
      abb335(24)=-spak2l6*spbk4k3*abb335(44)
      abb335(23)=-spal6k7*abb335(23)
      abb335(23)=abb335(24)+abb335(23)
      abb335(23)=16.0_ki*abb335(23)
      abb335(24)=-8.0_ki*spak1k7*abb335(36)
      abb335(36)=-spak1l5*abb335(36)
      abb335(35)=abb335(35)*spak1l6*abb335(37)
      abb335(35)=abb335(35)+abb335(36)
      abb335(35)=8.0_ki*abb335(35)
      abb335(15)=-8.0_ki*spak3k4*abb335(15)*abb335(30)
      abb335(29)=8.0_ki*abb335(37)*abb335(29)
      abb335(13)=abb335(32)*abb335(13)*abb335(28)
      abb335(21)=abb335(21)*abb335(39)
      abb335(28)=spbl5k2*abb335(21)
      abb335(30)=-spak2l6*abb335(34)
      abb335(34)=-spal6k7*abb335(43)
      abb335(13)=abb335(34)+abb335(30)+abb335(28)+abb335(13)
      abb335(13)=16.0_ki*abb335(13)
      abb335(28)=spak2l6*abb335(33)
      abb335(21)=-spbl5k3*abb335(21)
      abb335(14)=-spbk7k3*abb335(32)*abb335(14)*spbk3k2
      abb335(18)=-spal6k7*abb335(18)
      abb335(14)=abb335(18)+abb335(14)+abb335(21)+abb335(28)
      abb335(14)=16.0_ki*abb335(14)
      R2d335=abb335(31)
      rat2 = rat2 + R2d335
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='335' value='", &
          & R2d335, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd335h1
