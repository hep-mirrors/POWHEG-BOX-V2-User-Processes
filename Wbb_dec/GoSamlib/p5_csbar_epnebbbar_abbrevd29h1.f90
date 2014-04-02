module     p5_csbar_epnebbbar_abbrevd29h1
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(41), public :: abb29
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
      abb29(4)=spak2l5**(-1)
      abb29(5)=spbl6k2**(-1)
      abb29(6)=sqrt(mB**2)
      abb29(7)=2.0_ki*abb29(3)
      abb29(8)=TR*gW
      abb29(8)=abb29(8)**2*i_*CVSC*abb29(2)*abb29(1)
      abb29(9)=abb29(8)*c2*spbk3k1
      abb29(10)=abb29(7)*abb29(9)
      abb29(9)=abb29(9)*NC
      abb29(11)=abb29(10)-abb29(9)
      abb29(12)=abb29(3)**2
      abb29(13)=abb29(12)*abb29(8)*c1
      abb29(14)=spbk3k1*abb29(13)
      abb29(14)=abb29(14)-abb29(11)
      abb29(15)=4.0_ki*abb29(14)
      abb29(16)=spbl5k3*spak3k4
      abb29(17)=spbl5k1*spak1k4
      abb29(16)=abb29(16)-abb29(17)
      abb29(17)=spbl6k2*abb29(16)*spak2l6**2*abb29(15)
      abb29(12)=abb29(12)*c1
      abb29(18)=abb29(12)*spbk3k1
      abb29(19)=abb29(8)*spak2k4
      abb29(20)=abb29(18)*abb29(19)
      abb29(21)=abb29(9)*spak2k4
      abb29(20)=abb29(20)+abb29(21)
      abb29(21)=abb29(4)*mB
      abb29(22)=spak2l6*abb29(21)
      abb29(23)=abb29(22)*abb29(20)
      abb29(24)=spak2l6*abb29(10)
      abb29(25)=abb29(21)*abb29(24)
      abb29(26)=abb29(25)*spak2k4
      abb29(23)=abb29(23)-abb29(26)
      abb29(26)=2.0_ki*abb29(6)
      abb29(23)=abb29(23)*abb29(26)
      abb29(10)=abb29(10)*spak2k4
      abb29(10)=abb29(10)-abb29(20)
      abb29(27)=abb29(5)*mB
      abb29(28)=abb29(27)*abb29(6)
      abb29(29)=mB**2
      abb29(30)=abb29(29)*abb29(5)
      abb29(28)=abb29(28)-abb29(30)
      abb29(31)=spbl5k2*abb29(10)*abb29(28)
      abb29(32)=abb29(8)*spak2l6
      abb29(33)=abb29(18)*abb29(32)
      abb29(34)=abb29(9)*spak2l6
      abb29(34)=abb29(34)+abb29(33)
      abb29(35)=abb29(34)-abb29(24)
      abb29(36)=spbl6l5*spak4l6
      abb29(37)=abb29(36)*abb29(35)
      abb29(38)=abb29(29)*abb29(4)
      abb29(39)=abb29(38)*spak2l6
      abb29(20)=abb29(39)*abb29(20)
      abb29(24)=abb29(24)*abb29(38)
      abb29(40)=spak2k4*abb29(24)
      abb29(20)=-abb29(31)-abb29(23)-abb29(37)-abb29(40)+abb29(20)
      abb29(20)=8.0_ki*abb29(20)
      abb29(16)=8.0_ki*abb29(35)*abb29(16)
      abb29(23)=abb29(38)*abb29(5)
      abb29(31)=abb29(10)*abb29(23)
      abb29(31)=16.0_ki*abb29(31)
      abb29(37)=4.0_ki*abb29(35)
      abb29(40)=spbl6k3*spak3k4
      abb29(41)=-spbl6k1*spak1k4
      abb29(40)=abb29(40)+abb29(41)
      abb29(37)=abb29(40)*abb29(37)
      abb29(10)=8.0_ki*abb29(10)
      abb29(40)=abb29(26)*abb29(22)
      abb29(39)=abb29(40)-abb29(39)
      abb29(7)=abb29(7)-NC
      abb29(40)=abb29(7)*c2
      abb29(12)=abb29(40)-abb29(12)
      abb29(19)=-abb29(19)*abb29(12)
      abb29(39)=abb29(19)*abb29(39)
      abb29(28)=-spbl5k2*abb29(19)*abb29(28)
      abb29(12)=abb29(36)*abb29(32)*abb29(12)
      abb29(12)=-abb29(12)+abb29(28)+abb29(39)
      abb29(28)=-spbk4k1*abb29(12)
      abb29(9)=abb29(22)*abb29(9)
      abb29(21)=abb29(21)*abb29(33)
      abb29(9)=abb29(9)+abb29(21)-abb29(25)
      abb29(21)=abb29(9)*abb29(26)
      abb29(22)=-abb29(27)*abb29(11)
      abb29(18)=abb29(18)*abb29(8)*abb29(5)
      abb29(25)=mB*abb29(18)
      abb29(22)=abb29(22)+abb29(25)
      abb29(22)=abb29(22)*abb29(6)
      abb29(25)=-abb29(30)*abb29(11)
      abb29(26)=abb29(18)*abb29(29)
      abb29(22)=abb29(22)-abb29(25)-abb29(26)
      abb29(25)=abb29(22)*spbl5k2
      abb29(26)=abb29(34)*abb29(38)
      abb29(21)=abb29(24)-abb29(25)+abb29(21)-abb29(26)
      abb29(24)=-spak2k3*abb29(21)
      abb29(25)=abb29(35)*spbl6l5
      abb29(26)=-spak3l6*abb29(25)
      abb29(24)=abb29(26)+abb29(24)+abb29(28)
      abb29(24)=4.0_ki*abb29(24)
      abb29(18)=abb29(18)*abb29(38)
      abb29(11)=abb29(11)*abb29(23)
      abb29(11)=abb29(18)-abb29(11)
      abb29(18)=spak2k3*abb29(11)
      abb29(26)=abb29(19)*abb29(23)
      abb29(27)=spbk4k1*abb29(26)
      abb29(18)=abb29(27)+abb29(18)
      abb29(18)=8.0_ki*abb29(18)
      abb29(27)=-spak2k3*abb29(14)
      abb29(28)=-spbk4k1*abb29(19)
      abb29(27)=abb29(28)+abb29(27)
      abb29(27)=4.0_ki*abb29(27)
      abb29(12)=spbk4k3*abb29(12)
      abb29(21)=-spak1k2*abb29(21)
      abb29(25)=spak1l6*abb29(25)
      abb29(12)=abb29(25)+abb29(21)+abb29(12)
      abb29(12)=4.0_ki*abb29(12)
      abb29(11)=spak1k2*abb29(11)
      abb29(21)=-spbk4k3*abb29(26)
      abb29(11)=abb29(21)+abb29(11)
      abb29(11)=8.0_ki*abb29(11)
      abb29(21)=-spak1k2*abb29(14)
      abb29(19)=spbk4k3*abb29(19)
      abb29(19)=abb29(19)+abb29(21)
      abb29(19)=4.0_ki*abb29(19)
      abb29(21)=spbk3k2*spak3k4
      abb29(25)=spbk2k1*spak1k4
      abb29(21)=abb29(21)+abb29(25)
      abb29(21)=4.0_ki*abb29(21)
      abb29(23)=abb29(35)*abb29(23)*abb29(21)
      abb29(21)=abb29(22)*abb29(21)
      abb29(22)=abb29(14)*spak4l6
      abb29(22)=8.0_ki*abb29(22)
      abb29(25)=abb29(15)*spak3k4
      abb29(15)=abb29(15)*spak1k4
      abb29(7)=c2*abb29(8)*abb29(7)
      abb29(7)=abb29(7)-abb29(13)
      abb29(7)=abb29(7)*spak4l6
      abb29(8)=spbk4k1*abb29(7)
      abb29(13)=-spak3l6*abb29(14)
      abb29(8)=abb29(8)+abb29(13)
      abb29(8)=4.0_ki*abb29(8)
      abb29(7)=-spbk4k3*abb29(7)
      abb29(13)=spak1l6*abb29(14)
      abb29(7)=abb29(7)+abb29(13)
      abb29(7)=4.0_ki*abb29(7)
      abb29(9)=abb29(9)*abb29(6)
      abb29(9)=4.0_ki*abb29(9)
      abb29(13)=-spak3k4*abb29(9)
      abb29(9)=spak1k4*abb29(9)
      R2d29=0.0_ki
      rat2 = rat2 + R2d29
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='29' value='", &
          & R2d29, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd29h1
