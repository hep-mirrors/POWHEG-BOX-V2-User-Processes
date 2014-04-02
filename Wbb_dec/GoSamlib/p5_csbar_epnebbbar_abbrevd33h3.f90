module     p5_csbar_epnebbbar_abbrevd33h3
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(42), public :: abb33
   complex(ki), public :: R2d33
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
      abb33(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb33(2)=NC**(-1)
      abb33(3)=es234**(-1)
      abb33(4)=es56**(-1)
      abb33(5)=spak2l5**(-1)
      abb33(6)=spak2l6**(-1)
      abb33(7)=spbl5k2**(-1)
      abb33(8)=spbl6k2**(-1)
      abb33(9)=sqrt(mB**2)
      abb33(10)=1.0_ki/(es34+es56-es12-es234)
      abb33(11)=spak2k4*abb33(2)
      abb33(12)=c1*abb33(11)**2
      abb33(13)=c2*abb33(2)
      abb33(14)=abb33(13)*spak2k4**2
      abb33(12)=abb33(12)-abb33(14)
      abb33(14)=TR*gW
      abb33(14)=abb33(14)**2*abb33(4)*i_*CVSC
      abb33(15)=abb33(14)*mB
      abb33(16)=abb33(3)*abb33(1)
      abb33(17)=abb33(16)*spbk4k3
      abb33(18)=abb33(15)*abb33(17)
      abb33(19)=-abb33(18)*abb33(12)
      abb33(20)=spbl6k1*abb33(5)
      abb33(21)=abb33(19)*abb33(20)
      abb33(22)=spbl5k1*abb33(6)
      abb33(23)=abb33(19)*abb33(22)
      abb33(21)=abb33(21)+abb33(23)
      abb33(24)=-2.0_ki*abb33(21)
      abb33(25)=-abb33(9)*abb33(21)
      abb33(17)=abb33(17)*abb33(14)
      abb33(12)=abb33(12)*abb33(17)
      abb33(26)=-mB**2*abb33(12)
      abb33(27)=abb33(22)+abb33(20)
      abb33(27)=abb33(26)*abb33(27)
      abb33(25)=abb33(25)+abb33(27)
      abb33(25)=abb33(9)*abb33(25)
      abb33(27)=abb33(14)*c2
      abb33(28)=abb33(16)*abb33(27)*abb33(11)
      abb33(29)=c1*abb33(2)**2
      abb33(14)=abb33(14)*abb33(29)
      abb33(30)=abb33(16)*spak2k4
      abb33(31)=abb33(14)*abb33(30)
      abb33(28)=abb33(28)-abb33(31)
      abb33(31)=abb33(9)*spbl6l5
      abb33(28)=abb33(28)*abb33(31)
      abb33(11)=abb33(11)*c2
      abb33(16)=abb33(16)*abb33(11)*abb33(15)
      abb33(32)=abb33(29)*abb33(15)
      abb33(30)=abb33(30)*abb33(32)
      abb33(16)=abb33(16)-abb33(30)
      abb33(30)=abb33(16)*spbl6l5
      abb33(28)=abb33(28)-abb33(30)
      abb33(30)=spak2l6*spbl6k1
      abb33(33)=spak2l5*spbl5k1
      abb33(30)=abb33(30)-abb33(33)
      abb33(34)=-spbk3k2*abb33(28)*abb33(30)
      abb33(29)=abb33(29)*spak2k4
      abb33(11)=abb33(11)-abb33(29)
      abb33(17)=-abb33(31)*abb33(17)*abb33(11)
      abb33(29)=spbl6k1*abb33(17)
      abb33(11)=-abb33(18)*abb33(11)
      abb33(18)=abb33(11)*spbl6l5
      abb33(31)=abb33(22)*spak2l5
      abb33(35)=abb33(18)*abb33(31)
      abb33(29)=abb33(29)+abb33(35)
      abb33(29)=spak4l6*abb33(29)
      abb33(35)=-spbl5k1*abb33(17)
      abb33(36)=abb33(20)*spak2l6
      abb33(37)=-abb33(18)*abb33(36)
      abb33(35)=abb33(35)+abb33(37)
      abb33(35)=spak4l5*abb33(35)
      abb33(26)=abb33(26)*abb33(9)
      abb33(37)=-spbl6k1*abb33(6)*abb33(26)
      abb33(12)=-mB**3*abb33(12)
      abb33(38)=abb33(12)*abb33(6)**2
      abb33(33)=-abb33(38)*abb33(33)
      abb33(33)=abb33(37)+abb33(33)
      abb33(37)=spbl5k2*abb33(8)
      abb33(33)=abb33(33)*abb33(37)
      abb33(26)=-spbl5k1*abb33(5)*abb33(26)
      abb33(39)=abb33(12)*abb33(5)**2
      abb33(40)=abb33(39)*spbl6k1
      abb33(41)=-spak2l6*abb33(40)
      abb33(26)=abb33(26)+abb33(41)
      abb33(26)=spbl6k2*abb33(7)*abb33(26)
      abb33(13)=abb33(13)*abb33(15)
      abb33(13)=abb33(32)-abb33(13)
      abb33(13)=abb33(1)*abb33(13)
      abb33(15)=abb33(27)*abb33(2)
      abb33(14)=abb33(15)-abb33(14)
      abb33(14)=abb33(9)*abb33(1)*abb33(14)
      abb33(14)=abb33(14)+abb33(13)
      abb33(15)=spbk3k1*abb33(10)
      abb33(14)=abb33(14)*abb33(15)*spbl6l5
      abb33(27)=abb33(14)*spak3k4
      abb33(32)=spbl6k3*spak2l6
      abb33(41)=spbl5k3*spak2l5
      abb33(42)=abb33(41)-abb33(32)
      abb33(42)=abb33(42)*abb33(27)
      abb33(30)=spak1k4*abb33(14)*abb33(30)
      abb33(25)=abb33(26)+abb33(33)+abb33(35)+abb33(29)+abb33(30)+abb33(25)+abb&
      &33(34)+abb33(42)
      abb33(25)=4.0_ki*abb33(25)
      abb33(23)=8.0_ki*abb33(23)
      abb33(26)=abb33(12)*abb33(5)
      abb33(29)=-abb33(22)*abb33(26)
      abb33(29)=abb33(29)+abb33(40)
      abb33(29)=abb33(7)*abb33(29)
      abb33(12)=-abb33(8)*abb33(20)*abb33(12)*abb33(6)
      abb33(12)=abb33(29)+abb33(12)
      abb33(12)=8.0_ki*abb33(12)
      abb33(21)=4.0_ki*abb33(21)
      abb33(29)=4.0_ki*abb33(5)
      abb33(19)=-spbl5k1*abb33(19)*abb33(29)
      abb33(30)=4.0_ki*abb33(11)
      abb33(33)=-spbl5k1+abb33(36)
      abb33(33)=abb33(33)*abb33(30)
      abb33(34)=-spbl6k1*abb33(30)
      abb33(17)=abb33(18)-2.0_ki*abb33(17)
      abb33(17)=4.0_ki*abb33(17)
      abb33(16)=abb33(16)*spbk3k2
      abb33(13)=abb33(13)*abb33(15)
      abb33(15)=abb33(13)*spak1k4
      abb33(15)=abb33(16)+abb33(15)
      abb33(16)=-abb33(36)*abb33(15)
      abb33(35)=-abb33(7)*abb33(39)
      abb33(26)=abb33(26)*abb33(6)
      abb33(36)=abb33(8)*abb33(26)
      abb33(35)=abb33(35)+abb33(36)
      abb33(35)=spbk2k1*abb33(35)
      abb33(36)=spak4l6*abb33(11)*abb33(22)
      abb33(13)=abb33(13)*spak3k4
      abb33(32)=abb33(5)*abb33(13)*abb33(32)
      abb33(16)=abb33(35)+abb33(32)+abb33(36)+abb33(16)
      abb33(16)=4.0_ki*abb33(16)
      abb33(32)=-abb33(5)*abb33(30)
      abb33(31)=abb33(31)*abb33(15)
      abb33(20)=-abb33(22)+abb33(20)
      abb33(11)=spak4l5*abb33(11)*abb33(20)
      abb33(20)=abb33(13)*abb33(6)
      abb33(22)=-abb33(20)*abb33(41)
      abb33(35)=spbk2k1*abb33(7)*abb33(26)
      abb33(11)=abb33(35)+abb33(22)+abb33(11)+abb33(31)
      abb33(11)=4.0_ki*abb33(11)
      abb33(22)=-abb33(6)*abb33(30)
      abb33(27)=8.0_ki*abb33(27)
      abb33(13)=-abb33(13)*abb33(29)
      abb33(20)=-4.0_ki*abb33(20)
      abb33(28)=spbk3k2*abb33(28)
      abb33(14)=-spak1k4*abb33(14)
      abb33(14)=abb33(14)+abb33(26)+abb33(28)
      abb33(18)=spak4l6*abb33(6)*abb33(18)
      abb33(26)=-abb33(38)*abb33(37)
      abb33(14)=abb33(26)+2.0_ki*abb33(14)+abb33(18)
      abb33(14)=4.0_ki*abb33(14)
      abb33(15)=4.0_ki*abb33(15)
      abb33(18)=abb33(5)*abb33(15)
      abb33(15)=abb33(6)*abb33(15)
      R2d33=abb33(24)
      rat2 = rat2 + R2d33
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='33' value='", &
          & R2d33, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd33h3
