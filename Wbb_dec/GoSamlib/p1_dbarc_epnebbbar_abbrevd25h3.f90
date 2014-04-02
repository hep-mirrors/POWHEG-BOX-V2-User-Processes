module     p1_dbarc_epnebbbar_abbrevd25h3
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(49), public :: abb25
   complex(ki), public :: R2d25
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
      abb25(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb25(2)=NC**(-1)
      abb25(3)=es234**(-1)
      abb25(4)=es56**(-1)
      abb25(5)=spak2l5**(-1)
      abb25(6)=spak2l6**(-1)
      abb25(7)=spbl5k2**(-1)
      abb25(8)=spbl6k2**(-1)
      abb25(9)=abb25(2)*c1
      abb25(10)=abb25(9)*spak2k4
      abb25(11)=c2*spak2k4
      abb25(10)=abb25(10)-abb25(11)
      abb25(12)=abb25(10)*abb25(2)
      abb25(13)=abb25(11)*NC
      abb25(14)=c1*spak2k4
      abb25(13)=abb25(13)-abb25(14)
      abb25(15)=abb25(12)+abb25(13)
      abb25(16)=2.0_ki*abb25(6)
      abb25(17)=abb25(15)*abb25(16)
      abb25(18)=abb25(7)*spbl6k2
      abb25(19)=-abb25(18)*abb25(13)
      abb25(20)=-abb25(18)*abb25(10)
      abb25(21)=abb25(20)*abb25(2)
      abb25(21)=abb25(21)+abb25(19)
      abb25(21)=abb25(21)*abb25(5)
      abb25(17)=abb25(17)-abb25(21)
      abb25(17)=abb25(17)*abb25(5)
      abb25(21)=abb25(8)*spbl5k2
      abb25(10)=-abb25(21)*abb25(10)
      abb25(22)=abb25(10)*abb25(2)
      abb25(13)=-abb25(21)*abb25(13)
      abb25(22)=abb25(22)+abb25(13)
      abb25(23)=abb25(6)**2
      abb25(22)=abb25(22)*abb25(23)
      abb25(17)=abb25(17)-abb25(22)
      abb25(22)=mB**2
      abb25(24)=i_*TR**2
      abb25(25)=spak1k2*abb25(24)
      abb25(26)=abb25(25)*spbk3k2
      abb25(17)=abb25(17)*abb25(22)*abb25(26)
      abb25(27)=spak1k4*spbl6k1
      abb25(28)=spbl6l5*spak4l5
      abb25(27)=abb25(27)+abb25(28)
      abb25(9)=abb25(9)-c2
      abb25(28)=abb25(9)*abb25(2)
      abb25(29)=abb25(28)-c1
      abb25(30)=-abb25(27)*abb25(29)
      abb25(31)=c2*NC*abb25(27)
      abb25(30)=-abb25(31)+abb25(30)
      abb25(30)=abb25(30)*abb25(5)
      abb25(32)=spak1k4*spbl5k1
      abb25(33)=spbl6l5*spak4l6
      abb25(32)=abb25(32)-abb25(33)
      abb25(33)=-abb25(32)*abb25(29)
      abb25(34)=-c2*NC*abb25(32)
      abb25(33)=abb25(34)+abb25(33)
      abb25(33)=abb25(33)*abb25(6)
      abb25(30)=abb25(30)+abb25(33)
      abb25(30)=abb25(30)*abb25(26)
      abb25(33)=abb25(17)+abb25(30)
      abb25(12)=abb25(12)-abb25(14)
      abb25(14)=spbl5k1*spak1k3
      abb25(35)=spbl6l5*spak3l6
      abb25(14)=abb25(14)-abb25(35)
      abb25(35)=-abb25(14)*abb25(12)
      abb25(36)=abb25(14)*NC
      abb25(37)=-abb25(36)*abb25(11)
      abb25(35)=abb25(37)+abb25(35)
      abb25(35)=abb25(6)*abb25(35)
      abb25(37)=spbl6k1*spak1k3
      abb25(38)=spbl6l5*spak3l5
      abb25(37)=abb25(37)+abb25(38)
      abb25(12)=-abb25(37)*abb25(12)
      abb25(38)=abb25(37)*NC
      abb25(11)=-abb25(38)*abb25(11)
      abb25(11)=abb25(11)+abb25(12)
      abb25(11)=abb25(5)*abb25(11)
      abb25(11)=abb25(35)+abb25(11)
      abb25(11)=spbk3k2*abb25(11)
      abb25(12)=-abb25(29)*es23*abb25(32)
      abb25(35)=es23*abb25(34)
      abb25(12)=abb25(35)+abb25(12)
      abb25(12)=abb25(6)*abb25(12)
      abb25(35)=-abb25(29)*es23*abb25(27)
      abb25(39)=-es23*abb25(31)
      abb25(35)=abb25(39)+abb25(35)
      abb25(35)=abb25(5)*abb25(35)
      abb25(11)=abb25(11)+abb25(12)+abb25(35)
      abb25(11)=abb25(11)*spbk3k2*abb25(24)
      abb25(9)=-abb25(2)*spak3k4*abb25(9)
      abb25(12)=c2*NC
      abb25(12)=abb25(12)-c1
      abb25(35)=-spak3k4*abb25(12)
      abb25(9)=abb25(9)+abb25(35)
      abb25(35)=abb25(6)*spbl5k1*abb25(9)
      abb25(39)=abb25(5)*spbl6k1*abb25(9)
      abb25(35)=abb25(35)+abb25(39)
      abb25(39)=-abb25(35)*spbk3k2**2*abb25(25)
      abb25(11)=abb25(11)+abb25(39)
      abb25(11)=abb25(3)*spak1k2*abb25(11)
      abb25(11)=-abb25(33)+abb25(11)
      abb25(39)=abb25(4)*CVDC
      abb25(40)=abb25(39)*mB
      abb25(41)=gW**2
      abb25(42)=abb25(3)*abb25(40)*abb25(41)
      abb25(43)=4.0_ki*abb25(1)
      abb25(11)=abb25(43)*abb25(11)*abb25(42)
      abb25(43)=abb25(3)*gW
      abb25(43)=abb25(1)*abb25(43)**2
      abb25(40)=abb25(40)*abb25(43)
      abb25(44)=16.0_ki*abb25(40)
      abb25(33)=abb25(44)*abb25(33)
      abb25(17)=2.0_ki*abb25(30)+abb25(17)
      abb25(30)=8.0_ki*abb25(40)
      abb25(17)=abb25(17)*abb25(30)
      abb25(44)=spbl6l5*abb25(9)
      abb25(45)=4.0_ki*abb25(26)
      abb25(40)=abb25(45)*abb25(40)
      abb25(46)=abb25(40)*abb25(6)
      abb25(47)=abb25(44)*abb25(46)
      abb25(48)=spbl6l5*abb25(15)
      abb25(46)=abb25(48)*abb25(46)
      abb25(49)=abb25(40)*abb25(5)
      abb25(44)=-abb25(44)*abb25(49)
      abb25(48)=-abb25(48)*abb25(49)
      abb25(14)=-abb25(14)*abb25(29)
      abb25(36)=-c2*abb25(36)
      abb25(14)=abb25(36)+abb25(14)
      abb25(14)=abb25(6)*abb25(14)
      abb25(36)=-abb25(37)*abb25(29)
      abb25(37)=-c2*abb25(38)
      abb25(36)=abb25(37)+abb25(36)
      abb25(36)=abb25(5)*abb25(36)
      abb25(14)=abb25(14)+abb25(36)
      abb25(14)=spbk3k2*abb25(14)
      abb25(12)=abb25(28)+abb25(12)
      abb25(28)=abb25(23)*abb25(12)*abb25(21)*es34
      abb25(36)=abb25(16)*es34*abb25(12)
      abb25(37)=abb25(5)*abb25(12)*abb25(18)*es34
      abb25(36)=abb25(36)+abb25(37)
      abb25(36)=abb25(5)*abb25(36)
      abb25(28)=abb25(28)+abb25(36)
      abb25(28)=abb25(28)*abb25(22)
      abb25(36)=-abb25(29)*spbk4k2*abb25(32)
      abb25(37)=spbk4k2*abb25(34)
      abb25(36)=abb25(37)+abb25(36)
      abb25(36)=abb25(6)*abb25(36)
      abb25(37)=-abb25(29)*spbk4k2*abb25(27)
      abb25(38)=-spbk4k2*abb25(31)
      abb25(37)=abb25(38)+abb25(37)
      abb25(37)=abb25(5)*abb25(37)
      abb25(14)=abb25(28)+abb25(14)+abb25(36)+abb25(37)
      abb25(14)=abb25(14)*abb25(42)
      abb25(28)=-abb25(23)*abb25(21)*abb25(12)
      abb25(36)=-abb25(12)*abb25(16)
      abb25(37)=-abb25(5)*abb25(18)*abb25(12)
      abb25(36)=abb25(36)+abb25(37)
      abb25(36)=abb25(5)*abb25(36)
      abb25(28)=abb25(28)+abb25(36)
      abb25(36)=abb25(39)*mB**3
      abb25(28)=abb25(28)*abb25(41)*abb25(36)
      abb25(14)=abb25(28)+abb25(14)
      abb25(14)=8.0_ki*abb25(1)*abb25(3)*abb25(25)*abb25(14)
      abb25(28)=abb25(29)*spbk4k3*abb25(32)
      abb25(32)=-spbk4k3*abb25(34)
      abb25(28)=abb25(32)+abb25(28)
      abb25(28)=abb25(6)*abb25(28)
      abb25(27)=abb25(29)*spbk4k3*abb25(27)
      abb25(29)=spbk4k3*abb25(31)
      abb25(27)=abb25(29)+abb25(27)
      abb25(27)=abb25(5)*abb25(27)
      abb25(27)=abb25(28)+abb25(27)
      abb25(24)=abb25(27)*abb25(24)
      abb25(27)=abb25(6)*spbl5k1*abb25(12)
      abb25(12)=abb25(5)*spbl6k1*abb25(12)
      abb25(12)=abb25(27)+abb25(12)
      abb25(12)=abb25(12)*abb25(26)
      abb25(12)=abb25(24)+abb25(12)
      abb25(12)=spak1k2*abb25(12)
      abb25(24)=-abb25(16)*spbk4k3*abb25(15)
      abb25(19)=spbk4k3*abb25(19)
      abb25(26)=abb25(2)*spbk4k3
      abb25(20)=abb25(20)*abb25(26)
      abb25(19)=abb25(20)+abb25(19)
      abb25(19)=abb25(5)*abb25(19)
      abb25(19)=abb25(24)+abb25(19)
      abb25(19)=abb25(5)*abb25(19)
      abb25(13)=spbk4k3*abb25(13)
      abb25(10)=abb25(10)*abb25(26)
      abb25(10)=abb25(10)+abb25(13)
      abb25(10)=abb25(10)*abb25(23)
      abb25(10)=abb25(10)+abb25(19)
      abb25(10)=abb25(10)*abb25(22)*abb25(25)
      abb25(10)=abb25(12)+abb25(10)
      abb25(10)=abb25(10)*abb25(30)
      abb25(12)=-abb25(23)*abb25(21)*abb25(9)
      abb25(13)=-abb25(9)*abb25(16)
      abb25(9)=-abb25(5)*abb25(18)*abb25(9)
      abb25(9)=abb25(13)+abb25(9)
      abb25(9)=abb25(5)*abb25(9)
      abb25(9)=abb25(12)+abb25(9)
      abb25(9)=abb25(9)*abb25(45)*abb25(36)*abb25(43)
      abb25(12)=abb25(35)*abb25(40)
      abb25(13)=abb25(6)*spbl5k1*abb25(15)
      abb25(15)=abb25(5)*spbl6k1*abb25(15)
      abb25(13)=abb25(13)+abb25(15)
      abb25(13)=abb25(13)*abb25(40)
      R2d25=0.0_ki
      rat2 = rat2 + R2d25
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='25' value='", &
          & R2d25, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd25h3
