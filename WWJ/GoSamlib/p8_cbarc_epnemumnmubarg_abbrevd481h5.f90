module     p8_cbarc_epnemumnmubarg_abbrevd481h5
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(43), public :: abb481
   complex(ki), public :: R2d481
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
      abb481(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb481(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb481(3)=NC**(-1)
      abb481(4)=sqrt2**(-1)
      abb481(5)=spbk7k2**(-1)
      abb481(6)=spak5k7*spbk7k3
      abb481(7)=spak4k5*spbk4k3
      abb481(6)=abb481(6)-abb481(7)
      abb481(7)=-spak4k7*abb481(6)
      abb481(8)=spak1k7*spbk6k2
      abb481(9)=-abb481(7)*abb481(8)
      abb481(10)=spak1k5*spbk7k6
      abb481(11)=abb481(10)*spak4k7
      abb481(12)=-spbk2k1*abb481(11)
      abb481(13)=spbk6k3*spak1k5
      abb481(14)=abb481(13)*spbk2k1
      abb481(15)=-spak3k4*abb481(14)
      abb481(12)=abb481(12)+abb481(15)
      abb481(15)=spak1k7*spbk3k2
      abb481(12)=abb481(5)*abb481(15)*abb481(12)
      abb481(16)=abb481(14)*spak1k7
      abb481(17)=-spak4k7*abb481(16)
      abb481(9)=abb481(12)+abb481(9)+abb481(17)
      abb481(12)=abb481(3)*gW**4*abb481(1)*abb481(2)*abb481(4)*c1*TR*i_
      abb481(17)=8.0_ki*abb481(12)
      abb481(9)=abb481(9)*abb481(17)
      abb481(18)=16.0_ki*abb481(5)
      abb481(18)=abb481(18)*abb481(12)
      abb481(19)=abb481(18)*spbk3k2
      abb481(20)=abb481(19)*spak4k5
      abb481(21)=abb481(20)*abb481(8)
      abb481(22)=8.0_ki*abb481(5)
      abb481(22)=abb481(22)*abb481(12)
      abb481(15)=abb481(15)*abb481(22)
      abb481(23)=spbk6k2*spak4k5*abb481(15)
      abb481(24)=abb481(6)*spbk6k2
      abb481(14)=abb481(24)-abb481(14)
      abb481(14)=spak1k4*abb481(14)
      abb481(24)=abb481(14)*abb481(18)
      abb481(25)=spak3k4*abb481(13)
      abb481(11)=abb481(11)+abb481(25)
      abb481(25)=abb481(5)*spbk3k2
      abb481(11)=abb481(11)*abb481(25)
      abb481(26)=spak4k7*abb481(13)
      abb481(11)=abb481(26)+abb481(11)
      abb481(11)=16.0_ki*abb481(11)*abb481(12)
      abb481(12)=-abb481(14)*abb481(22)
      abb481(14)=-spbk7k6*abb481(6)
      abb481(26)=abb481(10)*spbk3k1
      abb481(27)=spbk3k2*spak2k5
      abb481(28)=abb481(27)*spbk7k6
      abb481(14)=abb481(14)-abb481(26)-abb481(28)
      abb481(26)=spbk7k1*abb481(13)
      abb481(26)=abb481(26)-abb481(14)
      abb481(26)=abb481(5)*spak1k4*abb481(26)
      abb481(29)=spbk6k3*spak1k4
      abb481(30)=spak2k5*abb481(29)
      abb481(26)=abb481(30)+abb481(26)
      abb481(26)=abb481(26)*abb481(17)
      abb481(30)=-spak1k7*spak3k4*spbk3k2**2*abb481(22)
      abb481(31)=-spak1k4*abb481(19)
      abb481(32)=abb481(22)*spbk3k2
      abb481(33)=spak1k4*abb481(32)
      abb481(34)=abb481(18)*spbk7k3
      abb481(35)=-spak1k4*abb481(34)
      abb481(36)=abb481(29)*abb481(18)
      abb481(29)=abb481(29)*abb481(22)
      abb481(37)=spak4k5*spbk4k2
      abb481(38)=spbk3k2*spak3k5
      abb481(37)=abb481(37)+abb481(38)
      abb481(38)=spbk6k2*abb481(37)
      abb481(39)=spak1k5*spbk6k2
      abb481(40)=spbk2k1*abb481(39)
      abb481(38)=abb481(40)+abb481(38)
      abb481(38)=abb481(5)*spak1k7*abb481(38)
      abb481(40)=-spak5k7*abb481(8)
      abb481(38)=abb481(40)+abb481(38)
      abb481(38)=abb481(38)*abb481(17)
      abb481(39)=abb481(39)*abb481(18)
      abb481(10)=-abb481(22)*abb481(10)
      abb481(40)=-spak1k4*spbk6k4
      abb481(41)=-spbk6k2*spak1k2
      abb481(42)=spak1k7*spbk7k6
      abb481(43)=-spbk6k3*spak1k3
      abb481(40)=abb481(43)+abb481(42)+abb481(40)+abb481(41)
      abb481(40)=abb481(40)*abb481(22)
      abb481(6)=abb481(6)*abb481(8)
      abb481(6)=abb481(6)-abb481(16)
      abb481(8)=-abb481(6)*abb481(18)
      abb481(6)=abb481(6)*abb481(22)
      abb481(14)=spak1k7*abb481(14)
      abb481(16)=spak1k3*abb481(27)
      abb481(41)=es71-es123+es12+es23
      abb481(41)=spak1k5*abb481(41)
      abb481(16)=abb481(16)+abb481(41)
      abb481(16)=spbk6k3*abb481(16)
      abb481(14)=abb481(14)+abb481(16)
      abb481(14)=abb481(5)*abb481(14)
      abb481(16)=spbk6k3*spak2k5
      abb481(41)=-spak1k7*abb481(16)
      abb481(14)=abb481(41)+abb481(14)
      abb481(14)=abb481(14)*abb481(17)
      abb481(18)=abb481(13)*abb481(18)
      abb481(13)=abb481(13)*abb481(22)
      abb481(19)=spak1k7*abb481(19)
      abb481(34)=spak1k7*abb481(34)
      abb481(41)=spak1k5*spbk6k4*abb481(22)
      abb481(42)=-spak1k5*spbk3k1
      abb481(42)=-abb481(27)+abb481(42)
      abb481(42)=abb481(42)*abb481(29)
      abb481(43)=spak4k7*abb481(32)
      abb481(7)=-abb481(7)*abb481(17)
      abb481(32)=spak4k5*abb481(32)
      abb481(37)=abb481(5)*abb481(37)
      abb481(37)=-spak5k7+abb481(37)
      abb481(37)=abb481(37)*abb481(17)
      abb481(25)=-spak3k4*abb481(25)
      abb481(25)=-spak4k7+abb481(25)
      abb481(25)=abb481(25)*abb481(17)
      abb481(28)=spak4k7*abb481(28)
      abb481(27)=spbk6k3*spak3k4*abb481(27)
      abb481(27)=abb481(28)+abb481(27)
      abb481(27)=abb481(5)*abb481(27)
      abb481(16)=spak4k7*abb481(16)
      abb481(16)=abb481(16)+abb481(27)
      abb481(16)=abb481(16)*abb481(17)
      abb481(17)=-spbk6k2*spak2k5
      abb481(27)=spak1k5*spbk6k1
      abb481(17)=abb481(17)+abb481(27)
      abb481(17)=abb481(17)*abb481(22)
      R2d481=0.0_ki
      rat2 = rat2 + R2d481
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='481' value='", &
          & R2d481, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd481h5
