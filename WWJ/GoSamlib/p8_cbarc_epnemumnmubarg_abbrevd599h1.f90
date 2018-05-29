module     p8_cbarc_epnemumnmubarg_abbrevd599h1
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh1
   implicit none
   private
   complex(ki), dimension(41), public :: abb599
   complex(ki), public :: R2d599
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
      abb599(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb599(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb599(3)=NC**(-1)
      abb599(4)=sqrt2**(-1)
      abb599(5)=es234**(-1)
      abb599(6)=spak2k7**(-1)
      abb599(7)=es12+es71-es712
      abb599(8)=spak1k5*spak2k4
      abb599(9)=abb599(7)*abb599(8)
      abb599(10)=spak2k4*spbk7k2
      abb599(11)=spak3k4*spbk7k3
      abb599(10)=abb599(10)-abb599(11)
      abb599(12)=spak2k5*spak1k7
      abb599(13)=abb599(10)*abb599(12)
      abb599(13)=abb599(13)-abb599(9)
      abb599(13)=abb599(13)*spbk7k6
      abb599(14)=spbk6k5*abb599(10)*spak1k5
      abb599(15)=spak2k5*abb599(14)
      abb599(13)=abb599(13)-abb599(15)
      abb599(13)=abb599(13)*abb599(6)
      abb599(15)=abb599(11)*spbk7k6
      abb599(16)=abb599(15)*spak1k5
      abb599(13)=abb599(13)+abb599(16)
      abb599(17)=abb599(3)*gW**4*abb599(1)*abb599(2)*abb599(4)*c1*TR*i_
      abb599(18)=abb599(17)*abb599(5)*spbk3k2
      abb599(19)=16.0_ki*abb599(18)
      abb599(20)=-abb599(13)*abb599(19)
      abb599(21)=abb599(6)*spbk7k6
      abb599(22)=abb599(9)*abb599(21)
      abb599(16)=abb599(22)-abb599(16)
      abb599(16)=abb599(16)*abb599(19)
      abb599(22)=spak4k5*spak1k6
      abb599(23)=spak1k5*spak4k6
      abb599(22)=abb599(22)-abb599(23)
      abb599(23)=spbk7k6**2
      abb599(24)=abb599(22)*abb599(23)*abb599(19)
      abb599(25)=spak4k5*spak1k2
      abb599(8)=abb599(25)+abb599(8)
      abb599(26)=abb599(18)*abb599(21)
      abb599(26)=32.0_ki*abb599(26)
      abb599(27)=abb599(8)*abb599(26)
      abb599(28)=8.0_ki*abb599(18)
      abb599(13)=-abb599(13)*abb599(28)
      abb599(8)=abb599(8)*abb599(21)
      abb599(19)=abb599(19)*abb599(8)
      abb599(9)=-spbk7k5*abb599(9)
      abb599(7)=abb599(7)*spak2k4
      abb599(29)=-spbk7k6*spak1k6*abb599(7)
      abb599(9)=abb599(9)+abb599(29)
      abb599(9)=abb599(6)*abb599(9)
      abb599(29)=spbk7k5*abb599(11)*spak1k5
      abb599(15)=spak1k6*abb599(15)
      abb599(9)=abb599(9)+abb599(29)+abb599(15)
      abb599(9)=abb599(9)*abb599(28)
      abb599(15)=-spbk4k2*abb599(22)
      abb599(29)=-spak1k6*spak3k5
      abb599(30)=spak1k5*spak3k6
      abb599(29)=abb599(29)+abb599(30)
      abb599(29)=spbk3k2*abb599(29)
      abb599(15)=abb599(15)+abb599(29)
      abb599(29)=8.0_ki*abb599(17)
      abb599(30)=abb599(29)*abb599(5)
      abb599(23)=abb599(30)*abb599(23)
      abb599(15)=abb599(15)*abb599(23)
      abb599(31)=spak1k5*es34
      abb599(25)=abb599(25)*spbk4k2
      abb599(25)=abb599(31)+abb599(25)
      abb599(25)=abb599(25)*abb599(21)
      abb599(31)=spbk3k2*abb599(6)
      abb599(32)=abb599(31)*spbk7k6
      abb599(33)=abb599(32)*spak1k2
      abb599(34)=abb599(33)*spak3k5
      abb599(25)=abb599(25)+abb599(34)
      abb599(25)=abb599(25)*abb599(5)
      abb599(34)=abb599(21)*spak1k5
      abb599(25)=abb599(25)-abb599(34)
      abb599(17)=16.0_ki*abb599(17)
      abb599(34)=-abb599(25)*abb599(17)
      abb599(25)=-abb599(25)*abb599(29)
      abb599(22)=spbk4k3*abb599(22)
      abb599(29)=spak2k5*spak1k6
      abb599(35)=-spak1k5*spak2k6
      abb599(29)=abb599(29)+abb599(35)
      abb599(29)=spbk3k2*abb599(29)
      abb599(22)=abb599(22)+abb599(29)
      abb599(22)=abb599(22)*abb599(23)
      abb599(8)=spbk4k3*abb599(8)
      abb599(23)=abb599(33)*spak2k5
      abb599(8)=abb599(8)+abb599(23)
      abb599(17)=abb599(17)*abb599(5)
      abb599(23)=abb599(8)*abb599(17)
      abb599(8)=abb599(8)*abb599(30)
      abb599(14)=spak5k7*abb599(14)
      abb599(10)=-spbk7k6*spak1k7*abb599(10)*spak5k7
      abb599(10)=abb599(14)+abb599(10)
      abb599(14)=abb599(18)*abb599(6)
      abb599(18)=8.0_ki*abb599(14)
      abb599(10)=abb599(10)*abb599(18)
      abb599(29)=spak3k4*spbk6k3
      abb599(30)=spak2k4*spbk6k2
      abb599(29)=abb599(29)-abb599(30)
      abb599(33)=abb599(29)*spak1k5
      abb599(35)=16.0_ki*abb599(14)
      abb599(36)=abb599(33)*abb599(35)
      abb599(37)=spak4k5*spak1k7
      abb599(38)=spak1k5*spak4k7
      abb599(37)=abb599(37)-abb599(38)
      abb599(26)=abb599(37)*abb599(26)
      abb599(33)=-abb599(18)*abb599(33)
      abb599(38)=spak1k6*spbk6k3
      abb599(39)=spbk7k3*spak1k7
      abb599(38)=abb599(38)+abb599(39)
      abb599(38)=spak3k4*abb599(38)
      abb599(39)=-spak1k6*spbk6k2
      abb599(40)=-spak1k7*spbk7k2
      abb599(39)=abb599(39)+abb599(40)
      abb599(39)=spak2k4*abb599(39)
      abb599(40)=spak3k4*spbk5k3
      abb599(41)=-spak2k4*spbk5k2
      abb599(40)=abb599(40)+abb599(41)
      abb599(40)=spak1k5*abb599(40)
      abb599(38)=abb599(40)+abb599(38)+abb599(39)
      abb599(38)=abb599(38)*abb599(18)
      abb599(14)=abb599(14)*spak1k4
      abb599(14)=32.0_ki*abb599(14)
      abb599(37)=abb599(37)*abb599(21)
      abb599(39)=spbk4k2*abb599(37)
      abb599(40)=spak1k7*spak3k5
      abb599(41)=-spak1k5*spak3k7
      abb599(40)=abb599(40)+abb599(41)
      abb599(32)=abb599(40)*abb599(32)
      abb599(32)=abb599(39)+abb599(32)
      abb599(32)=abb599(32)*abb599(17)
      abb599(39)=abb599(6)*spak1k4
      abb599(40)=-spbk4k2*abb599(39)
      abb599(41)=-spak1k3*abb599(31)
      abb599(40)=abb599(40)+abb599(41)
      abb599(40)=abb599(40)*abb599(17)
      abb599(37)=-spbk4k3*abb599(37)
      abb599(12)=-abb599(21)*abb599(12)
      abb599(41)=spbk7k6*spak1k5
      abb599(12)=abb599(41)+abb599(12)
      abb599(12)=spbk3k2*abb599(12)
      abb599(12)=abb599(37)+abb599(12)
      abb599(12)=abb599(12)*abb599(17)
      abb599(31)=abb599(31)*spak1k2
      abb599(37)=spbk4k3*abb599(39)
      abb599(31)=abb599(37)+abb599(31)
      abb599(17)=abb599(31)*abb599(17)
      abb599(31)=spbk6k3*spak5k6
      abb599(37)=spbk7k3*spak5k7
      abb599(31)=abb599(31)+abb599(37)
      abb599(31)=abb599(31)*spak3k4
      abb599(30)=spak5k6*abb599(30)
      abb599(30)=-abb599(31)+abb599(30)
      abb599(30)=spbk7k6*abb599(30)
      abb599(21)=spak5k7*abb599(21)*abb599(7)
      abb599(21)=abb599(30)+abb599(21)
      abb599(21)=abb599(21)*abb599(28)
      abb599(30)=abb599(29)*spak2k5
      abb599(35)=abb599(30)*abb599(35)
      abb599(30)=abb599(30)*abb599(18)
      abb599(7)=abb599(6)*abb599(7)
      abb599(7)=-abb599(11)+abb599(7)
      abb599(7)=abb599(7)*abb599(28)
      abb599(11)=abb599(18)*spak5k7*abb599(29)
      abb599(28)=spbk6k2*spak5k6
      abb599(29)=spak5k7*spbk7k2
      abb599(28)=abb599(28)+abb599(29)
      abb599(28)=spak2k4*abb599(28)
      abb599(28)=-abb599(31)+abb599(28)
      abb599(28)=abb599(28)*abb599(18)
      abb599(29)=-spak3k4*abb599(18)
      abb599(18)=spak2k4*abb599(18)
      R2d599=0.0_ki
      rat2 = rat2 + R2d599
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='599' value='", &
          & R2d599, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd599h1
