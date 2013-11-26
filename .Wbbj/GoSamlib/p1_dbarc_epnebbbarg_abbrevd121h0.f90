module     p1_dbarc_epnebbbarg_abbrevd121h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(38), public :: abb121
   complex(ki), public :: R2d121
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
      abb121(1)=1.0_ki/(-mB**2+es67)
      abb121(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb121(3)=1.0_ki/(es34+es567-es12-es234)
      abb121(4)=NC**(-1)
      abb121(5)=spbl6k2**(-1)
      abb121(6)=sqrt(mB**2)
      abb121(7)=spak2l6**(-1)
      abb121(8)=abb121(4)**2
      abb121(9)=abb121(8)*c2
      abb121(10)=TR*gW
      abb121(10)=CVDC*i_*spak1k4*abb121(3)*abb121(2)*abb121(1)*abb121(10)**2
      abb121(11)=abb121(10)*spbe7k2
      abb121(12)=abb121(9)*abb121(11)
      abb121(13)=abb121(5)*mB
      abb121(14)=abb121(12)*abb121(13)
      abb121(15)=abb121(10)*c3
      abb121(16)=abb121(15)*spbe7k2
      abb121(17)=abb121(16)*abb121(13)
      abb121(18)=abb121(17)*NC
      abb121(19)=2.0_ki*abb121(4)
      abb121(17)=abb121(19)*abb121(17)
      abb121(14)=-abb121(17)+abb121(14)+abb121(18)
      abb121(17)=spbk3k1*abb121(14)
      abb121(18)=abb121(17)*spae7k7
      abb121(20)=abb121(18)*spak1l5
      abb121(14)=spbk4k3*abb121(14)
      abb121(21)=abb121(14)*spae7k7
      abb121(22)=abb121(21)*spak4l5
      abb121(20)=abb121(20)+abb121(22)
      abb121(22)=abb121(20)*spbk7k2
      abb121(23)=abb121(16)*spbk3k1
      abb121(24)=abb121(6)*spal6e7
      abb121(25)=abb121(23)*abb121(24)
      abb121(26)=spal6e7*mB
      abb121(27)=spbe7k2*abb121(26)
      abb121(28)=abb121(15)*spbk3k1
      abb121(29)=abb121(27)*abb121(28)
      abb121(25)=abb121(25)-abb121(29)
      abb121(19)=abb121(19)-NC
      abb121(25)=-abb121(25)*abb121(19)
      abb121(26)=abb121(26)-abb121(24)
      abb121(8)=c2*abb121(26)*abb121(8)*abb121(11)
      abb121(11)=-spbk3k1*abb121(8)
      abb121(11)=abb121(11)+abb121(25)
      abb121(25)=abb121(11)*spak1l5
      abb121(16)=abb121(16)*spbk4k3
      abb121(26)=abb121(16)*abb121(24)
      abb121(15)=abb121(15)*spbk4k3
      abb121(27)=abb121(27)*abb121(15)
      abb121(26)=abb121(26)-abb121(27)
      abb121(26)=-abb121(26)*abb121(19)
      abb121(8)=-spbk4k3*abb121(8)
      abb121(8)=abb121(8)+abb121(26)
      abb121(26)=abb121(8)*spak4l5
      abb121(22)=abb121(22)+abb121(25)+abb121(26)
      abb121(25)=-4.0_ki*spbl5k2*spak2l5*abb121(22)
      abb121(22)=-8.0_ki*abb121(22)
      abb121(26)=abb121(14)*spak4e7
      abb121(27)=abb121(17)*spak1e7
      abb121(26)=abb121(26)+abb121(27)
      abb121(27)=abb121(26)*abb121(6)**2
      abb121(20)=spbk7l5*abb121(20)
      abb121(14)=abb121(14)*spal6e7
      abb121(29)=-spak4l5*abb121(14)
      abb121(17)=abb121(17)*spal6e7
      abb121(30)=-spak1l5*abb121(17)
      abb121(29)=abb121(29)+abb121(30)
      abb121(29)=spbl6l5*abb121(29)
      abb121(30)=-abb121(24)*abb121(19)
      abb121(31)=-abb121(16)*abb121(30)
      abb121(32)=abb121(12)*abb121(24)
      abb121(33)=-spbk4k3*abb121(32)
      abb121(31)=abb121(33)+abb121(31)
      abb121(31)=spak2k4*abb121(31)
      abb121(33)=abb121(23)*abb121(30)
      abb121(32)=spbk3k1*abb121(32)
      abb121(32)=abb121(32)+abb121(33)
      abb121(32)=spak1k2*abb121(32)
      abb121(31)=abb121(32)+abb121(31)
      abb121(31)=abb121(7)*abb121(31)*abb121(5)*mB**2
      abb121(32)=-abb121(15)*abb121(30)
      abb121(24)=abb121(9)*abb121(24)
      abb121(33)=abb121(10)*spbk4k3
      abb121(34)=abb121(24)*abb121(33)
      abb121(32)=abb121(32)-abb121(34)
      abb121(34)=-spak4l5*abb121(32)
      abb121(30)=-abb121(28)*abb121(30)
      abb121(35)=abb121(10)*spbk3k1
      abb121(24)=abb121(24)*abb121(35)
      abb121(24)=abb121(30)-abb121(24)
      abb121(30)=-spak1l5*abb121(24)
      abb121(30)=abb121(34)+abb121(30)
      abb121(30)=spbe7l5*abb121(30)
      abb121(34)=spak4l6*spbe7l6
      abb121(36)=spak4k7*spbk7e7
      abb121(34)=abb121(34)-abb121(36)
      abb121(36)=-abb121(32)*abb121(34)
      abb121(37)=spak1l6*spbe7l6
      abb121(38)=spak1k7*spbk7e7
      abb121(38)=abb121(38)-abb121(37)
      abb121(38)=abb121(24)*abb121(38)
      abb121(20)=abb121(29)+abb121(20)+abb121(30)+abb121(38)+abb121(36)+abb121(&
      &31)+abb121(27)
      abb121(20)=4.0_ki*abb121(20)
      abb121(13)=-abb121(13)*abb121(19)
      abb121(27)=-abb121(28)*abb121(13)
      abb121(10)=abb121(10)*mB
      abb121(29)=abb121(5)*abb121(9)*abb121(10)
      abb121(30)=abb121(29)*spbk3k1
      abb121(27)=-abb121(30)+abb121(27)
      abb121(30)=abb121(27)*spak1k7
      abb121(13)=-abb121(15)*abb121(13)
      abb121(29)=abb121(29)*spbk4k3
      abb121(13)=-abb121(29)+abb121(13)
      abb121(29)=spak4k7*abb121(13)
      abb121(29)=abb121(30)+abb121(29)
      abb121(29)=spbk7k2*abb121(29)
      abb121(31)=abb121(15)*mB
      abb121(15)=abb121(15)*abb121(6)
      abb121(31)=abb121(31)-abb121(15)
      abb121(31)=abb121(31)*abb121(19)
      abb121(36)=abb121(33)*abb121(6)
      abb121(38)=-spbk4k3*abb121(10)
      abb121(36)=abb121(38)+abb121(36)
      abb121(36)=abb121(36)*abb121(9)
      abb121(31)=abb121(36)+abb121(31)
      abb121(31)=spak4l6*abb121(31)
      abb121(36)=abb121(28)*mB
      abb121(28)=abb121(28)*abb121(6)
      abb121(36)=abb121(36)-abb121(28)
      abb121(36)=abb121(36)*abb121(19)
      abb121(38)=abb121(35)*abb121(6)
      abb121(10)=-spbk3k1*abb121(10)
      abb121(10)=abb121(10)+abb121(38)
      abb121(10)=abb121(10)*abb121(9)
      abb121(10)=abb121(10)+abb121(36)
      abb121(10)=spak1l6*abb121(10)
      abb121(10)=abb121(31)+abb121(10)+abb121(29)
      abb121(10)=8.0_ki*abb121(10)
      abb121(26)=8.0_ki*abb121(26)
      abb121(29)=abb121(5)**2*mB**3
      abb121(16)=abb121(19)*abb121(29)*abb121(16)
      abb121(12)=abb121(29)*abb121(12)
      abb121(31)=abb121(12)*spbk4k3
      abb121(16)=abb121(31)-abb121(16)
      abb121(31)=spak4e7*abb121(16)
      abb121(23)=-abb121(19)*abb121(29)*abb121(23)
      abb121(12)=abb121(12)*spbk3k1
      abb121(12)=abb121(12)+abb121(23)
      abb121(23)=spak1e7*abb121(12)
      abb121(23)=abb121(31)+abb121(23)
      abb121(23)=8.0_ki*abb121(7)*abb121(23)
      abb121(15)=abb121(15)*abb121(19)
      abb121(9)=abb121(9)*abb121(6)
      abb121(29)=-abb121(33)*abb121(9)
      abb121(15)=abb121(29)+abb121(15)
      abb121(15)=spak4e7*abb121(15)
      abb121(19)=abb121(28)*abb121(19)
      abb121(9)=-abb121(35)*abb121(9)
      abb121(9)=abb121(9)+abb121(19)
      abb121(9)=spak1e7*abb121(9)
      abb121(9)=abb121(15)+abb121(9)
      abb121(9)=4.0_ki*abb121(9)
      abb121(15)=4.0_ki*abb121(32)
      abb121(16)=spak2k4*abb121(16)
      abb121(12)=-spak1k2*abb121(12)
      abb121(12)=abb121(12)+abb121(16)
      abb121(12)=abb121(7)*abb121(12)
      abb121(13)=abb121(13)*abb121(34)
      abb121(16)=abb121(27)*abb121(37)
      abb121(19)=-spbk7e7*abb121(30)
      abb121(12)=abb121(19)+abb121(16)+abb121(13)+abb121(12)
      abb121(12)=4.0_ki*abb121(12)
      abb121(13)=4.0_ki*abb121(24)
      abb121(16)=4.0_ki*abb121(21)
      abb121(14)=4.0_ki*abb121(14)
      abb121(19)=-spbk7k2*abb121(21)
      abb121(8)=-abb121(8)+abb121(19)
      abb121(19)=4.0_ki*spak2l5
      abb121(8)=abb121(8)*abb121(19)
      abb121(21)=4.0_ki*abb121(18)
      abb121(17)=4.0_ki*abb121(17)
      abb121(18)=-spbk7k2*abb121(18)
      abb121(11)=-abb121(11)+abb121(18)
      abb121(11)=abb121(11)*abb121(19)
      R2d121=0.0_ki
      rat2 = rat2 + R2d121
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='121' value='", &
          & R2d121, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd121h0
