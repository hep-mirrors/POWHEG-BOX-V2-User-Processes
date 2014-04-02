module     p1_dbarc_epnebbbar_abbrevd24h3
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(28), public :: abb24
   complex(ki), public :: R2d24
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
      abb24(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb24(2)=1.0_ki/(es34+es56-es12-es234)
      abb24(3)=NC**(-1)
      abb24(4)=es56**(-1)
      abb24(5)=spak2l5**(-1)
      abb24(6)=spak2l6**(-1)
      abb24(7)=spbk4k3*spbl6k1
      abb24(8)=spbk3k1*spbl6k4
      abb24(7)=abb24(7)+abb24(8)
      abb24(8)=spbk4k3*spbl5k1
      abb24(9)=spbk3k1*spbl5k4
      abb24(8)=abb24(8)+abb24(9)
      abb24(9)=abb24(6)*spak2l5*abb24(8)
      abb24(9)=abb24(9)+abb24(7)
      abb24(9)=abb24(9)*spbl5k2
      abb24(7)=abb24(5)*spak2l6*abb24(7)
      abb24(7)=abb24(7)+abb24(8)
      abb24(7)=abb24(7)*spbl6k2
      abb24(7)=abb24(9)+abb24(7)
      abb24(8)=abb24(3)*c1
      abb24(8)=abb24(8)-c2
      abb24(8)=abb24(8)*abb24(3)
      abb24(8)=abb24(8)-c1
      abb24(7)=-abb24(7)*abb24(8)
      abb24(9)=spbk4k3*NC
      abb24(10)=abb24(9)*spbl6k1
      abb24(11)=spbk3k1*NC
      abb24(12)=abb24(11)*spbl6k4
      abb24(10)=abb24(10)+abb24(12)
      abb24(12)=abb24(9)*spbl5k1
      abb24(13)=abb24(11)*spbl5k4
      abb24(12)=abb24(12)+abb24(13)
      abb24(13)=abb24(6)*spak2l5
      abb24(14)=-abb24(12)*abb24(13)
      abb24(14)=abb24(14)-abb24(10)
      abb24(14)=spbl5k2*abb24(14)
      abb24(15)=abb24(5)*spak2l6
      abb24(10)=-abb24(10)*abb24(15)
      abb24(10)=abb24(10)-abb24(12)
      abb24(10)=spbl6k2*abb24(10)
      abb24(10)=abb24(14)+abb24(10)
      abb24(10)=c2*abb24(10)
      abb24(7)=abb24(10)+abb24(7)
      abb24(7)=abb24(7)*spak1k4
      abb24(10)=-es12-es23+es34+es123
      abb24(12)=abb24(10)*spbl5k3
      abb24(13)=abb24(12)*abb24(13)
      abb24(10)=abb24(10)*spbl6k3
      abb24(13)=abb24(13)+abb24(10)
      abb24(13)=abb24(13)*spbl5k2
      abb24(10)=abb24(10)*abb24(15)
      abb24(10)=abb24(10)+abb24(12)
      abb24(10)=abb24(10)*spbl6k2
      abb24(10)=abb24(13)+abb24(10)
      abb24(12)=abb24(10)*abb24(8)
      abb24(10)=c2*NC*abb24(10)
      abb24(7)=abb24(7)+abb24(10)+abb24(12)
      abb24(10)=TR*abb24(2)*gW
      abb24(10)=CVDC*abb24(1)*abb24(4)*mB*spak1k4*abb24(10)**2
      abb24(7)=4.0_ki*abb24(10)*i_*abb24(7)
      abb24(12)=spbl5k2*abb24(6)
      abb24(13)=spbl6k2*abb24(5)
      abb24(14)=abb24(12)+abb24(13)
      abb24(15)=spbk3k1*spak1k2
      abb24(16)=spbk4k3*spak2k4
      abb24(15)=abb24(15)-abb24(16)
      abb24(15)=-abb24(8)*abb24(15)*abb24(14)
      abb24(16)=abb24(9)*spak2k4
      abb24(17)=abb24(11)*spak1k2
      abb24(16)=abb24(16)-abb24(17)
      abb24(14)=c2*abb24(16)*abb24(14)
      abb24(14)=abb24(14)+abb24(15)
      abb24(10)=i_*abb24(10)
      abb24(15)=16.0_ki*abb24(10)
      abb24(14)=abb24(14)*abb24(15)
      abb24(16)=spbk3k1*spak1l6
      abb24(17)=spbk4k3*spak4l6
      abb24(16)=abb24(16)+abb24(17)
      abb24(17)=abb24(6)*spbl6l5
      abb24(18)=abb24(16)*abb24(17)
      abb24(19)=spbk3k1*spak1l5
      abb24(20)=spbk4k3*spak4l5
      abb24(19)=abb24(19)+abb24(20)
      abb24(20)=abb24(5)*spbl6l5
      abb24(21)=abb24(19)*abb24(20)
      abb24(18)=abb24(18)-abb24(21)
      abb24(18)=-abb24(18)*abb24(8)
      abb24(21)=abb24(9)*spak4l6
      abb24(22)=abb24(11)*spak1l6
      abb24(21)=abb24(21)+abb24(22)
      abb24(17)=-abb24(21)*abb24(17)
      abb24(22)=abb24(9)*spak4l5
      abb24(23)=abb24(11)*spak1l5
      abb24(22)=abb24(22)+abb24(23)
      abb24(20)=abb24(22)*abb24(20)
      abb24(17)=abb24(17)+abb24(20)
      abb24(17)=c2*abb24(17)
      abb24(17)=abb24(17)+abb24(18)
      abb24(15)=abb24(17)*abb24(15)
      abb24(17)=abb24(13)*spak2l6
      abb24(17)=abb24(17)+spbl5k2
      abb24(18)=-abb24(8)*spbk4k3*abb24(17)
      abb24(20)=abb24(17)*c2
      abb24(23)=-abb24(9)*abb24(20)
      abb24(18)=abb24(23)+abb24(18)
      abb24(23)=4.0_ki*abb24(10)
      abb24(18)=abb24(18)*abb24(23)
      abb24(24)=abb24(12)*spak2l5
      abb24(24)=abb24(24)+spbl6k2
      abb24(25)=-abb24(8)*spbk4k3*abb24(24)
      abb24(26)=abb24(24)*c2
      abb24(9)=-abb24(9)*abb24(26)
      abb24(9)=abb24(9)+abb24(25)
      abb24(9)=abb24(9)*abb24(23)
      abb24(25)=spbl5k2*abb24(5)
      abb24(27)=abb24(25)*abb24(19)
      abb24(28)=abb24(16)*abb24(13)
      abb24(27)=abb24(27)+abb24(28)
      abb24(27)=abb24(27)*abb24(8)
      abb24(25)=abb24(22)*abb24(25)
      abb24(13)=abb24(21)*abb24(13)
      abb24(13)=abb24(25)+abb24(13)
      abb24(13)=c2*abb24(13)
      abb24(13)=abb24(13)+abb24(27)
      abb24(10)=8.0_ki*abb24(10)
      abb24(13)=abb24(13)*abb24(10)
      abb24(25)=spbl6k2*abb24(6)
      abb24(16)=abb24(25)*abb24(16)
      abb24(19)=abb24(19)*abb24(12)
      abb24(16)=abb24(16)+abb24(19)
      abb24(16)=abb24(16)*abb24(8)
      abb24(12)=abb24(22)*abb24(12)
      abb24(19)=abb24(21)*abb24(25)
      abb24(12)=abb24(12)+abb24(19)
      abb24(12)=c2*abb24(12)
      abb24(12)=abb24(12)+abb24(16)
      abb24(10)=abb24(12)*abb24(10)
      abb24(12)=-abb24(8)*spbk3k1*abb24(17)
      abb24(16)=-abb24(11)*abb24(20)
      abb24(12)=abb24(16)+abb24(12)
      abb24(12)=abb24(12)*abb24(23)
      abb24(8)=-abb24(8)*spbk3k1*abb24(24)
      abb24(11)=-abb24(11)*abb24(26)
      abb24(8)=abb24(11)+abb24(8)
      abb24(8)=abb24(8)*abb24(23)
      R2d24=0.0_ki
      rat2 = rat2 + R2d24
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='24' value='", &
          & R2d24, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd24h3
