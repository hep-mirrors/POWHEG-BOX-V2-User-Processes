module     p1_dbarc_epnebbbarg_abbrevd12h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(50), public :: abb12
   complex(ki), public :: R2d12
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
      abb12(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb12(2)=NC**(-1)
      abb12(3)=es56**(-1)
      abb12(4)=es71**(-1)
      abb12(5)=spbl5k2**(-1)
      abb12(6)=spbl6k2**(-1)
      abb12(7)=c3*abb12(2)
      abb12(8)=c4*abb12(2)**2
      abb12(7)=abb12(7)-abb12(8)
      abb12(8)=-abb12(5)*abb12(7)
      abb12(9)=spbk3k2**2
      abb12(10)=TR*gW
      abb12(10)=mB*i_*spak1e7*CVDC*abb12(3)*abb12(1)*abb12(10)**2
      abb12(11)=abb12(10)*spbk7e7
      abb12(12)=abb12(11)*abb12(4)
      abb12(13)=abb12(9)*abb12(12)
      abb12(14)=-abb12(13)*abb12(8)
      abb12(15)=abb12(14)*spak3k4
      abb12(16)=abb12(15)*spak1l6
      abb12(17)=-abb12(6)*abb12(7)
      abb12(13)=-abb12(13)*abb12(17)
      abb12(18)=abb12(13)*spak3k4
      abb12(19)=abb12(18)*spak1l5
      abb12(16)=abb12(16)+abb12(19)
      abb12(19)=spak2k7*spbk2k1
      abb12(20)=abb12(16)*abb12(19)
      abb12(21)=spal5k7*spak3k4
      abb12(13)=abb12(13)*abb12(21)
      abb12(22)=spal6k7*spak3k4
      abb12(14)=abb12(14)*abb12(22)
      abb12(13)=abb12(13)+abb12(14)
      abb12(10)=abb12(10)*abb12(4)
      abb12(14)=abb12(10)*abb12(7)
      abb12(23)=-abb12(5)*abb12(14)
      abb12(24)=-abb12(9)*abb12(23)
      abb12(25)=spak1l6*spbe7k1
      abb12(26)=abb12(24)*abb12(25)
      abb12(14)=-abb12(6)*abb12(14)
      abb12(27)=-abb12(9)*abb12(14)
      abb12(28)=spak1l5*spbe7k1
      abb12(29)=abb12(27)*abb12(28)
      abb12(26)=abb12(26)+abb12(29)
      abb12(26)=abb12(26)*spak3k4
      abb12(29)=-abb12(13)-abb12(26)
      abb12(29)=es12*abb12(29)
      abb12(30)=es712*abb12(13)
      abb12(31)=abb12(22)*abb12(8)
      abb12(32)=abb12(21)*abb12(17)
      abb12(31)=abb12(31)+abb12(32)
      abb12(9)=abb12(31)*abb12(9)*abb12(11)
      abb12(22)=abb12(24)*abb12(22)
      abb12(21)=abb12(27)*abb12(21)
      abb12(21)=abb12(22)+abb12(21)
      abb12(21)=abb12(21)*spbe7k1
      abb12(22)=spak1k2*spbk7k2
      abb12(31)=abb12(21)*abb12(22)
      abb12(9)=abb12(30)+abb12(29)+abb12(31)+abb12(20)+abb12(9)
      abb12(9)=4.0_ki*abb12(9)
      abb12(13)=8.0_ki*abb12(13)
      abb12(20)=8.0_ki*abb12(26)
      abb12(10)=spbk3k2*abb12(10)
      abb12(26)=abb12(10)*spbk7e7
      abb12(29)=-abb12(26)*abb12(17)
      abb12(30)=abb12(29)*spal5k7
      abb12(26)=-abb12(26)*abb12(8)
      abb12(31)=abb12(26)*spal6k7
      abb12(30)=abb12(30)+abb12(31)
      abb12(31)=abb12(30)*spak4k7
      abb12(7)=-spbe7k1*abb12(10)*abb12(7)
      abb12(10)=-abb12(6)*abb12(7)
      abb12(32)=abb12(10)*spal5k7
      abb12(7)=-abb12(5)*abb12(7)
      abb12(33)=abb12(7)*spal6k7
      abb12(32)=abb12(32)+abb12(33)
      abb12(33)=abb12(32)*spak1k4
      abb12(31)=abb12(31)-abb12(33)
      abb12(33)=-spbk7k2*abb12(31)
      abb12(34)=abb12(10)*spak1l5
      abb12(35)=abb12(7)*spak1l6
      abb12(34)=abb12(34)+abb12(35)
      abb12(35)=abb12(34)*spak1k4
      abb12(36)=abb12(29)*spak1l5
      abb12(37)=abb12(26)*spak1l6
      abb12(36)=abb12(36)+abb12(37)
      abb12(37)=abb12(36)*spak4k7
      abb12(35)=abb12(35)-abb12(37)
      abb12(37)=-spbk2k1*abb12(35)
      abb12(33)=abb12(33)+abb12(37)
      abb12(33)=4.0_ki*abb12(33)
      abb12(37)=abb12(29)*spak4l5
      abb12(38)=abb12(26)*spak4l6
      abb12(37)=abb12(37)+abb12(38)
      abb12(38)=8.0_ki*abb12(37)
      abb12(37)=-4.0_ki*abb12(37)
      abb12(16)=4.0_ki*abb12(16)
      abb12(15)=spak2k7*abb12(15)
      abb12(39)=spak1k2*spak3k4*spbe7k1
      abb12(24)=-abb12(24)*abb12(39)
      abb12(15)=abb12(15)+abb12(24)
      abb12(15)=4.0_ki*abb12(15)
      abb12(24)=abb12(26)*spak4k7
      abb12(40)=abb12(7)*spak1k4
      abb12(24)=abb12(24)-abb12(40)
      abb12(24)=8.0_ki*abb12(24)
      abb12(40)=4.0_ki*spak3k4
      abb12(41)=-abb12(26)*abb12(40)
      abb12(42)=4.0_ki*spak2k4
      abb12(43)=abb12(26)*abb12(42)
      abb12(18)=spak2k7*abb12(18)
      abb12(27)=-abb12(27)*abb12(39)
      abb12(18)=abb12(18)+abb12(27)
      abb12(18)=4.0_ki*abb12(18)
      abb12(27)=abb12(29)*spak4k7
      abb12(39)=abb12(10)*spak1k4
      abb12(27)=abb12(27)-abb12(39)
      abb12(27)=8.0_ki*abb12(27)
      abb12(39)=-abb12(29)*abb12(40)
      abb12(44)=abb12(29)*abb12(42)
      abb12(25)=abb12(23)*abb12(25)
      abb12(28)=abb12(14)*abb12(28)
      abb12(45)=-abb12(12)*abb12(17)
      abb12(46)=abb12(45)*spal5k7
      abb12(12)=-abb12(12)*abb12(8)
      abb12(47)=abb12(12)*spal6k7
      abb12(25)=abb12(28)+abb12(25)+abb12(46)+abb12(47)
      abb12(28)=-spbk7k2*abb12(25)
      abb12(46)=spak4l6*abb12(12)
      abb12(47)=spak4l5*abb12(45)
      abb12(46)=abb12(47)+abb12(46)
      abb12(46)=spbk4k2*abb12(46)
      abb12(47)=spak3l6*abb12(26)
      abb12(48)=spak3l5*abb12(29)
      abb12(28)=abb12(48)+abb12(47)+abb12(28)+abb12(46)
      abb12(28)=4.0_ki*abb12(28)
      abb12(46)=-spak4k7*abb12(12)
      abb12(23)=abb12(23)*spbe7k1
      abb12(47)=-spak1k4*abb12(23)
      abb12(46)=abb12(46)+abb12(47)
      abb12(46)=spbk4k2*abb12(46)
      abb12(47)=spbk7k2*abb12(23)
      abb12(48)=spbk2k1*abb12(12)
      abb12(47)=abb12(47)+abb12(48)
      abb12(47)=spak1k7*abb12(47)
      abb12(48)=-spak3k7*abb12(26)
      abb12(49)=spak1k3*abb12(7)
      abb12(46)=abb12(49)+abb12(47)+abb12(46)+abb12(48)
      abb12(46)=4.0_ki*abb12(46)
      abb12(12)=4.0_ki*abb12(12)
      abb12(47)=-spak4k7*abb12(45)
      abb12(14)=abb12(14)*spbe7k1
      abb12(48)=-spak1k4*abb12(14)
      abb12(47)=abb12(47)+abb12(48)
      abb12(47)=spbk4k2*abb12(47)
      abb12(48)=spbk7k2*abb12(14)
      abb12(49)=spbk2k1*abb12(45)
      abb12(48)=abb12(48)+abb12(49)
      abb12(48)=spak1k7*abb12(48)
      abb12(49)=-spak3k7*abb12(29)
      abb12(50)=spak1k3*abb12(10)
      abb12(47)=abb12(50)+abb12(48)+abb12(47)+abb12(49)
      abb12(47)=4.0_ki*abb12(47)
      abb12(45)=4.0_ki*abb12(45)
      abb12(48)=abb12(34)+abb12(30)
      abb12(49)=-es123+2.0_ki*es12
      abb12(48)=abb12(48)*abb12(49)
      abb12(8)=-spal6k7*abb12(8)
      abb12(17)=-spal5k7*abb12(17)
      abb12(8)=abb12(8)+abb12(17)
      abb12(8)=abb12(8)*abb12(11)*spbk3k2
      abb12(11)=es456-2.0_ki*es712
      abb12(11)=abb12(30)*abb12(11)
      abb12(17)=-spak3k7*spbk3k1
      abb12(17)=abb12(17)-abb12(19)
      abb12(17)=abb12(36)*abb12(17)
      abb12(19)=-spak1k3*spbk7k3
      abb12(19)=abb12(19)-abb12(22)
      abb12(19)=abb12(32)*abb12(19)
      abb12(22)=es23*abb12(34)
      abb12(8)=abb12(22)+abb12(19)+abb12(17)+abb12(11)+abb12(48)+abb12(8)
      abb12(8)=4.0_ki*abb12(8)
      abb12(11)=abb12(34)-abb12(30)
      abb12(17)=8.0_ki*abb12(11)
      abb12(11)=4.0_ki*abb12(11)
      abb12(19)=-spak2k7*abb12(26)
      abb12(22)=spak1k2*abb12(7)
      abb12(19)=abb12(19)+abb12(22)
      abb12(19)=8.0_ki*abb12(19)
      abb12(22)=-spak2k7*abb12(29)
      abb12(26)=spak1k2*abb12(10)
      abb12(22)=abb12(22)+abb12(26)
      abb12(22)=8.0_ki*abb12(22)
      abb12(26)=4.0_ki*spbk4k2*abb12(25)
      abb12(29)=-spbk7k3*abb12(31)
      abb12(30)=-spbk3k1*abb12(35)
      abb12(29)=abb12(29)+abb12(30)
      abb12(29)=4.0_ki*abb12(29)
      abb12(21)=4.0_ki*abb12(21)
      abb12(30)=-abb12(7)*abb12(40)
      abb12(31)=-abb12(10)*abb12(40)
      abb12(32)=abb12(10)*spak4l5
      abb12(34)=abb12(7)*spak4l6
      abb12(32)=abb12(32)+abb12(34)
      abb12(34)=8.0_ki*abb12(32)
      abb12(32)=-4.0_ki*abb12(32)
      abb12(35)=abb12(7)*abb12(42)
      abb12(36)=abb12(10)*abb12(42)
      abb12(25)=-spbk2k1*abb12(25)
      abb12(40)=-spak4l6*abb12(23)
      abb12(42)=-spak4l5*abb12(14)
      abb12(40)=abb12(42)+abb12(40)
      abb12(40)=spbk4k2*abb12(40)
      abb12(7)=spak3l6*abb12(7)
      abb12(10)=spak3l5*abb12(10)
      abb12(7)=abb12(10)+abb12(7)+abb12(25)+abb12(40)
      abb12(7)=4.0_ki*abb12(7)
      abb12(10)=-4.0_ki*abb12(23)
      abb12(14)=-4.0_ki*abb12(14)
      R2d12=0.0_ki
      rat2 = rat2 + R2d12
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='12' value='", &
          & R2d12, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd12h0
