module     p1_dbarc_epnebbbar_abbrevd29h3
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(22), public :: abb29
   complex(ki), public :: R2d29
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
      abb29(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb29(2)=1.0_ki/(es34+es56-es12-es234)
      abb29(3)=NC**(-1)
      abb29(4)=spak2l5**(-1)
      abb29(5)=sqrt(mB**2)
      abb29(6)=spak2l6**(-1)
      abb29(7)=spbk3k1*spak1k2
      abb29(8)=spbk4k3*spak2k4
      abb29(7)=abb29(7)-abb29(8)
      abb29(8)=-spbl6k2*abb29(7)
      abb29(9)=-c2*abb29(8)
      abb29(10)=abb29(5)*spbl5k2
      abb29(11)=-abb29(10)*abb29(9)
      abb29(12)=-abb29(10)*abb29(8)
      abb29(13)=abb29(3)*c1
      abb29(14)=abb29(12)*abb29(13)
      abb29(11)=2.0_ki*abb29(11)+abb29(14)
      abb29(11)=abb29(3)*abb29(11)
      abb29(14)=2.0_ki*abb29(4)
      abb29(15)=abb29(14)*c2
      abb29(16)=abb29(13)*abb29(4)
      abb29(15)=abb29(15)-abb29(16)
      abb29(16)=-abb29(7)*spak2l6*spbl6k2**2
      abb29(17)=abb29(3)*abb29(16)*abb29(15)
      abb29(18)=c1*abb29(4)
      abb29(16)=-abb29(16)*abb29(18)
      abb29(16)=abb29(16)+abb29(17)
      abb29(16)=mB*abb29(16)
      abb29(12)=c1*abb29(12)
      abb29(11)=abb29(16)+abb29(12)+abb29(11)
      abb29(12)=4.0_ki*i_
      abb29(16)=gW*TR
      abb29(16)=abb29(16)**2*abb29(1)*abb29(2)*CVDC*spak1k4
      abb29(12)=abb29(12)*abb29(16)
      abb29(11)=abb29(11)*abb29(12)
      abb29(14)=abb29(9)*abb29(14)
      abb29(8)=abb29(8)*abb29(4)
      abb29(17)=abb29(8)*abb29(13)
      abb29(14)=abb29(14)+abb29(17)
      abb29(14)=abb29(14)*abb29(3)
      abb29(17)=abb29(8)*c1
      abb29(14)=abb29(14)+abb29(17)
      abb29(16)=i_*abb29(16)*mB
      abb29(16)=8.0_ki*abb29(16)
      abb29(14)=abb29(14)*abb29(16)
      abb29(17)=spbk4k3*abb29(6)
      abb29(19)=abb29(17)*spak4l6
      abb29(20)=spbk3k1*abb29(6)
      abb29(21)=abb29(20)*spak1l6
      abb29(19)=abb29(19)+abb29(21)
      abb29(21)=spbl6l5*abb29(19)
      abb29(22)=-c2*abb29(21)
      abb29(9)=-abb29(4)*abb29(9)
      abb29(9)=abb29(9)+abb29(22)
      abb29(8)=abb29(21)-abb29(8)
      abb29(21)=abb29(8)*abb29(13)
      abb29(9)=2.0_ki*abb29(9)+abb29(21)
      abb29(9)=abb29(3)*abb29(9)
      abb29(7)=-abb29(6)*abb29(7)
      abb29(21)=-abb29(5)*abb29(7)
      abb29(22)=abb29(3)*abb29(21)*abb29(15)
      abb29(15)=abb29(3)*abb29(7)*abb29(15)
      abb29(7)=-abb29(7)*abb29(18)
      abb29(7)=abb29(7)+abb29(15)
      abb29(7)=mB*abb29(7)
      abb29(15)=-abb29(21)*abb29(18)
      abb29(7)=abb29(7)+abb29(15)+abb29(22)
      abb29(7)=mB*abb29(7)
      abb29(8)=c1*abb29(8)
      abb29(7)=abb29(7)+abb29(8)+abb29(9)
      abb29(7)=abb29(7)*abb29(16)
      abb29(8)=-abb29(13)+2.0_ki*c2
      abb29(9)=abb29(8)*abb29(3)
      abb29(9)=abb29(9)-c1
      abb29(13)=spbk4k3*abb29(5)
      abb29(15)=abb29(12)*abb29(9)*abb29(13)*spbl5k2
      abb29(13)=abb29(12)*abb29(9)*abb29(13)*spbl6l5
      abb29(16)=spbl5k2*abb29(19)
      abb29(18)=c1*abb29(16)
      abb29(8)=-abb29(3)*abb29(16)*abb29(8)
      abb29(8)=abb29(18)+abb29(8)
      abb29(16)=abb29(12)*mB
      abb29(8)=abb29(8)*abb29(16)
      abb29(17)=-abb29(16)*abb29(17)*abb29(9)
      abb29(10)=abb29(12)*abb29(9)*abb29(10)*spbk3k1
      abb29(12)=abb29(12)*abb29(9)*spbl6l5*spbk3k1*abb29(5)
      abb29(9)=-abb29(16)*abb29(20)*abb29(9)
      R2d29=0.0_ki
      rat2 = rat2 + R2d29
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='29' value='", &
          & R2d29, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd29h3
