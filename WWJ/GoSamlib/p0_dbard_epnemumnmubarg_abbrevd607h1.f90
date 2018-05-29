module     p0_dbard_epnemumnmubarg_abbrevd607h1
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(40), public :: abb607
   complex(ki), public :: R2d607
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
      abb607(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb607(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb607(3)=1.0_ki/(es71+es34+es56-es712-es234)
      abb607(4)=NC**(-1)
      abb607(5)=sqrt2**(-1)
      abb607(6)=spak2k7**(-1)
      abb607(7)=i_*TR*c1*abb607(5)*abb607(4)*gW**4*abb607(3)*abb607(2)
      abb607(8)=abb607(7)*spbk6k2*abb607(1)
      abb607(9)=abb607(8)*spak1k4
      abb607(10)=spak2k5*abb607(6)
      abb607(11)=abb607(9)*abb607(10)
      abb607(12)=abb607(11)*spbk7k2
      abb607(13)=spak5k6*abb607(6)
      abb607(14)=abb607(13)*abb607(9)
      abb607(15)=abb607(14)*spbk7k6
      abb607(12)=abb607(12)+abb607(15)
      abb607(12)=abb607(12)*spbk4k3
      abb607(15)=abb607(10)*spbk7k2
      abb607(13)=abb607(13)*spbk7k6
      abb607(13)=abb607(15)+abb607(13)
      abb607(15)=abb607(8)*spbk7k3
      abb607(13)=abb607(13)*abb607(15)*spak1k7
      abb607(12)=abb607(13)+abb607(12)
      abb607(13)=spak2k4*abb607(12)
      abb607(16)=abb607(15)*abb607(10)
      abb607(17)=spak1k4*abb607(16)
      abb607(18)=es712-es71
      abb607(19)=abb607(18)-es12
      abb607(20)=-abb607(17)*abb607(19)
      abb607(21)=spbk7k6*spak5k6
      abb607(22)=abb607(21)*abb607(15)
      abb607(23)=abb607(22)*spak1k4
      abb607(20)=abb607(23)+abb607(20)
      abb607(13)=-abb607(20)+abb607(13)
      abb607(23)=-16.0_ki*abb607(13)
      abb607(24)=spbk7k3**2
      abb607(25)=abb607(24)*spak1k3
      abb607(26)=abb607(25)*abb607(8)
      abb607(27)=abb607(26)*spak4k5
      abb607(28)=abb607(24)*abb607(9)
      abb607(29)=abb607(28)*spak3k5
      abb607(27)=abb607(27)-abb607(29)
      abb607(27)=16.0_ki*abb607(27)
      abb607(29)=spak1k2*spak4k5
      abb607(30)=abb607(15)*abb607(6)
      abb607(31)=abb607(29)*abb607(30)
      abb607(17)=abb607(31)-abb607(17)
      abb607(31)=32.0_ki*abb607(17)
      abb607(20)=16.0_ki*abb607(20)
      abb607(13)=-8.0_ki*abb607(13)
      abb607(17)=16.0_ki*abb607(17)
      abb607(25)=abb607(25)*spak4k5
      abb607(24)=spak1k4*abb607(24)*spak3k5
      abb607(24)=abb607(25)-abb607(24)
      abb607(24)=abb607(1)*abb607(7)*abb607(24)
      abb607(25)=spbk5k2*abb607(24)
      abb607(32)=spak4k6*abb607(26)
      abb607(33)=-spak3k6*abb607(28)
      abb607(25)=abb607(33)+abb607(32)+abb607(25)
      abb607(25)=8.0_ki*abb607(25)
      abb607(18)=-es34+abb607(18)+es234
      abb607(7)=abb607(7)*abb607(6)*abb607(1)
      abb607(32)=spbk7k3*abb607(7)
      abb607(33)=abb607(32)*spak1k4
      abb607(18)=abb607(18)*abb607(33)
      abb607(29)=abb607(29)*abb607(32)
      abb607(34)=abb607(29)*spbk5k2
      abb607(35)=abb607(30)*spak1k2
      abb607(36)=abb607(35)*spak4k6
      abb607(18)=abb607(18)-abb607(34)-abb607(36)
      abb607(34)=-16.0_ki*abb607(18)
      abb607(18)=-8.0_ki*abb607(18)
      abb607(24)=spbk6k5*abb607(24)
      abb607(26)=spak2k4*abb607(26)
      abb607(28)=-spak2k3*abb607(28)
      abb607(24)=abb607(28)+abb607(26)+abb607(24)
      abb607(24)=8.0_ki*abb607(24)
      abb607(26)=abb607(33)*spak2k5
      abb607(26)=abb607(26)-abb607(29)
      abb607(26)=abb607(26)*spbk6k5
      abb607(28)=abb607(35)*spak2k4
      abb607(26)=abb607(26)-abb607(28)
      abb607(28)=-16.0_ki*abb607(26)
      abb607(26)=-8.0_ki*abb607(26)
      abb607(16)=abb607(19)*abb607(16)
      abb607(16)=abb607(16)-abb607(22)
      abb607(22)=spak1k3*abb607(16)
      abb607(29)=abb607(11)*abb607(19)
      abb607(9)=-abb607(9)*abb607(21)
      abb607(9)=abb607(9)+abb607(29)
      abb607(9)=spbk7k4*abb607(9)
      abb607(9)=abb607(9)+abb607(22)
      abb607(9)=8.0_ki*abb607(9)
      abb607(12)=-8.0_ki*spak4k7*abb607(12)
      abb607(22)=abb607(11)*spbk3k2
      abb607(29)=abb607(14)*spbk6k3
      abb607(22)=abb607(22)-abb607(29)
      abb607(29)=16.0_ki*abb607(22)
      abb607(35)=abb607(30)*spak1k7
      abb607(36)=abb607(35)*spak4k5
      abb607(30)=abb607(30)*spak1k4
      abb607(37)=abb607(30)*spak5k7
      abb607(36)=abb607(36)+abb607(37)
      abb607(36)=32.0_ki*abb607(36)
      abb607(22)=8.0_ki*abb607(22)
      abb607(32)=spak4k5*abb607(32)*spak1k7
      abb607(33)=abb607(33)*spak5k7
      abb607(32)=abb607(32)+abb607(33)
      abb607(33)=-spbk5k2*abb607(32)
      abb607(37)=-spak4k6*abb607(35)
      abb607(30)=-spak6k7*abb607(30)
      abb607(30)=abb607(30)+abb607(37)+abb607(33)
      abb607(30)=16.0_ki*abb607(30)
      abb607(32)=-spbk6k5*abb607(32)
      abb607(33)=abb607(15)*spak1k4
      abb607(35)=-spak2k4*abb607(35)
      abb607(32)=abb607(33)+abb607(35)+abb607(32)
      abb607(32)=16.0_ki*abb607(32)
      abb607(10)=abb607(10)*abb607(8)
      abb607(33)=abb607(10)*spbk7k2
      abb607(35)=abb607(8)*abb607(6)
      abb607(37)=abb607(21)*abb607(35)
      abb607(33)=abb607(33)+abb607(37)
      abb607(37)=-spak1k7*abb607(33)
      abb607(38)=abb607(10)*spbk3k2
      abb607(39)=abb607(35)*spak5k6
      abb607(40)=abb607(39)*spbk6k3
      abb607(38)=abb607(38)-abb607(40)
      abb607(40)=-spak1k3*abb607(38)
      abb607(14)=spbk6k4*abb607(14)
      abb607(11)=-spbk4k2*abb607(11)
      abb607(11)=abb607(11)+abb607(14)+abb607(40)+abb607(37)
      abb607(11)=8.0_ki*abb607(11)
      abb607(14)=abb607(35)*spak1k5
      abb607(14)=32.0_ki*abb607(14)
      abb607(7)=spak1k5*abb607(7)
      abb607(37)=-spbk5k2*abb607(7)
      abb607(40)=-spak1k6*abb607(35)
      abb607(37)=abb607(37)+abb607(40)
      abb607(37)=16.0_ki*abb607(37)
      abb607(35)=spak1k2*abb607(35)
      abb607(7)=-spbk6k5*abb607(7)
      abb607(7)=abb607(35)+abb607(7)
      abb607(7)=16.0_ki*abb607(7)
      abb607(16)=-spak4k7*abb607(16)
      abb607(35)=spbk6k3*spak5k6
      abb607(40)=-spbk3k2*spak2k5
      abb607(35)=abb607(35)+abb607(40)
      abb607(15)=spak3k4*abb607(15)*abb607(35)
      abb607(15)=abb607(15)+abb607(16)
      abb607(15)=8.0_ki*abb607(15)
      abb607(16)=abb607(38)*spak2k4
      abb607(35)=-16.0_ki*abb607(16)
      abb607(16)=-8.0_ki*abb607(16)
      abb607(19)=-abb607(10)*abb607(19)
      abb607(8)=abb607(8)*abb607(21)
      abb607(8)=abb607(8)+abb607(19)
      abb607(8)=8.0_ki*abb607(8)
      abb607(19)=-8.0_ki*spak4k7*abb607(38)
      abb607(21)=8.0_ki*abb607(39)
      abb607(33)=spak4k7*abb607(33)
      abb607(38)=-spak3k4*abb607(38)
      abb607(33)=abb607(38)+abb607(33)
      abb607(33)=8.0_ki*abb607(33)
      abb607(10)=8.0_ki*abb607(10)
      R2d607=0.0_ki
      rat2 = rat2 + R2d607
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='607' value='", &
          & R2d607, "'/>"
      end if
   end subroutine
end module p0_dbard_epnemumnmubarg_abbrevd607h1
