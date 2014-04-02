module     p3_usbar_epnebbbar_abbrevd8h0
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(39), public :: abb8
   complex(ki), public :: R2d8
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p3_usbar_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p3_usbar_epnebbbar_kinematics
      use p3_usbar_epnebbbar_model
      use p3_usbar_epnebbbar_color, only: TR
      use p3_usbar_epnebbbar_globalsl1, only: epspow
      implicit none
      abb8(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb8(2)=NC**(-1)
      abb8(3)=es234**(-1)
      abb8(4)=es56**(-1)
      abb8(5)=spbl5k2**(-1)
      abb8(6)=spbl6k2**(-1)
      abb8(7)=spak2l5**(-1)
      abb8(8)=spak2l6**(-1)
      abb8(9)=TR*gW
      abb8(9)=abb8(9)**2*i_*CVSU*abb8(4)*abb8(1)
      abb8(10)=spbk2k1*abb8(3)
      abb8(11)=mB*abb8(9)*abb8(10)
      abb8(12)=abb8(2)**2
      abb8(12)=abb8(12)-1.0_ki
      abb8(13)=abb8(12)*c1
      abb8(14)=abb8(13)*abb8(11)
      abb8(11)=abb8(11)*c2
      abb8(15)=abb8(11)*abb8(2)
      abb8(14)=abb8(14)-abb8(15)
      abb8(15)=abb8(6)*abb8(14)
      abb8(16)=abb8(15)*spak2k4
      abb8(11)=abb8(11)*NC
      abb8(17)=abb8(11)*spak2k4
      abb8(18)=abb8(17)*abb8(6)
      abb8(16)=abb8(16)+abb8(18)
      abb8(18)=spak1l5*spbk3k1
      abb8(19)=spbl6k3*spal5l6
      abb8(18)=abb8(18)-abb8(19)
      abb8(19)=-abb8(16)*abb8(18)
      abb8(14)=abb8(5)*abb8(14)
      abb8(20)=abb8(14)*spak2k4
      abb8(17)=abb8(17)*abb8(5)
      abb8(17)=abb8(20)+abb8(17)
      abb8(20)=spak1l6*spbk3k1
      abb8(21)=spbl5k3*spal5l6
      abb8(20)=abb8(20)+abb8(21)
      abb8(21)=-abb8(17)*abb8(20)
      abb8(22)=mB**3
      abb8(10)=abb8(22)*abb8(10)
      abb8(23)=abb8(13)*abb8(9)*abb8(10)
      abb8(24)=abb8(9)*c2
      abb8(25)=abb8(10)*abb8(24)
      abb8(26)=abb8(25)*abb8(2)
      abb8(23)=abb8(23)-abb8(26)
      abb8(27)=abb8(6)**2
      abb8(28)=abb8(27)*abb8(23)
      abb8(29)=abb8(28)*spak2k4
      abb8(25)=abb8(25)*NC
      abb8(30)=spak2k4*abb8(25)
      abb8(31)=abb8(30)*abb8(27)
      abb8(29)=abb8(31)+abb8(29)
      abb8(31)=abb8(8)*spak2l5
      abb8(32)=abb8(31)*spbk3k2
      abb8(29)=abb8(29)*abb8(32)
      abb8(33)=abb8(5)**2
      abb8(23)=abb8(33)*abb8(23)
      abb8(34)=abb8(23)*spak2k4
      abb8(35)=abb8(30)*abb8(33)
      abb8(34)=abb8(35)+abb8(34)
      abb8(35)=abb8(7)*spak2l6
      abb8(36)=abb8(35)*spbk3k2
      abb8(34)=abb8(34)*abb8(36)
      abb8(37)=abb8(9)*abb8(6)
      abb8(38)=abb8(37)*abb8(5)
      abb8(10)=abb8(38)*abb8(10)*abb8(13)
      abb8(13)=abb8(6)*abb8(5)
      abb8(26)=abb8(13)*abb8(26)
      abb8(10)=abb8(10)-abb8(26)
      abb8(26)=abb8(10)*spak2k4
      abb8(30)=abb8(30)*abb8(13)
      abb8(26)=abb8(30)+abb8(26)
      abb8(30)=2.0_ki*spbk3k2
      abb8(26)=abb8(26)*abb8(30)
      abb8(19)=abb8(29)+abb8(34)+abb8(26)+abb8(21)+abb8(19)
      abb8(21)=2.0_ki*abb8(19)
      abb8(26)=8.0_ki*abb8(19)
      abb8(19)=-4.0_ki*abb8(19)
      abb8(29)=abb8(25)*abb8(27)
      abb8(28)=abb8(29)+abb8(28)
      abb8(29)=abb8(28)*abb8(31)
      abb8(34)=abb8(25)*abb8(33)
      abb8(23)=abb8(34)+abb8(23)
      abb8(34)=abb8(23)*abb8(35)
      abb8(25)=abb8(25)*abb8(13)
      abb8(10)=abb8(25)+abb8(10)
      abb8(25)=abb8(34)+abb8(29)+2.0_ki*abb8(10)
      abb8(29)=-es34*abb8(25)
      abb8(34)=-spbl6k4*abb8(16)
      abb8(39)=spbl5k4*abb8(17)
      abb8(34)=abb8(39)+abb8(34)
      abb8(34)=spal5l6*abb8(34)
      abb8(39)=abb8(11)*abb8(5)
      abb8(14)=abb8(39)+abb8(14)
      abb8(20)=abb8(20)*abb8(14)
      abb8(11)=abb8(11)*abb8(6)
      abb8(11)=abb8(15)+abb8(11)
      abb8(15)=abb8(18)*abb8(11)
      abb8(15)=abb8(20)+abb8(15)
      abb8(18)=spak2k3*abb8(15)
      abb8(17)=spak1l6*abb8(17)
      abb8(16)=spak1l5*abb8(16)
      abb8(16)=abb8(17)+abb8(16)
      abb8(16)=spbk4k1*abb8(16)
      abb8(17)=NC-abb8(2)
      abb8(17)=abb8(17)*abb8(24)
      abb8(20)=-spbk2k1*abb8(22)*abb8(17)
      abb8(13)=-abb8(13)*abb8(20)
      abb8(22)=spbk2k1*abb8(22)*abb8(12)
      abb8(24)=abb8(22)*abb8(38)*c1
      abb8(13)=abb8(24)+abb8(13)
      abb8(22)=-c1*abb8(9)*abb8(22)
      abb8(20)=abb8(22)+abb8(20)
      abb8(22)=-abb8(35)*abb8(33)*abb8(20)
      abb8(20)=-abb8(31)*abb8(27)*abb8(20)
      abb8(13)=abb8(16)+abb8(29)+abb8(18)+abb8(20)+2.0_ki*abb8(13)+abb8(22)+abb&
      &8(34)
      abb8(13)=4.0_ki*abb8(13)
      abb8(16)=abb8(14)*spak2l6
      abb8(18)=abb8(11)*spak2l5
      abb8(16)=abb8(16)+abb8(18)
      abb8(16)=16.0_ki*abb8(16)
      abb8(18)=8.0_ki*abb8(25)
      abb8(20)=abb8(3)*mB
      abb8(12)=c1*abb8(20)*abb8(12)
      abb8(9)=abb8(12)*abb8(9)
      abb8(17)=abb8(20)*abb8(17)
      abb8(9)=abb8(9)+abb8(17)
      abb8(20)=-abb8(5)*abb8(9)
      abb8(22)=spbl6k1*spak2l6
      abb8(24)=spbl5k1*spak2l5
      abb8(22)=abb8(22)+abb8(24)
      abb8(22)=8.0_ki*abb8(22)
      abb8(24)=abb8(20)*abb8(22)
      abb8(25)=-spbl6k2*spak2l6
      abb8(25)=abb8(25)+es12
      abb8(20)=abb8(20)*abb8(25)
      abb8(25)=spak2l5*abb8(9)
      abb8(20)=abb8(25)+abb8(20)
      abb8(20)=8.0_ki*abb8(20)
      abb8(12)=-abb8(37)*abb8(12)
      abb8(17)=-abb8(6)*abb8(17)
      abb8(12)=abb8(12)+abb8(17)
      abb8(17)=abb8(12)*abb8(22)
      abb8(22)=-spbl5k2*spak2l5
      abb8(22)=abb8(22)+es12
      abb8(12)=abb8(12)*abb8(22)
      abb8(9)=spak2l6*abb8(9)
      abb8(9)=abb8(9)+abb8(12)
      abb8(9)=8.0_ki*abb8(9)
      abb8(12)=4.0_ki*spal5l6
      abb8(22)=abb8(11)*abb8(12)
      abb8(12)=-abb8(14)*abb8(12)
      abb8(10)=-abb8(10)*abb8(30)
      abb8(23)=-abb8(23)*abb8(36)
      abb8(25)=-abb8(28)*abb8(32)
      abb8(10)=abb8(25)+abb8(10)+abb8(23)+abb8(15)
      abb8(10)=4.0_ki*spak3k4*abb8(10)
      abb8(14)=spak1l6*abb8(14)
      abb8(11)=spak1l5*abb8(11)
      abb8(11)=abb8(14)+abb8(11)
      abb8(11)=4.0_ki*abb8(11)
      R2d8=abb8(21)
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd8h0
