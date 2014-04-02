module     p5_csbar_epnebbbar_abbrevd24h0
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(28), public :: abb24
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
      abb24(5)=spbl5k2**(-1)
      abb24(6)=spbl6k2**(-1)
      abb24(7)=abb24(2)**2*i_*mB*CVSC*abb24(1)
      abb24(8)=TR*gW
      abb24(8)=abb24(8)**2
      abb24(9)=abb24(7)*abb24(8)*abb24(4)
      abb24(10)=abb24(9)*spak2l6
      abb24(11)=spbk3k1**2
      abb24(12)=abb24(11)*c2
      abb24(13)=abb24(12)*abb24(10)
      abb24(14)=spbl6k2*abb24(5)
      abb24(15)=abb24(13)*abb24(14)
      abb24(16)=abb24(9)*spak2l5
      abb24(12)=abb24(12)*abb24(16)
      abb24(15)=abb24(15)+abb24(12)
      abb24(15)=abb24(15)*NC
      abb24(17)=abb24(13)*abb24(3)
      abb24(18)=abb24(3)**2
      abb24(18)=abb24(18)-1.0_ki
      abb24(19)=abb24(18)*abb24(9)
      abb24(11)=-abb24(11)*abb24(19)
      abb24(20)=c1*spak2l6
      abb24(21)=abb24(11)*abb24(20)
      abb24(17)=abb24(17)+abb24(21)
      abb24(21)=abb24(17)*abb24(14)
      abb24(22)=abb24(12)*abb24(3)
      abb24(23)=c1*spak2l5
      abb24(11)=abb24(11)*abb24(23)
      abb24(11)=abb24(22)+abb24(11)
      abb24(15)=abb24(15)-abb24(21)-abb24(11)
      abb24(21)=-spak1l6*abb24(15)
      abb24(22)=spbl5k2*abb24(6)
      abb24(12)=abb24(12)*abb24(22)
      abb24(12)=abb24(12)+abb24(13)
      abb24(12)=abb24(12)*NC
      abb24(11)=abb24(11)*abb24(22)
      abb24(11)=abb24(12)-abb24(11)-abb24(17)
      abb24(12)=-spak1l5*abb24(11)
      abb24(12)=abb24(12)+abb24(21)
      abb24(12)=spak3k4*abb24(12)
      abb24(13)=spak3l6*abb24(15)
      abb24(11)=spak3l5*abb24(11)
      abb24(11)=abb24(11)+abb24(13)
      abb24(11)=spak1k4*abb24(11)
      abb24(9)=c2*abb24(9)*spbk3k1
      abb24(13)=abb24(9)*spak2l5
      abb24(15)=abb24(22)*spak4l5
      abb24(15)=abb24(15)+spak4l6
      abb24(17)=abb24(13)*abb24(15)
      abb24(9)=abb24(9)*spak2l6
      abb24(21)=abb24(14)*spak4l6
      abb24(21)=abb24(21)+spak4l5
      abb24(24)=abb24(9)*abb24(21)
      abb24(17)=abb24(24)+abb24(17)
      abb24(17)=abb24(17)*NC
      abb24(24)=spbk3k1*abb24(19)
      abb24(25)=abb24(24)*abb24(20)
      abb24(26)=abb24(9)*abb24(3)
      abb24(25)=abb24(25)-abb24(26)
      abb24(26)=abb24(25)*abb24(21)
      abb24(24)=abb24(24)*abb24(23)
      abb24(27)=abb24(13)*abb24(3)
      abb24(24)=abb24(24)-abb24(27)
      abb24(27)=abb24(24)*abb24(15)
      abb24(17)=abb24(17)+abb24(26)+abb24(27)
      abb24(26)=es234-es23+es123-es34
      abb24(26)=abb24(17)*abb24(26)
      abb24(7)=abb24(7)*abb24(8)*spbk3k1
      abb24(8)=c2*abb24(7)
      abb24(27)=abb24(8)*abb24(3)
      abb24(28)=spak2l6*abb24(27)
      abb24(7)=abb24(18)*abb24(7)
      abb24(18)=abb24(7)*abb24(20)
      abb24(18)=abb24(28)-abb24(18)
      abb24(18)=abb24(18)*abb24(21)
      abb24(27)=spak2l5*abb24(27)
      abb24(7)=abb24(7)*abb24(23)
      abb24(7)=abb24(27)-abb24(7)
      abb24(7)=abb24(7)*abb24(15)
      abb24(27)=-spak2l6*abb24(21)
      abb24(28)=-spak2l5*abb24(15)
      abb24(27)=abb24(28)+abb24(27)
      abb24(8)=NC*abb24(8)*abb24(27)
      abb24(7)=abb24(8)+abb24(26)+abb24(11)+abb24(12)+abb24(7)+abb24(18)
      abb24(7)=4.0_ki*abb24(7)
      abb24(8)=16.0_ki*abb24(17)
      abb24(11)=abb24(14)*abb24(9)
      abb24(11)=abb24(11)+abb24(13)
      abb24(11)=abb24(11)*NC
      abb24(12)=abb24(25)*abb24(14)
      abb24(11)=abb24(11)+abb24(12)+abb24(24)
      abb24(12)=4.0_ki*spak3k4
      abb24(14)=-abb24(11)*abb24(12)
      abb24(17)=4.0_ki*spak1k4
      abb24(18)=abb24(11)*abb24(17)
      abb24(13)=abb24(22)*abb24(13)
      abb24(9)=abb24(13)+abb24(9)
      abb24(9)=abb24(9)*NC
      abb24(13)=abb24(24)*abb24(22)
      abb24(9)=abb24(9)+abb24(13)+abb24(25)
      abb24(12)=-abb24(9)*abb24(12)
      abb24(13)=abb24(9)*abb24(17)
      abb24(17)=spak3l6*abb24(11)
      abb24(22)=spak3l5*abb24(9)
      abb24(16)=abb24(16)*c2
      abb24(24)=abb24(15)*abb24(16)
      abb24(10)=abb24(10)*c2
      abb24(25)=abb24(21)*abb24(10)
      abb24(24)=abb24(24)+abb24(25)
      abb24(24)=abb24(24)*NC
      abb24(16)=abb24(16)*abb24(3)
      abb24(23)=abb24(19)*abb24(23)
      abb24(16)=abb24(16)-abb24(23)
      abb24(15)=abb24(15)*abb24(16)
      abb24(10)=abb24(10)*abb24(3)
      abb24(16)=abb24(19)*abb24(20)
      abb24(10)=abb24(10)-abb24(16)
      abb24(10)=abb24(21)*abb24(10)
      abb24(10)=abb24(24)-abb24(15)-abb24(10)
      abb24(15)=spbk4k1*abb24(10)
      abb24(15)=abb24(15)+abb24(17)+abb24(22)
      abb24(15)=8.0_ki*abb24(15)
      abb24(10)=-spbk4k3*abb24(10)
      abb24(11)=-spak1l6*abb24(11)
      abb24(9)=-spak1l5*abb24(9)
      abb24(9)=abb24(9)+abb24(10)+abb24(11)
      abb24(9)=8.0_ki*abb24(9)
      R2d24=0.0_ki
      rat2 = rat2 + R2d24
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='24' value='", &
          & R2d24, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd24h0
