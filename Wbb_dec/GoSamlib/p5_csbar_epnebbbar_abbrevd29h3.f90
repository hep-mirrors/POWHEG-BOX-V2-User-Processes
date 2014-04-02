module     p5_csbar_epnebbbar_abbrevd29h3
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(19), public :: abb29
   complex(ki), public :: R2d29
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
      abb29(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb29(2)=1.0_ki/(es34+es56-es12-es234)
      abb29(3)=sqrt(mB**2)
      abb29(4)=NC**(-1)
      abb29(5)=spak2l5**(-1)
      abb29(6)=-NC+2.0_ki*abb29(4)
      abb29(7)=c2*spbk3k1
      abb29(8)=-abb29(6)*abb29(7)
      abb29(9)=c1*abb29(4)**2
      abb29(10)=abb29(9)*spbk3k1
      abb29(8)=abb29(8)+abb29(10)
      abb29(11)=spbl6l5*abb29(3)
      abb29(12)=TR*gW
      abb29(12)=abb29(12)**2*i_*CVSC*abb29(2)*abb29(1)
      abb29(13)=abb29(12)*spak2k4
      abb29(14)=abb29(11)*abb29(13)
      abb29(8)=abb29(14)*abb29(8)
      abb29(8)=8.0_ki*abb29(8)
      abb29(15)=-abb29(6)*abb29(12)*abb29(7)
      abb29(11)=abb29(15)*abb29(11)
      abb29(12)=abb29(10)*abb29(12)
      abb29(16)=abb29(3)*abb29(12)
      abb29(17)=abb29(16)*spbl6l5
      abb29(11)=abb29(11)+abb29(17)
      abb29(17)=spak2k3*abb29(11)
      abb29(18)=-abb29(6)*abb29(14)*c2
      abb29(14)=abb29(14)*abb29(9)
      abb29(14)=abb29(14)+abb29(18)
      abb29(18)=spbk4k1*abb29(14)
      abb29(17)=abb29(17)+abb29(18)
      abb29(17)=4.0_ki*abb29(17)
      abb29(14)=-spbk4k3*abb29(14)
      abb29(11)=spak1k2*abb29(11)
      abb29(11)=abb29(14)+abb29(11)
      abb29(11)=4.0_ki*abb29(11)
      abb29(12)=-abb29(12)-abb29(15)
      abb29(14)=mB*abb29(5)
      abb29(12)=abb29(14)*abb29(12)
      abb29(18)=spak3k4*spbl6k3
      abb29(19)=spak1k4*spbl6k1
      abb29(18)=abb29(18)-abb29(19)
      abb29(18)=4.0_ki*abb29(18)
      abb29(19)=-spak2l6*abb29(12)*abb29(18)
      abb29(13)=abb29(14)*abb29(13)
      abb29(7)=-abb29(6)*abb29(13)*abb29(7)
      abb29(10)=abb29(10)*abb29(13)
      abb29(7)=abb29(10)+abb29(7)
      abb29(7)=8.0_ki*abb29(7)
      abb29(10)=spak2k3*abb29(12)
      abb29(6)=abb29(6)*abb29(13)*c2
      abb29(9)=abb29(13)*abb29(9)
      abb29(6)=-abb29(9)+abb29(6)
      abb29(9)=spbk4k1*abb29(6)
      abb29(9)=abb29(10)+abb29(9)
      abb29(9)=4.0_ki*abb29(9)
      abb29(6)=-spbk4k3*abb29(6)
      abb29(10)=spak1k2*abb29(12)
      abb29(6)=abb29(6)+abb29(10)
      abb29(6)=4.0_ki*abb29(6)
      abb29(10)=abb29(15)*abb29(3)
      abb29(10)=abb29(10)+abb29(16)
      abb29(10)=abb29(10)*abb29(18)
      R2d29=0.0_ki
      rat2 = rat2 + R2d29
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='29' value='", &
          & R2d29, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd29h3
