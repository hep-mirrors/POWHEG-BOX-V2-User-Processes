module     p0_dbaru_epnebbbarg_abbrevd100h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(45), public :: abb100
   complex(ki), public :: R2d100
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_color, only: TR
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb100(1)=1.0_ki/(-mB**2+es67)
      abb100(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb100(3)=1.0_ki/(es34+es567-es12-es234)
      abb100(4)=NC**(-1)
      abb100(5)=sqrt2**(-1)
      abb100(6)=spak2l5**(-1)
      abb100(7)=spak2k7**(-1)
      abb100(8)=sqrt(mB**2)
      abb100(9)=spak2l6**(-1)
      abb100(10)=spbl6k2**(-1)
      abb100(11)=spak2k4*spbk4k3
      abb100(12)=spak1k2*spbk3k1
      abb100(11)=abb100(11)-abb100(12)
      abb100(12)=-c2*abb100(11)
      abb100(13)=abb100(4)**2
      abb100(13)=abb100(13)+1.0_ki
      abb100(14)=TR*gW
      abb100(14)=abb100(14)**2*CVDU*i_*spak1k4*abb100(5)*abb100(3)*abb100(2)*ab&
      &b100(1)
      abb100(15)=abb100(14)*spbk7l6*abb100(7)
      abb100(16)=abb100(15)*abb100(13)
      abb100(17)=-abb100(16)*abb100(12)
      abb100(18)=abb100(17)*abb100(8)
      abb100(15)=abb100(15)*abb100(4)
      abb100(19)=-abb100(15)*abb100(11)
      abb100(20)=2.0_ki*c3
      abb100(21)=abb100(20)*abb100(8)
      abb100(22)=abb100(19)*abb100(21)
      abb100(18)=abb100(22)+abb100(18)
      abb100(18)=abb100(18)*spbl5k2
      abb100(22)=-abb100(11)*mB*abb100(6)
      abb100(23)=-c2*abb100(22)
      abb100(24)=-abb100(16)*abb100(23)
      abb100(25)=-abb100(15)*abb100(22)
      abb100(26)=abb100(25)*abb100(20)
      abb100(26)=abb100(26)+abb100(24)
      abb100(27)=abb100(26)*spbl6k2
      abb100(28)=spak2l6*abb100(27)
      abb100(29)=-abb100(18)+2.0_ki*abb100(28)
      abb100(30)=abb100(26)*es71
      abb100(31)=abb100(29)+2.0_ki*abb100(30)
      abb100(32)=abb100(26)*es12
      abb100(33)=2.0_ki*abb100(26)
      abb100(33)=es712*abb100(33)
      abb100(33)=-abb100(32)+abb100(33)-abb100(31)
      abb100(33)=es12*abb100(33)
      abb100(34)=spak2l6*abb100(18)
      abb100(27)=-spak2l6**2*abb100(27)
      abb100(27)=abb100(34)+abb100(27)
      abb100(27)=spbl6k2*abb100(27)
      abb100(29)=-abb100(30)-abb100(29)
      abb100(29)=es71*abb100(29)
      abb100(34)=abb100(26)*es712
      abb100(31)=-abb100(34)+abb100(31)
      abb100(31)=es712*abb100(31)
      abb100(27)=abb100(33)+abb100(31)+abb100(27)+abb100(29)
      abb100(27)=8.0_ki*abb100(27)
      abb100(29)=abb100(30)+abb100(32)-abb100(34)
      abb100(30)=16.0_ki*abb100(29)
      abb100(31)=16.0_ki*abb100(28)
      abb100(18)=abb100(28)+abb100(29)-abb100(18)
      abb100(28)=abb100(8)*c2
      abb100(29)=spbk4k3*abb100(28)
      abb100(32)=abb100(29)*abb100(16)
      abb100(15)=abb100(21)*abb100(15)
      abb100(33)=abb100(15)*spbk4k3
      abb100(32)=abb100(32)-abb100(33)
      abb100(33)=spak4k7*spbk7l5
      abb100(34)=spak4l6*spbl6l5
      abb100(33)=abb100(34)+abb100(33)
      abb100(33)=abb100(32)*abb100(33)
      abb100(28)=spbk3k1*abb100(28)
      abb100(16)=abb100(28)*abb100(16)
      abb100(15)=abb100(15)*spbk3k1
      abb100(15)=abb100(16)-abb100(15)
      abb100(16)=spak1k7*spbk7l5
      abb100(34)=spak1l6*spbl6l5
      abb100(16)=abb100(34)+abb100(16)
      abb100(16)=abb100(15)*abb100(16)
      abb100(34)=abb100(6)*mB**3
      abb100(17)=-abb100(34)*abb100(17)
      abb100(35)=abb100(8)**2
      abb100(24)=-abb100(24)*abb100(35)
      abb100(19)=-abb100(34)*abb100(19)
      abb100(25)=-abb100(25)*abb100(35)
      abb100(25)=abb100(25)+abb100(19)
      abb100(25)=abb100(25)*abb100(20)
      abb100(19)=abb100(19)*abb100(20)
      abb100(19)=abb100(19)+abb100(17)
      abb100(35)=abb100(10)*abb100(9)
      abb100(19)=abb100(19)*abb100(35)
      abb100(36)=es12+es71-es712
      abb100(36)=abb100(36)*abb100(19)
      abb100(16)=abb100(36)+abb100(25)+abb100(24)+abb100(17)+abb100(16)+abb100(&
      &33)+abb100(18)
      abb100(16)=16.0_ki*abb100(16)
      abb100(17)=32.0_ki*abb100(26)
      abb100(19)=-32.0_ki*abb100(19)
      abb100(18)=-8.0_ki*abb100(18)
      abb100(24)=8.0_ki*abb100(26)
      abb100(25)=spbk7k2*spak2l6*abb100(24)
      abb100(26)=spbk7l6**2
      abb100(33)=abb100(23)*abb100(26)
      abb100(13)=abb100(14)*abb100(13)
      abb100(36)=abb100(7)*abb100(13)
      abb100(37)=abb100(36)*abb100(33)
      abb100(22)=abb100(22)*abb100(20)
      abb100(26)=abb100(22)*abb100(26)
      abb100(14)=abb100(14)*abb100(4)
      abb100(38)=abb100(14)*abb100(7)
      abb100(39)=abb100(38)*abb100(26)
      abb100(37)=abb100(39)+abb100(37)
      abb100(37)=8.0_ki*spak2l6*abb100(37)
      abb100(39)=spbk7l6*abb100(13)
      abb100(23)=-abb100(39)*abb100(23)
      abb100(40)=abb100(14)*spbk7l6
      abb100(22)=-abb100(40)*abb100(22)
      abb100(22)=abb100(22)+abb100(23)
      abb100(22)=8.0_ki*spbl6k2*abb100(22)
      abb100(13)=-abb100(13)*abb100(33)
      abb100(14)=-abb100(14)*abb100(26)
      abb100(13)=abb100(14)+abb100(13)
      abb100(13)=8.0_ki*abb100(13)
      abb100(14)=abb100(21)*spbk4k3
      abb100(23)=abb100(40)*abb100(14)
      abb100(26)=abb100(39)*abb100(29)
      abb100(23)=abb100(23)-abb100(26)
      abb100(26)=8.0_ki*spbl5k2
      abb100(33)=abb100(23)*abb100(26)
      abb100(41)=abb100(32)*spak2l6
      abb100(42)=-abb100(26)*abb100(41)
      abb100(23)=spbk7l5*abb100(23)
      abb100(41)=-spbl6l5*abb100(41)
      abb100(23)=abb100(23)+abb100(41)
      abb100(23)=8.0_ki*abb100(23)
      abb100(12)=abb100(12)*abb100(36)
      abb100(41)=-abb100(8)*abb100(12)
      abb100(11)=abb100(11)*abb100(38)
      abb100(43)=-abb100(21)*abb100(11)
      abb100(41)=abb100(43)+abb100(41)
      abb100(43)=-spbl6k2*abb100(41)
      abb100(44)=spak4k7*abb100(32)
      abb100(45)=spak1k7*abb100(15)
      abb100(43)=abb100(45)+abb100(43)+abb100(44)
      abb100(43)=abb100(43)*abb100(26)
      abb100(11)=abb100(20)*abb100(11)
      abb100(11)=abb100(11)+abb100(12)
      abb100(11)=abb100(34)*abb100(11)
      abb100(11)=16.0_ki*abb100(11)
      abb100(12)=-abb100(9)*abb100(11)
      abb100(20)=abb100(36)*abb100(29)
      abb100(14)=abb100(14)*abb100(38)
      abb100(14)=abb100(20)-abb100(14)
      abb100(20)=abb100(14)*abb100(26)
      abb100(14)=8.0_ki*abb100(14)
      abb100(29)=spbl6l5*abb100(14)
      abb100(34)=spbk7k2*abb100(41)
      abb100(32)=spak4l6*abb100(32)
      abb100(41)=spak1l6*abb100(15)
      abb100(32)=abb100(41)+abb100(34)+abb100(32)
      abb100(32)=abb100(32)*abb100(26)
      abb100(11)=spbk7k2*abb100(35)*abb100(11)
      abb100(14)=-spbk7l5*abb100(14)
      abb100(21)=abb100(21)*spbk3k1
      abb100(34)=abb100(40)*abb100(21)
      abb100(35)=abb100(39)*abb100(28)
      abb100(34)=abb100(34)-abb100(35)
      abb100(35)=abb100(34)*abb100(26)
      abb100(28)=abb100(36)*abb100(28)
      abb100(21)=abb100(21)*abb100(38)
      abb100(21)=abb100(28)-abb100(21)
      abb100(28)=abb100(21)*abb100(26)
      abb100(15)=abb100(15)*spak2l6
      abb100(26)=-abb100(26)*abb100(15)
      abb100(34)=spbk7l5*abb100(34)
      abb100(15)=-spbl6l5*abb100(15)
      abb100(15)=abb100(34)+abb100(15)
      abb100(15)=8.0_ki*abb100(15)
      abb100(21)=8.0_ki*abb100(21)
      abb100(34)=spbl6l5*abb100(21)
      abb100(21)=-spbk7l5*abb100(21)
      R2d100=0.0_ki
      rat2 = rat2 + R2d100
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='100' value='", &
          & R2d100, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd100h3
