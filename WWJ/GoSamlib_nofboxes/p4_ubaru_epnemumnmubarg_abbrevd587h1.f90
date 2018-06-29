module     p4_ubaru_epnemumnmubarg_abbrevd587h1
   use p4_ubaru_epnemumnmubarg_config, only: ki
   use p4_ubaru_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(49), public :: abb587
   complex(ki), public :: R2d587
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
      abb587(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb587(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb587(3)=NC**(-1)
      abb587(4)=sqrt2**(-1)
      abb587(5)=es234**(-1)
      abb587(6)=spak2k7**(-1)
      abb587(7)=i_*TR*c1*abb587(4)*abb587(3)*gW**4*abb587(2)*abb587(1)
      abb587(8)=abb587(6)*abb587(7)
      abb587(9)=abb587(8)*abb587(5)
      abb587(10)=spbk3k2*abb587(9)
      abb587(11)=abb587(10)*spbk7k6
      abb587(12)=abb587(11)*spak1k2
      abb587(13)=abb587(12)*spak5k6
      abb587(14)=abb587(13)*spak3k4
      abb587(15)=-spbk6k3*abb587(14)
      abb587(13)=abb587(13)*spak2k4
      abb587(16)=spbk6k2*abb587(13)
      abb587(15)=abb587(15)+abb587(16)
      abb587(15)=16.0_ki*abb587(15)
      abb587(16)=spbk7k5*spak1k5
      abb587(17)=abb587(10)*spak2k4
      abb587(18)=abb587(16)*abb587(17)
      abb587(19)=abb587(11)*spak2k4
      abb587(20)=abb587(19)*spak1k6
      abb587(18)=abb587(20)+abb587(18)
      abb587(20)=spak2k5*abb587(18)
      abb587(13)=abb587(20)+abb587(13)
      abb587(13)=abb587(13)*spbk6k2
      abb587(20)=abb587(10)*spak3k4
      abb587(21)=abb587(20)*spak2k5
      abb587(22)=abb587(21)*abb587(16)
      abb587(23)=spak3k4*abb587(11)*spak1k6
      abb587(24)=abb587(23)*spak2k5
      abb587(22)=abb587(22)+abb587(24)
      abb587(14)=abb587(22)+abb587(14)
      abb587(14)=abb587(14)*spbk6k3
      abb587(13)=abb587(13)-abb587(14)
      abb587(14)=16.0_ki*abb587(13)
      abb587(24)=abb587(12)*spak4k5
      abb587(25)=spak1k5*abb587(19)
      abb587(24)=abb587(24)+abb587(25)
      abb587(25)=abb587(24)*es56
      abb587(26)=spak5k6*spbk7k6**2
      abb587(27)=abb587(26)*spak4k7
      abb587(28)=abb587(10)*spak1k2
      abb587(29)=abb587(27)*abb587(28)
      abb587(30)=abb587(26)*spak1k7
      abb587(31)=abb587(30)*abb587(17)
      abb587(25)=-abb587(31)+abb587(25)-abb587(29)
      abb587(25)=16.0_ki*abb587(25)
      abb587(29)=32.0_ki*abb587(24)
      abb587(13)=-8.0_ki*abb587(13)
      abb587(24)=16.0_ki*abb587(24)
      abb587(31)=abb587(8)*spak2k4
      abb587(32)=abb587(16)*abb587(31)
      abb587(33)=abb587(8)*spbk7k6
      abb587(34)=abb587(33)*spak1k6
      abb587(35)=-spak2k4*abb587(34)
      abb587(35)=-abb587(32)+abb587(35)
      abb587(35)=spbk3k2*abb587(35)
      abb587(36)=-es712+es71+es34
      abb587(36)=abb587(18)*abb587(36)
      abb587(16)=abb587(20)*abb587(16)
      abb587(16)=abb587(16)+abb587(23)
      abb587(16)=spak2k6*spbk6k3*abb587(16)
      abb587(22)=spbk5k3*abb587(22)
      abb587(16)=abb587(22)+abb587(16)+abb587(36)+abb587(35)
      abb587(16)=8.0_ki*abb587(16)
      abb587(22)=spbk7k3*spak3k4
      abb587(23)=abb587(22)*abb587(28)
      abb587(35)=abb587(17)*spbk7k2
      abb587(36)=abb587(35)*spak1k2
      abb587(23)=abb587(36)-abb587(23)
      abb587(36)=16.0_ki*abb587(23)
      abb587(37)=abb587(12)*spak4k6
      abb587(38)=abb587(28)*spbk7k5
      abb587(39)=abb587(38)*spak4k5
      abb587(18)=abb587(18)+abb587(37)+abb587(39)
      abb587(18)=32.0_ki*abb587(18)
      abb587(23)=-8.0_ki*abb587(23)
      abb587(37)=abb587(8)*spak1k5
      abb587(39)=spbk7k6*abb587(5)
      abb587(40)=es34*abb587(37)*abb587(39)
      abb587(41)=abb587(8)*spak1k2
      abb587(42)=abb587(41)*abb587(39)
      abb587(43)=abb587(42)*spak4k5
      abb587(44)=abb587(43)*spbk4k2
      abb587(45)=abb587(33)*spak1k5
      abb587(46)=abb587(12)*spak3k5
      abb587(40)=-abb587(44)-abb587(40)+abb587(45)-abb587(46)
      abb587(44)=-es56*abb587(40)
      abb587(45)=-es34*abb587(9)
      abb587(45)=abb587(8)+abb587(45)
      abb587(45)=abb587(45)*abb587(30)
      abb587(27)=abb587(27)*abb587(41)
      abb587(46)=spbk4k2*abb587(5)
      abb587(47)=-abb587(46)*abb587(27)
      abb587(48)=-spak3k7*abb587(28)*abb587(26)
      abb587(44)=abb587(48)+abb587(47)+abb587(45)+abb587(44)
      abb587(44)=8.0_ki*abb587(44)
      abb587(45)=16.0_ki*abb587(40)
      abb587(40)=-8.0_ki*abb587(40)
      abb587(47)=spbk7k5*abb587(5)
      abb587(48)=abb587(37)*abb587(47)
      abb587(8)=spak1k6*abb587(8)*abb587(39)
      abb587(8)=abb587(48)+abb587(8)
      abb587(8)=es34*abb587(8)
      abb587(41)=abb587(41)*spak4k5
      abb587(46)=abb587(41)*abb587(46)
      abb587(37)=abb587(46)-abb587(37)
      abb587(37)=spbk7k5*abb587(37)
      abb587(42)=abb587(42)*spak4k6
      abb587(46)=spbk4k2*abb587(42)
      abb587(48)=spak3k5*abb587(38)
      abb587(49)=spak3k6*abb587(12)
      abb587(8)=abb587(49)+abb587(48)+abb587(46)+abb587(8)-abb587(34)+abb587(37)
      abb587(8)=16.0_ki*abb587(8)
      abb587(30)=abb587(31)*abb587(30)
      abb587(27)=abb587(27)+abb587(30)
      abb587(27)=abb587(27)*spbk4k3*abb587(5)
      abb587(30)=abb587(31)*abb587(39)
      abb587(34)=abb587(30)*spak1k5
      abb587(34)=abb587(34)+abb587(43)
      abb587(34)=abb587(34)*spbk4k3
      abb587(37)=abb587(12)*spak2k5
      abb587(34)=abb587(34)+abb587(37)
      abb587(37)=-es56*abb587(34)
      abb587(7)=abb587(7)*spbk3k2*abb587(5)
      abb587(26)=spak1k2*abb587(26)*abb587(7)
      abb587(26)=abb587(26)+abb587(37)+abb587(27)
      abb587(26)=8.0_ki*abb587(26)
      abb587(27)=16.0_ki*abb587(34)
      abb587(34)=-8.0_ki*abb587(34)
      abb587(32)=-abb587(5)*abb587(32)
      abb587(37)=-abb587(41)*abb587(47)
      abb587(30)=-spak1k6*abb587(30)
      abb587(30)=-abb587(42)+abb587(30)+abb587(32)+abb587(37)
      abb587(30)=spbk4k3*abb587(30)
      abb587(32)=-spak2k5*abb587(38)
      abb587(12)=-spak2k6*abb587(12)
      abb587(12)=abb587(12)+abb587(32)+abb587(30)
      abb587(12)=16.0_ki*abb587(12)
      abb587(30)=abb587(17)*spbk6k2
      abb587(32)=abb587(20)*spbk6k3
      abb587(30)=abb587(30)-abb587(32)
      abb587(37)=es56*spak1k5*abb587(30)
      abb587(11)=spak3k4*abb587(11)*spak5k6
      abb587(38)=spbk6k3*abb587(11)
      abb587(39)=-spbk6k2*spak5k6*abb587(19)
      abb587(39)=abb587(38)+abb587(39)
      abb587(39)=spak1k7*abb587(39)
      abb587(37)=abb587(39)+abb587(37)
      abb587(37)=8.0_ki*abb587(37)
      abb587(39)=spbk5k3*abb587(20)
      abb587(41)=-spbk5k2*abb587(17)
      abb587(39)=abb587(41)+abb587(39)
      abb587(39)=spak1k5*abb587(39)
      abb587(41)=-spak1k6*abb587(30)
      abb587(42)=abb587(20)*spbk7k3
      abb587(42)=abb587(42)-abb587(35)
      abb587(43)=spak1k7*abb587(42)
      abb587(39)=abb587(43)+abb587(41)+abb587(39)
      abb587(39)=8.0_ki*abb587(39)
      abb587(41)=abb587(10)*spak1k4
      abb587(41)=32.0_ki*abb587(41)
      abb587(9)=abb587(9)*spak1k4
      abb587(43)=spbk4k2*abb587(9)
      abb587(10)=spak1k3*abb587(10)
      abb587(10)=abb587(43)+abb587(10)
      abb587(10)=16.0_ki*abb587(10)
      abb587(9)=-spbk4k3*abb587(9)
      abb587(9)=-abb587(28)+abb587(9)
      abb587(9)=16.0_ki*abb587(9)
      abb587(28)=es12-es34
      abb587(43)=abb587(17)*abb587(28)
      abb587(7)=abb587(7)*abb587(22)
      abb587(22)=spbk3k2*abb587(31)
      abb587(31)=-spak2k6*abb587(32)
      abb587(32)=-spbk5k3*abb587(21)
      abb587(22)=abb587(32)+abb587(31)+abb587(22)-abb587(7)+abb587(43)
      abb587(22)=8.0_ki*abb587(22)
      abb587(19)=abb587(19)*abb587(28)
      abb587(7)=-spbk7k6*abb587(7)
      abb587(28)=spbk3k2*abb587(33)*spak2k4
      abb587(7)=abb587(28)+abb587(7)+abb587(19)
      abb587(7)=spak5k6*abb587(7)
      abb587(19)=-spak2k6*abb587(38)
      abb587(11)=-spbk5k3*spak2k5*abb587(11)
      abb587(7)=abb587(11)+abb587(19)+abb587(7)
      abb587(7)=8.0_ki*abb587(7)
      abb587(11)=abb587(35)*spak2k5
      abb587(19)=abb587(21)*spbk7k3
      abb587(11)=abb587(11)-abb587(19)
      abb587(19)=16.0_ki*abb587(11)
      abb587(11)=8.0_ki*abb587(11)
      abb587(21)=8.0_ki*spak2k6*abb587(42)
      abb587(28)=8.0_ki*spak5k6*abb587(30)
      abb587(20)=8.0_ki*abb587(20)
      abb587(17)=-8.0_ki*abb587(17)
      R2d587=0.0_ki
      rat2 = rat2 + R2d587
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='587' value='", &
          & R2d587, "'/>"
      end if
   end subroutine
end module p4_ubaru_epnemumnmubarg_abbrevd587h1
