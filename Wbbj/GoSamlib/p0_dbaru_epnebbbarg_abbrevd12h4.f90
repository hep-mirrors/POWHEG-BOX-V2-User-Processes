module     p0_dbaru_epnebbbarg_abbrevd12h4
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh4
   implicit none
   private
   complex(ki), dimension(56), public :: abb12
   complex(ki), public :: R2d12
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
      abb12(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb12(2)=NC**(-1)
      abb12(3)=sqrt2**(-1)
      abb12(4)=es56**(-1)
      abb12(5)=spbl5k2**(-1)
      abb12(6)=spbl6k2**(-1)
      abb12(7)=spbk7k2**(-1)
      abb12(8)=es71**(-1)
      abb12(9)=spal6k7*abb12(5)
      abb12(10)=spal5k7*abb12(6)
      abb12(11)=spbk2k1*abb12(7)
      abb12(12)=abb12(11)*abb12(6)
      abb12(13)=abb12(12)*spak1l5
      abb12(11)=abb12(11)*abb12(5)
      abb12(14)=abb12(11)*spak1l6
      abb12(9)=-abb12(10)-abb12(9)+abb12(13)+abb12(14)
      abb12(10)=c3*abb12(2)
      abb12(13)=c4*abb12(2)**2
      abb12(10)=abb12(10)-abb12(13)
      abb12(13)=TR*gW
      abb12(10)=abb12(10)*abb12(13)**2*mB*i_*spak1k7*CVDU*abb12(4)*abb12(3)*abb&
      &12(1)
      abb12(13)=spbk3k2**2
      abb12(14)=abb12(13)*abb12(10)
      abb12(15)=abb12(14)*abb12(9)
      abb12(16)=abb12(10)*abb12(8)
      abb12(13)=-abb12(13)*abb12(16)
      abb12(17)=-abb12(5)*abb12(13)
      abb12(18)=abb12(17)*spal6k7
      abb12(19)=-abb12(6)*abb12(13)
      abb12(20)=abb12(19)*spal5k7
      abb12(18)=abb12(18)+abb12(20)
      abb12(20)=-abb12(12)*abb12(13)
      abb12(21)=abb12(20)*spak1l5
      abb12(22)=-abb12(11)*abb12(13)
      abb12(23)=abb12(22)*spak1l6
      abb12(21)=abb12(21)+abb12(23)
      abb12(23)=-abb12(21)+abb12(18)
      abb12(23)=es712*abb12(23)
      abb12(15)=abb12(23)+abb12(15)
      abb12(15)=8.0_ki*spak3k4*abb12(15)
      abb12(23)=16.0_ki*spak3k4
      abb12(18)=abb12(18)*abb12(23)
      abb12(21)=abb12(21)*abb12(23)
      abb12(10)=abb12(10)*spbk3k2
      abb12(23)=-abb12(8)*abb12(10)
      abb12(24)=-abb12(6)*abb12(23)
      abb12(25)=abb12(24)*spal5k7
      abb12(26)=-abb12(5)*abb12(23)
      abb12(27)=abb12(26)*spal6k7
      abb12(25)=abb12(25)+abb12(27)
      abb12(27)=-spbk7k2*abb12(25)
      abb12(28)=abb12(26)*spbk2k1
      abb12(29)=spak1l6*abb12(28)
      abb12(30)=spbk2k1*abb12(6)
      abb12(31)=abb12(23)*abb12(30)
      abb12(32)=-spak1l5*abb12(31)
      abb12(27)=abb12(27)+abb12(29)+abb12(32)
      abb12(27)=spak4k7*abb12(27)
      abb12(29)=spbk2k1**2
      abb12(32)=abb12(7)*abb12(5)
      abb12(33)=spak1l6*abb12(29)*abb12(32)
      abb12(34)=abb12(7)*abb12(6)
      abb12(29)=spak1l5*abb12(29)*abb12(34)
      abb12(29)=abb12(33)+abb12(29)
      abb12(33)=abb12(23)*abb12(29)
      abb12(28)=spal6k7*abb12(28)
      abb12(31)=-spal5k7*abb12(31)
      abb12(28)=abb12(28)+abb12(31)+abb12(33)
      abb12(28)=spak1k4*abb12(28)
      abb12(27)=abb12(28)+abb12(27)
      abb12(27)=8.0_ki*abb12(27)
      abb12(28)=abb12(24)*spak4l5
      abb12(31)=abb12(26)*spak4l6
      abb12(28)=abb12(28)+abb12(31)
      abb12(31)=16.0_ki*abb12(28)
      abb12(28)=-8.0_ki*abb12(28)
      abb12(17)=spak1l6*abb12(17)
      abb12(19)=spak1l5*abb12(19)
      abb12(17)=abb12(17)+abb12(19)
      abb12(19)=8.0_ki*spak3k4
      abb12(17)=abb12(17)*abb12(19)
      abb12(13)=abb12(13)*es712
      abb12(13)=abb12(13)+abb12(14)
      abb12(14)=abb12(19)*abb12(32)*abb12(13)
      abb12(33)=abb12(26)*spak4k7
      abb12(35)=-abb12(11)*abb12(23)
      abb12(36)=abb12(35)*spak1k4
      abb12(33)=abb12(33)-abb12(36)
      abb12(33)=16.0_ki*abb12(33)
      abb12(36)=-abb12(26)*abb12(19)
      abb12(37)=8.0_ki*spak2k4
      abb12(38)=abb12(26)*abb12(37)
      abb12(13)=abb12(19)*abb12(34)*abb12(13)
      abb12(39)=abb12(24)*spak4k7
      abb12(40)=-abb12(12)*abb12(23)
      abb12(41)=abb12(40)*spak1k4
      abb12(39)=abb12(39)-abb12(41)
      abb12(39)=16.0_ki*abb12(39)
      abb12(41)=-abb12(24)*abb12(19)
      abb12(42)=abb12(24)*abb12(37)
      abb12(43)=-abb12(5)*abb12(16)
      abb12(44)=-spak4l6*abb12(43)
      abb12(45)=-abb12(6)*abb12(16)
      abb12(46)=-spak4l5*abb12(45)
      abb12(44)=abb12(46)+abb12(44)
      abb12(44)=spbk4k2*abb12(44)
      abb12(46)=abb12(43)*spal6k7
      abb12(47)=abb12(45)*spal5k7
      abb12(46)=abb12(46)+abb12(47)
      abb12(47)=spbk7k2*abb12(46)
      abb12(48)=abb12(43)*spbk2k1
      abb12(49)=-spak1l6*abb12(48)
      abb12(30)=abb12(16)*abb12(30)
      abb12(50)=spak1l5*abb12(30)
      abb12(51)=spak3l6*abb12(26)
      abb12(52)=spak3l5*abb12(24)
      abb12(44)=abb12(52)+abb12(51)+abb12(47)+abb12(49)+abb12(50)+abb12(44)
      abb12(44)=8.0_ki*abb12(44)
      abb12(47)=spak4k7*abb12(43)
      abb12(11)=-abb12(11)*abb12(16)
      abb12(49)=-spak1k4*abb12(11)
      abb12(47)=abb12(47)+abb12(49)
      abb12(47)=spbk4k2*abb12(47)
      abb12(49)=-spak3k7*abb12(26)
      abb12(50)=spak1k3*abb12(35)
      abb12(47)=abb12(50)+abb12(47)+abb12(49)
      abb12(47)=8.0_ki*abb12(47)
      abb12(43)=-8.0_ki*abb12(43)
      abb12(49)=spak4k7*abb12(45)
      abb12(12)=-abb12(12)*abb12(16)
      abb12(50)=-spak1k4*abb12(12)
      abb12(49)=abb12(49)+abb12(50)
      abb12(49)=spbk4k2*abb12(49)
      abb12(50)=-spak3k7*abb12(24)
      abb12(51)=spak1k3*abb12(40)
      abb12(49)=abb12(51)+abb12(49)+abb12(50)
      abb12(49)=8.0_ki*abb12(49)
      abb12(45)=-8.0_ki*abb12(45)
      abb12(9)=-abb12(10)*abb12(9)
      abb12(50)=abb12(40)*spak1l5
      abb12(51)=abb12(35)*spak1l6
      abb12(50)=abb12(50)+abb12(51)
      abb12(51)=abb12(50)+abb12(25)
      abb12(52)=es12-es123
      abb12(51)=abb12(51)*abb12(52)
      abb12(52)=-2.0_ki*abb12(25)+abb12(50)
      abb12(52)=es712*abb12(52)
      abb12(24)=abb12(24)*spak1l5
      abb12(26)=abb12(26)*spak1l6
      abb12(24)=abb12(24)+abb12(26)
      abb12(26)=-spak3k7*spbk3k1*abb12(24)
      abb12(53)=abb12(40)*spal5k7
      abb12(54)=abb12(35)*spal6k7
      abb12(53)=abb12(53)+abb12(54)
      abb12(54)=-spak1k3*spbk7k3*abb12(53)
      abb12(55)=es456*abb12(25)
      abb12(56)=es23*abb12(50)
      abb12(9)=abb12(56)+abb12(55)+abb12(54)+abb12(26)+abb12(52)+abb12(51)+abb1&
      &2(9)
      abb12(9)=8.0_ki*abb12(9)
      abb12(26)=abb12(50)-abb12(25)
      abb12(51)=16.0_ki*abb12(26)
      abb12(26)=8.0_ki*abb12(26)
      abb12(23)=abb12(23)*es712
      abb12(10)=abb12(23)+abb12(10)
      abb12(23)=-16.0_ki*abb12(32)*abb12(10)
      abb12(10)=-16.0_ki*abb12(34)*abb12(10)
      abb12(32)=spak1l6*abb12(11)
      abb12(34)=spak1l5*abb12(12)
      abb12(32)=abb12(34)+abb12(32)-abb12(46)
      abb12(32)=8.0_ki*spbk4k2*abb12(32)
      abb12(25)=-spak4k7*abb12(25)
      abb12(34)=spak1k4*abb12(53)
      abb12(25)=abb12(25)+abb12(34)
      abb12(25)=spbk7k3*abb12(25)
      abb12(24)=spak4k7*abb12(24)
      abb12(34)=-spak1k4*abb12(50)
      abb12(24)=abb12(24)+abb12(34)
      abb12(24)=spbk3k1*abb12(24)
      abb12(24)=abb12(25)+abb12(24)
      abb12(24)=8.0_ki*abb12(24)
      abb12(22)=spal6k7*abb12(22)
      abb12(20)=spal5k7*abb12(20)
      abb12(20)=abb12(22)+abb12(20)
      abb12(20)=abb12(20)*abb12(19)
      abb12(22)=-abb12(35)*abb12(19)
      abb12(19)=-abb12(40)*abb12(19)
      abb12(25)=abb12(40)*spak4l5
      abb12(34)=abb12(35)*spak4l6
      abb12(25)=abb12(25)+abb12(34)
      abb12(34)=16.0_ki*abb12(25)
      abb12(25)=-8.0_ki*abb12(25)
      abb12(46)=abb12(35)*abb12(37)
      abb12(37)=abb12(40)*abb12(37)
      abb12(16)=abb12(16)*abb12(29)
      abb12(29)=-spak4l6*abb12(11)
      abb12(50)=-spak4l5*abb12(12)
      abb12(29)=abb12(50)+abb12(29)
      abb12(29)=spbk4k2*abb12(29)
      abb12(48)=spal6k7*abb12(48)
      abb12(30)=-spal5k7*abb12(30)
      abb12(35)=spak3l6*abb12(35)
      abb12(40)=spak3l5*abb12(40)
      abb12(16)=abb12(40)+abb12(35)+abb12(48)+abb12(30)+abb12(29)+abb12(16)
      abb12(16)=8.0_ki*abb12(16)
      abb12(11)=-8.0_ki*abb12(11)
      abb12(12)=-8.0_ki*abb12(12)
      R2d12=0.0_ki
      rat2 = rat2 + R2d12
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='12' value='", &
          & R2d12, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd12h4
