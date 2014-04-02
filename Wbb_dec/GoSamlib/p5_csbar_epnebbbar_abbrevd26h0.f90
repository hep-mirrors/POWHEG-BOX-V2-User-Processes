module     p5_csbar_epnebbbar_abbrevd26h0
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(75), public :: abb26
   complex(ki), public :: R2d26
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p5_csbar_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_color, only: TR
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      implicit none
      abb26(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb26(2)=sqrt(mB**2)
      abb26(3)=NC**(-1)
      abb26(4)=spbl5k2**(-1)
      abb26(5)=spbl6k2**(-1)
      abb26(6)=spak2l6**(-1)
      abb26(7)=spak2l5**(-1)
      abb26(8)=TR*gW
      abb26(8)=abb26(8)**2
      abb26(9)=i_*CVSC
      abb26(10)=abb26(8)*abb26(9)*c2*abb26(1)
      abb26(11)=abb26(10)*abb26(4)
      abb26(12)=-NC+2.0_ki*abb26(3)
      abb26(13)=-abb26(12)*abb26(11)*spbk2k1
      abb26(14)=abb26(1)*c1*abb26(3)**2
      abb26(15)=abb26(14)*abb26(9)*abb26(4)
      abb26(16)=abb26(15)*abb26(8)
      abb26(17)=spbk2k1*abb26(16)
      abb26(17)=abb26(13)+abb26(17)
      abb26(18)=abb26(2)*mB**2
      abb26(19)=-abb26(18)*abb26(17)
      abb26(20)=abb26(19)*spak2l6
      abb26(21)=abb26(5)*abb26(13)
      abb26(22)=abb26(8)*abb26(5)
      abb26(15)=abb26(15)*abb26(22)
      abb26(23)=abb26(15)*spbk2k1
      abb26(21)=abb26(23)+abb26(21)
      abb26(21)=abb26(2)*abb26(21)*mB**4
      abb26(21)=abb26(21)+abb26(20)
      abb26(24)=spbk3k2*spak2k4
      abb26(21)=abb26(24)*abb26(21)
      abb26(25)=abb26(10)*abb26(3)
      abb26(25)=2.0_ki*abb26(25)
      abb26(10)=abb26(10)*NC
      abb26(26)=abb26(25)-abb26(10)
      abb26(27)=-abb26(5)*abb26(26)
      abb26(28)=-abb26(18)*abb26(27)
      abb26(29)=-spbk2k1*abb26(28)
      abb26(22)=abb26(14)*abb26(22)
      abb26(30)=abb26(9)*spbk2k1
      abb26(31)=abb26(22)*abb26(30)
      abb26(32)=abb26(31)*abb26(18)
      abb26(29)=abb26(29)+abb26(32)
      abb26(32)=-abb26(2)*abb26(26)
      abb26(33)=spbk2k1*abb26(32)
      abb26(8)=abb26(14)*abb26(8)
      abb26(14)=abb26(8)*abb26(30)
      abb26(30)=abb26(2)*abb26(14)
      abb26(30)=abb26(30)+abb26(33)
      abb26(30)=spak2l6*abb26(30)
      abb26(30)=-abb26(29)+abb26(30)
      abb26(33)=spbk3k1*spak2k4
      abb26(30)=spak1l5*abb26(33)*abb26(30)
      abb26(11)=-abb26(11)*abb26(12)
      abb26(12)=abb26(16)+abb26(11)
      abb26(16)=-abb26(18)*abb26(12)
      abb26(34)=spak4l6*spbk3k2
      abb26(35)=abb26(16)*abb26(34)
      abb26(36)=spak2l6*abb26(35)
      abb26(37)=abb26(8)*abb26(9)
      abb26(38)=abb26(2)*abb26(37)
      abb26(32)=abb26(38)+abb26(32)
      abb26(38)=abb26(32)*spak2l6
      abb26(39)=spak4l6*spbk3k1
      abb26(40)=abb26(39)*spak1l5
      abb26(41)=abb26(38)*abb26(40)
      abb26(36)=abb26(36)+abb26(41)
      abb26(36)=spbl6k1*abb26(36)
      abb26(41)=spak2l5*spbl5k3
      abb26(19)=spak4l6*abb26(19)*abb26(41)
      abb26(42)=abb26(16)*abb26(39)
      abb26(43)=-es12*abb26(42)
      abb26(19)=abb26(36)+abb26(43)+abb26(30)+abb26(19)+abb26(21)
      abb26(19)=4.0_ki*abb26(19)
      abb26(17)=-mB*abb26(17)
      abb26(21)=abb26(17)*spak4l6
      abb26(30)=-abb26(21)*abb26(41)
      abb26(12)=-mB*abb26(12)
      abb26(36)=abb26(12)*abb26(39)
      abb26(43)=es12*abb26(36)
      abb26(30)=abb26(30)+abb26(43)
      abb26(30)=8.0_ki*abb26(30)
      abb26(43)=spak2l6*spak4l5
      abb26(32)=abb26(43)*abb26(32)
      abb26(44)=abb26(32)*spbk3k1
      abb26(45)=abb26(18)*abb26(5)
      abb26(46)=abb26(45)*abb26(13)
      abb26(23)=abb26(23)*abb26(18)
      abb26(23)=abb26(23)+abb26(46)
      abb26(46)=abb26(23)*abb26(24)
      abb26(44)=abb26(44)-abb26(46)
      abb26(47)=8.0_ki*abb26(44)
      abb26(48)=mB**3
      abb26(49)=abb26(48)*spbk2k1
      abb26(50)=-abb26(26)*abb26(49)
      abb26(14)=abb26(14)*abb26(48)
      abb26(14)=abb26(50)+abb26(14)
      abb26(50)=abb26(4)**2
      abb26(14)=abb26(50)*abb26(14)
      abb26(51)=-abb26(14)*abb26(24)
      abb26(52)=spak4l5*spbk3k1
      abb26(53)=-abb26(16)*abb26(52)
      abb26(51)=abb26(51)+abb26(53)
      abb26(51)=spak2l6*abb26(51)
      abb26(27)=spbk2k1*abb26(27)
      abb26(27)=abb26(31)+abb26(27)
      abb26(27)=abb26(24)*abb26(50)*abb26(27)*mB**5
      abb26(27)=abb26(27)+abb26(51)
      abb26(27)=abb26(7)*abb26(27)
      abb26(31)=abb26(48)*abb26(5)
      abb26(13)=-abb26(31)*abb26(13)
      abb26(49)=abb26(49)*abb26(15)
      abb26(13)=abb26(13)-abb26(49)
      abb26(49)=abb26(13)*spak2k4
      abb26(50)=abb26(49)*abb26(6)
      abb26(51)=abb26(17)*spak2k4
      abb26(50)=abb26(50)-abb26(51)
      abb26(53)=spal5l6*spbl5k3
      abb26(54)=abb26(50)*abb26(53)
      abb26(9)=abb26(9)*mB
      abb26(22)=abb26(22)*abb26(9)
      abb26(55)=abb26(5)*mB
      abb26(10)=abb26(55)*abb26(10)
      abb26(25)=abb26(55)*abb26(25)
      abb26(10)=-abb26(25)+abb26(22)+abb26(10)
      abb26(22)=-abb26(10)*abb26(40)
      abb26(25)=-abb26(31)*abb26(11)
      abb26(31)=abb26(15)*abb26(48)
      abb26(25)=abb26(25)-abb26(31)
      abb26(31)=-abb26(25)*abb26(34)
      abb26(22)=abb26(31)+abb26(22)
      abb26(22)=spbl6k1*abb26(22)
      abb26(31)=abb26(6)*abb26(13)
      abb26(31)=-abb26(17)+abb26(31)
      abb26(31)=spak1l6*abb26(33)*abb26(31)
      abb26(11)=-abb26(45)*abb26(11)
      abb26(15)=-abb26(18)*abb26(15)
      abb26(11)=abb26(15)+abb26(11)
      abb26(15)=spbl5k1*spak4l5
      abb26(11)=spbk3k2*abb26(11)*abb26(15)
      abb26(11)=abb26(31)+abb26(22)+abb26(54)+abb26(11)+abb26(42)+abb26(27)
      abb26(11)=8.0_ki*abb26(11)
      abb26(18)=-16.0_ki*abb26(36)
      abb26(22)=abb26(52)*abb26(10)
      abb26(27)=16.0_ki*abb26(22)
      abb26(31)=16.0_ki*abb26(7)*abb26(25)*abb26(52)
      abb26(42)=8.0_ki*abb26(46)
      abb26(44)=4.0_ki*abb26(44)
      abb26(22)=-8.0_ki*abb26(22)
      abb26(46)=8.0_ki*abb26(51)
      abb26(48)=8.0_ki*abb26(12)
      abb26(52)=-abb26(15)*abb26(48)
      abb26(51)=-4.0_ki*abb26(51)
      abb26(50)=abb26(41)*abb26(50)
      abb26(54)=abb26(25)*abb26(6)
      abb26(54)=abb26(12)-abb26(54)
      abb26(54)=es12*abb26(33)*abb26(54)
      abb26(50)=abb26(54)+abb26(50)
      abb26(50)=4.0_ki*abb26(50)
      abb26(54)=4.0_ki*abb26(32)
      abb26(55)=-spbl6k3*abb26(54)
      abb26(56)=abb26(12)*abb26(24)
      abb26(24)=abb26(25)*abb26(24)
      abb26(25)=abb26(24)*abb26(6)
      abb26(25)=abb26(56)-abb26(25)
      abb26(56)=-8.0_ki*abb26(25)
      abb26(57)=4.0_ki*abb26(38)
      abb26(58)=-abb26(39)*abb26(57)
      abb26(59)=8.0_ki*abb26(10)*abb26(39)
      abb26(60)=abb26(7)*spak2k4
      abb26(61)=-abb26(60)*abb26(20)
      abb26(62)=-spbl5k1*abb26(32)
      abb26(61)=abb26(61)+abb26(62)
      abb26(61)=4.0_ki*abb26(61)
      abb26(62)=abb26(10)*spak4l5
      abb26(63)=abb26(62)*spbl5k1
      abb26(49)=abb26(49)*abb26(7)
      abb26(49)=abb26(63)+abb26(49)
      abb26(63)=8.0_ki*abb26(49)
      abb26(37)=abb26(37)*abb26(45)
      abb26(28)=abb26(37)-abb26(28)
      abb26(37)=abb26(28)-abb26(38)
      abb26(45)=4.0_ki*abb26(33)*abb26(37)
      abb26(54)=spbl5k3*abb26(54)
      abb26(64)=8.0_ki*abb26(7)
      abb26(24)=abb26(24)*abb26(64)
      abb26(65)=4.0_ki*abb26(10)
      abb26(66)=abb26(65)*spak2k4
      abb26(67)=-spbl6k3*abb26(66)
      abb26(66)=spbl5k3*abb26(66)
      abb26(29)=spak2l5*abb26(29)
      abb26(68)=-es12*abb26(23)
      abb26(20)=abb26(68)+abb26(20)+abb26(29)
      abb26(20)=4.0_ki*abb26(20)
      abb26(29)=spak2l6*abb26(14)*abb26(7)
      abb26(68)=-abb26(29)+abb26(23)
      abb26(68)=8.0_ki*abb26(68)
      abb26(69)=4.0_ki*abb26(17)
      abb26(70)=spak2l5*abb26(69)
      abb26(71)=4.0_ki*abb26(12)
      abb26(72)=es12*abb26(71)
      abb26(73)=-16.0_ki*abb26(12)
      abb26(74)=spbl6k3*spak2l6
      abb26(75)=spak1k2*spbk3k1
      abb26(41)=abb26(75)-abb26(41)+abb26(74)
      abb26(41)=abb26(41)*abb26(65)
      abb26(37)=-spak2l5*abb26(37)
      abb26(74)=-abb26(16)*spak2l6
      abb26(37)=abb26(74)+abb26(37)
      abb26(37)=spbk3k2*abb26(37)
      abb26(74)=-spak1l5*spbk3k1
      abb26(75)=-spbl6k3*spal5l6
      abb26(74)=abb26(75)+abb26(74)
      abb26(38)=abb26(38)*abb26(74)
      abb26(37)=abb26(38)+abb26(37)
      abb26(37)=4.0_ki*abb26(37)
      abb26(29)=abb26(13)-abb26(29)
      abb26(29)=abb26(34)*abb26(29)
      abb26(10)=-spbk2k1*abb26(10)
      abb26(38)=-abb26(10)*abb26(40)
      abb26(40)=-abb26(21)*abb26(53)
      abb26(53)=abb26(17)*spak1l6
      abb26(74)=-abb26(39)*abb26(53)
      abb26(29)=abb26(74)+abb26(40)+abb26(38)+abb26(29)
      abb26(29)=4.0_ki*abb26(29)
      abb26(36)=4.0_ki*abb26(36)
      abb26(38)=-abb26(34)*abb26(71)
      abb26(39)=-abb26(39)*abb26(65)
      abb26(40)=abb26(34)*abb26(65)
      abb26(69)=spal5l6*abb26(69)
      abb26(71)=abb26(10)*spak4l5
      abb26(21)=abb26(71)+abb26(21)
      abb26(71)=8.0_ki*abb26(21)
      abb26(74)=spak4l6*abb26(14)
      abb26(13)=-spak4l5*abb26(13)
      abb26(13)=abb26(74)+abb26(13)
      abb26(13)=abb26(13)*abb26(64)
      abb26(21)=-4.0_ki*abb26(21)
      abb26(14)=abb26(14)*abb26(60)
      abb26(12)=abb26(12)*abb26(15)
      abb26(12)=abb26(14)+abb26(12)
      abb26(12)=4.0_ki*abb26(12)
      abb26(14)=abb26(26)*mB
      abb26(8)=abb26(8)*abb26(9)
      abb26(8)=abb26(8)-abb26(14)
      abb26(8)=abb26(8)*spak4l5
      abb26(9)=abb26(17)*spak1k4
      abb26(8)=abb26(8)+abb26(9)
      abb26(8)=4.0_ki*abb26(8)
      abb26(9)=-4.0_ki*abb26(49)
      abb26(14)=spak1k4*abb26(10)
      abb26(15)=spbl5k2*abb26(62)
      abb26(14)=abb26(14)+abb26(15)
      abb26(14)=4.0_ki*abb26(14)
      abb26(15)=spak4l5*abb26(28)
      abb26(16)=abb26(7)*abb26(16)*abb26(43)
      abb26(17)=-spak1k4*abb26(23)
      abb26(15)=abb26(17)+abb26(16)-abb26(32)+2.0_ki*abb26(15)
      abb26(15)=spbk3k2*abb26(15)
      abb26(15)=-abb26(35)+abb26(15)
      abb26(15)=4.0_ki*abb26(15)
      abb26(16)=abb26(34)*abb26(48)
      abb26(17)=4.0_ki*abb26(25)
      abb26(10)=-spak1l5*abb26(10)
      abb26(10)=abb26(10)-abb26(53)
      abb26(10)=4.0_ki*abb26(10)
      abb26(23)=abb26(33)*abb26(65)
      R2d26=0.0_ki
      rat2 = rat2 + R2d26
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='26' value='", &
          & R2d26, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd26h0
