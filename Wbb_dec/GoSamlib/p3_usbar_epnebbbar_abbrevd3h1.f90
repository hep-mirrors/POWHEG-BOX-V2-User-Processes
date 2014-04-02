module     p3_usbar_epnebbbar_abbrevd3h1
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(38), public :: abb3
   complex(ki), public :: R2d3
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
      abb3(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb3(2)=NC**(-1)
      abb3(3)=es56**(-1)
      abb3(4)=spak2l5**(-1)
      abb3(5)=spbl6k2**(-1)
      abb3(6)=abb3(2)*c1
      abb3(6)=c2-abb3(6)
      abb3(7)=gW*TR
      abb3(6)=abb3(6)*abb3(7)**2*i_*abb3(3)*CVSU
      abb3(7)=-spak2k4*abb3(6)
      abb3(8)=abb3(1)*abb3(2)
      abb3(9)=4.0_ki*abb3(8)
      abb3(10)=abb3(7)*abb3(9)
      abb3(11)=spak4l6*spbk4k3
      abb3(12)=abb3(11)*es12
      abb3(13)=spak2l6*es12
      abb3(14)=abb3(13)*spbk3k2
      abb3(12)=abb3(12)+abb3(14)
      abb3(12)=abb3(12)*spbl5k1
      abb3(14)=mB**2*abb3(4)*abb3(5)
      abb3(15)=abb3(14)*spak2k4
      abb3(16)=abb3(15)*spbk2k1
      abb3(17)=abb3(16)*spbk4k3
      abb3(18)=abb3(17)*es12
      abb3(12)=abb3(12)+abb3(18)
      abb3(12)=-abb3(12)*abb3(10)
      abb3(18)=spbk3k1*es12
      abb3(19)=abb3(18)*abb3(15)
      abb3(20)=spbk3k1*spak1k2
      abb3(21)=spbl5k1*spak4l6
      abb3(22)=abb3(20)*abb3(21)
      abb3(19)=abb3(19)+abb3(22)
      abb3(23)=8.0_ki*abb3(8)
      abb3(24)=abb3(6)*abb3(23)
      abb3(19)=abb3(19)*abb3(24)
      abb3(25)=spak2l6*spbk3k2
      abb3(11)=abb3(25)+abb3(11)
      abb3(11)=abb3(11)*spbl5k1
      abb3(18)=abb3(18)*abb3(14)
      abb3(11)=abb3(11)+abb3(17)+abb3(18)
      abb3(11)=abb3(11)*spak2k4
      abb3(17)=spak3k4*spak1k2*spbk3k1**2
      abb3(25)=abb3(14)*abb3(17)
      abb3(11)=abb3(11)+abb3(25)+abb3(22)
      abb3(11)=abb3(11)*abb3(24)
      abb3(22)=abb3(6)*abb3(15)
      abb3(8)=16.0_ki*abb3(8)*spbk3k1*abb3(22)
      abb3(25)=spak2l6*spbl5k3
      abb3(26)=abb3(25)*spbk2k1
      abb3(27)=spak2l6*spbl5k2
      abb3(28)=abb3(27)*spbk3k1
      abb3(26)=-abb3(18)+abb3(26)-abb3(28)
      abb3(26)=abb3(26)*spak2k4
      abb3(28)=abb3(21)*spak1k2
      abb3(29)=abb3(25)*spak3k4
      abb3(28)=abb3(28)-abb3(29)
      abb3(28)=abb3(28)*spbk3k1
      abb3(26)=abb3(26)-abb3(28)
      abb3(28)=abb3(6)*abb3(9)
      abb3(26)=abb3(26)*abb3(28)
      abb3(17)=-abb3(28)*abb3(17)
      abb3(29)=abb3(7)*abb3(23)
      abb3(30)=spbk3k1*abb3(29)
      abb3(31)=spak2k4*spbk4k3
      abb3(31)=abb3(31)+abb3(20)
      abb3(31)=abb3(31)*spbl5k2
      abb3(32)=spbl5k3*es12
      abb3(31)=abb3(31)-abb3(32)
      abb3(31)=abb3(31)*spak2k4
      abb3(32)=abb3(20)*spak3k4
      abb3(33)=abb3(32)*spbl5k3
      abb3(31)=abb3(31)-abb3(33)
      abb3(31)=abb3(31)*abb3(28)
      abb3(7)=-spbl5k3*abb3(7)
      abb3(33)=abb3(7)*abb3(23)
      abb3(7)=-abb3(7)*abb3(9)
      abb3(34)=spbk4k1*spak4l6*spak1k2
      abb3(13)=abb3(34)-abb3(13)
      abb3(13)=abb3(13)*spbl5k1
      abb3(18)=abb3(18)*spak2k3
      abb3(34)=spbl5k1*spak3l6
      abb3(20)=abb3(34)*abb3(20)
      abb3(15)=spbk4k1*abb3(15)*es12
      abb3(13)=abb3(13)+abb3(15)+abb3(18)+abb3(20)
      abb3(13)=abb3(13)*abb3(28)
      abb3(15)=-spbl5k1*abb3(6)*spak2l6
      abb3(18)=abb3(15)*abb3(23)
      abb3(15)=-abb3(15)*abb3(9)
      abb3(20)=spbl5k3*spak2k3
      abb3(35)=spak2k4*spbl5k4
      abb3(36)=spbl5k1*spak1k2
      abb3(20)=-abb3(36)+abb3(20)+abb3(35)
      abb3(20)=abb3(20)*abb3(28)
      abb3(10)=abb3(27)*spbk4k3*abb3(10)
      abb3(25)=-abb3(25)*abb3(6)
      abb3(35)=abb3(25)*abb3(23)
      abb3(25)=abb3(25)*abb3(9)
      abb3(36)=-spak2l6*spbl5k4*abb3(28)
      abb3(16)=abb3(16)+abb3(21)
      abb3(6)=-abb3(16)*abb3(6)
      abb3(16)=abb3(6)*abb3(9)
      abb3(6)=abb3(6)*abb3(23)
      abb3(37)=spbk3k1*abb3(14)*spak3k4
      abb3(21)=abb3(37)+abb3(21)
      abb3(21)=abb3(21)*abb3(24)
      abb3(37)=spbk3k1*spak3k4
      abb3(38)=spak2k4*spbk2k1
      abb3(37)=abb3(37)-abb3(38)
      abb3(37)=-abb3(37)*abb3(28)
      abb3(38)=spak2k3*abb3(14)*spbk2k1
      abb3(34)=abb3(38)+abb3(34)
      abb3(34)=abb3(34)*abb3(28)
      abb3(38)=abb3(14)*es12
      abb3(38)=abb3(27)+abb3(38)
      abb3(38)=spak2k4*abb3(38)
      abb3(32)=abb3(32)*abb3(14)
      abb3(32)=abb3(38)+abb3(32)
      abb3(32)=-abb3(28)*spbk3k2*abb3(32)
      abb3(22)=-spbk3k2*abb3(22)
      abb3(23)=abb3(22)*abb3(23)
      abb3(9)=abb3(22)*abb3(9)
      abb3(22)=-spbk3k2*abb3(29)
      abb3(29)=-es234+es12+es34
      abb3(29)=abb3(29)*abb3(14)
      abb3(27)=abb3(29)+abb3(27)
      abb3(27)=abb3(27)*abb3(28)
      abb3(14)=abb3(14)*abb3(24)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd3h1
