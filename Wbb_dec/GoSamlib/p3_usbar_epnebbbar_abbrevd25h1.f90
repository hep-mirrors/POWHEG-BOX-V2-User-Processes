module     p3_usbar_epnebbbar_abbrevd25h1
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(44), public :: abb25
   complex(ki), public :: R2d25
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
      abb25(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb25(2)=NC**(-1)
      abb25(3)=es234**(-1)
      abb25(4)=es56**(-1)
      abb25(5)=spak2l5**(-1)
      abb25(6)=spbl6k2**(-1)
      abb25(7)=spbl5k2**(-1)
      abb25(8)=spak2l6**(-1)
      abb25(9)=TR*gW
      abb25(10)=abb25(9)**2
      abb25(11)=abb25(10)*abb25(3)**2
      abb25(12)=abb25(2)**2
      abb25(12)=abb25(12)-1.0_ki
      abb25(12)=abb25(12)*c1
      abb25(13)=abb25(11)*abb25(12)
      abb25(14)=abb25(4)*i_*CVSU
      abb25(15)=abb25(14)*spak2k4*abb25(1)
      abb25(16)=abb25(15)*abb25(13)
      abb25(17)=abb25(15)*c2
      abb25(18)=abb25(11)*abb25(17)
      abb25(19)=abb25(18)*abb25(2)
      abb25(16)=abb25(16)-abb25(19)
      abb25(19)=abb25(16)*spbl5k1
      abb25(20)=abb25(18)*spbl5k1
      abb25(21)=abb25(20)*NC
      abb25(19)=abb25(21)+abb25(19)
      abb25(21)=abb25(19)*spal5l6
      abb25(9)=abb25(9)*mB*abb25(3)
      abb25(9)=abb25(9)**2
      abb25(22)=abb25(9)*abb25(15)
      abb25(23)=abb25(22)*abb25(12)
      abb25(22)=abb25(22)*c2
      abb25(24)=abb25(22)*abb25(2)
      abb25(23)=abb25(23)-abb25(24)
      abb25(24)=spbk2k1*abb25(6)
      abb25(25)=abb25(23)*abb25(24)
      abb25(26)=abb25(22)*NC
      abb25(27)=abb25(26)*abb25(24)
      abb25(21)=abb25(25)+abb25(27)+abb25(21)
      abb25(21)=spbl5k3*abb25(21)
      abb25(27)=abb25(5)*abb25(6)
      abb25(28)=abb25(23)*abb25(27)
      abb25(29)=abb25(26)*abb25(27)
      abb25(29)=abb25(29)+abb25(28)
      abb25(29)=abb25(29)*es12
      abb25(19)=abb25(19)*spak1l6
      abb25(19)=abb25(29)-abb25(19)
      abb25(19)=-spbk3k1*abb25(19)
      abb25(26)=abb25(26)+abb25(23)
      abb25(29)=abb25(27)*spbk2k1
      abb25(26)=spbl6k3*spak2l6*abb25(26)*abb25(29)
      abb25(19)=abb25(26)+abb25(19)+abb25(21)
      abb25(21)=es23+es34
      abb25(19)=abb25(21)*abb25(19)
      abb25(21)=abb25(1)*spak2k4**2
      abb25(9)=abb25(21)*abb25(9)
      abb25(26)=abb25(9)*abb25(12)*abb25(14)
      abb25(30)=abb25(14)*c2
      abb25(9)=abb25(9)*abb25(30)
      abb25(31)=abb25(9)*abb25(2)
      abb25(26)=abb25(26)-abb25(31)
      abb25(31)=abb25(5)*spbk4k3
      abb25(32)=abb25(26)*abb25(31)
      abb25(33)=NC*spbk4k3
      abb25(34)=abb25(9)*abb25(33)
      abb25(35)=abb25(34)*abb25(5)
      abb25(32)=abb25(35)+abb25(32)
      abb25(35)=abb25(32)*spbk2k1
      abb25(10)=abb25(10)*abb25(3)*mB**2
      abb25(12)=abb25(10)*abb25(12)*abb25(15)
      abb25(10)=abb25(17)*abb25(10)
      abb25(15)=abb25(10)*abb25(2)
      abb25(12)=abb25(12)-abb25(15)
      abb25(15)=spbk3k2*spbl5k1
      abb25(17)=-abb25(12)*abb25(15)
      abb25(36)=abb25(15)*NC
      abb25(37)=-abb25(36)*abb25(10)
      abb25(17)=abb25(17)+abb25(37)
      abb25(17)=abb25(7)*abb25(5)*abb25(17)
      abb25(37)=abb25(26)*spbk3k2
      abb25(38)=NC*spbk3k2
      abb25(9)=abb25(38)*abb25(9)
      abb25(37)=abb25(37)+abb25(9)
      abb25(39)=-spbl6k4*abb25(29)*abb25(37)
      abb25(17)=abb25(39)+abb25(17)-abb25(35)
      abb25(17)=spak2l6*abb25(17)
      abb25(13)=abb25(14)*abb25(21)*abb25(13)
      abb25(11)=abb25(30)*abb25(11)*abb25(21)
      abb25(14)=abb25(11)*abb25(2)
      abb25(13)=abb25(13)-abb25(14)
      abb25(14)=spbl5k1*spbk4k3
      abb25(21)=abb25(13)*abb25(14)
      abb25(30)=spbl5k1*abb25(11)*abb25(33)
      abb25(21)=abb25(30)+abb25(21)
      abb25(30)=-spak1l6*spbk2k1*abb25(21)
      abb25(21)=-spal5l6*abb25(21)
      abb25(39)=abb25(26)*abb25(24)
      abb25(40)=abb25(39)*spbk4k3
      abb25(41)=abb25(34)*abb25(24)
      abb25(40)=abb25(41)+abb25(40)
      abb25(21)=abb25(21)-abb25(40)
      abb25(21)=spbl5k2*abb25(21)
      abb25(13)=abb25(13)*abb25(15)
      abb25(11)=abb25(11)*abb25(36)
      abb25(11)=abb25(11)+abb25(13)
      abb25(13)=-spal5l6*abb25(11)
      abb25(39)=-spbk3k2*abb25(39)
      abb25(9)=-abb25(24)*abb25(9)
      abb25(9)=abb25(13)+abb25(39)+abb25(9)
      abb25(9)=spbl5k4*abb25(9)
      abb25(11)=-spak1l6*abb25(11)
      abb25(13)=es12*abb25(27)*abb25(37)
      abb25(11)=abb25(11)+abb25(13)
      abb25(11)=spbk4k1*abb25(11)
      abb25(12)=-abb25(6)*abb25(12)
      abb25(13)=NC*abb25(6)
      abb25(10)=-abb25(13)*abb25(10)
      abb25(10)=abb25(12)+abb25(10)
      abb25(10)=abb25(15)*abb25(10)
      abb25(12)=abb25(29)*spbk4k3
      abb25(37)=abb25(26)*abb25(12)
      abb25(39)=abb25(34)*abb25(29)
      abb25(37)=abb25(39)+abb25(37)
      abb25(39)=es12*abb25(37)
      abb25(9)=abb25(11)+abb25(9)+abb25(21)+abb25(39)+abb25(30)+abb25(17)+abb25&
      &(10)+abb25(19)
      abb25(9)=4.0_ki*abb25(9)
      abb25(10)=abb25(16)*abb25(15)
      abb25(11)=abb25(36)*abb25(18)
      abb25(10)=abb25(10)+abb25(11)
      abb25(11)=abb25(10)*spak2l6
      abb25(17)=abb25(16)*abb25(14)
      abb25(19)=abb25(20)*abb25(33)
      abb25(17)=abb25(17)+abb25(19)
      abb25(19)=abb25(17)*spak4l6
      abb25(11)=abb25(37)+abb25(11)+abb25(19)
      abb25(11)=16.0_ki*abb25(11)
      abb25(19)=abb25(23)*abb25(15)
      abb25(20)=abb25(22)*abb25(36)
      abb25(19)=abb25(19)+abb25(20)
      abb25(20)=spak2l6*abb25(5)
      abb25(19)=abb25(19)*abb25(20)
      abb25(21)=abb25(23)*abb25(31)
      abb25(30)=abb25(21)*spbl5k1
      abb25(31)=abb25(33)*abb25(22)
      abb25(36)=abb25(31)*spbl5k1
      abb25(37)=abb25(36)*abb25(5)
      abb25(30)=abb25(37)+abb25(30)
      abb25(37)=2.0_ki*spak4l6
      abb25(39)=abb25(30)*abb25(37)
      abb25(19)=abb25(19)+abb25(39)
      abb25(19)=abb25(7)*abb25(19)
      abb25(39)=abb25(28)*spbk3k2
      abb25(41)=abb25(38)*abb25(22)
      abb25(42)=abb25(41)*abb25(27)
      abb25(39)=abb25(42)+abb25(39)
      abb25(42)=spak2l6*abb25(39)
      abb25(43)=abb25(28)*spbk4k3
      abb25(44)=abb25(31)*abb25(27)
      abb25(43)=abb25(44)+abb25(43)
      abb25(44)=spak4l6*abb25(43)
      abb25(42)=abb25(42)+abb25(44)
      abb25(42)=spbl6k1*abb25(42)
      abb25(44)=abb25(23)*abb25(6)
      abb25(13)=abb25(13)*abb25(22)
      abb25(22)=abb25(44)+abb25(13)
      abb25(15)=abb25(15)*abb25(22)
      abb25(22)=abb25(44)*abb25(14)
      abb25(44)=abb25(36)*abb25(6)
      abb25(22)=abb25(44)+abb25(22)
      abb25(37)=abb25(8)*abb25(22)*abb25(37)
      abb25(14)=abb25(14)*abb25(28)
      abb25(27)=abb25(27)*abb25(36)
      abb25(14)=abb25(14)+abb25(27)
      abb25(27)=2.0_ki*spak4l5
      abb25(14)=abb25(14)*abb25(27)
      abb25(14)=abb25(14)+abb25(37)+2.0_ki*abb25(42)+3.0_ki*abb25(15)+abb25(19)
      abb25(14)=8.0_ki*abb25(14)
      abb25(15)=abb25(16)*spbk4k3
      abb25(19)=abb25(33)*abb25(18)
      abb25(15)=abb25(19)+abb25(15)
      abb25(15)=abb25(15)*spak4l6
      abb25(16)=abb25(16)*spbk3k2
      abb25(18)=abb25(38)*abb25(18)
      abb25(16)=abb25(18)+abb25(16)
      abb25(16)=abb25(16)*spak2l6
      abb25(15)=abb25(15)+abb25(16)
      abb25(16)=-spbl6k1*abb25(15)
      abb25(18)=abb25(7)*abb25(35)
      abb25(19)=abb25(8)*abb25(40)
      abb25(28)=-spak4l5*abb25(17)
      abb25(33)=-spak2l5*abb25(10)
      abb25(16)=abb25(33)+abb25(28)+abb25(19)+abb25(18)+abb25(16)
      abb25(16)=8.0_ki*abb25(16)
      abb25(15)=spbl6l5*abb25(15)
      abb25(18)=spbk4k3*abb25(26)
      abb25(18)=abb25(18)+abb25(34)
      abb25(18)=abb25(8)*spbl5k2*abb25(6)*abb25(18)
      abb25(19)=-spak1k4*abb25(17)
      abb25(26)=-spak1k2*abb25(10)
      abb25(15)=abb25(26)+abb25(19)+abb25(15)+abb25(18)+abb25(32)
      abb25(15)=8.0_ki*abb25(15)
      abb25(12)=abb25(23)*abb25(12)
      abb25(18)=abb25(31)*abb25(29)
      abb25(12)=abb25(18)+abb25(12)
      abb25(18)=4.0_ki*spak2l6
      abb25(19)=-abb25(12)*abb25(18)
      abb25(25)=-spbk4k3*abb25(25)
      abb25(26)=-spal5l6*abb25(17)
      abb25(28)=-abb25(24)*abb25(31)
      abb25(25)=abb25(26)+abb25(25)+abb25(28)
      abb25(25)=4.0_ki*abb25(25)
      abb25(26)=-abb25(7)*spak2l6*abb25(30)
      abb25(22)=abb25(26)-abb25(22)
      abb25(22)=4.0_ki*abb25(22)
      abb25(17)=spak1l6*abb25(17)
      abb25(26)=-es12*abb25(43)
      abb25(17)=abb25(17)+abb25(26)
      abb25(17)=4.0_ki*abb25(17)
      abb25(23)=abb25(23)*spbk3k2
      abb25(26)=abb25(23)+abb25(41)
      abb25(18)=-abb25(18)*abb25(29)*abb25(26)
      abb25(24)=-abb25(24)*abb25(26)
      abb25(28)=-spal5l6*abb25(10)
      abb25(24)=abb25(28)+abb25(24)
      abb25(24)=4.0_ki*abb25(24)
      abb25(20)=-abb25(26)*abb25(20)
      abb25(26)=-abb25(5)*abb25(31)
      abb25(21)=-abb25(21)+abb25(26)
      abb25(21)=spak4l6*abb25(21)
      abb25(12)=spak1k4*abb25(12)
      abb25(12)=abb25(12)+abb25(20)+abb25(21)
      abb25(20)=-abb25(6)*abb25(23)
      abb25(13)=-spbk3k2*abb25(13)
      abb25(13)=abb25(20)+abb25(13)
      abb25(20)=-abb25(43)*abb25(27)
      abb25(13)=abb25(20)+2.0_ki*abb25(13)
      abb25(13)=spbl5k2*abb25(13)
      abb25(10)=spak1l6*abb25(10)
      abb25(20)=es12*abb25(39)
      abb25(10)=abb25(20)+abb25(10)+abb25(13)+2.0_ki*abb25(12)
      abb25(10)=4.0_ki*abb25(10)
      R2d25=0.0_ki
      rat2 = rat2 + R2d25
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='25' value='", &
          & R2d25, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd25h1
