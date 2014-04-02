module     p1_dbarc_epnebbbar_abbrevd8h2
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(28), public :: abb8
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
      abb8(6)=spbl5k2**(-1)
      abb8(7)=spak2l6**(-1)
      abb8(8)=spak1k4*es12
      abb8(9)=spak4l6*spbl6k2*spak1k2
      abb8(8)=abb8(8)-abb8(9)
      abb8(8)=abb8(8)*abb8(6)
      abb8(9)=spak1k2*spak4l5
      abb8(8)=abb8(8)-abb8(9)
      abb8(9)=abb8(2)*c1
      abb8(10)=abb8(9)-c2
      abb8(10)=abb8(10)*abb8(2)
      abb8(11)=abb8(10)-c1
      abb8(11)=abb8(8)*abb8(11)
      abb8(8)=c2*NC*abb8(8)
      abb8(12)=c2*NC
      abb8(10)=abb8(10)+abb8(12)-c1
      abb8(13)=spak1l5*spak2k4*abb8(10)
      abb8(8)=abb8(8)+abb8(13)+abb8(11)
      abb8(8)=abb8(8)*abb8(7)
      abb8(11)=abb8(6)*spbl6k2
      abb8(13)=abb8(11)*abb8(5)
      abb8(14)=spak1l5*abb8(10)*abb8(13)*spak2k4
      abb8(8)=abb8(8)+abb8(14)
      abb8(14)=mB**2
      abb8(8)=abb8(8)*abb8(14)
      abb8(15)=spbl6k1*spak1k4
      abb8(16)=spbl6l5*spak4l5
      abb8(15)=abb8(15)+abb8(16)
      abb8(15)=-spak1l5*abb8(15)*abb8(10)
      abb8(8)=abb8(8)+abb8(15)
      abb8(15)=gW*TR
      abb8(15)=i_*abb8(15)**2*abb8(1)*abb8(3)*abb8(4)*CVDC
      abb8(16)=-2.0_ki*abb8(8)*abb8(15)*spbk3k2
      abb8(17)=4.0_ki*abb8(15)
      abb8(18)=abb8(17)*spbk3k2
      abb8(8)=abb8(8)*abb8(18)
      abb8(19)=abb8(9)*spak3k4
      abb8(20)=c2*spak3k4
      abb8(20)=abb8(19)-abb8(20)
      abb8(20)=abb8(20)*abb8(2)
      abb8(21)=c1*spak3k4
      abb8(22)=abb8(12)*spak3k4
      abb8(20)=abb8(20)-abb8(21)+abb8(22)
      abb8(21)=abb8(14)*abb8(7)
      abb8(11)=abb8(11)*spak1k2
      abb8(23)=-abb8(21)*abb8(18)*abb8(11)*abb8(20)
      abb8(24)=-spak1l5*spbl6l5*abb8(20)
      abb8(25)=-abb8(21)*spak1k2*abb8(20)
      abb8(24)=abb8(24)+abb8(25)
      abb8(24)=abb8(24)*abb8(18)
      abb8(13)=abb8(13)+abb8(7)
      abb8(14)=abb8(14)*spak1l5
      abb8(15)=-8.0_ki*abb8(15)*abb8(14)*abb8(10)*abb8(13)
      abb8(11)=-abb8(17)*abb8(21)*abb8(11)*abb8(10)
      abb8(25)=-spak1l5*spbl6l5*abb8(10)
      abb8(26)=-abb8(21)*spak1k2*abb8(10)
      abb8(25)=abb8(25)+abb8(26)
      abb8(25)=abb8(25)*abb8(17)
      abb8(13)=-abb8(18)*abb8(14)*abb8(20)*abb8(13)
      abb8(14)=spak1l5*spbl6k1*abb8(20)
      abb8(20)=abb8(6)*es12
      abb8(22)=-abb8(22)*abb8(20)
      abb8(19)=-abb8(19)*abb8(20)
      abb8(26)=c2*abb8(20)
      abb8(27)=spak3k4*abb8(26)
      abb8(19)=abb8(27)+abb8(19)
      abb8(19)=abb8(2)*abb8(19)
      abb8(27)=c1*abb8(20)
      abb8(28)=spak3k4*abb8(27)
      abb8(19)=abb8(19)+abb8(28)+abb8(22)
      abb8(19)=abb8(19)*abb8(21)
      abb8(14)=abb8(14)+abb8(19)
      abb8(14)=abb8(14)*abb8(18)
      abb8(12)=-abb8(12)*abb8(20)
      abb8(9)=-abb8(9)*abb8(20)
      abb8(9)=abb8(26)+abb8(9)
      abb8(9)=abb8(2)*abb8(9)
      abb8(9)=abb8(9)+abb8(27)+abb8(12)
      abb8(9)=abb8(9)*abb8(21)
      abb8(10)=spak1l5*spbl6k1*abb8(10)
      abb8(9)=abb8(10)+abb8(9)
      abb8(9)=abb8(9)*abb8(17)
      R2d8=abb8(16)
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd8h2
