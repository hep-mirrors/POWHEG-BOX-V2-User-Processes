module     p0_dbaru_epnebbbarg_abbrevd335h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(50), public :: abb335
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
      abb335(7)=spbl6k2**(-1)
      abb335(8)=spbk7k2**(-1)
      abb335(9)=sqrt(mB**2)
      abb335(10)=spak2l5**(-1)
      abb335(11)=spbl5k2**(-1)
      abb335(12)=1.0_ki/(es34+es567-es12-es234)
      abb335(13)=spbk3k2*abb335(3)
      abb335(14)=c2*abb335(13)**2
      abb335(15)=c1*abb335(3)
      abb335(16)=abb335(15)*spbk3k2**2
      abb335(14)=abb335(14)-abb335(16)
      abb335(16)=spak3k4*abb335(5)
      abb335(17)=abb335(14)*abb335(16)
      abb335(18)=spal5k7*abb335(7)
      abb335(19)=TR*gW
      abb335(19)=abb335(6)*i_*CVDU*abb335(4)*abb335(2)*abb335(1)*abb335(19)**2
      abb335(20)=abb335(19)*mB
      abb335(21)=-abb335(18)*spak1k7*abb335(20)*abb335(17)
      abb335(22)=abb335(19)*abb335(8)
      abb335(23)=abb335(22)*abb335(16)
      abb335(24)=abb335(23)*mB
      abb335(25)=-abb335(24)*abb335(14)
      abb335(26)=spak1l5*abb335(25)*abb335(18)
      abb335(27)=abb335(26)*spbl5k2
      abb335(21)=abb335(21)+abb335(27)
      abb335(14)=-abb335(23)*abb335(14)
      abb335(27)=spak1l6*abb335(9)
      abb335(28)=abb335(27)*spal5k7
      abb335(29)=abb335(14)*abb335(28)
      abb335(29)=abb335(29)+abb335(21)
      abb335(30)=-4.0_ki*abb335(29)
      abb335(21)=-abb335(21)*abb335(9)**2
      abb335(31)=-abb335(14)*abb335(9)**3*spal5k7*spak1l6
      abb335(21)=abb335(31)+abb335(21)
      abb335(21)=8.0_ki*abb335(21)
      abb335(31)=-16.0_ki*abb335(29)
      abb335(29)=8.0_ki*abb335(29)
      abb335(32)=abb335(25)*abb335(9)
      abb335(33)=mB**2
      abb335(34)=-abb335(33)*abb335(14)
      abb335(32)=abb335(32)-abb335(34)
      abb335(35)=abb335(11)*abb335(27)
      abb335(36)=spak1l5*abb335(7)
      abb335(37)=abb335(9)*abb335(36)
      abb335(35)=abb335(35)+abb335(37)
      abb335(32)=abb335(32)*abb335(35)
      abb335(17)=abb335(19)*abb335(17)
      abb335(35)=abb335(7)*abb335(11)
      abb335(33)=-spak1k7*abb335(9)*abb335(35)*abb335(33)*abb335(17)
      abb335(32)=abb335(32)+abb335(33)
      abb335(33)=c2*abb335(3)**2
      abb335(37)=abb335(19)*abb335(33)
      abb335(38)=spbk3k2*abb335(5)
      abb335(39)=abb335(38)*abb335(37)
      abb335(19)=abb335(19)*c1
      abb335(40)=-abb335(5)*abb335(13)*abb335(19)
      abb335(39)=abb335(39)+abb335(40)
      abb335(39)=spak2k4*abb335(39)
      abb335(40)=abb335(33)*spbk3k2
      abb335(13)=abb335(13)*c1
      abb335(41)=abb335(40)-abb335(13)
      abb335(23)=-abb335(23)*abb335(41)
      abb335(42)=spbk7k3*abb335(23)
      abb335(19)=abb335(19)*abb335(3)
      abb335(19)=abb335(19)-abb335(37)
      abb335(37)=spak1k4*abb335(12)
      abb335(43)=abb335(37)*spbk3k1
      abb335(44)=abb335(19)*abb335(43)
      abb335(39)=abb335(42)+abb335(44)+abb335(39)
      abb335(28)=abb335(28)*abb335(39)
      abb335(39)=spak1k2*abb335(10)
      abb335(42)=mB**3
      abb335(17)=abb335(11)*abb335(18)*abb335(39)*abb335(42)*abb335(17)
      abb335(26)=-spbk7l5*abb335(26)
      abb335(37)=abb335(37)*spbk4k3
      abb335(19)=spak4l6*abb335(19)*abb335(37)*spal5k7*abb335(9)
      abb335(17)=abb335(26)+abb335(17)+abb335(19)+abb335(28)+2.0_ki*abb335(32)
      abb335(17)=8.0_ki*abb335(17)
      abb335(19)=spak1l6*abb335(11)
      abb335(26)=abb335(19)+abb335(36)
      abb335(26)=32.0_ki*abb335(25)*abb335(26)
      abb335(28)=2.0_ki*abb335(19)+abb335(36)
      abb335(28)=16.0_ki*abb335(25)*abb335(28)
      abb335(14)=-abb335(42)*abb335(14)
      abb335(32)=-spak1l6*abb335(11)**2
      abb335(36)=abb335(11)*abb335(36)
      abb335(32)=abb335(32)-2.0_ki*abb335(36)
      abb335(32)=16.0_ki*abb335(10)*abb335(14)*abb335(32)
      abb335(24)=-abb335(24)*abb335(41)
      abb335(36)=abb335(24)*spbk7k3
      abb335(41)=abb335(13)*abb335(5)
      abb335(42)=abb335(41)*abb335(20)
      abb335(44)=abb335(40)*abb335(20)
      abb335(45)=abb335(44)*abb335(5)
      abb335(42)=abb335(42)-abb335(45)
      abb335(42)=abb335(42)*spak2k4
      abb335(45)=abb335(33)-abb335(15)
      abb335(46)=-abb335(20)*abb335(45)
      abb335(47)=abb335(46)*abb335(43)
      abb335(47)=abb335(36)-abb335(42)+abb335(47)
      abb335(47)=abb335(19)*abb335(47)
      abb335(46)=abb335(46)*abb335(11)
      abb335(48)=abb335(46)*abb335(37)
      abb335(49)=spak4l6*abb335(48)
      abb335(47)=abb335(49)+abb335(47)
      abb335(47)=8.0_ki*abb335(47)
      abb335(49)=abb335(23)*abb335(9)
      abb335(49)=abb335(49)-abb335(24)
      abb335(50)=spak1l5*abb335(49)
      abb335(13)=abb335(13)*abb335(20)
      abb335(13)=abb335(13)-abb335(44)
      abb335(13)=abb335(16)*abb335(13)
      abb335(16)=-spak1k7*abb335(11)*abb335(13)
      abb335(16)=abb335(50)+abb335(16)
      abb335(16)=16.0_ki*abb335(16)
      abb335(20)=abb335(41)*abb335(22)
      abb335(33)=abb335(22)*abb335(33)
      abb335(38)=abb335(38)*abb335(33)
      abb335(20)=abb335(20)-abb335(38)
      abb335(20)=abb335(20)*abb335(9)
      abb335(38)=abb335(40)*abb335(5)
      abb335(38)=abb335(41)-abb335(38)
      abb335(40)=abb335(22)*mB
      abb335(38)=abb335(40)*abb335(38)
      abb335(20)=abb335(20)-abb335(38)
      abb335(20)=abb335(20)*spak2k4
      abb335(15)=abb335(15)*abb335(22)
      abb335(15)=abb335(33)-abb335(15)
      abb335(15)=abb335(15)*abb335(9)
      abb335(22)=-abb335(40)*abb335(45)
      abb335(15)=abb335(22)+abb335(15)
      abb335(22)=abb335(15)*abb335(43)
      abb335(20)=abb335(20)+abb335(22)
      abb335(22)=-spak1l5*abb335(20)
      abb335(33)=abb335(42)*abb335(11)
      abb335(38)=abb335(46)*abb335(43)
      abb335(33)=abb335(38)-abb335(33)
      abb335(38)=-spak1k7*abb335(33)
      abb335(15)=abb335(15)*abb335(37)
      abb335(37)=-spak4l5*abb335(15)
      abb335(40)=-spak4k7*abb335(48)
      abb335(22)=abb335(40)+abb335(37)+abb335(38)+abb335(22)
      abb335(22)=16.0_ki*abb335(22)
      abb335(25)=-8.0_ki*spak1k7*abb335(7)*abb335(25)
      abb335(23)=-8.0_ki*abb335(23)*abb335(27)
      abb335(27)=spak1l6*abb335(20)
      abb335(37)=spak4l6*abb335(15)
      abb335(38)=abb335(14)*abb335(35)*abb335(39)
      abb335(19)=spbl5k3*abb335(24)*abb335(19)
      abb335(19)=abb335(19)+abb335(38)+abb335(37)+abb335(27)
      abb335(19)=8.0_ki*abb335(19)
      abb335(15)=-spal5l6*abb335(15)
      abb335(24)=spal6k7*abb335(48)
      abb335(15)=abb335(15)+abb335(24)
      abb335(15)=16.0_ki*abb335(15)
      abb335(24)=spal5l6*abb335(49)
      abb335(27)=spal6k7*abb335(11)
      abb335(27)=abb335(27)+abb335(18)
      abb335(13)=abb335(13)*abb335(27)
      abb335(13)=abb335(24)+abb335(13)
      abb335(13)=16.0_ki*abb335(13)
      abb335(20)=spal5l6*abb335(20)
      abb335(24)=spal6k7*abb335(33)
      abb335(18)=abb335(18)*abb335(36)
      abb335(18)=abb335(18)+abb335(20)-abb335(24)
      abb335(20)=-abb335(9)*abb335(34)
      abb335(14)=2.0_ki*abb335(14)+abb335(20)
      abb335(14)=abb335(14)*abb335(35)
      abb335(14)=abb335(14)-2.0_ki*abb335(18)
      abb335(14)=8.0_ki*abb335(14)
      R2d335=abb335(30)
      rat2 = rat2 + R2d335
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='335' value='", &
          & R2d335, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd335h4
