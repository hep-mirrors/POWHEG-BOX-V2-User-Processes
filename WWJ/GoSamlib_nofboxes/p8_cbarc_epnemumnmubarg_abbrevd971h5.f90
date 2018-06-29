module     p8_cbarc_epnemumnmubarg_abbrevd971h5
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(40), public :: abb971
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
      abb971(7)=spbk7k2**(-1)
      abb971(8)=spbk6k1*spak1k7
      abb971(9)=spbk6k5*spak5k7
      abb971(8)=abb971(8)-abb971(9)
      abb971(9)=-spak3k4*abb971(8)
      abb971(10)=NC-abb971(4)
      abb971(11)=spbk3k2**2
      abb971(10)=abb971(11)*abb971(7)*abb971(10)*abb971(9)
      abb971(12)=abb971(5)*abb971(3)*gW**4*abb971(1)*abb971(2)*spak1k5*c1*TR*i_
      abb971(13)=abb971(12)*abb971(6)
      abb971(14)=4.0_ki*abb971(13)
      abb971(15)=abb971(10)*abb971(14)
      abb971(16)=-spak4k7*abb971(8)
      abb971(17)=es23+es34
      abb971(17)=-NC*abb971(17)*abb971(16)
      abb971(18)=abb971(7)*NC
      abb971(9)=abb971(9)*abb971(18)
      abb971(19)=spak4k7*spbk4k2
      abb971(20)=abb971(19)*spbk7k3*abb971(9)
      abb971(17)=abb971(17)+abb971(20)
      abb971(20)=abb971(8)*spak3k7
      abb971(21)=2.0_ki*NC
      abb971(22)=abb971(21)*spak2k4*abb971(20)
      abb971(23)=es712-es12
      abb971(24)=es123+abb971(23)-es456
      abb971(24)=es567+es71-es56-2.0_ki*abb971(24)
      abb971(24)=abb971(24)*abb971(9)
      abb971(22)=abb971(22)+abb971(24)
      abb971(22)=spbk3k2*abb971(22)
      abb971(17)=2.0_ki*abb971(17)+abb971(22)
      abb971(17)=abb971(6)*abb971(17)
      abb971(21)=abb971(16)*abb971(21)
      abb971(17)=abb971(21)+abb971(17)
      abb971(12)=4.0_ki*abb971(12)
      abb971(17)=abb971(12)*spbk3k2*abb971(17)
      abb971(21)=16.0_ki*abb971(13)
      abb971(9)=-abb971(11)*abb971(21)*abb971(9)
      abb971(11)=spbk6k1*spak1k4
      abb971(22)=spbk6k5*spak4k5
      abb971(11)=abb971(11)+abb971(22)
      abb971(22)=abb971(18)*abb971(19)*abb971(11)
      abb971(24)=3.0_ki*NC
      abb971(16)=abb971(16)*abb971(24)
      abb971(16)=abb971(22)+abb971(16)
      abb971(22)=2.0_ki*spak3k4
      abb971(25)=abb971(22)*spak1k7
      abb971(26)=spak4k7*spak1k3
      abb971(25)=abb971(25)+abb971(26)
      abb971(25)=abb971(25)*spbk6k1
      abb971(22)=abb971(22)*spak5k7
      abb971(27)=spak4k7*spak3k5
      abb971(22)=abb971(22)-abb971(27)
      abb971(22)=abb971(22)*spbk6k5
      abb971(22)=abb971(25)-abb971(22)
      abb971(25)=abb971(18)*spbk3k2
      abb971(22)=abb971(22)*abb971(25)
      abb971(22)=abb971(22)+abb971(16)
      abb971(28)=8.0_ki*abb971(13)
      abb971(22)=abb971(22)*abb971(28)*spbk3k2
      abb971(10)=-abb971(28)*abb971(10)
      abb971(29)=-spak1k4*es23
      abb971(30)=spak3k4*spbk7k3
      abb971(31)=spak1k7*abb971(30)
      abb971(29)=abb971(29)+abb971(31)
      abb971(29)=spbk6k1*abb971(29)
      abb971(31)=-spak4k5*es23
      abb971(30)=-spak5k7*abb971(30)
      abb971(30)=abb971(31)+abb971(30)
      abb971(30)=spbk6k5*abb971(30)
      abb971(29)=abb971(29)+abb971(30)
      abb971(29)=abb971(29)*abb971(18)
      abb971(30)=-spak2k4*spak1k3
      abb971(31)=spak3k4*spak1k2
      abb971(30)=abb971(30)+abb971(31)
      abb971(30)=spbk6k1*abb971(30)
      abb971(31)=-spak3k5*spak2k4
      abb971(32)=spak3k4*spak2k5
      abb971(31)=abb971(31)+abb971(32)
      abb971(31)=spbk6k5*abb971(31)
      abb971(30)=abb971(30)+abb971(31)
      abb971(30)=abb971(30)*abb971(25)
      abb971(31)=-NC*spak2k4*abb971(8)
      abb971(29)=abb971(30)+abb971(31)+abb971(29)
      abb971(29)=abb971(6)*spbk3k2*abb971(29)
      abb971(30)=abb971(11)*abb971(25)
      abb971(29)=abb971(30)+abb971(29)
      abb971(29)=abb971(29)*abb971(12)
      abb971(30)=NC+abb971(4)
      abb971(30)=abb971(11)*abb971(30)
      abb971(31)=spbk3k2*abb971(7)
      abb971(13)=abb971(13)*abb971(31)
      abb971(13)=32.0_ki*abb971(13)
      abb971(13)=abb971(30)*abb971(13)
      abb971(32)=NC*spbk6k5
      abb971(33)=spbk6k5*abb971(4)
      abb971(32)=abb971(32)+abb971(33)
      abb971(28)=abb971(28)*abb971(31)
      abb971(32)=abb971(32)*abb971(28)
      abb971(34)=-spak3k4*abb971(32)
      abb971(32)=spak2k4*abb971(32)
      abb971(35)=spbk4k2*spak1k4
      abb971(36)=spak3k7*abb971(35)
      abb971(37)=spak1k3*abb971(19)
      abb971(36)=abb971(36)+abb971(37)
      abb971(36)=spbk6k1*abb971(36)
      abb971(37)=spbk4k2*spak4k5
      abb971(38)=spak3k7*abb971(37)
      abb971(39)=spak3k5*abb971(19)
      abb971(38)=abb971(38)+abb971(39)
      abb971(38)=spbk6k5*abb971(38)
      abb971(36)=abb971(36)+abb971(38)
      abb971(36)=abb971(36)*abb971(18)
      abb971(20)=-abb971(20)*abb971(24)
      abb971(38)=spbk6k1*spak1k3
      abb971(39)=spbk6k5*spak3k5
      abb971(38)=abb971(38)+abb971(39)
      abb971(39)=abb971(38)*abb971(25)
      abb971(40)=spak3k7*abb971(39)
      abb971(20)=abb971(40)+abb971(20)+abb971(36)
      abb971(20)=spbk3k2*abb971(20)
      abb971(19)=-abb971(24)*abb971(19)*abb971(8)
      abb971(11)=abb971(18)*spak4k7*abb971(11)*spbk4k2**2
      abb971(11)=abb971(20)+abb971(19)+abb971(11)
      abb971(11)=abb971(11)*abb971(14)
      abb971(14)=NC*abb971(38)
      abb971(19)=spbk6k1*abb971(4)
      abb971(20)=spak1k3*abb971(19)
      abb971(24)=spak3k5*abb971(33)
      abb971(14)=abb971(14)+abb971(20)+abb971(24)
      abb971(14)=abb971(14)*abb971(31)
      abb971(20)=abb971(7)*spbk4k2*abb971(30)
      abb971(14)=abb971(20)+abb971(14)
      abb971(14)=abb971(14)*abb971(21)
      abb971(20)=-spak2k7*abb971(35)
      abb971(23)=es71-abb971(23)
      abb971(23)=3.0_ki*abb971(23)
      abb971(24)=spak1k7*abb971(23)
      abb971(26)=-spbk4k3*abb971(26)
      abb971(20)=abb971(26)+abb971(20)+abb971(24)
      abb971(20)=spbk6k1*abb971(20)
      abb971(24)=-spak2k7*abb971(37)
      abb971(23)=-spak5k7*abb971(23)
      abb971(26)=-spbk4k3*abb971(27)
      abb971(23)=abb971(26)+abb971(24)+abb971(23)
      abb971(23)=spbk6k5*abb971(23)
      abb971(20)=abb971(20)+abb971(23)
      abb971(18)=abb971(20)*abb971(18)
      abb971(20)=-spak2k7*abb971(39)
      abb971(18)=abb971(18)+abb971(20)
      abb971(18)=spbk3k2*abb971(18)
      abb971(16)=-spbk4k3*abb971(16)
      abb971(16)=abb971(18)+abb971(16)
      abb971(16)=abb971(6)*abb971(16)
      abb971(8)=-abb971(8)*abb971(25)
      abb971(8)=abb971(8)+abb971(16)
      abb971(8)=abb971(8)*abb971(12)
      abb971(12)=-spbk6k1*spak1k2
      abb971(16)=-spbk6k5*spak2k5
      abb971(12)=abb971(12)+abb971(16)
      abb971(12)=NC*abb971(12)
      abb971(16)=-spak1k2*abb971(19)
      abb971(18)=-spak2k5*abb971(33)
      abb971(12)=abb971(12)+abb971(16)+abb971(18)
      abb971(12)=abb971(12)*abb971(31)
      abb971(16)=-abb971(7)*spbk4k3*abb971(30)
      abb971(12)=abb971(16)+abb971(12)
      abb971(12)=abb971(12)*abb971(21)
      abb971(16)=NC*spbk6k1
      abb971(16)=abb971(16)+abb971(19)
      abb971(16)=abb971(16)*abb971(28)
      abb971(18)=spak3k4*abb971(16)
      abb971(16)=-spak2k4*abb971(16)
      R2d971=abb971(15)
      rat2 = rat2 + R2d971
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='971' value='", &
          & R2d971, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd971h5
