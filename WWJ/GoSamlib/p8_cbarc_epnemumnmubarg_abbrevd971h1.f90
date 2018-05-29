module     p8_cbarc_epnemumnmubarg_abbrevd971h1
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(41), public :: abb971
   complex(ki), public :: R2d971
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p8_cbarc_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_color, only: TR
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb971(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb971(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb971(3)=1.0_ki/(-es71+es56-es567+es234)
      abb971(4)=NC**(-1)
      abb971(5)=sqrt2**(-1)
      abb971(6)=es234**(-1)
      abb971(7)=spak2k7**(-1)
      abb971(8)=abb971(1)*i_*TR*c1*spak1k5*abb971(5)*gW**4*abb971(3)*abb971(2)
      abb971(9)=abb971(7)*abb971(8)
      abb971(10)=abb971(9)*spbk3k2*abb971(6)
      abb971(11)=abb971(10)*abb971(4)
      abb971(12)=spbk6k1*abb971(11)
      abb971(13)=abb971(12)*spak2k4
      abb971(10)=abb971(10)*NC
      abb971(14)=abb971(10)*spak2k4
      abb971(15)=abb971(14)*spbk6k1
      abb971(16)=abb971(13)-abb971(15)
      abb971(16)=abb971(16)*spak1k2
      abb971(11)=spbk6k5*abb971(11)
      abb971(17)=abb971(11)*spak2k4
      abb971(18)=abb971(14)*spbk6k5
      abb971(19)=abb971(17)-abb971(18)
      abb971(19)=abb971(19)*spak2k5
      abb971(16)=abb971(16)+abb971(19)
      abb971(16)=abb971(16)*spbk7k2
      abb971(19)=spak3k4*spbk7k3
      abb971(20)=abb971(11)*abb971(19)
      abb971(21)=abb971(10)*spbk6k5
      abb971(22)=abb971(21)*abb971(19)
      abb971(20)=abb971(20)-abb971(22)
      abb971(20)=abb971(20)*spak2k5
      abb971(23)=abb971(12)*abb971(19)
      abb971(10)=abb971(10)*spbk6k1
      abb971(24)=abb971(10)*abb971(19)
      abb971(23)=abb971(23)-abb971(24)
      abb971(23)=abb971(23)*spak1k2
      abb971(16)=abb971(16)-abb971(20)-abb971(23)
      abb971(20)=4.0_ki*abb971(16)
      abb971(23)=-abb971(19)*abb971(18)
      abb971(25)=spbk7k2*spak2k4**2
      abb971(26)=abb971(21)*abb971(25)
      abb971(23)=abb971(23)+abb971(26)
      abb971(23)=spbk7k4*abb971(23)
      abb971(26)=abb971(9)*spbk6k5
      abb971(27)=NC*abb971(6)
      abb971(28)=abb971(26)*abb971(27)
      abb971(29)=spak3k4*spbk7k3**2
      abb971(30)=abb971(28)*abb971(29)
      abb971(31)=abb971(28)*spak2k4
      abb971(32)=spbk7k2*spbk7k3
      abb971(33)=-abb971(31)*abb971(32)
      abb971(30)=abb971(30)+abb971(33)
      abb971(30)=es23*abb971(30)
      abb971(23)=abb971(23)+abb971(30)
      abb971(23)=spak5k7*abb971(23)
      abb971(30)=abb971(19)*abb971(15)
      abb971(25)=-abb971(10)*abb971(25)
      abb971(25)=abb971(30)+abb971(25)
      abb971(25)=spbk7k4*abb971(25)
      abb971(30)=abb971(9)*spbk6k1
      abb971(27)=abb971(30)*abb971(27)
      abb971(29)=-abb971(27)*abb971(29)
      abb971(33)=abb971(27)*spak2k4
      abb971(32)=abb971(33)*abb971(32)
      abb971(29)=abb971(29)+abb971(32)
      abb971(29)=es23*abb971(29)
      abb971(25)=abb971(25)+abb971(29)
      abb971(25)=spak1k7*abb971(25)
      abb971(29)=abb971(22)*spak2k5
      abb971(32)=abb971(24)*spak1k2
      abb971(29)=abb971(29)+abb971(32)
      abb971(32)=spak2k5*spbk6k5
      abb971(34)=spak1k2*spbk6k1
      abb971(32)=abb971(34)+abb971(32)
      abb971(14)=abb971(14)*abb971(32)
      abb971(32)=abb971(14)*spbk7k2
      abb971(34)=abb971(32)-abb971(29)
      abb971(35)=es71+es567-es56
      abb971(35)=2.0_ki*abb971(35)
      abb971(35)=abb971(34)*abb971(35)
      abb971(23)=abb971(23)+abb971(25)+abb971(35)
      abb971(23)=4.0_ki*abb971(23)
      abb971(25)=16.0_ki*abb971(34)
      abb971(34)=spak1k4*spbk7k4
      abb971(35)=spak1k3*spbk7k3
      abb971(34)=abb971(34)+abb971(35)
      abb971(35)=abb971(15)*abb971(34)
      abb971(36)=spak4k5*spbk7k4
      abb971(37)=spak3k5*spbk7k3
      abb971(36)=abb971(36)+abb971(37)
      abb971(37)=abb971(18)*abb971(36)
      abb971(29)=abb971(32)-2.0_ki*abb971(29)+abb971(37)+abb971(35)
      abb971(29)=8.0_ki*abb971(29)
      abb971(16)=-8.0_ki*abb971(16)
      abb971(32)=abb971(4)*abb971(6)
      abb971(8)=abb971(19)*spbk3k2*abb971(8)*abb971(32)
      abb971(35)=spbk6k5*abb971(8)
      abb971(37)=es71+es12-es712
      abb971(38)=-abb971(17)*abb971(37)
      abb971(35)=abb971(35)+abb971(38)
      abb971(35)=8.0_ki*abb971(35)
      abb971(38)=abb971(28)*abb971(36)
      abb971(39)=abb971(27)*abb971(34)
      abb971(38)=abb971(39)+abb971(38)
      abb971(38)=es34*abb971(38)
      abb971(39)=-spbk6k5*abb971(36)
      abb971(40)=-spbk6k1*abb971(34)
      abb971(39)=abb971(40)+abb971(39)
      abb971(9)=abb971(39)*abb971(9)*NC
      abb971(39)=abb971(28)*spak2k5
      abb971(40)=abb971(27)*spak1k2
      abb971(39)=abb971(39)+abb971(40)
      abb971(19)=-spbk4k2*abb971(19)*abb971(39)
      abb971(40)=spak2k5*abb971(21)
      abb971(41)=spak1k2*abb971(10)
      abb971(40)=abb971(40)+abb971(41)
      abb971(40)=spbk7k4*spak3k4*abb971(40)
      abb971(9)=abb971(38)+abb971(19)+abb971(40)+abb971(9)
      abb971(9)=4.0_ki*abb971(9)
      abb971(19)=-abb971(33)*abb971(34)
      abb971(34)=-abb971(31)*abb971(36)
      abb971(19)=abb971(34)+abb971(19)
      abb971(19)=spbk4k3*abb971(19)
      abb971(34)=es34+es23
      abb971(34)=abb971(34)*abb971(39)*spbk7k3
      abb971(14)=-spbk7k4*abb971(14)
      abb971(14)=abb971(14)+abb971(19)+abb971(34)
      abb971(14)=4.0_ki*abb971(14)
      abb971(19)=spak3k4*abb971(39)
      abb971(31)=-spak3k5*abb971(31)
      abb971(33)=-spak1k3*abb971(33)
      abb971(19)=abb971(33)+abb971(31)+abb971(19)
      abb971(19)=abb971(19)*spbk3k2**2
      abb971(31)=spak4k5*abb971(26)
      abb971(33)=spak1k4*abb971(30)
      abb971(31)=abb971(33)+abb971(31)
      abb971(31)=abb971(31)*NC*spbk3k2
      abb971(33)=-spak4k5*abb971(21)
      abb971(34)=-spak1k4*abb971(10)
      abb971(33)=abb971(33)+abb971(34)
      abb971(33)=es23*abb971(33)
      abb971(34)=spbk7k2*abb971(18)
      abb971(22)=-abb971(22)+abb971(34)
      abb971(22)=spak5k7*abb971(22)
      abb971(34)=-spbk7k2*abb971(15)
      abb971(24)=abb971(24)+abb971(34)
      abb971(24)=spak1k7*abb971(24)
      abb971(19)=abb971(24)+abb971(22)+abb971(33)+abb971(19)+abb971(31)
      abb971(19)=4.0_ki*abb971(19)
      abb971(10)=abb971(12)+abb971(10)
      abb971(12)=abb971(10)*spak1k4
      abb971(11)=abb971(11)+abb971(21)
      abb971(21)=abb971(11)*spak4k5
      abb971(12)=abb971(12)+abb971(21)
      abb971(12)=32.0_ki*abb971(12)
      abb971(21)=8.0_ki*spak3k4
      abb971(22)=-abb971(11)*abb971(21)
      abb971(17)=abb971(18)+abb971(17)
      abb971(17)=8.0_ki*abb971(17)
      abb971(18)=abb971(32)*abb971(30)
      abb971(18)=abb971(18)+abb971(27)
      abb971(18)=abb971(18)*spak1k4
      abb971(24)=abb971(32)*abb971(26)
      abb971(24)=abb971(24)+abb971(28)
      abb971(24)=abb971(24)*spak4k5
      abb971(18)=abb971(18)+abb971(24)
      abb971(24)=spbk4k2*abb971(18)
      abb971(26)=spak3k5*abb971(11)
      abb971(27)=spak1k3*abb971(10)
      abb971(24)=abb971(24)+abb971(26)+abb971(27)
      abb971(24)=16.0_ki*abb971(24)
      abb971(18)=-spbk4k3*abb971(18)
      abb971(11)=-spak2k5*abb971(11)
      abb971(26)=-spak1k2*abb971(10)
      abb971(11)=abb971(18)+abb971(11)+abb971(26)
      abb971(11)=16.0_ki*abb971(11)
      abb971(8)=-spbk6k1*abb971(8)
      abb971(18)=abb971(13)*abb971(37)
      abb971(8)=abb971(8)+abb971(18)
      abb971(8)=8.0_ki*abb971(8)
      abb971(10)=abb971(10)*abb971(21)
      abb971(13)=-abb971(15)-abb971(13)
      abb971(13)=8.0_ki*abb971(13)
      R2d971=abb971(20)
      rat2 = rat2 + R2d971
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='971' value='", &
          & R2d971, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd971h1
