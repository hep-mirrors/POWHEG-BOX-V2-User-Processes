module     p0_gg_hhg_abbrevd31h4
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_globalsh4
   implicit none
   private
   complex(ki), dimension(17), public :: abb31
   complex(ki), public :: R2d31
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
      abb31(1)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb31(2)=sqrt(mT**2)
      abb31(3)=sqrt2**(-1)
      abb31(4)=spbk2k1**(-1)
      abb31(5)=spbk5k2**(-1)
      abb31(6)=c2-c1
      abb31(7)=es34-es51
      abb31(8)=abb31(7)*es12
      abb31(9)=abb31(8)*abb31(6)
      abb31(7)=abb31(7)+es12
      abb31(7)=-abb31(7)*abb31(6)
      abb31(10)=abb31(7)*abb31(2)**2
      abb31(9)=abb31(9)+abb31(10)
      abb31(10)=abb31(3)*gHT*gHHH*i_
      abb31(11)=abb31(5)*abb31(10)*abb31(4)
      abb31(12)=2.0_ki*abb31(11)
      abb31(13)=abb31(1)*abb31(2)
      abb31(14)=abb31(13)*spak1k5
      abb31(12)=abb31(12)*abb31(14)
      abb31(9)=abb31(9)*abb31(12)
      abb31(11)=4.0_ki*abb31(11)
      abb31(11)=abb31(6)*abb31(11)
      abb31(14)=-abb31(14)*es12*abb31(11)
      abb31(7)=-abb31(7)*abb31(12)
      abb31(11)=spak1k2*abb31(11)
      abb31(12)=abb31(1)*abb31(2)**3*abb31(11)
      abb31(11)=-abb31(13)*abb31(11)
      abb31(10)=abb31(10)*abb31(13)
      abb31(13)=abb31(6)*abb31(10)
      abb31(15)=-2.0_ki*abb31(5)*spak1k5**2*abb31(13)
      abb31(16)=-es34+2.0_ki*es51
      abb31(16)=abb31(16)*es34
      abb31(17)=es51**2
      abb31(8)=abb31(16)-abb31(17)+abb31(8)
      abb31(16)=abb31(5)**2
      abb31(10)=abb31(16)*abb31(4)*abb31(10)
      abb31(8)=2.0_ki*abb31(10)*abb31(8)*abb31(6)
      abb31(13)=-8.0_ki*spak1k5*abb31(16)*abb31(13)
      abb31(6)=8.0_ki*abb31(6)
      abb31(6)=abb31(10)*abb31(6)
      R2d31=0.0_ki
      rat2 = rat2 + R2d31
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='31' value='", &
          & R2d31, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd31h4
