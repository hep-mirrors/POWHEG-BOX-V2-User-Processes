module     p1_dbarc_epnebbbar_abbrevd28h1
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(19), public :: abb28
   complex(ki), public :: R2d28
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
      abb28(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb28(2)=1.0_ki/(es34+es56-es12-es234)
      abb28(3)=NC**(-1)
      abb28(4)=spak2l5**(-1)
      abb28(5)=spbl6k2**(-1)
      abb28(6)=sqrt(mB**2)
      abb28(7)=CVDC*i_*spak1k4*abb28(2)*abb28(1)
      abb28(8)=TR*gW
      abb28(8)=abb28(8)**2
      abb28(9)=abb28(7)*abb28(8)*c2
      abb28(10)=2.0_ki*abb28(3)
      abb28(10)=abb28(10)*abb28(9)
      abb28(7)=abb28(7)*c1*abb28(8)*abb28(3)**2
      abb28(8)=abb28(9)*NC
      abb28(7)=-abb28(10)+abb28(7)+abb28(8)
      abb28(8)=spbk4k3*abb28(7)
      abb28(9)=-spak4l6*abb28(8)
      abb28(7)=spbk3k1*abb28(7)
      abb28(10)=-spak1l6*abb28(7)
      abb28(9)=abb28(9)+abb28(10)
      abb28(9)=4.0_ki*spak2l5*abb28(9)*spbl5k2**2
      abb28(10)=-spbl5k2*abb28(8)
      abb28(11)=spak4l6*abb28(10)
      abb28(12)=-spbl5k2*abb28(7)
      abb28(13)=spak1l6*abb28(12)
      abb28(11)=abb28(11)+abb28(13)
      abb28(11)=8.0_ki*abb28(11)
      abb28(13)=spak4l5*abb28(8)
      abb28(14)=spak1l5*abb28(7)
      abb28(13)=abb28(14)+abb28(13)
      abb28(14)=abb28(4)*mB**2
      abb28(13)=abb28(5)*abb28(13)*abb28(14)*spbl5k2
      abb28(15)=-abb28(14)*abb28(8)
      abb28(16)=abb28(6)*abb28(4)*mB
      abb28(17)=abb28(8)*abb28(16)
      abb28(17)=abb28(17)+abb28(15)
      abb28(17)=spak4l6*abb28(17)
      abb28(14)=-abb28(14)*abb28(7)
      abb28(16)=abb28(7)*abb28(16)
      abb28(16)=abb28(16)+abb28(14)
      abb28(16)=spak1l6*abb28(16)
      abb28(13)=abb28(17)+abb28(16)+abb28(13)
      abb28(13)=8.0_ki*abb28(13)
      abb28(16)=-spak2k4*abb28(10)
      abb28(17)=spak1k2*abb28(12)
      abb28(16)=abb28(16)+abb28(17)
      abb28(16)=4.0_ki*abb28(16)
      abb28(17)=8.0_ki*abb28(8)
      abb28(18)=mB*spbl5k2*abb28(6)*abb28(5)
      abb28(8)=-abb28(8)*abb28(18)
      abb28(10)=spak2l6*abb28(10)
      abb28(8)=abb28(8)+abb28(10)
      abb28(8)=4.0_ki*abb28(8)
      abb28(10)=8.0_ki*abb28(5)
      abb28(15)=-abb28(15)*abb28(10)
      abb28(19)=8.0_ki*abb28(7)
      abb28(7)=-abb28(7)*abb28(18)
      abb28(12)=spak2l6*abb28(12)
      abb28(7)=abb28(7)+abb28(12)
      abb28(7)=4.0_ki*abb28(7)
      abb28(10)=-abb28(14)*abb28(10)
      R2d28=0.0_ki
      rat2 = rat2 + R2d28
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='28' value='", &
          & R2d28, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd28h1
