module     p3_usbar_epnebbbar_abbrevd9h2
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(24), public :: abb9
   complex(ki), public :: R2d9
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
      abb9(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb9(2)=1.0_ki/(es34+es56-es12-es234)
      abb9(3)=NC**(-1)
      abb9(4)=es56**(-1)
      abb9(5)=spbl5k2**(-1)
      abb9(6)=spak2l6**(-1)
      abb9(7)=mB**2
      abb9(8)=abb9(7)*abb9(6)
      abb9(9)=abb9(8)-spbl6k2
      abb9(10)=c1*spak2k4
      abb9(11)=abb9(9)*abb9(10)
      abb9(12)=c1*spbl6l5
      abb9(13)=abb9(12)*spak4l5
      abb9(11)=abb9(11)-abb9(13)
      abb9(11)=abb9(11)*abb9(3)
      abb9(14)=c2*spak2k4
      abb9(15)=abb9(9)*abb9(14)
      abb9(16)=spbl6l5*spak4l5
      abb9(17)=abb9(16)*c2
      abb9(11)=abb9(11)-abb9(15)+abb9(17)
      abb9(11)=abb9(11)*abb9(3)
      abb9(15)=c2*NC
      abb9(17)=abb9(15)*spak2k4
      abb9(17)=abb9(17)-abb9(10)
      abb9(18)=abb9(17)*abb9(9)
      abb9(16)=abb9(16)*abb9(15)
      abb9(11)=abb9(11)-abb9(16)+abb9(13)+abb9(18)
      abb9(13)=spak2l5*spbk3k1
      abb9(11)=abb9(11)*abb9(13)
      abb9(16)=abb9(5)*abb9(7)*spbl6k2
      abb9(17)=abb9(17)*abb9(16)
      abb9(10)=abb9(3)*abb9(10)
      abb9(10)=abb9(10)-abb9(14)
      abb9(10)=abb9(3)*abb9(16)*abb9(10)
      abb9(10)=abb9(17)+abb9(10)
      abb9(10)=abb9(10)*spbk3k1
      abb9(10)=abb9(11)+abb9(10)
      abb9(11)=gW*TR
      abb9(11)=abb9(11)**2*abb9(1)*abb9(2)*abb9(4)*CVSU
      abb9(14)=2.0_ki*i_*abb9(10)*abb9(11)
      abb9(17)=4.0_ki*i_
      abb9(11)=abb9(17)*abb9(11)
      abb9(10)=-abb9(10)*abb9(11)
      abb9(17)=c2*spbl6l5
      abb9(18)=abb9(12)*abb9(3)
      abb9(17)=abb9(17)-abb9(18)
      abb9(17)=abb9(17)*abb9(3)
      abb9(12)=abb9(17)+abb9(12)
      abb9(17)=-spak3k4*abb9(12)
      abb9(18)=abb9(15)*spak3k4
      abb9(19)=spbl6l5*abb9(18)
      abb9(17)=abb9(19)+abb9(17)
      abb9(17)=abb9(17)*abb9(11)*abb9(13)
      abb9(19)=spbl6l5*abb9(15)
      abb9(12)=abb9(19)-abb9(12)
      abb9(12)=spak2l5*abb9(12)*abb9(11)
      abb9(19)=c1*spak3k4
      abb9(18)=abb9(19)-abb9(18)
      abb9(20)=-abb9(18)*abb9(16)
      abb9(21)=spbl6k2*c1
      abb9(22)=abb9(21)*abb9(3)
      abb9(23)=spbl6k2*c2
      abb9(22)=abb9(23)-abb9(22)
      abb9(7)=abb9(5)*abb9(3)*abb9(7)*abb9(22)
      abb9(22)=-spak3k4*abb9(7)
      abb9(20)=abb9(20)+abb9(22)
      abb9(20)=spbk3k1*abb9(20)
      abb9(22)=abb9(8)*c2
      abb9(22)=abb9(22)-abb9(23)
      abb9(23)=-spak3k4*abb9(22)
      abb9(19)=abb9(8)*abb9(19)
      abb9(24)=-spak3k4*abb9(21)
      abb9(19)=abb9(24)+abb9(19)
      abb9(19)=abb9(3)*abb9(19)
      abb9(19)=abb9(19)+abb9(23)
      abb9(19)=abb9(3)*abb9(19)
      abb9(18)=-abb9(18)*abb9(9)
      abb9(18)=abb9(19)+abb9(18)
      abb9(13)=abb9(18)*abb9(13)
      abb9(13)=abb9(20)+abb9(13)
      abb9(13)=abb9(13)*abb9(11)
      abb9(8)=c1*abb9(8)
      abb9(8)=-abb9(21)+abb9(8)
      abb9(8)=abb9(3)*abb9(8)
      abb9(8)=abb9(8)-abb9(22)
      abb9(8)=abb9(3)*abb9(8)
      abb9(15)=abb9(15)-c1
      abb9(9)=abb9(15)*abb9(9)
      abb9(8)=abb9(8)+abb9(9)
      abb9(8)=spak2l5*abb9(8)
      abb9(9)=abb9(15)*abb9(16)
      abb9(7)=abb9(8)+abb9(9)-abb9(7)
      abb9(7)=abb9(7)*abb9(11)
      R2d9=abb9(14)
      rat2 = rat2 + R2d9
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='9' value='", &
          & R2d9, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd9h2
