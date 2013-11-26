module     p1_dbarc_epnebbbarg_abbrevd124h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(49), public :: abb124
   complex(ki), public :: R2d124
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
      abb124(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb124(2)=1.0_ki/(-es71+es56-es567+es234)
      abb124(3)=NC**(-1)
      abb124(4)=es56**(-1)
      abb124(5)=spbl5k2**(-1)
      abb124(6)=spbl6k2**(-1)
      abb124(7)=abb124(3)*c1
      abb124(8)=c4*abb124(3)**2
      abb124(7)=abb124(7)-abb124(8)
      abb124(8)=TR*gW
      abb124(7)=abb124(7)*CVDC*i_*mB*abb124(4)*abb124(2)*abb124(1)*abb124(8)**2
      abb124(8)=spak1l6*abb124(7)
      abb124(9)=abb124(8)*abb124(5)
      abb124(7)=spak1l5*abb124(7)
      abb124(10)=abb124(7)*abb124(6)
      abb124(11)=abb124(9)+abb124(10)
      abb124(12)=abb124(11)*spbk2k1
      abb124(13)=spbk7e7*spak4k7
      abb124(14)=-abb124(13)*abb124(12)
      abb124(15)=abb124(11)*spbe7k3*spbk2k1
      abb124(16)=spak3k4*abb124(15)
      abb124(14)=abb124(14)+abb124(16)
      abb124(14)=spak1e7*abb124(14)
      abb124(9)=abb124(9)*spbl6k2
      abb124(9)=abb124(9)+abb124(7)
      abb124(16)=spak3k4*spbe7k3
      abb124(16)=abb124(16)-abb124(13)
      abb124(17)=spal6e7*abb124(16)*abb124(9)
      abb124(10)=abb124(10)*spbl5k2
      abb124(10)=abb124(10)+abb124(8)
      abb124(16)=spal5e7*abb124(16)*abb124(10)
      abb124(14)=abb124(14)+abb124(17)+abb124(16)
      abb124(14)=spbk3k2*abb124(14)
      abb124(16)=abb124(7)*spak4k7
      abb124(17)=-spbe7k3*abb124(16)
      abb124(18)=abb124(8)*spak4k7
      abb124(19)=spbl6k2*abb124(5)
      abb124(20)=abb124(19)*spbe7k3
      abb124(21)=-abb124(20)*abb124(18)
      abb124(17)=abb124(17)+abb124(21)
      abb124(17)=spal6e7*abb124(17)
      abb124(21)=-spbe7k3*abb124(18)
      abb124(22)=spbl5k2*abb124(6)
      abb124(23)=abb124(22)*spbe7k3
      abb124(24)=-abb124(23)*abb124(16)
      abb124(21)=abb124(21)+abb124(24)
      abb124(21)=spal5e7*abb124(21)
      abb124(24)=spak1e7*abb124(15)
      abb124(25)=-spak4k7*abb124(24)
      abb124(17)=abb124(25)+abb124(17)+abb124(21)
      abb124(17)=spbk7k2*abb124(17)
      abb124(14)=abb124(17)+abb124(14)
      abb124(14)=4.0_ki*abb124(14)
      abb124(13)=abb124(13)*spbk7k3
      abb124(17)=spak3k4*spbk7k3
      abb124(21)=abb124(17)*spbe7k3
      abb124(13)=abb124(13)+abb124(21)
      abb124(9)=abb124(13)*abb124(9)
      abb124(21)=spal6k7*abb124(9)
      abb124(10)=abb124(13)*abb124(10)
      abb124(25)=spal5k7*abb124(10)
      abb124(13)=abb124(12)*abb124(13)
      abb124(26)=spak1k7*abb124(13)
      abb124(21)=abb124(26)+abb124(21)+abb124(25)
      abb124(21)=4.0_ki*abb124(21)
      abb124(25)=abb124(8)*spbe7k3
      abb124(23)=abb124(23)*abb124(7)
      abb124(23)=abb124(25)+abb124(23)
      abb124(25)=abb124(23)*spak4l5
      abb124(26)=abb124(7)*spbe7k3
      abb124(20)=abb124(20)*abb124(8)
      abb124(20)=abb124(26)+abb124(20)
      abb124(26)=abb124(20)*spak4l6
      abb124(15)=abb124(15)*spak1k4
      abb124(15)=-abb124(15)+abb124(25)+abb124(26)
      abb124(25)=-8.0_ki*abb124(15)
      abb124(15)=-4.0_ki*abb124(15)
      abb124(9)=-spal6e7*abb124(9)
      abb124(10)=-spal5e7*abb124(10)
      abb124(13)=-spak1e7*abb124(13)
      abb124(9)=abb124(13)+abb124(9)+abb124(10)
      abb124(9)=4.0_ki*abb124(9)
      abb124(10)=abb124(8)*abb124(19)
      abb124(13)=abb124(10)+abb124(7)
      abb124(19)=spbk7k3*abb124(13)
      abb124(26)=spak4l6*abb124(19)
      abb124(22)=abb124(7)*abb124(22)
      abb124(27)=abb124(22)+abb124(8)
      abb124(28)=spbk7k3*abb124(27)
      abb124(29)=spak4l5*abb124(28)
      abb124(30)=-spak1k4*abb124(12)*spbk7k3
      abb124(26)=abb124(30)+abb124(26)+abb124(29)
      abb124(26)=16.0_ki*abb124(26)
      abb124(29)=spak4k7*spbk7k3
      abb124(30)=abb124(29)*spbe7k2
      abb124(31)=abb124(7)*abb124(30)
      abb124(32)=spbe7k2*abb124(10)
      abb124(33)=abb124(29)*abb124(32)
      abb124(31)=abb124(31)+abb124(33)
      abb124(33)=4.0_ki*spae7k7
      abb124(31)=abb124(31)*abb124(33)
      abb124(10)=abb124(10)*spak4k7
      abb124(10)=abb124(10)+abb124(16)
      abb124(16)=8.0_ki*spbk3k2
      abb124(34)=abb124(10)*abb124(16)
      abb124(35)=abb124(17)*spbe7k2
      abb124(36)=-abb124(7)*abb124(35)
      abb124(37)=-abb124(17)*abb124(32)
      abb124(36)=abb124(36)+abb124(37)
      abb124(36)=abb124(36)*abb124(33)
      abb124(37)=spbk3k2*spak3k4
      abb124(38)=-abb124(13)*abb124(37)
      abb124(10)=-spbk7k2*abb124(10)
      abb124(10)=abb124(38)+abb124(10)
      abb124(10)=8.0_ki*abb124(10)
      abb124(7)=abb124(7)*spbe7k2
      abb124(7)=abb124(7)+abb124(32)
      abb124(32)=8.0_ki*spak4e7
      abb124(38)=abb124(7)*abb124(32)
      abb124(39)=4.0_ki*spak4e7
      abb124(40)=abb124(7)*abb124(39)
      abb124(30)=abb124(8)*abb124(30)
      abb124(41)=spbe7k2*abb124(22)
      abb124(42)=abb124(29)*abb124(41)
      abb124(30)=abb124(30)+abb124(42)
      abb124(30)=abb124(30)*abb124(33)
      abb124(22)=abb124(22)*spak4k7
      abb124(18)=abb124(22)+abb124(18)
      abb124(22)=abb124(18)*abb124(16)
      abb124(35)=-abb124(8)*abb124(35)
      abb124(42)=-abb124(17)*abb124(41)
      abb124(35)=abb124(35)+abb124(42)
      abb124(35)=abb124(35)*abb124(33)
      abb124(42)=-abb124(27)*abb124(37)
      abb124(18)=-spbk7k2*abb124(18)
      abb124(18)=abb124(42)+abb124(18)
      abb124(18)=8.0_ki*abb124(18)
      abb124(8)=abb124(8)*spbe7k2
      abb124(8)=abb124(8)+abb124(41)
      abb124(41)=abb124(8)*abb124(32)
      abb124(42)=abb124(8)*abb124(39)
      abb124(43)=-spal6e7*abb124(7)
      abb124(44)=-spal5e7*abb124(8)
      abb124(11)=abb124(11)*spbe7k2*spbk2k1
      abb124(45)=-spak1e7*abb124(11)
      abb124(43)=abb124(45)+abb124(43)+abb124(44)
      abb124(43)=4.0_ki*abb124(43)
      abb124(44)=spbk7e7*abb124(13)
      abb124(45)=spal6k7*abb124(44)
      abb124(46)=spbk7e7*abb124(27)
      abb124(47)=spal5k7*abb124(46)
      abb124(48)=abb124(12)*spak1k7
      abb124(49)=spbk7e7*abb124(48)
      abb124(45)=abb124(49)+abb124(45)+abb124(47)
      abb124(45)=4.0_ki*abb124(45)
      abb124(44)=-spal6e7*abb124(44)
      abb124(46)=-spal5e7*abb124(46)
      abb124(47)=-spak1e7*abb124(12)*spbk7e7
      abb124(44)=abb124(47)+abb124(44)+abb124(46)
      abb124(44)=4.0_ki*abb124(44)
      abb124(7)=abb124(7)*abb124(33)
      abb124(13)=8.0_ki*abb124(13)
      abb124(8)=abb124(8)*abb124(33)
      abb124(27)=8.0_ki*abb124(27)
      abb124(19)=spal6k7*abb124(19)
      abb124(28)=spal5k7*abb124(28)
      abb124(46)=spbk7k3*abb124(48)
      abb124(19)=abb124(46)+abb124(19)+abb124(28)
      abb124(19)=16.0_ki*abb124(19)
      abb124(23)=abb124(23)*spal5e7
      abb124(20)=abb124(20)*spal6e7
      abb124(20)=abb124(24)+abb124(23)+abb124(20)
      abb124(23)=-8.0_ki*abb124(20)
      abb124(20)=-4.0_ki*abb124(20)
      abb124(24)=abb124(33)*abb124(11)
      abb124(28)=abb124(29)*abb124(24)
      abb124(29)=spak4k7*abb124(12)
      abb124(16)=abb124(16)*abb124(29)
      abb124(17)=-abb124(17)*abb124(24)
      abb124(33)=-abb124(12)*abb124(37)
      abb124(29)=-spbk7k2*abb124(29)
      abb124(29)=abb124(33)+abb124(29)
      abb124(29)=8.0_ki*abb124(29)
      abb124(32)=abb124(32)*abb124(11)
      abb124(11)=abb124(39)*abb124(11)
      abb124(12)=8.0_ki*abb124(12)
      R2d124=0.0_ki
      rat2 = rat2 + R2d124
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='124' value='", &
          & R2d124, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd124h0
