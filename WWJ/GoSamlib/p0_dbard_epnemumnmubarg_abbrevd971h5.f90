module     p0_dbard_epnemumnmubarg_abbrevd971h5
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(43), public :: abb971
   complex(ki), public :: R2d971
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
      abb971(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb971(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb971(3)=1.0_ki/(es34+es567-es12-es234)
      abb971(4)=1.0_ki/(es71+es34+es56-es712-es234)
      abb971(5)=NC**(-1)
      abb971(6)=sqrt2**(-1)
      abb971(7)=spbk7k2**(-1)
      abb971(8)=spak4k7*spbk4k3
      abb971(9)=spak1k7*spbk3k1
      abb971(10)=abb971(8)+abb971(9)
      abb971(11)=NC*abb971(7)
      abb971(12)=abb971(1)*i_*TR*c1*abb971(6)*abb971(4)*gW**4*abb971(3)*abb971(&
      &2)
      abb971(13)=spak1k4*abb971(12)
      abb971(14)=abb971(13)*abb971(11)
      abb971(15)=abb971(14)*abb971(10)
      abb971(16)=spbk6k2**2
      abb971(17)=spak5k6*abb971(16)*abb971(15)
      abb971(18)=abb971(13)*spbk4k3
      abb971(19)=abb971(18)*spak4k7
      abb971(20)=abb971(13)*spbk3k1
      abb971(21)=abb971(20)*spak1k7
      abb971(22)=abb971(19)+abb971(21)
      abb971(23)=abb971(22)*abb971(5)*spak5k6
      abb971(16)=abb971(16)*abb971(7)*abb971(23)
      abb971(24)=abb971(16)-abb971(17)
      abb971(25)=-4.0_ki*abb971(24)
      abb971(26)=spak4k7**2
      abb971(27)=spbk6k2*NC
      abb971(28)=-abb971(26)*abb971(27)*abb971(18)
      abb971(21)=abb971(21)*abb971(27)
      abb971(29)=-spak4k7*abb971(21)
      abb971(28)=abb971(28)+abb971(29)
      abb971(28)=spbk4k2*abb971(28)
      abb971(19)=abb971(19)*abb971(27)
      abb971(19)=abb971(19)+abb971(21)
      abb971(21)=-spbk2k1*spak1k7*abb971(19)
      abb971(21)=abb971(28)+abb971(21)
      abb971(21)=spak2k5*abb971(21)
      abb971(27)=abb971(14)*spbk6k2
      abb971(28)=abb971(27)*spbk4k3
      abb971(26)=-abb971(26)*abb971(28)
      abb971(9)=abb971(27)*abb971(9)
      abb971(29)=-spak4k7*abb971(9)
      abb971(26)=abb971(26)+abb971(29)
      abb971(26)=spbk4k2*abb971(26)
      abb971(8)=abb971(27)*abb971(8)
      abb971(8)=abb971(8)+abb971(9)
      abb971(9)=abb971(8)*spbk2k1
      abb971(29)=-spak1k7*abb971(9)
      abb971(26)=abb971(26)+abb971(29)
      abb971(29)=spbk7k6*spak5k6
      abb971(26)=abb971(26)*abb971(29)
      abb971(30)=-spak2k5*spbk3k2*abb971(19)
      abb971(31)=abb971(8)*spbk3k2
      abb971(29)=-abb971(31)*abb971(29)
      abb971(29)=abb971(30)+abb971(29)
      abb971(29)=spak3k7*abb971(29)
      abb971(30)=es712-es71
      abb971(32)=-abb971(30)-es567+es56+es12
      abb971(32)=2.0_ki*abb971(32)
      abb971(32)=abb971(17)*abb971(32)
      abb971(21)=abb971(29)+abb971(26)+abb971(21)+abb971(32)
      abb971(21)=4.0_ki*abb971(21)
      abb971(16)=abb971(17)+2.0_ki*abb971(16)
      abb971(16)=8.0_ki*abb971(16)
      abb971(26)=spbk4k2*spbk3k1
      abb971(29)=spbk2k1*spbk4k3
      abb971(26)=abb971(26)-abb971(29)
      abb971(11)=spak1k4**2*abb971(12)*abb971(11)
      abb971(12)=abb971(11)*spbk6k2
      abb971(29)=-abb971(12)*abb971(26)
      abb971(32)=spak5k7*abb971(29)
      abb971(33)=spak4k5*spbk4k2
      abb971(34)=abb971(33)*abb971(8)
      abb971(35)=3.0_ki*spak5k7
      abb971(36)=abb971(35)*abb971(19)
      abb971(37)=abb971(9)*spak1k5
      abb971(38)=abb971(31)*spak3k5
      abb971(39)=es23-es123
      abb971(40)=-abb971(39)+es34-es12
      abb971(41)=abb971(40)*abb971(27)
      abb971(42)=spak5k7*spbk3k2
      abb971(43)=abb971(41)*abb971(42)
      abb971(32)=-abb971(38)+abb971(43)-abb971(34)-abb971(36)-abb971(37)+abb971&
      &(32)
      abb971(32)=8.0_ki*abb971(32)
      abb971(17)=8.0_ki*abb971(17)
      abb971(24)=8.0_ki*abb971(24)
      abb971(34)=spbk3k2*abb971(41)
      abb971(29)=abb971(29)+abb971(34)
      abb971(10)=abb971(5)*abb971(10)*abb971(13)*spbk6k2
      abb971(10)=abb971(10)+abb971(19)
      abb971(10)=2.0_ki*abb971(10)+abb971(29)
      abb971(10)=spak2k5*abb971(10)
      abb971(13)=spbk6k4*spbk3k1
      abb971(34)=spbk6k1*spbk4k3
      abb971(13)=abb971(34)+abb971(13)
      abb971(12)=abb971(12)*abb971(13)
      abb971(13)=-spbk6k3*abb971(41)
      abb971(12)=abb971(13)+abb971(12)
      abb971(12)=spak5k6*abb971(12)
      abb971(13)=spak5k6*abb971(8)
      abb971(34)=spbk6k2*abb971(7)
      abb971(23)=abb971(34)*abb971(23)
      abb971(13)=abb971(13)+abb971(23)
      abb971(13)=spbk7k6*abb971(13)
      abb971(10)=2.0_ki*abb971(13)+abb971(10)+abb971(12)
      abb971(10)=4.0_ki*abb971(10)
      abb971(12)=abb971(27)*spbk3k1
      abb971(13)=abb971(34)*abb971(5)
      abb971(23)=abb971(13)*abb971(20)
      abb971(12)=abb971(12)+abb971(23)
      abb971(23)=abb971(12)*spak1k5
      abb971(13)=abb971(13)*abb971(18)
      abb971(13)=abb971(13)+abb971(28)
      abb971(27)=abb971(13)*spak4k5
      abb971(23)=abb971(23)+abb971(27)
      abb971(23)=32.0_ki*abb971(23)
      abb971(27)=spbk2k1*spak1k5
      abb971(28)=spbk3k2*spak3k5
      abb971(27)=abb971(28)+abb971(27)+abb971(33)
      abb971(15)=abb971(15)*abb971(27)
      abb971(11)=abb971(26)*abb971(11)*spak5k7
      abb971(22)=abb971(35)*abb971(22)*NC
      abb971(11)=abb971(11)+abb971(22)+abb971(15)
      abb971(15)=abb971(14)*abb971(42)
      abb971(22)=-abb971(15)*abb971(40)
      abb971(22)=abb971(22)+abb971(11)
      abb971(22)=spbk5k2*abb971(22)
      abb971(19)=-abb971(29)+3.0_ki*abb971(19)
      abb971(19)=spak6k7*abb971(19)
      abb971(26)=spak4k6*abb971(8)*spbk4k2
      abb971(9)=spak1k6*abb971(9)
      abb971(27)=spak3k6*abb971(31)
      abb971(9)=abb971(27)+abb971(9)+abb971(26)+abb971(19)+abb971(22)
      abb971(9)=4.0_ki*abb971(9)
      abb971(19)=abb971(14)*spbk4k3
      abb971(22)=abb971(5)*abb971(7)
      abb971(18)=abb971(22)*abb971(18)
      abb971(18)=abb971(19)+abb971(18)
      abb971(18)=abb971(18)*spak4k5
      abb971(14)=abb971(14)*spbk3k1
      abb971(19)=abb971(22)*abb971(20)
      abb971(14)=abb971(14)+abb971(19)
      abb971(14)=abb971(14)*spak1k5
      abb971(14)=abb971(18)+abb971(14)
      abb971(18)=spbk5k2*abb971(14)
      abb971(19)=spak4k6*abb971(13)
      abb971(20)=spak1k6*abb971(12)
      abb971(18)=abb971(20)+abb971(18)+abb971(19)
      abb971(18)=16.0_ki*abb971(18)
      abb971(11)=spbk6k5*abb971(11)
      abb971(19)=-es234+3.0_ki*abb971(30)
      abb971(19)=abb971(8)*abb971(19)
      abb971(15)=abb971(15)*spbk6k5
      abb971(20)=-4.0_ki*abb971(8)+abb971(15)
      abb971(20)=es12*abb971(20)
      abb971(8)=-abb971(15)+abb971(8)
      abb971(8)=es34*abb971(8)
      abb971(22)=spak2k7*abb971(29)
      abb971(15)=abb971(15)*abb971(39)
      abb971(8)=abb971(22)+abb971(8)+abb971(20)+abb971(19)+abb971(15)+abb971(11)
      abb971(8)=4.0_ki*abb971(8)
      abb971(11)=spbk6k5*abb971(14)
      abb971(14)=spak2k4*abb971(13)
      abb971(15)=-spak1k2*abb971(12)
      abb971(11)=abb971(15)+abb971(11)+abb971(14)
      abb971(11)=16.0_ki*abb971(11)
      abb971(14)=8.0_ki*spak5k6
      abb971(15)=-abb971(13)*abb971(14)
      abb971(19)=8.0_ki*spak2k5
      abb971(13)=-abb971(13)*abb971(19)
      abb971(14)=-abb971(12)*abb971(14)
      abb971(12)=-abb971(12)*abb971(19)
      R2d971=abb971(25)
      rat2 = rat2 + R2d971
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='971' value='", &
          & R2d971, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd971h5
