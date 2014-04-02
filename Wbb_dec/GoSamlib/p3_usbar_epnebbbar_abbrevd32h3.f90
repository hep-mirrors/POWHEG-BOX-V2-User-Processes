module     p3_usbar_epnebbbar_abbrevd32h3
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(45), public :: abb32
   complex(ki), public :: R2d32
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
      abb32(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb32(2)=es234**(-1)
      abb32(3)=es56**(-1)
      abb32(4)=spak2l5**(-1)
      abb32(5)=spak2l6**(-1)
      abb32(6)=sqrt(mB**2)
      abb32(7)=spbl6k2**(-1)
      abb32(8)=spbl5k2**(-1)
      abb32(9)=1.0_ki/(es34+es56-es12-es234)
      abb32(10)=NC*c2
      abb32(10)=abb32(10)-c1
      abb32(11)=TR*gW
      abb32(11)=abb32(11)**2*i_*CVSU*abb32(3)*abb32(1)
      abb32(12)=abb32(10)*abb32(11)*abb32(2)
      abb32(13)=-abb32(12)*spak2k4**2
      abb32(14)=-mB*abb32(13)
      abb32(15)=abb32(4)*spbk4k3
      abb32(16)=abb32(15)*spbl6k1
      abb32(17)=abb32(16)*abb32(14)
      abb32(18)=abb32(5)*spbk4k3
      abb32(19)=abb32(18)*spbl5k1
      abb32(20)=abb32(14)*abb32(19)
      abb32(17)=abb32(17)+abb32(20)
      abb32(21)=2.0_ki*abb32(17)
      abb32(22)=abb32(18)*abb32(7)
      abb32(23)=spbl5k2*spbl6k1*abb32(22)
      abb32(24)=abb32(15)*abb32(8)
      abb32(25)=spbl6k2*spbl5k1*abb32(24)
      abb32(23)=abb32(25)+abb32(23)
      abb32(23)=abb32(6)*abb32(23)
      abb32(22)=-abb32(24)+abb32(22)
      abb32(24)=abb32(6)*spbl6l5
      abb32(22)=abb32(24)*spbk2k1*abb32(22)
      abb32(25)=abb32(16)+abb32(19)
      abb32(26)=abb32(6)*abb32(25)
      abb32(22)=2.0_ki*abb32(26)+abb32(22)+abb32(23)
      abb32(23)=spak2k4*mB
      abb32(22)=-4.0_ki*abb32(22)*abb32(12)*abb32(23)**2
      abb32(20)=-4.0_ki*abb32(20)
      abb32(26)=-8.0_ki*abb32(17)
      abb32(10)=-abb32(11)*abb32(10)
      abb32(11)=-spak2k4*abb32(10)
      abb32(27)=spbk3k1*abb32(9)
      abb32(28)=abb32(24)*abb32(27)
      abb32(29)=abb32(11)*abb32(28)
      abb32(29)=16.0_ki*abb32(29)
      abb32(13)=-abb32(13)*mB**3
      abb32(30)=abb32(4)*abb32(13)*abb32(18)
      abb32(31)=abb32(30)*abb32(7)
      abb32(32)=spbk4k3*abb32(8)*abb32(4)**2
      abb32(33)=abb32(13)*abb32(32)
      abb32(31)=-abb32(31)-2.0_ki*abb32(33)
      abb32(31)=4.0_ki*spbl6k1*abb32(31)
      abb32(17)=-4.0_ki*abb32(17)
      abb32(14)=4.0_ki*abb32(14)*abb32(15)*spbl5k1
      abb32(33)=spbl5k1*spbk4k3
      abb32(16)=spak2l6*abb32(16)
      abb32(16)=-abb32(33)-2.0_ki*abb32(16)
      abb32(33)=-abb32(23)*abb32(12)
      abb32(16)=2.0_ki*abb32(33)*abb32(16)
      abb32(28)=abb32(10)*abb32(28)
      abb32(34)=-spak2k3*abb32(28)
      abb32(11)=abb32(11)*abb32(9)
      abb32(35)=spbk4k1*abb32(24)*abb32(11)
      abb32(34)=abb32(34)+abb32(35)
      abb32(34)=8.0_ki*abb32(34)
      abb32(12)=abb32(12)*spak2k4
      abb32(12)=3.0_ki*abb32(12)
      abb32(11)=-abb32(12)-4.0_ki*abb32(11)
      abb32(11)=abb32(24)*abb32(11)
      abb32(35)=abb32(33)*spbl6l5
      abb32(11)=abb32(35)+abb32(11)
      abb32(11)=spbk4k3*abb32(11)
      abb32(36)=spak1k2*abb32(28)
      abb32(11)=-4.0_ki*abb32(36)+abb32(11)
      abb32(11)=2.0_ki*abb32(11)
      abb32(36)=-abb32(27)*mB*abb32(10)
      abb32(37)=abb32(36)*spak1k4
      abb32(38)=abb32(33)*spbk3k2
      abb32(37)=abb32(37)+abb32(38)
      abb32(39)=-spbl6k1*abb32(37)
      abb32(40)=abb32(36)*spak3k4
      abb32(41)=abb32(40)*spbl6k3
      abb32(39)=abb32(41)+abb32(39)
      abb32(39)=spak2l6*abb32(4)*abb32(39)
      abb32(42)=abb32(33)*spak4l5
      abb32(15)=-abb32(15)*abb32(42)
      abb32(15)=abb32(15)-abb32(37)
      abb32(15)=spbl5k1*abb32(15)
      abb32(25)=spak4l6*abb32(33)*abb32(25)
      abb32(40)=abb32(40)*spbl5k3
      abb32(43)=abb32(30)*spbk2k1
      abb32(44)=abb32(7)*abb32(43)
      abb32(45)=abb32(13)*spbk2k1
      abb32(32)=abb32(45)*abb32(32)
      abb32(15)=abb32(40)+abb32(25)+abb32(32)+2.0_ki*abb32(44)+abb32(15)+abb32(&
      &39)
      abb32(15)=2.0_ki*abb32(15)
      abb32(10)=-abb32(23)*abb32(10)
      abb32(23)=8.0_ki*abb32(10)
      abb32(23)=abb32(23)*abb32(27)
      abb32(25)=abb32(4)*abb32(23)
      abb32(27)=abb32(36)*abb32(4)
      abb32(32)=-spak2k3*abb32(27)
      abb32(10)=abb32(10)*abb32(9)
      abb32(39)=abb32(10)*spbk4k1
      abb32(44)=-abb32(4)*abb32(39)
      abb32(32)=abb32(32)+abb32(44)
      abb32(32)=4.0_ki*abb32(32)
      abb32(10)=abb32(10)-abb32(33)
      abb32(10)=spbk4k3*abb32(10)
      abb32(44)=abb32(4)*abb32(10)
      abb32(27)=-spak1k2*abb32(27)
      abb32(27)=abb32(44)+abb32(27)
      abb32(27)=4.0_ki*abb32(27)
      abb32(44)=spbl5k1*abb32(37)
      abb32(40)=-abb32(40)+abb32(44)
      abb32(40)=spak2l5*abb32(5)*abb32(40)
      abb32(18)=abb32(18)*spak4l6
      abb32(33)=abb32(33)*abb32(18)
      abb32(33)=abb32(33)+abb32(37)
      abb32(33)=spbl6k1*abb32(33)
      abb32(37)=abb32(7)*spbk4k3*abb32(5)**2
      abb32(44)=abb32(45)*abb32(37)
      abb32(43)=-abb32(8)*abb32(43)
      abb32(19)=abb32(19)*abb32(42)
      abb32(19)=-abb32(41)+abb32(19)+abb32(43)+abb32(44)+abb32(33)+abb32(40)
      abb32(19)=2.0_ki*abb32(19)
      abb32(23)=abb32(5)*abb32(23)
      abb32(33)=abb32(36)*abb32(5)
      abb32(40)=-spak2k3*abb32(33)
      abb32(39)=-abb32(5)*abb32(39)
      abb32(39)=abb32(40)+abb32(39)
      abb32(39)=4.0_ki*abb32(39)
      abb32(10)=abb32(5)*abb32(10)
      abb32(33)=-spak1k2*abb32(33)
      abb32(10)=abb32(10)+abb32(33)
      abb32(10)=4.0_ki*abb32(10)
      abb32(33)=abb32(36)*spbl6l5
      abb32(28)=abb32(33)-abb32(28)
      abb32(33)=2.0_ki*spak3k4*abb32(28)
      abb32(18)=abb32(35)*abb32(18)
      abb32(13)=spbl5k2*abb32(13)*abb32(37)
      abb32(13)=abb32(18)-abb32(13)
      abb32(12)=-abb32(24)*abb32(12)
      abb32(12)=-abb32(35)+abb32(12)
      abb32(12)=spbk3k2*abb32(12)
      abb32(18)=-spak1k4*abb32(28)
      abb32(12)=abb32(18)+abb32(30)+abb32(12)-2.0_ki*abb32(13)
      abb32(12)=2.0_ki*abb32(12)
      abb32(13)=4.0_ki*abb32(38)
      abb32(18)=-abb32(4)*abb32(13)
      abb32(13)=-abb32(5)*abb32(13)
      R2d32=abb32(21)
      rat2 = rat2 + R2d32
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='32' value='", &
          & R2d32, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd32h3
