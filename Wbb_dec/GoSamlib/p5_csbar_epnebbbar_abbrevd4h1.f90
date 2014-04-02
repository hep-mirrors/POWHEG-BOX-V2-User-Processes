module     p5_csbar_epnebbbar_abbrevd4h1
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(42), public :: abb4
   complex(ki), public :: R2d4
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
      abb4(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb4(2)=1.0_ki/(es34+es56-es12-es234)
      abb4(3)=NC**(-1)
      abb4(4)=es56**(-1)
      abb4(5)=spak2l5**(-1)
      abb4(6)=spbl6k2**(-1)
      abb4(7)=spbl5k2**(-1)
      abb4(8)=abb4(4)*i_*CVSC*abb4(2)*abb4(1)
      abb4(9)=TR*gW
      abb4(9)=abb4(9)**2
      abb4(10)=abb4(8)*abb4(9)*spbk3k1
      abb4(11)=abb4(10)*spak2l6
      abb4(12)=NC*c2
      abb4(13)=abb4(11)*abb4(12)
      abb4(14)=abb4(10)*c1
      abb4(15)=abb4(14)*spak2l6
      abb4(13)=abb4(13)-abb4(15)
      abb4(16)=abb4(15)*abb4(3)
      abb4(11)=abb4(11)*c2
      abb4(16)=abb4(16)-abb4(11)
      abb4(17)=abb4(16)*abb4(3)
      abb4(18)=abb4(17)+abb4(13)
      abb4(19)=spbl5k3*spak3k4
      abb4(20)=spbl5k1*spak1k4
      abb4(19)=abb4(19)-abb4(20)
      abb4(18)=-abb4(18)*abb4(19)
      abb4(20)=2.0_ki*abb4(18)
      abb4(21)=spbl6k3*spak3k4
      abb4(22)=spbl6k1*spak1k4
      abb4(21)=abb4(21)-abb4(22)
      abb4(22)=spbl5k2*abb4(21)
      abb4(23)=-spbl6k2*abb4(19)
      abb4(22)=2.0_ki*abb4(23)+abb4(22)
      abb4(23)=abb4(12)*abb4(10)
      abb4(23)=abb4(23)-abb4(14)
      abb4(22)=-abb4(22)*abb4(23)*spak2l6**2
      abb4(24)=abb4(19)*spak2l5
      abb4(25)=abb4(13)*spbl5k2*abb4(24)
      abb4(22)=abb4(25)+abb4(22)
      abb4(22)=2.0_ki*abb4(22)
      abb4(25)=2.0_ki*abb4(3)
      abb4(16)=abb4(25)*abb4(16)
      abb4(16)=abb4(16)-abb4(13)
      abb4(16)=abb4(19)*abb4(16)
      abb4(16)=4.0_ki*abb4(16)
      abb4(26)=abb4(13)*spak2k4
      abb4(27)=mB**2
      abb4(28)=abb4(27)*abb4(10)
      abb4(12)=abb4(28)*abb4(12)
      abb4(29)=abb4(14)*abb4(27)
      abb4(12)=abb4(12)-abb4(29)
      abb4(30)=3.0_ki*spak2k4
      abb4(31)=abb4(30)*abb4(6)
      abb4(32)=abb4(31)*abb4(12)
      abb4(26)=abb4(26)+abb4(32)
      abb4(26)=abb4(26)*spbl5k2
      abb4(32)=-abb4(27)*abb4(13)
      abb4(30)=abb4(30)*abb4(5)
      abb4(33)=abb4(30)*abb4(32)
      abb4(34)=3.0_ki*spbl6l5
      abb4(35)=abb4(34)*abb4(13)
      abb4(36)=abb4(35)*spak4l6
      abb4(26)=abb4(26)-abb4(33)+abb4(36)
      abb4(26)=4.0_ki*abb4(26)
      abb4(28)=abb4(28)*c2
      abb4(29)=abb4(29)*abb4(3)
      abb4(28)=abb4(28)-abb4(29)
      abb4(29)=abb4(25)*abb4(28)
      abb4(29)=-abb4(29)-3.0_ki*abb4(12)
      abb4(29)=abb4(29)*abb4(6)
      abb4(33)=abb4(27)*abb4(3)
      abb4(15)=abb4(33)*abb4(15)
      abb4(11)=abb4(11)*abb4(27)
      abb4(11)=abb4(15)-abb4(11)
      abb4(15)=abb4(11)*abb4(25)
      abb4(15)=abb4(15)+abb4(32)
      abb4(25)=abb4(7)*abb4(5)
      abb4(15)=-abb4(15)*abb4(25)
      abb4(15)=abb4(15)-abb4(29)-abb4(13)
      abb4(15)=abb4(19)*abb4(15)
      abb4(29)=-2.0_ki*abb4(21)
      abb4(36)=abb4(6)*abb4(5)
      abb4(29)=abb4(32)*abb4(36)*abb4(29)
      abb4(15)=abb4(29)+abb4(15)
      abb4(15)=4.0_ki*abb4(15)
      abb4(28)=abb4(28)*abb4(3)
      abb4(29)=abb4(28)+abb4(12)
      abb4(37)=abb4(36)*spak2k4
      abb4(38)=abb4(29)*abb4(37)
      abb4(38)=32.0_ki*abb4(38)
      abb4(18)=-4.0_ki*abb4(18)
      abb4(17)=abb4(17)-abb4(13)
      abb4(17)=abb4(17)*abb4(21)
      abb4(14)=abb4(14)*abb4(3)
      abb4(10)=abb4(10)*c2
      abb4(10)=abb4(14)-abb4(10)
      abb4(10)=abb4(10)*abb4(3)
      abb4(14)=abb4(23)-abb4(10)
      abb4(21)=-abb4(14)*abb4(24)
      abb4(17)=abb4(21)+abb4(17)
      abb4(17)=4.0_ki*abb4(17)
      abb4(21)=abb4(14)*spak2k4
      abb4(21)=16.0_ki*abb4(21)
      abb4(23)=abb4(8)*c2
      abb4(24)=abb4(23)*abb4(9)
      abb4(39)=abb4(24)*NC
      abb4(8)=abb4(8)*c1
      abb4(40)=abb4(8)*abb4(9)
      abb4(39)=abb4(39)-abb4(40)
      abb4(41)=abb4(39)*spak2l6
      abb4(42)=-abb4(41)*spak2k4
      abb4(9)=abb4(27)*abb4(9)
      abb4(8)=abb4(9)*abb4(8)
      abb4(9)=abb4(9)*abb4(23)
      abb4(23)=abb4(9)*NC
      abb4(8)=abb4(8)-abb4(23)
      abb4(23)=abb4(8)*abb4(31)
      abb4(23)=abb4(42)+abb4(23)
      abb4(23)=abb4(23)*spbl5k2
      abb4(27)=abb4(30)*abb4(27)
      abb4(30)=-abb4(34)*spak4l6
      abb4(27)=abb4(30)-abb4(27)
      abb4(27)=abb4(41)*abb4(27)
      abb4(23)=abb4(23)+abb4(27)
      abb4(27)=-spbk4k1*abb4(23)
      abb4(12)=abb4(12)*abb4(6)
      abb4(12)=abb4(13)+3.0_ki*abb4(12)
      abb4(12)=abb4(12)*spbl5k2
      abb4(13)=abb4(32)*abb4(5)
      abb4(12)=abb4(12)-3.0_ki*abb4(13)
      abb4(13)=spak2k3*abb4(12)
      abb4(30)=spak3l6*abb4(35)
      abb4(13)=abb4(30)+abb4(13)+abb4(27)
      abb4(13)=2.0_ki*abb4(13)
      abb4(27)=abb4(40)*abb4(33)
      abb4(9)=abb4(27)-abb4(9)
      abb4(9)=abb4(9)*abb4(3)
      abb4(8)=abb4(9)+abb4(8)
      abb4(8)=abb4(8)*abb4(37)
      abb4(9)=-spbk4k1*abb4(8)
      abb4(27)=abb4(29)*abb4(36)
      abb4(29)=spak2k3*abb4(27)
      abb4(9)=abb4(9)+abb4(29)
      abb4(9)=16.0_ki*abb4(9)
      abb4(29)=abb4(40)*abb4(3)
      abb4(24)=abb4(29)-abb4(24)
      abb4(24)=abb4(24)*abb4(3)
      abb4(24)=abb4(24)-abb4(39)
      abb4(24)=abb4(24)*spak2k4
      abb4(29)=spbk4k1*abb4(24)
      abb4(30)=-spak2k3*abb4(14)
      abb4(29)=abb4(29)+abb4(30)
      abb4(29)=8.0_ki*abb4(29)
      abb4(23)=spbk4k3*abb4(23)
      abb4(12)=spak1k2*abb4(12)
      abb4(30)=-spak1l6*abb4(35)
      abb4(12)=abb4(30)+abb4(12)+abb4(23)
      abb4(12)=2.0_ki*abb4(12)
      abb4(8)=spbk4k3*abb4(8)
      abb4(23)=spak1k2*abb4(27)
      abb4(8)=abb4(8)+abb4(23)
      abb4(8)=16.0_ki*abb4(8)
      abb4(23)=-spbk4k3*abb4(24)
      abb4(24)=-spak1k2*abb4(14)
      abb4(23)=abb4(23)+abb4(24)
      abb4(23)=8.0_ki*abb4(23)
      abb4(11)=abb4(3)*abb4(11)*abb4(25)
      abb4(24)=abb4(28)*abb4(6)
      abb4(11)=abb4(11)-abb4(24)
      abb4(24)=-spbk3k2*spak3k4
      abb4(25)=-spbk2k1*spak1k4
      abb4(24)=abb4(25)+abb4(24)
      abb4(11)=abb4(11)*abb4(24)
      abb4(10)=spal5l6*abb4(10)*abb4(19)
      abb4(10)=abb4(10)+abb4(11)
      abb4(10)=4.0_ki*abb4(10)
      abb4(11)=8.0_ki*abb4(27)
      abb4(19)=spak3k4*abb4(11)
      abb4(14)=4.0_ki*abb4(14)
      abb4(24)=-spak3k4*abb4(14)
      abb4(11)=-spak1k4*abb4(11)
      abb4(14)=spak1k4*abb4(14)
      R2d4=abb4(20)
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd4h1
