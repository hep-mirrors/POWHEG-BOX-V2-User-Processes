module     p1_dbarc_epnebbbar_abbrevd1h0
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(36), public :: abb1
   complex(ki), public :: R2d1
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
      abb1(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb1(2)=es56**(-1)
      abb1(3)=spbl5k2**(-1)
      abb1(4)=spbl6k2**(-1)
      abb1(5)=spak1l6*abb1(3)
      abb1(6)=spak1l5*abb1(4)
      abb1(7)=abb1(5)+abb1(6)
      abb1(8)=CVDC*i_*mB*abb1(2)*abb1(1)
      abb1(9)=c2*abb1(8)*NC
      abb1(10)=abb1(8)*c1
      abb1(9)=abb1(9)-abb1(10)
      abb1(10)=TR*gW
      abb1(10)=abb1(10)**2
      abb1(9)=abb1(9)*abb1(10)
      abb1(11)=-spbk3k2**2*abb1(9)
      abb1(12)=abb1(11)*abb1(7)
      abb1(13)=4.0_ki*spak3k4
      abb1(14)=abb1(12)*abb1(13)
      abb1(15)=NC*c2
      abb1(15)=c1-abb1(15)
      abb1(8)=abb1(15)*abb1(8)*abb1(10)*spbk3k2
      abb1(10)=abb1(8)*spak1l5
      abb1(15)=abb1(8)*spbk4k2
      abb1(16)=spak1k4*abb1(3)
      abb1(17)=abb1(15)*abb1(16)
      abb1(10)=abb1(10)+abb1(17)
      abb1(17)=abb1(8)*abb1(5)
      abb1(18)=abb1(17)*spbl6k2
      abb1(18)=abb1(10)+abb1(18)
      abb1(18)=spak4l6*abb1(18)
      abb1(19)=abb1(8)*spak1l6
      abb1(20)=spak1k4*abb1(4)
      abb1(15)=abb1(15)*abb1(20)
      abb1(15)=abb1(19)+abb1(15)
      abb1(19)=abb1(8)*abb1(6)
      abb1(21)=abb1(19)*spbl5k2
      abb1(21)=abb1(15)+abb1(21)
      abb1(21)=spak4l5*abb1(21)
      abb1(22)=spak3l5*abb1(11)*abb1(20)
      abb1(23)=abb1(11)*spak3l6
      abb1(24)=abb1(23)*abb1(16)
      abb1(18)=abb1(22)+abb1(24)+abb1(21)+abb1(18)
      abb1(21)=4.0_ki*abb1(18)
      abb1(12)=spak3k4*abb1(12)
      abb1(12)=abb1(12)+abb1(18)
      abb1(12)=2.0_ki*abb1(12)
      abb1(18)=abb1(19)+abb1(17)
      abb1(22)=2.0_ki*abb1(18)
      abb1(24)=abb1(22)*spak3k4
      abb1(25)=-spbl6k3*abb1(24)
      abb1(26)=abb1(16)*abb1(8)
      abb1(27)=8.0_ki*abb1(26)
      abb1(26)=4.0_ki*abb1(26)
      abb1(28)=-spbl5k3*abb1(24)
      abb1(29)=abb1(20)*abb1(8)
      abb1(30)=8.0_ki*abb1(29)
      abb1(29)=4.0_ki*abb1(29)
      abb1(10)=spak3l6*abb1(10)
      abb1(15)=spak3l5*abb1(15)
      abb1(31)=spak4l5*spbk4k2*abb1(4)
      abb1(32)=spak4l6*spbk4k2*abb1(3)
      abb1(31)=abb1(31)+abb1(32)
      abb1(32)=abb1(8)*abb1(31)
      abb1(33)=spak3l5*abb1(4)
      abb1(11)=abb1(11)*abb1(33)
      abb1(23)=abb1(23)*abb1(3)
      abb1(11)=abb1(11)+abb1(23)+abb1(32)
      abb1(23)=spak1k3*abb1(11)
      abb1(32)=abb1(9)*spbk4k2
      abb1(34)=-spak1l5*abb1(32)
      abb1(35)=abb1(9)*spbk4k2**2
      abb1(36)=-abb1(16)*abb1(35)
      abb1(34)=abb1(34)+abb1(36)
      abb1(34)=spak4l6*abb1(34)
      abb1(36)=-spak1l6*abb1(32)
      abb1(35)=-abb1(20)*abb1(35)
      abb1(35)=abb1(36)+abb1(35)
      abb1(35)=spak4l5*abb1(35)
      abb1(17)=spak3l6*abb1(17)
      abb1(36)=-spak4l6*abb1(5)*abb1(32)
      abb1(17)=abb1(36)+abb1(17)
      abb1(17)=spbl6k2*abb1(17)
      abb1(19)=spak3l5*abb1(19)
      abb1(36)=-spak4l5*abb1(6)*abb1(32)
      abb1(19)=abb1(36)+abb1(19)
      abb1(19)=spbl5k2*abb1(19)
      abb1(10)=abb1(23)+abb1(19)+abb1(17)+abb1(15)+abb1(10)+abb1(34)+abb1(35)
      abb1(10)=2.0_ki*abb1(10)
      abb1(15)=abb1(16)*spbk4k2
      abb1(5)=-spbl6k2*abb1(5)
      abb1(5)=abb1(5)-spak1l5-2.0_ki*abb1(15)
      abb1(5)=abb1(9)*abb1(5)
      abb1(15)=abb1(8)*abb1(3)
      abb1(16)=2.0_ki*spak1k3
      abb1(17)=abb1(15)*abb1(16)
      abb1(5)=abb1(17)+abb1(5)
      abb1(5)=2.0_ki*abb1(5)
      abb1(17)=abb1(20)*spbk4k2
      abb1(6)=-spbl5k2*abb1(6)
      abb1(6)=abb1(6)-spak1l6-2.0_ki*abb1(17)
      abb1(6)=abb1(9)*abb1(6)
      abb1(17)=abb1(8)*abb1(4)
      abb1(16)=abb1(17)*abb1(16)
      abb1(6)=abb1(16)+abb1(6)
      abb1(6)=2.0_ki*abb1(6)
      abb1(16)=4.0_ki*abb1(18)
      abb1(7)=2.0_ki*abb1(7)*abb1(32)
      abb1(18)=-spbk2k1*abb1(18)
      abb1(11)=abb1(18)+abb1(11)
      abb1(11)=2.0_ki*spak3k4*abb1(11)
      abb1(18)=abb1(13)*abb1(15)
      abb1(13)=abb1(13)*abb1(17)
      abb1(17)=spbk3k1*abb1(24)
      abb1(19)=abb1(9)*abb1(31)
      abb1(15)=-spak3l6*abb1(15)
      abb1(8)=-abb1(8)*abb1(33)
      abb1(8)=abb1(8)+abb1(15)+abb1(19)
      abb1(8)=2.0_ki*abb1(8)
      abb1(9)=4.0_ki*abb1(9)
      abb1(15)=abb1(3)*abb1(9)
      abb1(9)=abb1(4)*abb1(9)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd1h0
