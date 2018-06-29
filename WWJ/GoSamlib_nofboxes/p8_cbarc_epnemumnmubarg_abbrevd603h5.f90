module     p8_cbarc_epnemumnmubarg_abbrevd603h5
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_globalsh5
   implicit none
   private
   complex(ki), dimension(23), public :: abb603
   complex(ki), public :: R2d603
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p8_cbarc_epnemumnmubarg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_color, only: TR
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      implicit none
      abb603(1)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb603(2)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb603(3)=1.0_ki/(-es71+es56-es567+es234)
      abb603(4)=sqrt2**(-1)
      abb603(5)=spbk7k2**(-1)
      abb603(6)=spbk6k1*spak1k7
      abb603(7)=spbk6k5*spak5k7
      abb603(6)=abb603(6)-abb603(7)
      abb603(7)=-spak3k4*abb603(6)
      abb603(8)=abb603(7)*spbk3k2**2
      abb603(9)=es12+es71-es712
      abb603(10)=spak1k5*abb603(4)*abb603(3)*gW**4*abb603(1)*abb603(2)*c1*NC*TR&
      &*i_
      abb603(11)=8.0_ki*abb603(10)
      abb603(12)=abb603(11)*abb603(5)
      abb603(9)=-abb603(12)*abb603(9)*abb603(8)
      abb603(8)=16.0_ki*abb603(10)*abb603(5)*abb603(8)
      abb603(13)=abb603(6)*spak4k7
      abb603(14)=spbk3k2*abb603(5)
      abb603(15)=abb603(7)*abb603(14)
      abb603(13)=-abb603(15)+2.0_ki*abb603(13)
      abb603(15)=abb603(11)*spbk3k2
      abb603(16)=-abb603(13)*abb603(15)
      abb603(13)=4.0_ki*abb603(13)*abb603(10)*spbk3k2
      abb603(17)=-spak2k4*abb603(6)
      abb603(7)=spbk7k3*abb603(7)*abb603(5)
      abb603(18)=spbk6k1*spak1k2
      abb603(19)=spbk6k5*spak2k5
      abb603(18)=abb603(18)+abb603(19)
      abb603(19)=abb603(14)*spak3k4*abb603(18)
      abb603(7)=abb603(19)+abb603(7)+abb603(17)
      abb603(7)=abb603(7)*abb603(15)
      abb603(15)=spbk6k1*spak1k4
      abb603(17)=spbk6k5*spak4k5
      abb603(15)=abb603(15)+abb603(17)
      abb603(10)=abb603(14)*abb603(10)
      abb603(17)=16.0_ki*abb603(10)
      abb603(19)=abb603(15)*abb603(17)
      abb603(14)=abb603(11)*abb603(14)
      abb603(15)=abb603(15)*abb603(14)
      abb603(20)=abb603(14)*spbk6k5
      abb603(21)=-spak3k4*abb603(20)
      abb603(20)=spak2k4*abb603(20)
      abb603(11)=abb603(6)*abb603(11)
      abb603(22)=spbk6k5*abb603(12)
      abb603(23)=abb603(6)*abb603(14)
      abb603(6)=-4.0_ki*abb603(6)*abb603(10)
      abb603(10)=-abb603(18)*abb603(17)
      abb603(14)=abb603(14)*spbk6k1
      abb603(17)=spak3k4*abb603(14)
      abb603(14)=-spak2k4*abb603(14)
      abb603(12)=-spbk6k1*abb603(12)
      R2d603=0.0_ki
      rat2 = rat2 + R2d603
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='603' value='", &
          & R2d603, "'/>"
      end if
   end subroutine
end module p8_cbarc_epnemumnmubarg_abbrevd603h5
