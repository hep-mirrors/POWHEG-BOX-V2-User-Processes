module p0_gg_hhg_abbrevd31h0_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(19), public :: abb31
   complex(ki), public :: R2d31
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config_qp, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_color_qp, only: TR
      use p0_gg_hhg_globalsl1_qp, only: epspow
      implicit none
      abb31(1)=1.0_ki/(-mH**2+es34+i_*mH*wH)
      abb31(2)=sqrt(mT**2)
      abb31(3)=sqrt2**(-1)
      abb31(4)=spbk2k1**(-1)
      abb31(5)=spak2k5**(-1)
      abb31(6)=spbk5k2**(-1)
      abb31(7)=c1*spbk5k1
      abb31(8)=c2*spbk5k1
      abb31(9)=abb31(7)-abb31(8)
      abb31(9)=abb31(9)*spak1k2**2
      abb31(10)=abb31(1)*abb31(2)
      abb31(11)=2.0_ki*abb31(10)
      abb31(12)=abb31(3)*abb31(4)*abb31(5)*gHT*gHHH*i_
      abb31(11)=abb31(11)*abb31(12)
      abb31(13)=abb31(2)**2
      abb31(14)=-es12+2.0_ki*abb31(13)
      abb31(14)=abb31(14)*abb31(11)*abb31(9)
      abb31(10)=abb31(12)*abb31(10)
      abb31(12)=4.0_ki*abb31(10)
      abb31(9)=-abb31(12)*abb31(9)
      abb31(13)=-es12+4.0_ki*abb31(13)
      abb31(15)=c2-c1
      abb31(11)=abb31(15)*abb31(13)*spak1k2*abb31(11)
      abb31(13)=abb31(10)*spak1k2
      abb31(16)=16.0_ki*c2*abb31(13)
      abb31(15)=-8.0_ki*abb31(15)*abb31(13)
      abb31(17)=c1*abb31(6)
      abb31(18)=c2*abb31(6)
      abb31(19)=abb31(17)+abb31(18)
      abb31(12)=abb31(12)*es12*abb31(19)
      abb31(7)=abb31(7)-3.0_ki*abb31(8)
      abb31(7)=4.0_ki*abb31(13)*abb31(6)*abb31(7)
      abb31(8)=8.0_ki*abb31(10)
      abb31(10)=-abb31(17)+abb31(18)
      abb31(8)=abb31(10)*abb31(8)
      R2d31=0.0_ki
      rat2 = rat2 + R2d31
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='31' value='", &
          & R2d31, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd31h0_qp
