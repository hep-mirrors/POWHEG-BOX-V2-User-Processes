module     p9_csbar_epnebbbarg_abbrevd4h0
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_globalsh0
   implicit none
   private
   complex(ki), dimension(18), public :: abb4
   complex(ki), public :: R2d4
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p9_csbar_epnebbbarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_color, only: TR
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      implicit none
      abb4(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb4(2)=es234**(-1)
      abb4(3)=es567**(-1)
      abb4(4)=es56**(-1)
      abb4(5)=spbl5k2**(-1)
      abb4(6)=spbl6k2**(-1)
      abb4(7)=1.0_ki/(es34+es567-es12-es234)
      abb4(8)=spak3k4*spbe7k3
      abb4(9)=spbe7k1*spak1k4
      abb4(8)=abb4(8)-abb4(9)
      abb4(9)=spbk7k2*spak2e7
      abb4(8)=abb4(8)*abb4(9)
      abb4(10)=spal5k7*abb4(8)
      abb4(11)=spbe7l5*spal5e7
      abb4(12)=spbe7l6*spal6e7
      abb4(11)=abb4(11)+abb4(12)
      abb4(12)=spak2l5*abb4(11)
      abb4(13)=abb4(12)*spbk3k2
      abb4(14)=spak3k4*abb4(13)
      abb4(10)=abb4(10)+abb4(14)
      abb4(14)=c3-c1
      abb4(10)=-abb4(10)*abb4(14)
      abb4(15)=abb4(14)*spbk2k1
      abb4(16)=abb4(15)*spak1k4
      abb4(12)=-abb4(12)*abb4(16)
      abb4(10)=abb4(12)+abb4(10)
      abb4(10)=abb4(6)*abb4(10)
      abb4(8)=spal6k7*abb4(8)
      abb4(12)=spak2l6*abb4(11)
      abb4(17)=abb4(12)*spbk3k2
      abb4(18)=spak3k4*abb4(17)
      abb4(8)=abb4(8)+abb4(18)
      abb4(8)=-abb4(8)*abb4(14)
      abb4(12)=-abb4(12)*abb4(16)
      abb4(8)=abb4(12)+abb4(8)
      abb4(8)=abb4(5)*abb4(8)
      abb4(8)=abb4(10)+abb4(8)
      abb4(8)=abb4(7)*spbk3k1*abb4(8)
      abb4(10)=spbk4k3*abb4(11)
      abb4(11)=spak4l5*abb4(10)
      abb4(11)=abb4(11)+abb4(13)
      abb4(11)=abb4(11)*abb4(15)
      abb4(12)=spak4e7*spbk4k3*spbk7k2
      abb4(9)=abb4(9)*spbk3k2
      abb4(9)=abb4(12)+abb4(9)
      abb4(9)=abb4(14)*spbe7k1*abb4(9)
      abb4(12)=-spal5k7*abb4(9)
      abb4(11)=abb4(11)+abb4(12)
      abb4(11)=abb4(6)*abb4(11)
      abb4(10)=spak4l6*abb4(10)
      abb4(10)=abb4(10)+abb4(17)
      abb4(10)=abb4(10)*abb4(15)
      abb4(9)=-spal6k7*abb4(9)
      abb4(9)=abb4(10)+abb4(9)
      abb4(9)=abb4(5)*abb4(9)
      abb4(9)=abb4(11)+abb4(9)
      abb4(9)=abb4(2)*spak2k4*abb4(9)
      abb4(8)=abb4(9)+abb4(8)
      abb4(9)=gW*TR
      abb4(8)=9.0_ki/2.0_ki*abb4(1)*abb4(3)*abb4(4)*CVSC*mB*NC*i_*abb4(8)*abb4(&
      &9)**2
      R2d4=0.0_ki
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p9_csbar_epnebbbarg_abbrevd4h0
