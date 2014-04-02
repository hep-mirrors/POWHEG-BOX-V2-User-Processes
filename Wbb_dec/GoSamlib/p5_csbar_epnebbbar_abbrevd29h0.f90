module     p5_csbar_epnebbbar_abbrevd29h0
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(38), public :: abb29
   complex(ki), public :: R2d29
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
      abb29(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb29(2)=1.0_ki/(es34+es56-es12-es234)
      abb29(3)=NC**(-1)
      abb29(4)=spbl5k2**(-1)
      abb29(5)=sqrt(mB**2)
      abb29(6)=spbl6k2**(-1)
      abb29(7)=-NC+2.0_ki*abb29(3)
      abb29(8)=TR*gW
      abb29(8)=abb29(8)**2*i_*CVSC*abb29(2)*abb29(1)
      abb29(9)=abb29(8)*abb29(4)
      abb29(10)=spbk3k1*mB
      abb29(11)=abb29(10)*c2
      abb29(12)=-abb29(7)*abb29(9)*abb29(11)
      abb29(13)=abb29(3)**2
      abb29(14)=abb29(13)*c1
      abb29(15)=abb29(14)*abb29(10)
      abb29(16)=abb29(15)*abb29(9)
      abb29(16)=abb29(16)+abb29(12)
      abb29(17)=spbl6k2*abb29(16)*spak2l6**2
      abb29(18)=abb29(7)*c2
      abb29(18)=abb29(18)-abb29(14)
      abb29(19)=abb29(8)*spak2l6
      abb29(20)=-abb29(18)*abb29(19)*spbk3k1
      abb29(21)=abb29(20)*abb29(5)
      abb29(22)=spak2l5*abb29(21)
      abb29(17)=abb29(22)+abb29(17)
      abb29(22)=spbk3k2*spak3k4
      abb29(23)=spbk2k1*spak1k4
      abb29(22)=abb29(22)+abb29(23)
      abb29(17)=4.0_ki*abb29(22)*abb29(17)
      abb29(11)=abb29(7)*abb29(11)
      abb29(23)=abb29(15)-abb29(11)
      abb29(23)=abb29(19)*abb29(23)
      abb29(24)=abb29(23)*spak4l5
      abb29(12)=spak2l6*abb29(12)
      abb29(25)=abb29(9)*spak2l6
      abb29(15)=abb29(15)*abb29(25)
      abb29(12)=abb29(15)+abb29(12)
      abb29(15)=abb29(12)*spbl6k2
      abb29(26)=abb29(15)*spak4l6
      abb29(27)=2.0_ki*abb29(5)
      abb29(28)=abb29(27)*spak4l5
      abb29(29)=abb29(28)*abb29(20)
      abb29(24)=-abb29(26)+abb29(24)-abb29(29)
      abb29(24)=8.0_ki*abb29(24)
      abb29(26)=-abb29(9)*abb29(7)
      abb29(29)=abb29(26)*c2*spbk3k1
      abb29(9)=abb29(14)*abb29(9)
      abb29(30)=abb29(9)*spbk3k1
      abb29(29)=abb29(29)+abb29(30)
      abb29(30)=-abb29(29)*mB**3
      abb29(29)=abb29(5)*abb29(29)*mB**2
      abb29(29)=abb29(29)+abb29(30)
      abb29(29)=abb29(29)*abb29(6)
      abb29(29)=abb29(29)-abb29(12)
      abb29(29)=-8.0_ki*abb29(29)*abb29(22)
      abb29(30)=abb29(16)*spak4l6
      abb29(11)=-abb29(8)*abb29(11)
      abb29(13)=abb29(13)*abb29(8)*c1
      abb29(10)=abb29(10)*abb29(13)
      abb29(10)=abb29(11)+abb29(10)
      abb29(10)=abb29(10)*abb29(6)
      abb29(11)=abb29(10)*spak4l5
      abb29(11)=abb29(30)-abb29(11)
      abb29(11)=16.0_ki*abb29(11)
      abb29(30)=8.0_ki*abb29(16)
      abb29(31)=spak3k4*abb29(30)
      abb29(32)=-spbl6k3*spak3k4
      abb29(33)=spbl6k1*spak1k4
      abb29(32)=abb29(32)+abb29(33)
      abb29(12)=4.0_ki*abb29(12)*abb29(32)
      abb29(32)=abb29(30)*spak2k4
      abb29(30)=-spak1k4*abb29(30)
      abb29(22)=4.0_ki*abb29(23)*abb29(6)*abb29(22)
      abb29(33)=4.0_ki*spak3k4
      abb29(34)=-abb29(21)*abb29(33)
      abb29(35)=8.0_ki*abb29(10)
      abb29(36)=spak3k4*abb29(35)
      abb29(37)=4.0_ki*spak1k4
      abb29(21)=abb29(21)*abb29(37)
      abb29(35)=-spak1k4*abb29(35)
      abb29(38)=spak4l5*mB
      abb29(28)=abb29(38)-abb29(28)
      abb29(18)=-abb29(28)*abb29(19)*abb29(18)
      abb29(19)=c2*mB
      abb29(26)=-abb29(19)*abb29(26)
      abb29(28)=abb29(26)*spak2l6
      abb29(14)=mB*abb29(25)*abb29(14)
      abb29(14)=abb29(28)-abb29(14)
      abb29(14)=abb29(14)*spbl6k2*spak4l6
      abb29(14)=abb29(14)+abb29(18)
      abb29(18)=-spbk4k1*abb29(14)
      abb29(20)=abb29(20)*abb29(27)
      abb29(20)=abb29(20)-abb29(23)
      abb29(23)=spak3l5*abb29(20)
      abb29(25)=spak3l6*abb29(15)
      abb29(18)=abb29(25)+abb29(18)+abb29(23)
      abb29(18)=4.0_ki*abb29(18)
      abb29(7)=abb29(19)*abb29(7)*abb29(8)
      abb29(8)=mB*abb29(13)
      abb29(7)=abb29(7)-abb29(8)
      abb29(7)=abb29(7)*spak4l5*abb29(6)
      abb29(8)=abb29(9)*mB
      abb29(8)=abb29(8)-abb29(26)
      abb29(9)=abb29(8)*spak4l6
      abb29(7)=abb29(7)+abb29(9)
      abb29(9)=spbk4k1*abb29(7)
      abb29(13)=-spak3l5*abb29(10)
      abb29(19)=spak3l6*abb29(16)
      abb29(9)=abb29(19)+abb29(9)+abb29(13)
      abb29(9)=8.0_ki*abb29(9)
      abb29(8)=abb29(8)*spak2k4
      abb29(13)=spbk4k1*abb29(8)
      abb29(19)=spak2k3*abb29(16)
      abb29(13)=abb29(13)+abb29(19)
      abb29(13)=4.0_ki*abb29(13)
      abb29(14)=spbk4k3*abb29(14)
      abb29(19)=-spak1l5*abb29(20)
      abb29(15)=-spak1l6*abb29(15)
      abb29(14)=abb29(15)+abb29(14)+abb29(19)
      abb29(14)=4.0_ki*abb29(14)
      abb29(7)=-spbk4k3*abb29(7)
      abb29(15)=spak1l5*abb29(10)
      abb29(19)=-spak1l6*abb29(16)
      abb29(7)=abb29(19)+abb29(7)+abb29(15)
      abb29(7)=8.0_ki*abb29(7)
      abb29(8)=-spbk4k3*abb29(8)
      abb29(15)=spak1k2*abb29(16)
      abb29(8)=abb29(8)+abb29(15)
      abb29(8)=4.0_ki*abb29(8)
      abb29(15)=-abb29(16)*abb29(33)
      abb29(19)=-abb29(10)*abb29(33)
      abb29(16)=abb29(16)*abb29(37)
      abb29(10)=abb29(10)*abb29(37)
      R2d29=0.0_ki
      rat2 = rat2 + R2d29
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='29' value='", &
          & R2d29, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd29h0
