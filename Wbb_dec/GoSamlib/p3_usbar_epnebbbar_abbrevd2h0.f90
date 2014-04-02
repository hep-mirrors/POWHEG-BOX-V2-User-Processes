module     p3_usbar_epnebbbar_abbrevd2h0
   use p3_usbar_epnebbbar_config, only: ki
   use p3_usbar_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(41), public :: abb2
   complex(ki), public :: R2d2
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
      abb2(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb2(2)=NC**(-1)
      abb2(3)=es56**(-1)
      abb2(4)=spbl5k2**(-1)
      abb2(5)=spbl6k2**(-1)
      abb2(6)=abb2(2)*c2
      abb2(7)=c1*abb2(2)**2
      abb2(6)=abb2(6)-abb2(7)
      abb2(7)=TR*gW
      abb2(6)=abb2(6)*abb2(7)**2*CVSU*i_*mB*abb2(3)*abb2(1)
      abb2(7)=abb2(4)*abb2(6)
      abb2(8)=abb2(7)*spak2l6
      abb2(6)=abb2(5)*abb2(6)
      abb2(9)=abb2(6)*spak2l5
      abb2(8)=abb2(8)+abb2(9)
      abb2(9)=spbk3k2*abb2(8)
      abb2(10)=abb2(9)*spak3k4
      abb2(11)=spak2l6*spbk2k1
      abb2(12)=abb2(7)*abb2(11)
      abb2(13)=spak2l5*spbk2k1
      abb2(14)=abb2(6)*abb2(13)
      abb2(12)=abb2(12)+abb2(14)
      abb2(14)=abb2(12)*spak1k4
      abb2(10)=abb2(10)+abb2(14)
      abb2(14)=es12*spbk3k1
      abb2(15)=4.0_ki*abb2(14)*abb2(10)
      abb2(16)=abb2(14)*spak4l5
      abb2(17)=abb2(6)*abb2(16)
      abb2(18)=abb2(14)*spak4l6
      abb2(19)=abb2(18)*abb2(7)
      abb2(17)=abb2(17)+abb2(19)
      abb2(17)=8.0_ki*abb2(17)
      abb2(10)=-8.0_ki*spbk3k1*abb2(10)
      abb2(19)=abb2(7)*spak4l6
      abb2(20)=abb2(6)*spak4l5
      abb2(19)=abb2(19)+abb2(20)
      abb2(20)=spbk3k1*abb2(19)
      abb2(21)=16.0_ki*abb2(20)
      abb2(22)=spak2k4*spbk3k2
      abb2(23)=abb2(11)*abb2(22)
      abb2(18)=abb2(23)+abb2(18)
      abb2(23)=abb2(7)*abb2(18)
      abb2(24)=abb2(13)*abb2(22)
      abb2(16)=abb2(24)+abb2(16)
      abb2(24)=abb2(6)*abb2(16)
      abb2(23)=abb2(24)+abb2(23)
      abb2(23)=8.0_ki*abb2(23)
      abb2(24)=spak2k4*spbk3k1
      abb2(25)=abb2(24)*spbk2k1
      abb2(26)=-spak1l6*abb2(25)
      abb2(18)=abb2(26)-abb2(18)
      abb2(18)=abb2(7)*abb2(18)
      abb2(25)=-spak1l5*abb2(25)
      abb2(16)=abb2(25)-abb2(16)
      abb2(16)=abb2(6)*abb2(16)
      abb2(25)=-spbk4k3*spbk2k1*spak2k4*abb2(19)
      abb2(16)=abb2(25)+abb2(16)+abb2(18)
      abb2(16)=4.0_ki*abb2(16)
      abb2(18)=8.0_ki*abb2(20)
      abb2(20)=4.0_ki*abb2(7)
      abb2(25)=spak3k4*spak1k2*spbk3k1**2
      abb2(26)=-abb2(20)*abb2(25)
      abb2(27)=8.0_ki*abb2(7)
      abb2(27)=abb2(24)*abb2(27)
      abb2(28)=abb2(24)*abb2(20)
      abb2(29)=8.0_ki*abb2(22)
      abb2(30)=abb2(7)*abb2(29)
      abb2(31)=abb2(22)*abb2(20)
      abb2(32)=4.0_ki*abb2(6)
      abb2(25)=-abb2(32)*abb2(25)
      abb2(33)=8.0_ki*abb2(6)
      abb2(33)=abb2(24)*abb2(33)
      abb2(24)=abb2(24)*abb2(32)
      abb2(29)=abb2(6)*abb2(29)
      abb2(22)=abb2(22)*abb2(32)
      abb2(34)=-es12*abb2(11)
      abb2(35)=spak3l6*abb2(14)
      abb2(34)=abb2(35)+abb2(34)
      abb2(34)=abb2(7)*abb2(34)
      abb2(35)=-es12*abb2(13)
      abb2(36)=spak3l5*abb2(14)
      abb2(35)=abb2(36)+abb2(35)
      abb2(35)=abb2(6)*abb2(35)
      abb2(36)=abb2(19)*es12
      abb2(37)=spbk4k1*abb2(36)
      abb2(34)=abb2(37)+abb2(35)+abb2(34)
      abb2(34)=4.0_ki*abb2(34)
      abb2(35)=-spak3l6*spbk3k1
      abb2(11)=abb2(35)+abb2(11)
      abb2(11)=abb2(7)*abb2(11)
      abb2(35)=-spak3l5*spbk3k1
      abb2(13)=abb2(35)+abb2(13)
      abb2(13)=abb2(6)*abb2(13)
      abb2(19)=-spbk4k1*abb2(19)
      abb2(11)=abb2(19)+abb2(13)+abb2(11)
      abb2(11)=8.0_ki*abb2(11)
      abb2(12)=8.0_ki*abb2(12)
      abb2(13)=es12+es234-es34
      abb2(13)=4.0_ki*abb2(13)
      abb2(19)=abb2(7)*abb2(13)
      abb2(13)=abb2(6)*abb2(13)
      abb2(35)=-spak1l6*abb2(7)
      abb2(37)=-spak1l5*abb2(6)
      abb2(35)=abb2(37)+abb2(35)
      abb2(14)=abb2(14)*abb2(35)
      abb2(35)=-spbk4k3*abb2(36)
      abb2(36)=es23*abb2(9)
      abb2(14)=abb2(36)+abb2(35)+abb2(14)
      abb2(14)=4.0_ki*abb2(14)
      abb2(35)=8.0_ki*abb2(9)
      abb2(9)=4.0_ki*abb2(9)
      abb2(36)=spak1k2*spbk3k1
      abb2(36)=8.0_ki*abb2(36)
      abb2(37)=abb2(7)*abb2(36)
      abb2(36)=abb2(6)*abb2(36)
      abb2(8)=4.0_ki*abb2(8)
      abb2(38)=spbk4k2*abb2(8)
      abb2(8)=spak2k4*spbk3k2**2*abb2(8)
      abb2(39)=4.0_ki*spbk3k1
      abb2(40)=abb2(39)*spak3k4
      abb2(41)=abb2(7)*abb2(40)
      abb2(40)=abb2(6)*abb2(40)
      abb2(39)=abb2(39)*spak1k4
      abb2(7)=-abb2(7)*abb2(39)
      abb2(6)=-abb2(6)*abb2(39)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p3_usbar_epnebbbar_abbrevd2h0
