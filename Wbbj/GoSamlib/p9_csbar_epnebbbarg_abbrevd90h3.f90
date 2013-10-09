module     p9_csbar_epnebbbarg_abbrevd90h3
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh3
   implicit none
   private
   complex(ki), dimension(56), public :: abb90
   complex(ki), public :: R2d90
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb90(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb90(2)=1.0_ki/(es71+es34+es56-es712-es234)
      abb90(3)=sqrt(mB**2)
      abb90(4)=NC**(-1)
      abb90(5)=es71**(-1)
      abb90(6)=1.0_ki/(es34+es567-es12-es234)
      abb90(7)=spak2l5**(-1)
      abb90(8)=spbl5k2**(-1)
      abb90(9)=spak2l6**(-1)
      abb90(10)=spbl6k2**(-1)
      abb90(11)=abb90(4)**2
      abb90(11)=abb90(11)+1.0_ki
      abb90(12)=TR*gW
      abb90(12)=abb90(12)**2*i_*CVSC*abb90(2)*abb90(1)
      abb90(11)=abb90(12)*abb90(11)
      abb90(13)=spbl6l5*abb90(3)
      abb90(14)=abb90(11)*abb90(13)
      abb90(15)=abb90(6)*spbk3k1
      abb90(16)=abb90(15)*c4
      abb90(17)=abb90(14)*abb90(16)
      abb90(18)=c1*abb90(4)
      abb90(18)=2.0_ki*abb90(18)
      abb90(12)=abb90(18)*abb90(12)
      abb90(15)=abb90(12)*abb90(15)
      abb90(18)=abb90(15)*abb90(13)
      abb90(17)=abb90(17)-abb90(18)
      abb90(19)=spbl5k3*spak2l5
      abb90(20)=abb90(19)*spak3k4
      abb90(21)=spbl5k1*spak2l5
      abb90(22)=abb90(21)*spak1k4
      abb90(20)=abb90(20)-abb90(22)
      abb90(22)=-abb90(17)*abb90(20)
      abb90(23)=abb90(17)*spak2l6
      abb90(24)=spbl6k3*spak3k4
      abb90(25)=spbl6k1*spak1k4
      abb90(24)=abb90(24)-abb90(25)
      abb90(25)=-abb90(23)*abb90(24)
      abb90(26)=abb90(14)*c4
      abb90(27)=abb90(12)*abb90(13)
      abb90(26)=abb90(26)-abb90(27)
      abb90(27)=spbl6k3*spak2l6
      abb90(27)=abb90(19)+abb90(27)
      abb90(27)=-abb90(27)*abb90(5)*abb90(26)
      abb90(28)=spbk7k1*spak4k7
      abb90(29)=abb90(27)*abb90(28)
      abb90(22)=abb90(29)+abb90(25)+abb90(22)
      abb90(22)=8.0_ki*abb90(22)
      abb90(25)=abb90(11)*c4
      abb90(25)=abb90(25)-abb90(12)
      abb90(25)=abb90(25)*abb90(5)*spbe7k1
      abb90(13)=abb90(13)*abb90(25)
      abb90(29)=abb90(13)*spak2l6
      abb90(30)=spbl6k3*spak4e7
      abb90(31)=abb90(30)*abb90(29)
      abb90(32)=spak4e7*abb90(19)
      abb90(33)=abb90(13)*abb90(32)
      abb90(31)=abb90(31)+abb90(33)
      abb90(33)=8.0_ki*abb90(31)
      abb90(18)=abb90(18)*spbe7k1
      abb90(34)=spbe7k1*abb90(16)
      abb90(14)=abb90(34)*abb90(14)
      abb90(14)=abb90(18)-abb90(14)
      abb90(18)=spak1k4*spak2e7
      abb90(35)=abb90(14)*abb90(18)
      abb90(36)=-spbk3k1*abb90(13)
      abb90(37)=spak1e7*spak2k4
      abb90(38)=abb90(36)*abb90(37)
      abb90(39)=spbe7k3*spak3k4
      abb90(40)=abb90(39)*spak2e7
      abb90(41)=abb90(17)*abb90(40)
      abb90(42)=spbk7k3*spae7k7
      abb90(43)=abb90(42)*spak2k4
      abb90(44)=abb90(13)*abb90(43)
      abb90(35)=abb90(44)+abb90(41)+abb90(35)+abb90(38)
      abb90(38)=8.0_ki*abb90(35)
      abb90(41)=spbe7l5*spak2l5
      abb90(44)=abb90(41)*spak4e7
      abb90(45)=abb90(44)*abb90(17)
      abb90(46)=spbe7l6*spak4e7
      abb90(47)=abb90(23)*abb90(46)
      abb90(45)=abb90(45)+abb90(47)
      abb90(47)=8.0_ki*abb90(45)
      abb90(48)=mB**2
      abb90(49)=abb90(48)*abb90(9)
      abb90(50)=abb90(10)*abb90(49)*abb90(35)
      abb90(51)=abb90(8)*abb90(7)
      abb90(52)=abb90(51)*abb90(48)*abb90(35)
      abb90(35)=abb90(52)+abb90(50)-abb90(35)
      abb90(35)=8.0_ki*abb90(35)
      abb90(31)=-abb90(45)-abb90(31)
      abb90(31)=8.0_ki*abb90(31)
      abb90(45)=-spbl6k3*abb90(29)
      abb90(50)=-abb90(13)*abb90(19)
      abb90(45)=abb90(45)+abb90(50)
      abb90(45)=spak1k4*abb90(45)
      abb90(50)=spbk7e7*spak4k7
      abb90(27)=-abb90(27)*abb90(50)
      abb90(27)=abb90(27)+abb90(45)
      abb90(27)=4.0_ki*abb90(27)
      abb90(23)=abb90(23)*spbe7l6
      abb90(45)=abb90(17)*abb90(41)
      abb90(23)=abb90(23)+abb90(45)
      abb90(45)=-spak3e7*abb90(23)
      abb90(52)=spak2l5*spbk7l5*spae7k7
      abb90(21)=abb90(21)*spak1e7
      abb90(21)=abb90(52)-abb90(21)
      abb90(52)=-abb90(13)*abb90(21)
      abb90(53)=spbl6k1*spak1e7
      abb90(54)=spbk7l6*spae7k7
      abb90(53)=abb90(53)-abb90(54)
      abb90(29)=abb90(29)*abb90(53)
      abb90(54)=spak2l6*abb90(46)
      abb90(54)=abb90(54)+abb90(44)
      abb90(26)=-abb90(54)*abb90(6)*abb90(26)
      abb90(54)=spbk4k1*abb90(26)
      abb90(29)=abb90(54)+abb90(45)+abb90(29)+abb90(52)
      abb90(29)=4.0_ki*abb90(29)
      abb90(23)=spak1e7*abb90(23)
      abb90(26)=-spbk4k3*abb90(26)
      abb90(23)=abb90(26)+abb90(23)
      abb90(23)=4.0_ki*abb90(23)
      abb90(16)=abb90(11)*abb90(16)
      abb90(26)=abb90(16)-abb90(15)
      abb90(45)=abb90(26)*abb90(40)
      abb90(52)=abb90(15)*spbe7k1
      abb90(54)=abb90(34)*abb90(11)
      abb90(52)=abb90(52)-abb90(54)
      abb90(52)=abb90(52)*abb90(18)
      abb90(54)=spbk3k1*abb90(25)
      abb90(55)=abb90(54)*abb90(37)
      abb90(56)=abb90(25)*abb90(43)
      abb90(45)=-abb90(45)-abb90(52)+abb90(55)-abb90(56)
      abb90(52)=abb90(3)*abb90(45)
      abb90(49)=-abb90(10)*abb90(45)*abb90(49)*abb90(3)
      abb90(49)=abb90(49)+abb90(52)
      abb90(49)=spbl5k2*abb90(49)
      abb90(48)=-abb90(7)*abb90(45)*abb90(48)*abb90(3)
      abb90(14)=-spak1k4*abb90(14)
      abb90(17)=-abb90(17)*abb90(39)
      abb90(14)=abb90(14)+abb90(17)
      abb90(14)=spal6e7*abb90(14)
      abb90(17)=spak1e7*abb90(36)
      abb90(13)=abb90(13)*abb90(42)
      abb90(13)=abb90(17)+abb90(13)
      abb90(13)=spak4l6*abb90(13)
      abb90(13)=abb90(13)+abb90(14)+abb90(49)+abb90(48)
      abb90(13)=4.0_ki*abb90(13)
      abb90(14)=mB**3
      abb90(17)=-abb90(10)*abb90(45)*abb90(14)*abb90(9)**2
      abb90(36)=abb90(9)*mB
      abb90(48)=-abb90(36)*abb90(54)
      abb90(37)=abb90(48)*abb90(37)
      abb90(49)=abb90(11)*abb90(36)
      abb90(34)=abb90(34)*abb90(49)
      abb90(15)=abb90(15)*abb90(36)
      abb90(52)=abb90(15)*spbe7k1
      abb90(34)=abb90(34)-abb90(52)
      abb90(18)=abb90(34)*abb90(18)
      abb90(16)=abb90(16)*abb90(36)
      abb90(15)=abb90(16)-abb90(15)
      abb90(16)=abb90(15)*abb90(40)
      abb90(40)=-abb90(36)*abb90(25)
      abb90(43)=abb90(40)*abb90(43)
      abb90(16)=abb90(16)-abb90(43)+abb90(37)-abb90(18)
      abb90(17)=abb90(17)-abb90(16)
      abb90(18)=spbl5k2*spak2l5*abb90(17)
      abb90(14)=-abb90(45)*abb90(14)*abb90(9)
      abb90(34)=spak1k4*abb90(34)
      abb90(37)=-abb90(39)*abb90(15)
      abb90(34)=abb90(34)+abb90(37)
      abb90(34)=spal6e7*spbl6l5*abb90(34)
      abb90(37)=spak1e7*abb90(48)
      abb90(39)=-abb90(42)*abb90(40)
      abb90(37)=abb90(37)+abb90(39)
      abb90(37)=spak4l6*spbl6l5*abb90(37)
      abb90(34)=abb90(37)+abb90(34)
      abb90(34)=spak2l5*abb90(34)
      abb90(18)=abb90(18)+abb90(14)+abb90(34)
      abb90(18)=4.0_ki*abb90(18)
      abb90(34)=abb90(36)*abb90(12)
      abb90(36)=abb90(34)*abb90(5)
      abb90(37)=abb90(5)*c4
      abb90(39)=abb90(37)*abb90(49)
      abb90(36)=abb90(36)-abb90(39)
      abb90(36)=abb90(36)*abb90(19)
      abb90(11)=abb90(11)*mB
      abb90(37)=abb90(11)*abb90(37)
      abb90(12)=abb90(12)*mB
      abb90(39)=abb90(12)*abb90(5)
      abb90(37)=abb90(37)-abb90(39)
      abb90(37)=abb90(37)*spbl6k3
      abb90(36)=abb90(36)-abb90(37)
      abb90(28)=abb90(36)*abb90(28)
      abb90(20)=-abb90(15)*abb90(20)
      abb90(26)=-mB*abb90(26)
      abb90(24)=abb90(26)*abb90(24)
      abb90(20)=abb90(28)+abb90(24)+abb90(20)
      abb90(20)=8.0_ki*abb90(20)
      abb90(24)=abb90(32)*abb90(40)
      abb90(25)=-mB*abb90(25)
      abb90(28)=abb90(30)*abb90(25)
      abb90(24)=abb90(24)+abb90(28)
      abb90(28)=-8.0_ki*abb90(24)
      abb90(16)=8.0_ki*abb90(16)
      abb90(30)=abb90(44)*abb90(15)
      abb90(32)=abb90(26)*abb90(46)
      abb90(30)=abb90(30)-abb90(32)
      abb90(32)=8.0_ki*abb90(30)
      abb90(14)=abb90(14)*abb90(51)
      abb90(14)=abb90(14)+abb90(17)
      abb90(14)=8.0_ki*abb90(14)
      abb90(17)=-abb90(30)+abb90(24)
      abb90(17)=8.0_ki*abb90(17)
      abb90(24)=abb90(25)*spbl6k3
      abb90(19)=abb90(40)*abb90(19)
      abb90(19)=abb90(24)+abb90(19)
      abb90(19)=spak1k4*abb90(19)
      abb90(24)=-abb90(36)*abb90(50)
      abb90(19)=abb90(24)+abb90(19)
      abb90(19)=4.0_ki*abb90(19)
      abb90(15)=abb90(15)*abb90(41)
      abb90(24)=abb90(26)*spbe7l6
      abb90(15)=abb90(15)-abb90(24)
      abb90(24)=-spak3e7*abb90(15)
      abb90(26)=abb90(34)*abb90(6)
      abb90(30)=abb90(6)*c4
      abb90(34)=abb90(30)*abb90(49)
      abb90(26)=abb90(26)-abb90(34)
      abb90(26)=abb90(26)*abb90(44)
      abb90(12)=abb90(12)*abb90(6)
      abb90(11)=abb90(30)*abb90(11)
      abb90(11)=abb90(12)-abb90(11)
      abb90(11)=abb90(11)*abb90(46)
      abb90(11)=abb90(26)+abb90(11)
      abb90(12)=spbk4k1*abb90(11)
      abb90(21)=abb90(40)*abb90(21)
      abb90(25)=-abb90(25)*abb90(53)
      abb90(12)=abb90(12)+abb90(24)+abb90(25)+abb90(21)
      abb90(12)=4.0_ki*abb90(12)
      abb90(15)=spak1e7*abb90(15)
      abb90(11)=-spbk4k3*abb90(11)
      abb90(11)=abb90(11)+abb90(15)
      abb90(11)=4.0_ki*abb90(11)
      R2d90=0.0_ki
      rat2 = rat2 + R2d90
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='90' value='", &
          & R2d90, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd90h3
