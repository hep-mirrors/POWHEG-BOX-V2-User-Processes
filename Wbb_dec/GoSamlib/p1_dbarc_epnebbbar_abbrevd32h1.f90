module     p1_dbarc_epnebbbar_abbrevd32h1
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(56), public :: abb32
   complex(ki), public :: R2d32
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_color, only: TR
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      implicit none
      abb32(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb32(2)=es234**(-1)
      abb32(3)=es56**(-1)
      abb32(4)=spak2l5**(-1)
      abb32(5)=spbl6k2**(-1)
      abb32(6)=1.0_ki/(es34+es56-es12-es234)
      abb32(7)=sqrt(mB**2)
      abb32(8)=spbl5k2**(-1)
      abb32(9)=spak2l6**(-1)
      abb32(10)=spak3k4*spak1k2
      abb32(11)=abb32(4)*abb32(5)
      abb32(12)=abb32(10)*abb32(11)
      abb32(13)=c2*NC
      abb32(13)=abb32(13)-c1
      abb32(14)=-abb32(12)*abb32(13)
      abb32(15)=abb32(2)*spbk3k2**2
      abb32(16)=mB**2
      abb32(17)=abb32(16)*abb32(15)
      abb32(18)=abb32(14)*abb32(17)
      abb32(19)=abb32(2)*spbk3k2
      abb32(20)=abb32(13)*abb32(19)
      abb32(21)=spbl5k2*spak2k4
      abb32(22)=abb32(21)*spak1l6
      abb32(23)=spak3k4*spak1l6
      abb32(24)=abb32(23)*spbl5k3
      abb32(22)=abb32(22)-abb32(24)
      abb32(25)=-abb32(22)*abb32(20)
      abb32(26)=spbk4k3*spak4l6
      abb32(27)=spak1l6*spbk3k1
      abb32(26)=abb32(26)+abb32(27)
      abb32(27)=spak1k4*abb32(13)
      abb32(28)=abb32(27)*abb32(6)
      abb32(29)=abb32(28)*abb32(26)
      abb32(30)=spbl5k2*abb32(29)
      abb32(25)=abb32(25)+abb32(30)-abb32(18)
      abb32(30)=gW*TR
      abb32(30)=i_*abb32(30)**2*CVDC*abb32(1)*abb32(3)
      abb32(31)=2.0_ki*abb32(30)
      abb32(32)=abb32(25)*abb32(31)
      abb32(33)=spak1k2*spal5l6
      abb32(34)=spak2l6*spak1l5
      abb32(33)=abb32(33)-abb32(34)
      abb32(35)=spak3k4*spbl5k3
      abb32(33)=abb32(7)*abb32(33)*abb32(35)
      abb32(34)=abb32(34)*spak2k4
      abb32(36)=spak1k2*spak2k4
      abb32(37)=abb32(36)*spal5l6
      abb32(34)=abb32(34)-abb32(37)
      abb32(37)=spbl5k2*abb32(7)
      abb32(34)=abb32(34)*abb32(37)
      abb32(33)=abb32(33)+abb32(34)
      abb32(33)=abb32(33)*abb32(4)
      abb32(34)=abb32(5)*spbl5k2
      abb32(38)=abb32(34)*abb32(7)
      abb32(39)=spbl6k3*abb32(23)*abb32(38)
      abb32(40)=2.0_ki*abb32(37)
      abb32(41)=spak1l6*spak2k4
      abb32(42)=abb32(40)*abb32(41)
      abb32(43)=abb32(24)*abb32(7)
      abb32(33)=abb32(33)-abb32(39)-abb32(43)+abb32(42)
      abb32(33)=abb32(33)*abb32(13)
      abb32(39)=abb32(13)*spbk3k2
      abb32(23)=abb32(23)*spbl6l5
      abb32(42)=abb32(23)*abb32(5)*abb32(7)*abb32(39)
      abb32(33)=abb32(42)+abb32(33)
      abb32(33)=abb32(33)*abb32(19)
      abb32(42)=spak2l6*spak4l5
      abb32(43)=spak2k4*spal5l6
      abb32(42)=abb32(42)+abb32(43)
      abb32(42)=abb32(42)*spbk4k3
      abb32(43)=spak1k2*spbk3k1
      abb32(44)=abb32(43)*spal5l6
      abb32(45)=spbk3k1*spak1l5
      abb32(46)=abb32(45)*spak2l6
      abb32(42)=abb32(42)-abb32(44)+abb32(46)
      abb32(44)=abb32(4)*abb32(6)
      abb32(37)=abb32(42)*abb32(44)*abb32(37)
      abb32(42)=abb32(26)*abb32(6)
      abb32(40)=abb32(40)*abb32(42)
      abb32(37)=abb32(37)+abb32(40)
      abb32(37)=-abb32(37)*abb32(27)
      abb32(18)=abb32(7)*abb32(18)
      abb32(18)=3.0_ki*abb32(18)+abb32(33)+abb32(37)
      abb32(33)=abb32(30)*mB
      abb32(37)=4.0_ki*abb32(33)
      abb32(18)=abb32(18)*abb32(37)
      abb32(40)=abb32(30)*abb32(16)
      abb32(46)=4.0_ki*abb32(40)
      abb32(14)=abb32(14)*abb32(46)*abb32(15)
      abb32(15)=8.0_ki*abb32(30)
      abb32(15)=-abb32(25)*abb32(15)
      abb32(47)=abb32(4)*spak2l6
      abb32(48)=abb32(47)*abb32(7)
      abb32(38)=abb32(48)-abb32(38)
      abb32(48)=abb32(27)*abb32(38)
      abb32(49)=abb32(30)*abb32(19)
      abb32(50)=-mB*abb32(48)*abb32(49)
      abb32(50)=16.0_ki*abb32(50)
      abb32(51)=spbk4k3*spak4l5
      abb32(45)=abb32(51)+abb32(45)
      abb32(51)=abb32(34)*abb32(6)
      abb32(52)=abb32(45)*abb32(51)
      abb32(42)=-abb32(52)+3.0_ki*abb32(42)
      abb32(42)=abb32(42)*abb32(4)
      abb32(52)=abb32(51)*abb32(9)
      abb32(53)=abb32(26)*abb32(52)
      abb32(42)=abb32(42)+abb32(53)
      abb32(42)=-abb32(42)*abb32(27)
      abb32(53)=spak1l6*spbl6k3
      abb32(54)=spbl5k3*spak1l5
      abb32(55)=abb32(53)-abb32(54)
      abb32(55)=abb32(55)*spak3k4
      abb32(56)=abb32(21)*spak1l5
      abb32(55)=abb32(55)+abb32(56)
      abb32(55)=abb32(55)*abb32(5)
      abb32(24)=abb32(24)*abb32(8)
      abb32(24)=abb32(55)-3.0_ki*abb32(41)+2.0_ki*abb32(24)
      abb32(24)=abb32(24)*abb32(4)
      abb32(22)=abb32(5)*abb32(22)*abb32(9)
      abb32(22)=abb32(24)-abb32(22)
      abb32(22)=-abb32(22)*abb32(20)
      abb32(17)=abb32(13)*abb32(17)
      abb32(12)=abb32(12)*abb32(8)
      abb32(24)=abb32(10)*abb32(9)
      abb32(55)=abb32(24)*abb32(5)**2
      abb32(12)=abb32(12)-abb32(55)
      abb32(12)=-abb32(4)*abb32(12)*abb32(17)
      abb32(12)=abb32(12)+abb32(22)+abb32(42)
      abb32(12)=mB*abb32(12)
      abb32(22)=-abb32(48)*abb32(19)
      abb32(12)=-4.0_ki*abb32(22)+abb32(12)
      abb32(12)=abb32(12)*abb32(37)
      abb32(22)=-abb32(11)*abb32(27)
      abb32(37)=abb32(40)*abb32(19)
      abb32(37)=16.0_ki*abb32(37)
      abb32(37)=abb32(22)*abb32(37)
      abb32(30)=4.0_ki*abb32(30)
      abb32(25)=-abb32(25)*abb32(30)
      abb32(42)=abb32(45)*spbl5k2
      abb32(26)=abb32(26)*spbl6k2
      abb32(26)=abb32(42)+abb32(26)
      abb32(26)=abb32(26)*abb32(28)
      abb32(28)=abb32(53)+abb32(54)
      abb32(28)=abb32(28)*spak3k4
      abb32(42)=abb32(41)*spbl6k2
      abb32(28)=-abb32(28)+abb32(42)+abb32(56)
      abb32(28)=-abb32(28)*abb32(20)
      abb32(42)=abb32(24)*abb32(5)
      abb32(45)=abb32(10)*abb32(4)
      abb32(53)=abb32(45)*abb32(8)
      abb32(42)=abb32(42)-abb32(53)
      abb32(17)=-abb32(42)*abb32(17)
      abb32(17)=abb32(17)+abb32(28)+abb32(26)
      abb32(17)=abb32(17)*abb32(31)
      abb32(26)=8.0_ki*abb32(49)
      abb32(26)=abb32(27)*abb32(26)
      abb32(28)=abb32(24)*abb32(34)
      abb32(28)=abb32(45)+2.0_ki*abb32(28)
      abb32(28)=abb32(16)*abb32(28)
      abb32(23)=-2.0_ki*abb32(23)+abb32(28)
      abb32(23)=abb32(31)*abb32(19)*abb32(13)*abb32(23)
      abb32(28)=3.0_ki*abb32(52)+2.0_ki*abb32(44)
      abb32(42)=spbk4k3*spak2k4
      abb32(42)=abb32(42)-abb32(43)
      abb32(28)=-abb32(27)*abb32(42)*abb32(28)
      abb32(43)=abb32(10)*spbl5k3
      abb32(44)=abb32(43)*abb32(8)
      abb32(36)=abb32(44)-abb32(36)
      abb32(44)=abb32(5)*spbl6k3
      abb32(10)=abb32(44)*abb32(10)
      abb32(10)=-abb32(10)+2.0_ki*abb32(36)
      abb32(10)=abb32(10)*abb32(4)
      abb32(24)=abb32(24)*spbl5k3
      abb32(36)=abb32(21)*spak1k2
      abb32(45)=abb32(36)*abb32(9)
      abb32(24)=-abb32(24)+3.0_ki*abb32(45)
      abb32(24)=abb32(24)*abb32(5)
      abb32(10)=abb32(10)-abb32(24)
      abb32(10)=abb32(10)*abb32(20)
      abb32(10)=abb32(10)+abb32(28)
      abb32(10)=abb32(10)*abb32(16)
      abb32(16)=abb32(41)*abb32(20)
      abb32(16)=abb32(16)-abb32(29)
      abb32(16)=spbl6l5*abb32(16)
      abb32(10)=2.0_ki*abb32(16)+abb32(10)
      abb32(10)=abb32(10)*abb32(31)
      abb32(16)=abb32(4)*abb32(27)*abb32(42)*abb32(51)
      abb32(11)=-abb32(11)*abb32(13)
      abb32(24)=abb32(43)-abb32(36)
      abb32(24)=abb32(19)*abb32(24)*abb32(11)
      abb32(16)=abb32(24)+abb32(16)
      abb32(16)=abb32(16)*abb32(46)
      abb32(24)=spbk4k2*abb32(48)
      abb32(28)=abb32(39)*abb32(38)
      abb32(29)=spak1k3*abb32(28)
      abb32(24)=abb32(29)+abb32(24)
      abb32(24)=8.0_ki*abb32(2)*abb32(24)*abb32(33)
      abb32(29)=spbk4k2*abb32(22)
      abb32(31)=abb32(11)*spbk3k2*spak1k3
      abb32(29)=abb32(31)+abb32(29)
      abb32(31)=8.0_ki*abb32(40)
      abb32(29)=abb32(2)*abb32(29)*abb32(31)
      abb32(36)=abb32(39)*spak1k3
      abb32(40)=spbk4k2*abb32(27)
      abb32(36)=abb32(36)+abb32(40)
      abb32(36)=abb32(2)*abb32(36)*abb32(30)
      abb32(40)=-spbk4k3*abb32(48)
      abb32(28)=-spak1k2*abb32(28)
      abb32(28)=abb32(28)+abb32(40)
      abb32(40)=4.0_ki*abb32(2)
      abb32(28)=abb32(28)*abb32(40)
      abb32(40)=abb32(6)*spbk4k3
      abb32(41)=-abb32(40)*abb32(48)
      abb32(42)=abb32(40)*abb32(47)
      abb32(43)=2.0_ki*abb32(51)
      abb32(45)=abb32(43)*spbk4k3
      abb32(42)=abb32(42)+abb32(45)
      abb32(42)=mB*abb32(42)*abb32(27)
      abb32(28)=abb32(42)+3.0_ki*abb32(41)+abb32(28)
      abb32(33)=2.0_ki*abb32(33)
      abb32(28)=abb32(28)*abb32(33)
      abb32(41)=-spbk4k3*abb32(22)
      abb32(11)=-abb32(11)*spbk3k2*spak1k2
      abb32(11)=abb32(11)+abb32(41)
      abb32(11)=abb32(2)*abb32(11)
      abb32(41)=-abb32(40)*abb32(22)
      abb32(11)=abb32(11)+abb32(41)
      abb32(11)=abb32(11)*abb32(31)
      abb32(40)=-abb32(40)*abb32(27)
      abb32(39)=abb32(39)*spak1k2
      abb32(41)=-spbk4k3*abb32(27)
      abb32(39)=-abb32(39)+abb32(41)
      abb32(39)=abb32(2)*abb32(39)
      abb32(39)=abb32(39)+abb32(40)
      abb32(39)=abb32(39)*abb32(30)
      abb32(40)=spak3k4*abb32(13)*abb32(38)
      abb32(34)=abb32(47)-abb32(34)
      abb32(13)=-mB*abb32(34)*abb32(13)*spak3k4
      abb32(13)=abb32(40)+abb32(13)
      abb32(13)=abb32(33)*abb32(19)*abb32(13)
      abb32(19)=-abb32(38)*spak2k4*abb32(20)
      abb32(34)=abb32(44)*spak3k4
      abb32(34)=-spak2k4+2.0_ki*abb32(34)
      abb32(34)=abb32(34)*abb32(47)
      abb32(21)=-abb32(35)+2.0_ki*abb32(21)
      abb32(21)=abb32(21)*abb32(5)
      abb32(21)=abb32(34)-abb32(21)
      abb32(20)=abb32(21)*abb32(20)
      abb32(21)=abb32(6)*spbk3k1
      abb32(34)=abb32(21)*abb32(47)
      abb32(35)=abb32(43)*spbk3k1
      abb32(34)=abb32(34)+abb32(35)
      abb32(34)=abb32(34)*abb32(27)
      abb32(20)=abb32(20)+abb32(34)
      abb32(20)=mB*abb32(20)
      abb32(34)=-abb32(21)*abb32(48)
      abb32(19)=abb32(20)+3.0_ki*abb32(34)+abb32(19)
      abb32(19)=abb32(19)*abb32(33)
      abb32(20)=-abb32(31)*abb32(21)*abb32(22)
      abb32(21)=-abb32(30)*abb32(21)*abb32(27)
      R2d32=abb32(32)
      rat2 = rat2 + R2d32
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='32' value='", &
          & R2d32, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd32h1