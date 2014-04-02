module     p1_dbarc_epnebbbar_abbrevd3h1
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(39), public :: abb3
   complex(ki), public :: R2d3
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
      abb3(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb3(2)=NC**(-1)
      abb3(3)=es56**(-1)
      abb3(4)=spak2l5**(-1)
      abb3(5)=spbl6k2**(-1)
      abb3(6)=c2*abb3(2)
      abb3(7)=c1*abb3(2)**2
      abb3(6)=abb3(7)-abb3(6)
      abb3(7)=TR*gW
      abb3(6)=abb3(6)*abb3(1)*abb3(7)**2*abb3(3)*i_*CVDC
      abb3(7)=-abb3(6)*spbk3k2**2
      abb3(8)=mB**2*abb3(5)*abb3(4)
      abb3(9)=abb3(8)*spak1k2
      abb3(10)=abb3(7)*abb3(9)
      abb3(11)=-spbk3k2*abb3(6)
      abb3(12)=spbl5k3*spak1l6
      abb3(13)=abb3(11)*abb3(12)
      abb3(13)=abb3(10)+abb3(13)
      abb3(13)=abb3(13)*spak3k4
      abb3(14)=abb3(11)*spak2k4
      abb3(15)=spbl5k2*spak1l6
      abb3(16)=abb3(14)*abb3(15)
      abb3(13)=abb3(13)-abb3(16)
      abb3(16)=-4.0_ki*es12*abb3(13)
      abb3(17)=8.0_ki*abb3(11)
      abb3(18)=spbl5k2*spak1k2
      abb3(19)=abb3(18)*spak4l6
      abb3(20)=abb3(17)*abb3(19)
      abb3(21)=abb3(19)*abb3(11)
      abb3(10)=-spak3k4*abb3(10)
      abb3(22)=abb3(6)*spak1k4
      abb3(23)=-spbk3k1*abb3(15)*abb3(22)
      abb3(10)=abb3(23)-abb3(21)+abb3(10)
      abb3(10)=8.0_ki*abb3(10)
      abb3(23)=abb3(11)*abb3(8)
      abb3(24)=spak1k4*abb3(23)
      abb3(25)=16.0_ki*abb3(24)
      abb3(13)=8.0_ki*abb3(13)
      abb3(26)=abb3(11)*spak2l6
      abb3(27)=-spbl5k2*abb3(26)
      abb3(12)=abb3(6)*abb3(12)
      abb3(28)=spbk2k1*abb3(12)
      abb3(27)=abb3(28)+abb3(27)
      abb3(27)=spak1k4*abb3(27)
      abb3(24)=-es12*abb3(24)
      abb3(28)=spbk4k3*abb3(22)*spak4l6*spbl5k2
      abb3(21)=abb3(28)+abb3(21)+abb3(24)+abb3(27)
      abb3(21)=4.0_ki*abb3(21)
      abb3(7)=4.0_ki*spak1k2*abb3(7)*spak3k4
      abb3(24)=spak1k4*abb3(17)
      abb3(27)=4.0_ki*abb3(11)
      abb3(28)=spak1k4*abb3(27)
      abb3(29)=abb3(22)*spbl5k3
      abb3(30)=8.0_ki*abb3(29)
      abb3(29)=4.0_ki*abb3(29)
      abb3(31)=abb3(15)*abb3(6)
      abb3(32)=es12*abb3(31)
      abb3(33)=abb3(6)*spbk4k2
      abb3(34)=abb3(19)*abb3(33)
      abb3(35)=abb3(11)*spak3l6
      abb3(36)=-abb3(18)*abb3(35)
      abb3(32)=abb3(36)+abb3(32)+abb3(34)
      abb3(32)=4.0_ki*abb3(32)
      abb3(34)=-spbk4k2*abb3(8)*abb3(22)
      abb3(23)=spak1k3*abb3(23)
      abb3(23)=abb3(23)-abb3(31)+abb3(34)
      abb3(23)=8.0_ki*abb3(23)
      abb3(31)=8.0_ki*abb3(6)
      abb3(15)=-abb3(15)*abb3(31)
      abb3(31)=-spak1k3*spbl5k3
      abb3(31)=abb3(31)+abb3(18)
      abb3(31)=abb3(6)*abb3(31)
      abb3(22)=-spbl5k4*abb3(22)
      abb3(22)=abb3(22)+abb3(31)
      abb3(22)=4.0_ki*abb3(22)
      abb3(31)=abb3(6)*spak1l6
      abb3(34)=spbk3k1*abb3(31)
      abb3(26)=abb3(26)+abb3(34)
      abb3(18)=abb3(18)*abb3(26)
      abb3(26)=abb3(9)*abb3(11)
      abb3(34)=abb3(26)-abb3(12)
      abb3(36)=es23-es123+2.0_ki*es12
      abb3(36)=abb3(34)*abb3(36)
      abb3(19)=-spbk4k3*abb3(6)*abb3(19)
      abb3(18)=abb3(19)+abb3(36)+abb3(18)
      abb3(18)=4.0_ki*abb3(18)
      abb3(19)=8.0_ki*abb3(34)
      abb3(12)=abb3(26)+abb3(12)
      abb3(12)=8.0_ki*abb3(12)
      abb3(26)=4.0_ki*abb3(34)
      abb3(34)=-spak1k2*abb3(17)
      abb3(9)=abb3(9)*abb3(33)
      abb3(36)=spbl5k4*abb3(31)
      abb3(9)=abb3(9)+abb3(36)
      abb3(9)=4.0_ki*abb3(9)
      abb3(36)=-spbk3k1*spak1k4*abb3(26)
      abb3(37)=8.0_ki*spak4l6
      abb3(11)=abb3(37)*abb3(11)
      abb3(37)=spak4l6*abb3(27)
      abb3(33)=spak4l6*abb3(33)
      abb3(33)=abb3(33)-abb3(35)
      abb3(33)=4.0_ki*abb3(33)
      abb3(17)=abb3(17)*abb3(8)
      abb3(35)=-spak3k4*abb3(17)
      abb3(27)=spak3k4*abb3(27)
      abb3(17)=abb3(17)*spak2k4
      abb3(14)=4.0_ki*abb3(14)
      abb3(38)=abb3(8)*abb3(14)
      abb3(8)=abb3(8)*abb3(6)
      abb3(39)=-es234+es34-es12
      abb3(39)=abb3(8)*abb3(39)
      abb3(31)=spbl5k1*abb3(31)
      abb3(31)=abb3(31)+abb3(39)
      abb3(31)=4.0_ki*abb3(31)
      abb3(8)=-8.0_ki*abb3(8)
      abb3(6)=4.0_ki*abb3(6)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd3h1
