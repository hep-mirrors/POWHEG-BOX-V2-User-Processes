module     p1_dbarc_epnebbbar_abbrevd8h3
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(24), public :: abb8
   complex(ki), public :: R2d8
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
      abb8(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb8(2)=NC**(-1)
      abb8(3)=es234**(-1)
      abb8(4)=es56**(-1)
      abb8(5)=spak2l5**(-1)
      abb8(6)=spak2l6**(-1)
      abb8(7)=spbl5k2**(-1)
      abb8(8)=spbl6k2**(-1)
      abb8(9)=c2*spak2k4
      abb8(10)=abb8(7)*spbl6k2
      abb8(11)=abb8(9)*abb8(10)
      abb8(12)=abb8(10)*spak2k4
      abb8(13)=abb8(2)*c1
      abb8(14)=abb8(12)*abb8(13)
      abb8(11)=abb8(11)-abb8(14)
      abb8(11)=abb8(11)*abb8(2)
      abb8(14)=c2*NC
      abb8(14)=abb8(14)-c1
      abb8(12)=abb8(14)*abb8(12)
      abb8(11)=abb8(11)-abb8(12)
      abb8(11)=abb8(11)*abb8(5)
      abb8(12)=abb8(13)*spak2k4
      abb8(12)=abb8(12)-abb8(9)
      abb8(12)=abb8(12)*abb8(2)
      abb8(15)=-spak2k4*abb8(14)
      abb8(12)=abb8(12)-abb8(15)
      abb8(15)=2.0_ki*abb8(6)
      abb8(12)=abb8(12)*abb8(15)
      abb8(11)=abb8(11)-abb8(12)
      abb8(11)=abb8(11)*abb8(5)
      abb8(12)=abb8(8)*spbl5k2
      abb8(9)=abb8(9)*abb8(12)
      abb8(16)=abb8(12)*spak2k4
      abb8(17)=abb8(16)*abb8(13)
      abb8(9)=abb8(9)-abb8(17)
      abb8(9)=abb8(9)*abb8(2)
      abb8(16)=abb8(14)*abb8(16)
      abb8(9)=abb8(9)-abb8(16)
      abb8(16)=abb8(6)**2
      abb8(9)=abb8(9)*abb8(16)
      abb8(9)=abb8(11)+abb8(9)
      abb8(9)=abb8(9)*mB**2
      abb8(11)=abb8(13)-c2
      abb8(13)=abb8(11)*abb8(2)
      abb8(13)=abb8(14)+abb8(13)
      abb8(17)=spbl5k1*spak1k4
      abb8(18)=spbl6l5*spak4l6
      abb8(17)=abb8(17)-abb8(18)
      abb8(17)=abb8(6)*abb8(17)*abb8(13)
      abb8(18)=spbl6k1*spak1k4
      abb8(19)=spbl6l5*spak4l5
      abb8(18)=abb8(18)+abb8(19)
      abb8(18)=abb8(5)*abb8(18)*abb8(13)
      abb8(9)=abb8(9)+abb8(17)+abb8(18)
      abb8(17)=gW*TR
      abb8(17)=spak1k2*i_*abb8(1)*abb8(3)*abb8(4)*CVDC*abb8(17)**2
      abb8(9)=mB*abb8(9)*spbk3k2*abb8(17)
      abb8(18)=2.0_ki*abb8(9)
      abb8(9)=-4.0_ki*abb8(9)
      abb8(11)=abb8(2)*spak3k4*abb8(11)
      abb8(14)=spak3k4*abb8(14)
      abb8(11)=abb8(11)+abb8(14)
      abb8(14)=4.0_ki*mB
      abb8(14)=abb8(14)*abb8(17)
      abb8(19)=abb8(14)*spbk3k2
      abb8(20)=abb8(19)*spbl6l5*abb8(11)
      abb8(21)=abb8(6)*abb8(20)
      abb8(20)=-abb8(5)*abb8(20)
      abb8(22)=-abb8(16)*abb8(12)*abb8(13)
      abb8(23)=-abb8(13)*abb8(15)
      abb8(24)=-abb8(5)*abb8(10)*abb8(13)
      abb8(23)=abb8(23)+abb8(24)
      abb8(23)=abb8(5)*abb8(23)
      abb8(22)=abb8(22)+abb8(23)
      abb8(17)=abb8(17)*mB**3
      abb8(22)=8.0_ki*abb8(22)*abb8(17)
      abb8(23)=abb8(14)*spbl6l5*abb8(13)
      abb8(24)=abb8(6)*abb8(23)
      abb8(23)=-abb8(5)*abb8(23)
      abb8(12)=-abb8(16)*abb8(12)*abb8(11)
      abb8(15)=-abb8(11)*abb8(15)
      abb8(10)=-abb8(5)*abb8(10)*abb8(11)
      abb8(10)=abb8(15)+abb8(10)
      abb8(10)=abb8(5)*abb8(10)
      abb8(10)=abb8(12)+abb8(10)
      abb8(10)=4.0_ki*abb8(10)*spbk3k2*abb8(17)
      abb8(12)=abb8(6)*spbl5k1*abb8(11)
      abb8(11)=abb8(5)*spbl6k1*abb8(11)
      abb8(11)=abb8(12)+abb8(11)
      abb8(11)=abb8(11)*abb8(19)
      abb8(12)=abb8(6)*spbl5k1*abb8(13)
      abb8(13)=abb8(5)*spbl6k1*abb8(13)
      abb8(12)=abb8(12)+abb8(13)
      abb8(12)=abb8(12)*abb8(14)
      R2d8=abb8(18)
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd8h3
