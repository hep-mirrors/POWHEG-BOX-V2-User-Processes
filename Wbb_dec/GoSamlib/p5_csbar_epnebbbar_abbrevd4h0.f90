module     p5_csbar_epnebbbar_abbrevd4h0
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(41), public :: abb4
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
      abb4(5)=spbl5k2**(-1)
      abb4(6)=spbl6k2**(-1)
      abb4(7)=spak2l5**(-1)
      abb4(8)=spak2l6**(-1)
      abb4(9)=abb4(4)*i_*CVSC*abb4(2)*abb4(1)
      abb4(10)=TR*gW
      abb4(10)=abb4(10)**2
      abb4(11)=abb4(9)*abb4(10)*mB
      abb4(12)=abb4(11)*spbk3k1
      abb4(13)=abb4(12)*c1
      abb4(14)=abb4(13)*abb4(6)
      abb4(15)=abb4(14)*abb4(3)
      abb4(12)=abb4(12)*c2
      abb4(16)=abb4(12)*abb4(6)
      abb4(15)=abb4(15)-abb4(16)
      abb4(17)=abb4(15)*abb4(3)
      abb4(18)=abb4(17)-abb4(14)
      abb4(18)=abb4(18)*spak2l5
      abb4(19)=abb4(13)*abb4(5)
      abb4(20)=abb4(19)*abb4(3)
      abb4(21)=abb4(12)*abb4(5)
      abb4(20)=abb4(20)-abb4(21)
      abb4(22)=abb4(20)*abb4(3)
      abb4(23)=abb4(22)-abb4(19)
      abb4(23)=abb4(23)*spak2l6
      abb4(24)=abb4(16)*spak2l5
      abb4(25)=abb4(21)*spak2l6
      abb4(24)=abb4(24)+abb4(25)
      abb4(25)=abb4(24)*NC
      abb4(18)=abb4(25)+abb4(18)+abb4(23)
      abb4(23)=spbk3k2*spak3k4
      abb4(26)=spbk2k1*spak1k4
      abb4(23)=abb4(23)+abb4(26)
      abb4(18)=abb4(23)*abb4(18)
      abb4(26)=-2.0_ki*abb4(18)
      abb4(12)=abb4(12)*NC
      abb4(12)=abb4(12)-abb4(13)
      abb4(13)=-spak2l5*abb4(12)
      abb4(27)=-abb4(13)*spak2l6
      abb4(21)=abb4(21)*NC
      abb4(28)=abb4(21)-abb4(19)
      abb4(29)=spbl6k2*abb4(28)*spak2l6**2
      abb4(16)=abb4(16)*NC
      abb4(30)=abb4(16)-abb4(14)
      abb4(31)=spbl5k2*abb4(30)*spak2l5**2
      abb4(27)=abb4(31)+2.0_ki*abb4(27)+abb4(29)
      abb4(27)=4.0_ki*abb4(23)*abb4(27)
      abb4(29)=2.0_ki*abb4(3)
      abb4(15)=abb4(29)*abb4(15)
      abb4(15)=abb4(15)+abb4(14)
      abb4(15)=abb4(15)*spak2l5
      abb4(20)=abb4(29)*abb4(20)
      abb4(20)=abb4(20)+abb4(19)
      abb4(20)=abb4(20)*spak2l6
      abb4(15)=-abb4(25)+abb4(15)+abb4(20)
      abb4(15)=abb4(23)*abb4(15)
      abb4(15)=4.0_ki*abb4(15)
      abb4(20)=abb4(13)*spak4l6
      abb4(25)=abb4(14)*spak2l5
      abb4(29)=abb4(16)*spak2l5
      abb4(31)=abb4(25)-abb4(29)
      abb4(32)=spbl5k2*spak4l5
      abb4(33)=abb4(31)*abb4(32)
      abb4(34)=abb4(19)*spak2l6
      abb4(35)=abb4(21)*spak2l6
      abb4(36)=abb4(34)-abb4(35)
      abb4(37)=spbl6k2*spak4l6
      abb4(38)=abb4(36)*abb4(37)
      abb4(12)=spak2l6*abb4(12)
      abb4(39)=abb4(12)*spak4l5
      abb4(20)=abb4(20)+abb4(33)+abb4(38)-abb4(39)
      abb4(20)=12.0_ki*abb4(20)
      abb4(9)=abb4(9)*abb4(10)*spbk3k1*mB**3
      abb4(10)=c2*abb4(9)
      abb4(33)=abb4(6)*abb4(5)
      abb4(33)=2.0_ki*abb4(33)
      abb4(38)=abb4(33)*abb4(10)
      abb4(24)=abb4(38)-abb4(24)
      abb4(24)=abb4(24)*NC
      abb4(38)=NC*spak2l6
      abb4(39)=abb4(10)*abb4(38)
      abb4(9)=c1*abb4(9)
      abb4(40)=abb4(9)*spak2l6
      abb4(39)=abb4(39)-abb4(40)
      abb4(39)=abb4(7)*abb4(39)*abb4(5)**2
      abb4(40)=NC*spak2l5
      abb4(10)=abb4(10)*abb4(40)
      abb4(41)=abb4(9)*spak2l5
      abb4(10)=abb4(10)-abb4(41)
      abb4(10)=abb4(8)*abb4(10)*abb4(6)**2
      abb4(9)=abb4(33)*abb4(9)
      abb4(9)=abb4(10)+abb4(39)+abb4(24)+abb4(34)-abb4(9)+abb4(25)
      abb4(9)=abb4(23)*abb4(9)
      abb4(10)=spbl5k3*spak3k4
      abb4(23)=spbl5k1*spak1k4
      abb4(10)=abb4(10)-abb4(23)
      abb4(23)=-abb4(22)*abb4(10)
      abb4(24)=spbl6k3*spak3k4
      abb4(25)=spbl6k1*spak1k4
      abb4(24)=abb4(24)-abb4(25)
      abb4(25)=abb4(17)*abb4(24)
      abb4(23)=abb4(25)+abb4(23)
      abb4(23)=spal5l6*abb4(23)
      abb4(9)=2.0_ki*abb4(23)+abb4(9)
      abb4(9)=4.0_ki*abb4(9)
      abb4(18)=4.0_ki*abb4(18)
      abb4(19)=abb4(22)+abb4(19)
      abb4(21)=abb4(19)-abb4(21)
      abb4(21)=-abb4(10)*abb4(21)*spak2l5
      abb4(19)=abb4(19)*spak2l6
      abb4(19)=abb4(19)-abb4(35)
      abb4(19)=-abb4(19)*abb4(24)
      abb4(19)=abb4(19)+abb4(21)
      abb4(19)=4.0_ki*abb4(19)
      abb4(21)=abb4(28)-abb4(22)
      abb4(22)=16.0_ki*spak2k4
      abb4(23)=abb4(22)*abb4(21)
      abb4(14)=abb4(17)+abb4(14)
      abb4(16)=abb4(14)-abb4(16)
      abb4(16)=-abb4(24)*abb4(16)*spak2l6
      abb4(14)=abb4(14)*spak2l5
      abb4(14)=abb4(14)-abb4(29)
      abb4(10)=-abb4(14)*abb4(10)
      abb4(10)=abb4(10)+abb4(16)
      abb4(10)=4.0_ki*abb4(10)
      abb4(14)=abb4(30)-abb4(17)
      abb4(16)=abb4(22)*abb4(14)
      abb4(17)=abb4(11)*c2
      abb4(22)=abb4(17)*NC
      abb4(11)=abb4(11)*c1
      abb4(22)=abb4(22)-abb4(11)
      abb4(24)=abb4(37)*spak2l6*abb4(5)
      abb4(25)=abb4(32)*spak2l5*abb4(6)
      abb4(24)=-abb4(24)-abb4(25)
      abb4(24)=abb4(22)*abb4(24)
      abb4(25)=abb4(11)*spak2l6
      abb4(28)=abb4(38)*abb4(17)
      abb4(25)=abb4(25)-abb4(28)
      abb4(25)=abb4(25)*spak4l5
      abb4(28)=abb4(11)*spak2l5
      abb4(29)=abb4(40)*abb4(17)
      abb4(28)=abb4(28)-abb4(29)
      abb4(28)=abb4(28)*spak4l6
      abb4(24)=abb4(25)+abb4(28)+abb4(24)
      abb4(25)=spbk4k1*abb4(24)
      abb4(28)=abb4(36)*spbl6k2
      abb4(13)=abb4(28)+abb4(13)
      abb4(28)=spak3l6*abb4(13)
      abb4(29)=abb4(31)*spbl5k2
      abb4(12)=abb4(29)-abb4(12)
      abb4(29)=spak3l5*abb4(12)
      abb4(25)=abb4(29)+abb4(25)+abb4(28)
      abb4(25)=6.0_ki*abb4(25)
      abb4(11)=abb4(11)*abb4(3)
      abb4(11)=abb4(11)-abb4(17)
      abb4(11)=abb4(11)*abb4(3)
      abb4(11)=abb4(22)-abb4(11)
      abb4(17)=-abb4(5)*abb4(11)
      abb4(22)=spbk4k1*spak2k4
      abb4(28)=-abb4(17)*abb4(22)
      abb4(29)=spak2k3*abb4(21)
      abb4(28)=abb4(28)+abb4(29)
      abb4(28)=8.0_ki*abb4(28)
      abb4(11)=-abb4(6)*abb4(11)
      abb4(22)=-abb4(11)*abb4(22)
      abb4(29)=spak2k3*abb4(14)
      abb4(22)=abb4(22)+abb4(29)
      abb4(22)=8.0_ki*abb4(22)
      abb4(24)=-spbk4k3*abb4(24)
      abb4(13)=-spak1l6*abb4(13)
      abb4(12)=-spak1l5*abb4(12)
      abb4(12)=abb4(12)+abb4(24)+abb4(13)
      abb4(12)=6.0_ki*abb4(12)
      abb4(13)=spbk4k3*spak2k4
      abb4(17)=abb4(17)*abb4(13)
      abb4(24)=spak1k2*abb4(21)
      abb4(17)=abb4(17)+abb4(24)
      abb4(17)=8.0_ki*abb4(17)
      abb4(11)=abb4(11)*abb4(13)
      abb4(13)=spak1k2*abb4(14)
      abb4(11)=abb4(11)+abb4(13)
      abb4(11)=8.0_ki*abb4(11)
      abb4(13)=4.0_ki*abb4(21)
      abb4(21)=spak3k4*abb4(13)
      abb4(14)=4.0_ki*abb4(14)
      abb4(24)=spak3k4*abb4(14)
      abb4(13)=-spak1k4*abb4(13)
      abb4(14)=-spak1k4*abb4(14)
      R2d4=abb4(26)
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd4h0
