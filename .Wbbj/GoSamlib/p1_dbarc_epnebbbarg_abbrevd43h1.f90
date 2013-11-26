module     p1_dbarc_epnebbbarg_abbrevd43h1
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh1
   implicit none
   private
   complex(ki), dimension(43), public :: abb43
   complex(ki), public :: R2d43
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_color, only: TR
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb43(1)=1.0_ki/(-es71+es712-es12)
      abb43(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb43(3)=1.0_ki/(-es71+es56-es567+es234)
      abb43(4)=NC**(-1)
      abb43(5)=es56**(-1)
      abb43(6)=spak2l5**(-1)
      abb43(7)=spak2l6**(-1)
      abb43(8)=spbl6k2**(-1)
      abb43(9)=abb43(4)**2
      abb43(10)=abb43(9)-1.0_ki
      abb43(10)=abb43(10)*c4
      abb43(11)=c1*abb43(4)
      abb43(12)=abb43(10)-abb43(11)
      abb43(13)=abb43(1)*abb43(5)*i_*CVDC*abb43(3)*abb43(2)
      abb43(14)=spbe7k2*abb43(13)
      abb43(15)=abb43(14)*spak1l6
      abb43(16)=TR*gW
      abb43(17)=abb43(16)*mB
      abb43(17)=abb43(17)**2
      abb43(18)=abb43(15)*abb43(17)
      abb43(19)=abb43(18)*abb43(12)
      abb43(20)=NC*c1
      abb43(21)=abb43(20)*abb43(18)
      abb43(21)=abb43(21)+abb43(19)
      abb43(22)=spbl5k2*abb43(8)
      abb43(23)=spbk7k3*spae7k7
      abb43(21)=abb43(7)*abb43(21)*abb43(22)*abb43(23)
      abb43(14)=abb43(14)*abb43(17)
      abb43(24)=abb43(6)*abb43(14)
      abb43(9)=abb43(9)*abb43(24)
      abb43(25)=abb43(9)*spak1l6
      abb43(26)=abb43(24)*spak1l6
      abb43(25)=abb43(25)-abb43(26)
      abb43(25)=abb43(25)*c4
      abb43(27)=abb43(11)*abb43(24)
      abb43(28)=abb43(27)*spak1l6
      abb43(25)=abb43(25)-abb43(28)
      abb43(28)=abb43(25)*abb43(23)
      abb43(29)=abb43(20)*abb43(24)
      abb43(30)=abb43(29)*abb43(23)
      abb43(31)=abb43(30)*spak1l6
      abb43(21)=abb43(21)+abb43(31)+abb43(28)
      abb43(28)=abb43(21)*spak2k4
      abb43(9)=abb43(9)-abb43(24)
      abb43(9)=abb43(9)*c4
      abb43(9)=abb43(9)-abb43(27)
      abb43(27)=abb43(9)*abb43(8)
      abb43(31)=abb43(20)*abb43(8)
      abb43(32)=abb43(31)*abb43(24)
      abb43(33)=abb43(27)+abb43(32)
      abb43(33)=abb43(33)*es12
      abb43(34)=abb43(23)*abb43(33)
      abb43(16)=abb43(16)**2
      abb43(15)=abb43(15)*abb43(16)
      abb43(35)=abb43(15)*abb43(12)
      abb43(36)=abb43(15)*abb43(20)
      abb43(36)=abb43(35)+abb43(36)
      abb43(37)=abb43(23)*abb43(36)
      abb43(38)=abb43(37)*spbl5k1
      abb43(34)=abb43(34)-abb43(38)
      abb43(38)=abb43(34)*spak1k4
      abb43(39)=abb43(9)*spak1k2
      abb43(40)=abb43(39)*abb43(23)
      abb43(37)=abb43(37)*spbl6l5
      abb43(41)=abb43(30)*spak1k2
      abb43(37)=-abb43(37)+abb43(41)+abb43(40)
      abb43(40)=abb43(37)*spak4l6
      abb43(41)=abb43(22)*spak1k2
      abb43(9)=abb43(9)*abb43(41)
      abb43(23)=abb43(23)*abb43(9)
      abb43(30)=abb43(30)*abb43(41)
      abb43(23)=abb43(30)+abb43(23)
      abb43(30)=abb43(23)*spak4l5
      abb43(28)=-abb43(28)-abb43(38)+abb43(40)+abb43(30)
      abb43(30)=2.0_ki*abb43(28)
      abb43(28)=-4.0_ki*abb43(28)
      abb43(38)=4.0_ki*spak3k4
      abb43(37)=-abb43(37)*abb43(38)
      abb43(23)=-abb43(23)*abb43(38)
      abb43(17)=abb43(17)*abb43(13)
      abb43(40)=abb43(17)*abb43(6)
      abb43(42)=abb43(40)*abb43(12)
      abb43(43)=abb43(42)*abb43(8)
      abb43(31)=abb43(31)*abb43(40)
      abb43(31)=abb43(31)+abb43(43)
      abb43(31)=abb43(31)*es12
      abb43(11)=abb43(10)-abb43(11)+abb43(20)
      abb43(13)=abb43(11)*abb43(16)*spak1l6*abb43(13)
      abb43(16)=abb43(13)*spbl5k1
      abb43(16)=abb43(31)-abb43(16)
      abb43(16)=abb43(16)*spak1k7
      abb43(31)=abb43(40)*abb43(20)
      abb43(31)=abb43(31)+abb43(42)
      abb43(42)=abb43(31)*spak1k2
      abb43(13)=abb43(13)*spbl6l5
      abb43(13)=abb43(42)-abb43(13)
      abb43(13)=abb43(13)*spal6k7
      abb43(31)=spal5k7*abb43(31)*abb43(41)
      abb43(13)=abb43(16)+abb43(13)+abb43(31)
      abb43(16)=spbk7k2*abb43(13)
      abb43(11)=abb43(11)*abb43(40)*spak1l6
      abb43(12)=abb43(12)+abb43(20)
      abb43(12)=abb43(7)*abb43(22)*abb43(12)*abb43(17)*spak1l6
      abb43(11)=abb43(12)+abb43(11)
      abb43(12)=-es712+es71+es12
      abb43(12)=abb43(11)*abb43(12)
      abb43(12)=abb43(16)+abb43(12)
      abb43(12)=16.0_ki*abb43(12)
      abb43(16)=abb43(36)*spbl5k1
      abb43(17)=abb43(16)-abb43(33)
      abb43(17)=abb43(17)*spak1e7
      abb43(31)=abb43(36)*spbl6l5
      abb43(33)=abb43(29)*spak1k2
      abb43(31)=-abb43(33)+abb43(31)-abb43(39)
      abb43(33)=abb43(31)*spal6e7
      abb43(29)=abb43(41)*abb43(29)
      abb43(29)=abb43(29)+abb43(9)
      abb43(29)=abb43(29)*spal5e7
      abb43(17)=-abb43(29)+abb43(17)+abb43(33)
      abb43(17)=16.0_ki*abb43(17)
      abb43(11)=-spak2k7*abb43(11)
      abb43(11)=abb43(11)-abb43(13)
      abb43(11)=spbk7e7*abb43(11)
      abb43(13)=-spak2l6*abb43(31)
      abb43(29)=NC-abb43(4)
      abb43(29)=abb43(29)*c1*abb43(14)
      abb43(10)=abb43(10)*abb43(14)
      abb43(10)=abb43(10)+abb43(29)
      abb43(10)=abb43(41)*abb43(10)
      abb43(14)=-abb43(8)*abb43(39)
      abb43(29)=-spak1k2*abb43(32)
      abb43(14)=abb43(14)+abb43(29)
      abb43(14)=es12*abb43(14)
      abb43(16)=spak1k2*abb43(16)
      abb43(10)=abb43(13)+abb43(16)+abb43(14)+abb43(11)+abb43(10)
      abb43(10)=8.0_ki*abb43(10)
      abb43(11)=-spae7k7*abb43(39)
      abb43(13)=abb43(35)*spae7k7
      abb43(14)=abb43(20)*spae7k7
      abb43(15)=abb43(14)*abb43(15)
      abb43(13)=abb43(15)+abb43(13)
      abb43(15)=spbl6l5*abb43(13)
      abb43(16)=abb43(14)*abb43(24)
      abb43(20)=-spak1k2*abb43(16)
      abb43(11)=abb43(15)+abb43(11)+abb43(20)
      abb43(11)=4.0_ki*abb43(11)
      abb43(9)=-spae7k7*abb43(9)
      abb43(15)=-abb43(41)*abb43(16)
      abb43(9)=abb43(9)+abb43(15)
      abb43(9)=4.0_ki*abb43(9)
      abb43(15)=-spae7k7*abb43(25)
      abb43(19)=-spae7k7*abb43(19)
      abb43(18)=-abb43(14)*abb43(18)
      abb43(18)=abb43(19)+abb43(18)
      abb43(18)=abb43(7)*abb43(22)*abb43(18)
      abb43(14)=-abb43(14)*abb43(26)
      abb43(14)=abb43(18)+abb43(15)+abb43(14)
      abb43(14)=4.0_ki*abb43(14)
      abb43(15)=-abb43(21)*abb43(38)
      abb43(18)=-spae7k7*abb43(27)
      abb43(16)=-abb43(8)*abb43(16)
      abb43(16)=abb43(18)+abb43(16)
      abb43(16)=es12*abb43(16)
      abb43(13)=spbl5k1*abb43(13)
      abb43(13)=abb43(16)+abb43(13)
      abb43(13)=4.0_ki*abb43(13)
      abb43(16)=-abb43(34)*abb43(38)
      R2d43=abb43(30)
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd43h1
