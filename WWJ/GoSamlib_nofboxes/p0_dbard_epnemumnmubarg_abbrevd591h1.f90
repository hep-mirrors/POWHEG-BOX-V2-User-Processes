module     p0_dbard_epnemumnmubarg_abbrevd591h1
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(47), public :: abb591
   complex(ki), public :: R2d591
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbard_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_color, only: TR
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb591(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb591(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb591(3)=1.0_ki/(es71+es34+es56-es712-es234)
      abb591(4)=NC**(-1)
      abb591(5)=sqrt2**(-1)
      abb591(6)=spak2k7**(-1)
      abb591(7)=abb591(6)*spbk6k2
      abb591(8)=abb591(4)*abb591(3)*gW**4*abb591(1)*abb591(2)*abb591(5)*c1*TR*i_
      abb591(9)=abb591(7)*abb591(8)
      abb591(10)=16.0_ki*abb591(9)
      abb591(11)=abb591(10)*spbk7k3
      abb591(12)=spak5k6*spbk6k3
      abb591(13)=spak1k2*spak3k4
      abb591(14)=abb591(12)*abb591(13)
      abb591(15)=abb591(13)*spbk3k2
      abb591(16)=-spak2k5*abb591(15)
      abb591(16)=abb591(14)+abb591(16)
      abb591(16)=abb591(16)*abb591(11)
      abb591(17)=abb591(13)*spak5k7
      abb591(18)=spak2k5*spak3k4
      abb591(19)=abb591(18)*spak1k7
      abb591(20)=abb591(17)+abb591(19)
      abb591(21)=abb591(20)*spbk7k3
      abb591(22)=spak2k5*spak1k4
      abb591(23)=abb591(22)*es34
      abb591(24)=spak1k2*spak4k5
      abb591(25)=abb591(24)*es34
      abb591(26)=abb591(23)-abb591(25)
      abb591(21)=abb591(26)+abb591(21)
      abb591(21)=abb591(21)*abb591(11)
      abb591(27)=spak2k4*spak1k3
      abb591(28)=abb591(27)*spbk3k2
      abb591(15)=abb591(28)-abb591(15)
      abb591(15)=abb591(15)*spak2k5
      abb591(28)=abb591(27)*abb591(12)
      abb591(14)=abb591(15)-abb591(28)+abb591(14)
      abb591(14)=abb591(14)*spbk7k3
      abb591(15)=spbk3k2*abb591(22)
      abb591(28)=abb591(12)*spak1k4
      abb591(15)=abb591(15)-abb591(28)
      abb591(29)=spak2k4*spbk7k4
      abb591(15)=abb591(29)*abb591(15)
      abb591(14)=abb591(14)+abb591(15)
      abb591(15)=abb591(14)*abb591(10)
      abb591(30)=abb591(24)-abb591(22)
      abb591(31)=abb591(9)*abb591(30)*spbk7k3
      abb591(31)=32.0_ki*abb591(31)
      abb591(32)=8.0_ki*abb591(9)
      abb591(14)=-abb591(14)*abb591(32)
      abb591(11)=abb591(11)*abb591(30)
      abb591(33)=es34-es234
      abb591(34)=es712-es71-abb591(33)
      abb591(35)=spak3k4*spak1k7*abb591(34)
      abb591(17)=spbk5k2*abb591(17)
      abb591(17)=abb591(35)+abb591(17)
      abb591(17)=spbk7k3*abb591(17)
      abb591(35)=abb591(34)*spak1k4
      abb591(36)=es34*abb591(35)
      abb591(25)=-spbk5k2*abb591(25)
      abb591(17)=abb591(17)+abb591(36)+abb591(25)
      abb591(17)=spbk7k3*abb591(17)
      abb591(25)=-spak1k2*es34*spak4k6
      abb591(36)=spbk7k3*spak6k7*abb591(13)
      abb591(25)=abb591(25)+abb591(36)
      abb591(36)=spbk6k2*spbk7k3
      abb591(25)=abb591(25)*abb591(36)
      abb591(17)=abb591(17)+abb591(25)
      abb591(25)=8.0_ki*abb591(8)
      abb591(37)=abb591(25)*abb591(6)
      abb591(17)=abb591(17)*abb591(37)
      abb591(38)=abb591(24)*spbk5k2
      abb591(38)=abb591(35)-abb591(38)
      abb591(38)=abb591(38)*spbk7k3
      abb591(39)=abb591(36)*spak1k2
      abb591(40)=abb591(39)*spak4k6
      abb591(38)=abb591(38)-abb591(40)
      abb591(8)=16.0_ki*abb591(8)
      abb591(8)=abb591(8)*abb591(6)
      abb591(40)=abb591(38)*abb591(8)
      abb591(38)=abb591(38)*abb591(37)
      abb591(26)=spbk6k5*abb591(26)
      abb591(41)=spbk7k3*spbk6k5
      abb591(20)=abb591(20)*abb591(41)
      abb591(20)=abb591(20)+abb591(26)
      abb591(20)=spbk7k3*abb591(20)
      abb591(26)=abb591(39)*spak2k4
      abb591(39)=-es34*abb591(26)
      abb591(20)=abb591(20)+abb591(39)
      abb591(20)=abb591(6)*abb591(20)
      abb591(13)=-spbk6k2*spbk7k3**2*abb591(13)
      abb591(13)=abb591(13)+abb591(20)
      abb591(13)=abb591(13)*abb591(25)
      abb591(20)=-abb591(30)*abb591(41)
      abb591(20)=abb591(20)-abb591(26)
      abb591(26)=abb591(20)*abb591(8)
      abb591(20)=abb591(20)*abb591(37)
      abb591(30)=spbk6k3*spak2k3
      abb591(37)=spak1k3*abb591(30)
      abb591(27)=spbk6k4*abb591(27)
      abb591(27)=abb591(37)+abb591(27)
      abb591(27)=spak5k6*abb591(27)
      abb591(37)=spak2k5*spak1k3
      abb591(39)=-abb591(33)*abb591(37)
      abb591(27)=abb591(27)+abb591(39)
      abb591(27)=spbk7k3*abb591(27)
      abb591(39)=spbk7k4*abb591(30)
      abb591(42)=spbk6k4*abb591(29)
      abb591(39)=abb591(39)+abb591(42)
      abb591(39)=spak1k4*spak5k6*abb591(39)
      abb591(22)=abb591(22)*spbk7k4
      abb591(33)=-abb591(33)*abb591(22)
      abb591(27)=abb591(27)+abb591(39)+abb591(33)
      abb591(27)=abb591(27)*abb591(32)
      abb591(33)=spak2k5*spbk7k2
      abb591(39)=spak5k6*spbk7k6
      abb591(33)=abb591(33)+abb591(39)
      abb591(42)=spak1k2*abb591(33)
      abb591(43)=abb591(42)*abb591(10)
      abb591(44)=spak1k2*spak3k5
      abb591(37)=abb591(37)-abb591(44)
      abb591(45)=abb591(37)*spbk7k3
      abb591(24)=abb591(24)*spbk7k4
      abb591(22)=abb591(24)-abb591(22)
      abb591(45)=abb591(22)-abb591(45)
      abb591(9)=32.0_ki*abb591(9)
      abb591(45)=abb591(45)*abb591(9)
      abb591(42)=-abb591(42)*abb591(32)
      abb591(46)=spak1k3*abb591(34)
      abb591(44)=-spbk5k2*abb591(44)
      abb591(44)=abb591(44)+abb591(46)
      abb591(44)=spbk7k3*abb591(44)
      abb591(46)=-spbk7k4*spak4k6
      abb591(47)=-spbk7k3*spak3k6
      abb591(46)=abb591(46)+abb591(47)
      abb591(47)=spbk6k2*spak1k2
      abb591(46)=abb591(46)*abb591(47)
      abb591(35)=spbk7k4*abb591(35)
      abb591(24)=-spbk5k2*abb591(24)
      abb591(24)=abb591(46)+abb591(44)+abb591(35)+abb591(24)
      abb591(24)=abb591(24)*abb591(8)
      abb591(22)=-spbk6k5*abb591(22)
      abb591(35)=abb591(37)*abb591(41)
      abb591(37)=-spbk7k3*spak2k3
      abb591(29)=-abb591(29)+abb591(37)
      abb591(29)=abb591(29)*abb591(47)
      abb591(22)=abb591(29)+abb591(35)+abb591(22)
      abb591(22)=abb591(22)*abb591(8)
      abb591(12)=abb591(12)*spak3k4
      abb591(29)=-spak1k7*abb591(12)
      abb591(19)=spbk3k2*abb591(19)
      abb591(19)=abb591(29)+abb591(19)
      abb591(19)=spbk7k3*abb591(19)
      abb591(28)=-es34*abb591(28)
      abb591(23)=spbk3k2*abb591(23)
      abb591(19)=abb591(19)+abb591(28)+abb591(23)
      abb591(19)=abb591(19)*abb591(32)
      abb591(23)=-spbk7k6*spak1k7
      abb591(28)=spak1k3*spbk6k3
      abb591(29)=spak1k4*spbk6k4
      abb591(23)=abb591(29)+abb591(23)+abb591(28)
      abb591(23)=spak5k6*abb591(23)
      abb591(28)=-spak1k7*spbk7k2
      abb591(29)=-spak1k3*spbk3k2
      abb591(35)=-spak1k4*spbk4k2
      abb591(28)=abb591(35)+abb591(28)+abb591(29)
      abb591(28)=spak2k5*abb591(28)
      abb591(23)=abb591(28)+abb591(23)
      abb591(23)=abb591(23)*abb591(32)
      abb591(9)=abb591(9)*spak1k5
      abb591(28)=spbk5k2*spak1k5
      abb591(29)=spbk6k2*spak1k6
      abb591(28)=abb591(28)+abb591(29)
      abb591(28)=abb591(28)*abb591(8)
      abb591(29)=spbk6k5*spak1k5
      abb591(29)=abb591(29)-abb591(47)
      abb591(8)=abb591(29)*abb591(8)
      abb591(29)=spak2k4*spbk6k4
      abb591(29)=abb591(29)+abb591(30)
      abb591(29)=abb591(29)*spak5k6
      abb591(30)=abb591(34)-es12
      abb591(34)=-spak2k5*abb591(30)
      abb591(34)=-abb591(29)+abb591(34)
      abb591(34)=abb591(34)*abb591(7)
      abb591(35)=spbk6k2*abb591(39)
      abb591(34)=abb591(35)+abb591(34)
      abb591(34)=abb591(34)*abb591(25)
      abb591(35)=-spak5k6*abb591(32)
      abb591(37)=spak2k4*abb591(33)
      abb591(41)=abb591(37)*abb591(32)
      abb591(29)=spak3k4*abb591(29)
      abb591(30)=abb591(30)*abb591(18)
      abb591(29)=abb591(29)+abb591(30)
      abb591(7)=abb591(29)*abb591(7)*spbk7k3
      abb591(29)=-spak3k4*abb591(36)*abb591(39)
      abb591(7)=abb591(29)+abb591(7)
      abb591(7)=abb591(7)*abb591(25)
      abb591(10)=abb591(37)*abb591(10)
      abb591(25)=-abb591(32)*spak2k3*abb591(33)
      abb591(18)=-spbk3k2*abb591(18)
      abb591(12)=abb591(12)+abb591(18)
      abb591(12)=abb591(12)*abb591(32)
      abb591(18)=-spak2k5*abb591(32)
      R2d591=0.0_ki
      rat2 = rat2 + R2d591
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='591' value='", &
          & R2d591, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd591h1
