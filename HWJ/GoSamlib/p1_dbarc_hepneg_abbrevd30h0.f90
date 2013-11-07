module     p1_dbarc_hepneg_abbrevd30h0
   use p1_dbarc_hepneg_config, only: ki
   use p1_dbarc_hepneg_globalsh0
   implicit none
   private
   complex(ki), dimension(19), public :: abb30
   complex(ki), public :: R2d30
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_hepneg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_hepneg_kinematics
      use p1_dbarc_hepneg_model
      use p1_dbarc_hepneg_color, only: TR
      use p1_dbarc_hepneg_globalsl1, only: epspow
      implicit none
      abb30(1)=1.0_ki/(-mW**2+es345+i_*mW*wW)
      abb30(2)=1.0_ki/(-mW**2+es45+i_*mW*wW)
      abb30(3)=NC**(-1)
      abb30(4)=es61**(-1)
      abb30(5)=abb30(3)-NC
      abb30(6)=-spbk6e6*spak5k6*abb30(5)
      abb30(7)=-spbe6k1*abb30(5)
      abb30(8)=-spak1k5*abb30(7)
      abb30(9)=abb30(6)+abb30(8)
      abb30(10)=abb30(4)*spbk4k2
      abb30(11)=gHWW*CVDC*gW**2*abb30(1)*abb30(2)*spak1e6*c1*TR*i_
      abb30(12)=abb30(10)*abb30(11)
      abb30(13)=-abb30(9)*abb30(12)
      abb30(14)=spak1k5*es12
      abb30(15)=spbk6k2*spak5k6*spak1k2
      abb30(14)=abb30(14)-abb30(15)
      abb30(14)=abb30(14)*abb30(7)
      abb30(15)=es12-es345
      abb30(15)=abb30(15)*spak5k6
      abb30(16)=spbk2k1*spak1k5*spak2k6
      abb30(15)=abb30(15)-abb30(16)
      abb30(5)=abb30(5)*spbk6e6
      abb30(15)=-abb30(15)*abb30(5)
      abb30(14)=abb30(15)+abb30(14)
      abb30(10)=abb30(14)*abb30(10)
      abb30(14)=spbk4k2*abb30(6)
      abb30(10)=abb30(14)+abb30(10)
      abb30(10)=2.0_ki*abb30(10)*abb30(11)
      abb30(12)=4.0_ki*abb30(12)
      abb30(6)=-abb30(6)*abb30(12)
      abb30(8)=abb30(8)*abb30(12)
      abb30(12)=2.0_ki*abb30(4)
      abb30(11)=abb30(12)*abb30(11)
      abb30(12)=abb30(11)*spbk4k2
      abb30(14)=abb30(9)*abb30(12)
      abb30(15)=-abb30(11)*spbk6k4*abb30(9)
      abb30(16)=abb30(12)*spak1k5*abb30(5)
      abb30(17)=-abb30(11)*abb30(5)
      abb30(18)=-spbk6k4*abb30(7)
      abb30(19)=-spbk4k1*abb30(5)
      abb30(18)=abb30(19)+abb30(18)
      abb30(18)=spak1k6*abb30(18)
      abb30(19)=spak1k2*abb30(7)
      abb30(5)=spak2k6*abb30(5)
      abb30(5)=abb30(5)+abb30(19)
      abb30(5)=spbk4k2*abb30(5)
      abb30(5)=abb30(5)+abb30(18)
      abb30(5)=abb30(5)*abb30(11)
      abb30(12)=-abb30(12)*spak5k6*abb30(7)
      abb30(9)=-abb30(11)*spbk4k1*abb30(9)
      abb30(7)=abb30(7)*abb30(11)
      R2d30=abb30(13)
      rat2 = rat2 + R2d30
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='30' value='", &
          & R2d30, "'/>"
      end if
   end subroutine
end module p1_dbarc_hepneg_abbrevd30h0
