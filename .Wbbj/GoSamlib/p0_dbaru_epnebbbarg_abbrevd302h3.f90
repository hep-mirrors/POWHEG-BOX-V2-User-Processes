module     p0_dbaru_epnebbbarg_abbrevd302h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(68), public :: abb302
   complex(ki), public :: R2d302
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
      abb302(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb302(2)=1.0_ki/(es34+es567-es12-es234)
      abb302(3)=NC**(-1)
      abb302(4)=spak2l5**(-1)
      abb302(5)=sqrt(mB**2)
      abb302(6)=spak2l6**(-1)
      abb302(7)=spbl6k2**(-1)
      abb302(8)=c4*abb302(3)**2
      abb302(9)=c3*abb302(3)
      abb302(10)=c1*abb302(3)
      abb302(9)=-abb302(10)+c2+abb302(8)-abb302(9)
      abb302(10)=-spae7k7*abb302(9)
      abb302(11)=spak2k4*spbe7k2
      abb302(12)=abb302(10)*abb302(11)
      abb302(13)=TR*gW
      abb302(13)=abb302(13)**2
      abb302(14)=abb302(13)*abb302(5)
      abb302(15)=CVDU*i_*spak1k4*abb302(2)*abb302(1)
      abb302(16)=abb302(15)*spbk4k3
      abb302(17)=abb302(14)*abb302(16)
      abb302(18)=abb302(17)*spbl6k2
      abb302(19)=abb302(18)*abb302(12)
      abb302(20)=spak1k2*spbe7k2
      abb302(21)=abb302(10)*abb302(20)
      abb302(22)=abb302(15)*spbk3k1
      abb302(14)=abb302(14)*abb302(22)
      abb302(23)=abb302(14)*spbl6k2
      abb302(24)=-abb302(23)*abb302(21)
      abb302(19)=abb302(19)+abb302(24)
      abb302(19)=spbk7l5*abb302(19)
      abb302(15)=abb302(15)*abb302(13)*mB
      abb302(24)=abb302(15)*abb302(4)
      abb302(25)=abb302(24)*spbl6k2
      abb302(26)=abb302(25)*spbk4k3
      abb302(27)=abb302(26)*abb302(12)
      abb302(25)=abb302(25)*spbk3k1
      abb302(28)=-abb302(25)*abb302(21)
      abb302(27)=abb302(27)+abb302(28)
      abb302(27)=spak2l6*spbk7l6*abb302(27)
      abb302(19)=abb302(19)+abb302(27)
      abb302(19)=4.0_ki*abb302(19)
      abb302(18)=abb302(18)*abb302(9)
      abb302(27)=-spak2k4*abb302(18)
      abb302(23)=-abb302(23)*abb302(9)
      abb302(28)=-spak1k2*abb302(23)
      abb302(27)=abb302(27)+abb302(28)
      abb302(27)=spbl5k2*abb302(27)
      abb302(28)=abb302(24)*spbk4k3
      abb302(29)=-abb302(28)*abb302(9)
      abb302(30)=spak2k4*abb302(29)
      abb302(24)=abb302(24)*spbk3k1
      abb302(31)=-abb302(24)*abb302(9)
      abb302(32)=-spak1k2*abb302(31)
      abb302(30)=abb302(30)+abb302(32)
      abb302(30)=spak2l6*abb302(30)*spbl6k2**2
      abb302(27)=abb302(27)+abb302(30)
      abb302(27)=8.0_ki*abb302(27)
      abb302(28)=abb302(10)*abb302(28)
      abb302(30)=abb302(28)*abb302(11)
      abb302(24)=abb302(10)*abb302(24)
      abb302(32)=abb302(24)*abb302(20)
      abb302(30)=abb302(30)-abb302(32)
      abb302(32)=abb302(30)*spbk7l6
      abb302(33)=-8.0_ki*abb302(32)
      abb302(34)=-abb302(25)*abb302(9)
      abb302(35)=abb302(34)*spak1k2
      abb302(36)=abb302(26)*abb302(9)
      abb302(37)=abb302(36)*spak2k4
      abb302(35)=abb302(35)+abb302(37)
      abb302(35)=16.0_ki*abb302(35)
      abb302(37)=abb302(34)*spak1e7
      abb302(38)=abb302(36)*spak4e7
      abb302(37)=abb302(37)-abb302(38)
      abb302(38)=spak2l6*abb302(37)*spbe7l6
      abb302(39)=spak4e7*spbe7l5
      abb302(40)=abb302(18)*abb302(39)
      abb302(41)=spak1e7*spbe7l5
      abb302(42)=abb302(23)*abb302(41)
      abb302(38)=-abb302(38)+abb302(40)-abb302(42)
      abb302(40)=spak2e7*spbe7l6
      abb302(42)=abb302(36)*abb302(40)
      abb302(15)=abb302(15)*abb302(6)
      abb302(43)=spbk4k3*abb302(15)
      abb302(44)=abb302(10)*abb302(43)
      abb302(45)=spbk7l5*spbe7l6
      abb302(46)=-abb302(44)*abb302(45)
      abb302(43)=-abb302(43)*abb302(9)
      abb302(47)=abb302(40)*spbl5k2
      abb302(48)=abb302(43)*abb302(47)
      abb302(46)=abb302(48)-abb302(42)+abb302(46)
      abb302(46)=spak4l6*abb302(46)
      abb302(40)=abb302(34)*abb302(40)
      abb302(15)=spbk3k1*abb302(15)
      abb302(48)=abb302(10)*abb302(15)
      abb302(49)=-abb302(48)*abb302(45)
      abb302(15)=abb302(15)*abb302(9)
      abb302(50)=-abb302(15)*abb302(47)
      abb302(49)=abb302(50)+abb302(40)+abb302(49)
      abb302(49)=spak1l6*abb302(49)
      abb302(13)=abb302(6)*abb302(13)*abb302(4)
      abb302(50)=mB**3
      abb302(51)=abb302(50)*abb302(13)
      abb302(52)=abb302(51)*abb302(16)
      abb302(53)=abb302(10)*abb302(52)
      abb302(54)=spak2k4*spbe7l6
      abb302(55)=abb302(53)*abb302(54)
      abb302(51)=abb302(51)*abb302(22)
      abb302(56)=abb302(10)*abb302(51)
      abb302(57)=spak1k2*spbe7l6
      abb302(58)=-abb302(56)*abb302(57)
      abb302(55)=abb302(55)+abb302(58)
      abb302(55)=abb302(7)*spbk7k2*abb302(55)
      abb302(58)=mB**2
      abb302(59)=abb302(58)*abb302(13)
      abb302(60)=abb302(16)*abb302(5)
      abb302(61)=abb302(59)*abb302(60)
      abb302(62)=abb302(9)*abb302(61)
      abb302(63)=spak4e7*abb302(62)
      abb302(64)=abb302(22)*abb302(5)
      abb302(59)=abb302(59)*abb302(64)
      abb302(65)=abb302(9)*abb302(59)
      abb302(66)=spak1e7*abb302(65)
      abb302(63)=abb302(63)+abb302(66)
      abb302(66)=spak2k7*spbk7e7
      abb302(63)=abb302(63)*abb302(66)
      abb302(67)=spbk7e7*spak2e7
      abb302(68)=abb302(67)*spak4k7
      abb302(62)=-abb302(62)*abb302(68)
      abb302(67)=abb302(67)*spak1k7
      abb302(65)=-abb302(65)*abb302(67)
      abb302(32)=abb302(65)+abb302(62)+abb302(63)+abb302(55)+abb302(49)+abb302(&
      &46)-abb302(32)+abb302(38)
      abb302(32)=8.0_ki*abb302(32)
      abb302(46)=abb302(26)+abb302(52)-abb302(61)
      abb302(8)=abb302(8)+c2
      abb302(46)=abb302(46)*abb302(8)
      abb302(16)=abb302(50)*abb302(16)
      abb302(49)=abb302(58)*abb302(60)
      abb302(16)=abb302(16)-abb302(49)
      abb302(13)=abb302(3)*abb302(13)
      abb302(16)=abb302(16)*abb302(13)
      abb302(26)=abb302(26)*abb302(3)
      abb302(16)=abb302(16)+abb302(26)
      abb302(26)=c1+c3
      abb302(16)=-abb302(16)*abb302(26)
      abb302(16)=abb302(16)+abb302(46)
      abb302(16)=spak2k4*abb302(16)
      abb302(46)=abb302(25)+abb302(51)-abb302(59)
      abb302(8)=-abb302(46)*abb302(8)
      abb302(22)=abb302(50)*abb302(22)
      abb302(46)=abb302(58)*abb302(64)
      abb302(22)=abb302(22)-abb302(46)
      abb302(13)=abb302(22)*abb302(13)
      abb302(22)=abb302(25)*abb302(3)
      abb302(13)=abb302(13)+abb302(22)
      abb302(13)=abb302(13)*abb302(26)
      abb302(8)=abb302(13)+abb302(8)
      abb302(8)=spak1k2*abb302(8)
      abb302(13)=abb302(43)*spak4l6
      abb302(22)=abb302(15)*spak1l6
      abb302(13)=abb302(13)-abb302(22)
      abb302(22)=spbl6l5*abb302(13)
      abb302(8)=abb302(22)+abb302(16)+abb302(8)
      abb302(8)=16.0_ki*abb302(8)
      abb302(16)=abb302(41)*abb302(15)
      abb302(22)=abb302(39)*abb302(43)
      abb302(16)=abb302(16)-abb302(22)
      abb302(22)=16.0_ki*abb302(16)
      abb302(25)=spbe7l5*spak2e7
      abb302(26)=abb302(25)*spbl6k2
      abb302(39)=-abb302(43)*abb302(26)
      abb302(39)=abb302(42)+abb302(39)
      abb302(39)=spak4l6*abb302(39)
      abb302(26)=abb302(15)*abb302(26)
      abb302(26)=-abb302(40)+abb302(26)
      abb302(26)=spak1l6*abb302(26)
      abb302(37)=-abb302(37)*abb302(66)
      abb302(36)=-abb302(36)*abb302(68)
      abb302(34)=abb302(34)*abb302(67)
      abb302(26)=abb302(34)+abb302(36)+abb302(37)+abb302(26)+abb302(39)-abb302(&
      &38)
      abb302(26)=4.0_ki*abb302(26)
      abb302(16)=-8.0_ki*abb302(16)
      abb302(34)=abb302(31)*abb302(20)
      abb302(36)=abb302(29)*abb302(11)
      abb302(34)=abb302(34)-abb302(36)
      abb302(36)=-8.0_ki*abb302(34)
      abb302(34)=4.0_ki*abb302(34)
      abb302(37)=abb302(43)*spak2k4
      abb302(38)=abb302(15)*spak1k2
      abb302(37)=abb302(37)+abb302(38)
      abb302(37)=abb302(37)*spbe7l5
      abb302(31)=abb302(57)*abb302(31)
      abb302(29)=abb302(54)*abb302(29)
      abb302(29)=abb302(37)-abb302(31)+abb302(29)
      abb302(31)=-8.0_ki*abb302(29)
      abb302(29)=4.0_ki*abb302(29)
      abb302(28)=abb302(28)*abb302(54)
      abb302(24)=-abb302(24)*abb302(57)
      abb302(24)=abb302(28)+abb302(24)
      abb302(24)=4.0_ki*spbk7l6*abb302(24)
      abb302(28)=abb302(10)*abb302(17)
      abb302(37)=spbk7l5*spbe7k2
      abb302(38)=4.0_ki*abb302(37)
      abb302(39)=-abb302(28)*abb302(38)
      abb302(17)=abb302(9)*abb302(17)
      abb302(40)=8.0_ki*abb302(17)
      abb302(41)=spbl5k2*abb302(40)
      abb302(18)=-abb302(18)*abb302(25)
      abb302(28)=abb302(28)*abb302(45)
      abb302(17)=abb302(17)*abb302(47)
      abb302(17)=abb302(17)+abb302(18)+abb302(28)
      abb302(17)=4.0_ki*abb302(17)
      abb302(18)=spbl6l5*abb302(40)
      abb302(28)=8.0_ki*abb302(25)
      abb302(40)=abb302(43)*abb302(28)
      abb302(42)=-spbk7l5*abb302(44)
      abb302(46)=spbl5k2*spak2e7
      abb302(49)=abb302(43)*abb302(46)
      abb302(42)=abb302(42)+abb302(49)
      abb302(42)=4.0_ki*abb302(42)
      abb302(12)=abb302(61)*abb302(12)
      abb302(21)=-abb302(59)*abb302(21)
      abb302(12)=abb302(12)+abb302(21)
      abb302(12)=4.0_ki*abb302(12)
      abb302(11)=-abb302(53)*abb302(11)
      abb302(20)=abb302(56)*abb302(20)
      abb302(11)=abb302(11)+abb302(20)
      abb302(11)=abb302(7)*abb302(11)
      abb302(11)=abb302(11)+abb302(30)
      abb302(11)=spbk7k2*abb302(11)
      abb302(20)=spak4l6*abb302(44)
      abb302(21)=spak1l6*abb302(48)
      abb302(20)=abb302(20)+abb302(21)
      abb302(20)=abb302(37)*abb302(20)
      abb302(11)=abb302(20)+abb302(11)
      abb302(11)=4.0_ki*abb302(11)
      abb302(13)=8.0_ki*spbl5k2*abb302(13)
      abb302(20)=8.0_ki*abb302(43)
      abb302(10)=abb302(10)*abb302(14)
      abb302(21)=-abb302(10)*abb302(38)
      abb302(9)=abb302(9)*abb302(14)
      abb302(14)=8.0_ki*abb302(9)
      abb302(30)=spbl5k2*abb302(14)
      abb302(23)=abb302(23)*abb302(25)
      abb302(10)=abb302(10)*abb302(45)
      abb302(9)=abb302(9)*abb302(47)
      abb302(9)=abb302(9)+abb302(23)+abb302(10)
      abb302(9)=4.0_ki*abb302(9)
      abb302(10)=spbl6l5*abb302(14)
      abb302(14)=-abb302(15)*abb302(28)
      abb302(23)=-spbk7l5*abb302(48)
      abb302(25)=-abb302(15)*abb302(46)
      abb302(23)=abb302(23)+abb302(25)
      abb302(23)=4.0_ki*abb302(23)
      abb302(15)=8.0_ki*abb302(15)
      R2d302=0.0_ki
      rat2 = rat2 + R2d302
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='302' value='", &
          & R2d302, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd302h3
