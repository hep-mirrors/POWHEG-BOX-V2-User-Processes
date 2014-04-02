module     p5_csbar_epnebbbar_abbrevd14h2
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(50), public :: abb14
   complex(ki), public :: R2d14
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
      abb14(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb14(2)=NC**(-1)
      abb14(3)=es234**(-1)
      abb14(4)=es56**(-1)
      abb14(5)=spbl5k2**(-1)
      abb14(6)=spak2l6**(-1)
      abb14(7)=1.0_ki/(es34+es56-es12-es234)
      abb14(8)=sqrt(mB**2)
      abb14(9)=spak2l5**(-1)
      abb14(10)=spbl6k2**(-1)
      abb14(11)=spbk3k1*abb14(7)
      abb14(12)=abb14(11)*spak2l5
      abb14(13)=abb14(12)*spak1k4
      abb14(14)=abb14(13)*spbl6k1
      abb14(12)=abb14(12)*spak3k4
      abb14(15)=abb14(12)*spbl6k3
      abb14(14)=abb14(14)-abb14(15)
      abb14(15)=spbk2k1*spbk4k3
      abb14(16)=abb14(6)*abb14(5)
      abb14(17)=abb14(15)*abb14(16)
      abb14(18)=abb14(3)*spak2k4**2
      abb14(19)=abb14(17)*abb14(18)*mB**2
      abb14(19)=abb14(19)-abb14(14)
      abb14(20)=TR*gW
      abb14(21)=abb14(20)*mB*abb14(4)
      abb14(21)=abb14(21)**2
      abb14(22)=abb14(1)*i_*CVSC
      abb14(23)=abb14(21)*abb14(22)
      abb14(20)=abb14(20)**2
      abb14(24)=abb14(22)*abb14(20)
      abb14(25)=1.0_ki/3.0_ki*abb14(4)
      abb14(26)=abb14(25)*abb14(24)
      abb14(26)=-abb14(26)+2.0_ki*abb14(23)
      abb14(27)=c1*abb14(2)
      abb14(27)=abb14(27)-c2
      abb14(19)=abb14(19)*abb14(26)*abb14(27)
      abb14(22)=abb14(22)*spak2k4*abb14(3)
      abb14(20)=abb14(22)*abb14(20)
      abb14(25)=abb14(25)*abb14(20)
      abb14(21)=abb14(22)*abb14(21)
      abb14(22)=-abb14(25)+2.0_ki*abb14(21)
      abb14(25)=spbk3k2*spak2l5
      abb14(26)=abb14(25)*spbl6k1
      abb14(28)=spak4l5*spbk4k3
      abb14(29)=abb14(28)*spbl6k1
      abb14(30)=abb14(26)+abb14(29)
      abb14(22)=abb14(30)*abb14(22)*abb14(27)
      abb14(19)=abb14(22)+abb14(19)
      abb14(19)=4.0_ki*abb14(19)
      abb14(22)=abb14(27)*abb14(4)**2
      abb14(20)=-abb14(20)*abb14(22)
      abb14(30)=abb14(20)*abb14(30)
      abb14(23)=abb14(27)*abb14(23)
      abb14(18)=-abb14(18)*abb14(23)
      abb14(31)=abb14(17)*abb14(18)
      abb14(22)=-abb14(24)*abb14(22)
      abb14(24)=abb14(12)*abb14(22)
      abb14(32)=abb14(24)*spbl6k3
      abb14(33)=abb14(13)*abb14(22)
      abb14(34)=abb14(33)*spbl6k1
      abb14(30)=abb14(32)+abb14(31)-abb14(34)+abb14(30)
      abb14(31)=8.0_ki*abb14(30)
      abb14(32)=-abb14(8)**2*abb14(31)
      abb14(30)=16.0_ki*abb14(30)
      abb14(34)=abb14(23)*abb14(16)
      abb14(35)=abb14(34)*abb14(13)
      abb14(21)=-abb14(21)*abb14(27)
      abb14(27)=abb14(21)*abb14(16)
      abb14(36)=abb14(27)*abb14(25)
      abb14(35)=abb14(35)+abb14(36)
      abb14(36)=abb14(28)*abb14(27)
      abb14(36)=abb14(36)+abb14(35)
      abb14(36)=spbl5k1*abb14(36)
      abb14(37)=spbk4k3*spbl6k1
      abb14(27)=spak4l6*abb14(37)*abb14(27)
      abb14(38)=abb14(34)*abb14(12)
      abb14(39)=spbl5k3*abb14(38)
      abb14(27)=-abb14(39)+abb14(36)+abb14(27)
      abb14(36)=abb14(21)*abb14(5)
      abb14(39)=spbk3k2*spbl6k1
      abb14(40)=abb14(39)*abb14(36)
      abb14(41)=abb14(23)*abb14(5)
      abb14(42)=abb14(11)*spak1k4
      abb14(43)=abb14(41)*abb14(42)
      abb14(44)=spbl6k1*abb14(43)
      abb14(11)=abb14(11)*spak3k4
      abb14(41)=abb14(41)*abb14(11)
      abb14(45)=-spbl6k3*abb14(41)
      abb14(40)=abb14(45)+abb14(40)+abb14(44)
      abb14(29)=2.0_ki*abb14(29)
      abb14(26)=abb14(29)+abb14(26)
      abb14(44)=abb14(21)*abb14(6)
      abb14(26)=abb14(44)*abb14(26)
      abb14(23)=abb14(23)*abb14(6)
      abb14(14)=abb14(23)*abb14(14)
      abb14(14)=abb14(14)+abb14(26)
      abb14(14)=abb14(10)*abb14(14)
      abb14(26)=abb14(36)*abb14(9)
      abb14(29)=abb14(26)*abb14(29)
      abb14(14)=abb14(29)+3.0_ki*abb14(40)+abb14(14)+2.0_ki*abb14(27)
      abb14(14)=8.0_ki*abb14(14)
      abb14(27)=abb14(16)*spbk4k3
      abb14(29)=4.0_ki*spbl6k2*abb14(18)*abb14(27)
      abb14(39)=abb14(20)*abb14(39)
      abb14(40)=abb14(22)*abb14(11)
      abb14(45)=abb14(40)*spbl6k3
      abb14(22)=abb14(22)*abb14(42)
      abb14(46)=abb14(22)*spbl6k1
      abb14(39)=-abb14(46)+abb14(39)+abb14(45)
      abb14(45)=-spak2l6*abb14(39)
      abb14(46)=abb14(10)*abb14(6)
      abb14(47)=abb14(9)*abb14(5)
      abb14(46)=abb14(47)+abb14(46)
      abb14(46)=abb14(18)*abb14(15)*abb14(46)
      abb14(25)=abb14(25)+abb14(28)
      abb14(47)=abb14(25)*abb14(20)
      abb14(33)=abb14(47)-abb14(33)
      abb14(47)=-spbl5k1*abb14(33)
      abb14(48)=abb14(20)*abb14(37)
      abb14(49)=-spak4l6*abb14(48)
      abb14(50)=-spbl5k3*abb14(24)
      abb14(45)=abb14(50)+abb14(49)+abb14(45)+abb14(47)+abb14(46)
      abb14(45)=8.0_ki*abb14(45)
      abb14(24)=-4.0_ki*spbl6l5*abb14(24)
      abb14(33)=-spbl6l5*abb14(33)
      abb14(18)=abb14(6)*spbk4k3*abb14(18)
      abb14(18)=abb14(18)+abb14(33)
      abb14(18)=4.0_ki*abb14(18)
      abb14(15)=-abb14(15)*abb14(36)
      abb14(33)=spal5l6*abb14(48)
      abb14(15)=abb14(15)+abb14(33)
      abb14(15)=4.0_ki*abb14(15)
      abb14(17)=-4.0_ki*spak2l5*abb14(21)*abb14(17)
      abb14(33)=-abb14(10)*spak2l5*abb14(44)
      abb14(33)=-abb14(36)+abb14(33)
      abb14(33)=4.0_ki*abb14(37)*abb14(33)
      abb14(27)=16.0_ki*abb14(21)*abb14(27)
      abb14(36)=-8.0_ki*spbk4k3*abb14(20)
      abb14(37)=spal5l6*abb14(39)
      abb14(21)=abb14(21)*spbk3k2
      abb14(39)=abb14(21)*abb14(5)
      abb14(39)=abb14(39)+abb14(43)
      abb14(43)=-spbk2k1*abb14(39)
      abb14(46)=-spbk3k2*abb14(41)
      abb14(37)=abb14(37)+abb14(46)+abb14(43)
      abb14(37)=4.0_ki*abb14(37)
      abb14(35)=-spbk2k1*abb14(35)
      abb14(38)=-spbk3k2*abb14(38)
      abb14(35)=abb14(38)+abb14(35)
      abb14(35)=4.0_ki*abb14(35)
      abb14(12)=abb14(12)*abb14(23)
      abb14(38)=spbl6k2*abb14(41)
      abb14(12)=abb14(12)+abb14(38)
      abb14(12)=4.0_ki*abb14(12)
      abb14(11)=-16.0_ki*abb14(11)*abb14(34)
      abb14(38)=-8.0_ki*abb14(40)
      abb14(26)=-abb14(28)*abb14(26)
      abb14(26)=abb14(26)-abb14(39)
      abb14(26)=spbl6k2*abb14(26)
      abb14(25)=-abb14(44)*abb14(25)
      abb14(13)=-abb14(13)*abb14(23)
      abb14(13)=abb14(13)+abb14(25)+abb14(26)
      abb14(13)=4.0_ki*abb14(13)
      abb14(16)=abb14(16)*abb14(21)
      abb14(21)=abb14(42)*abb14(34)
      abb14(16)=abb14(16)+abb14(21)
      abb14(16)=16.0_ki*abb14(16)
      abb14(20)=-spbk3k2*abb14(20)
      abb14(20)=abb14(20)+abb14(22)
      abb14(20)=8.0_ki*abb14(20)
      R2d14=abb14(19)
      rat2 = rat2 + R2d14
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='14' value='", &
          & R2d14, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd14h2
