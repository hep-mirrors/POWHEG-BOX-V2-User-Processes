module     p3_usbar_epnebbbar_abbrevd33h1
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(60), public :: abb33
   complex(ki), public :: R2d33
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
      abb33(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb33(2)=NC**(-1)
      abb33(3)=es234**(-1)
      abb33(4)=es56**(-1)
      abb33(5)=spak2l5**(-1)
      abb33(6)=spbl6k2**(-1)
      abb33(7)=1.0_ki/(es34+es56-es12-es234)
      abb33(8)=spak2l6**(-1)
      abb33(9)=spbl5k2**(-1)
      abb33(10)=sqrt(mB**2)
      abb33(11)=spak1k4*spbl5k1
      abb33(12)=spbl5k3*spak3k4
      abb33(11)=abb33(11)-abb33(12)
      abb33(12)=TR*gW
      abb33(12)=abb33(12)**2*abb33(4)*i_*CVSU
      abb33(13)=abb33(12)*c2
      abb33(14)=abb33(13)*abb33(2)
      abb33(15)=abb33(14)*abb33(1)
      abb33(12)=abb33(12)*c1
      abb33(16)=abb33(12)*abb33(2)**2
      abb33(17)=abb33(16)*abb33(1)
      abb33(15)=abb33(15)-abb33(17)
      abb33(18)=spbk3k1*abb33(7)
      abb33(19)=abb33(18)*spak2l6
      abb33(20)=abb33(15)*abb33(19)
      abb33(21)=abb33(20)*abb33(11)
      abb33(22)=abb33(3)*abb33(1)
      abb33(23)=abb33(22)*spak2k4
      abb33(24)=abb33(16)*abb33(23)
      abb33(25)=abb33(14)*abb33(23)
      abb33(25)=abb33(24)-abb33(25)
      abb33(26)=abb33(25)*spbl5k1
      abb33(27)=spbk3k2*spak2l6
      abb33(28)=abb33(27)*abb33(26)
      abb33(29)=abb33(26)*spbk4k3
      abb33(30)=abb33(29)*spak4l6
      abb33(21)=abb33(30)+abb33(28)+abb33(21)
      abb33(28)=mB*abb33(2)
      abb33(12)=abb33(12)*abb33(28)**2
      abb33(30)=abb33(14)*mB**2
      abb33(12)=abb33(12)-abb33(30)
      abb33(22)=abb33(22)*spak2k4**2
      abb33(30)=abb33(22)*abb33(12)
      abb33(31)=spbk4k3*abb33(6)
      abb33(32)=abb33(31)*abb33(5)
      abb33(33)=abb33(30)*abb33(32)
      abb33(34)=abb33(33)*spbk2k1
      abb33(35)=abb33(21)+abb33(34)
      abb33(36)=-2.0_ki*abb33(35)
      abb33(13)=abb33(13)*abb33(28)
      abb33(28)=abb33(23)*abb33(13)
      abb33(24)=abb33(24)*mB
      abb33(24)=abb33(28)-abb33(24)
      abb33(28)=abb33(24)*abb33(10)
      abb33(37)=spak2l6**2
      abb33(38)=spbk3k2*abb33(5)
      abb33(39)=abb33(37)*abb33(38)
      abb33(40)=abb33(5)*spbk4k3
      abb33(41)=abb33(40)*spak4l6
      abb33(42)=spak2l6*abb33(41)
      abb33(42)=abb33(42)+abb33(39)
      abb33(42)=abb33(28)*abb33(42)
      abb33(43)=abb33(1)*abb33(13)
      abb33(17)=abb33(17)*mB
      abb33(17)=abb33(43)-abb33(17)
      abb33(43)=abb33(17)*abb33(10)
      abb33(44)=abb33(43)*abb33(5)
      abb33(37)=abb33(37)*abb33(18)
      abb33(45)=abb33(44)*abb33(37)
      abb33(46)=-spak1k4*abb33(45)
      abb33(23)=abb33(23)*abb33(12)
      abb33(47)=abb33(23)*abb33(6)
      abb33(48)=-abb33(27)*abb33(47)
      abb33(12)=abb33(1)*abb33(12)
      abb33(49)=abb33(19)*spak1k4
      abb33(50)=abb33(49)*abb33(6)
      abb33(51)=abb33(12)*abb33(50)
      abb33(48)=abb33(48)+abb33(51)
      abb33(48)=spbl5k2*abb33(48)
      abb33(42)=abb33(48)+abb33(46)+abb33(42)
      abb33(42)=spbl6k1*abb33(42)
      abb33(46)=-spbl6l5*abb33(21)
      abb33(48)=abb33(16)*mB
      abb33(13)=abb33(13)-abb33(48)
      abb33(48)=abb33(40)*spbl5k1
      abb33(13)=abb33(10)*abb33(48)*abb33(22)*abb33(13)
      abb33(13)=abb33(13)+abb33(46)
      abb33(13)=spal5l6*abb33(13)
      abb33(46)=abb33(18)*abb33(6)
      abb33(51)=abb33(46)*abb33(43)
      abb33(52)=-abb33(51)*abb33(11)
      abb33(53)=abb33(6)*abb33(28)
      abb33(54)=spbk3k2*spbl5k1
      abb33(55)=abb33(53)*abb33(54)
      abb33(52)=abb33(55)+abb33(52)
      abb33(52)=spak2l5*abb33(52)
      abb33(55)=abb33(31)*spbl5k1
      abb33(56)=abb33(28)*abb33(55)
      abb33(57)=abb33(23)*spak2l6
      abb33(58)=spbl6k1*abb33(57)*abb33(32)
      abb33(56)=abb33(56)-abb33(58)
      abb33(56)=spak4l5*abb33(56)
      abb33(52)=abb33(56)+abb33(52)
      abb33(52)=spbl5k2*abb33(52)
      abb33(24)=2.0_ki*abb33(24)
      abb33(56)=-abb33(10)*abb33(25)
      abb33(56)=-abb33(24)+abb33(56)
      abb33(54)=abb33(54)*spak2l6*abb33(56)
      abb33(56)=abb33(20)*abb33(10)
      abb33(17)=abb33(17)*abb33(19)
      abb33(17)=-abb33(56)+2.0_ki*abb33(17)
      abb33(17)=abb33(17)*abb33(11)
      abb33(17)=abb33(54)+abb33(17)
      abb33(17)=abb33(10)*abb33(17)
      abb33(24)=-spbk4k3*abb33(24)
      abb33(54)=abb33(10)*spbk4k3
      abb33(56)=-abb33(25)*abb33(54)
      abb33(24)=abb33(24)+abb33(56)
      abb33(24)=abb33(24)*spbl5k1*abb33(10)
      abb33(56)=spbl6l5*spbk2k1*abb33(31)*abb33(28)
      abb33(24)=abb33(24)+abb33(56)
      abb33(24)=spak4l6*abb33(24)
      abb33(39)=-abb33(23)*abb33(39)
      abb33(56)=abb33(12)*abb33(5)
      abb33(59)=abb33(37)*abb33(56)*spak1k4
      abb33(60)=-abb33(57)*abb33(41)
      abb33(39)=abb33(60)+abb33(39)+abb33(59)
      abb33(39)=spbk2k1*abb33(39)
      abb33(59)=abb33(38)*abb33(12)
      abb33(37)=spak3k4*abb33(37)*abb33(59)
      abb33(37)=abb33(37)+abb33(39)
      abb33(37)=spbl6l5*abb33(37)
      abb33(14)=abb33(16)-abb33(14)
      abb33(14)=abb33(14)*abb33(22)
      abb33(16)=-mB**3*abb33(14)
      abb33(22)=spbk2k1*abb33(16)*abb33(54)
      abb33(39)=spak2l6*abb33(5)**2*abb33(22)
      abb33(37)=abb33(39)+abb33(37)
      abb33(37)=abb33(9)*abb33(37)
      abb33(16)=abb33(16)*abb33(32)
      abb33(39)=-abb33(10)*abb33(33)
      abb33(16)=-2.0_ki*abb33(16)+abb33(39)
      abb33(16)=abb33(10)*abb33(16)
      abb33(14)=-abb33(32)*mB**4*abb33(14)
      abb33(14)=abb33(14)+abb33(16)
      abb33(14)=spbk2k1*abb33(14)
      abb33(16)=abb33(27)*abb33(53)
      abb33(39)=-abb33(43)*abb33(50)
      abb33(16)=abb33(16)+abb33(39)
      abb33(16)=spbk2k1*abb33(16)
      abb33(19)=abb33(19)*spak3k4
      abb33(39)=abb33(19)*abb33(6)
      abb33(43)=-spbk3k2*abb33(43)*abb33(39)
      abb33(16)=abb33(43)+abb33(16)
      abb33(16)=spbl6l5*abb33(16)
      abb33(22)=abb33(6)**2*abb33(22)
      abb33(43)=-spal5l6*abb33(30)*abb33(55)
      abb33(22)=abb33(22)+abb33(43)
      abb33(22)=abb33(22)*abb33(8)*spbl5k2
      abb33(43)=spak3k4*abb33(45)
      abb33(45)=-spbl5k2*abb33(12)*abb33(39)
      abb33(43)=abb33(43)+abb33(45)
      abb33(43)=spbl6k3*abb33(43)
      abb33(13)=abb33(43)+abb33(22)+abb33(13)+abb33(42)+abb33(37)+abb33(24)+abb&
      &33(16)+abb33(14)+abb33(17)+abb33(52)
      abb33(13)=4.0_ki*abb33(13)
      abb33(14)=-8.0_ki*abb33(34)
      abb33(16)=8.0_ki*abb33(21)
      abb33(17)=abb33(27)*abb33(5)
      abb33(21)=-abb33(47)*abb33(17)
      abb33(22)=abb33(56)*abb33(50)
      abb33(21)=abb33(21)+abb33(22)
      abb33(21)=spbl6k1*abb33(21)
      abb33(22)=abb33(55)*abb33(8)
      abb33(24)=-abb33(22)*abb33(23)*spak4l6
      abb33(34)=-spbl6k3*abb33(56)*abb33(39)
      abb33(21)=abb33(34)+abb33(21)+abb33(24)
      abb33(21)=8.0_ki*abb33(21)
      abb33(24)=4.0_ki*abb33(35)
      abb33(15)=abb33(15)*abb33(18)
      abb33(11)=-abb33(15)*abb33(11)
      abb33(18)=-spbk3k2*abb33(26)
      abb33(11)=abb33(18)+abb33(11)
      abb33(11)=spak2l5*abb33(11)
      abb33(18)=-spak4l5*abb33(29)
      abb33(11)=abb33(11)+abb33(18)
      abb33(11)=4.0_ki*abb33(11)
      abb33(18)=4.0_ki*spak3k4
      abb33(26)=-spbl6l5*abb33(20)*abb33(18)
      abb33(29)=abb33(9)*abb33(48)
      abb33(22)=-abb33(22)+abb33(29)
      abb33(22)=abb33(30)*abb33(22)
      abb33(29)=spbl6k1*abb33(33)
      abb33(22)=abb33(29)+abb33(22)
      abb33(22)=4.0_ki*abb33(22)
      abb33(27)=abb33(25)*abb33(27)
      abb33(29)=abb33(25)*spbk4k3
      abb33(34)=spak4l6*abb33(29)
      abb33(20)=abb33(20)*spak1k4
      abb33(20)=abb33(34)+abb33(27)+abb33(20)
      abb33(20)=spbl6l5*abb33(20)
      abb33(27)=abb33(31)*spbl5k2
      abb33(34)=abb33(8)*abb33(27)
      abb33(34)=abb33(34)-abb33(40)
      abb33(30)=abb33(30)*abb33(34)
      abb33(20)=abb33(30)+abb33(20)
      abb33(20)=4.0_ki*abb33(20)
      abb33(30)=-4.0_ki*spbl5k1*abb33(33)
      abb33(33)=abb33(23)*spbk2k1
      abb33(31)=4.0_ki*abb33(31)*abb33(33)
      abb33(34)=abb33(23)*abb33(55)
      abb33(34)=abb33(34)-abb33(58)
      abb33(34)=4.0_ki*abb33(34)
      abb33(35)=2.0_ki*abb33(28)
      abb33(37)=-spak2l6*abb33(35)
      abb33(37)=-abb33(57)+abb33(37)
      abb33(37)=abb33(40)*abb33(37)
      abb33(35)=abb33(23)+abb33(35)
      abb33(27)=abb33(35)*abb33(27)
      abb33(27)=abb33(27)+abb33(37)
      abb33(27)=4.0_ki*abb33(27)
      abb33(35)=8.0_ki*abb33(23)*abb33(32)
      abb33(29)=-4.0_ki*abb33(29)
      abb33(37)=abb33(23)*abb33(17)
      abb33(39)=-abb33(49)*abb33(56)
      abb33(37)=abb33(37)+abb33(39)
      abb33(37)=spbk2k1*abb33(37)
      abb33(39)=-abb33(19)*abb33(59)
      abb33(40)=abb33(41)*abb33(33)
      abb33(37)=abb33(40)+abb33(39)+abb33(37)
      abb33(37)=abb33(9)*abb33(37)
      abb33(32)=-spak4l5*abb33(32)*abb33(33)
      abb33(32)=abb33(37)+abb33(32)
      abb33(32)=4.0_ki*abb33(32)
      abb33(12)=abb33(46)*abb33(12)
      abb33(12)=abb33(12)+2.0_ki*abb33(51)
      abb33(33)=spbl5k2*spak3k4*abb33(12)
      abb33(19)=abb33(19)*abb33(44)
      abb33(19)=-2.0_ki*abb33(19)+abb33(33)
      abb33(19)=4.0_ki*abb33(19)
      abb33(33)=abb33(56)*abb33(46)
      abb33(37)=8.0_ki*spak3k4*abb33(33)
      abb33(18)=abb33(15)*abb33(18)
      abb33(39)=abb33(47)+2.0_ki*abb33(53)
      abb33(39)=spbk3k2*abb33(39)
      abb33(12)=-spak1k4*abb33(12)
      abb33(12)=abb33(39)+abb33(12)
      abb33(12)=spbl5k2*abb33(12)
      abb33(17)=-abb33(28)*abb33(17)
      abb33(28)=abb33(49)*abb33(44)
      abb33(17)=abb33(17)+abb33(28)
      abb33(23)=abb33(41)*abb33(23)
      abb33(12)=abb33(23)+2.0_ki*abb33(17)+abb33(12)
      abb33(12)=4.0_ki*abb33(12)
      abb33(17)=abb33(38)*abb33(47)
      abb33(23)=-spak1k4*abb33(33)
      abb33(17)=abb33(17)+abb33(23)
      abb33(17)=8.0_ki*abb33(17)
      abb33(23)=-spbk3k2*abb33(25)
      abb33(15)=-spak1k4*abb33(15)
      abb33(15)=abb33(23)+abb33(15)
      abb33(15)=4.0_ki*abb33(15)
      R2d33=abb33(36)
      rat2 = rat2 + R2d33
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='33' value='", &
          & R2d33, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd33h1
