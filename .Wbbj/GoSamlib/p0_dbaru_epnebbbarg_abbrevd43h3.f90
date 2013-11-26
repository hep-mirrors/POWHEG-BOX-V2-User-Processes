module     p0_dbaru_epnebbbarg_abbrevd43h3
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(44), public :: abb43
   complex(ki), public :: R2d43
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
      abb43(1)=1.0_ki/(-es71+es712-es12)
      abb43(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb43(3)=1.0_ki/(-es71+es56-es567+es234)
      abb43(4)=NC**(-1)
      abb43(5)=es56**(-1)
      abb43(6)=spak2l5**(-1)
      abb43(7)=spak2l6**(-1)
      abb43(8)=spbl5k2**(-1)
      abb43(9)=spbl6k2**(-1)
      abb43(10)=mB**3
      abb43(11)=TR*gW
      abb43(11)=abb43(5)*i_*CVDU*abb43(3)*abb43(2)*abb43(1)*abb43(11)**2
      abb43(12)=abb43(11)*spbe7k2*spak1k2
      abb43(13)=abb43(10)*abb43(12)
      abb43(14)=abb43(4)**2
      abb43(14)=abb43(14)-1.0_ki
      abb43(15)=abb43(14)*c4
      abb43(16)=abb43(13)*abb43(15)
      abb43(17)=c1*abb43(13)
      abb43(18)=abb43(17)*abb43(4)
      abb43(16)=abb43(16)-abb43(18)
      abb43(18)=abb43(7)**2
      abb43(19)=abb43(18)*abb43(16)
      abb43(20)=spbk7k3*spae7k7
      abb43(21)=abb43(19)*abb43(20)
      abb43(22)=abb43(20)*NC
      abb43(23)=abb43(22)*abb43(17)
      abb43(24)=abb43(23)*abb43(18)
      abb43(21)=abb43(24)+abb43(21)
      abb43(24)=spbl5k2*abb43(9)
      abb43(21)=abb43(21)*abb43(24)
      abb43(25)=abb43(6)**2
      abb43(16)=abb43(25)*abb43(16)
      abb43(26)=abb43(16)*abb43(20)
      abb43(27)=abb43(23)*abb43(25)
      abb43(26)=abb43(27)+abb43(26)
      abb43(27)=spbl6k2*abb43(8)
      abb43(26)=abb43(26)*abb43(27)
      abb43(28)=c4*abb43(6)*abb43(14)
      abb43(13)=-abb43(7)*abb43(28)*abb43(13)
      abb43(29)=abb43(4)*abb43(7)
      abb43(30)=abb43(29)*abb43(6)
      abb43(31)=abb43(30)*abb43(17)
      abb43(13)=abb43(13)+abb43(31)
      abb43(31)=abb43(13)*abb43(20)
      abb43(32)=abb43(7)*abb43(6)
      abb43(23)=abb43(32)*abb43(23)
      abb43(23)=abb43(31)-abb43(23)
      abb43(21)=-2.0_ki*abb43(23)+abb43(21)+abb43(26)
      abb43(23)=abb43(21)*spak2k4
      abb43(12)=abb43(12)*mB
      abb43(26)=abb43(15)*abb43(12)
      abb43(12)=abb43(12)*c1
      abb43(31)=abb43(12)*abb43(4)
      abb43(26)=abb43(26)-abb43(31)
      abb43(31)=abb43(7)*abb43(26)
      abb43(33)=abb43(31)*abb43(20)
      abb43(34)=abb43(12)*abb43(7)
      abb43(35)=abb43(22)*abb43(34)
      abb43(33)=abb43(33)+abb43(35)
      abb43(33)=abb43(33)*spbl5k1
      abb43(26)=abb43(6)*abb43(26)
      abb43(36)=abb43(26)*abb43(20)
      abb43(12)=abb43(12)*abb43(6)
      abb43(22)=abb43(22)*abb43(12)
      abb43(36)=abb43(36)+abb43(22)
      abb43(36)=abb43(36)*spbl6k1
      abb43(33)=abb43(33)+abb43(36)
      abb43(36)=abb43(33)*spak1k4
      abb43(35)=abb43(35)*spbl6l5
      abb43(20)=abb43(20)*spbl6l5
      abb43(37)=abb43(20)*abb43(31)
      abb43(35)=abb43(35)+abb43(37)
      abb43(37)=abb43(35)*spak4l6
      abb43(22)=abb43(22)*spbl6l5
      abb43(20)=abb43(20)*abb43(26)
      abb43(20)=abb43(22)+abb43(20)
      abb43(22)=abb43(20)*spak4l5
      abb43(22)=-abb43(23)+abb43(22)+abb43(36)-abb43(37)
      abb43(23)=2.0_ki*abb43(22)
      abb43(22)=-4.0_ki*abb43(22)
      abb43(36)=4.0_ki*spak3k4
      abb43(35)=abb43(35)*abb43(36)
      abb43(20)=-abb43(20)*abb43(36)
      abb43(37)=NC*abb43(7)
      abb43(38)=abb43(37)*abb43(6)
      abb43(30)=abb43(30)-abb43(38)
      abb43(10)=abb43(10)*spak1k2
      abb43(38)=abb43(11)*c1
      abb43(39)=abb43(10)*abb43(38)
      abb43(30)=abb43(39)*abb43(30)
      abb43(40)=abb43(11)*abb43(7)
      abb43(41)=-abb43(10)*abb43(40)*abb43(28)
      abb43(30)=abb43(41)+abb43(30)
      abb43(10)=abb43(15)*abb43(10)*abb43(11)
      abb43(41)=NC-abb43(4)
      abb43(39)=abb43(41)*abb43(39)
      abb43(10)=abb43(39)+abb43(10)
      abb43(39)=abb43(27)*abb43(25)*abb43(10)
      abb43(10)=-abb43(24)*abb43(18)*abb43(10)
      abb43(10)=abb43(10)-abb43(39)+2.0_ki*abb43(30)
      abb43(30)=-es12+es712-es71
      abb43(30)=abb43(10)*abb43(30)
      abb43(29)=abb43(37)-abb43(29)
      abb43(37)=spak1k2*mB
      abb43(39)=abb43(38)*abb43(37)
      abb43(29)=abb43(39)*abb43(29)
      abb43(14)=c4*abb43(37)*abb43(14)
      abb43(37)=abb43(40)*abb43(14)
      abb43(29)=abb43(37)+abb43(29)
      abb43(37)=spal6k7*abb43(29)
      abb43(39)=abb43(39)*abb43(41)
      abb43(14)=abb43(11)*abb43(14)
      abb43(14)=abb43(14)+abb43(39)
      abb43(14)=abb43(6)*abb43(14)
      abb43(39)=spal5k7*abb43(14)
      abb43(37)=abb43(37)-abb43(39)
      abb43(37)=spbl6l5*abb43(37)
      abb43(29)=abb43(29)*spbl5k1
      abb43(14)=abb43(14)*spbl6k1
      abb43(14)=abb43(29)+abb43(14)
      abb43(14)=abb43(14)*spak1k7
      abb43(14)=abb43(14)+abb43(37)
      abb43(29)=-spbk7k2*abb43(14)
      abb43(29)=abb43(29)+abb43(30)
      abb43(29)=16.0_ki*abb43(29)
      abb43(30)=abb43(34)*NC
      abb43(30)=abb43(30)+abb43(31)
      abb43(30)=abb43(30)*spbl5k1
      abb43(37)=abb43(12)*NC
      abb43(37)=abb43(37)+abb43(26)
      abb43(37)=abb43(37)*spbl6k1
      abb43(30)=abb43(30)+abb43(37)
      abb43(30)=abb43(30)*spak1e7
      abb43(37)=abb43(26)*spbl6l5
      abb43(39)=abb43(12)*spbl6l5
      abb43(40)=abb43(39)*NC
      abb43(40)=abb43(40)+abb43(37)
      abb43(40)=abb43(40)*spal5e7
      abb43(42)=abb43(31)*spbl6l5
      abb43(43)=abb43(34)*spbl6l5
      abb43(44)=abb43(43)*NC
      abb43(44)=abb43(44)+abb43(42)
      abb43(44)=abb43(44)*spal6e7
      abb43(30)=abb43(30)-abb43(40)+abb43(44)
      abb43(30)=16.0_ki*abb43(30)
      abb43(10)=spak2k7*abb43(10)
      abb43(10)=abb43(10)+abb43(14)
      abb43(10)=spbk7e7*abb43(10)
      abb43(14)=spbe7k2*spak1k2**2
      abb43(38)=mB*abb43(41)*abb43(14)*abb43(38)
      abb43(40)=abb43(6)*abb43(38)
      abb43(11)=abb43(14)*abb43(11)*mB
      abb43(14)=abb43(11)*abb43(28)
      abb43(14)=abb43(14)+abb43(40)
      abb43(14)=spbl6k1*abb43(14)
      abb43(11)=abb43(11)*abb43(15)
      abb43(11)=abb43(11)+abb43(38)
      abb43(11)=spbl5k1*abb43(7)*abb43(11)
      abb43(10)=abb43(14)+abb43(11)+abb43(10)
      abb43(10)=8.0_ki*abb43(10)
      abb43(11)=spae7k7*abb43(42)
      abb43(14)=NC*spae7k7
      abb43(15)=abb43(14)*abb43(43)
      abb43(11)=abb43(11)+abb43(15)
      abb43(11)=4.0_ki*abb43(11)
      abb43(15)=-spae7k7*abb43(37)
      abb43(28)=-abb43(14)*abb43(39)
      abb43(15)=abb43(15)+abb43(28)
      abb43(15)=4.0_ki*abb43(15)
      abb43(13)=spae7k7*abb43(13)
      abb43(17)=abb43(17)*abb43(14)
      abb43(28)=-abb43(32)*abb43(17)
      abb43(13)=abb43(13)+abb43(28)
      abb43(16)=-spae7k7*abb43(16)
      abb43(25)=-abb43(25)*abb43(17)
      abb43(16)=abb43(16)+abb43(25)
      abb43(16)=abb43(16)*abb43(27)
      abb43(19)=-spae7k7*abb43(19)
      abb43(17)=-abb43(18)*abb43(17)
      abb43(17)=abb43(19)+abb43(17)
      abb43(17)=abb43(17)*abb43(24)
      abb43(13)=abb43(17)+2.0_ki*abb43(13)+abb43(16)
      abb43(13)=4.0_ki*abb43(13)
      abb43(16)=-abb43(21)*abb43(36)
      abb43(17)=spae7k7*abb43(26)
      abb43(12)=abb43(14)*abb43(12)
      abb43(12)=abb43(17)+abb43(12)
      abb43(12)=spbl6k1*abb43(12)
      abb43(17)=spae7k7*abb43(31)
      abb43(14)=abb43(14)*abb43(34)
      abb43(14)=abb43(17)+abb43(14)
      abb43(14)=spbl5k1*abb43(14)
      abb43(12)=abb43(12)+abb43(14)
      abb43(12)=4.0_ki*abb43(12)
      abb43(14)=abb43(33)*abb43(36)
      R2d43=abb43(23)
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbarg_abbrevd43h3
