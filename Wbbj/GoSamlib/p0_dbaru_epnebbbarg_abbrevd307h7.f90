module     p0_dbaru_epnebbbarg_abbrevd307h7
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh7
   implicit none
   private
   complex(ki), dimension(62), public :: abb307
   complex(ki), public :: R2d307
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
      abb307(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb307(2)=1.0_ki/(es34+es567-es12-es234)
      abb307(3)=sqrt(mB**2)
      abb307(4)=NC**(-1)
      abb307(5)=sqrt2**(-1)
      abb307(6)=spak2l6**(-1)
      abb307(7)=spbk7k2**(-1)
      abb307(8)=spak2l5**(-1)
      abb307(9)=TR*gW
      abb307(9)=CVDU*i_*spak1k4*abb307(5)*abb307(2)*abb307(1)*abb307(9)**2
      abb307(10)=abb307(9)*abb307(7)
      abb307(11)=abb307(10)*abb307(4)
      abb307(12)=abb307(11)*abb307(3)
      abb307(13)=mB**2
      abb307(14)=abb307(12)*abb307(13)
      abb307(15)=abb307(6)*spbk4k3
      abb307(16)=abb307(14)*abb307(15)
      abb307(17)=spbl6k2*abb307(3)
      abb307(18)=abb307(17)*abb307(11)
      abb307(19)=abb307(18)*spbk4k3
      abb307(16)=abb307(16)-abb307(19)
      abb307(20)=c1+c3
      abb307(21)=spbl5k2*abb307(20)
      abb307(22)=abb307(16)*abb307(21)
      abb307(23)=mB*abb307(4)
      abb307(23)=abb307(23)**2
      abb307(24)=abb307(10)*abb307(3)
      abb307(25)=abb307(23)*abb307(24)
      abb307(26)=abb307(25)*abb307(15)
      abb307(27)=abb307(24)*spbl6k2
      abb307(28)=abb307(27)*spbk4k3
      abb307(29)=abb307(4)**2
      abb307(30)=abb307(28)*abb307(29)
      abb307(26)=abb307(26)-abb307(30)
      abb307(30)=c2*spbl5k2
      abb307(31)=abb307(26)*abb307(30)
      abb307(32)=abb307(13)*abb307(24)
      abb307(33)=abb307(32)*abb307(15)
      abb307(33)=abb307(33)-abb307(28)
      abb307(34)=c4*spbl5k2
      abb307(35)=abb307(33)*abb307(34)
      abb307(22)=-abb307(35)-abb307(31)+abb307(22)
      abb307(22)=abb307(22)*spak4k7
      abb307(31)=abb307(6)*spbk3k1
      abb307(35)=abb307(14)*abb307(31)
      abb307(18)=abb307(18)*spbk3k1
      abb307(35)=abb307(35)-abb307(18)
      abb307(36)=-abb307(35)*abb307(21)
      abb307(37)=abb307(25)*abb307(31)
      abb307(27)=abb307(27)*spbk3k1
      abb307(38)=abb307(27)*abb307(29)
      abb307(37)=abb307(37)-abb307(38)
      abb307(30)=abb307(37)*abb307(30)
      abb307(38)=abb307(32)*abb307(31)
      abb307(38)=abb307(38)-abb307(27)
      abb307(39)=abb307(38)*abb307(34)
      abb307(30)=abb307(30)+abb307(39)+abb307(36)
      abb307(30)=abb307(30)*spak1k7
      abb307(22)=abb307(22)-abb307(30)
      abb307(30)=es71+es12-es712
      abb307(22)=-abb307(22)*abb307(30)
      abb307(36)=abb307(10)*mB
      abb307(39)=abb307(36)*abb307(4)
      abb307(40)=abb307(39)*abb307(20)
      abb307(41)=abb307(8)*spbk4k3
      abb307(42)=abb307(41)*abb307(40)
      abb307(43)=c4*abb307(8)
      abb307(44)=abb307(36)*spbk4k3
      abb307(45)=abb307(43)*abb307(44)
      abb307(46)=abb307(29)*c2
      abb307(47)=abb307(46)*abb307(44)
      abb307(48)=abb307(47)*abb307(8)
      abb307(42)=-abb307(48)+abb307(42)-abb307(45)
      abb307(45)=abb307(17)**2
      abb307(48)=abb307(42)*abb307(45)
      abb307(49)=-spak4l6*abb307(48)
      abb307(50)=abb307(8)*spbk3k1
      abb307(51)=abb307(50)*abb307(40)
      abb307(52)=abb307(36)*spbk3k1
      abb307(53)=abb307(43)*abb307(52)
      abb307(54)=abb307(46)*abb307(52)
      abb307(55)=abb307(54)*abb307(8)
      abb307(51)=-abb307(55)+abb307(51)-abb307(53)
      abb307(45)=abb307(51)*abb307(45)
      abb307(53)=-spak1l6*abb307(45)
      abb307(49)=abb307(53)+abb307(49)
      abb307(49)=spak2k7*abb307(49)
      abb307(48)=spak4k7*abb307(48)
      abb307(45)=spak1k7*abb307(45)
      abb307(45)=abb307(48)+abb307(45)
      abb307(45)=spak2l6*abb307(45)
      abb307(48)=spbl6l5*abb307(20)
      abb307(53)=abb307(9)*abb307(4)
      abb307(55)=abb307(17)*abb307(53)*abb307(48)
      abb307(56)=spbk4k3*abb307(55)
      abb307(57)=abb307(46)+c4
      abb307(58)=spbl6l5*abb307(57)
      abb307(59)=abb307(58)*spbl6k2
      abb307(60)=abb307(9)*abb307(3)
      abb307(61)=abb307(60)*spbk4k3
      abb307(62)=-abb307(61)*abb307(59)
      abb307(56)=abb307(62)+abb307(56)
      abb307(56)=spak4k7*abb307(56)
      abb307(55)=spbk3k1*abb307(55)
      abb307(60)=abb307(60)*spbk3k1
      abb307(59)=-abb307(60)*abb307(59)
      abb307(55)=abb307(59)+abb307(55)
      abb307(55)=spak1k7*abb307(55)
      abb307(55)=abb307(56)+abb307(55)
      abb307(55)=spal6k7*abb307(55)
      abb307(22)=abb307(45)+abb307(55)+abb307(49)+abb307(22)
      abb307(22)=8.0_ki*abb307(22)
      abb307(9)=abb307(57)*abb307(9)*mB
      abb307(45)=abb307(15)*spbl6l5
      abb307(49)=-abb307(45)*abb307(9)
      abb307(55)=abb307(53)*mB
      abb307(56)=abb307(55)*abb307(15)
      abb307(57)=abb307(56)*abb307(48)
      abb307(49)=abb307(57)+abb307(49)
      abb307(49)=spak4k7*abb307(49)
      abb307(57)=abb307(55)*abb307(31)*abb307(48)
      abb307(59)=abb307(31)*spbl6l5
      abb307(62)=-abb307(59)*abb307(9)
      abb307(57)=abb307(57)+abb307(62)
      abb307(57)=spak1k7*abb307(57)
      abb307(49)=abb307(49)+abb307(57)
      abb307(49)=16.0_ki*spal6k7*abb307(49)
      abb307(57)=spbl6k2**2
      abb307(42)=abb307(42)*abb307(57)
      abb307(62)=spak4l6*abb307(42)
      abb307(51)=abb307(51)*abb307(57)
      abb307(57)=spak1l6*abb307(51)
      abb307(57)=abb307(57)+abb307(62)
      abb307(57)=spak2k7*abb307(57)
      abb307(42)=-spak4k7*abb307(42)
      abb307(51)=-spak1k7*abb307(51)
      abb307(42)=abb307(42)+abb307(51)
      abb307(42)=spak2l6*abb307(42)
      abb307(42)=abb307(42)+abb307(57)
      abb307(42)=8.0_ki*abb307(42)
      abb307(46)=abb307(46)*spbl5k2
      abb307(34)=abb307(46)+abb307(34)
      abb307(46)=abb307(61)*abb307(34)
      abb307(51)=abb307(53)*abb307(3)
      abb307(53)=abb307(51)*spbk4k3
      abb307(57)=-abb307(53)*abb307(21)
      abb307(46)=abb307(57)+abb307(46)
      abb307(46)=spak4k7*abb307(46)
      abb307(57)=abb307(60)*abb307(34)
      abb307(51)=abb307(51)*spbk3k1
      abb307(62)=-abb307(51)*abb307(21)
      abb307(57)=abb307(62)+abb307(57)
      abb307(57)=spak1k7*abb307(57)
      abb307(46)=abb307(46)+abb307(57)
      abb307(46)=8.0_ki*abb307(46)
      abb307(16)=abb307(16)*spbl5k2
      abb307(57)=abb307(13)*abb307(11)
      abb307(62)=abb307(39)*abb307(3)
      abb307(57)=abb307(62)+abb307(57)
      abb307(41)=abb307(41)*abb307(17)
      abb307(62)=abb307(57)*abb307(41)
      abb307(16)=abb307(16)-abb307(62)
      abb307(16)=abb307(16)*abb307(20)
      abb307(23)=abb307(23)*abb307(10)
      abb307(36)=abb307(36)*abb307(3)
      abb307(62)=abb307(36)*abb307(29)
      abb307(23)=abb307(23)+abb307(62)
      abb307(62)=abb307(23)*abb307(41)
      abb307(26)=-spbl5k2*abb307(26)
      abb307(26)=abb307(62)+abb307(26)
      abb307(26)=c2*abb307(26)
      abb307(13)=abb307(13)*abb307(10)
      abb307(13)=abb307(13)+abb307(36)
      abb307(36)=abb307(13)*abb307(41)
      abb307(33)=-spbl5k2*abb307(33)
      abb307(33)=abb307(36)+abb307(33)
      abb307(33)=c4*abb307(33)
      abb307(16)=abb307(26)+abb307(33)+abb307(16)
      abb307(16)=spak2k4*abb307(16)
      abb307(26)=abb307(35)*spbl5k2
      abb307(17)=abb307(50)*abb307(17)
      abb307(33)=abb307(57)*abb307(17)
      abb307(26)=abb307(26)-abb307(33)
      abb307(26)=-abb307(26)*abb307(20)
      abb307(23)=-abb307(23)*abb307(17)
      abb307(33)=spbl5k2*abb307(37)
      abb307(23)=abb307(23)+abb307(33)
      abb307(23)=c2*abb307(23)
      abb307(13)=-abb307(13)*abb307(17)
      abb307(17)=spbl5k2*abb307(38)
      abb307(13)=abb307(13)+abb307(17)
      abb307(13)=c4*abb307(13)
      abb307(13)=abb307(23)+abb307(13)+abb307(26)
      abb307(13)=spak1k2*abb307(13)
      abb307(17)=abb307(61)*abb307(58)
      abb307(23)=-abb307(53)*abb307(48)
      abb307(17)=abb307(23)+abb307(17)
      abb307(17)=spak4k7*abb307(17)
      abb307(23)=abb307(60)*abb307(58)
      abb307(26)=-abb307(51)*abb307(48)
      abb307(23)=abb307(26)+abb307(23)
      abb307(23)=spak1k7*abb307(23)
      abb307(26)=-abb307(28)*abb307(58)
      abb307(19)=abb307(19)*abb307(48)
      abb307(19)=abb307(19)+abb307(26)
      abb307(19)=spak4l6*abb307(19)
      abb307(26)=-abb307(27)*abb307(58)
      abb307(18)=abb307(18)*abb307(48)
      abb307(18)=abb307(18)+abb307(26)
      abb307(18)=spak1l6*abb307(18)
      abb307(13)=abb307(18)+abb307(19)+abb307(13)+abb307(16)+abb307(17)+abb307(&
      &23)
      abb307(13)=8.0_ki*abb307(13)
      abb307(16)=abb307(40)*spbk3k1
      abb307(17)=abb307(52)*c4
      abb307(17)=abb307(17)+abb307(54)
      abb307(16)=abb307(16)-abb307(17)
      abb307(16)=spak1k2*abb307(16)
      abb307(18)=abb307(40)*spbk4k3
      abb307(19)=abb307(44)*c4
      abb307(19)=abb307(19)+abb307(47)
      abb307(18)=abb307(18)-abb307(19)
      abb307(18)=spak2k4*abb307(18)
      abb307(16)=abb307(16)-abb307(18)
      abb307(16)=abb307(16)*abb307(8)*spbl6k2
      abb307(18)=16.0_ki*abb307(16)
      abb307(23)=mB**3
      abb307(11)=abb307(23)*abb307(11)
      abb307(11)=abb307(11)+abb307(14)
      abb307(14)=abb307(11)*abb307(15)
      abb307(26)=abb307(39)*spbl6k2
      abb307(27)=abb307(26)*spbk4k3
      abb307(14)=abb307(27)-abb307(14)
      abb307(14)=abb307(14)*abb307(20)
      abb307(10)=abb307(23)*abb307(10)
      abb307(23)=abb307(10)*abb307(29)
      abb307(23)=abb307(23)+abb307(25)
      abb307(25)=abb307(23)*abb307(15)
      abb307(27)=abb307(44)*spbl6k2
      abb307(28)=-abb307(29)*abb307(27)
      abb307(25)=abb307(28)+abb307(25)
      abb307(25)=c2*abb307(25)
      abb307(14)=abb307(25)+abb307(14)
      abb307(14)=abb307(8)*abb307(14)
      abb307(10)=abb307(10)+abb307(32)
      abb307(25)=abb307(10)*abb307(15)
      abb307(25)=-abb307(27)+abb307(25)
      abb307(25)=abb307(25)*abb307(43)
      abb307(14)=abb307(25)+abb307(14)
      abb307(14)=spak2k4*abb307(14)
      abb307(11)=abb307(11)*abb307(31)
      abb307(25)=abb307(26)*spbk3k1
      abb307(11)=abb307(25)-abb307(11)
      abb307(11)=-abb307(11)*abb307(20)
      abb307(23)=-abb307(23)*abb307(31)
      abb307(25)=abb307(52)*spbl6k2
      abb307(26)=abb307(29)*abb307(25)
      abb307(23)=abb307(26)+abb307(23)
      abb307(23)=c2*abb307(23)
      abb307(11)=abb307(23)+abb307(11)
      abb307(11)=abb307(8)*abb307(11)
      abb307(10)=-abb307(10)*abb307(31)
      abb307(10)=abb307(25)+abb307(10)
      abb307(10)=abb307(10)*abb307(43)
      abb307(10)=abb307(10)+abb307(11)
      abb307(10)=spak1k2*abb307(10)
      abb307(11)=abb307(45)*abb307(40)
      abb307(23)=spbl6l5*abb307(6)
      abb307(25)=abb307(47)*abb307(23)
      abb307(26)=abb307(23)*c4
      abb307(27)=abb307(26)*abb307(44)
      abb307(11)=-abb307(25)-abb307(27)+abb307(11)
      abb307(25)=spak4l6*abb307(11)
      abb307(27)=-abb307(59)*abb307(40)
      abb307(23)=abb307(54)*abb307(23)
      abb307(26)=abb307(26)*abb307(52)
      abb307(23)=abb307(26)+abb307(23)+abb307(27)
      abb307(26)=-spak1l6*abb307(23)
      abb307(10)=abb307(26)+abb307(25)+abb307(14)+abb307(10)
      abb307(10)=16.0_ki*abb307(10)
      abb307(14)=8.0_ki*abb307(16)
      abb307(16)=abb307(11)*spak4k7
      abb307(25)=abb307(23)*spak1k7
      abb307(16)=abb307(16)-abb307(25)
      abb307(16)=-8.0_ki*abb307(16)*abb307(30)
      abb307(11)=spak2k4*abb307(11)
      abb307(23)=spak1k2*abb307(23)
      abb307(11)=abb307(11)+abb307(23)
      abb307(11)=8.0_ki*abb307(11)
      abb307(23)=abb307(34)*abb307(24)
      abb307(21)=abb307(21)*abb307(12)
      abb307(21)=abb307(23)-abb307(21)
      abb307(21)=8.0_ki*abb307(21)
      abb307(23)=-spbk4k3*abb307(21)
      abb307(24)=abb307(58)*abb307(24)
      abb307(12)=abb307(48)*abb307(12)
      abb307(12)=abb307(24)-abb307(12)
      abb307(12)=8.0_ki*abb307(12)
      abb307(24)=-spbk4k3*abb307(12)
      abb307(25)=abb307(15)*abb307(9)
      abb307(26)=-abb307(56)*abb307(20)
      abb307(25)=abb307(26)+abb307(25)
      abb307(25)=spak4k7*abb307(25)
      abb307(20)=-abb307(55)*abb307(20)
      abb307(9)=abb307(20)+abb307(9)
      abb307(9)=spak1k7*abb307(31)*abb307(9)
      abb307(9)=abb307(25)+abb307(9)
      abb307(9)=8.0_ki*abb307(9)
      abb307(19)=-abb307(6)*abb307(19)
      abb307(15)=abb307(15)*abb307(40)
      abb307(15)=abb307(15)+abb307(19)
      abb307(15)=8.0_ki*abb307(15)
      abb307(19)=-spbk3k1*abb307(21)
      abb307(12)=-spbk3k1*abb307(12)
      abb307(17)=-abb307(6)*abb307(17)
      abb307(20)=abb307(31)*abb307(40)
      abb307(17)=abb307(20)+abb307(17)
      abb307(17)=8.0_ki*abb307(17)
      R2d307=0.0_ki
      rat2 = rat2 + R2d307
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='307' value='", &
          & R2d307, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd307h7
