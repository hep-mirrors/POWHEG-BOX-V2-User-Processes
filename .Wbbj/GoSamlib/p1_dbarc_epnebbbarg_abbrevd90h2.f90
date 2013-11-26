module     p1_dbarc_epnebbbarg_abbrevd90h2
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_globalsh2
   implicit none
   private
   complex(ki), dimension(60), public :: abb90
   complex(ki), public :: R2d90
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
      abb90(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb90(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb90(3)=NC**(-1)
      abb90(4)=es71**(-1)
      abb90(5)=spak2l6**(-1)
      abb90(6)=1.0_ki/(es34+es567-es12-es234)
      abb90(7)=spbl5k2**(-1)
      abb90(8)=spak2l5**(-1)
      abb90(9)=spbl6k2**(-1)
      abb90(10)=sqrt(mB**2)
      abb90(11)=abb90(4)*spak1e7
      abb90(12)=TR*gW
      abb90(12)=abb90(12)**2*i_*CVDC*abb90(2)*abb90(1)
      abb90(13)=abb90(12)*spak1k4
      abb90(14)=abb90(11)*abb90(13)
      abb90(15)=-NC+2.0_ki*abb90(3)
      abb90(16)=-abb90(15)*c3*abb90(14)
      abb90(17)=spak2l5**2
      abb90(18)=abb90(17)*spbl6k2
      abb90(19)=abb90(18)*abb90(16)
      abb90(20)=spbl6k2*abb90(14)
      abb90(21)=c4*abb90(3)**2
      abb90(22)=abb90(20)*abb90(21)
      abb90(23)=abb90(17)*abb90(22)
      abb90(19)=abb90(23)+abb90(19)
      abb90(19)=spbk3k2*abb90(19)
      abb90(23)=mB**2
      abb90(24)=abb90(21)*abb90(23)
      abb90(25)=abb90(24)*abb90(14)
      abb90(26)=-abb90(23)*abb90(16)
      abb90(25)=abb90(25)-abb90(26)
      abb90(27)=abb90(5)*spbk3k2
      abb90(28)=abb90(27)*abb90(17)
      abb90(29)=-abb90(25)*abb90(28)
      abb90(19)=abb90(19)+abb90(29)
      abb90(19)=spbe7k1*abb90(19)
      abb90(11)=abb90(12)*abb90(11)
      abb90(12)=-c3*abb90(15)
      abb90(29)=-abb90(11)*abb90(12)
      abb90(18)=abb90(18)*abb90(29)
      abb90(30)=abb90(21)*spbl6k2
      abb90(31)=abb90(30)*abb90(11)
      abb90(32)=-abb90(17)*abb90(31)
      abb90(18)=abb90(32)+abb90(18)
      abb90(18)=spbk3k2*abb90(18)
      abb90(32)=abb90(11)*abb90(23)
      abb90(33)=-abb90(32)*abb90(12)
      abb90(34)=abb90(32)*abb90(21)
      abb90(34)=abb90(33)-abb90(34)
      abb90(28)=-abb90(34)*abb90(28)
      abb90(18)=abb90(18)+abb90(28)
      abb90(28)=spak4k7*spbk7e7
      abb90(18)=abb90(18)*abb90(28)
      abb90(15)=abb90(15)*c3*spak1e7
      abb90(35)=abb90(21)*spak1e7
      abb90(36)=abb90(15)-abb90(35)
      abb90(13)=abb90(13)*abb90(6)
      abb90(37)=abb90(13)*spbl6k2
      abb90(38)=spbe7k2*abb90(17)*abb90(37)
      abb90(39)=-abb90(36)*abb90(38)
      abb90(40)=abb90(23)*abb90(13)
      abb90(41)=-abb90(40)*abb90(36)
      abb90(42)=abb90(5)*spbe7k2
      abb90(17)=abb90(42)*abb90(17)
      abb90(43)=-abb90(41)*abb90(17)
      abb90(39)=abb90(39)+abb90(43)
      abb90(39)=spbk3k1*abb90(39)
      abb90(43)=abb90(13)*spak2l5
      abb90(44)=abb90(43)*spbl6k2
      abb90(45)=-abb90(44)*abb90(15)
      abb90(35)=abb90(35)*abb90(44)
      abb90(35)=abb90(35)+abb90(45)
      abb90(46)=abb90(35)*spbk3k1
      abb90(47)=-abb90(44)*abb90(12)
      abb90(48)=abb90(44)*abb90(21)
      abb90(48)=abb90(48)-abb90(47)
      abb90(49)=spbk4k3*spak4e7
      abb90(50)=abb90(48)*abb90(49)
      abb90(46)=abb90(46)+abb90(50)
      abb90(50)=spal5l6*spbe7l6
      abb90(51)=abb90(46)*abb90(50)
      abb90(11)=abb90(21)*abb90(11)
      abb90(11)=abb90(29)-abb90(11)
      abb90(52)=spbl6k2*spak2l5
      abb90(53)=-abb90(52)*abb90(11)
      abb90(54)=abb90(53)*abb90(28)
      abb90(55)=spak2l5*abb90(14)
      abb90(56)=abb90(55)*spbl6k2
      abb90(57)=-abb90(56)*abb90(12)
      abb90(58)=abb90(30)*abb90(55)
      abb90(58)=abb90(58)-abb90(57)
      abb90(59)=abb90(58)*spbe7k1
      abb90(54)=abb90(54)-abb90(59)
      abb90(59)=spbl6k3*spal5l6
      abb90(60)=abb90(54)*abb90(59)
      abb90(17)=-abb90(40)*abb90(17)
      abb90(17)=abb90(38)+abb90(17)
      abb90(38)=abb90(12)+abb90(21)
      abb90(17)=abb90(49)*abb90(38)*abb90(17)
      abb90(17)=abb90(60)+abb90(51)+abb90(39)+abb90(17)+abb90(19)+abb90(18)
      abb90(17)=spbl5k2*abb90(17)
      abb90(18)=-abb90(24)*abb90(56)
      abb90(19)=abb90(23)*abb90(57)
      abb90(18)=abb90(18)+abb90(19)
      abb90(19)=spbe7k1*spbk3k2
      abb90(18)=abb90(18)*abb90(19)
      abb90(39)=abb90(28)*spbk3k2
      abb90(51)=-abb90(34)*abb90(39)
      abb90(52)=abb90(52)*abb90(51)
      abb90(44)=abb90(24)*abb90(44)
      abb90(47)=abb90(23)*abb90(47)
      abb90(47)=-abb90(44)+abb90(47)
      abb90(56)=abb90(49)*spbe7k2
      abb90(47)=abb90(47)*abb90(56)
      abb90(45)=-abb90(23)*abb90(45)
      abb90(44)=-spak1e7*abb90(44)
      abb90(44)=abb90(44)+abb90(45)
      abb90(45)=spbk3k1*spbe7k2
      abb90(44)=abb90(44)*abb90(45)
      abb90(17)=abb90(17)+abb90(44)+abb90(47)+abb90(18)+abb90(52)
      abb90(17)=4.0_ki*abb90(17)
      abb90(18)=abb90(20)*abb90(24)
      abb90(20)=abb90(26)*spbl6k2
      abb90(18)=abb90(20)-abb90(18)
      abb90(18)=abb90(18)*abb90(19)
      abb90(20)=abb90(30)*abb90(32)
      abb90(26)=abb90(33)*spbl6k2
      abb90(20)=abb90(20)-abb90(26)
      abb90(20)=abb90(20)*abb90(39)
      abb90(26)=abb90(40)*spbl6k2
      abb90(32)=abb90(12)*abb90(26)
      abb90(30)=abb90(30)*abb90(40)
      abb90(32)=abb90(32)+abb90(30)
      abb90(32)=abb90(32)*abb90(56)
      abb90(26)=abb90(15)*abb90(26)
      abb90(30)=abb90(30)*spak1e7
      abb90(26)=abb90(26)-abb90(30)
      abb90(26)=abb90(26)*abb90(45)
      abb90(18)=abb90(26)+abb90(18)+abb90(20)-abb90(32)
      abb90(18)=abb90(18)*abb90(7)
      abb90(20)=abb90(35)*spbe7k2
      abb90(26)=abb90(43)*abb90(23)
      abb90(15)=-abb90(26)*abb90(15)
      abb90(30)=abb90(24)*abb90(43)
      abb90(32)=abb90(30)*spak1e7
      abb90(15)=abb90(15)+abb90(32)
      abb90(15)=abb90(15)*abb90(42)
      abb90(20)=abb90(20)-abb90(15)
      abb90(20)=abb90(20)*spbk3k1
      abb90(32)=abb90(53)*spbk3k2
      abb90(33)=-abb90(27)*spak2l5*abb90(34)
      abb90(32)=abb90(32)-abb90(33)
      abb90(32)=abb90(32)*abb90(28)
      abb90(23)=abb90(12)*abb90(55)*abb90(23)
      abb90(24)=abb90(24)*abb90(55)
      abb90(23)=abb90(24)+abb90(23)
      abb90(23)=abb90(23)*abb90(27)
      abb90(24)=abb90(58)*spbk3k2
      abb90(24)=abb90(24)-abb90(23)
      abb90(24)=abb90(24)*spbe7k1
      abb90(35)=abb90(48)*spbe7k2
      abb90(12)=-abb90(26)*abb90(12)
      abb90(12)=abb90(12)-abb90(30)
      abb90(12)=abb90(12)*abb90(42)
      abb90(26)=abb90(35)+abb90(12)
      abb90(26)=abb90(26)*abb90(49)
      abb90(18)=abb90(18)+abb90(26)+abb90(20)-abb90(32)+abb90(24)
      abb90(20)=-spbl6k2*abb90(16)
      abb90(20)=-abb90(22)+abb90(20)
      abb90(20)=spbe7k1*abb90(20)
      abb90(22)=-spbl6k2*abb90(29)
      abb90(22)=abb90(31)+abb90(22)
      abb90(22)=abb90(22)*abb90(28)
      abb90(20)=abb90(20)+abb90(22)
      abb90(20)=abb90(20)*abb90(59)
      abb90(22)=abb90(38)*abb90(49)
      abb90(24)=-abb90(36)*spbk3k1
      abb90(22)=abb90(22)+abb90(24)
      abb90(24)=abb90(50)*abb90(37)*abb90(22)
      abb90(20)=abb90(20)+abb90(24)+abb90(18)
      abb90(20)=8.0_ki*abb90(20)
      abb90(18)=8.0_ki*abb90(18)
      abb90(24)=-spbe7l6*abb90(46)
      abb90(26)=-spbl6k3*abb90(54)
      abb90(24)=abb90(24)+abb90(26)
      abb90(24)=4.0_ki*abb90(24)
      abb90(26)=abb90(41)*abb90(45)
      abb90(29)=abb90(25)*abb90(19)
      abb90(30)=abb90(40)*abb90(38)
      abb90(31)=abb90(30)*abb90(56)
      abb90(26)=-abb90(51)+abb90(26)+abb90(29)+abb90(31)
      abb90(26)=abb90(26)*abb90(7)
      abb90(29)=-abb90(8)*abb90(26)
      abb90(25)=-spbe7k1*abb90(25)
      abb90(31)=-abb90(34)*abb90(28)
      abb90(25)=abb90(25)+abb90(31)
      abb90(25)=abb90(27)*abb90(25)
      abb90(27)=-abb90(30)*abb90(49)
      abb90(30)=-spbk3k1*abb90(41)
      abb90(27)=abb90(30)+abb90(27)
      abb90(27)=abb90(42)*abb90(27)
      abb90(25)=abb90(27)+abb90(25)
      abb90(25)=abb90(9)*abb90(25)
      abb90(14)=abb90(21)*abb90(14)
      abb90(14)=abb90(16)+abb90(14)
      abb90(16)=abb90(14)*abb90(19)
      abb90(21)=abb90(11)*abb90(39)
      abb90(27)=abb90(13)*abb90(38)
      abb90(30)=abb90(27)*abb90(56)
      abb90(13)=abb90(13)*abb90(36)
      abb90(31)=-abb90(13)*abb90(45)
      abb90(16)=abb90(29)+abb90(25)+abb90(31)+abb90(30)+abb90(16)+abb90(21)
      abb90(16)=8.0_ki*abb90(16)
      abb90(14)=abb90(14)*spbe7k1
      abb90(21)=-abb90(11)*abb90(28)
      abb90(14)=abb90(14)-abb90(21)
      abb90(21)=spbl6k3*abb90(14)
      abb90(13)=abb90(13)*spbk3k1
      abb90(25)=abb90(27)*abb90(49)
      abb90(13)=abb90(13)-abb90(25)
      abb90(25)=spbe7l6*abb90(13)
      abb90(21)=abb90(25)+abb90(21)
      abb90(21)=4.0_ki*abb90(21)
      abb90(23)=spbe7k1*abb90(23)
      abb90(25)=-abb90(28)*abb90(33)
      abb90(12)=-abb90(49)*abb90(12)
      abb90(15)=spbk3k1*abb90(15)
      abb90(12)=abb90(15)+abb90(12)+abb90(23)+abb90(25)
      abb90(12)=abb90(9)*abb90(12)
      abb90(15)=abb90(14)*abb90(59)
      abb90(23)=-abb90(56)*abb90(38)
      abb90(25)=abb90(45)*abb90(36)
      abb90(23)=abb90(25)+abb90(23)
      abb90(23)=abb90(43)*abb90(23)
      abb90(25)=abb90(38)*abb90(55)
      abb90(19)=-abb90(19)*abb90(25)
      abb90(11)=-abb90(11)*spak2l5
      abb90(27)=abb90(11)*abb90(39)
      abb90(29)=abb90(13)*abb90(50)
      abb90(12)=abb90(12)+abb90(15)+abb90(29)+abb90(26)+abb90(19)+abb90(27)+abb&
      &90(23)
      abb90(12)=spbl6l5*abb90(12)
      abb90(15)=spbe7k1*abb90(25)
      abb90(11)=-abb90(28)*abb90(11)
      abb90(11)=abb90(15)+abb90(11)
      abb90(15)=abb90(10)*abb90(5)
      abb90(11)=abb90(15)*mB*abb90(11)
      abb90(11)=abb90(11)-abb90(54)
      abb90(11)=spbl5k3*abb90(11)
      abb90(19)=spbl6k3*mB*abb90(14)
      abb90(23)=spbe7l6*mB*abb90(13)
      abb90(19)=abb90(23)+abb90(19)
      abb90(19)=abb90(10)*abb90(19)
      abb90(15)=-abb90(15)*abb90(22)*abb90(43)*mB
      abb90(15)=abb90(15)-abb90(46)
      abb90(15)=spbe7l5*abb90(15)
      abb90(11)=abb90(11)+abb90(15)+abb90(19)+abb90(12)
      abb90(11)=4.0_ki*abb90(11)
      abb90(12)=spbl5k3*abb90(14)
      abb90(13)=spbe7l5*abb90(13)
      abb90(12)=abb90(13)+abb90(12)
      abb90(12)=4.0_ki*abb90(12)
      R2d90=0.0_ki
      rat2 = rat2 + R2d90
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='90' value='", &
          & R2d90, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbarg_abbrevd90h2
