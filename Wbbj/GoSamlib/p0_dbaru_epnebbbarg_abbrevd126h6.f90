module     p0_dbaru_epnebbbarg_abbrevd126h6
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh6
   implicit none
   private
   complex(ki), dimension(51), public :: abb126
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
      abb126(6)=spbk7k2**(-1)
      abb126(7)=spak2l5**(-1)
      abb126(8)=spbl5k2**(-1)
      abb126(9)=spak2l6**(-1)
      abb126(10)=spbk7k3*spak1k7
      abb126(11)=abb126(10)*spak4k7
      abb126(12)=spbk4k3*spak4k7
      abb126(13)=abb126(12)*spak1k4
      abb126(11)=abb126(11)+abb126(13)
      abb126(13)=c3*abb126(3)
      abb126(14)=c4*abb126(3)**2
      abb126(13)=abb126(13)-abb126(14)
      abb126(14)=TR*gW
      abb126(14)=abb126(5)*i_*CVDU*abb126(4)*abb126(2)*abb126(1)*abb126(14)**2
      abb126(15)=-abb126(14)*abb126(13)
      abb126(16)=abb126(15)*abb126(6)
      abb126(17)=abb126(11)*spal5l6*abb126(16)*spbl6k2**2
      abb126(18)=16.0_ki*abb126(17)
      abb126(19)=spal5k7*spak1k4
      abb126(20)=spak4l5*spak1k7
      abb126(21)=abb126(19)+abb126(20)
      abb126(13)=abb126(13)*abb126(14)*spbl6k2*abb126(6)
      abb126(14)=-spbk3k2*abb126(13)
      abb126(22)=abb126(14)*abb126(21)
      abb126(23)=32.0_ki*abb126(22)
      abb126(24)=mB**2
      abb126(25)=abb126(24)*abb126(8)
      abb126(26)=abb126(14)*abb126(25)
      abb126(27)=abb126(26)*abb126(7)
      abb126(28)=abb126(21)*abb126(27)
      abb126(29)=-spbk3k2*abb126(16)
      abb126(24)=abb126(24)*abb126(9)
      abb126(30)=abb126(24)*spak1k4
      abb126(31)=abb126(30)*abb126(29)
      abb126(32)=abb126(14)*spak1k4
      abb126(31)=abb126(31)+abb126(32)
      abb126(33)=abb126(31)*spal5k7
      abb126(34)=abb126(24)*spak1k7
      abb126(35)=abb126(34)*abb126(29)
      abb126(36)=abb126(14)*spak1k7
      abb126(35)=abb126(35)+abb126(36)
      abb126(37)=abb126(35)*spak4l5
      abb126(28)=-abb126(28)+abb126(33)+abb126(37)
      abb126(33)=32.0_ki*abb126(28)
      abb126(17)=8.0_ki*abb126(17)
      abb126(22)=16.0_ki*abb126(22)
      abb126(28)=16.0_ki*abb126(28)
      abb126(37)=abb126(24)*spak2l5
      abb126(38)=abb126(15)*abb126(37)
      abb126(15)=-spbl6k2*abb126(15)
      abb126(39)=abb126(15)*spak2l5
      abb126(38)=abb126(38)+abb126(39)
      abb126(39)=-spak1k7*abb126(38)
      abb126(40)=abb126(15)*abb126(25)
      abb126(41)=spak1k7*abb126(40)
      abb126(39)=abb126(41)+abb126(39)
      abb126(39)=spbk7k3*spak4k7*abb126(39)
      abb126(42)=-spak1k4*abb126(38)
      abb126(43)=abb126(25)*spak1k4
      abb126(15)=abb126(15)*abb126(43)
      abb126(15)=abb126(15)+abb126(42)
      abb126(12)=abb126(15)*abb126(12)
      abb126(15)=-abb126(13)*spal5l6
      abb126(42)=abb126(15)*spbk7l6
      abb126(11)=abb126(11)*abb126(42)
      abb126(11)=abb126(11)+abb126(39)+abb126(12)
      abb126(11)=8.0_ki*abb126(11)
      abb126(12)=abb126(37)*abb126(29)
      abb126(39)=abb126(15)*spbl6k3
      abb126(12)=abb126(12)-abb126(39)
      abb126(39)=spak1k4*abb126(12)
      abb126(44)=abb126(32)*spak2l5
      abb126(43)=abb126(43)*abb126(14)
      abb126(39)=-abb126(43)+abb126(44)+abb126(39)
      abb126(44)=16.0_ki*abb126(39)
      abb126(20)=abb126(20)*spbk7k3
      abb126(45)=-abb126(20)*abb126(13)
      abb126(46)=-abb126(13)*spak1k4
      abb126(47)=abb126(46)*spbk7k3
      abb126(48)=abb126(47)*spal5k7
      abb126(45)=abb126(45)+abb126(48)
      abb126(45)=32.0_ki*abb126(45)
      abb126(30)=-abb126(30)*abb126(16)
      abb126(30)=abb126(30)+abb126(46)
      abb126(49)=spal5k7*abb126(30)
      abb126(50)=-abb126(13)*spak1k7
      abb126(34)=-abb126(34)*abb126(16)
      abb126(34)=abb126(50)+abb126(34)
      abb126(50)=spak4l5*abb126(34)
      abb126(49)=abb126(49)+abb126(50)
      abb126(49)=spbk7k3*abb126(49)
      abb126(48)=-abb126(25)*abb126(48)
      abb126(50)=-abb126(25)*abb126(13)
      abb126(51)=-abb126(20)*abb126(50)
      abb126(48)=abb126(48)+abb126(51)
      abb126(48)=abb126(7)*abb126(48)
      abb126(48)=abb126(48)+abb126(49)
      abb126(48)=32.0_ki*abb126(48)
      abb126(39)=-8.0_ki*abb126(39)
      abb126(21)=abb126(29)*abb126(21)
      abb126(29)=abb126(21)*spbl5k2
      abb126(32)=abb126(32)*spal6k7
      abb126(36)=abb126(36)*spak4l6
      abb126(29)=-abb126(29)+abb126(32)+abb126(36)
      abb126(32)=16.0_ki*abb126(29)
      abb126(29)=8.0_ki*abb126(29)
      abb126(19)=abb126(19)*spbk7k3
      abb126(19)=abb126(19)+abb126(20)
      abb126(19)=-abb126(19)*abb126(16)
      abb126(20)=-spbl5k2*abb126(19)
      abb126(36)=spal6k7*abb126(47)
      abb126(49)=-spak4l6*abb126(13)*abb126(10)
      abb126(20)=abb126(49)+abb126(20)+abb126(36)
      abb126(20)=16.0_ki*abb126(20)
      abb126(27)=spak1k7*abb126(27)
      abb126(27)=abb126(27)-abb126(35)
      abb126(27)=abb126(27)*spak2k4
      abb126(35)=abb126(43)*abb126(7)
      abb126(31)=abb126(35)-abb126(31)
      abb126(31)=abb126(31)*spak2k7
      abb126(21)=abb126(21)*spbl6l5
      abb126(21)=-abb126(27)+abb126(31)-abb126(21)
      abb126(27)=16.0_ki*abb126(21)
      abb126(21)=8.0_ki*abb126(21)
      abb126(30)=-spbk7k3*abb126(30)
      abb126(31)=abb126(7)*abb126(25)*abb126(47)
      abb126(30)=abb126(30)+abb126(31)
      abb126(30)=spak2k7*abb126(30)
      abb126(31)=spbk7k3*abb126(34)
      abb126(34)=abb126(50)*abb126(7)
      abb126(10)=-abb126(10)*abb126(34)
      abb126(10)=abb126(31)+abb126(10)
      abb126(10)=spak2k4*abb126(10)
      abb126(19)=-spbl6l5*abb126(19)
      abb126(10)=abb126(19)+abb126(30)+abb126(10)
      abb126(10)=16.0_ki*abb126(10)
      abb126(14)=abb126(14)*spak2l5
      abb126(12)=-abb126(26)+abb126(14)+abb126(12)
      abb126(14)=spak1k3*abb126(12)
      abb126(19)=abb126(42)-abb126(38)
      abb126(26)=spak1k7*abb126(19)
      abb126(25)=spak2l5-abb126(25)
      abb126(25)=abb126(46)*abb126(25)
      abb126(30)=-abb126(16)*abb126(37)
      abb126(31)=spak1k4*abb126(30)
      abb126(25)=abb126(31)+abb126(25)
      abb126(25)=spbk4k2*abb126(25)
      abb126(31)=-spbl6k4*spak1k4*abb126(15)
      abb126(14)=abb126(31)+abb126(25)+abb126(14)+abb126(41)+abb126(26)
      abb126(14)=8.0_ki*abb126(14)
      abb126(25)=32.0_ki*spak1l5
      abb126(26)=-abb126(25)*abb126(13)
      abb126(24)=-abb126(16)*abb126(24)
      abb126(24)=-abb126(24)+abb126(34)+abb126(13)
      abb126(25)=-abb126(24)*abb126(25)
      abb126(16)=-abb126(16)*spak1l5
      abb126(31)=-spbl5k2*abb126(16)
      abb126(34)=-spak1l6*abb126(13)
      abb126(31)=abb126(31)+abb126(34)
      abb126(31)=16.0_ki*abb126(31)
      abb126(24)=spak1k2*abb126(24)
      abb126(16)=-spbl6l5*abb126(16)
      abb126(16)=abb126(16)+abb126(24)
      abb126(16)=16.0_ki*abb126(16)
      abb126(24)=-spak4k7*abb126(12)
      abb126(34)=8.0_ki*abb126(24)
      abb126(15)=-8.0_ki*abb126(15)
      abb126(12)=spak3k4*abb126(12)
      abb126(19)=-abb126(40)-abb126(19)
      abb126(19)=spak4k7*abb126(19)
      abb126(12)=abb126(12)+abb126(19)
      abb126(12)=8.0_ki*abb126(12)
      abb126(19)=16.0_ki*abb126(24)
      abb126(13)=spak2l5*abb126(13)
      abb126(13)=-abb126(30)+abb126(13)+abb126(50)
      abb126(13)=8.0_ki*abb126(13)
      R2d126=0.0_ki
      rat2 = rat2 + R2d126
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='126' value='", &
          & R2d126, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd126h6
