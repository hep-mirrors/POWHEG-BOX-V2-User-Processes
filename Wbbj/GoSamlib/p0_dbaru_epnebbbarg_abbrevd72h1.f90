module     p0_dbaru_epnebbbarg_abbrevd72h1
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(63), public :: abb72
   complex(ki), public :: R2d72
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
      abb72(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb72(2)=1.0_ki/(mB**2-es67-es56+es567)
      abb72(3)=NC**(-1)
      abb72(4)=sqrt2**(-1)
      abb72(5)=spak2k7**(-1)
      abb72(6)=spak2l6**(-1)
      abb72(7)=spbl6k2**(-1)
      abb72(8)=sqrt(mB**2)
      abb72(9)=abb72(3)**2
      abb72(10)=abb72(9)*abb72(5)
      abb72(11)=abb72(10)*c2
      abb72(12)=TR*gW
      abb72(12)=CVDU*i_*spbk7l5*abb72(4)*abb72(2)*abb72(1)*abb72(12)**2
      abb72(13)=abb72(12)*spak1l6
      abb72(14)=abb72(11)*abb72(13)
      abb72(15)=2.0_ki*abb72(3)
      abb72(16)=abb72(12)*c1
      abb72(17)=abb72(5)*abb72(16)
      abb72(18)=abb72(15)*abb72(17)
      abb72(19)=abb72(18)*spak1l6
      abb72(17)=abb72(17)*NC
      abb72(20)=abb72(17)*spak1l6
      abb72(14)=-abb72(19)+abb72(14)+abb72(20)
      abb72(19)=mB**2
      abb72(20)=abb72(19)*abb72(7)
      abb72(21)=abb72(20)*abb72(14)
      abb72(22)=-spak1k4*abb72(21)
      abb72(23)=abb72(6)*es12
      abb72(24)=abb72(22)*abb72(23)
      abb72(25)=spbl5k2*spak2l5
      abb72(25)=abb72(25)-es712
      abb72(26)=abb72(25)+es71
      abb72(27)=abb72(24)*abb72(26)
      abb72(28)=spak1k4*abb72(14)
      abb72(29)=abb72(8)-mB
      abb72(29)=abb72(8)*abb72(29)*abb72(28)
      abb72(30)=-es12*abb72(29)
      abb72(31)=abb72(22)*abb72(6)
      abb72(32)=es12**2
      abb72(33)=abb72(32)*abb72(31)
      abb72(34)=abb72(12)*spak1k4
      abb72(35)=abb72(11)*abb72(34)
      abb72(36)=abb72(18)*spak1k4
      abb72(37)=abb72(17)*spak1k4
      abb72(35)=abb72(37)+abb72(35)-abb72(36)
      abb72(25)=abb72(25)+es71+es12
      abb72(36)=abb72(25)*spbl6k1
      abb72(37)=abb72(36)*spak1l6**2
      abb72(38)=-abb72(35)*abb72(37)
      abb72(27)=abb72(38)+abb72(30)+abb72(33)+abb72(27)
      abb72(27)=spbk3k1*abb72(27)
      abb72(30)=-abb72(31)*abb72(26)
      abb72(24)=abb72(29)-abb72(24)+abb72(30)
      abb72(24)=spak2k4*abb72(24)
      abb72(17)=abb72(17)-abb72(18)
      abb72(18)=abb72(7)*mB
      abb72(29)=-abb72(18)*abb72(17)
      abb72(30)=abb72(12)*abb72(7)
      abb72(11)=abb72(11)*abb72(30)
      abb72(33)=abb72(11)*mB
      abb72(29)=abb72(29)-abb72(33)
      abb72(33)=abb72(29)*abb72(8)
      abb72(38)=-es12-abb72(26)
      abb72(39)=spak1k4**2
      abb72(38)=-abb72(38)*abb72(39)*abb72(33)
      abb72(24)=abb72(24)+abb72(38)
      abb72(24)=spbk2k1*abb72(24)
      abb72(36)=-abb72(28)*spak4l6*abb72(36)
      abb72(24)=abb72(24)+abb72(36)
      abb72(24)=spbk4k3*abb72(24)
      abb72(24)=abb72(27)+abb72(24)
      abb72(24)=8.0_ki*abb72(24)
      abb72(27)=abb72(8)*spbk3k2
      abb72(36)=-abb72(27)*abb72(14)
      abb72(38)=mB*abb72(14)
      abb72(40)=abb72(38)*spbk3k2
      abb72(36)=abb72(36)+abb72(40)
      abb72(36)=abb72(36)*abb72(8)
      abb72(40)=abb72(6)*spbk3k2
      abb72(41)=abb72(40)*abb72(21)
      abb72(42)=abb72(25)*abb72(41)
      abb72(36)=abb72(36)-abb72(42)
      abb72(36)=abb72(36)*spak2k4
      abb72(42)=abb72(18)*abb72(35)
      abb72(43)=abb72(42)*abb72(27)
      abb72(44)=abb72(25)*abb72(43)
      abb72(45)=-abb72(25)*abb72(14)
      abb72(46)=spak4l6*abb72(45)
      abb72(47)=abb72(46)*spbl6k3
      abb72(36)=abb72(36)+abb72(44)+abb72(47)
      abb72(44)=16.0_ki*abb72(36)
      abb72(47)=-abb72(14)*abb72(18)
      abb72(48)=spak3k4*spbl6k3
      abb72(49)=-abb72(47)*abb72(48)
      abb72(50)=abb72(28)*abb72(18)
      abb72(51)=-spbl6k1*abb72(50)
      abb72(49)=abb72(51)+abb72(49)
      abb72(49)=abb72(27)*abb72(49)
      abb72(51)=spak3k4*spak2l5
      abb72(41)=-abb72(41)*abb72(51)
      abb72(31)=-spbk2k1*spak2l5*abb72(31)
      abb72(31)=abb72(41)+abb72(31)
      abb72(31)=spbl5k3*abb72(31)
      abb72(41)=spbl5k1*spak2l5
      abb72(22)=-abb72(22)*abb72(41)
      abb72(15)=abb72(15)-NC
      abb72(52)=-c1*abb72(15)
      abb72(53)=abb72(9)*c2
      abb72(52)=abb72(52)+abb72(53)
      abb72(13)=abb72(52)*abb72(13)
      abb72(53)=spak1k4*abb72(13)
      abb72(54)=abb72(53)*abb72(20)
      abb72(55)=spbk7k1*abb72(54)
      abb72(22)=abb72(22)+abb72(55)
      abb72(22)=abb72(40)*abb72(22)
      abb72(55)=spbk2k1*spbl6k3
      abb72(50)=-abb72(8)*abb72(50)*abb72(55)
      abb72(56)=abb72(8)**2
      abb72(57)=abb72(56)*abb72(28)
      abb72(58)=spbk3k1*abb72(57)
      abb72(59)=abb72(20)*abb72(13)
      abb72(60)=-spak3k4*abb72(59)*abb72(40)
      abb72(54)=spbk2k1*abb72(6)*abb72(54)
      abb72(54)=abb72(60)+abb72(54)
      abb72(54)=spbk7k3*abb72(54)
      abb72(22)=abb72(31)+abb72(54)+2.0_ki*abb72(58)+abb72(50)+abb72(22)+abb72(&
      &49)
      abb72(22)=16.0_ki*abb72(22)
      abb72(31)=abb72(35)*abb72(25)
      abb72(49)=spbk4k3*spak4l6*abb72(31)
      abb72(50)=spbk3k1*abb72(25)*abb72(28)
      abb72(49)=abb72(50)+abb72(49)+abb72(36)
      abb72(49)=16.0_ki*abb72(49)
      abb72(36)=-8.0_ki*abb72(36)
      abb72(50)=spbl6k1*spbk3k2
      abb72(50)=abb72(50)+abb72(55)
      abb72(54)=abb72(53)*abb72(50)
      abb72(48)=abb72(48)*abb72(13)
      abb72(55)=spbk3k2*abb72(48)
      abb72(54)=abb72(55)+abb72(54)
      abb72(54)=8.0_ki*abb72(54)
      abb72(34)=abb72(34)*abb72(52)
      abb72(55)=16.0_ki*spbk3k2
      abb72(58)=-abb72(34)*abb72(55)
      abb72(28)=abb72(28)*spak2l5
      abb72(50)=abb72(28)*abb72(50)
      abb72(60)=-spbl6k3*abb72(14)*abb72(51)
      abb72(61)=-spbk3k2*abb72(60)
      abb72(50)=abb72(61)+abb72(50)
      abb72(50)=8.0_ki*abb72(50)
      abb72(61)=abb72(35)*spak2l5
      abb72(55)=-abb72(61)*abb72(55)
      abb72(62)=16.0_ki*abb72(31)
      abb72(31)=8.0_ki*abb72(31)
      abb72(63)=spbl6k1*abb72(28)
      abb72(60)=-abb72(60)+abb72(63)
      abb72(60)=spbl5k3*abb72(60)
      abb72(28)=-spbl5k1*abb72(28)
      abb72(63)=-spbk7k1*abb72(53)
      abb72(28)=abb72(28)+abb72(63)
      abb72(28)=spbl6k3*abb72(28)
      abb72(53)=spbl6k1*abb72(53)
      abb72(48)=abb72(48)+abb72(53)
      abb72(48)=spbk7k3*abb72(48)
      abb72(28)=abb72(48)+abb72(60)+abb72(28)
      abb72(28)=8.0_ki*abb72(28)
      abb72(48)=abb72(61)*spbl5k3
      abb72(53)=abb72(34)*spbk7k3
      abb72(48)=abb72(48)+abb72(53)
      abb72(53)=-16.0_ki*abb72(48)
      abb72(12)=abb72(12)*c2
      abb72(10)=abb72(10)*abb72(12)
      abb72(10)=abb72(17)+abb72(10)
      abb72(60)=abb72(25)*abb72(10)
      abb72(63)=8.0_ki*abb72(60)
      abb72(39)=spbk4k3*abb72(39)*abb72(63)
      abb72(35)=abb72(20)*abb72(35)
      abb72(42)=abb72(42)*abb72(8)
      abb72(35)=abb72(35)-abb72(42)
      abb72(35)=-spbk4k2*abb72(35)
      abb72(17)=-abb72(20)*abb72(17)
      abb72(11)=abb72(11)*abb72(19)
      abb72(11)=abb72(17)-abb72(11)
      abb72(17)=abb72(11)*spbk3k2
      abb72(19)=abb72(29)*abb72(27)
      abb72(17)=abb72(17)-abb72(19)
      abb72(17)=spak1k3*abb72(17)
      abb72(17)=abb72(17)+abb72(35)
      abb72(17)=abb72(25)*abb72(17)
      abb72(20)=-abb72(14)*abb72(8)
      abb72(20)=abb72(20)+abb72(38)
      abb72(20)=abb72(20)*abb72(8)
      abb72(29)=es234-es34
      abb72(35)=-es12-abb72(29)
      abb72(35)=abb72(20)*abb72(35)
      abb72(25)=-spak3l6*abb72(40)*abb72(25)
      abb72(38)=-abb72(6)*abb72(26)
      abb72(23)=-abb72(23)+abb72(38)
      abb72(23)=spbk4k2*spak4l6*abb72(23)
      abb72(23)=abb72(25)+abb72(23)
      abb72(11)=spak1k2*abb72(11)*abb72(23)
      abb72(21)=abb72(21)*abb72(6)
      abb72(23)=abb72(21)*es12
      abb72(25)=abb72(23)*abb72(26)
      abb72(32)=abb72(32)*abb72(21)
      abb72(37)=abb72(10)*abb72(37)
      abb72(38)=spak3l6*spbl6k3*abb72(45)
      abb72(40)=spbl6k4*abb72(46)
      abb72(11)=abb72(40)+abb72(11)+abb72(38)+abb72(37)+abb72(32)+abb72(35)+abb&
      &72(25)+abb72(17)
      abb72(11)=8.0_ki*abb72(11)
      abb72(17)=-abb72(21)*abb72(26)
      abb72(17)=abb72(20)-abb72(23)+abb72(17)
      abb72(17)=16.0_ki*abb72(17)
      abb72(20)=16.0_ki*abb72(45)
      abb72(23)=8.0_ki*spbl6k2
      abb72(25)=-abb72(13)*abb72(23)
      abb72(32)=-abb72(14)*spak2l5
      abb72(23)=abb72(32)*abb72(23)
      abb72(35)=spak1k3*abb72(63)
      abb72(32)=-spbl6l5*abb72(32)
      abb72(13)=-spbk7l6*abb72(13)
      abb72(13)=abb72(13)+abb72(32)
      abb72(13)=8.0_ki*abb72(13)
      abb72(32)=spbk3k2**2
      abb72(32)=8.0_ki*abb72(32)
      abb72(37)=abb72(32)*spak3k4
      abb72(38)=-abb72(6)*abb72(59)*abb72(37)
      abb72(37)=abb72(37)*abb72(8)
      abb72(40)=-abb72(47)*abb72(37)
      abb72(32)=abb72(32)*abb72(51)
      abb72(21)=-abb72(21)*abb72(32)
      abb72(14)=-spak3k4*abb72(56)*abb72(14)*spbk3k2
      abb72(45)=-spbk2k1*abb72(57)
      abb72(14)=abb72(14)+abb72(45)
      abb72(14)=8.0_ki*abb72(14)
      abb72(45)=8.0_ki*spbk3k2
      abb72(46)=-abb72(57)*abb72(45)
      abb72(30)=abb72(52)*abb72(30)*mB
      abb72(37)=abb72(30)*abb72(37)
      abb72(15)=-abb72(16)*abb72(15)
      abb72(9)=abb72(12)*abb72(9)
      abb72(9)=abb72(9)+abb72(15)
      abb72(12)=abb72(9)*spak3k4
      abb72(15)=abb72(12)*spbk3k2
      abb72(16)=abb72(34)*spbk2k1
      abb72(15)=abb72(15)+abb72(16)
      abb72(15)=8.0_ki*abb72(15)
      abb72(16)=abb72(34)*abb72(45)
      abb72(9)=16.0_ki*abb72(9)
      abb72(32)=-abb72(33)*abb72(32)
      abb72(47)=abb72(61)*spbk2k1
      abb72(52)=abb72(51)*abb72(10)
      abb72(56)=abb72(52)*spbk3k2
      abb72(47)=abb72(47)+abb72(56)
      abb72(47)=8.0_ki*abb72(47)
      abb72(45)=abb72(61)*abb72(45)
      abb72(10)=abb72(10)*spak2l5
      abb72(10)=16.0_ki*abb72(10)
      abb72(56)=-spak4l6*abb72(60)
      abb72(57)=8.0_ki*abb72(56)
      abb72(56)=16.0_ki*abb72(56)
      abb72(59)=abb72(61)*spbl5k1
      abb72(12)=abb72(12)*spbk7k3
      abb72(52)=abb72(52)*spbl5k3
      abb72(60)=abb72(34)*spbk7k1
      abb72(12)=-abb72(59)+abb72(12)+abb72(52)-abb72(60)
      abb72(12)=8.0_ki*abb72(12)
      abb72(52)=spak3l6*abb72(63)
      abb72(51)=-abb72(19)*abb72(51)
      abb72(59)=abb72(42)*spbk2k1
      abb72(60)=-spak2l5*abb72(59)
      abb72(51)=abb72(51)+abb72(60)
      abb72(51)=spbl5k3*abb72(51)
      abb72(60)=spbk4k3*spak2k4*abb72(59)
      abb72(42)=abb72(42)*spbk3k1
      abb72(61)=-es12*abb72(42)
      abb72(30)=spak3k4*abb72(30)*abb72(27)
      abb72(18)=abb72(34)*abb72(18)
      abb72(34)=-spbk2k1*abb72(8)*abb72(18)
      abb72(30)=abb72(30)+abb72(34)
      abb72(30)=spbk7k3*abb72(30)
      abb72(34)=-abb72(43)*abb72(41)
      abb72(18)=-spbk7k1*abb72(18)*abb72(27)
      abb72(18)=abb72(34)+abb72(18)+abb72(51)+abb72(30)+abb72(60)+abb72(61)
      abb72(18)=8.0_ki*abb72(18)
      abb72(27)=abb72(19)*spak2k4
      abb72(30)=16.0_ki*abb72(27)
      abb72(34)=32.0_ki*abb72(42)
      abb72(27)=-8.0_ki*abb72(27)
      abb72(41)=8.0_ki*abb72(48)
      abb72(26)=-2.0_ki*es12-abb72(26)-abb72(29)
      abb72(26)=8.0_ki*abb72(33)*abb72(26)
      abb72(29)=16.0_ki*abb72(33)
      abb72(19)=spak3k4*abb72(19)
      abb72(19)=abb72(19)-abb72(59)
      abb72(19)=8.0_ki*abb72(19)
      abb72(33)=-8.0_ki*abb72(43)
      R2d72=0.0_ki
      rat2 = rat2 + R2d72
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='72' value='", &
          & R2d72, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd72h1
