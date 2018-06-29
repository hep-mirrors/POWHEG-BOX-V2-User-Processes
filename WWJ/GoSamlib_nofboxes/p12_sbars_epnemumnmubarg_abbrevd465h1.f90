module     p12_sbars_epnemumnmubarg_abbrevd465h1
   use p12_sbars_epnemumnmubarg_config, only: ki
   use p12_sbars_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(42), public :: abb465
   complex(ki), public :: R2d465
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
      abb465(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb465(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb465(3)=1.0_ki/(es34+es567-es12-es234)
      abb465(4)=1.0_ki/(es71+es34+es56-es712-es234)
      abb465(5)=NC**(-1)
      abb465(6)=sqrt2**(-1)
      abb465(7)=spak2k7**(-1)
      abb465(8)=1.0_ki/(-es71+es712-es12)
      abb465(9)=spak5k6*spbk6k2
      abb465(10)=abb465(9)*spbk7k6
      abb465(11)=abb465(5)-NC
      abb465(11)=abb465(11)*c1*gW**4*abb465(3)**2*i_*TR*abb465(7)*abb465(6)*abb&
      &465(2)*abb465(1)
      abb465(12)=-spak1k4*abb465(11)*abb465(4)
      abb465(13)=abb465(12)*spbk3k1
      abb465(14)=abb465(10)*abb465(13)
      abb465(15)=spak2k5*spbk6k2
      abb465(16)=abb465(12)*abb465(15)*spbk7k2
      abb465(17)=abb465(16)*spbk3k1
      abb465(14)=abb465(14)+abb465(17)
      abb465(18)=abb465(14)*spak1k2
      abb465(19)=abb465(11)*spak1k4
      abb465(20)=abb465(19)*spbk7k6*abb465(8)
      abb465(21)=-spbk3k1*abb465(20)
      abb465(22)=abb465(21)*es71
      abb465(23)=abb465(21)*es12
      abb465(22)=abb465(22)+abb465(23)
      abb465(24)=abb465(21)*es712
      abb465(24)=abb465(24)-abb465(22)
      abb465(25)=abb465(24)*spak1k5
      abb465(18)=abb465(25)+abb465(18)
      abb465(25)=abb465(12)*spbk4k3
      abb465(10)=abb465(10)*abb465(25)
      abb465(16)=abb465(16)*spbk4k3
      abb465(10)=abb465(10)+abb465(16)
      abb465(26)=abb465(10)*spak2k4
      abb465(20)=-spbk4k3*abb465(20)
      abb465(27)=abb465(20)*es71
      abb465(28)=abb465(20)*es12
      abb465(27)=abb465(27)+abb465(28)
      abb465(29)=abb465(20)*es712
      abb465(29)=abb465(29)-abb465(27)
      abb465(30)=abb465(29)*spak4k5
      abb465(26)=abb465(30)-abb465(26)
      abb465(30)=abb465(18)+abb465(26)
      abb465(31)=-es567+es234
      abb465(31)=abb465(30)*abb465(31)
      abb465(32)=es12**2
      abb465(33)=-abb465(32)*abb465(20)
      abb465(27)=es34*abb465(27)
      abb465(20)=-es34*abb465(20)
      abb465(20)=abb465(28)+abb465(20)
      abb465(20)=es712*abb465(20)
      abb465(28)=-es71*abb465(28)
      abb465(20)=abb465(20)+abb465(27)+abb465(33)+abb465(28)
      abb465(20)=spak4k5*abb465(20)
      abb465(27)=-abb465(32)*abb465(21)
      abb465(22)=es34*abb465(22)
      abb465(21)=-es34*abb465(21)
      abb465(21)=abb465(23)+abb465(21)
      abb465(21)=es712*abb465(21)
      abb465(23)=-es71*abb465(23)
      abb465(21)=abb465(21)+abb465(22)+abb465(27)+abb465(23)
      abb465(21)=spak1k5*abb465(21)
      abb465(22)=es34-es12
      abb465(16)=abb465(16)*abb465(22)
      abb465(23)=abb465(22)*spbk6k2
      abb465(27)=spak5k6*spbk7k6*abb465(23)
      abb465(25)=abb465(25)*abb465(27)
      abb465(16)=abb465(25)+abb465(16)
      abb465(16)=spak2k4*abb465(16)
      abb465(17)=-abb465(17)*abb465(22)
      abb465(13)=-abb465(13)*abb465(27)
      abb465(13)=abb465(13)+abb465(17)
      abb465(13)=spak1k2*abb465(13)
      abb465(13)=abb465(13)+abb465(16)+abb465(20)+abb465(21)+abb465(31)
      abb465(13)=8.0_ki*abb465(13)
      abb465(16)=spbk6k4*spbk3k1
      abb465(17)=spbk6k1*spbk4k3
      abb465(16)=abb465(16)+abb465(17)
      abb465(17)=spbk7k2*spak2k5
      abb465(11)=abb465(11)*spak1k4**2
      abb465(20)=-abb465(8)*abb465(11)
      abb465(21)=abb465(16)*abb465(17)*abb465(20)
      abb465(19)=abb465(19)*abb465(8)
      abb465(25)=es23-es123
      abb465(27)=abb465(25)-es34
      abb465(28)=-abb465(27)*abb465(19)*spbk7k2
      abb465(31)=spak2k5*abb465(28)
      abb465(33)=-es12*abb465(19)
      abb465(17)=abb465(17)*abb465(33)
      abb465(17)=abb465(17)+abb465(31)
      abb465(17)=spbk6k3*abb465(17)
      abb465(17)=abb465(17)+abb465(21)
      abb465(17)=32.0_ki*abb465(17)
      abb465(21)=abb465(27)+es12
      abb465(21)=abb465(21)*abb465(15)
      abb465(27)=abb465(12)*spbk7k3
      abb465(31)=abb465(27)*abb465(21)
      abb465(11)=-abb465(4)*abb465(11)
      abb465(15)=abb465(11)*abb465(15)
      abb465(34)=spbk4k3*abb465(15)
      abb465(35)=abb465(34)*spbk7k1
      abb465(15)=spbk3k1*abb465(15)
      abb465(36)=abb465(15)*spbk7k4
      abb465(31)=abb465(31)+abb465(35)+abb465(36)
      abb465(31)=32.0_ki*abb465(31)
      abb465(35)=-abb465(26)-2.0_ki*abb465(18)
      abb465(35)=16.0_ki*abb465(35)
      abb465(30)=-32.0_ki*abb465(30)
      abb465(18)=abb465(18)+2.0_ki*abb465(26)
      abb465(18)=16.0_ki*abb465(18)
      abb465(26)=-abb465(19)+abb465(12)
      abb465(26)=abb465(26)*spbk7k3
      abb465(36)=abb465(26)*es712
      abb465(26)=abb465(26)*es71
      abb465(37)=abb465(27)*es34
      abb465(38)=abb465(26)+abb465(37)
      abb465(39)=abb465(27)*es234
      abb465(40)=abb465(33)*spbk7k3
      abb465(39)=-abb465(38)+abb465(39)+abb465(36)-abb465(40)
      abb465(39)=abb465(39)*abb465(25)
      abb465(40)=abb465(20)+abb465(11)
      abb465(41)=es712-es71
      abb465(40)=abb465(40)*abb465(41)
      abb465(41)=es234-es34
      abb465(41)=abb465(41)*abb465(11)
      abb465(42)=abb465(20)*es12
      abb465(40)=abb465(41)-abb465(42)+abb465(40)
      abb465(41)=spbk7k4*spbk3k1
      abb465(42)=spbk7k1*spbk4k3
      abb465(41)=abb465(41)+abb465(42)
      abb465(40)=abb465(40)*abb465(41)
      abb465(42)=-abb465(19)-abb465(12)
      abb465(42)=spbk7k3*es12*abb465(42)
      abb465(38)=abb465(42)+abb465(38)
      abb465(38)=es34*abb465(38)
      abb465(19)=spbk7k3*abb465(32)*abb465(19)
      abb465(26)=-es12*abb465(26)
      abb465(22)=-abb465(22)*abb465(36)
      abb465(32)=es12*abb465(27)
      abb465(32)=abb465(32)-abb465(37)
      abb465(32)=es234*abb465(32)
      abb465(19)=abb465(32)+abb465(22)+abb465(38)+abb465(19)+abb465(26)+abb465(&
      &39)+abb465(40)
      abb465(19)=16.0_ki*abb465(19)
      abb465(22)=abb465(11)*abb465(41)
      abb465(26)=es12+abb465(25)
      abb465(26)=abb465(27)*abb465(26)
      abb465(22)=-abb465(37)+abb465(26)+abb465(22)
      abb465(22)=16.0_ki*spbk6k5*spak2k5*abb465(22)
      abb465(26)=-spak2k3*abb465(10)
      abb465(27)=spak3k5*abb465(29)
      abb465(26)=abb465(27)+abb465(26)
      abb465(26)=8.0_ki*abb465(26)
      abb465(10)=-spak1k2*abb465(10)
      abb465(27)=-spak1k5*abb465(29)
      abb465(10)=abb465(27)+abb465(10)
      abb465(10)=8.0_ki*abb465(10)
      abb465(11)=abb465(11)*abb465(9)
      abb465(20)=spbk7k2*abb465(20)*spak5k7
      abb465(11)=abb465(11)-abb465(20)
      abb465(11)=-abb465(11)*abb465(16)
      abb465(9)=-abb465(9)*abb465(25)
      abb465(16)=spak5k6*abb465(23)
      abb465(9)=abb465(16)+abb465(9)
      abb465(9)=abb465(12)*abb465(9)
      abb465(16)=spbk7k2*abb465(33)
      abb465(16)=abb465(16)+abb465(28)
      abb465(16)=spak5k7*abb465(16)
      abb465(9)=abb465(16)+abb465(9)
      abb465(9)=spbk6k3*abb465(9)
      abb465(12)=spbk3k2*abb465(12)*abb465(21)
      abb465(15)=spbk4k2*abb465(15)
      abb465(16)=-spbk2k1*abb465(34)
      abb465(9)=abb465(16)+abb465(15)+abb465(12)+abb465(9)+abb465(11)
      abb465(9)=16.0_ki*abb465(9)
      abb465(11)=-spak2k4*abb465(14)
      abb465(12)=spak4k5*abb465(24)
      abb465(11)=abb465(12)+abb465(11)
      abb465(11)=8.0_ki*abb465(11)
      abb465(12)=-spak2k3*abb465(14)
      abb465(14)=spak3k5*abb465(24)
      abb465(12)=abb465(14)+abb465(12)
      abb465(12)=8.0_ki*abb465(12)
      R2d465=0.0_ki
      rat2 = rat2 + R2d465
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='465' value='", &
          & R2d465, "'/>"
      end if
   end subroutine
end module p12_sbars_epnemumnmubarg_abbrevd465h1
