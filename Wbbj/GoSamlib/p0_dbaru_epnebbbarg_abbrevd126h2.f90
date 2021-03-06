module     p0_dbaru_epnebbbarg_abbrevd126h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(55), public :: abb126
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
      abb126(6)=spbl5k2**(-1)
      abb126(7)=spak2k7**(-1)
      abb126(8)=spak2l6**(-1)
      abb126(9)=spak2l5**(-1)
      abb126(10)=c3*abb126(3)
      abb126(11)=c4*abb126(3)**2
      abb126(10)=abb126(10)-abb126(11)
      abb126(11)=TR*gW
      abb126(11)=abb126(5)*i_*CVDU*abb126(4)*abb126(2)*abb126(1)*abb126(11)**2
      abb126(12)=abb126(10)*abb126(11)*spbl6k2*abb126(7)
      abb126(13)=mB**2
      abb126(14)=abb126(13)*abb126(6)
      abb126(15)=abb126(14)*spak1k4
      abb126(16)=spak2l5*spak1k4
      abb126(17)=abb126(16)-abb126(15)
      abb126(17)=-abb126(12)*abb126(17)
      abb126(18)=-abb126(11)*abb126(10)
      abb126(19)=-abb126(7)*abb126(18)
      abb126(13)=abb126(13)*abb126(8)
      abb126(20)=abb126(13)*abb126(16)
      abb126(21)=abb126(19)*abb126(20)
      abb126(17)=abb126(17)+abb126(21)
      abb126(21)=abb126(17)*spbk7k2
      abb126(22)=-abb126(12)*spal5l6
      abb126(23)=abb126(22)*spbk7l6
      abb126(24)=spak1k4*abb126(23)
      abb126(21)=abb126(21)+abb126(24)
      abb126(24)=spbk4k3*spak2k4*abb126(21)
      abb126(25)=-spbk7k3*abb126(12)
      abb126(26)=abb126(25)*spak2l5
      abb126(10)=abb126(10)*abb126(11)*spbk7k3
      abb126(11)=-abb126(7)*abb126(10)
      abb126(27)=abb126(13)*spak2l5
      abb126(28)=abb126(27)*abb126(11)
      abb126(29)=abb126(25)*abb126(14)
      abb126(26)=-abb126(29)+abb126(26)-abb126(28)
      abb126(28)=spbk7k2*spak1k7
      abb126(30)=abb126(28)*abb126(26)
      abb126(31)=abb126(30)*spak2k4
      abb126(20)=abb126(20)*abb126(11)
      abb126(32)=abb126(15)*abb126(25)
      abb126(33)=abb126(25)*abb126(16)
      abb126(20)=-abb126(33)+abb126(20)+abb126(32)
      abb126(34)=-es12+es712-es71
      abb126(35)=-abb126(20)*abb126(34)
      abb126(36)=abb126(25)*spak1k7
      abb126(37)=abb126(36)*spak2k4
      abb126(38)=spbl6k2*abb126(10)
      abb126(39)=abb126(38)*spak1k4
      abb126(37)=abb126(37)+abb126(39)
      abb126(40)=spbk7l6*spal5l6
      abb126(37)=abb126(37)*abb126(40)
      abb126(24)=abb126(37)+abb126(24)+abb126(31)+abb126(35)
      abb126(31)=16.0_ki*abb126(24)
      abb126(37)=abb126(18)*spbk7k3**2
      abb126(41)=-spbl6k2*abb126(37)
      abb126(42)=abb126(41)*spak1k4
      abb126(43)=abb126(42)*spak3l5
      abb126(44)=spak1k3*spak4l5
      abb126(45)=abb126(44)*abb126(41)
      abb126(43)=abb126(43)-abb126(45)
      abb126(43)=16.0_ki*abb126(43)
      abb126(46)=spak1k2*spak4l5
      abb126(47)=abb126(46)*abb126(25)
      abb126(33)=abb126(47)-abb126(33)
      abb126(47)=32.0_ki*abb126(33)
      abb126(48)=abb126(39)*abb126(40)
      abb126(35)=abb126(48)+abb126(35)
      abb126(35)=16.0_ki*abb126(35)
      abb126(48)=-abb126(37)*abb126(13)
      abb126(49)=abb126(48)*spak1k4
      abb126(50)=abb126(15)*abb126(41)*abb126(9)
      abb126(49)=abb126(49)+abb126(50)-abb126(42)
      abb126(50)=spak3l5*abb126(49)
      abb126(48)=abb126(48)-abb126(41)
      abb126(51)=-abb126(48)*abb126(44)
      abb126(52)=abb126(14)*abb126(9)
      abb126(45)=-abb126(45)*abb126(52)
      abb126(45)=abb126(50)+abb126(51)+abb126(45)
      abb126(45)=16.0_ki*abb126(45)
      abb126(50)=abb126(11)*abb126(13)
      abb126(51)=abb126(50)-abb126(25)
      abb126(53)=abb126(29)*abb126(9)
      abb126(53)=abb126(53)+abb126(51)
      abb126(54)=abb126(53)*abb126(46)
      abb126(20)=abb126(54)-abb126(20)
      abb126(54)=32.0_ki*abb126(20)
      abb126(24)=8.0_ki*abb126(24)
      abb126(33)=16.0_ki*abb126(33)
      abb126(20)=16.0_ki*abb126(20)
      abb126(55)=-spak3l5*spak1k4
      abb126(44)=-abb126(44)-abb126(55)
      abb126(37)=abb126(37)*abb126(44)
      abb126(44)=spbl5k2*abb126(37)
      abb126(41)=abb126(41)*spak1k3
      abb126(55)=spak4l6*abb126(41)
      abb126(42)=-spak3l6*abb126(42)
      abb126(42)=abb126(42)+abb126(55)+abb126(44)
      abb126(42)=8.0_ki*abb126(42)
      abb126(16)=abb126(16)-abb126(46)
      abb126(16)=abb126(11)*abb126(16)
      abb126(44)=abb126(16)*spbl5k2
      abb126(46)=spak1k2*abb126(25)*spak4l6
      abb126(25)=abb126(25)*spak1k4
      abb126(55)=abb126(25)*spak2l6
      abb126(44)=-abb126(46)+abb126(55)+abb126(44)
      abb126(46)=16.0_ki*abb126(44)
      abb126(44)=8.0_ki*abb126(44)
      abb126(49)=spak2k3*abb126(49)
      abb126(48)=-spak1k3*abb126(48)
      abb126(41)=-abb126(41)*abb126(52)
      abb126(41)=abb126(48)+abb126(41)
      abb126(41)=spak2k4*abb126(41)
      abb126(37)=spbl6l5*abb126(37)
      abb126(37)=abb126(49)+abb126(37)+abb126(41)
      abb126(37)=8.0_ki*abb126(37)
      abb126(41)=abb126(53)*spak1k2*spak2k4
      abb126(16)=abb126(16)*spbl6l5
      abb126(16)=abb126(16)+abb126(41)
      abb126(41)=16.0_ki*abb126(16)
      abb126(16)=8.0_ki*abb126(16)
      abb126(26)=abb126(34)*abb126(26)
      abb126(48)=abb126(40)*abb126(38)
      abb126(26)=abb126(48)+abb126(26)
      abb126(48)=-spak1k3*abb126(26)
      abb126(49)=-abb126(17)*abb126(34)
      abb126(18)=abb126(40)*abb126(18)*spbl6k2
      abb126(52)=spak1k4*abb126(18)
      abb126(49)=abb126(52)+abb126(49)
      abb126(49)=spbk7k4*abb126(49)
      abb126(48)=abb126(49)+abb126(48)
      abb126(48)=8.0_ki*abb126(48)
      abb126(21)=spbk4k3*abb126(21)
      abb126(40)=abb126(40)*abb126(36)
      abb126(21)=abb126(21)+abb126(30)+abb126(40)
      abb126(21)=8.0_ki*spak4k7*abb126(21)
      abb126(30)=abb126(17)*spbk3k2
      abb126(40)=abb126(22)*spbl6k3
      abb126(49)=abb126(40)*spak1k4
      abb126(30)=abb126(49)-abb126(30)
      abb126(49)=16.0_ki*abb126(30)
      abb126(52)=abb126(36)*spak4l5
      abb126(55)=abb126(25)*spal5k7
      abb126(52)=abb126(52)+abb126(55)
      abb126(52)=32.0_ki*abb126(52)
      abb126(50)=-spak1k4*abb126(50)
      abb126(32)=-abb126(9)*abb126(32)
      abb126(32)=abb126(32)+abb126(25)+abb126(50)
      abb126(32)=spal5k7*abb126(32)
      abb126(50)=spak1k7*spak4l5
      abb126(53)=-abb126(50)*abb126(53)
      abb126(32)=abb126(32)+abb126(53)
      abb126(32)=32.0_ki*abb126(32)
      abb126(30)=8.0_ki*abb126(30)
      abb126(53)=spak1k4*spal5k7
      abb126(50)=abb126(53)+abb126(50)
      abb126(11)=abb126(11)*abb126(50)
      abb126(50)=spbl5k2*abb126(11)
      abb126(36)=spak4l6*abb126(36)
      abb126(25)=spal6k7*abb126(25)
      abb126(25)=abb126(25)+abb126(36)+abb126(50)
      abb126(25)=16.0_ki*abb126(25)
      abb126(11)=spbl6l5*abb126(11)
      abb126(36)=spak1k7*spak2k4
      abb126(50)=-abb126(51)*abb126(36)
      abb126(15)=-abb126(38)*abb126(15)
      abb126(29)=-abb126(29)*abb126(36)
      abb126(15)=abb126(15)+abb126(29)
      abb126(15)=abb126(9)*abb126(15)
      abb126(29)=-spak1k4*abb126(10)*abb126(13)
      abb126(11)=abb126(15)+abb126(50)+abb126(39)+abb126(29)+abb126(11)
      abb126(11)=16.0_ki*abb126(11)
      abb126(15)=-abb126(12)*spak2l5
      abb126(29)=abb126(27)*abb126(19)
      abb126(36)=-abb126(14)*abb126(12)
      abb126(15)=-abb126(36)+abb126(15)+abb126(29)
      abb126(29)=abb126(15)*spbk3k2
      abb126(29)=abb126(29)-abb126(40)
      abb126(39)=spak1k3*abb126(29)
      abb126(28)=abb126(15)*abb126(28)
      abb126(17)=spbk4k2*abb126(17)
      abb126(40)=spbk7l6*spak1k7
      abb126(50)=-spbl6k4*spak1k4
      abb126(40)=abb126(50)+abb126(40)
      abb126(40)=abb126(22)*abb126(40)
      abb126(17)=abb126(17)+abb126(28)+abb126(40)+abb126(39)
      abb126(17)=8.0_ki*abb126(17)
      abb126(28)=32.0_ki*spak1l5
      abb126(39)=-abb126(28)*abb126(12)
      abb126(36)=abb126(36)*abb126(9)
      abb126(13)=abb126(19)*abb126(13)
      abb126(13)=-abb126(36)+abb126(13)-abb126(12)
      abb126(28)=abb126(13)*abb126(28)
      abb126(19)=abb126(19)*spak1l5
      abb126(36)=-spbl5k2*abb126(19)
      abb126(12)=-spak1l6*abb126(12)
      abb126(12)=abb126(36)+abb126(12)
      abb126(12)=16.0_ki*abb126(12)
      abb126(13)=-spak1k2*abb126(13)
      abb126(19)=-spbl6l5*abb126(19)
      abb126(13)=abb126(19)+abb126(13)
      abb126(13)=16.0_ki*abb126(13)
      abb126(19)=spak4k7*abb126(26)
      abb126(14)=-spak2l5+abb126(14)
      abb126(14)=abb126(38)*abb126(14)
      abb126(10)=abb126(10)*abb126(27)
      abb126(10)=abb126(10)+abb126(14)
      abb126(10)=spbk3k2*abb126(10)
      abb126(14)=spbl6k3*spal5l6*abb126(38)
      abb126(10)=abb126(10)+abb126(14)
      abb126(10)=spak3k4*abb126(10)
      abb126(10)=abb126(10)+abb126(19)
      abb126(10)=8.0_ki*abb126(10)
      abb126(14)=abb126(29)*spak2k4
      abb126(19)=16.0_ki*abb126(14)
      abb126(14)=8.0_ki*abb126(14)
      abb126(26)=abb126(15)*abb126(34)
      abb126(18)=-abb126(18)+abb126(26)
      abb126(18)=8.0_ki*abb126(18)
      abb126(26)=8.0_ki*spak4k7*abb126(29)
      abb126(22)=-8.0_ki*abb126(22)
      abb126(27)=-spbk7k2*abb126(15)
      abb126(23)=abb126(27)-abb126(23)
      abb126(23)=spak4k7*abb126(23)
      abb126(27)=spak3k4*abb126(29)
      abb126(23)=abb126(27)+abb126(23)
      abb126(23)=8.0_ki*abb126(23)
      abb126(15)=-8.0_ki*abb126(15)
      R2d126=0.0_ki
      rat2 = rat2 + R2d126
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='126' value='", &
          & R2d126, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd126h2
