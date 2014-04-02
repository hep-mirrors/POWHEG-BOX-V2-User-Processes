module     p3_usbar_epnebbbar_abbrevd6h1
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(59), public :: abb6
   complex(ki), public :: R2d6
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p3_usbar_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_color, only: TR
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      implicit none
      abb6(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb6(2)=NC**(-1)
      abb6(3)=es234**(-1)
      abb6(4)=es56**(-1)
      abb6(5)=spak2l5**(-1)
      abb6(6)=spbl6k2**(-1)
      abb6(7)=spbl5k2**(-1)
      abb6(8)=spak2l6**(-1)
      abb6(9)=TR*gW
      abb6(10)=abb6(9)**2
      abb6(11)=abb6(10)*c1
      abb6(12)=abb6(4)*i_*CVSU*abb6(3)*abb6(1)
      abb6(13)=abb6(12)*spak2k4
      abb6(14)=abb6(13)*spbk4k3
      abb6(15)=abb6(14)*spbl5k1
      abb6(16)=abb6(11)*abb6(15)
      abb6(17)=abb6(16)*abb6(2)
      abb6(18)=abb6(10)*c2
      abb6(19)=abb6(18)*abb6(15)
      abb6(17)=abb6(17)-abb6(19)
      abb6(17)=abb6(17)*abb6(2)
      abb6(19)=NC*c2
      abb6(20)=abb6(19)*abb6(10)
      abb6(21)=abb6(20)*abb6(15)
      abb6(16)=abb6(21)-abb6(16)
      abb6(21)=abb6(17)+abb6(16)
      abb6(21)=abb6(21)*spak4l6
      abb6(22)=abb6(13)*spbl5k1
      abb6(23)=abb6(11)*abb6(22)
      abb6(24)=abb6(2)*spbk3k2
      abb6(25)=abb6(24)*abb6(23)
      abb6(26)=abb6(22)*spbk3k2
      abb6(18)=abb6(18)*abb6(26)
      abb6(18)=abb6(25)-abb6(18)
      abb6(18)=abb6(18)*abb6(2)
      abb6(25)=abb6(20)*abb6(22)
      abb6(23)=abb6(25)-abb6(23)
      abb6(25)=abb6(23)*spbk3k2
      abb6(27)=abb6(18)+abb6(25)
      abb6(27)=abb6(27)*spak2l6
      abb6(12)=abb6(12)*spbk4k3*spak2k4**2
      abb6(9)=abb6(9)*mB
      abb6(9)=abb6(9)**2
      abb6(28)=abb6(9)*abb6(6)
      abb6(29)=abb6(28)*abb6(5)
      abb6(30)=abb6(12)*abb6(29)
      abb6(31)=abb6(30)*abb6(19)
      abb6(32)=abb6(30)*c1
      abb6(31)=abb6(31)-abb6(32)
      abb6(30)=abb6(30)*c2
      abb6(32)=abb6(32)*abb6(2)
      abb6(30)=abb6(30)-abb6(32)
      abb6(30)=abb6(30)*abb6(2)
      abb6(30)=abb6(30)-abb6(31)
      abb6(32)=abb6(30)*spbk2k1
      abb6(21)=-abb6(32)+abb6(21)+abb6(27)
      abb6(27)=-2.0_ki*abb6(21)
      abb6(32)=abb6(19)*abb6(14)
      abb6(33)=abb6(32)*abb6(29)
      abb6(34)=abb6(14)*c1
      abb6(35)=abb6(34)*abb6(29)
      abb6(33)=abb6(33)-abb6(35)
      abb6(36)=abb6(33)*spak4l6
      abb6(37)=abb6(13)*c2
      abb6(38)=abb6(37)*NC
      abb6(39)=abb6(38)*abb6(29)
      abb6(13)=abb6(13)*c1
      abb6(40)=abb6(29)*abb6(13)
      abb6(39)=abb6(39)-abb6(40)
      abb6(41)=spak2l6*spbk3k2
      abb6(42)=abb6(39)*abb6(41)
      abb6(36)=abb6(36)+abb6(42)
      abb6(36)=abb6(36)*spbl6k1
      abb6(42)=abb6(19)-c1
      abb6(22)=-abb6(22)*abb6(42)
      abb6(43)=3.0_ki*spbk3k2
      abb6(44)=-abb6(43)*abb6(28)*abb6(22)
      abb6(45)=2.0_ki*spak4l6
      abb6(46)=abb6(42)*abb6(45)
      abb6(47)=abb6(15)*abb6(28)
      abb6(48)=abb6(47)*abb6(46)
      abb6(11)=abb6(20)-abb6(11)
      abb6(11)=spbk2k1*abb6(11)*abb6(12)*mB**4
      abb6(20)=abb6(5)*abb6(6)**2*abb6(11)
      abb6(20)=abb6(48)+abb6(20)
      abb6(20)=abb6(20)*abb6(8)
      abb6(20)=abb6(36)+abb6(44)+abb6(20)
      abb6(9)=abb6(9)*abb6(5)
      abb6(36)=abb6(15)*abb6(9)
      abb6(44)=abb6(36)*abb6(46)
      abb6(11)=abb6(6)*abb6(5)**2*abb6(11)
      abb6(11)=abb6(44)+abb6(11)
      abb6(22)=-abb6(9)*abb6(22)
      abb6(44)=abb6(22)*abb6(41)
      abb6(44)=2.0_ki*abb6(44)+abb6(11)
      abb6(44)=abb6(7)*abb6(44)
      abb6(44)=abb6(44)+abb6(20)
      abb6(44)=es12*abb6(44)
      abb6(23)=abb6(23)*abb6(41)
      abb6(46)=abb6(16)*spak4l6
      abb6(23)=abb6(23)+abb6(46)
      abb6(31)=abb6(31)*spbk2k1
      abb6(46)=2.0_ki*abb6(31)+abb6(23)
      abb6(46)=spbl6k1*abb6(46)
      abb6(48)=abb6(12)*abb6(19)
      abb6(49)=abb6(48)*abb6(28)
      abb6(50)=abb6(12)*c1
      abb6(51)=abb6(50)*abb6(28)
      abb6(49)=abb6(49)-abb6(51)
      abb6(52)=abb6(49)*abb6(8)
      abb6(48)=abb6(50)-abb6(48)
      abb6(48)=abb6(9)*abb6(48)
      abb6(50)=abb6(48)*abb6(7)
      abb6(50)=abb6(50)-abb6(52)
      abb6(52)=-spbk2k1*spbl5k1*abb6(50)
      abb6(53)=abb6(38)*abb6(10)
      abb6(54)=abb6(13)*abb6(10)
      abb6(53)=abb6(53)-abb6(54)
      abb6(55)=spbl5k1**2
      abb6(56)=abb6(53)*abb6(55)
      abb6(57)=-spak2l5*spbk3k2*abb6(56)
      abb6(46)=abb6(57)+abb6(46)+abb6(52)
      abb6(46)=spak1l6*abb6(46)
      abb6(52)=spbl5k1*abb6(31)
      abb6(57)=abb6(14)*abb6(10)
      abb6(19)=abb6(57)*abb6(19)
      abb6(58)=abb6(34)*abb6(10)
      abb6(19)=abb6(19)-abb6(58)
      abb6(55)=abb6(19)*abb6(55)
      abb6(59)=spak4l6*abb6(55)
      abb6(56)=abb6(56)*abb6(41)
      abb6(52)=abb6(56)+abb6(52)+abb6(59)
      abb6(52)=spak1l5*abb6(52)
      abb6(15)=abb6(15)*abb6(29)*abb6(42)
      abb6(42)=es12*abb6(15)
      abb6(55)=-spak1l6*abb6(55)
      abb6(42)=abb6(42)+abb6(55)
      abb6(42)=spak4l5*abb6(42)
      abb6(42)=2.0_ki*abb6(52)+abb6(42)+abb6(46)+abb6(44)
      abb6(42)=2.0_ki*abb6(42)
      abb6(23)=abb6(23)+abb6(31)
      abb6(23)=8.0_ki*abb6(23)
      abb6(22)=-spbk3k2*abb6(22)
      abb6(31)=abb6(2)*c1
      abb6(31)=abb6(31)-c2
      abb6(26)=abb6(26)*abb6(31)
      abb6(44)=-abb6(2)*abb6(9)*abb6(26)
      abb6(22)=abb6(22)+abb6(44)
      abb6(22)=spak2l6*abb6(22)
      abb6(11)=2.0_ki*abb6(22)-abb6(11)
      abb6(11)=abb6(7)*abb6(11)
      abb6(22)=2.0_ki*abb6(2)
      abb6(26)=-abb6(22)*abb6(28)*abb6(26)
      abb6(15)=-spak4l5*abb6(15)
      abb6(11)=abb6(15)+abb6(11)+abb6(26)-abb6(20)
      abb6(11)=4.0_ki*abb6(11)
      abb6(15)=4.0_ki*abb6(21)
      abb6(20)=abb6(19)*spak4l6
      abb6(21)=abb6(53)*abb6(41)
      abb6(20)=abb6(20)+abb6(21)
      abb6(21)=spbl6k1*abb6(20)
      abb6(26)=spbk2k1*abb6(50)
      abb6(44)=spak4l5*abb6(16)
      abb6(46)=spak2l5*abb6(25)
      abb6(21)=abb6(46)+abb6(44)+abb6(21)+abb6(26)
      abb6(21)=2.0_ki*abb6(21)
      abb6(20)=spbl6l5*abb6(20)
      abb6(20)=abb6(48)-abb6(20)
      abb6(12)=-c2*abb6(28)*abb6(12)
      abb6(26)=abb6(2)*abb6(51)
      abb6(12)=abb6(12)+abb6(26)
      abb6(12)=abb6(12)*abb6(22)
      abb6(12)=abb6(12)-abb6(49)
      abb6(12)=spbl5k2*abb6(8)*abb6(12)
      abb6(16)=-spak1k4*abb6(16)
      abb6(25)=-spak1k2*abb6(25)
      abb6(12)=abb6(25)+abb6(16)+abb6(12)+3.0_ki*abb6(20)
      abb6(12)=2.0_ki*abb6(12)
      abb6(16)=4.0_ki*spbl5k2*abb6(30)
      abb6(20)=abb6(35)*abb6(2)
      abb6(14)=abb6(14)*c2
      abb6(25)=abb6(14)*abb6(29)
      abb6(20)=abb6(20)-abb6(25)
      abb6(25)=spbk2k1*abb6(2)
      abb6(26)=abb6(25)*spak2l6
      abb6(26)=4.0_ki*abb6(26)
      abb6(30)=-abb6(20)*abb6(26)
      abb6(14)=abb6(14)*abb6(28)
      abb6(35)=abb6(34)*abb6(28)
      abb6(44)=abb6(35)*abb6(2)
      abb6(14)=abb6(14)-abb6(44)
      abb6(44)=abb6(14)*abb6(25)
      abb6(17)=-spal5l6*abb6(17)
      abb6(17)=abb6(44)+abb6(17)
      abb6(17)=4.0_ki*abb6(17)
      abb6(36)=-abb6(7)*spak2l6*abb6(36)
      abb6(36)=-abb6(47)+abb6(36)
      abb6(31)=4.0_ki*abb6(2)*abb6(31)*abb6(36)
      abb6(36)=abb6(2)*abb6(20)
      abb6(36)=abb6(36)-abb6(33)
      abb6(36)=8.0_ki*abb6(36)
      abb6(44)=c2*abb6(57)
      abb6(46)=-abb6(2)*abb6(58)
      abb6(44)=abb6(44)+abb6(46)
      abb6(44)=abb6(2)*abb6(44)
      abb6(19)=abb6(44)+abb6(19)
      abb6(19)=4.0_ki*abb6(19)
      abb6(40)=abb6(40)*abb6(24)
      abb6(37)=abb6(37)*spbk3k2
      abb6(29)=abb6(37)*abb6(29)
      abb6(29)=abb6(40)-abb6(29)
      abb6(26)=-abb6(29)*abb6(26)
      abb6(40)=-abb6(13)*abb6(24)
      abb6(40)=abb6(37)+abb6(40)
      abb6(25)=abb6(25)*abb6(28)*abb6(40)
      abb6(18)=-spal5l6*abb6(18)
      abb6(18)=abb6(25)+abb6(18)
      abb6(18)=4.0_ki*abb6(18)
      abb6(14)=-abb6(2)*abb6(14)
      abb6(25)=abb6(28)*abb6(32)
      abb6(14)=abb6(14)-abb6(35)+abb6(25)
      abb6(14)=abb6(8)*abb6(14)*abb6(45)
      abb6(20)=-abb6(20)*abb6(22)
      abb6(20)=abb6(20)+abb6(33)
      abb6(20)=spak4l5*abb6(20)
      abb6(13)=abb6(38)-abb6(13)
      abb6(22)=abb6(43)*abb6(28)*abb6(13)
      abb6(14)=abb6(20)+abb6(22)+abb6(14)
      abb6(14)=spbl5k2*abb6(14)
      abb6(20)=-abb6(34)+abb6(32)
      abb6(20)=spak4l6*abb6(20)
      abb6(13)=abb6(41)*abb6(13)
      abb6(13)=abb6(20)+abb6(13)
      abb6(9)=abb6(9)*abb6(13)
      abb6(13)=abb6(39)*spbk3k2
      abb6(20)=es12*abb6(13)
      abb6(22)=spak1k4*spbk2k1*abb6(33)
      abb6(9)=abb6(22)+3.0_ki*abb6(9)+abb6(20)+abb6(14)
      abb6(9)=2.0_ki*abb6(9)
      abb6(14)=abb6(2)*abb6(29)
      abb6(13)=-abb6(13)+abb6(14)
      abb6(13)=8.0_ki*abb6(13)
      abb6(14)=spbk3k2*abb6(53)
      abb6(10)=abb6(10)*abb6(37)
      abb6(20)=-abb6(24)*abb6(54)
      abb6(10)=abb6(10)+abb6(20)
      abb6(10)=abb6(2)*abb6(10)
      abb6(10)=abb6(14)+abb6(10)
      abb6(10)=4.0_ki*abb6(10)
      R2d6=abb6(27)
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd6h1
