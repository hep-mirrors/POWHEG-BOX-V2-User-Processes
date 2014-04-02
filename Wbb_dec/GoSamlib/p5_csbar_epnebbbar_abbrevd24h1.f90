module     p5_csbar_epnebbbar_abbrevd24h1
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(26), public :: abb24
   complex(ki), public :: R2d24
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
      abb24(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb24(2)=1.0_ki/(es34+es56-es12-es234)
      abb24(3)=NC**(-1)
      abb24(4)=es56**(-1)
      abb24(5)=spak2l5**(-1)
      abb24(6)=spbl6k2**(-1)
      abb24(7)=mB**2
      abb24(8)=abb24(7)*abb24(5)
      abb24(9)=abb24(8)*c2
      abb24(10)=spbl5k2*c2
      abb24(9)=abb24(9)-abb24(10)
      abb24(11)=spak1k4*spak2k3
      abb24(12)=spak3k4*spak1k2
      abb24(11)=abb24(11)+abb24(12)
      abb24(12)=abb24(11)*abb24(9)
      abb24(13)=abb24(8)*c1
      abb24(14)=spbl5k2*c1
      abb24(13)=abb24(13)-abb24(14)
      abb24(15)=-abb24(11)*abb24(13)
      abb24(16)=spak1k4*spak3l6
      abb24(17)=spak3k4*spak1l6
      abb24(16)=abb24(16)-abb24(17)
      abb24(17)=c1*spbl6l5
      abb24(18)=abb24(16)*abb24(17)
      abb24(15)=-abb24(18)+abb24(15)
      abb24(15)=abb24(3)*abb24(15)
      abb24(19)=c2*spbl6l5
      abb24(20)=abb24(16)*abb24(19)
      abb24(12)=abb24(15)+abb24(20)+abb24(12)
      abb24(12)=abb24(3)*abb24(12)
      abb24(15)=c2*NC
      abb24(20)=abb24(15)-c1
      abb24(21)=-abb24(7)*abb24(5)*abb24(20)
      abb24(22)=abb24(20)*spbl5k2
      abb24(21)=abb24(21)+abb24(22)
      abb24(22)=abb24(11)*abb24(21)
      abb24(23)=abb24(15)*spbl6l5
      abb24(16)=-abb24(16)*abb24(23)
      abb24(12)=abb24(12)+abb24(18)+abb24(16)+abb24(22)
      abb24(12)=spak2l6*abb24(12)
      abb24(16)=abb24(7)*spbl5k2
      abb24(18)=-abb24(16)*abb24(6)*abb24(20)
      abb24(14)=abb24(3)*abb24(14)
      abb24(10)=abb24(14)-abb24(10)
      abb24(10)=abb24(3)*abb24(10)*abb24(7)*abb24(6)
      abb24(10)=abb24(18)-abb24(10)
      abb24(11)=abb24(11)*abb24(10)
      abb24(11)=abb24(12)+abb24(11)
      abb24(11)=spbk3k1*abb24(11)
      abb24(12)=abb24(15)*spak2k4
      abb24(14)=c1*spak2k4
      abb24(12)=abb24(12)-abb24(14)
      abb24(18)=abb24(12)*spbl5k2
      abb24(7)=-abb24(7)*abb24(5)*abb24(12)
      abb24(20)=spbl6l5*spak4l6
      abb24(15)=abb24(20)*abb24(15)
      abb24(22)=abb24(20)*c1
      abb24(7)=-abb24(15)+abb24(22)+abb24(18)+abb24(7)
      abb24(15)=-es234+es23+es34-es123
      abb24(18)=-abb24(15)*abb24(7)
      abb24(8)=abb24(8)-spbl5k2
      abb24(24)=c2*spak2k4
      abb24(25)=-abb24(24)*abb24(8)
      abb24(8)=-abb24(14)*abb24(8)
      abb24(8)=abb24(8)-abb24(22)
      abb24(8)=abb24(8)*abb24(3)
      abb24(20)=abb24(20)*c2
      abb24(8)=abb24(8)+abb24(20)-abb24(25)
      abb24(20)=-abb24(3)*abb24(15)*abb24(8)
      abb24(18)=abb24(20)+abb24(18)
      abb24(18)=spak2l6*abb24(18)
      abb24(12)=abb24(16)*abb24(6)*abb24(12)
      abb24(14)=abb24(3)*abb24(14)
      abb24(14)=abb24(14)-abb24(24)
      abb24(14)=abb24(3)*abb24(14)*abb24(16)*abb24(6)
      abb24(12)=abb24(12)+abb24(14)
      abb24(14)=abb24(15)*abb24(12)
      abb24(11)=abb24(11)+abb24(18)+abb24(14)
      abb24(11)=abb24(4)*abb24(11)
      abb24(14)=abb24(8)*abb24(3)
      abb24(14)=abb24(14)+abb24(7)
      abb24(14)=abb24(14)*spak2l6
      abb24(14)=abb24(14)-abb24(12)
      abb24(11)=-abb24(14)+abb24(11)
      abb24(15)=TR*abb24(2)*gW
      abb24(15)=abb24(15)**2*abb24(1)*CVSC
      abb24(11)=4.0_ki*i_*abb24(11)*abb24(15)*spbk3k1
      abb24(15)=abb24(15)*i_*abb24(4)
      abb24(16)=spbk3k1*abb24(15)
      abb24(18)=16.0_ki*abb24(16)
      abb24(14)=abb24(14)*abb24(18)
      abb24(18)=abb24(17)*abb24(3)
      abb24(18)=abb24(18)-abb24(19)
      abb24(18)=abb24(18)*abb24(3)
      abb24(20)=abb24(23)-abb24(17)
      abb24(18)=abb24(18)+abb24(20)
      abb24(16)=4.0_ki*abb24(16)
      abb24(22)=abb24(16)*spak2l6
      abb24(23)=abb24(22)*spak3k4*abb24(18)
      abb24(18)=-abb24(22)*spak1k4*abb24(18)
      abb24(22)=spbk4k1*abb24(7)
      abb24(24)=abb24(3)*spbk4k1*abb24(8)
      abb24(22)=abb24(24)+abb24(22)
      abb24(22)=spak2l6*abb24(22)
      abb24(24)=spak2k3*abb24(9)
      abb24(25)=-spak2k3*abb24(13)
      abb24(26)=-spak3l6*abb24(17)
      abb24(25)=abb24(26)+abb24(25)
      abb24(25)=abb24(3)*abb24(25)
      abb24(26)=spak3l6*abb24(19)
      abb24(24)=abb24(25)+abb24(26)+abb24(24)
      abb24(24)=abb24(3)*abb24(24)
      abb24(25)=spak2k3*abb24(21)
      abb24(26)=-spak3l6*abb24(20)
      abb24(24)=abb24(24)+abb24(26)+abb24(25)
      abb24(24)=spak2l6*abb24(24)
      abb24(25)=spak2k3*abb24(10)
      abb24(24)=abb24(24)+abb24(25)
      abb24(24)=spbk3k1*abb24(24)
      abb24(25)=-spbk4k1*abb24(12)
      abb24(22)=abb24(24)+abb24(22)+abb24(25)
      abb24(15)=8.0_ki*abb24(15)
      abb24(22)=abb24(22)*abb24(15)
      abb24(7)=-spbk4k3*abb24(7)
      abb24(8)=-abb24(3)*spbk4k3*abb24(8)
      abb24(7)=abb24(8)+abb24(7)
      abb24(7)=spak2l6*abb24(7)
      abb24(8)=spak1k2*abb24(9)
      abb24(24)=-spak1k2*abb24(13)
      abb24(17)=spak1l6*abb24(17)
      abb24(17)=abb24(17)+abb24(24)
      abb24(17)=abb24(3)*abb24(17)
      abb24(19)=-spak1l6*abb24(19)
      abb24(8)=abb24(17)+abb24(19)+abb24(8)
      abb24(8)=abb24(3)*abb24(8)
      abb24(17)=spak1k2*abb24(21)
      abb24(19)=spak1l6*abb24(20)
      abb24(8)=abb24(8)+abb24(19)+abb24(17)
      abb24(8)=spak2l6*abb24(8)
      abb24(17)=spak1k2*abb24(10)
      abb24(8)=abb24(8)+abb24(17)
      abb24(8)=spbk3k1*abb24(8)
      abb24(12)=spbk4k3*abb24(12)
      abb24(7)=abb24(8)+abb24(7)+abb24(12)
      abb24(7)=abb24(7)*abb24(15)
      abb24(8)=spak3k4*abb24(10)
      abb24(12)=abb24(13)*abb24(3)
      abb24(9)=abb24(12)-abb24(9)
      abb24(12)=-abb24(3)*spak3k4*abb24(9)
      abb24(13)=spak3k4*abb24(21)
      abb24(12)=abb24(12)+abb24(13)
      abb24(12)=spak2l6*abb24(12)
      abb24(8)=abb24(12)+abb24(8)
      abb24(8)=abb24(8)*abb24(16)
      abb24(10)=-spak1k4*abb24(10)
      abb24(9)=abb24(3)*spak1k4*abb24(9)
      abb24(12)=-spak1k4*abb24(21)
      abb24(9)=abb24(9)+abb24(12)
      abb24(9)=spak2l6*abb24(9)
      abb24(9)=abb24(9)+abb24(10)
      abb24(9)=abb24(9)*abb24(16)
      R2d24=0.0_ki
      rat2 = rat2 + R2d24
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='24' value='", &
          & R2d24, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd24h1
