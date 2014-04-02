module     p3_usbar_epnebbbar_abbrevd8h2
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(38), public :: abb8
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
      abb8(6)=spak2l6**(-1)
      abb8(7)=spbl6k2**(-1)
      abb8(8)=TR*gW
      abb8(9)=abb8(8)*mB
      abb8(9)=abb8(9)**2
      abb8(10)=abb8(1)*abb8(4)*i_*CVSU
      abb8(11)=abb8(3)*abb8(10)
      abb8(12)=abb8(9)*abb8(11)
      abb8(13)=c2*spbl6k1
      abb8(14)=abb8(13)*abb8(12)*spak2k4
      abb8(15)=abb8(14)*abb8(2)
      abb8(16)=abb8(2)**2
      abb8(16)=abb8(16)-1.0_ki
      abb8(17)=spbl6k1*abb8(16)*abb8(12)
      abb8(18)=c1*spak2k4
      abb8(19)=abb8(17)*abb8(18)
      abb8(15)=abb8(15)-abb8(19)
      abb8(19)=spak2l5*abb8(6)
      abb8(15)=abb8(15)*abb8(19)
      abb8(20)=abb8(19)*NC
      abb8(14)=abb8(20)*abb8(14)
      abb8(14)=abb8(15)-abb8(14)
      abb8(15)=abb8(7)*spbk3k2
      abb8(14)=abb8(14)*abb8(15)
      abb8(21)=abb8(12)*abb8(5)
      abb8(22)=abb8(21)*abb8(13)
      abb8(23)=NC-abb8(2)
      abb8(24)=-spak2k4*abb8(23)
      abb8(25)=-abb8(22)*abb8(24)
      abb8(26)=abb8(21)*abb8(16)
      abb8(27)=-spbl6k1*abb8(26)
      abb8(28)=abb8(27)*abb8(18)
      abb8(25)=abb8(25)-abb8(28)
      abb8(25)=abb8(25)*spbk3k2
      abb8(8)=abb8(11)*abb8(8)**2
      abb8(11)=spbl6k1*abb8(8)
      abb8(28)=abb8(11)*abb8(16)
      abb8(29)=abb8(28)*abb8(18)
      abb8(11)=abb8(11)*c2
      abb8(24)=-abb8(11)*abb8(24)
      abb8(24)=abb8(29)+abb8(24)
      abb8(29)=spal5l6*spbl6k3
      abb8(30)=spak1l5*spbk3k1
      abb8(29)=abb8(29)-abb8(30)
      abb8(30)=-abb8(24)*abb8(29)
      abb8(21)=c2*abb8(21)
      abb8(31)=abb8(23)*abb8(21)*spak2k4
      abb8(18)=abb8(26)*abb8(18)
      abb8(18)=abb8(18)+abb8(31)
      abb8(31)=abb8(6)*abb8(18)
      abb8(32)=es12*spbk3k1
      abb8(33)=abb8(31)*abb8(32)
      abb8(34)=abb8(19)*abb8(18)
      abb8(35)=spbl5k3*spbk2k1
      abb8(36)=abb8(34)*abb8(35)
      abb8(37)=spbl6k3*spbk2k1
      abb8(38)=abb8(18)*abb8(37)
      abb8(14)=abb8(14)-abb8(25)+abb8(38)+abb8(36)+abb8(30)-abb8(33)
      abb8(25)=2.0_ki*abb8(14)
      abb8(30)=8.0_ki*abb8(14)
      abb8(14)=-4.0_ki*abb8(14)
      abb8(28)=abb8(28)*c1
      abb8(33)=abb8(11)*abb8(2)
      abb8(11)=abb8(11)*NC
      abb8(11)=abb8(11)+abb8(28)-abb8(33)
      abb8(28)=abb8(29)*abb8(11)
      abb8(21)=abb8(21)*abb8(23)
      abb8(26)=abb8(26)*c1
      abb8(21)=abb8(26)+abb8(21)
      abb8(26)=abb8(6)*abb8(21)
      abb8(29)=abb8(26)*abb8(32)
      abb8(32)=abb8(21)*abb8(37)
      abb8(33)=abb8(19)*abb8(21)
      abb8(35)=abb8(33)*abb8(35)
      abb8(28)=-abb8(35)-abb8(32)+abb8(29)+abb8(28)
      abb8(29)=spak2k3*abb8(28)
      abb8(18)=-spbk2k1*abb8(18)
      abb8(32)=spal5l6*abb8(24)
      abb8(18)=abb8(18)+abb8(32)
      abb8(18)=spbl6k4*abb8(18)
      abb8(24)=-spak1l5*abb8(24)
      abb8(31)=es12*abb8(31)
      abb8(24)=abb8(24)+abb8(31)
      abb8(24)=spbk4k1*abb8(24)
      abb8(31)=abb8(12)*abb8(2)
      abb8(32)=abb8(31)*abb8(13)
      abb8(35)=abb8(12)*NC
      abb8(13)=abb8(35)*abb8(13)
      abb8(17)=abb8(17)*c1
      abb8(13)=-abb8(13)+abb8(32)-abb8(17)
      abb8(13)=abb8(19)*abb8(13)
      abb8(17)=abb8(13)*abb8(7)
      abb8(22)=-abb8(22)*abb8(23)
      abb8(27)=abb8(27)*c1
      abb8(22)=abb8(22)+abb8(27)
      abb8(27)=-abb8(17)-abb8(22)
      abb8(27)=es34*abb8(27)
      abb8(16)=abb8(16)*c1
      abb8(32)=-c2*abb8(23)
      abb8(32)=-abb8(16)+abb8(32)
      abb8(9)=abb8(9)*spbl6k1*abb8(10)
      abb8(10)=abb8(32)*abb8(5)*abb8(9)
      abb8(32)=c2*abb8(9)
      abb8(36)=abb8(2)*abb8(32)
      abb8(9)=-abb8(16)*abb8(9)
      abb8(9)=abb8(36)+abb8(9)
      abb8(9)=abb8(9)*abb8(19)
      abb8(20)=-abb8(20)*abb8(32)
      abb8(9)=abb8(9)+abb8(20)
      abb8(9)=abb8(7)*abb8(9)
      abb8(20)=-spbl5k4*spbk2k1*abb8(34)
      abb8(9)=abb8(20)+abb8(27)+abb8(24)+abb8(18)+abb8(29)+abb8(9)+abb8(10)
      abb8(9)=4.0_ki*abb8(9)
      abb8(10)=spak2l5*abb8(11)
      abb8(10)=16.0_ki*abb8(10)
      abb8(18)=spbl5k1*abb8(33)
      abb8(17)=-2.0_ki*abb8(18)+3.0_ki*abb8(22)+abb8(17)
      abb8(17)=8.0_ki*abb8(17)
      abb8(18)=spak2l6*abb8(11)
      abb8(20)=abb8(23)*c2*abb8(8)
      abb8(8)=abb8(16)*abb8(8)
      abb8(8)=abb8(8)+abb8(20)
      abb8(8)=abb8(8)*spak2l5
      abb8(20)=spbl5k1*abb8(8)
      abb8(18)=abb8(20)+abb8(18)
      abb8(18)=8.0_ki*abb8(18)
      abb8(20)=spak1k2*abb8(11)
      abb8(8)=spbl6l5*abb8(8)
      abb8(8)=abb8(8)+abb8(20)
      abb8(8)=8.0_ki*abb8(8)
      abb8(20)=-spal5l6*abb8(11)
      abb8(23)=spbk2k1*abb8(21)
      abb8(20)=abb8(23)+abb8(20)
      abb8(20)=4.0_ki*abb8(20)
      abb8(23)=4.0_ki*spbk2k1*abb8(33)
      abb8(13)=-abb8(13)*abb8(15)
      abb8(15)=-spbk3k2*abb8(22)
      abb8(13)=abb8(13)+abb8(15)+abb8(28)
      abb8(13)=4.0_ki*spak3k4*abb8(13)
      abb8(15)=abb8(35)-abb8(31)
      abb8(15)=c2*abb8(15)
      abb8(12)=abb8(12)*abb8(16)
      abb8(12)=abb8(12)+abb8(15)
      abb8(12)=abb8(19)*abb8(12)
      abb8(15)=spbl6k2*abb8(21)
      abb8(12)=abb8(12)+abb8(15)
      abb8(11)=-spak1l5*abb8(11)
      abb8(15)=-es12*abb8(26)
      abb8(11)=abb8(15)+abb8(11)+2.0_ki*abb8(12)
      abb8(11)=4.0_ki*abb8(11)
      R2d8=abb8(25)
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd8h2
