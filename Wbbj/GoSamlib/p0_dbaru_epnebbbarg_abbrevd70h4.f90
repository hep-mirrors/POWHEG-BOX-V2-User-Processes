module     p0_dbaru_epnebbbarg_abbrevd70h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(52), public :: abb70
   complex(ki), public :: R2d70
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
      abb70(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb70(2)=sqrt2**(-1)
      abb70(3)=es56**(-1)
      abb70(4)=spbl5k2**(-1)
      abb70(5)=spbl6k2**(-1)
      abb70(6)=spbk7k2**(-1)
      abb70(7)=TR*gW
      abb70(7)=abb70(1)*mB*i_*c2*CVDU*abb70(3)*abb70(2)*abb70(7)**2
      abb70(8)=abb70(5)*abb70(7)
      abb70(9)=abb70(8)*spak1l5
      abb70(10)=abb70(9)*spbl5k2
      abb70(11)=spak1l6*abb70(7)
      abb70(10)=abb70(10)+abb70(11)
      abb70(10)=abb70(10)*spal5k7
      abb70(12)=abb70(4)*abb70(7)
      abb70(13)=abb70(12)*spak1l6
      abb70(14)=abb70(13)*spbl6k2
      abb70(15)=spak1l5*abb70(7)
      abb70(14)=abb70(14)+abb70(15)
      abb70(14)=abb70(14)*spal6k7
      abb70(16)=abb70(13)+abb70(9)
      abb70(17)=spak1k7*spbk2k1
      abb70(18)=abb70(17)*abb70(16)
      abb70(10)=abb70(18)+abb70(10)+abb70(14)
      abb70(14)=spbk7k3*spak4k7
      abb70(18)=-abb70(14)*abb70(10)
      abb70(19)=spbl6k2*spak4l6
      abb70(13)=abb70(13)*abb70(19)
      abb70(20)=spbl5k2*spak4l5
      abb70(9)=abb70(9)*abb70(20)
      abb70(9)=abb70(9)+abb70(13)
      abb70(13)=spbk4k3*spak4k7
      abb70(9)=abb70(13)*abb70(9)
      abb70(15)=spak4l6*abb70(15)
      abb70(11)=spak4l5*abb70(11)
      abb70(11)=abb70(11)+abb70(15)
      abb70(11)=spak4k7*abb70(11)
      abb70(15)=abb70(16)*spak4k7
      abb70(21)=spak1k4*spbk2k1
      abb70(22)=-abb70(21)*abb70(15)
      abb70(11)=abb70(22)+abb70(11)
      abb70(11)=spbk4k3*abb70(11)
      abb70(9)=abb70(11)+abb70(9)+abb70(18)
      abb70(9)=4.0_ki*abb70(9)
      abb70(7)=abb70(6)*abb70(7)
      abb70(11)=abb70(7)*spbk3k2
      abb70(18)=spak1l5*abb70(5)
      abb70(22)=abb70(11)*abb70(18)
      abb70(23)=abb70(20)*abb70(22)
      abb70(24)=abb70(11)*spak1l6
      abb70(25)=abb70(4)*abb70(24)
      abb70(26)=abb70(19)*abb70(25)
      abb70(27)=spak4l5*abb70(24)
      abb70(28)=abb70(11)*spak1l5
      abb70(29)=abb70(28)*spak4l6
      abb70(23)=abb70(29)+abb70(27)+abb70(23)+abb70(26)
      abb70(26)=abb70(22)+abb70(25)
      abb70(27)=abb70(21)*abb70(26)
      abb70(29)=-abb70(23)+3.0_ki*abb70(27)
      abb70(30)=8.0_ki*abb70(29)
      abb70(18)=abb70(18)*abb70(7)
      abb70(31)=abb70(7)*abb70(4)
      abb70(32)=abb70(31)*spak1l6
      abb70(33)=abb70(32)+abb70(18)
      abb70(34)=abb70(33)*spbk3k2**2
      abb70(35)=8.0_ki*spak3k4
      abb70(35)=abb70(35)*abb70(34)
      abb70(23)=abb70(23)-abb70(27)
      abb70(23)=8.0_ki*abb70(23)
      abb70(27)=-spak3k4*abb70(34)
      abb70(27)=abb70(27)+abb70(29)
      abb70(27)=4.0_ki*abb70(27)
      abb70(29)=4.0_ki*abb70(33)
      abb70(34)=abb70(21)*abb70(29)
      abb70(34)=abb70(15)+abb70(34)
      abb70(34)=4.0_ki*spbk7k3*abb70(34)
      abb70(36)=abb70(26)*spak3k4
      abb70(37)=abb70(36)+abb70(15)
      abb70(38)=-spbl6k3*abb70(37)
      abb70(13)=abb70(13)*spak1k4
      abb70(14)=abb70(14)*spak1k7
      abb70(13)=abb70(13)+abb70(14)
      abb70(14)=-abb70(12)*abb70(13)
      abb70(39)=abb70(26)*spak4k7
      abb70(40)=-spbk7l6*abb70(39)
      abb70(14)=abb70(40)+2.0_ki*abb70(14)+abb70(38)
      abb70(14)=4.0_ki*abb70(14)
      abb70(38)=abb70(11)*abb70(4)
      abb70(40)=32.0_ki*spak1k4
      abb70(41)=abb70(38)*abb70(40)
      abb70(42)=16.0_ki*spak1k4
      abb70(43)=abb70(42)*abb70(38)
      abb70(44)=abb70(42)*spbk7k3
      abb70(45)=abb70(31)*abb70(44)
      abb70(46)=-spbl5k3*abb70(37)
      abb70(13)=-abb70(8)*abb70(13)
      abb70(47)=-spbk7l5*abb70(39)
      abb70(13)=abb70(47)+2.0_ki*abb70(13)+abb70(46)
      abb70(13)=4.0_ki*abb70(13)
      abb70(11)=abb70(11)*abb70(5)
      abb70(40)=abb70(11)*abb70(40)
      abb70(42)=abb70(42)*abb70(11)
      abb70(46)=abb70(7)*abb70(5)
      abb70(44)=abb70(46)*abb70(44)
      abb70(21)=-abb70(33)*abb70(21)
      abb70(19)=abb70(32)*abb70(19)
      abb70(20)=abb70(18)*abb70(20)
      abb70(33)=abb70(7)*spak1l5
      abb70(47)=spak4l6*abb70(33)
      abb70(7)=abb70(7)*spak1l6
      abb70(48)=spak4l5*abb70(7)
      abb70(19)=abb70(20)+abb70(19)+abb70(48)+abb70(21)+abb70(47)
      abb70(19)=spbk4k2*abb70(19)
      abb70(20)=-spak1k3*spbk2k1*abb70(26)
      abb70(21)=spbl6k2*abb70(25)
      abb70(21)=abb70(28)+abb70(21)
      abb70(21)=spak3l6*abb70(21)
      abb70(22)=spbl5k2*abb70(22)
      abb70(22)=abb70(24)+abb70(22)
      abb70(22)=spak3l5*abb70(22)
      abb70(10)=abb70(22)+abb70(21)+abb70(20)+abb70(19)-abb70(10)
      abb70(10)=4.0_ki*abb70(10)
      abb70(19)=4.0_ki*abb70(16)
      abb70(20)=2.0_ki*spak1k7
      abb70(21)=-abb70(12)*abb70(20)
      abb70(22)=spbk4k2*spak1k4
      abb70(22)=2.0_ki*abb70(22)
      abb70(24)=-abb70(31)*abb70(22)
      abb70(25)=2.0_ki*spak1k3
      abb70(28)=-abb70(38)*abb70(25)
      abb70(32)=-spbl6k2*abb70(32)
      abb70(21)=abb70(28)+abb70(24)+abb70(32)-abb70(33)+abb70(21)
      abb70(21)=4.0_ki*abb70(21)
      abb70(20)=-abb70(8)*abb70(20)
      abb70(18)=-spbl5k2*abb70(18)
      abb70(22)=-abb70(46)*abb70(22)
      abb70(24)=-abb70(11)*abb70(25)
      abb70(7)=abb70(24)+abb70(22)+abb70(18)-abb70(7)+abb70(20)
      abb70(7)=4.0_ki*abb70(7)
      abb70(18)=16.0_ki*abb70(26)
      abb70(20)=-abb70(17)*abb70(18)
      abb70(22)=8.0_ki*abb70(26)
      abb70(17)=-abb70(22)*abb70(17)
      abb70(24)=abb70(29)*spbk2k1
      abb70(25)=spbk7k3*spak1k7
      abb70(28)=-abb70(25)*abb70(24)
      abb70(15)=spbk4k3*abb70(15)
      abb70(15)=abb70(28)+abb70(15)
      abb70(15)=4.0_ki*abb70(15)
      abb70(26)=4.0_ki*abb70(26)
      abb70(28)=abb70(38)*spak1k7
      abb70(32)=-16.0_ki*abb70(28)
      abb70(28)=-8.0_ki*abb70(28)
      abb70(25)=16.0_ki*abb70(25)
      abb70(33)=-abb70(31)*abb70(25)
      abb70(47)=abb70(11)*spak1k7
      abb70(48)=-16.0_ki*abb70(47)
      abb70(47)=-8.0_ki*abb70(47)
      abb70(25)=-abb70(46)*abb70(25)
      abb70(29)=spbk4k2*abb70(29)
      abb70(49)=spbk2k1*spak4k7
      abb70(50)=abb70(22)*abb70(49)
      abb70(51)=8.0_ki*spak4k7
      abb70(52)=abb70(51)*abb70(38)
      abb70(51)=abb70(51)*abb70(11)
      abb70(16)=abb70(16)*abb70(49)
      abb70(36)=-spbk2k1*abb70(36)
      abb70(16)=abb70(16)+abb70(36)
      abb70(16)=8.0_ki*abb70(16)
      abb70(12)=spak4k7*abb70(12)
      abb70(36)=-spak3k4*abb70(38)
      abb70(12)=abb70(12)+abb70(36)
      abb70(12)=8.0_ki*abb70(12)
      abb70(8)=spak4k7*abb70(8)
      abb70(36)=-spak3k4*abb70(11)
      abb70(8)=abb70(8)+abb70(36)
      abb70(8)=8.0_ki*abb70(8)
      abb70(18)=abb70(49)*abb70(18)
      abb70(36)=spbk3k1*abb70(37)
      abb70(37)=-spbk7k1*abb70(39)
      abb70(36)=abb70(36)+abb70(37)
      abb70(36)=4.0_ki*abb70(36)
      abb70(37)=16.0_ki*spak4k7
      abb70(37)=abb70(38)*abb70(37)
      abb70(11)=16.0_ki*abb70(11)
      abb70(11)=spak4k7*abb70(11)
      abb70(31)=-8.0_ki*abb70(31)
      abb70(38)=-8.0_ki*abb70(46)
      R2d70=0.0_ki
      rat2 = rat2 + R2d70
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='70' value='", &
          & R2d70, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd70h4
