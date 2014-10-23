module     p0_dbaru_epnebbbarg_abbrevd83h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(51), public :: abb83
   complex(ki), public :: R2d83
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
      abb83(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb83(2)=NC**(-1)
      abb83(3)=sqrt2**(-1)
      abb83(4)=es56**(-1)
      abb83(5)=spbl5k2**(-1)
      abb83(6)=spbk7k2**(-1)
      abb83(7)=spbl6k2**(-1)
      abb83(8)=c4*abb83(2)**2
      abb83(9)=c1*abb83(2)
      abb83(8)=c2+abb83(8)-abb83(9)
      abb83(9)=-abb83(8)*spbk3k2**2
      abb83(10)=TR*gW
      abb83(10)=CVDU*i_*mB*abb83(4)*abb83(3)*abb83(1)*abb83(10)**2
      abb83(11)=abb83(10)*abb83(5)
      abb83(12)=abb83(11)*abb83(6)
      abb83(13)=-abb83(12)*abb83(9)
      abb83(14)=abb83(13)*spak1l6
      abb83(15)=abb83(10)*abb83(7)
      abb83(16)=abb83(15)*abb83(6)
      abb83(9)=-abb83(16)*abb83(9)
      abb83(17)=abb83(9)*spak1l5
      abb83(14)=abb83(14)+abb83(17)
      abb83(14)=abb83(14)*spak3k4
      abb83(17)=8.0_ki*spbk2k1
      abb83(18)=abb83(17)*spak1k7*abb83(14)
      abb83(10)=-abb83(8)*abb83(10)*spbk3k2*abb83(6)
      abb83(19)=-abb83(5)*abb83(10)
      abb83(20)=abb83(19)*spak1l6
      abb83(10)=-abb83(7)*abb83(10)
      abb83(21)=abb83(10)*spak1l5
      abb83(20)=abb83(20)+abb83(21)
      abb83(21)=spak1k4*abb83(20)
      abb83(22)=16.0_ki*spbk2k1
      abb83(23)=abb83(21)*abb83(22)
      abb83(14)=-16.0_ki*abb83(14)
      abb83(24)=-abb83(21)*abb83(17)
      abb83(11)=-abb83(11)*abb83(8)
      abb83(25)=abb83(11)*spak4l6
      abb83(15)=-abb83(15)*abb83(8)
      abb83(26)=abb83(15)*spak4l5
      abb83(25)=abb83(25)+abb83(26)
      abb83(25)=abb83(25)*spbk4k3
      abb83(26)=abb83(11)*spal6k7
      abb83(27)=abb83(15)*spal5k7
      abb83(26)=abb83(26)+abb83(27)
      abb83(27)=spbk7k3*abb83(26)
      abb83(25)=abb83(25)-abb83(27)
      abb83(27)=abb83(11)*spak1l6
      abb83(28)=abb83(15)*spak1l5
      abb83(27)=abb83(27)+abb83(28)
      abb83(28)=-spbk3k1*abb83(27)
      abb83(28)=abb83(28)+abb83(25)
      abb83(28)=spak1k4*abb83(28)
      abb83(29)=-spbk7k1*abb83(21)
      abb83(28)=abb83(29)+abb83(28)
      abb83(28)=8.0_ki*abb83(28)
      abb83(29)=8.0_ki*spak1k7
      abb83(30)=abb83(29)*spak3k4
      abb83(31)=-abb83(13)*abb83(30)
      abb83(32)=32.0_ki*spak1k4
      abb83(33)=-abb83(19)*abb83(32)
      abb83(34)=16.0_ki*spak1k4
      abb83(35)=abb83(34)*abb83(19)
      abb83(12)=-abb83(12)*abb83(8)
      abb83(36)=abb83(34)*spbk7k3
      abb83(37)=abb83(12)*abb83(36)
      abb83(30)=-abb83(9)*abb83(30)
      abb83(32)=-abb83(10)*abb83(32)
      abb83(34)=abb83(34)*abb83(10)
      abb83(8)=-abb83(8)*abb83(16)
      abb83(16)=abb83(8)*abb83(36)
      abb83(27)=8.0_ki*abb83(27)
      abb83(36)=abb83(11)*spak1k7
      abb83(38)=spbk4k2*spak1k4
      abb83(39)=-abb83(12)*abb83(38)
      abb83(40)=spak1k3*abb83(19)
      abb83(39)=abb83(40)-abb83(36)+abb83(39)
      abb83(39)=8.0_ki*abb83(39)
      abb83(40)=abb83(15)*spak1k7
      abb83(38)=-abb83(8)*abb83(38)
      abb83(41)=spak1k3*abb83(10)
      abb83(38)=abb83(41)-abb83(40)+abb83(38)
      abb83(38)=8.0_ki*abb83(38)
      abb83(41)=abb83(20)*spak1k7
      abb83(22)=-abb83(41)*abb83(22)
      abb83(17)=abb83(41)*abb83(17)
      abb83(13)=abb83(13)*spak2l6
      abb83(9)=abb83(9)*spak2l5
      abb83(9)=abb83(13)+abb83(9)
      abb83(13)=-spak1k3*abb83(9)
      abb83(41)=spbk7k3*spak1k7
      abb83(42)=abb83(41)*abb83(26)
      abb83(43)=-es12-es23+es123-es71
      abb83(43)=abb83(20)*abb83(43)
      abb83(44)=-spak4l6*abb83(36)
      abb83(45)=-spak4l5*abb83(40)
      abb83(44)=abb83(44)+abb83(45)
      abb83(44)=spbk4k3*abb83(44)
      abb83(36)=spak1l6*abb83(36)
      abb83(40)=spak1l5*abb83(40)
      abb83(36)=abb83(36)+abb83(40)
      abb83(36)=spbk3k1*abb83(36)
      abb83(13)=abb83(44)+abb83(36)+abb83(43)+abb83(42)+abb83(13)
      abb83(13)=8.0_ki*abb83(13)
      abb83(36)=16.0_ki*abb83(20)
      abb83(20)=8.0_ki*abb83(20)
      abb83(40)=16.0_ki*spak1k7
      abb83(42)=abb83(19)*abb83(40)
      abb83(43)=-abb83(19)*abb83(29)
      abb83(41)=16.0_ki*abb83(41)
      abb83(44)=-abb83(12)*abb83(41)
      abb83(40)=abb83(10)*abb83(40)
      abb83(29)=-abb83(10)*abb83(29)
      abb83(41)=-abb83(8)*abb83(41)
      abb83(45)=-abb83(8)*spak1l5
      abb83(46)=abb83(12)*spak1l6
      abb83(45)=abb83(45)-abb83(46)
      abb83(46)=-8.0_ki*spbk4k2*abb83(45)
      abb83(47)=spak1k4*abb83(9)
      abb83(21)=spbk3k1*abb83(21)
      abb83(21)=abb83(21)+abb83(47)
      abb83(21)=8.0_ki*abb83(21)
      abb83(47)=8.0_ki*spak4k7
      abb83(48)=abb83(19)*abb83(47)
      abb83(47)=abb83(10)*abb83(47)
      abb83(49)=-spak3k4*abb83(19)
      abb83(11)=spak4k7*abb83(11)
      abb83(11)=abb83(49)+abb83(11)
      abb83(11)=8.0_ki*abb83(11)
      abb83(49)=-spak3k4*abb83(10)
      abb83(15)=spak4k7*abb83(15)
      abb83(15)=abb83(49)+abb83(15)
      abb83(15)=8.0_ki*abb83(15)
      abb83(25)=spak4k7*abb83(25)
      abb83(9)=-spak3k4*abb83(9)
      abb83(9)=abb83(9)+abb83(25)
      abb83(9)=8.0_ki*abb83(9)
      abb83(25)=abb83(19)*spak4l6
      abb83(49)=abb83(10)*spak4l5
      abb83(25)=abb83(25)+abb83(49)
      abb83(49)=16.0_ki*abb83(25)
      abb83(25)=8.0_ki*abb83(25)
      abb83(45)=spbk2k1*abb83(45)
      abb83(50)=-spak4l6*abb83(12)
      abb83(51)=-spak4l5*abb83(8)
      abb83(50)=abb83(50)+abb83(51)
      abb83(50)=spbk4k2*abb83(50)
      abb83(19)=spak3l6*abb83(19)
      abb83(10)=spak3l5*abb83(10)
      abb83(10)=abb83(10)+abb83(19)+abb83(45)+abb83(50)+abb83(26)
      abb83(10)=8.0_ki*abb83(10)
      abb83(12)=8.0_ki*abb83(12)
      abb83(8)=8.0_ki*abb83(8)
      R2d83=0.0_ki
      rat2 = rat2 + R2d83
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='83' value='", &
          & R2d83, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd83h4
