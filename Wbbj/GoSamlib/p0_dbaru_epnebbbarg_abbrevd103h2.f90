module     p0_dbaru_epnebbbarg_abbrevd103h2
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(61), public :: abb103
   complex(ki), public :: R2d103
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
      abb103(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb103(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb103(3)=NC**(-1)
      abb103(4)=sqrt2**(-1)
      abb103(5)=es56**(-1)
      abb103(6)=spak2k7**(-1)
      abb103(7)=spbl5k2**(-1)
      abb103(8)=spak2l6**(-1)
      abb103(9)=spak2l5**(-1)
      abb103(10)=c3*abb103(3)
      abb103(11)=c4*abb103(3)**2
      abb103(10)=abb103(10)-abb103(11)
      abb103(11)=TR*gW
      abb103(11)=abb103(5)*i_*CVDU*abb103(4)*abb103(2)*abb103(1)*abb103(11)**2
      abb103(12)=abb103(10)*abb103(11)*spbl6k2*abb103(6)
      abb103(13)=-spbk7k3*abb103(12)
      abb103(14)=abb103(13)*spak1k2
      abb103(15)=abb103(14)*spak2l5
      abb103(10)=-abb103(11)*abb103(10)
      abb103(11)=abb103(10)*abb103(6)
      abb103(16)=-spbk7k3*abb103(11)
      abb103(17)=abb103(16)*spak1k2
      abb103(18)=mB**2
      abb103(19)=abb103(18)*abb103(8)
      abb103(20)=abb103(19)*spak2l5
      abb103(21)=abb103(17)*abb103(20)
      abb103(18)=abb103(18)*abb103(7)
      abb103(22)=abb103(14)*abb103(18)
      abb103(15)=-abb103(22)+abb103(15)+abb103(21)
      abb103(21)=spbk3k2*spak3k4
      abb103(15)=abb103(15)*abb103(21)
      abb103(23)=abb103(14)*spak3k4
      abb103(24)=-spbl6k3*spal5l6*abb103(23)
      abb103(24)=abb103(15)+abb103(24)
      abb103(24)=16.0_ki*abb103(24)
      abb103(25)=spak1k4*spak2l5
      abb103(26)=abb103(25)*abb103(13)
      abb103(27)=abb103(14)*spak4l5
      abb103(27)=abb103(26)-abb103(27)
      abb103(28)=abb103(27)*es34
      abb103(29)=spbk7k3**2
      abb103(30)=abb103(29)*abb103(12)
      abb103(31)=abb103(30)*spak3k4
      abb103(32)=abb103(31)*spak1k7
      abb103(33)=abb103(32)*spak2l5
      abb103(34)=abb103(31)*spak1k2
      abb103(35)=abb103(34)*spal5k7
      abb103(28)=-abb103(35)+abb103(28)-abb103(33)
      abb103(28)=16.0_ki*abb103(28)
      abb103(33)=-abb103(12)*spak1k4
      abb103(35)=spbk7k4*spak2k4
      abb103(36)=abb103(35)*abb103(33)
      abb103(23)=abb103(23)-abb103(36)
      abb103(23)=abb103(23)*spal5l6
      abb103(37)=abb103(13)*spal5l6
      abb103(38)=spak1k3*spak2k4
      abb103(39)=abb103(38)*abb103(37)
      abb103(23)=abb103(23)-abb103(39)
      abb103(23)=abb103(23)*spbl6k3
      abb103(40)=abb103(20)*abb103(16)
      abb103(41)=abb103(13)*abb103(18)
      abb103(40)=abb103(40)-abb103(41)
      abb103(41)=abb103(13)*spak2l5
      abb103(42)=abb103(41)+abb103(40)
      abb103(38)=spbk3k2*abb103(38)*abb103(42)
      abb103(43)=-abb103(11)*abb103(20)
      abb103(44)=-abb103(18)*abb103(12)
      abb103(45)=-abb103(44)+abb103(43)
      abb103(45)=spak1k4*abb103(45)
      abb103(46)=-abb103(25)*abb103(12)
      abb103(45)=abb103(46)+abb103(45)
      abb103(47)=abb103(45)*spbk3k2
      abb103(48)=abb103(47)*abb103(35)
      abb103(15)=abb103(23)+abb103(48)+abb103(38)-abb103(15)
      abb103(23)=16.0_ki*abb103(15)
      abb103(38)=32.0_ki*abb103(27)
      abb103(48)=abb103(17)*abb103(19)
      abb103(48)=abb103(48)+abb103(14)
      abb103(49)=abb103(22)*abb103(9)
      abb103(50)=abb103(49)-abb103(48)
      abb103(51)=-spak4l5*abb103(50)
      abb103(40)=-spak1k4*abb103(40)
      abb103(26)=-abb103(26)+abb103(40)+abb103(51)
      abb103(40)=es34*abb103(26)
      abb103(51)=spak2l5-abb103(18)
      abb103(51)=abb103(30)*abb103(51)
      abb103(52)=abb103(29)*abb103(11)
      abb103(20)=abb103(52)*abb103(20)
      abb103(20)=abb103(20)+abb103(51)
      abb103(51)=spak1k7*spak3k4
      abb103(20)=abb103(20)*abb103(51)
      abb103(30)=spak1k2*abb103(30)
      abb103(53)=abb103(19)*spak1k2
      abb103(54)=abb103(52)*abb103(53)
      abb103(30)=abb103(30)+abb103(54)
      abb103(30)=spak3k4*abb103(30)
      abb103(18)=abb103(18)*spak1k2
      abb103(31)=-abb103(9)*abb103(18)*abb103(31)
      abb103(30)=abb103(30)+abb103(31)
      abb103(30)=spal5k7*abb103(30)
      abb103(20)=abb103(30)+abb103(20)+abb103(40)
      abb103(20)=16.0_ki*abb103(20)
      abb103(30)=32.0_ki*abb103(26)
      abb103(15)=8.0_ki*abb103(15)
      abb103(27)=16.0_ki*abb103(27)
      abb103(26)=16.0_ki*abb103(26)
      abb103(31)=spal5k7*spak3k4*spak1k2
      abb103(40)=spak2l5*abb103(51)
      abb103(31)=-abb103(31)-abb103(40)
      abb103(31)=abb103(52)*abb103(31)
      abb103(40)=spak4l5*spak1k2
      abb103(51)=abb103(25)-abb103(40)
      abb103(51)=abb103(16)*abb103(51)
      abb103(52)=abb103(51)*es34
      abb103(31)=abb103(52)+abb103(31)
      abb103(52)=spbl5k2*abb103(31)
      abb103(54)=abb103(13)*spak1k4
      abb103(55)=-es34*abb103(54)
      abb103(32)=abb103(55)+abb103(32)
      abb103(32)=spak2l6*abb103(32)
      abb103(55)=abb103(14)*spak4l6
      abb103(56)=es34*abb103(55)
      abb103(34)=spal6k7*abb103(34)
      abb103(32)=abb103(34)+abb103(56)+abb103(32)+abb103(52)
      abb103(32)=8.0_ki*abb103(32)
      abb103(34)=abb103(51)*spbl5k2
      abb103(52)=abb103(54)*spak2l6
      abb103(34)=abb103(55)+abb103(34)-abb103(52)
      abb103(52)=16.0_ki*abb103(34)
      abb103(34)=8.0_ki*abb103(34)
      abb103(31)=spbl6l5*abb103(31)
      abb103(29)=abb103(10)*abb103(29)
      abb103(54)=-spbl6k2*abb103(29)
      abb103(55)=-spak1k2*abb103(54)
      abb103(29)=-abb103(53)*abb103(29)
      abb103(29)=abb103(55)+abb103(29)
      abb103(29)=spak3k4*abb103(29)
      abb103(48)=abb103(48)*spak2k4
      abb103(55)=es34*abb103(48)
      abb103(18)=spak3k4*abb103(54)*abb103(18)
      abb103(22)=-es34*spak2k4*abb103(22)
      abb103(18)=abb103(18)+abb103(22)
      abb103(18)=abb103(9)*abb103(18)
      abb103(18)=abb103(18)+abb103(29)+abb103(55)+abb103(31)
      abb103(18)=8.0_ki*abb103(18)
      abb103(22)=abb103(51)*spbl6l5
      abb103(29)=abb103(49)*spak2k4
      abb103(22)=-abb103(48)+abb103(29)-abb103(22)
      abb103(29)=16.0_ki*abb103(22)
      abb103(22)=-8.0_ki*abb103(22)
      abb103(31)=abb103(45)*spbk7k4
      abb103(48)=abb103(42)*spak1k3
      abb103(31)=abb103(31)+abb103(48)
      abb103(48)=es234-es34
      abb103(49)=-abb103(31)*abb103(48)
      abb103(51)=abb103(33)*spal5l6
      abb103(54)=-spbk7k4*abb103(51)
      abb103(55)=-spak1k3*abb103(37)
      abb103(54)=abb103(54)+abb103(55)
      abb103(55)=spak2k3*spbl6k3
      abb103(54)=abb103(54)*abb103(55)
      abb103(36)=-spal5l6*abb103(36)
      abb103(36)=abb103(36)-abb103(39)
      abb103(36)=spbl6k4*abb103(36)
      abb103(36)=abb103(36)+abb103(54)+abb103(49)
      abb103(36)=8.0_ki*abb103(36)
      abb103(39)=-abb103(12)*spak2l5
      abb103(39)=abb103(43)+abb103(39)
      abb103(43)=spak1k2*abb103(39)
      abb103(49)=abb103(44)*spak1k2
      abb103(43)=abb103(43)-abb103(49)
      abb103(43)=abb103(43)*spbk7k2
      abb103(54)=-abb103(12)*spal5l6
      abb103(56)=abb103(54)*spbk7l6
      abb103(57)=abb103(56)*spak1k2
      abb103(43)=abb103(43)+abb103(57)
      abb103(57)=16.0_ki*abb103(43)
      abb103(58)=abb103(14)*spak3l5
      abb103(41)=abb103(41)*spak1k3
      abb103(46)=abb103(46)*spbk7k4
      abb103(40)=abb103(40)*spbk7k4
      abb103(59)=-abb103(40)*abb103(12)
      abb103(41)=abb103(59)-abb103(46)+abb103(58)-abb103(41)
      abb103(41)=32.0_ki*abb103(41)
      abb103(46)=-abb103(53)*abb103(11)
      abb103(53)=-abb103(12)*spak1k2
      abb103(46)=abb103(46)+abb103(53)
      abb103(58)=spak4l5*spbk7k4*abb103(46)
      abb103(59)=-spak3l5*abb103(50)
      abb103(60)=abb103(44)*abb103(9)
      abb103(61)=-abb103(40)*abb103(60)
      abb103(31)=abb103(59)+abb103(61)+abb103(58)-abb103(31)
      abb103(31)=32.0_ki*abb103(31)
      abb103(43)=8.0_ki*abb103(43)
      abb103(25)=abb103(25)*spbk7k4
      abb103(25)=abb103(25)-abb103(40)
      abb103(25)=-abb103(25)*abb103(11)
      abb103(16)=spak2l5*abb103(16)*spak1k3
      abb103(17)=abb103(17)*spak3l5
      abb103(16)=-abb103(17)+abb103(25)+abb103(16)
      abb103(17)=spbl5k2*abb103(16)
      abb103(25)=-spbk7k4*abb103(33)
      abb103(13)=-spak1k3*abb103(13)
      abb103(13)=abb103(25)+abb103(13)
      abb103(13)=spak2l6*abb103(13)
      abb103(25)=spak4l6*spbk7k4*abb103(53)
      abb103(14)=spak3l6*abb103(14)
      abb103(13)=abb103(14)+abb103(25)+abb103(13)+abb103(17)
      abb103(13)=16.0_ki*abb103(13)
      abb103(14)=spbl6l5*abb103(16)
      abb103(16)=abb103(49)*abb103(9)
      abb103(16)=abb103(16)-abb103(46)
      abb103(17)=-abb103(35)*abb103(16)
      abb103(25)=-spak2k3*abb103(50)
      abb103(14)=abb103(25)+abb103(17)+abb103(14)
      abb103(14)=16.0_ki*abb103(14)
      abb103(17)=spbl6k3*abb103(51)
      abb103(17)=-abb103(47)+abb103(17)
      abb103(17)=es34*abb103(17)
      abb103(25)=-abb103(42)*abb103(21)
      abb103(33)=spbl6k3*spak3k4*abb103(37)
      abb103(25)=abb103(25)+abb103(33)
      abb103(25)=spak1k7*abb103(25)
      abb103(17)=abb103(25)+abb103(17)
      abb103(17)=8.0_ki*abb103(17)
      abb103(25)=-abb103(44)+abb103(39)
      abb103(33)=spbk3k2*abb103(25)
      abb103(35)=abb103(54)*spbl6k3
      abb103(33)=abb103(33)-abb103(35)
      abb103(33)=spak1k3*abb103(33)
      abb103(39)=abb103(25)*spbk7k2
      abb103(39)=abb103(39)+abb103(56)
      abb103(40)=spak1k7*abb103(39)
      abb103(44)=spbk4k2*abb103(45)
      abb103(45)=-spbl6k4*abb103(51)
      abb103(33)=abb103(44)+abb103(45)+abb103(40)+abb103(33)
      abb103(33)=8.0_ki*abb103(33)
      abb103(40)=32.0_ki*spak1l5
      abb103(44)=-abb103(40)*abb103(12)
      abb103(19)=abb103(11)*abb103(19)
      abb103(19)=abb103(60)+abb103(19)+abb103(12)
      abb103(19)=abb103(19)*abb103(40)
      abb103(11)=-abb103(11)*spak1l5
      abb103(40)=spbl5k2*abb103(11)
      abb103(12)=spak1l6*abb103(12)
      abb103(12)=abb103(40)+abb103(12)
      abb103(12)=16.0_ki*abb103(12)
      abb103(11)=spbl6l5*abb103(11)
      abb103(11)=abb103(11)-abb103(16)
      abb103(11)=16.0_ki*abb103(11)
      abb103(16)=abb103(48)-es12+es712-es71
      abb103(40)=abb103(25)*abb103(16)
      abb103(10)=spbk7l6*spal5l6*abb103(10)*spbl6k2
      abb103(45)=spak2k3*abb103(35)
      abb103(46)=spbl6k4*spak2k4
      abb103(47)=abb103(54)*abb103(46)
      abb103(40)=abb103(47)+abb103(45)-abb103(10)+abb103(40)
      abb103(40)=8.0_ki*abb103(40)
      abb103(45)=8.0_ki*abb103(54)
      abb103(47)=spak2k4*abb103(39)
      abb103(48)=8.0_ki*abb103(47)
      abb103(46)=-abb103(46)-abb103(55)
      abb103(37)=abb103(37)*abb103(46)
      abb103(16)=-abb103(42)*abb103(16)
      abb103(10)=spbk7k3*abb103(10)
      abb103(10)=abb103(10)+abb103(16)+abb103(37)
      abb103(10)=8.0_ki*spak3k4*abb103(10)
      abb103(16)=16.0_ki*abb103(47)
      abb103(37)=8.0_ki*spak2k3*abb103(39)
      abb103(21)=abb103(25)*abb103(21)
      abb103(35)=-spak3k4*abb103(35)
      abb103(21)=abb103(21)+abb103(35)
      abb103(21)=8.0_ki*abb103(21)
      abb103(25)=8.0_ki*abb103(25)
      R2d103=0.0_ki
      rat2 = rat2 + R2d103
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='103' value='", &
          & R2d103, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd103h2
