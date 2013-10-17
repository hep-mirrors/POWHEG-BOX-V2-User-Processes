module     p1_dbarc_epnebbbarg_abbrevd98h0
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(57), public :: abb98
   complex(ki), public :: R2d98
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
      abb98(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb98(2)=1.0_ki/(es34+es567-es12-es234)
      abb98(3)=1.0_ki/(mB**2-es67-es56+es567)
      abb98(4)=NC**(-1)
      abb98(5)=spbl5k2**(-1)
      abb98(6)=sqrt(mB**2)
      abb98(7)=spak2l5**(-1)
      abb98(8)=spbl6k2**(-1)
      abb98(9)=TR*gW
      abb98(9)=CVDC*i_*spak1k4*abb98(3)*abb98(2)*abb98(1)*abb98(9)**2
      abb98(10)=abb98(9)*spal5e7
      abb98(11)=abb98(10)*spbk4k3
      abb98(12)=abb98(11)*abb98(6)
      abb98(13)=c1*spbe7k2
      abb98(14)=abb98(12)*abb98(13)
      abb98(15)=abb98(13)*spbk4k3
      abb98(16)=abb98(10)*mB
      abb98(17)=abb98(15)*abb98(16)
      abb98(14)=abb98(14)-abb98(17)
      abb98(14)=abb98(14)*NC
      abb98(18)=abb98(4)**2
      abb98(19)=abb98(18)*spbe7k2
      abb98(20)=abb98(12)*abb98(19)
      abb98(21)=abb98(16)*spbk4k3
      abb98(22)=abb98(21)*abb98(19)
      abb98(20)=abb98(20)-abb98(22)
      abb98(20)=abb98(20)*c2
      abb98(23)=abb98(13)*abb98(4)
      abb98(24)=abb98(12)*abb98(23)
      abb98(25)=abb98(17)*abb98(4)
      abb98(24)=abb98(24)-abb98(25)
      abb98(14)=-abb98(20)-abb98(14)+2.0_ki*abb98(24)
      abb98(20)=-NC+2.0_ki*abb98(4)
      abb98(24)=abb98(9)*mB
      abb98(26)=abb98(24)*abb98(5)
      abb98(27)=-abb98(20)*abb98(26)*abb98(15)
      abb98(28)=abb98(19)*c2
      abb98(29)=abb98(28)*abb98(26)
      abb98(30)=abb98(29)*spbk4k3
      abb98(27)=abb98(30)+abb98(27)
      abb98(30)=spae7k7*spbk7k2
      abb98(31)=abb98(27)*abb98(30)
      abb98(32)=abb98(31)-abb98(14)
      abb98(33)=abb98(32)*spak4l6
      abb98(10)=abb98(10)*spbk3k1
      abb98(34)=abb98(10)*abb98(6)
      abb98(35)=abb98(34)*abb98(13)
      abb98(36)=abb98(13)*spbk3k1
      abb98(37)=abb98(36)*abb98(16)
      abb98(35)=abb98(35)-abb98(37)
      abb98(35)=abb98(35)*NC
      abb98(38)=abb98(34)*abb98(19)
      abb98(16)=abb98(16)*spbk3k1
      abb98(39)=abb98(16)*abb98(19)
      abb98(38)=abb98(38)-abb98(39)
      abb98(38)=abb98(38)*c2
      abb98(40)=abb98(34)*abb98(23)
      abb98(41)=abb98(37)*abb98(4)
      abb98(40)=abb98(40)-abb98(41)
      abb98(35)=-abb98(38)-abb98(35)+2.0_ki*abb98(40)
      abb98(26)=-abb98(20)*abb98(26)*abb98(36)
      abb98(29)=abb98(29)*spbk3k1
      abb98(26)=abb98(29)+abb98(26)
      abb98(29)=abb98(26)*abb98(30)
      abb98(38)=abb98(35)-abb98(29)
      abb98(40)=abb98(38)*spak1l6
      abb98(33)=abb98(33)-abb98(40)
      abb98(40)=es12-es712+es71
      abb98(33)=abb98(33)*abb98(40)
      abb98(14)=-spak4l6*abb98(14)
      abb98(35)=-spak1l6*abb98(35)
      abb98(14)=abb98(14)+abb98(35)
      abb98(14)=spbl5k2*abb98(14)
      abb98(35)=abb98(28)*abb98(24)
      abb98(40)=abb98(35)*spbk4k3
      abb98(24)=abb98(20)*abb98(24)
      abb98(15)=abb98(15)*abb98(24)
      abb98(15)=abb98(40)-abb98(15)
      abb98(15)=abb98(15)*spak4l6
      abb98(24)=abb98(36)*abb98(24)
      abb98(35)=abb98(35)*spbk3k1
      abb98(24)=abb98(24)-abb98(35)
      abb98(24)=abb98(24)*spak1l6
      abb98(15)=abb98(15)-abb98(24)
      abb98(24)=abb98(30)*abb98(15)
      abb98(14)=abb98(14)+abb98(24)
      abb98(14)=spak2l5*abb98(14)
      abb98(14)=abb98(14)+abb98(33)
      abb98(14)=4.0_ki*abb98(14)
      abb98(24)=-spak4l6*abb98(31)
      abb98(29)=-spak1l6*abb98(29)
      abb98(24)=abb98(24)+abb98(29)
      abb98(24)=8.0_ki*abb98(24)
      abb98(29)=-abb98(17)*abb98(20)
      abb98(31)=abb98(28)*abb98(21)
      abb98(29)=abb98(31)+abb98(29)
      abb98(29)=spak4l6*abb98(29)
      abb98(31)=-abb98(37)*abb98(20)
      abb98(33)=abb98(28)*abb98(16)
      abb98(31)=abb98(33)+abb98(31)
      abb98(31)=spak1l6*abb98(31)
      abb98(29)=abb98(29)+abb98(31)
      abb98(29)=8.0_ki*abb98(29)
      abb98(31)=mB**3
      abb98(33)=abb98(31)*abb98(13)
      abb98(35)=abb98(33)*abb98(11)
      abb98(36)=-abb98(5)*abb98(20)
      abb98(40)=-abb98(35)*abb98(36)
      abb98(42)=abb98(31)*abb98(11)
      abb98(43)=abb98(28)*abb98(5)
      abb98(44)=abb98(42)*abb98(43)
      abb98(40)=abb98(40)-abb98(44)
      abb98(44)=abb98(13)*abb98(9)
      abb98(45)=abb98(31)*abb98(5)**2
      abb98(46)=abb98(20)*abb98(45)*abb98(44)
      abb98(47)=spbk4k3*abb98(46)
      abb98(45)=abb98(45)*abb98(28)
      abb98(48)=abb98(9)*spbk4k3
      abb98(49)=-abb98(48)*abb98(45)
      abb98(47)=abb98(49)+abb98(47)
      abb98(47)=abb98(47)*abb98(30)
      abb98(47)=abb98(47)-abb98(40)
      abb98(47)=spak4l6*abb98(47)
      abb98(33)=abb98(33)*abb98(10)
      abb98(49)=abb98(33)*abb98(36)
      abb98(31)=abb98(31)*abb98(10)
      abb98(50)=abb98(31)*abb98(43)
      abb98(49)=abb98(50)+abb98(49)
      abb98(46)=spbk3k1*abb98(46)
      abb98(9)=abb98(9)*spbk3k1
      abb98(45)=-abb98(9)*abb98(45)
      abb98(45)=abb98(45)+abb98(46)
      abb98(45)=abb98(45)*abb98(30)
      abb98(45)=abb98(45)+abb98(49)
      abb98(45)=spak1l6*abb98(45)
      abb98(46)=spbk7k2*abb98(8)
      abb98(50)=abb98(46)*spak4k7
      abb98(51)=-abb98(40)*abb98(50)
      abb98(35)=-abb98(35)*abb98(20)
      abb98(42)=abb98(28)*abb98(42)
      abb98(35)=abb98(42)+abb98(35)
      abb98(42)=spak4l5*abb98(8)
      abb98(35)=abb98(35)*abb98(42)
      abb98(46)=abb98(46)*spak1k7
      abb98(52)=abb98(49)*abb98(46)
      abb98(33)=-abb98(33)*abb98(20)
      abb98(31)=abb98(28)*abb98(31)
      abb98(31)=abb98(31)+abb98(33)
      abb98(33)=spak1l5*abb98(8)
      abb98(31)=abb98(31)*abb98(33)
      abb98(31)=abb98(31)+abb98(52)+abb98(35)+abb98(51)+abb98(47)+abb98(45)
      abb98(31)=8.0_ki*abb98(7)*abb98(31)
      abb98(35)=c1*abb98(20)
      abb98(18)=abb98(18)*c2
      abb98(18)=-abb98(18)+abb98(35)
      abb98(34)=-abb98(34)*abb98(18)
      abb98(35)=abb98(34)*spak1l6
      abb98(12)=-abb98(12)*abb98(18)
      abb98(45)=abb98(12)*spak4l6
      abb98(35)=abb98(35)+abb98(45)
      abb98(35)=4.0_ki*abb98(35)
      abb98(45)=-spbk7k2*abb98(35)
      abb98(35)=-spbl5k2*abb98(35)
      abb98(47)=abb98(26)*spak1l6
      abb98(51)=abb98(27)*spak4l6
      abb98(47)=abb98(47)+abb98(51)
      abb98(51)=abb98(47)*abb98(6)**2
      abb98(52)=mB**2
      abb98(53)=abb98(52)*abb98(6)
      abb98(44)=abb98(53)*abb98(44)
      abb98(54)=abb98(44)*spbk4k3
      abb98(55)=-abb98(54)*abb98(36)
      abb98(56)=abb98(43)*abb98(53)
      abb98(57)=abb98(56)*abb98(48)
      abb98(55)=abb98(55)-abb98(57)
      abb98(57)=-abb98(55)*abb98(50)
      abb98(54)=-abb98(54)*abb98(20)
      abb98(28)=abb98(53)*abb98(28)
      abb98(48)=abb98(48)*abb98(28)
      abb98(48)=abb98(48)+abb98(54)
      abb98(48)=abb98(48)*abb98(42)
      abb98(44)=abb98(44)*spbk3k1
      abb98(53)=-abb98(44)*abb98(36)
      abb98(54)=abb98(56)*abb98(9)
      abb98(53)=abb98(53)-abb98(54)
      abb98(54)=-abb98(53)*abb98(46)
      abb98(20)=-abb98(44)*abb98(20)
      abb98(9)=abb98(9)*abb98(28)
      abb98(9)=abb98(9)+abb98(20)
      abb98(9)=abb98(9)*abb98(33)
      abb98(9)=abb98(9)+abb98(54)+abb98(48)+abb98(57)+abb98(51)
      abb98(9)=4.0_ki*abb98(9)
      abb98(20)=-abb98(17)*abb98(36)
      abb98(28)=abb98(43)*abb98(21)
      abb98(20)=abb98(20)-abb98(28)
      abb98(28)=abb98(20)*spak4l6
      abb98(36)=-abb98(37)*abb98(36)
      abb98(43)=abb98(43)*abb98(16)
      abb98(36)=abb98(36)-abb98(43)
      abb98(43)=abb98(36)*spak1l6
      abb98(28)=abb98(28)+abb98(43)
      abb98(43)=4.0_ki*spbk7k2
      abb98(43)=-abb98(28)*abb98(43)
      abb98(33)=abb98(33)*spbl5k2
      abb98(33)=abb98(33)+abb98(46)
      abb98(16)=-abb98(16)*abb98(18)
      abb98(33)=abb98(33)*abb98(16)
      abb98(42)=abb98(42)*spbl5k2
      abb98(42)=abb98(42)+abb98(50)
      abb98(18)=-abb98(21)*abb98(18)
      abb98(21)=abb98(42)*abb98(18)
      abb98(21)=abb98(33)+abb98(21)
      abb98(33)=-spbk7e7*abb98(21)
      abb98(28)=spbk7l5*abb98(28)
      abb98(28)=abb98(28)+abb98(33)
      abb98(28)=4.0_ki*abb98(28)
      abb98(33)=spak2k4*abb98(32)
      abb98(42)=spak1k2*abb98(38)
      abb98(33)=abb98(33)+abb98(42)
      abb98(33)=4.0_ki*abb98(33)
      abb98(12)=8.0_ki*abb98(12)
      abb98(34)=8.0_ki*abb98(34)
      abb98(15)=-4.0_ki*spae7k7*abb98(15)
      abb98(21)=spbe7l5*abb98(21)
      abb98(42)=-spbk7l5*spae7k7*abb98(47)
      abb98(21)=abb98(42)+abb98(21)
      abb98(21)=4.0_ki*abb98(21)
      abb98(42)=8.0_ki*spae7k7
      abb98(27)=abb98(42)*abb98(27)
      abb98(20)=8.0_ki*abb98(20)
      abb98(11)=abb98(52)*abb98(11)
      abb98(44)=-abb98(23)*abb98(11)
      abb98(25)=abb98(6)*abb98(25)
      abb98(25)=abb98(44)+abb98(25)
      abb98(44)=abb98(19)*abb98(11)
      abb98(22)=-abb98(6)*abb98(22)
      abb98(22)=abb98(44)+abb98(22)
      abb98(22)=c2*abb98(22)
      abb98(11)=abb98(13)*abb98(11)
      abb98(17)=-abb98(6)*abb98(17)
      abb98(11)=abb98(11)+abb98(17)
      abb98(11)=NC*abb98(11)
      abb98(11)=abb98(11)+2.0_ki*abb98(25)+abb98(22)
      abb98(11)=abb98(6)*abb98(11)
      abb98(17)=abb98(55)*abb98(30)
      abb98(11)=abb98(11)+abb98(17)
      abb98(11)=abb98(8)*abb98(11)
      abb98(17)=-spak2l6*abb98(32)
      abb98(11)=abb98(17)+abb98(11)
      abb98(11)=4.0_ki*abb98(11)
      abb98(17)=abb98(7)*abb98(8)
      abb98(17)=8.0_ki*abb98(17)
      abb98(22)=abb98(40)*abb98(17)
      abb98(25)=4.0_ki*abb98(8)
      abb98(32)=abb98(55)*abb98(25)
      abb98(18)=abb98(18)*abb98(25)
      abb98(40)=spbk7e7*abb98(18)
      abb98(18)=-spbe7l5*abb98(18)
      abb98(26)=abb98(42)*abb98(26)
      abb98(36)=8.0_ki*abb98(36)
      abb98(10)=abb98(52)*abb98(10)
      abb98(23)=-abb98(23)*abb98(10)
      abb98(41)=abb98(6)*abb98(41)
      abb98(23)=abb98(23)+abb98(41)
      abb98(19)=abb98(19)*abb98(10)
      abb98(39)=-abb98(6)*abb98(39)
      abb98(19)=abb98(19)+abb98(39)
      abb98(19)=c2*abb98(19)
      abb98(10)=abb98(13)*abb98(10)
      abb98(13)=-abb98(6)*abb98(37)
      abb98(10)=abb98(10)+abb98(13)
      abb98(10)=NC*abb98(10)
      abb98(10)=abb98(10)+2.0_ki*abb98(23)+abb98(19)
      abb98(10)=abb98(6)*abb98(10)
      abb98(13)=abb98(53)*abb98(30)
      abb98(10)=abb98(10)+abb98(13)
      abb98(10)=abb98(8)*abb98(10)
      abb98(13)=spak2l6*abb98(38)
      abb98(10)=abb98(13)+abb98(10)
      abb98(10)=4.0_ki*abb98(10)
      abb98(13)=-abb98(49)*abb98(17)
      abb98(17)=abb98(53)*abb98(25)
      abb98(16)=abb98(16)*abb98(25)
      abb98(19)=spbk7e7*abb98(16)
      abb98(16)=-spbe7l5*abb98(16)
      R2d98=0.0_ki
      rat2 = rat2 + R2d98
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='98' value='", &
          & R2d98, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd98h0