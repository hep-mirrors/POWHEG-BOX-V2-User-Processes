module     p0_dbaru_epnebbbarg_abbrevd305h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(56), public :: abb305
   complex(ki), public :: R2d305
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
      abb305(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb305(2)=1.0_ki/(es34+es567-es12-es234)
      abb305(3)=sqrt(mB**2)
      abb305(4)=NC**(-1)
      abb305(5)=sqrt2**(-1)
      abb305(6)=spak2l5**(-1)
      abb305(7)=spbk7k2**(-1)
      abb305(8)=spak2l6**(-1)
      abb305(9)=c3+c1
      abb305(10)=TR*gW
      abb305(10)=CVDU*i_*spak1k4*abb305(5)*abb305(2)*abb305(1)*abb305(10)**2
      abb305(9)=abb305(9)*abb305(10)*abb305(4)
      abb305(11)=spbk4k3*abb305(9)
      abb305(12)=mB**2
      abb305(13)=abb305(12)*abb305(7)
      abb305(14)=abb305(13)*abb305(11)
      abb305(15)=mB*abb305(4)
      abb305(15)=c2*abb305(15)**2
      abb305(16)=abb305(7)*abb305(15)
      abb305(17)=abb305(10)*spbk4k3
      abb305(18)=abb305(16)*abb305(17)
      abb305(14)=-abb305(18)+abb305(14)
      abb305(18)=abb305(6)*abb305(3)
      abb305(14)=abb305(14)*abb305(18)
      abb305(19)=abb305(7)*abb305(9)
      abb305(20)=spbl5k2*spbk4k3
      abb305(21)=abb305(20)*abb305(19)
      abb305(22)=c2*abb305(4)**2
      abb305(23)=abb305(22)*abb305(7)
      abb305(24)=abb305(23)*spbl5k2
      abb305(25)=abb305(24)*abb305(17)
      abb305(21)=abb305(21)-abb305(25)
      abb305(21)=abb305(21)*abb305(3)
      abb305(14)=abb305(14)-abb305(21)
      abb305(25)=-spak4k7*abb305(14)
      abb305(26)=spbk3k1*abb305(9)
      abb305(13)=abb305(13)*abb305(26)
      abb305(27)=abb305(10)*spbk3k1
      abb305(16)=abb305(16)*abb305(27)
      abb305(13)=abb305(13)-abb305(16)
      abb305(13)=abb305(13)*abb305(18)
      abb305(16)=spbl5k2*spbk3k1
      abb305(18)=abb305(16)*abb305(19)
      abb305(24)=abb305(24)*abb305(27)
      abb305(24)=abb305(24)-abb305(18)
      abb305(24)=abb305(24)*abb305(3)
      abb305(13)=abb305(13)+abb305(24)
      abb305(28)=-spak1k7*abb305(13)
      abb305(25)=abb305(25)+abb305(28)
      abb305(28)=es71+es12-es712
      abb305(25)=abb305(25)*abb305(28)*spbl6k2
      abb305(29)=abb305(8)*abb305(7)
      abb305(30)=abb305(29)*mB
      abb305(31)=abb305(30)*abb305(9)
      abb305(32)=abb305(29)*abb305(10)
      abb305(33)=abb305(22)*abb305(32)
      abb305(34)=abb305(33)*mB
      abb305(31)=abb305(31)-abb305(34)
      abb305(35)=spbk3k1*abb305(31)
      abb305(36)=abb305(35)*spak1k2
      abb305(30)=abb305(30)*abb305(11)
      abb305(34)=abb305(34)*spbk4k3
      abb305(30)=abb305(30)-abb305(34)
      abb305(34)=abb305(30)*spak2k4
      abb305(34)=abb305(36)-abb305(34)
      abb305(36)=-abb305(34)*spbl5k2**2
      abb305(37)=abb305(36)*abb305(3)**2
      abb305(38)=-abb305(20)*abb305(9)
      abb305(39)=abb305(22)*abb305(17)
      abb305(40)=spbl5k2*abb305(39)
      abb305(38)=abb305(40)+abb305(38)
      abb305(38)=spak4k7*abb305(38)
      abb305(40)=-abb305(16)*abb305(9)
      abb305(41)=abb305(22)*abb305(27)
      abb305(42)=spbl5k2*abb305(41)
      abb305(40)=abb305(42)+abb305(40)
      abb305(40)=spak1k7*abb305(40)
      abb305(38)=abb305(38)+abb305(40)
      abb305(40)=spbl6l5*abb305(3)
      abb305(38)=abb305(38)*abb305(40)
      abb305(37)=abb305(38)+abb305(37)
      abb305(37)=spal5k7*abb305(37)
      abb305(25)=abb305(37)+abb305(25)
      abb305(25)=8.0_ki*abb305(25)
      abb305(37)=16.0_ki*spal5k7*abb305(36)
      abb305(38)=mB**3
      abb305(42)=abb305(38)*abb305(29)
      abb305(43)=abb305(42)*abb305(11)
      abb305(33)=abb305(38)*abb305(33)
      abb305(38)=spbk4k3*abb305(33)
      abb305(38)=abb305(43)-abb305(38)
      abb305(43)=abb305(38)*abb305(6)
      abb305(44)=abb305(20)*abb305(31)
      abb305(43)=abb305(43)-abb305(44)
      abb305(43)=abb305(43)*abb305(28)
      abb305(45)=spak4k7*abb305(43)
      abb305(42)=-abb305(42)*abb305(26)
      abb305(33)=spbk3k1*abb305(33)
      abb305(33)=abb305(33)+abb305(42)
      abb305(42)=abb305(33)*abb305(6)
      abb305(31)=abb305(16)*abb305(31)
      abb305(42)=abb305(42)+abb305(31)
      abb305(42)=abb305(28)*abb305(42)
      abb305(46)=-spak1k7*abb305(42)
      abb305(45)=abb305(45)+abb305(46)
      abb305(45)=16.0_ki*abb305(45)
      abb305(46)=8.0_ki*spal5k7
      abb305(36)=-abb305(36)*abb305(46)
      abb305(39)=abb305(11)-abb305(39)
      abb305(47)=-spak4k7*abb305(39)
      abb305(41)=abb305(26)-abb305(41)
      abb305(48)=-spak1k7*abb305(41)
      abb305(47)=abb305(47)+abb305(48)
      abb305(48)=8.0_ki*spbl6k2
      abb305(47)=abb305(3)*abb305(47)*abb305(48)
      abb305(49)=spbk3k1*mB
      abb305(50)=-abb305(9)*abb305(49)*abb305(8)
      abb305(10)=abb305(10)*mB
      abb305(22)=abb305(22)*abb305(10)
      abb305(51)=abb305(22)*abb305(8)
      abb305(52)=abb305(51)*spbk3k1
      abb305(50)=abb305(52)+abb305(50)
      abb305(52)=abb305(50)*spak1k7
      abb305(53)=mB*abb305(11)
      abb305(54)=-abb305(8)*abb305(53)
      abb305(55)=abb305(51)*spbk4k3
      abb305(54)=abb305(55)+abb305(54)
      abb305(55)=abb305(54)*spak4k7
      abb305(52)=abb305(52)+abb305(55)
      abb305(55)=-16.0_ki*abb305(52)
      abb305(39)=abb305(3)*abb305(39)
      abb305(56)=-spbk4k3*abb305(22)
      abb305(39)=abb305(39)+abb305(56)+abb305(53)
      abb305(39)=spak4k7*abb305(39)
      abb305(41)=abb305(3)*abb305(41)
      abb305(56)=abb305(49)*abb305(9)
      abb305(22)=-spbk3k1*abb305(22)
      abb305(22)=abb305(41)+abb305(22)+abb305(56)
      abb305(22)=spak1k7*abb305(22)
      abb305(21)=-spak4l5*abb305(21)
      abb305(24)=spak1l5*abb305(24)
      abb305(21)=abb305(24)+abb305(21)+abb305(39)+abb305(22)
      abb305(21)=spbl6l5*abb305(21)
      abb305(14)=abb305(14)*spbl6k2
      abb305(12)=abb305(12)*abb305(29)
      abb305(22)=abb305(9)*abb305(12)
      abb305(15)=abb305(32)*abb305(15)
      abb305(22)=abb305(22)-abb305(15)
      abb305(24)=-abb305(20)*abb305(22)
      abb305(29)=-abb305(3)*abb305(44)
      abb305(24)=abb305(29)+abb305(24)
      abb305(24)=abb305(3)*abb305(24)
      abb305(14)=abb305(24)+abb305(14)+abb305(43)
      abb305(14)=spak2k4*abb305(14)
      abb305(13)=abb305(13)*spbl6k2
      abb305(22)=abb305(16)*abb305(22)
      abb305(24)=abb305(3)*abb305(31)
      abb305(22)=abb305(24)+abb305(22)
      abb305(22)=abb305(3)*abb305(22)
      abb305(13)=abb305(22)-abb305(13)+abb305(42)
      abb305(13)=spak1k2*abb305(13)
      abb305(22)=abb305(44)*spak2k4
      abb305(24)=abb305(31)*spak1k2
      abb305(22)=abb305(22)-abb305(24)
      abb305(24)=spbk7l5*spal5k7*abb305(22)
      abb305(13)=abb305(24)+abb305(14)+abb305(13)+abb305(21)
      abb305(13)=8.0_ki*abb305(13)
      abb305(14)=-16.0_ki*abb305(22)
      abb305(21)=-abb305(12)*abb305(11)
      abb305(24)=spbk4k3*abb305(15)
      abb305(21)=abb305(24)+abb305(21)
      abb305(21)=abb305(3)*abb305(21)
      abb305(21)=abb305(21)-abb305(38)
      abb305(21)=abb305(6)*abb305(21)
      abb305(21)=abb305(21)+abb305(44)
      abb305(21)=spak2k4*abb305(21)
      abb305(12)=abb305(12)*abb305(26)
      abb305(15)=-spbk3k1*abb305(15)
      abb305(12)=abb305(15)+abb305(12)
      abb305(12)=abb305(3)*abb305(12)
      abb305(12)=abb305(12)-abb305(33)
      abb305(12)=abb305(6)*abb305(12)
      abb305(12)=abb305(12)-abb305(31)
      abb305(12)=spak1k2*abb305(12)
      abb305(15)=abb305(49)*abb305(19)
      abb305(10)=abb305(23)*abb305(10)
      abb305(24)=abb305(10)*spbk3k1
      abb305(15)=abb305(15)-abb305(24)
      abb305(24)=abb305(15)*abb305(6)
      abb305(29)=abb305(24)*spak1k7
      abb305(32)=-abb305(7)*abb305(53)
      abb305(33)=abb305(10)*spbk4k3
      abb305(32)=abb305(33)+abb305(32)
      abb305(33)=abb305(32)*abb305(6)
      abb305(38)=abb305(33)*spak4k7
      abb305(29)=abb305(29)-abb305(38)
      abb305(38)=-spbk7l6*abb305(29)
      abb305(12)=abb305(38)+abb305(21)+abb305(12)
      abb305(12)=16.0_ki*abb305(12)
      abb305(21)=8.0_ki*abb305(22)
      abb305(22)=-spak2k4*abb305(54)
      abb305(38)=spak1k2*abb305(50)
      abb305(22)=abb305(22)+abb305(38)
      abb305(22)=8.0_ki*abb305(22)
      abb305(34)=8.0_ki*spbk7l5*abb305(34)
      abb305(38)=abb305(20)*mB
      abb305(19)=abb305(38)*abb305(19)
      abb305(39)=-abb305(20)*abb305(10)
      abb305(19)=abb305(39)+abb305(19)
      abb305(19)=8.0_ki*abb305(19)
      abb305(39)=abb305(28)*abb305(46)
      abb305(41)=-abb305(44)*abb305(39)
      abb305(17)=abb305(23)*abb305(17)
      abb305(11)=abb305(11)*abb305(7)
      abb305(11)=abb305(17)-abb305(11)
      abb305(17)=-abb305(3)*abb305(11)
      abb305(17)=abb305(17)+abb305(32)
      abb305(17)=spbl6k2*abb305(17)
      abb305(32)=abb305(28)*abb305(30)
      abb305(49)=-spak2l5*abb305(44)
      abb305(17)=abb305(49)+abb305(17)+abb305(32)
      abb305(17)=8.0_ki*abb305(17)
      abb305(49)=-32.0_ki*abb305(30)
      abb305(50)=8.0_ki*spak2k7
      abb305(43)=-abb305(43)*abb305(50)
      abb305(32)=-8.0_ki*abb305(32)
      abb305(40)=8.0_ki*abb305(40)
      abb305(11)=abb305(11)*abb305(40)
      abb305(29)=-abb305(29)*abb305(48)
      abb305(33)=-8.0_ki*abb305(33)
      abb305(9)=abb305(9)*abb305(8)
      abb305(38)=abb305(38)*abb305(9)
      abb305(20)=-abb305(20)*abb305(51)
      abb305(20)=abb305(20)+abb305(38)
      abb305(20)=spak4k7*abb305(20)
      abb305(9)=mB*abb305(9)
      abb305(9)=-abb305(51)+abb305(9)
      abb305(9)=spak1k7*abb305(16)*abb305(9)
      abb305(9)=abb305(20)+abb305(9)
      abb305(9)=abb305(9)*abb305(46)
      abb305(20)=spak4l5*abb305(44)
      abb305(38)=spak1l5*abb305(31)
      abb305(20)=abb305(38)+abb305(20)+abb305(52)
      abb305(20)=8.0_ki*abb305(20)
      abb305(30)=16.0_ki*abb305(30)
      abb305(18)=mB*abb305(18)
      abb305(10)=-abb305(16)*abb305(10)
      abb305(10)=abb305(10)+abb305(18)
      abb305(10)=8.0_ki*abb305(10)
      abb305(16)=-abb305(31)*abb305(39)
      abb305(18)=abb305(23)*abb305(27)
      abb305(23)=abb305(26)*abb305(7)
      abb305(18)=abb305(18)-abb305(23)
      abb305(23)=-abb305(3)*abb305(18)
      abb305(15)=abb305(23)-abb305(15)
      abb305(15)=spbl6k2*abb305(15)
      abb305(23)=abb305(28)*abb305(35)
      abb305(26)=-spak2l5*abb305(31)
      abb305(15)=abb305(26)+abb305(15)+abb305(23)
      abb305(15)=8.0_ki*abb305(15)
      abb305(26)=-32.0_ki*abb305(35)
      abb305(27)=abb305(42)*abb305(50)
      abb305(23)=-8.0_ki*abb305(23)
      abb305(18)=abb305(18)*abb305(40)
      abb305(24)=8.0_ki*abb305(24)
      abb305(28)=16.0_ki*abb305(35)
      R2d305=0.0_ki
      rat2 = rat2 + R2d305
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='305' value='", &
          & R2d305, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd305h7