module     p0_dbaru_epnebbbarg_abbrevd81h5
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh5
   implicit none
   private
   complex(ki), dimension(70), public :: abb81
   complex(ki), public :: R2d81
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
      abb81(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb81(2)=NC**(-1)
      abb81(3)=sqrt2**(-1)
      abb81(4)=es56**(-1)
      abb81(5)=spbk7k2**(-1)
      abb81(6)=spak2l5**(-1)
      abb81(7)=spbl6k2**(-1)
      abb81(8)=c3*abb81(2)
      abb81(9)=c4*abb81(2)**2
      abb81(10)=-c2+abb81(8)-abb81(9)
      abb81(11)=abb81(4)*i_*CVDU*abb81(3)*abb81(1)
      abb81(12)=TR*gW
      abb81(12)=abb81(12)**2
      abb81(13)=-abb81(12)*abb81(11)*abb81(10)
      abb81(14)=spak4k7*abb81(13)
      abb81(15)=spak4l6*spbl5k2
      abb81(16)=-spbk4k3*abb81(15)
      abb81(17)=spal6k7*spbl5k2
      abb81(18)=spbk7k3*abb81(17)
      abb81(16)=abb81(16)+abb81(18)
      abb81(16)=8.0_ki*abb81(14)*spak1k2*abb81(16)
      abb81(8)=-abb81(8)+abb81(9)+c2
      abb81(9)=abb81(11)*abb81(12)*abb81(5)
      abb81(8)=abb81(9)*abb81(8)
      abb81(11)=spak4k7*abb81(8)
      abb81(12)=abb81(11)*spbl5k2
      abb81(18)=abb81(12)*spbk7k3
      abb81(19)=abb81(18)*spak1l6
      abb81(9)=-abb81(10)*abb81(9)*spbk3k2
      abb81(10)=abb81(9)*spak1k2
      abb81(20)=abb81(10)*abb81(15)
      abb81(19)=abb81(19)+abb81(20)
      abb81(21)=-16.0_ki*abb81(19)
      abb81(20)=16.0_ki*abb81(20)
      abb81(22)=mB**2*abb81(7)*abb81(6)
      abb81(23)=abb81(14)*abb81(22)
      abb81(24)=spak1k7*spbk7k3
      abb81(25)=-spbk4k3*spak1k4
      abb81(25)=abb81(25)-abb81(24)
      abb81(25)=16.0_ki*abb81(23)*abb81(25)
      abb81(26)=abb81(9)*abb81(22)
      abb81(27)=abb81(26)*spak1k4
      abb81(28)=-64.0_ki*abb81(27)
      abb81(27)=32.0_ki*abb81(27)
      abb81(29)=spbl5k3*spak1l6
      abb81(30)=abb81(29)*abb81(9)
      abb81(31)=-abb81(8)*spbk3k2**2
      abb81(32)=abb81(22)*spak1k2
      abb81(33)=abb81(31)*abb81(32)
      abb81(30)=abb81(30)-abb81(33)
      abb81(30)=abb81(30)*spak3k4
      abb81(33)=abb81(14)*abb81(29)
      abb81(34)=spak4k7*abb81(9)
      abb81(35)=spbk7l5*spak1l6
      abb81(36)=abb81(35)*abb81(34)
      abb81(30)=abb81(30)+abb81(33)+abb81(36)
      abb81(33)=-16.0_ki*abb81(30)
      abb81(19)=abb81(19)+abb81(30)
      abb81(19)=8.0_ki*abb81(19)
      abb81(30)=abb81(14)*abb81(32)
      abb81(36)=spbk7k3*abb81(30)
      abb81(37)=abb81(11)*spbk7k3
      abb81(38)=-abb81(37)*abb81(35)
      abb81(36)=abb81(36)+abb81(38)
      abb81(36)=8.0_ki*abb81(36)
      abb81(38)=abb81(8)*abb81(22)
      abb81(39)=32.0_ki*spak1k4
      abb81(39)=-spbk7k3*abb81(39)*abb81(38)
      abb81(31)=8.0_ki*spak3k4*spak1k2*abb81(31)
      abb81(40)=16.0_ki*spak1k4
      abb81(40)=abb81(9)*abb81(40)
      abb81(41)=8.0_ki*abb81(9)
      abb81(41)=-spak1k4*abb81(41)
      abb81(42)=16.0_ki*abb81(8)
      abb81(43)=spbk7k3*spak1k4*abb81(42)
      abb81(44)=abb81(18)*spak1k7
      abb81(12)=abb81(12)*spbk4k3
      abb81(45)=abb81(12)*spak1k4
      abb81(44)=abb81(44)+abb81(45)
      abb81(45)=16.0_ki*abb81(44)
      abb81(44)=-8.0_ki*abb81(44)
      abb81(46)=-spak1k2*abb81(34)
      abb81(47)=abb81(11)*spbk4k3
      abb81(48)=spak1k4*abb81(47)
      abb81(37)=spak1k7*abb81(37)
      abb81(37)=abb81(37)+abb81(46)+abb81(48)
      abb81(37)=spbk7l5*abb81(37)
      abb81(46)=-spak1k2*abb81(14)
      abb81(48)=-spak3k4*abb81(10)
      abb81(46)=abb81(46)+abb81(48)
      abb81(46)=spbl5k3*abb81(46)
      abb81(37)=abb81(37)+abb81(46)
      abb81(37)=8.0_ki*abb81(37)
      abb81(46)=abb81(8)*spbl5k3
      abb81(48)=abb81(46)*spak1k4
      abb81(49)=16.0_ki*abb81(48)
      abb81(48)=8.0_ki*abb81(48)
      abb81(17)=-abb81(13)*abb81(17)
      abb81(50)=abb81(15)*abb81(8)
      abb81(51)=spbk4k2*abb81(50)
      abb81(17)=abb81(17)+abb81(51)
      abb81(17)=spak1k2*abb81(17)
      abb81(10)=spak3l6*spbl5k2*abb81(10)
      abb81(10)=abb81(10)+abb81(17)
      abb81(10)=8.0_ki*abb81(10)
      abb81(17)=spak1k7*abb81(13)*abb81(22)
      abb81(51)=spbk4k2*spak1k4*abb81(38)
      abb81(52)=spak1k3*abb81(26)
      abb81(17)=abb81(52)+abb81(17)+abb81(51)
      abb81(17)=16.0_ki*abb81(17)
      abb81(51)=abb81(8)*spak1l6
      abb81(52)=16.0_ki*spbl5k2*abb81(51)
      abb81(53)=8.0_ki*abb81(51)
      abb81(54)=-spbl5k2*abb81(53)
      abb81(13)=-abb81(13)*abb81(32)
      abb81(55)=spbk7l5*abb81(51)
      abb81(13)=abb81(13)+abb81(55)
      abb81(13)=8.0_ki*abb81(13)
      abb81(55)=-spbk7l5*spak1k7
      abb81(56)=spbl5k4*spak1k4
      abb81(55)=abb81(56)+abb81(55)
      abb81(55)=abb81(8)*abb81(55)
      abb81(56)=abb81(8)*spbl5k2
      abb81(57)=spak1k2*abb81(56)
      abb81(46)=spak1k3*abb81(46)
      abb81(46)=abb81(46)+abb81(57)+abb81(55)
      abb81(46)=8.0_ki*abb81(46)
      abb81(12)=abb81(12)*spak1l6
      abb81(55)=-16.0_ki*abb81(12)
      abb81(57)=32.0_ki*abb81(26)
      abb81(57)=spak1k7*abb81(57)
      abb81(12)=8.0_ki*abb81(12)
      abb81(58)=16.0_ki*spak1k7
      abb81(58)=-abb81(26)*abb81(58)
      abb81(59)=spbk4k3*abb81(30)
      abb81(60)=-abb81(47)*abb81(35)
      abb81(59)=abb81(59)+abb81(60)
      abb81(59)=8.0_ki*abb81(59)
      abb81(60)=abb81(9)*abb81(32)
      abb81(61)=abb81(51)*spbl5k3
      abb81(60)=abb81(60)+abb81(61)
      abb81(62)=16.0_ki*abb81(60)
      abb81(38)=32.0_ki*abb81(38)*abb81(24)
      abb81(63)=8.0_ki*abb81(60)
      abb81(64)=abb81(9)*spak1k7
      abb81(65)=-16.0_ki*abb81(64)
      abb81(64)=8.0_ki*abb81(64)
      abb81(24)=-abb81(42)*abb81(24)
      abb81(66)=-spbk4k2*abb81(8)*abb81(32)
      abb81(51)=-spbl5k4*abb81(51)
      abb81(51)=abb81(66)+abb81(51)
      abb81(51)=8.0_ki*abb81(51)
      abb81(15)=abb81(47)*abb81(15)
      abb81(18)=abb81(18)*spal6k7
      abb81(15)=abb81(15)-abb81(18)
      abb81(18)=abb81(29)*abb81(11)
      abb81(29)=-spbk2k1*abb81(18)
      abb81(47)=abb81(34)*abb81(22)
      abb81(66)=-es12*abb81(47)
      abb81(29)=abb81(66)+abb81(29)-abb81(15)
      abb81(29)=8.0_ki*abb81(29)
      abb81(66)=16.0_ki*abb81(47)
      abb81(67)=8.0_ki*abb81(34)
      abb81(56)=8.0_ki*abb81(56)
      abb81(68)=-spal6k7*abb81(56)
      abb81(69)=spbk2k1*abb81(53)
      abb81(70)=8.0_ki*abb81(50)
      abb81(11)=abb81(35)*abb81(11)
      abb81(35)=-spak3k4*abb81(61)
      abb81(35)=abb81(35)-abb81(11)
      abb81(35)=spbk2k1*abb81(35)
      abb81(26)=abb81(26)*spak3k4
      abb81(23)=abb81(26)-abb81(23)
      abb81(26)=-es12*abb81(23)
      abb81(26)=abb81(35)+abb81(26)
      abb81(26)=8.0_ki*abb81(26)
      abb81(35)=16.0_ki*abb81(50)
      abb81(23)=16.0_ki*abb81(23)
      abb81(9)=-spak3k4*abb81(9)
      abb81(9)=abb81(9)+abb81(14)
      abb81(9)=8.0_ki*abb81(9)
      abb81(14)=spak3l6*abb81(56)
      abb81(50)=16.0_ki*abb81(15)
      abb81(47)=-32.0_ki*abb81(47)
      abb81(15)=-8.0_ki*abb81(15)
      abb81(56)=spak3k4*abb81(60)
      abb81(11)=abb81(11)-abb81(30)+abb81(56)
      abb81(11)=spbk3k1*abb81(11)
      abb81(30)=abb81(34)*abb81(32)
      abb81(18)=abb81(30)+abb81(18)
      abb81(18)=spbk7k1*abb81(18)
      abb81(11)=abb81(11)+abb81(18)
      abb81(11)=8.0_ki*abb81(11)
      abb81(18)=16.0_ki*abb81(34)
      abb81(30)=-spbl5k1*abb81(53)
      abb81(22)=-abb81(22)*abb81(42)
      abb81(8)=8.0_ki*abb81(8)
      R2d81=0.0_ki
      rat2 = rat2 + R2d81
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='81' value='", &
          & R2d81, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd81h5
