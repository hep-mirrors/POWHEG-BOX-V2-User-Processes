module     p3_usbar_epnebbbar_abbrevd26h2
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(43), public :: abb26
   complex(ki), public :: R2d26
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
      abb26(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb26(2)=sqrt(mB**2)
      abb26(3)=NC**(-1)
      abb26(4)=spbl5k2**(-1)
      abb26(5)=spak2l6**(-1)
      abb26(6)=spbl6k2**(-1)
      abb26(7)=spak2l5**(-1)
      abb26(8)=TR*gW
      abb26(8)=abb26(1)*abb26(8)**2
      abb26(9)=abb26(8)*c1*abb26(3)**2
      abb26(10)=i_*CVSU
      abb26(11)=abb26(9)*abb26(10)*spak2k4
      abb26(12)=abb26(4)*abb26(11)
      abb26(8)=abb26(10)*c2*abb26(8)
      abb26(13)=abb26(8)*spak2k4
      abb26(14)=abb26(13)*abb26(4)
      abb26(15)=abb26(14)*NC
      abb26(16)=2.0_ki*abb26(3)
      abb26(14)=abb26(14)*abb26(16)
      abb26(12)=-abb26(14)+abb26(12)+abb26(15)
      abb26(14)=-abb26(5)*abb26(12)*mB**3
      abb26(15)=-mB*abb26(12)
      abb26(17)=abb26(15)*spbl6k2
      abb26(14)=abb26(14)-abb26(17)
      abb26(17)=spak2l5*spbl5k3
      abb26(18)=spbk2k1*abb26(2)
      abb26(19)=-abb26(17)*abb26(18)*abb26(14)
      abb26(20)=abb26(14)*spbk3k1*abb26(2)
      abb26(21)=es12*abb26(20)
      abb26(19)=abb26(19)+abb26(21)
      abb26(19)=4.0_ki*abb26(19)
      abb26(21)=abb26(18)*spbl6k3
      abb26(15)=abb26(21)*abb26(15)
      abb26(22)=8.0_ki*abb26(15)
      abb26(23)=abb26(13)*NC
      abb26(13)=abb26(16)*abb26(13)
      abb26(11)=-abb26(13)+abb26(11)+abb26(23)
      abb26(13)=mB**2
      abb26(23)=-abb26(13)*abb26(11)
      abb26(24)=abb26(6)*abb26(5)
      abb26(25)=abb26(23)*abb26(24)
      abb26(26)=spbk3k1*abb26(25)
      abb26(27)=abb26(11)*spbk3k1
      abb26(26)=abb26(26)+abb26(27)
      abb26(28)=abb26(26)*spak1l5
      abb26(24)=abb26(24)*spbk3k2
      abb26(29)=abb26(24)*abb26(12)*mB**4
      abb26(12)=abb26(13)*abb26(12)
      abb26(30)=abb26(12)*spbk3k2
      abb26(28)=abb26(28)+abb26(29)-abb26(30)
      abb26(29)=-spbl6k1*abb26(28)
      abb26(9)=abb26(9)*abb26(10)
      abb26(10)=-NC+abb26(16)
      abb26(8)=abb26(8)*abb26(10)
      abb26(8)=abb26(9)-abb26(8)
      abb26(9)=-abb26(4)*abb26(8)
      abb26(10)=-mB*abb26(9)
      abb26(16)=abb26(10)*abb26(2)
      abb26(30)=spbl6k3*spak4l5
      abb26(31)=-spbl5k1*abb26(16)*abb26(30)
      abb26(20)=abb26(31)-abb26(20)+abb26(29)
      abb26(20)=8.0_ki*abb26(20)
      abb26(15)=4.0_ki*abb26(15)
      abb26(29)=8.0_ki*abb26(26)
      abb26(31)=abb26(11)*spbl6k3
      abb26(32)=8.0_ki*abb26(31)
      abb26(25)=spbl6k3*abb26(25)
      abb26(25)=abb26(31)+abb26(25)
      abb26(25)=8.0_ki*abb26(25)
      abb26(31)=-4.0_ki*spbl5k3*abb26(11)
      abb26(33)=-4.0_ki*abb26(8)
      abb26(34)=spak2l6*spbl6k3
      abb26(35)=spak1k2*spbk3k1
      abb26(17)=abb26(35)-abb26(17)+abb26(34)
      abb26(17)=abb26(17)*abb26(33)
      abb26(34)=es12*spbl6k1*abb26(16)
      abb26(18)=spbl6l5*spak2l5*abb26(10)*abb26(18)
      abb26(18)=abb26(34)+abb26(18)
      abb26(18)=4.0_ki*abb26(18)
      abb26(9)=-abb26(13)*abb26(9)
      abb26(13)=-abb26(16)+abb26(9)
      abb26(34)=8.0_ki*spbl6k1
      abb26(13)=abb26(13)*abb26(34)
      abb26(28)=4.0_ki*spbk2k1*abb26(28)
      abb26(35)=-abb26(8)*spak4l5
      abb26(36)=8.0_ki*abb26(35)
      abb26(37)=abb26(36)*spbk3k1
      abb26(38)=spak4l5*abb26(9)*abb26(7)
      abb26(39)=8.0_ki*spbk3k1*abb26(38)
      abb26(40)=4.0_ki*abb26(35)
      abb26(41)=-spbk3k1*abb26(40)
      abb26(12)=abb26(12)*abb26(7)
      abb26(42)=abb26(12)*spbk2k1
      abb26(43)=abb26(35)*spbl5k1
      abb26(42)=abb26(43)+abb26(42)
      abb26(42)=4.0_ki*abb26(42)
      abb26(26)=-4.0_ki*abb26(26)
      abb26(11)=abb26(12)+abb26(11)
      abb26(11)=spbk3k2*abb26(11)
      abb26(23)=abb26(23)*abb26(24)
      abb26(24)=spak4l6*spbl6k3*abb26(8)
      abb26(11)=abb26(24)+abb26(23)+abb26(11)
      abb26(11)=4.0_ki*abb26(11)
      abb26(9)=-4.0_ki*spbk2k1*abb26(9)
      abb26(23)=abb26(36)*spbl6k1
      abb26(24)=-abb26(34)*abb26(38)
      abb26(34)=spbl6k1*abb26(40)
      abb26(12)=-spbl6k2*abb26(12)
      abb26(35)=-spbl6l5*abb26(35)
      abb26(36)=-abb26(8)*spbl6k1
      abb26(38)=-spak1k4*abb26(36)
      abb26(12)=abb26(38)+abb26(12)+abb26(35)
      abb26(12)=4.0_ki*abb26(12)
      abb26(14)=spbk3k2*abb26(14)
      abb26(8)=abb26(30)*mB*abb26(8)
      abb26(8)=abb26(8)+abb26(14)
      abb26(8)=abb26(2)*abb26(8)
      abb26(10)=-spak1k4*abb26(10)*abb26(21)
      abb26(8)=abb26(10)+abb26(8)
      abb26(8)=4.0_ki*abb26(8)
      abb26(10)=spbl6k2*abb26(16)
      abb26(14)=spak1l5*abb26(36)
      abb26(10)=abb26(10)+abb26(14)
      abb26(10)=4.0_ki*abb26(10)
      abb26(14)=-4.0_ki*abb26(27)
      R2d26=0.0_ki
      rat2 = rat2 + R2d26
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='26' value='", &
          & R2d26, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd26h2
