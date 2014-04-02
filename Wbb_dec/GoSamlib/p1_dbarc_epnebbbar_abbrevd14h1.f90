module     p1_dbarc_epnebbbar_abbrevd14h1
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(48), public :: abb14
   complex(ki), public :: R2d14
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
      abb14(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb14(2)=NC**(-1)
      abb14(3)=es234**(-1)
      abb14(4)=es56**(-1)
      abb14(5)=spak2l5**(-1)
      abb14(6)=spbl6k2**(-1)
      abb14(7)=1.0_ki/(es34+es56-es12-es234)
      abb14(8)=sqrt(mB**2)
      abb14(9)=spbl5k2**(-1)
      abb14(10)=spak2l6**(-1)
      abb14(11)=spak1k4*abb14(7)
      abb14(12)=abb14(11)*spbl5k2
      abb14(13)=abb14(12)*spbk3k1
      abb14(14)=abb14(13)*spak1l6
      abb14(12)=abb14(12)*spbk4k3
      abb14(15)=abb14(12)*spak4l6
      abb14(14)=abb14(14)+abb14(15)
      abb14(15)=spak1k2*spak3k4
      abb14(16)=abb14(6)*abb14(5)
      abb14(17)=abb14(15)*abb14(16)
      abb14(18)=abb14(3)*spbk3k2**2
      abb14(19)=-abb14(17)*abb14(18)*mB**2
      abb14(19)=abb14(19)-abb14(14)
      abb14(20)=TR*gW
      abb14(21)=abb14(20)*mB*abb14(4)
      abb14(21)=abb14(21)**2
      abb14(22)=abb14(1)*i_*CVDC
      abb14(23)=abb14(21)*abb14(22)
      abb14(20)=abb14(20)**2
      abb14(24)=abb14(22)*abb14(20)
      abb14(25)=1.0_ki/3.0_ki*abb14(4)
      abb14(26)=abb14(25)*abb14(24)
      abb14(26)=-abb14(26)+2.0_ki*abb14(23)
      abb14(27)=c1*abb14(2)
      abb14(27)=abb14(27)-c2
      abb14(19)=abb14(19)*abb14(26)*abb14(27)
      abb14(22)=abb14(22)*spbk3k2*abb14(3)
      abb14(20)=abb14(22)*abb14(20)
      abb14(25)=abb14(25)*abb14(20)
      abb14(21)=abb14(22)*abb14(21)
      abb14(22)=-abb14(25)+2.0_ki*abb14(21)
      abb14(25)=spak2k4*spbl5k2
      abb14(26)=abb14(25)*spak1l6
      abb14(28)=spbl5k3*spak3k4
      abb14(29)=abb14(28)*spak1l6
      abb14(30)=abb14(26)-abb14(29)
      abb14(22)=abb14(30)*abb14(22)*abb14(27)
      abb14(19)=abb14(22)+abb14(19)
      abb14(19)=4.0_ki*abb14(19)
      abb14(22)=abb14(27)*abb14(4)**2
      abb14(20)=-abb14(20)*abb14(22)
      abb14(30)=-abb14(20)*abb14(30)
      abb14(23)=abb14(27)*abb14(23)
      abb14(18)=-abb14(18)*abb14(23)
      abb14(31)=abb14(17)*abb14(18)
      abb14(22)=-abb14(24)*abb14(22)
      abb14(24)=abb14(12)*abb14(22)
      abb14(32)=abb14(24)*spak4l6
      abb14(33)=abb14(13)*abb14(22)
      abb14(34)=abb14(33)*spak1l6
      abb14(30)=abb14(32)+abb14(31)+abb14(34)+abb14(30)
      abb14(31)=8.0_ki*abb14(30)
      abb14(32)=abb14(8)**2*abb14(31)
      abb14(30)=16.0_ki*abb14(30)
      abb14(34)=abb14(23)*abb14(16)
      abb14(35)=abb14(34)*abb14(13)
      abb14(21)=-abb14(21)*abb14(27)
      abb14(27)=abb14(21)*abb14(16)
      abb14(36)=abb14(27)*abb14(25)
      abb14(35)=abb14(35)+abb14(36)
      abb14(36)=-abb14(28)*abb14(27)
      abb14(36)=abb14(36)+abb14(35)
      abb14(36)=spak1l5*abb14(36)
      abb14(37)=abb14(34)*abb14(12)
      abb14(38)=spak4l5*abb14(37)
      abb14(39)=spak3k4*spak1l6
      abb14(27)=spbl6k3*abb14(39)*abb14(27)
      abb14(27)=-abb14(27)+abb14(36)+abb14(38)
      abb14(36)=abb14(21)*abb14(5)
      abb14(38)=spak2k4*spak1l6
      abb14(40)=abb14(38)*abb14(36)
      abb14(41)=abb14(23)*abb14(5)
      abb14(42)=abb14(11)*spbk3k1
      abb14(43)=abb14(41)*abb14(42)
      abb14(44)=spak1l6*abb14(43)
      abb14(11)=abb14(11)*spbk4k3
      abb14(41)=abb14(41)*abb14(11)
      abb14(45)=spak4l6*abb14(41)
      abb14(40)=abb14(45)+abb14(40)+abb14(44)
      abb14(29)=2.0_ki*abb14(29)
      abb14(26)=-abb14(29)+abb14(26)
      abb14(44)=abb14(21)*abb14(6)
      abb14(26)=abb14(44)*abb14(26)
      abb14(23)=abb14(23)*abb14(6)
      abb14(14)=abb14(23)*abb14(14)
      abb14(14)=abb14(14)+abb14(26)
      abb14(14)=abb14(10)*abb14(14)
      abb14(26)=abb14(36)*abb14(9)
      abb14(29)=-abb14(26)*abb14(29)
      abb14(14)=abb14(29)+3.0_ki*abb14(40)+abb14(14)+2.0_ki*abb14(27)
      abb14(14)=8.0_ki*abb14(14)
      abb14(27)=abb14(20)*abb14(38)
      abb14(29)=abb14(22)*abb14(11)
      abb14(38)=abb14(29)*spak4l6
      abb14(22)=abb14(22)*abb14(42)
      abb14(40)=abb14(22)*spak1l6
      abb14(27)=-abb14(40)+abb14(27)-abb14(38)
      abb14(38)=-spbl6k2*abb14(27)
      abb14(40)=-abb14(10)*abb14(6)
      abb14(45)=-abb14(9)*abb14(5)
      abb14(40)=abb14(45)+abb14(40)
      abb14(40)=abb14(18)*abb14(15)*abb14(40)
      abb14(25)=abb14(25)-abb14(28)
      abb14(45)=abb14(25)*abb14(20)
      abb14(33)=abb14(45)-abb14(33)
      abb14(45)=-spak1l5*abb14(33)
      abb14(46)=spak4l5*abb14(24)
      abb14(47)=abb14(20)*abb14(39)
      abb14(48)=spbl6k3*abb14(47)
      abb14(38)=abb14(48)+abb14(46)+abb14(38)+abb14(45)+abb14(40)
      abb14(38)=8.0_ki*abb14(38)
      abb14(15)=abb14(15)*abb14(36)
      abb14(40)=-spbl6l5*abb14(47)
      abb14(15)=abb14(15)+abb14(40)
      abb14(15)=4.0_ki*abb14(15)
      abb14(27)=spbl6l5*abb14(27)
      abb14(40)=abb14(21)*spak2k4
      abb14(45)=abb14(40)*abb14(5)
      abb14(43)=abb14(45)+abb14(43)
      abb14(45)=-spak1k2*abb14(43)
      abb14(46)=spak2k4*abb14(41)
      abb14(27)=abb14(27)+abb14(46)+abb14(45)
      abb14(27)=4.0_ki*abb14(27)
      abb14(17)=4.0_ki*spbl5k2*abb14(21)*abb14(17)
      abb14(35)=-spak1k2*abb14(35)
      abb14(37)=spak2k4*abb14(37)
      abb14(35)=abb14(37)+abb14(35)
      abb14(35)=4.0_ki*abb14(35)
      abb14(24)=4.0_ki*spal5l6*abb14(24)
      abb14(12)=-abb14(12)*abb14(23)
      abb14(37)=-spak2l6*abb14(41)
      abb14(12)=abb14(12)+abb14(37)
      abb14(12)=4.0_ki*abb14(12)
      abb14(11)=16.0_ki*abb14(11)*abb14(34)
      abb14(29)=8.0_ki*abb14(29)
      abb14(37)=abb14(10)*spbl5k2*abb14(44)
      abb14(36)=abb14(36)+abb14(37)
      abb14(36)=4.0_ki*abb14(39)*abb14(36)
      abb14(37)=abb14(16)*spak3k4
      abb14(39)=-4.0_ki*spak2l6*abb14(18)*abb14(37)
      abb14(33)=-spal5l6*abb14(33)
      abb14(18)=-abb14(6)*spak3k4*abb14(18)
      abb14(18)=abb14(18)+abb14(33)
      abb14(18)=4.0_ki*abb14(18)
      abb14(21)=-16.0_ki*abb14(21)*abb14(37)
      abb14(33)=8.0_ki*spak3k4*abb14(20)
      abb14(26)=abb14(28)*abb14(26)
      abb14(26)=abb14(26)-abb14(43)
      abb14(26)=spak2l6*abb14(26)
      abb14(25)=-abb14(44)*abb14(25)
      abb14(13)=-abb14(13)*abb14(23)
      abb14(13)=abb14(13)+abb14(25)+abb14(26)
      abb14(13)=4.0_ki*abb14(13)
      abb14(16)=abb14(16)*abb14(40)
      abb14(23)=abb14(42)*abb14(34)
      abb14(16)=abb14(16)+abb14(23)
      abb14(16)=16.0_ki*abb14(16)
      abb14(20)=-spak2k4*abb14(20)
      abb14(20)=abb14(20)+abb14(22)
      abb14(20)=8.0_ki*abb14(20)
      R2d14=abb14(19)
      rat2 = rat2 + R2d14
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='14' value='", &
          & R2d14, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd14h1
