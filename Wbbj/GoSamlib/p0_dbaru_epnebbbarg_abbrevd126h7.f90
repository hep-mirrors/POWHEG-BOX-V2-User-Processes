module     p0_dbaru_epnebbbarg_abbrevd126h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(53), public :: abb126
   complex(ki), public :: R2d126
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
      abb126(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb126(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb126(3)=NC**(-1)
      abb126(4)=sqrt2**(-1)
      abb126(5)=es56**(-1)
      abb126(6)=spak2l5**(-1)
      abb126(7)=spbk7k2**(-1)
      abb126(8)=spak2l6**(-1)
      abb126(9)=spak2l6*spak4k7*spbl6k2**2
      abb126(10)=abb126(6)*spak1k4
      abb126(11)=abb126(9)*abb126(10)
      abb126(12)=spak2l5*spak4k7*spbl5k2**2
      abb126(13)=abb126(8)*spak1k4
      abb126(14)=abb126(12)*abb126(13)
      abb126(11)=abb126(11)+abb126(14)
      abb126(14)=abb126(3)*c3
      abb126(15)=c4*abb126(3)**2
      abb126(14)=abb126(14)-abb126(15)
      abb126(15)=TR*gW
      abb126(14)=abb126(14)*abb126(7)*abb126(15)**2*CVDU*i_*mB*abb126(5)*abb126&
      &(4)*abb126(2)*abb126(1)
      abb126(11)=abb126(11)*abb126(14)
      abb126(15)=spak1k4*spbl5k2
      abb126(16)=abb126(14)*abb126(15)
      abb126(17)=spak4k7*spbl6k2
      abb126(18)=2.0_ki*abb126(17)
      abb126(19)=abb126(18)*abb126(16)
      abb126(11)=abb126(11)+abb126(19)
      abb126(11)=abb126(11)*spbk4k3
      abb126(19)=spbk7k3*spak1k7
      abb126(20)=abb126(14)*abb126(19)
      abb126(21)=abb126(20)*abb126(8)
      abb126(12)=abb126(21)*abb126(12)
      abb126(22)=abb126(20)*abb126(6)
      abb126(9)=abb126(22)*abb126(9)
      abb126(18)=spbl5k2*abb126(18)*abb126(20)
      abb126(9)=abb126(11)+abb126(18)+abb126(12)+abb126(9)
      abb126(11)=-16.0_ki*abb126(9)
      abb126(12)=abb126(6)*spbl6k2
      abb126(18)=abb126(12)*spak1k4
      abb126(23)=abb126(14)*abb126(18)
      abb126(24)=abb126(8)*spbl5k2
      abb126(25)=abb126(24)*spak1k4
      abb126(26)=abb126(14)*abb126(25)
      abb126(27)=abb126(23)+abb126(26)
      abb126(27)=abb126(27)*spak2k7
      abb126(28)=abb126(27)*spbk3k2
      abb126(29)=abb126(14)*abb126(24)
      abb126(30)=abb126(14)*abb126(12)
      abb126(31)=abb126(29)+abb126(30)
      abb126(32)=abb126(31)*spak2k4
      abb126(33)=spbk3k2*spak1k7
      abb126(34)=abb126(32)*abb126(33)
      abb126(28)=abb126(28)-abb126(34)
      abb126(34)=32.0_ki*abb126(28)
      abb126(35)=spal5k7*spbk3k2
      abb126(36)=abb126(35)*abb126(10)
      abb126(37)=spal6k7*spbk3k2
      abb126(38)=abb126(37)*abb126(13)
      abb126(39)=abb126(33)*spak4l5
      abb126(40)=abb126(39)*abb126(6)
      abb126(33)=abb126(33)*spak4l6
      abb126(41)=abb126(33)*abb126(8)
      abb126(36)=-abb126(41)+abb126(40)+abb126(36)-abb126(38)
      abb126(38)=abb126(14)*spbl6l5
      abb126(36)=abb126(36)*abb126(38)
      abb126(40)=-32.0_ki*abb126(36)
      abb126(9)=-8.0_ki*abb126(9)
      abb126(28)=16.0_ki*abb126(28)
      abb126(36)=-16.0_ki*abb126(36)
      abb126(41)=abb126(12)*spak2l6
      abb126(42)=abb126(41)*spak4k7
      abb126(43)=spak4k7*spbl5k2
      abb126(44)=-abb126(43)-abb126(42)
      abb126(44)=abb126(20)*abb126(44)
      abb126(45)=-spak4k7*abb126(16)
      abb126(42)=abb126(42)*abb126(14)
      abb126(46)=-spak1k4*abb126(42)
      abb126(45)=abb126(45)+abb126(46)
      abb126(45)=spbk4k3*abb126(45)
      abb126(44)=abb126(45)+abb126(44)
      abb126(44)=spbk7l6*abb126(44)
      abb126(45)=abb126(24)*spak2l5
      abb126(46)=abb126(45)*spak4k7
      abb126(47)=-abb126(17)-abb126(46)
      abb126(47)=abb126(20)*abb126(47)
      abb126(48)=spak1k4*spbl6k2
      abb126(49)=abb126(14)*abb126(48)
      abb126(50)=-spak4k7*abb126(49)
      abb126(46)=abb126(46)*abb126(14)
      abb126(51)=-spak1k4*abb126(46)
      abb126(50)=abb126(50)+abb126(51)
      abb126(50)=spbk4k3*abb126(50)
      abb126(47)=abb126(50)+abb126(47)
      abb126(47)=spbk7l5*abb126(47)
      abb126(44)=abb126(44)+abb126(47)
      abb126(44)=8.0_ki*abb126(44)
      abb126(47)=abb126(14)*spak1k4
      abb126(50)=abb126(45)*abb126(47)
      abb126(49)=abb126(50)+abb126(49)
      abb126(50)=abb126(49)*spbl5k3
      abb126(47)=abb126(41)*abb126(47)
      abb126(16)=abb126(47)+abb126(16)
      abb126(47)=abb126(16)*spbl6k3
      abb126(47)=abb126(50)+abb126(47)
      abb126(50)=16.0_ki*abb126(47)
      abb126(19)=abb126(32)*abb126(19)
      abb126(27)=abb126(27)*spbk7k3
      abb126(19)=abb126(19)-abb126(27)
      abb126(19)=32.0_ki*abb126(19)
      abb126(21)=abb126(21)*spak4l6
      abb126(22)=abb126(22)*spak4l5
      abb126(27)=-abb126(22)+abb126(21)
      abb126(27)=spbl6l5*abb126(27)
      abb126(32)=spal6k7*spbk7k3
      abb126(13)=abb126(13)*abb126(32)
      abb126(51)=spal5k7*spbk7k3
      abb126(10)=-abb126(10)*abb126(51)
      abb126(10)=abb126(13)+abb126(10)
      abb126(10)=abb126(38)*abb126(10)
      abb126(10)=abb126(10)+abb126(27)
      abb126(10)=32.0_ki*abb126(10)
      abb126(13)=-8.0_ki*abb126(47)
      abb126(27)=abb126(41)+spbl5k2
      abb126(27)=abb126(14)*abb126(27)
      abb126(41)=-spbk7l6*abb126(27)
      abb126(45)=spbl6k2+abb126(45)
      abb126(45)=abb126(14)*abb126(45)
      abb126(47)=-spbk7l5*abb126(45)
      abb126(41)=abb126(41)+abb126(47)
      abb126(41)=spak1k7*abb126(41)
      abb126(47)=abb126(45)*spbl5k3
      abb126(52)=abb126(27)*spbl6k3
      abb126(47)=abb126(47)+abb126(52)
      abb126(52)=spak1k3*abb126(47)
      abb126(16)=spbl6k4*abb126(16)
      abb126(49)=spbl5k4*abb126(49)
      abb126(16)=abb126(49)+abb126(16)+abb126(52)+abb126(41)
      abb126(16)=8.0_ki*abb126(16)
      abb126(31)=abb126(31)*spak1k2
      abb126(31)=32.0_ki*abb126(31)
      abb126(41)=spak1l6*abb126(8)
      abb126(49)=-spak1l5*abb126(6)
      abb126(41)=abb126(41)+abb126(49)
      abb126(38)=32.0_ki*abb126(38)*abb126(41)
      abb126(41)=abb126(14)*spbk3k2
      abb126(18)=spal6k7*abb126(41)*abb126(18)
      abb126(49)=abb126(30)*abb126(33)
      abb126(52)=abb126(14)*abb126(6)
      abb126(15)=abb126(52)*abb126(15)
      abb126(35)=abb126(15)*abb126(35)
      abb126(52)=abb126(52)*spbl5k2
      abb126(53)=abb126(52)*abb126(39)
      abb126(18)=abb126(18)+abb126(49)+abb126(35)+abb126(53)
      abb126(35)=-16.0_ki*abb126(18)
      abb126(18)=-8.0_ki*abb126(18)
      abb126(23)=-abb126(23)*abb126(32)
      abb126(15)=-abb126(15)*abb126(51)
      abb126(12)=-spak4l6*abb126(12)*abb126(20)
      abb126(22)=-spbl5k2*abb126(22)
      abb126(12)=abb126(22)+abb126(12)+abb126(23)+abb126(15)
      abb126(12)=16.0_ki*abb126(12)
      abb126(15)=-spak1l6*abb126(30)
      abb126(22)=-spak1l5*abb126(52)
      abb126(15)=abb126(15)+abb126(22)
      abb126(15)=16.0_ki*abb126(15)
      abb126(22)=spal5k7*abb126(41)*abb126(25)
      abb126(23)=abb126(29)*abb126(39)
      abb126(25)=abb126(14)*abb126(8)
      abb126(30)=abb126(25)*abb126(48)
      abb126(37)=abb126(30)*abb126(37)
      abb126(25)=abb126(25)*spbl6k2
      abb126(33)=abb126(25)*abb126(33)
      abb126(22)=abb126(22)+abb126(23)+abb126(37)+abb126(33)
      abb126(23)=-16.0_ki*abb126(22)
      abb126(22)=-8.0_ki*abb126(22)
      abb126(30)=-abb126(30)*abb126(32)
      abb126(26)=-abb126(26)*abb126(51)
      abb126(21)=-spbl6k2*abb126(21)
      abb126(20)=-spak4l5*abb126(24)*abb126(20)
      abb126(20)=abb126(20)+abb126(21)+abb126(30)+abb126(26)
      abb126(20)=16.0_ki*abb126(20)
      abb126(21)=-spak1l6*abb126(25)
      abb126(24)=-spak1l5*abb126(29)
      abb126(21)=abb126(21)+abb126(24)
      abb126(21)=16.0_ki*abb126(21)
      abb126(24)=abb126(43)*abb126(14)
      abb126(24)=abb126(24)+abb126(42)
      abb126(25)=abb126(24)*spbl6k3
      abb126(14)=abb126(17)*abb126(14)
      abb126(14)=abb126(46)+abb126(14)
      abb126(17)=abb126(14)*spbl5k3
      abb126(17)=abb126(25)+abb126(17)
      abb126(25)=8.0_ki*abb126(17)
      abb126(26)=8.0_ki*abb126(27)
      abb126(27)=8.0_ki*abb126(45)
      abb126(24)=spbk7l6*abb126(24)
      abb126(14)=spbk7l5*abb126(14)
      abb126(29)=spak3k4*abb126(47)
      abb126(14)=abb126(29)+abb126(24)+abb126(14)
      abb126(14)=8.0_ki*abb126(14)
      abb126(17)=-16.0_ki*abb126(17)
      R2d126=0.0_ki
      rat2 = rat2 + R2d126
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='126' value='", &
          & R2d126, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd126h7
