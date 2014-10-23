module     p0_dbaru_epnebbbarg_abbrevd107h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(58), public :: abb107
   complex(ki), public :: R2d107
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
      abb107(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb107(2)=sqrt(mB**2)
      abb107(3)=NC**(-1)
      abb107(4)=sqrt2**(-1)
      abb107(5)=es234**(-1)
      abb107(6)=es71**(-1)
      abb107(7)=spak2l5**(-1)
      abb107(8)=spak2l6**(-1)
      abb107(9)=spak2k7**(-1)
      abb107(10)=spbl5k2**(-1)
      abb107(11)=abb107(2)*abb107(8)
      abb107(12)=c3*abb107(3)
      abb107(12)=2.0_ki*abb107(12)
      abb107(13)=abb107(12)*abb107(7)
      abb107(14)=abb107(11)*abb107(13)
      abb107(15)=abb107(7)*c4
      abb107(16)=abb107(11)*abb107(15)
      abb107(17)=abb107(3)**2
      abb107(18)=abb107(17)+1.0_ki
      abb107(19)=abb107(18)*abb107(16)
      abb107(20)=abb107(14)-abb107(19)
      abb107(21)=mB**2
      abb107(22)=TR*gW
      abb107(23)=abb107(22)*spak1k2
      abb107(23)=abb107(23)**2
      abb107(24)=abb107(21)*abb107(23)
      abb107(25)=abb107(1)*abb107(4)*i_*CVDU
      abb107(26)=abb107(9)*abb107(25)
      abb107(27)=abb107(24)*abb107(26)
      abb107(28)=-abb107(20)*spbk7k1*abb107(5)*spbk3k2*abb107(27)
      abb107(26)=abb107(26)*abb107(5)
      abb107(29)=abb107(6)*spbk7k1
      abb107(30)=abb107(29)*spbk3k2
      abb107(31)=abb107(30)*abb107(26)
      abb107(32)=abb107(17)*abb107(31)
      abb107(24)=abb107(24)*abb107(32)
      abb107(33)=abb107(31)*abb107(23)
      abb107(34)=abb107(33)*abb107(21)
      abb107(24)=abb107(24)+abb107(34)
      abb107(35)=abb107(24)*abb107(2)
      abb107(36)=abb107(8)*c4
      abb107(37)=abb107(35)*abb107(36)
      abb107(38)=abb107(12)*abb107(8)
      abb107(39)=abb107(2)*abb107(34)*abb107(38)
      abb107(37)=abb107(39)-abb107(37)
      abb107(39)=-spbl5k2*abb107(37)
      abb107(24)=abb107(24)*abb107(16)
      abb107(34)=abb107(34)*abb107(13)
      abb107(11)=abb107(34)*abb107(11)
      abb107(11)=abb107(11)-abb107(24)
      abb107(24)=es712*abb107(11)
      abb107(24)=abb107(24)+abb107(39)+abb107(28)
      abb107(24)=spak2k4*abb107(24)
      abb107(19)=abb107(19)*abb107(21)
      abb107(14)=abb107(21)*abb107(14)
      abb107(19)=abb107(19)-abb107(14)
      abb107(25)=-spbk7k3*abb107(19)*abb107(5)*abb107(23)*abb107(30)*abb107(25)
      abb107(22)=abb107(22)**2
      abb107(28)=abb107(31)*abb107(22)
      abb107(30)=abb107(22)*abb107(32)
      abb107(30)=abb107(28)+abb107(30)
      abb107(16)=abb107(30)*abb107(16)*abb107(21)
      abb107(14)=-abb107(28)*abb107(14)
      abb107(14)=abb107(16)+abb107(14)
      abb107(14)=spbk3k1*abb107(14)*spak1k2**3
      abb107(16)=spbl5k3*abb107(37)
      abb107(14)=abb107(14)+abb107(25)+abb107(16)
      abb107(14)=spak3k4*abb107(14)
      abb107(16)=abb107(22)*spak1k2
      abb107(21)=abb107(16)*abb107(26)
      abb107(22)=abb107(21)*spbk3k2
      abb107(17)=abb107(21)*abb107(17)
      abb107(25)=abb107(17)*spbk3k2
      abb107(25)=abb107(25)+abb107(22)
      abb107(28)=abb107(2)*c4
      abb107(25)=abb107(25)*abb107(28)
      abb107(30)=abb107(12)*abb107(2)
      abb107(37)=abb107(22)*abb107(30)
      abb107(25)=abb107(25)-abb107(37)
      abb107(25)=abb107(25)*spbk7l5
      abb107(35)=abb107(35)*abb107(15)
      abb107(34)=abb107(34)*abb107(2)
      abb107(25)=abb107(25)-abb107(34)+abb107(35)
      abb107(34)=-spbl6k2*spak2k4
      abb107(35)=spbl6k3*spak3k4
      abb107(34)=abb107(35)+abb107(34)
      abb107(25)=abb107(25)*abb107(34)
      abb107(14)=abb107(14)+abb107(24)+abb107(25)
      abb107(14)=8.0_ki*abb107(14)
      abb107(24)=2.0_ki*spak2k4
      abb107(25)=abb107(24)*abb107(11)
      abb107(34)=abb107(32)*abb107(16)
      abb107(16)=abb107(16)*abb107(31)
      abb107(31)=abb107(34)+abb107(16)
      abb107(31)=abb107(31)*abb107(28)
      abb107(35)=abb107(16)*abb107(30)
      abb107(31)=abb107(31)-abb107(35)
      abb107(35)=spbl6l5*spak1k4
      abb107(37)=abb107(31)*abb107(35)
      abb107(25)=abb107(25)-abb107(37)
      abb107(25)=16.0_ki*abb107(25)
      abb107(32)=abb107(32)*abb107(23)
      abb107(39)=mB**3
      abb107(40)=abb107(39)*abb107(32)
      abb107(41)=abb107(39)*abb107(33)
      abb107(40)=abb107(40)+abb107(41)
      abb107(42)=abb107(7)**2
      abb107(43)=abb107(42)*c4
      abb107(40)=abb107(40)*abb107(43)
      abb107(12)=abb107(42)*abb107(12)
      abb107(41)=abb107(12)*abb107(41)
      abb107(40)=abb107(40)-abb107(41)
      abb107(40)=abb107(40)*abb107(10)*spbl6k2
      abb107(41)=abb107(36)*abb107(18)
      abb107(41)=abb107(41)-abb107(38)
      abb107(22)=spbk7l5*abb107(41)*mB*abb107(22)
      abb107(22)=abb107(40)-abb107(22)
      abb107(40)=-abb107(11)-abb107(22)
      abb107(40)=spak2k4*abb107(40)
      abb107(37)=abb107(37)+abb107(40)
      abb107(37)=16.0_ki*abb107(37)
      abb107(40)=mB*abb107(33)
      abb107(41)=abb107(40)*abb107(18)
      abb107(42)=abb107(41)*abb107(15)
      abb107(44)=abb107(13)*abb107(40)
      abb107(42)=abb107(42)-abb107(44)
      abb107(44)=abb107(42)*spak2k4
      abb107(45)=-spbl6k2*abb107(44)
      abb107(40)=abb107(38)*abb107(40)
      abb107(41)=abb107(41)*abb107(36)
      abb107(40)=abb107(40)-abb107(41)
      abb107(41)=abb107(40)*spak3k4
      abb107(46)=-spbl5k3*abb107(41)
      abb107(47)=abb107(40)*spak2k4
      abb107(48)=spbl5k2*abb107(47)
      abb107(49)=abb107(42)*spak3k4
      abb107(50)=spbl6k3*abb107(49)
      abb107(45)=abb107(50)+abb107(48)+abb107(45)+abb107(46)
      abb107(45)=8.0_ki*abb107(45)
      abb107(46)=spbk7k3*abb107(49)
      abb107(48)=-spbk7k2*abb107(44)
      abb107(46)=abb107(46)+abb107(48)
      abb107(46)=8.0_ki*abb107(46)
      abb107(48)=spbk7l5*abb107(41)
      abb107(50)=-spbk7l6*abb107(49)
      abb107(48)=abb107(48)+abb107(50)
      abb107(48)=8.0_ki*abb107(48)
      abb107(50)=-spbk7l5*abb107(47)
      abb107(51)=spbk7l6*abb107(44)
      abb107(50)=abb107(50)+abb107(51)
      abb107(50)=8.0_ki*abb107(50)
      abb107(51)=spbl5k3*abb107(49)
      abb107(52)=-spbl5k2*abb107(44)
      abb107(51)=abb107(51)+abb107(52)
      abb107(51)=8.0_ki*abb107(51)
      abb107(52)=8.0_ki*spbl6l5
      abb107(53)=abb107(49)*abb107(52)
      abb107(52)=-abb107(44)*abb107(52)
      abb107(54)=16.0_ki*abb107(42)
      abb107(55)=16.0_ki*abb107(40)
      abb107(20)=abb107(20)*abb107(29)*abb107(27)
      abb107(23)=abb107(23)*abb107(26)
      abb107(26)=abb107(23)*abb107(29)
      abb107(19)=abb107(26)*abb107(19)
      abb107(27)=es34*abb107(19)
      abb107(20)=abb107(20)+abb107(27)
      abb107(27)=abb107(17)*abb107(29)
      abb107(56)=abb107(21)*abb107(29)
      abb107(27)=abb107(27)+abb107(56)
      abb107(27)=abb107(27)*abb107(28)
      abb107(56)=abb107(56)*abb107(30)
      abb107(27)=abb107(27)-abb107(56)
      abb107(27)=abb107(27)*abb107(35)
      abb107(35)=spbk4k2*abb107(27)
      abb107(56)=spak1k3*spbl6l5*abb107(31)
      abb107(20)=abb107(56)+abb107(35)+2.0_ki*abb107(20)
      abb107(20)=8.0_ki*abb107(20)
      abb107(29)=abb107(29)*mB
      abb107(23)=abb107(23)*abb107(29)
      abb107(35)=abb107(23)*abb107(13)
      abb107(56)=abb107(23)*abb107(18)
      abb107(57)=abb107(56)*abb107(15)
      abb107(35)=abb107(35)-abb107(57)
      abb107(57)=8.0_ki*spbk4k2
      abb107(58)=abb107(35)*abb107(57)
      abb107(23)=abb107(23)*abb107(38)
      abb107(56)=abb107(56)*abb107(36)
      abb107(23)=abb107(23)-abb107(56)
      abb107(56)=-abb107(23)*abb107(57)
      abb107(19)=-abb107(19)*abb107(24)
      abb107(19)=abb107(19)-abb107(27)
      abb107(19)=spbk4k3*abb107(19)
      abb107(24)=-abb107(33)-abb107(32)
      abb107(24)=abb107(24)*abb107(28)
      abb107(27)=abb107(33)*abb107(30)
      abb107(24)=abb107(24)+abb107(27)
      abb107(24)=spbl6l5*abb107(24)
      abb107(19)=abb107(24)+abb107(19)
      abb107(19)=8.0_ki*abb107(19)
      abb107(24)=8.0_ki*spbk4k3
      abb107(27)=-abb107(35)*abb107(24)
      abb107(23)=abb107(23)*abb107(24)
      abb107(28)=8.0_ki*abb107(42)
      abb107(30)=-8.0_ki*abb107(40)
      abb107(18)=-abb107(43)*abb107(18)
      abb107(12)=abb107(18)+abb107(12)
      abb107(18)=8.0_ki*spak3k4
      abb107(12)=abb107(10)*abb107(18)*abb107(12)*abb107(39)*abb107(26)*spbk3k2&
      &**2
      abb107(26)=mB*abb107(34)
      abb107(16)=abb107(16)*mB
      abb107(26)=abb107(26)+abb107(16)
      abb107(32)=abb107(26)*abb107(36)
      abb107(33)=abb107(16)*abb107(38)
      abb107(32)=abb107(32)-abb107(33)
      abb107(33)=abb107(32)*spak1k4
      abb107(33)=16.0_ki*abb107(33)
      abb107(17)=abb107(17)*abb107(29)
      abb107(21)=abb107(21)*abb107(29)
      abb107(17)=abb107(17)+abb107(21)
      abb107(17)=abb107(17)*abb107(36)
      abb107(21)=abb107(21)*abb107(38)
      abb107(17)=abb107(17)-abb107(21)
      abb107(17)=abb107(17)*spak1k4
      abb107(21)=-spbk4k2*abb107(17)
      abb107(29)=-spak1k3*abb107(32)
      abb107(21)=abb107(21)+abb107(29)
      abb107(21)=8.0_ki*abb107(21)
      abb107(17)=abb107(24)*abb107(17)
      abb107(11)=-abb107(11)+abb107(22)
      abb107(11)=abb107(11)*abb107(18)
      abb107(18)=-spbl5k3*spak3k4
      abb107(22)=spbl5k2*spak2k4
      abb107(18)=abb107(18)+abb107(22)
      abb107(18)=abb107(31)*abb107(18)
      abb107(22)=spbk3k1*abb107(49)
      abb107(15)=-abb107(26)*abb107(15)
      abb107(13)=abb107(13)*abb107(16)
      abb107(13)=abb107(15)+abb107(13)
      abb107(13)=es12*spak2k4*abb107(13)
      abb107(13)=abb107(13)+abb107(22)+abb107(18)
      abb107(13)=8.0_ki*abb107(13)
      abb107(15)=-spbl6k1*abb107(49)
      abb107(16)=spbl5k1*abb107(41)
      abb107(15)=abb107(15)+abb107(16)
      abb107(15)=8.0_ki*abb107(15)
      abb107(16)=spbl6k1*abb107(44)
      abb107(18)=-spbl5k1*abb107(47)
      abb107(16)=abb107(16)+abb107(18)
      abb107(16)=8.0_ki*abb107(16)
      R2d107=0.0_ki
      rat2 = rat2 + R2d107
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='107' value='", &
          & R2d107, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd107h3
