module     p1_dbarc_epnebbbar_abbrevd3h0
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(34), public :: abb3
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
      abb3(4)=spbl5k2**(-1)
      abb3(5)=spbl6k2**(-1)
      abb3(6)=c2*abb3(2)
      abb3(7)=c1*abb3(2)**2
      abb3(6)=abb3(6)-abb3(7)
      abb3(7)=TR*gW
      abb3(6)=abb3(6)*abb3(7)**2*CVDC*i_*mB*abb3(3)*abb3(1)
      abb3(7)=-abb3(5)*abb3(6)
      abb3(8)=spbk3k2**2
      abb3(9)=-abb3(8)*abb3(7)
      abb3(10)=abb3(9)*spak1l5
      abb3(11)=-abb3(4)*abb3(6)
      abb3(8)=-abb3(8)*abb3(11)
      abb3(12)=abb3(8)*spak1l6
      abb3(10)=abb3(10)+abb3(12)
      abb3(12)=4.0_ki*spak3k4
      abb3(13)=-es12*abb3(10)*abb3(12)
      abb3(10)=8.0_ki*spak3k4*abb3(10)
      abb3(6)=-spbk3k2*abb3(6)
      abb3(14)=-abb3(4)*abb3(6)
      abb3(15)=abb3(14)*spak1l6
      abb3(6)=-abb3(5)*abb3(6)
      abb3(16)=abb3(6)*spak1l5
      abb3(15)=abb3(15)+abb3(16)
      abb3(16)=4.0_ki*abb3(15)
      abb3(17)=abb3(16)*spak1k4
      abb3(18)=-spbk2k1*abb3(17)
      abb3(19)=abb3(12)*spak1k2
      abb3(8)=-abb3(8)*abb3(19)
      abb3(20)=8.0_ki*spak1k4
      abb3(21)=abb3(20)*abb3(14)
      abb3(9)=-abb3(9)*abb3(19)
      abb3(19)=abb3(20)*abb3(6)
      abb3(20)=abb3(11)*spbk4k2
      abb3(22)=-spak1k4*abb3(20)
      abb3(23)=spak1k3*abb3(14)
      abb3(22)=abb3(22)+abb3(23)
      abb3(22)=4.0_ki*abb3(22)
      abb3(23)=abb3(7)*spbk4k2
      abb3(24)=-spak1k4*abb3(23)
      abb3(25)=spak1k3*abb3(6)
      abb3(24)=abb3(24)+abb3(25)
      abb3(24)=4.0_ki*abb3(24)
      abb3(25)=es23+2.0_ki*es12-es123
      abb3(25)=abb3(25)*abb3(16)
      abb3(15)=8.0_ki*abb3(15)
      abb3(26)=8.0_ki*spak1k2*abb3(14)
      abb3(27)=8.0_ki*abb3(6)
      abb3(27)=spak1k2*abb3(27)
      abb3(28)=abb3(11)*spak1l6
      abb3(29)=abb3(7)*spak1l5
      abb3(28)=abb3(28)+abb3(29)
      abb3(29)=4.0_ki*spbk4k2*abb3(28)
      abb3(17)=-spbk3k1*abb3(17)
      abb3(30)=-abb3(14)*abb3(12)
      abb3(12)=-abb3(6)*abb3(12)
      abb3(31)=abb3(14)*spak4l6
      abb3(32)=abb3(6)*spak4l5
      abb3(31)=abb3(31)+abb3(32)
      abb3(32)=8.0_ki*abb3(31)
      abb3(31)=-4.0_ki*abb3(31)
      abb3(33)=4.0_ki*spak2k4
      abb3(34)=abb3(14)*abb3(33)
      abb3(33)=abb3(6)*abb3(33)
      abb3(28)=-spbk2k1*abb3(28)
      abb3(20)=-spak4l6*abb3(20)
      abb3(23)=-spak4l5*abb3(23)
      abb3(14)=spak3l6*abb3(14)
      abb3(6)=spak3l5*abb3(6)
      abb3(6)=abb3(6)+abb3(14)+abb3(28)+abb3(20)+abb3(23)
      abb3(6)=4.0_ki*abb3(6)
      abb3(11)=-4.0_ki*abb3(11)
      abb3(7)=-4.0_ki*abb3(7)
      R2d3=0.0_ki
      rat2 = rat2 + R2d3
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='3' value='", &
          & R2d3, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd3h0
