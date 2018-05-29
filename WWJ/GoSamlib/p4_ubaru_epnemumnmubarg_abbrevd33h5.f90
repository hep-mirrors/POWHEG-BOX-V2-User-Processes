module     p4_ubaru_epnemumnmubarg_abbrevd33h5
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(62), public :: abb33
   complex(ki), public :: R2d33
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p4_ubaru_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p4_ubaru_epnemumnmubarg_kinematics
      use p4_ubaru_epnemumnmubarg_model
      use p4_ubaru_epnemumnmubarg_color, only: TR
      use p4_ubaru_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb33(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb33(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb33(3)=NC**(-1)
      abb33(4)=sqrt2**(-1)
      abb33(5)=spbk7k2**(-1)
      abb33(6)=es71**(-1)
      abb33(7)=NC-abb33(3)
      abb33(8)=gW**4*i_*TR*c1*abb33(4)*abb33(2)*abb33(1)
      abb33(9)=-abb33(8)*abb33(7)
      abb33(10)=abb33(9)*spak1k7
      abb33(11)=-abb33(5)*abb33(10)
      abb33(12)=spak1k5*spbk2k1
      abb33(13)=abb33(12)*spbk6k3
      abb33(14)=abb33(11)*abb33(13)
      abb33(15)=spak5k7*spbk6k3
      abb33(16)=-abb33(10)*abb33(15)
      abb33(14)=abb33(14)-abb33(16)
      abb33(7)=abb33(7)*abb33(8)*abb33(6)*spak1k7
      abb33(8)=abb33(5)*abb33(7)
      abb33(16)=abb33(13)*abb33(8)
      abb33(17)=-abb33(7)*abb33(15)
      abb33(18)=abb33(16)+abb33(17)
      abb33(19)=es712*abb33(18)
      abb33(19)=abb33(19)-abb33(14)
      abb33(19)=spak3k4*spbk3k2*abb33(19)
      abb33(20)=-abb33(7)*spak5k7
      abb33(21)=abb33(8)*abb33(12)
      abb33(22)=abb33(20)+abb33(21)
      abb33(23)=spbk6k2*spbk3k2
      abb33(24)=-abb33(22)*abb33(23)*es712
      abb33(25)=spak5k7*abb33(10)*abb33(23)
      abb33(26)=abb33(11)*abb33(23)
      abb33(27)=abb33(12)*abb33(26)
      abb33(24)=abb33(24)+abb33(25)+abb33(27)
      abb33(24)=spak2k4*abb33(24)
      abb33(19)=abb33(19)+abb33(24)
      abb33(19)=8.0_ki*abb33(19)
      abb33(24)=spak3k4*spbk3k2
      abb33(25)=abb33(17)*abb33(24)
      abb33(27)=abb33(23)*spak2k4
      abb33(28)=-abb33(20)*abb33(27)
      abb33(25)=abb33(25)+abb33(28)
      abb33(25)=16.0_ki*abb33(25)
      abb33(28)=abb33(8)*es712
      abb33(29)=abb33(28)-abb33(11)
      abb33(30)=-abb33(29)*abb33(23)*spak4k5
      abb33(31)=16.0_ki*abb33(30)
      abb33(32)=abb33(8)*spak1k4
      abb33(33)=abb33(32)*spbk2k1
      abb33(34)=-abb33(7)*spak4k7
      abb33(33)=abb33(33)+abb33(34)
      abb33(35)=spak5k7*spbk6k2
      abb33(36)=spbk7k3*abb33(35)*abb33(33)
      abb33(37)=spak1k5*spbk6k2
      abb33(38)=-abb33(34)*abb33(37)
      abb33(12)=abb33(12)*spbk6k2
      abb33(39)=-abb33(32)*abb33(12)
      abb33(38)=abb33(38)+abb33(39)
      abb33(38)=spbk3k1*abb33(38)
      abb33(36)=abb33(38)+abb33(36)-abb33(30)
      abb33(36)=16.0_ki*abb33(36)
      abb33(38)=-abb33(16)*abb33(24)
      abb33(39)=abb33(21)*abb33(27)
      abb33(38)=abb33(38)+abb33(39)
      abb33(38)=16.0_ki*abb33(38)
      abb33(39)=spak4k5*spbk6k2
      abb33(40)=spbk4k3*abb33(39)
      abb33(41)=spak2k5*abb33(23)
      abb33(40)=abb33(41)+abb33(40)
      abb33(40)=abb33(33)*abb33(40)
      abb33(41)=spbk6k3*spbk2k1
      abb33(20)=abb33(41)*abb33(20)
      abb33(42)=spak1k5*spbk6k3
      abb33(43)=abb33(8)*spbk2k1**2*abb33(42)
      abb33(20)=abb33(20)+abb33(43)
      abb33(20)=spak1k4*abb33(20)
      abb33(43)=abb33(13)*abb33(34)
      abb33(15)=abb33(34)*abb33(15)
      abb33(44)=-spbk7k2*abb33(15)
      abb33(20)=abb33(44)+abb33(20)+abb33(43)+abb33(30)+abb33(40)
      abb33(20)=8.0_ki*abb33(20)
      abb33(30)=-abb33(7)*spbk3k2
      abb33(40)=16.0_ki*spak4k5
      abb33(43)=abb33(40)*abb33(30)
      abb33(44)=8.0_ki*spak4k5
      abb33(45)=abb33(30)*abb33(44)
      abb33(46)=spak3k4*abb33(42)*abb33(30)
      abb33(47)=spak1k5*abb33(7)*abb33(27)
      abb33(46)=abb33(46)+abb33(47)
      abb33(46)=8.0_ki*abb33(46)
      abb33(47)=8.0_ki*spak3k4
      abb33(48)=-abb33(47)*abb33(29)*spbk3k2**2
      abb33(49)=abb33(34)*spbk3k2
      abb33(50)=spbk3k2*spbk2k1
      abb33(51)=abb33(32)*abb33(50)
      abb33(49)=abb33(49)+abb33(51)
      abb33(51)=-16.0_ki*abb33(49)
      abb33(49)=-8.0_ki*abb33(49)
      abb33(52)=abb33(30)*abb33(47)
      abb33(53)=8.0_ki*spak2k4
      abb33(54)=-abb33(30)*abb33(53)
      abb33(55)=abb33(34)*spbk6k3
      abb33(56)=abb33(32)*abb33(41)
      abb33(55)=abb33(55)+abb33(56)
      abb33(57)=16.0_ki*abb33(55)
      abb33(55)=8.0_ki*abb33(55)
      abb33(58)=-abb33(35)*abb33(7)
      abb33(21)=abb33(21)*spbk6k2
      abb33(59)=abb33(58)+abb33(21)
      abb33(60)=es712*abb33(59)
      abb33(23)=abb33(23)*abb33(28)
      abb33(23)=abb33(23)-abb33(26)
      abb33(26)=spak3k5*abb33(23)
      abb33(28)=abb33(39)*abb33(29)
      abb33(39)=spbk4k2*abb33(28)
      abb33(10)=-abb33(10)*abb33(35)
      abb33(11)=-abb33(11)*abb33(12)
      abb33(10)=abb33(39)+abb33(26)+abb33(60)+abb33(10)+abb33(11)
      abb33(10)=8.0_ki*abb33(10)
      abb33(11)=16.0_ki*abb33(58)
      abb33(12)=-16.0_ki*abb33(59)
      abb33(21)=-16.0_ki*abb33(21)
      abb33(26)=-spak3k5*abb33(30)
      abb33(30)=spbk4k2*spak4k5
      abb33(39)=abb33(7)*abb33(30)
      abb33(26)=abb33(26)+abb33(39)
      abb33(26)=8.0_ki*abb33(26)
      abb33(22)=8.0_ki*abb33(22)
      abb33(39)=spbk7k6*abb33(22)
      abb33(58)=-8.0_ki*abb33(7)
      abb33(59)=abb33(37)*abb33(58)
      abb33(60)=spbk6k2*abb33(29)
      abb33(33)=-spbk6k4*abb33(33)
      abb33(61)=-spbk7k6*spbk2k1*abb33(5)
      abb33(61)=spbk6k1+abb33(61)
      abb33(9)=-abb33(61)*abb33(9)*abb33(6)*spak1k7**2
      abb33(41)=abb33(8)*abb33(41)
      abb33(61)=abb33(41)*spak1k3
      abb33(7)=-abb33(7)*spak3k7
      abb33(62)=-spbk6k3*abb33(7)
      abb33(9)=-abb33(61)+abb33(62)+abb33(33)+abb33(60)+abb33(9)
      abb33(9)=8.0_ki*abb33(9)
      abb33(33)=abb33(16)-abb33(17)
      abb33(60)=-es12+es123
      abb33(33)=abb33(33)*abb33(60)
      abb33(60)=-abb33(35)*abb33(29)
      abb33(61)=spak5k7*abb33(61)
      abb33(60)=abb33(61)+abb33(60)
      abb33(60)=spbk7k3*abb33(60)
      abb33(37)=abb33(37)*abb33(29)
      abb33(7)=-abb33(42)*abb33(7)
      abb33(7)=abb33(7)+abb33(37)
      abb33(7)=spbk3k1*abb33(7)
      abb33(37)=-2.0_ki*abb33(17)-abb33(16)
      abb33(37)=es712*abb33(37)
      abb33(28)=-spbk4k3*abb33(28)
      abb33(23)=-spak2k5*abb33(23)
      abb33(17)=es456*abb33(17)
      abb33(16)=-es23*abb33(16)
      abb33(7)=abb33(16)+abb33(17)+abb33(23)+abb33(28)+abb33(37)+abb33(7)+abb33&
      &(60)+abb33(14)+abb33(33)
      abb33(7)=8.0_ki*abb33(7)
      abb33(14)=16.0_ki*abb33(18)
      abb33(16)=8.0_ki*abb33(18)
      abb33(17)=16.0_ki*spbk3k2*abb33(29)
      abb33(18)=spbk6k4*abb33(22)
      abb33(23)=-spak5k7*abb33(56)
      abb33(15)=-abb33(15)+abb33(23)
      abb33(15)=spbk7k3*abb33(15)
      abb33(23)=abb33(42)*abb33(34)
      abb33(13)=abb33(13)*abb33(32)
      abb33(13)=abb33(23)+abb33(13)
      abb33(13)=spbk3k1*abb33(13)
      abb33(13)=abb33(15)+abb33(13)
      abb33(13)=8.0_ki*abb33(13)
      abb33(15)=-abb33(24)*abb33(41)
      abb33(23)=abb33(8)*spbk2k1
      abb33(24)=abb33(23)*abb33(27)
      abb33(15)=abb33(15)+abb33(24)
      abb33(15)=8.0_ki*spak5k7*abb33(15)
      abb33(24)=8.0_ki*abb33(23)
      abb33(27)=-abb33(35)*abb33(24)
      abb33(8)=abb33(8)*abb33(50)
      abb33(28)=abb33(40)*abb33(8)
      abb33(29)=-abb33(8)*abb33(44)
      abb33(32)=spak3k5*abb33(8)
      abb33(23)=abb33(23)*abb33(30)
      abb33(23)=abb33(32)+abb33(23)
      abb33(23)=8.0_ki*abb33(23)
      abb33(30)=-abb33(8)*abb33(47)
      abb33(8)=abb33(8)*abb33(53)
      abb33(22)=spbk6k1*abb33(22)
      R2d33=0.0_ki
      rat2 = rat2 + R2d33
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='33' value='", &
          & R2d33, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd33h5
