module     p5_csbar_epnebbbar_abbrevd8h3
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(35), public :: abb8
   complex(ki), public :: R2d8
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
      abb8(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb8(2)=NC**(-1)
      abb8(3)=es234**(-1)
      abb8(4)=es56**(-1)
      abb8(5)=spak2l5**(-1)
      abb8(6)=spak2l6**(-1)
      abb8(7)=abb8(2)**2
      abb8(7)=abb8(7)-1.0_ki
      abb8(8)=TR*gW
      abb8(8)=CVSC*i_*mB*abb8(4)*abb8(3)*abb8(1)*abb8(8)**2
      abb8(7)=abb8(7)*abb8(8)
      abb8(9)=spak2k4*abb8(7)
      abb8(10)=c1*spbl5k1
      abb8(11)=abb8(9)*abb8(10)
      abb8(8)=abb8(8)*c2
      abb8(12)=spak2k4*abb8(8)
      abb8(13)=abb8(12)*spbl5k1
      abb8(14)=abb8(13)*abb8(2)
      abb8(11)=abb8(11)-abb8(14)
      abb8(14)=abb8(11)*abb8(6)
      abb8(15)=c1*spbl6k1
      abb8(9)=abb8(9)*abb8(15)
      abb8(12)=abb8(12)*spbl6k1
      abb8(16)=abb8(12)*abb8(2)
      abb8(9)=abb8(9)-abb8(16)
      abb8(16)=abb8(9)*abb8(5)
      abb8(17)=abb8(14)+abb8(16)
      abb8(18)=spbk3k1*spak1k2
      abb8(19)=abb8(17)*abb8(18)
      abb8(20)=abb8(13)*abb8(6)
      abb8(21)=abb8(12)*abb8(5)
      abb8(22)=abb8(20)+abb8(21)
      abb8(23)=abb8(22)*abb8(18)
      abb8(24)=abb8(13)*spbl6k3
      abb8(25)=abb8(12)*spbl5k3
      abb8(23)=abb8(24)+abb8(25)-abb8(23)
      abb8(23)=abb8(23)*NC
      abb8(24)=spbl5k3*abb8(6)
      abb8(25)=abb8(11)*abb8(24)
      abb8(26)=abb8(24)*NC
      abb8(27)=abb8(26)*abb8(13)
      abb8(25)=abb8(25)+abb8(27)
      abb8(25)=abb8(25)*spak2l5
      abb8(27)=spbl6k3*abb8(5)
      abb8(28)=abb8(9)*abb8(27)
      abb8(29)=abb8(27)*NC
      abb8(30)=abb8(29)*abb8(12)
      abb8(28)=abb8(28)+abb8(30)
      abb8(28)=abb8(28)*spak2l6
      abb8(30)=abb8(11)*spbl6k3
      abb8(31)=abb8(9)*spbl5k3
      abb8(19)=abb8(30)+abb8(31)-abb8(19)+abb8(23)+abb8(25)+abb8(28)
      abb8(23)=-2.0_ki*abb8(19)
      abb8(25)=8.0_ki*abb8(19)
      abb8(19)=4.0_ki*abb8(19)
      abb8(28)=spbl6k1*abb8(8)
      abb8(30)=abb8(28)*abb8(5)
      abb8(8)=spbl5k1*abb8(8)
      abb8(31)=abb8(8)*abb8(6)
      abb8(32)=abb8(30)+abb8(31)
      abb8(33)=abb8(32)*abb8(18)
      abb8(34)=abb8(28)*spbl5k3
      abb8(35)=abb8(8)*spbl6k3
      abb8(33)=abb8(34)+abb8(35)-abb8(33)
      abb8(33)=abb8(33)*NC
      abb8(29)=abb8(29)*abb8(28)
      abb8(15)=abb8(7)*abb8(15)
      abb8(34)=abb8(28)*abb8(2)
      abb8(15)=abb8(34)-abb8(15)
      abb8(27)=abb8(15)*abb8(27)
      abb8(27)=abb8(29)-abb8(27)
      abb8(27)=abb8(27)*spak2l6
      abb8(26)=abb8(26)*abb8(8)
      abb8(7)=abb8(7)*abb8(10)
      abb8(10)=abb8(8)*abb8(2)
      abb8(7)=abb8(10)-abb8(7)
      abb8(10)=abb8(7)*abb8(24)
      abb8(10)=abb8(26)-abb8(10)
      abb8(10)=abb8(10)*spak2l5
      abb8(24)=abb8(15)*abb8(5)
      abb8(26)=abb8(7)*abb8(6)
      abb8(29)=abb8(24)+abb8(26)
      abb8(18)=abb8(29)*abb8(18)
      abb8(34)=abb8(15)*spbl5k3
      abb8(35)=abb8(7)*spbl6k3
      abb8(10)=-abb8(10)-abb8(33)-abb8(27)+abb8(35)+abb8(34)-abb8(18)
      abb8(18)=-spak2k3*abb8(10)
      abb8(21)=NC*abb8(21)
      abb8(16)=abb8(16)+abb8(21)
      abb8(16)=spak2l6*abb8(16)
      abb8(13)=abb8(13)*NC
      abb8(11)=abb8(16)+abb8(13)+abb8(11)
      abb8(11)=spbl6k4*abb8(11)
      abb8(13)=NC*abb8(20)
      abb8(13)=abb8(14)+abb8(13)
      abb8(13)=spak2l5*abb8(13)
      abb8(12)=abb8(12)*NC
      abb8(9)=abb8(13)+abb8(12)+abb8(9)
      abb8(9)=spbl5k4*abb8(9)
      abb8(12)=-NC*abb8(22)
      abb8(12)=-abb8(17)+abb8(12)
      abb8(12)=spbk4k1*spak1k2*abb8(12)
      abb8(9)=abb8(12)+abb8(9)+abb8(18)+abb8(11)
      abb8(9)=4.0_ki*abb8(9)
      abb8(11)=NC*abb8(30)
      abb8(11)=-abb8(24)+abb8(11)
      abb8(11)=spak2l6*abb8(11)
      abb8(8)=NC*abb8(8)
      abb8(7)=abb8(11)+abb8(8)-abb8(7)
      abb8(7)=4.0_ki*abb8(7)
      abb8(8)=NC*abb8(31)
      abb8(8)=-abb8(26)+abb8(8)
      abb8(8)=spak2l5*abb8(8)
      abb8(11)=NC*abb8(28)
      abb8(8)=abb8(8)+abb8(11)-abb8(15)
      abb8(8)=4.0_ki*abb8(8)
      abb8(10)=-4.0_ki*spak3k4*abb8(10)
      abb8(11)=NC*abb8(32)
      abb8(11)=-abb8(29)+abb8(11)
      abb8(11)=4.0_ki*spak1k2*abb8(11)
      R2d8=abb8(23)
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd8h3
