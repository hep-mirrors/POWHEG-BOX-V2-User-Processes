module     p5_csbar_epnebbbar_abbrevd2h2
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(42), public :: abb2
   complex(ki), public :: R2d2
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
      abb2(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb2(2)=NC**(-1)
      abb2(3)=es56**(-1)
      abb2(4)=spbl5k2**(-1)
      abb2(5)=spak2l6**(-1)
      abb2(6)=spbl6k3*spak3k4
      abb2(7)=spbl6k1*spak1k4
      abb2(6)=abb2(6)-abb2(7)
      abb2(6)=abb2(6)*spak2l5
      abb2(7)=abb2(2)*c1
      abb2(7)=c2-abb2(7)
      abb2(8)=gW*TR
      abb2(7)=abb2(7)*abb2(8)**2*i_*abb2(3)*CVSC
      abb2(8)=-spbk3k1*abb2(7)
      abb2(9)=abb2(1)*abb2(2)
      abb2(10)=4.0_ki*abb2(9)
      abb2(11)=-abb2(10)*abb2(8)*es12*abb2(6)
      abb2(12)=8.0_ki*abb2(9)
      abb2(13)=abb2(8)*abb2(12)
      abb2(14)=abb2(5)*abb2(4)*mB**2
      abb2(15)=abb2(14)*spak2k4
      abb2(16)=abb2(15)*es12
      abb2(17)=spbl6k1*spak1k2
      abb2(18)=abb2(17)*spak4l5
      abb2(16)=abb2(16)+abb2(18)
      abb2(19)=abb2(16)*abb2(13)
      abb2(20)=spak1k2*spak3k4
      abb2(21)=abb2(14)*spbk3k1
      abb2(22)=abb2(20)*abb2(21)
      abb2(6)=abb2(6)+abb2(22)
      abb2(6)=abb2(6)*abb2(13)
      abb2(22)=-abb2(15)*abb2(8)
      abb2(23)=16.0_ki*abb2(9)
      abb2(24)=abb2(22)*abb2(23)
      abb2(25)=abb2(16)*spbk3k1
      abb2(26)=spak2k4*spbk3k2
      abb2(27)=spak2l5*spbl6k1
      abb2(28)=abb2(26)*abb2(27)
      abb2(25)=abb2(25)+abb2(28)
      abb2(28)=abb2(7)*abb2(12)
      abb2(25)=-abb2(25)*abb2(28)
      abb2(9)=32.0_ki*abb2(22)*abb2(9)
      abb2(22)=spbl6k1*spak4l5
      abb2(29)=abb2(15)*spbk2k1
      abb2(22)=abb2(22)+abb2(29)
      abb2(22)=abb2(22)*spbk4k3
      abb2(29)=spak2l5*spbl6k3
      abb2(30)=abb2(29)*spbk2k1
      abb2(22)=abb2(22)-abb2(30)
      abb2(22)=abb2(22)*spak2k4
      abb2(30)=spak1l5*spak2k4*spbl6k1
      abb2(18)=abb2(30)+abb2(18)
      abb2(18)=abb2(18)*spbk3k1
      abb2(18)=abb2(22)+abb2(18)
      abb2(22)=abb2(7)*abb2(10)
      abb2(18)=abb2(18)*abb2(22)
      abb2(20)=abb2(20)*spbk3k1**2*abb2(22)
      abb2(30)=abb2(8)*spak2k4
      abb2(31)=abb2(30)*abb2(12)
      abb2(30)=abb2(30)*abb2(10)
      abb2(32)=spak2k4*spbl6k3*abb2(7)
      abb2(33)=abb2(32)*abb2(12)
      abb2(32)=abb2(32)*abb2(10)
      abb2(34)=abb2(17)*spak3l5
      abb2(35)=spak2k3*abb2(14)*es12
      abb2(34)=abb2(34)+abb2(35)
      abb2(34)=abb2(34)*spbk3k1
      abb2(35)=abb2(16)*spbk4k1
      abb2(36)=abb2(27)*es12
      abb2(34)=abb2(34)-abb2(36)+abb2(35)
      abb2(34)=-abb2(34)*abb2(22)
      abb2(35)=abb2(15)*spbk4k1
      abb2(21)=abb2(21)*spak2k3
      abb2(21)=-abb2(27)+abb2(35)+abb2(21)
      abb2(21)=abb2(21)*abb2(28)
      abb2(27)=-abb2(27)*abb2(28)
      abb2(35)=spbl6k3*spak2k3
      abb2(36)=spak2k4*spbl6k4
      abb2(35)=abb2(17)+abb2(35)+abb2(36)
      abb2(35)=-abb2(35)*abb2(22)
      abb2(36)=es12-es23
      abb2(36)=abb2(36)*spbl6k3
      abb2(37)=abb2(17)*spbk3k2
      abb2(36)=abb2(36)+abb2(37)
      abb2(36)=abb2(36)*spak2l5
      abb2(17)=abb2(17)*spak1l5
      abb2(37)=abb2(14)*spak1k2
      abb2(38)=abb2(37)*es12
      abb2(17)=abb2(17)-abb2(38)
      abb2(17)=abb2(17)*spbk3k1
      abb2(16)=abb2(16)*spbk4k3
      abb2(16)=-abb2(36)+abb2(17)+abb2(16)
      abb2(16)=abb2(16)*abb2(22)
      abb2(17)=-abb2(29)*abb2(7)
      abb2(29)=abb2(17)*abb2(12)
      abb2(23)=-abb2(23)*abb2(37)*abb2(8)
      abb2(17)=abb2(17)*abb2(10)
      abb2(13)=spak1k2*abb2(13)
      abb2(36)=spak2l5*spbl6k4*abb2(22)
      abb2(26)=-abb2(26)*abb2(17)
      abb2(37)=-spak4l5*abb2(8)
      abb2(38)=abb2(37)*abb2(12)
      abb2(37)=-abb2(37)*abb2(10)
      abb2(39)=spak4l5*spbk4k1
      abb2(40)=spbk3k1*spak3l5
      abb2(39)=abb2(39)+abb2(40)
      abb2(39)=abb2(39)*abb2(22)
      abb2(40)=abb2(12)*abb2(14)
      abb2(41)=abb2(8)*spak3k4
      abb2(42)=-abb2(41)*abb2(40)
      abb2(41)=abb2(41)*abb2(10)
      abb2(7)=-abb2(7)*abb2(15)*spbk3k2
      abb2(12)=abb2(7)*abb2(12)
      abb2(8)=abb2(8)*spak1k4
      abb2(15)=abb2(8)*abb2(40)
      abb2(7)=-abb2(7)*abb2(10)
      abb2(8)=-abb2(8)*abb2(10)
      abb2(10)=es234+es12-es34
      abb2(10)=abb2(10)*abb2(14)
      abb2(40)=spak2l5*spbl6k2
      abb2(10)=abb2(10)+abb2(40)
      abb2(10)=abb2(10)*abb2(22)
      abb2(14)=-abb2(14)*abb2(28)
      R2d2=0.0_ki
      rat2 = rat2 + R2d2
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='2' value='", &
          & R2d2, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd2h2
