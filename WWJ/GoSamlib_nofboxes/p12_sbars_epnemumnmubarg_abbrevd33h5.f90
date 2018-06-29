module     p12_sbars_epnemumnmubarg_abbrevd33h5
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(53), public :: abb33
   complex(ki), public :: R2d33
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p12_sbars_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_color, only: TR
      use p12_sbars_epnemumnmubarg_globalsl1, only: epspow
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
      abb33(11)=spak4k7*spbk6k3
      abb33(12)=-abb33(10)*abb33(11)
      abb33(13)=-abb33(5)*abb33(10)
      abb33(14)=spak1k4*spbk2k1
      abb33(15)=abb33(14)*spbk6k3
      abb33(16)=-abb33(13)*abb33(15)
      abb33(16)=abb33(12)+abb33(16)
      abb33(16)=spbk6k2*abb33(16)
      abb33(7)=abb33(7)*abb33(8)*abb33(6)*spak1k7
      abb33(8)=abb33(5)*abb33(7)
      abb33(17)=abb33(15)*abb33(8)
      abb33(18)=abb33(17)*spbk6k2
      abb33(19)=-abb33(7)*spbk6k2
      abb33(20)=abb33(11)*abb33(19)
      abb33(20)=abb33(20)+abb33(18)
      abb33(20)=es712*abb33(20)
      abb33(16)=abb33(20)+abb33(16)
      abb33(16)=spak5k6*abb33(16)
      abb33(20)=-abb33(7)*spak4k7
      abb33(21)=abb33(8)*abb33(14)
      abb33(22)=abb33(20)+abb33(21)
      abb33(23)=spbk3k2*spbk6k2
      abb33(24)=-abb33(22)*abb33(23)*es712
      abb33(25)=spak4k7*abb33(10)*abb33(23)
      abb33(26)=abb33(13)*abb33(23)
      abb33(27)=abb33(14)*abb33(26)
      abb33(24)=abb33(24)+abb33(25)+abb33(27)
      abb33(24)=spak2k5*abb33(24)
      abb33(16)=abb33(16)+abb33(24)
      abb33(16)=8.0_ki*abb33(16)
      abb33(24)=abb33(19)*spak5k6
      abb33(25)=abb33(11)*abb33(24)
      abb33(27)=abb33(23)*spak2k5
      abb33(28)=-abb33(20)*abb33(27)
      abb33(25)=abb33(25)+abb33(28)
      abb33(25)=16.0_ki*abb33(25)
      abb33(28)=abb33(8)*es712
      abb33(29)=abb33(28)-abb33(13)
      abb33(30)=-abb33(29)*abb33(23)*spak4k5
      abb33(31)=16.0_ki*abb33(30)
      abb33(32)=abb33(8)*spak1k5
      abb33(33)=abb33(32)*spbk2k1
      abb33(34)=-abb33(7)*spak5k7
      abb33(33)=abb33(33)+abb33(34)
      abb33(35)=spak4k7*spbk3k2
      abb33(36)=spbk7k6*abb33(35)*abb33(33)
      abb33(37)=spak1k4*spbk3k2
      abb33(38)=-abb33(34)*abb33(37)
      abb33(14)=abb33(14)*spbk3k2
      abb33(39)=-abb33(32)*abb33(14)
      abb33(38)=abb33(38)+abb33(39)
      abb33(38)=spbk6k1*abb33(38)
      abb33(36)=abb33(38)+abb33(36)+abb33(30)
      abb33(36)=16.0_ki*abb33(36)
      abb33(18)=-spak5k6*abb33(18)
      abb33(38)=abb33(21)*abb33(27)
      abb33(18)=abb33(18)+abb33(38)
      abb33(18)=16.0_ki*abb33(18)
      abb33(38)=spak4k5*spbk3k2
      abb33(39)=spbk6k5*abb33(38)
      abb33(40)=spak2k4*abb33(23)
      abb33(39)=abb33(40)+abb33(39)
      abb33(39)=abb33(33)*abb33(39)
      abb33(40)=spbk7k2*abb33(11)
      abb33(40)=abb33(40)-abb33(15)
      abb33(40)=abb33(34)*abb33(40)
      abb33(41)=spbk6k3*spbk2k1
      abb33(20)=-abb33(41)*abb33(20)
      abb33(42)=spak1k4*spbk6k3
      abb33(43)=-abb33(8)*spbk2k1**2*abb33(42)
      abb33(20)=abb33(20)+abb33(43)
      abb33(20)=spak1k5*abb33(20)
      abb33(20)=abb33(20)-abb33(30)+abb33(40)+abb33(39)
      abb33(20)=8.0_ki*abb33(20)
      abb33(30)=16.0_ki*spak4k5
      abb33(39)=abb33(30)*abb33(19)
      abb33(40)=8.0_ki*spak4k5
      abb33(43)=-abb33(19)*abb33(40)
      abb33(44)=abb33(42)*abb33(24)
      abb33(45)=spak1k4*abb33(7)*abb33(27)
      abb33(44)=abb33(44)+abb33(45)
      abb33(44)=8.0_ki*abb33(44)
      abb33(45)=abb33(11)*abb33(34)
      abb33(46)=abb33(32)*abb33(41)
      abb33(47)=spak4k7*abb33(46)
      abb33(45)=abb33(45)+abb33(47)
      abb33(45)=spbk7k6*abb33(45)
      abb33(47)=-abb33(42)*abb33(34)
      abb33(15)=-abb33(15)*abb33(32)
      abb33(15)=abb33(47)+abb33(15)
      abb33(15)=spbk6k1*abb33(15)
      abb33(15)=abb33(45)+abb33(15)
      abb33(15)=8.0_ki*abb33(15)
      abb33(45)=-abb33(35)*abb33(7)
      abb33(21)=abb33(21)*spbk3k2
      abb33(47)=abb33(45)+abb33(21)
      abb33(48)=es712*abb33(47)
      abb33(23)=abb33(23)*abb33(28)
      abb33(23)=abb33(23)-abb33(26)
      abb33(26)=-spak4k6*abb33(23)
      abb33(28)=abb33(38)*abb33(29)
      abb33(38)=-spbk5k2*abb33(28)
      abb33(10)=-abb33(10)*abb33(35)
      abb33(13)=-abb33(13)*abb33(14)
      abb33(10)=abb33(38)+abb33(26)+abb33(48)+abb33(10)+abb33(13)
      abb33(10)=8.0_ki*abb33(10)
      abb33(13)=16.0_ki*abb33(45)
      abb33(14)=-16.0_ki*abb33(47)
      abb33(21)=-16.0_ki*abb33(21)
      abb33(26)=spak4k6*abb33(19)
      abb33(38)=spbk5k2*spak4k5
      abb33(45)=-abb33(7)*abb33(38)
      abb33(26)=abb33(26)+abb33(45)
      abb33(26)=8.0_ki*abb33(26)
      abb33(22)=8.0_ki*abb33(22)
      abb33(45)=spbk7k3*abb33(22)
      abb33(47)=-8.0_ki*abb33(7)
      abb33(48)=abb33(37)*abb33(47)
      abb33(11)=-abb33(7)*abb33(11)
      abb33(49)=abb33(11)+abb33(17)
      abb33(50)=8.0_ki*abb33(49)
      abb33(51)=-abb33(35)*abb33(29)
      abb33(41)=abb33(8)*abb33(41)
      abb33(52)=abb33(41)*spak1k6
      abb33(53)=-spak4k7*abb33(52)
      abb33(51)=abb33(53)+abb33(51)
      abb33(51)=spbk7k6*abb33(51)
      abb33(37)=abb33(37)*abb33(29)
      abb33(7)=-abb33(7)*spak6k7
      abb33(42)=abb33(42)*abb33(7)
      abb33(37)=abb33(42)+abb33(37)
      abb33(37)=spbk6k1*abb33(37)
      abb33(42)=es712*abb33(49)
      abb33(28)=-spbk6k5*abb33(28)
      abb33(23)=-spak2k4*abb33(23)
      abb33(11)=-abb33(11)+abb33(17)
      abb33(11)=es67*abb33(11)
      abb33(17)=-es671*abb33(17)
      abb33(11)=abb33(17)+abb33(11)+abb33(23)+abb33(28)+abb33(12)+abb33(42)+abb&
      &33(37)+abb33(51)
      abb33(11)=8.0_ki*abb33(11)
      abb33(12)=16.0_ki*abb33(49)
      abb33(17)=-spbk5k3*abb33(22)
      abb33(23)=8.0_ki*spak5k6
      abb33(28)=abb33(23)*abb33(29)*spbk6k2**2
      abb33(37)=abb33(34)*spbk6k2
      abb33(42)=spbk2k1*spbk6k2
      abb33(32)=abb33(32)*abb33(42)
      abb33(32)=abb33(37)+abb33(32)
      abb33(37)=-16.0_ki*abb33(32)
      abb33(32)=-8.0_ki*abb33(32)
      abb33(24)=-8.0_ki*abb33(24)
      abb33(49)=8.0_ki*spak2k5
      abb33(19)=-abb33(19)*abb33(49)
      abb33(51)=16.0_ki*spbk6k2*abb33(29)
      abb33(34)=abb33(34)*spbk6k3
      abb33(34)=abb33(34)+abb33(46)
      abb33(46)=16.0_ki*abb33(34)
      abb33(34)=-8.0_ki*abb33(34)
      abb33(29)=spbk3k2*abb33(29)
      abb33(33)=spbk5k3*abb33(33)
      abb33(53)=-spbk7k3*spbk2k1*abb33(5)
      abb33(53)=spbk3k1+abb33(53)
      abb33(9)=-abb33(53)*abb33(9)*abb33(6)*spak1k7**2
      abb33(7)=spbk6k3*abb33(7)
      abb33(7)=abb33(52)+abb33(7)+abb33(33)+abb33(29)+abb33(9)
      abb33(7)=8.0_ki*abb33(7)
      abb33(9)=-spak5k6*spbk6k2*abb33(41)
      abb33(29)=abb33(8)*spbk2k1
      abb33(27)=abb33(29)*abb33(27)
      abb33(9)=abb33(9)+abb33(27)
      abb33(9)=8.0_ki*spak4k7*abb33(9)
      abb33(27)=8.0_ki*abb33(29)
      abb33(33)=-abb33(35)*abb33(27)
      abb33(8)=abb33(8)*abb33(42)
      abb33(23)=abb33(8)*abb33(23)
      abb33(30)=abb33(30)*abb33(8)
      abb33(35)=abb33(8)*abb33(40)
      abb33(40)=-spak4k6*abb33(8)
      abb33(29)=-abb33(29)*abb33(38)
      abb33(29)=abb33(40)+abb33(29)
      abb33(29)=8.0_ki*abb33(29)
      abb33(22)=spbk3k1*abb33(22)
      abb33(8)=abb33(8)*abb33(49)
      R2d33=0.0_ki
      rat2 = rat2 + R2d33
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='33' value='", &
          & R2d33, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd33h5
