module     p0_gg_hhg_abbrevd35h4
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_globalsh4
   implicit none
   private
   complex(ki), dimension(17), public :: abb35
   complex(ki), public :: R2d35
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_model
      use p0_gg_hhg_color, only: TR
      use p0_gg_hhg_globalsl1, only: epspow
      implicit none
      abb35(1)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb35(2)=sqrt(mT**2)
      abb35(3)=sqrt2**(-1)
      abb35(4)=spbk2k1**(-1)
      abb35(5)=spbk5k2**(-1)
      abb35(6)=c2-c1
      abb35(7)=-spak1k5*abb35(6)
      abb35(8)=es34-es51
      abb35(9)=-abb35(8)*abb35(7)
      abb35(7)=abb35(7)*es12
      abb35(9)=abb35(7)+abb35(9)
      abb35(9)=es12*abb35(9)
      abb35(10)=abb35(2)**2
      abb35(11)=abb35(10)*abb35(7)
      abb35(9)=abb35(9)+abb35(11)
      abb35(11)=abb35(1)*abb35(2)
      abb35(12)=2.0_ki*abb35(11)
      abb35(13)=abb35(3)*gHT*gHHH*i_
      abb35(14)=abb35(13)*abb35(4)
      abb35(15)=abb35(12)*abb35(14)
      abb35(9)=abb35(9)*abb35(5)*abb35(15)
      abb35(11)=abb35(14)*abb35(11)
      abb35(14)=4.0_ki*abb35(11)
      abb35(7)=abb35(5)*abb35(7)
      abb35(14)=abb35(14)*abb35(7)
      abb35(7)=-2.0_ki*abb35(11)*abb35(7)
      abb35(12)=-abb35(5)*abb35(13)*abb35(6)*spak1k5**2*abb35(12)
      abb35(13)=-es34+2.0_ki*es51
      abb35(13)=abb35(13)*es34
      abb35(16)=es51**2
      abb35(13)=abb35(13)-abb35(16)
      abb35(13)=abb35(13)*abb35(6)
      abb35(8)=-abb35(8)*abb35(6)
      abb35(16)=-es12*abb35(8)
      abb35(17)=abb35(6)*es12
      abb35(8)=abb35(17)+abb35(8)
      abb35(10)=abb35(8)*abb35(10)
      abb35(10)=-2.0_ki*abb35(10)+abb35(16)+abb35(13)
      abb35(13)=abb35(5)**2
      abb35(10)=abb35(10)*abb35(13)*abb35(15)
      abb35(11)=abb35(11)*abb35(13)
      abb35(13)=8.0_ki*abb35(11)
      abb35(15)=abb35(8)*abb35(13)
      abb35(8)=4.0_ki*abb35(8)*abb35(11)
      abb35(6)=abb35(6)*abb35(13)
      R2d35=0.0_ki
      rat2 = rat2 + R2d35
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='35' value='", &
          & R2d35, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd35h4
