module     p1_dbarc_epnebbbar_abbrevd30h1
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(42), public :: abb30
   complex(ki), public :: R2d30
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
      abb30(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb30(2)=NC**(-1)
      abb30(3)=es234**(-1)
      abb30(4)=spak2l5**(-1)
      abb30(5)=spbl5k2**(-1)
      abb30(6)=spbl6k2**(-1)
      abb30(7)=sqrt(mB**2)
      abb30(8)=TR*gW
      abb30(8)=abb30(8)**2*i_*CVDC*abb30(3)*abb30(1)
      abb30(9)=mB**2
      abb30(10)=abb30(8)*abb30(9)
      abb30(11)=spbk3k2**2
      abb30(12)=abb30(11)*abb30(10)
      abb30(13)=abb30(4)*spak1k2
      abb30(14)=abb30(13)*abb30(6)
      abb30(15)=2.0_ki*c2
      abb30(16)=abb30(15)*abb30(2)
      abb30(17)=abb30(14)*abb30(16)
      abb30(18)=abb30(12)*abb30(17)
      abb30(19)=abb30(2)**2
      abb30(19)=abb30(19)+1.0_ki
      abb30(20)=abb30(12)*abb30(19)
      abb30(21)=abb30(13)*c1
      abb30(22)=abb30(21)*abb30(6)
      abb30(23)=abb30(20)*abb30(22)
      abb30(18)=abb30(18)-abb30(23)
      abb30(18)=abb30(18)*spak3k4
      abb30(23)=abb30(8)*spbk3k2
      abb30(24)=abb30(23)*abb30(19)
      abb30(25)=abb30(24)*c1
      abb30(15)=abb30(15)*abb30(23)
      abb30(26)=abb30(15)*abb30(2)
      abb30(25)=abb30(25)-abb30(26)
      abb30(26)=abb30(25)*spak1l6
      abb30(27)=spak2k4*spbl5k2
      abb30(28)=spbl5k3*spak3k4
      abb30(27)=abb30(27)-abb30(28)
      abb30(29)=abb30(27)*abb30(26)
      abb30(18)=abb30(18)+abb30(29)
      abb30(29)=-spak1l5*abb30(18)
      abb30(30)=abb30(16)*abb30(13)
      abb30(12)=abb30(12)*abb30(30)
      abb30(20)=-abb30(20)*abb30(21)
      abb30(12)=abb30(20)+abb30(12)
      abb30(20)=abb30(5)*spak3k4
      abb30(12)=spak1l6*abb30(12)*abb30(20)
      abb30(12)=abb30(29)+abb30(12)
      abb30(12)=spbl5k1*abb30(12)
      abb30(29)=abb30(8)*abb30(19)
      abb30(31)=abb30(6)*c1
      abb30(32)=abb30(31)*abb30(29)
      abb30(8)=abb30(8)*c2
      abb30(8)=2.0_ki*abb30(8)
      abb30(33)=abb30(8)*abb30(2)
      abb30(34)=abb30(6)*abb30(33)
      abb30(32)=abb30(32)-abb30(34)
      abb30(11)=abb30(20)*spak1k2*abb30(4)**2*abb30(32)*abb30(11)*mB**4
      abb30(20)=abb30(2)*mB
      abb30(15)=abb30(15)*abb30(20)
      abb30(24)=mB*abb30(24)
      abb30(32)=-c1*abb30(24)
      abb30(32)=abb30(32)+abb30(15)
      abb30(32)=spak2k4*spak1l6*abb30(7)*abb30(4)*abb30(32)
      abb30(32)=abb30(32)+abb30(11)
      abb30(32)=es12*abb30(32)
      abb30(34)=abb30(24)*abb30(21)
      abb30(35)=abb30(15)*abb30(13)
      abb30(34)=abb30(34)-abb30(35)
      abb30(35)=abb30(34)*abb30(7)
      abb30(36)=abb30(35)*spak3k4
      abb30(37)=spbk3k1*spak1l6*abb30(36)
      abb30(12)=abb30(37)+abb30(32)+abb30(12)
      abb30(12)=4.0_ki*abb30(12)
      abb30(32)=2.0_ki*abb30(7)
      abb30(34)=abb30(34)*abb30(32)
      abb30(9)=abb30(23)*abb30(9)
      abb30(23)=abb30(9)*abb30(19)
      abb30(37)=abb30(23)*abb30(21)
      abb30(9)=abb30(16)*abb30(9)
      abb30(16)=abb30(9)*abb30(13)
      abb30(16)=abb30(37)-abb30(16)
      abb30(34)=abb30(34)-abb30(16)
      abb30(37)=abb30(34)*spak4l6
      abb30(24)=abb30(24)*abb30(31)
      abb30(15)=abb30(15)*abb30(6)
      abb30(15)=abb30(24)-abb30(15)
      abb30(24)=spbl5k2*abb30(7)
      abb30(38)=abb30(24)*spak1k4
      abb30(39)=abb30(38)*abb30(15)
      abb30(40)=abb30(23)*abb30(22)
      abb30(14)=abb30(9)*abb30(14)
      abb30(14)=abb30(40)-abb30(14)
      abb30(40)=spak4l5*spbl5k2
      abb30(41)=abb30(40)*abb30(14)
      abb30(37)=-abb30(37)+abb30(39)-abb30(41)
      abb30(39)=8.0_ki*abb30(37)
      abb30(11)=abb30(11)-abb30(37)
      abb30(11)=8.0_ki*abb30(11)
      abb30(18)=-4.0_ki*abb30(18)
      abb30(27)=4.0_ki*abb30(27)
      abb30(37)=-spak1l5*abb30(25)*abb30(27)
      abb30(41)=8.0_ki*abb30(25)
      abb30(41)=abb30(41)*spak1k4
      abb30(36)=-4.0_ki*abb30(36)
      abb30(35)=abb30(35)-abb30(16)
      abb30(35)=spak2k4*abb30(35)
      abb30(16)=abb30(5)*abb30(16)*abb30(28)
      abb30(16)=abb30(35)+abb30(16)
      abb30(16)=4.0_ki*abb30(16)
      abb30(27)=abb30(14)*abb30(27)
      abb30(35)=8.0_ki*abb30(26)
      abb30(8)=abb30(8)*abb30(20)
      abb30(13)=abb30(8)*abb30(13)
      abb30(20)=mB*abb30(29)
      abb30(42)=abb30(20)*abb30(21)
      abb30(13)=abb30(13)-abb30(42)
      abb30(13)=abb30(13)*abb30(32)
      abb30(30)=abb30(30)*abb30(10)
      abb30(19)=abb30(10)*abb30(19)
      abb30(21)=abb30(19)*abb30(21)
      abb30(13)=abb30(13)+abb30(21)-abb30(30)
      abb30(13)=abb30(13)*spak4l6
      abb30(8)=abb30(8)*abb30(6)
      abb30(20)=abb30(20)*abb30(31)
      abb30(8)=abb30(8)-abb30(20)
      abb30(8)=abb30(8)*abb30(38)
      abb30(10)=abb30(17)*abb30(10)
      abb30(17)=abb30(19)*abb30(22)
      abb30(10)=abb30(10)-abb30(17)
      abb30(17)=abb30(10)*abb30(40)
      abb30(8)=abb30(17)+abb30(13)-abb30(8)
      abb30(13)=-spbk4k2*abb30(8)
      abb30(17)=spak3l6*abb30(34)
      abb30(19)=-spak1k3*abb30(15)*abb30(24)
      abb30(20)=spak3l5*spbl5k2*abb30(14)
      abb30(13)=abb30(20)+abb30(19)+abb30(17)+abb30(13)
      abb30(13)=4.0_ki*abb30(13)
      abb30(17)=-spak1k3*abb30(25)
      abb30(19)=abb30(29)*c1
      abb30(19)=abb30(19)-abb30(33)
      abb30(20)=abb30(19)*spbk4k2
      abb30(21)=-spak1k4*abb30(20)
      abb30(17)=abb30(21)+abb30(17)
      abb30(17)=4.0_ki*abb30(17)
      abb30(21)=4.0_ki*spak1l6
      abb30(20)=abb30(20)*abb30(21)
      abb30(8)=spbk4k3*abb30(8)
      abb30(22)=abb30(23)*abb30(31)
      abb30(9)=abb30(9)*abb30(6)
      abb30(9)=abb30(22)-abb30(9)
      abb30(22)=abb30(7)*abb30(15)
      abb30(22)=abb30(22)-abb30(9)
      abb30(22)=spbl5k2*spak1k2*abb30(22)
      abb30(23)=-spak2l6*abb30(34)
      abb30(8)=abb30(23)+abb30(22)+abb30(8)
      abb30(8)=4.0_ki*abb30(8)
      abb30(22)=8.0_ki*abb30(14)
      abb30(23)=spak1k2*abb30(25)
      abb30(19)=abb30(19)*spbk4k3
      abb30(25)=spak1k4*abb30(19)
      abb30(23)=abb30(25)+abb30(23)
      abb30(23)=4.0_ki*abb30(23)
      abb30(19)=-abb30(19)*abb30(21)
      abb30(10)=4.0_ki*abb30(10)
      abb30(21)=-spbk4k2*abb30(10)
      abb30(10)=spbk4k3*abb30(10)
      abb30(25)=4.0_ki*abb30(26)
      abb30(29)=4.0_ki*abb30(14)
      abb30(26)=abb30(26)*spbl5k1
      abb30(9)=-es12*abb30(4)*abb30(9)
      abb30(9)=abb30(26)+abb30(9)
      abb30(9)=4.0_ki*spak3k4*abb30(9)
      abb30(24)=spak2k4*abb30(24)
      abb30(28)=-abb30(7)*abb30(28)
      abb30(24)=abb30(24)+abb30(28)
      abb30(15)=abb30(15)*abb30(24)
      abb30(24)=-spak2k4*abb30(26)
      abb30(14)=spbk3k1*spak3k4*abb30(14)
      abb30(14)=abb30(14)+abb30(24)+abb30(15)
      abb30(14)=4.0_ki*abb30(14)
      R2d30=0.0_ki
      rat2 = rat2 + R2d30
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='30' value='", &
          & R2d30, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd30h1
