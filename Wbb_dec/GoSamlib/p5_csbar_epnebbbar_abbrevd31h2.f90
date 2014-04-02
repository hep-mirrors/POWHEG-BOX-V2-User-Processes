module     p5_csbar_epnebbbar_abbrevd31h2
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(42), public :: abb31
   complex(ki), public :: R2d31
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
      abb31(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb31(2)=NC**(-1)
      abb31(3)=es234**(-1)
      abb31(4)=spak2l6**(-1)
      abb31(5)=spbl6k2**(-1)
      abb31(6)=spbl5k2**(-1)
      abb31(7)=sqrt(mB**2)
      abb31(8)=TR*gW
      abb31(8)=abb31(8)**2*i_*CVSC*abb31(3)*abb31(1)
      abb31(9)=abb31(8)*spak2k4
      abb31(10)=2.0_ki*c2
      abb31(11)=abb31(2)*mB*abb31(9)*abb31(10)
      abb31(12)=spbk3k2*abb31(6)
      abb31(13)=abb31(11)*abb31(12)
      abb31(14)=abb31(2)**2
      abb31(14)=abb31(14)+1.0_ki
      abb31(9)=abb31(9)*abb31(14)
      abb31(14)=mB*abb31(9)
      abb31(15)=spbk3k2*c1
      abb31(16)=abb31(15)*abb31(6)
      abb31(17)=abb31(14)*abb31(16)
      abb31(13)=abb31(13)-abb31(17)
      abb31(13)=abb31(13)*abb31(7)
      abb31(17)=mB**2
      abb31(18)=abb31(8)*abb31(17)
      abb31(19)=abb31(2)*spak2k4
      abb31(20)=abb31(18)*abb31(10)*abb31(19)
      abb31(21)=abb31(12)*abb31(20)
      abb31(17)=abb31(17)*abb31(9)
      abb31(22)=abb31(17)*abb31(16)
      abb31(13)=abb31(13)-abb31(21)+abb31(22)
      abb31(21)=spbl6k1*abb31(13)
      abb31(22)=abb31(19)**2
      abb31(23)=mB**4
      abb31(24)=abb31(22)*abb31(23)
      abb31(25)=spak2k4**2
      abb31(23)=abb31(23)*abb31(25)
      abb31(24)=abb31(23)+abb31(24)
      abb31(26)=abb31(6)*spbk4k3
      abb31(27)=abb31(26)*spbk2k1
      abb31(28)=abb31(27)*c1
      abb31(24)=abb31(28)*abb31(8)*abb31(24)
      abb31(8)=abb31(10)*abb31(8)
      abb31(29)=abb31(27)*abb31(2)
      abb31(23)=abb31(8)*abb31(29)*abb31(23)
      abb31(23)=abb31(24)-abb31(23)
      abb31(23)=abb31(23)*abb31(4)**2
      abb31(24)=abb31(20)*abb31(4)
      abb31(30)=abb31(24)*spbk3k2
      abb31(31)=abb31(17)*abb31(4)
      abb31(32)=abb31(31)*abb31(15)
      abb31(30)=abb31(30)-abb31(32)
      abb31(32)=abb31(30)*spak2l5
      abb31(33)=spbl6k1*abb31(32)
      abb31(33)=abb31(33)-abb31(23)
      abb31(33)=abb31(5)*abb31(33)
      abb31(34)=abb31(24)*abb31(26)
      abb31(35)=-spbl6k1*abb31(34)
      abb31(36)=abb31(31)*abb31(26)
      abb31(37)=spbl6k1*c1
      abb31(38)=abb31(37)*abb31(36)
      abb31(35)=abb31(38)+abb31(35)
      abb31(35)=spak4l6*abb31(35)
      abb31(21)=abb31(35)+abb31(33)+abb31(21)
      abb31(21)=es12*abb31(21)
      abb31(22)=abb31(22)*abb31(18)
      abb31(18)=abb31(25)*abb31(18)
      abb31(22)=abb31(22)+abb31(18)
      abb31(25)=abb31(4)*spbk4k3
      abb31(33)=abb31(25)*spbl6k1
      abb31(35)=spbk2k1*c1
      abb31(38)=abb31(33)*abb31(35)
      abb31(39)=abb31(22)*abb31(38)
      abb31(10)=abb31(18)*abb31(10)
      abb31(18)=-abb31(2)*abb31(10)*abb31(33)*spbk2k1
      abb31(18)=abb31(39)+abb31(18)
      abb31(18)=abb31(5)*abb31(18)
      abb31(39)=abb31(9)*spbk4k3
      abb31(40)=abb31(39)*c1
      abb31(8)=abb31(8)*abb31(19)
      abb31(19)=abb31(8)*spbk4k3
      abb31(19)=abb31(40)-abb31(19)
      abb31(40)=spbl6k1**2
      abb31(19)=abb31(19)*abb31(40)
      abb31(41)=-spak4l6*abb31(19)
      abb31(42)=abb31(8)*spbk3k2
      abb31(9)=abb31(9)*abb31(15)
      abb31(42)=abb31(42)-abb31(9)
      abb31(40)=abb31(42)*abb31(40)
      abb31(42)=spak2l6*abb31(40)
      abb31(18)=abb31(42)+abb31(18)+abb31(41)
      abb31(18)=spak1l5*abb31(18)
      abb31(19)=spak1k4*abb31(19)
      abb31(40)=-spak1k2*abb31(40)
      abb31(19)=abb31(40)+abb31(19)
      abb31(19)=spal5l6*abb31(19)
      abb31(38)=-abb31(17)*abb31(38)
      abb31(40)=abb31(20)*spbk2k1
      abb31(33)=abb31(33)*abb31(40)
      abb31(33)=abb31(38)+abb31(33)
      abb31(33)=abb31(5)*spak2l5*abb31(33)
      abb31(38)=-abb31(14)*abb31(37)
      abb31(41)=spbl6k1*abb31(11)
      abb31(38)=abb31(38)+abb31(41)
      abb31(38)=abb31(7)*abb31(27)*abb31(38)
      abb31(33)=abb31(38)+abb31(33)
      abb31(33)=spak1k4*abb31(33)
      abb31(18)=abb31(33)+abb31(19)+abb31(18)+abb31(21)
      abb31(18)=4.0_ki*abb31(18)
      abb31(8)=abb31(8)*spbl6k1
      abb31(19)=abb31(8)*spbk4k3
      abb31(21)=abb31(39)*abb31(37)
      abb31(19)=abb31(19)-abb31(21)
      abb31(19)=abb31(19)*spak4l5
      abb31(8)=abb31(8)*spbk3k2
      abb31(9)=abb31(9)*spbl6k1
      abb31(8)=abb31(8)-abb31(9)
      abb31(8)=abb31(8)*spak2l5
      abb31(8)=abb31(19)+abb31(8)
      abb31(9)=8.0_ki*abb31(8)
      abb31(19)=-8.0_ki*abb31(5)*abb31(23)
      abb31(21)=-abb31(22)*abb31(28)
      abb31(10)=abb31(29)*abb31(10)
      abb31(10)=abb31(21)+abb31(10)
      abb31(10)=abb31(4)*abb31(10)
      abb31(8)=abb31(10)+abb31(8)
      abb31(8)=8.0_ki*abb31(8)
      abb31(10)=-abb31(14)*abb31(28)
      abb31(21)=abb31(27)*abb31(11)
      abb31(10)=abb31(10)+abb31(21)
      abb31(21)=4.0_ki*abb31(7)
      abb31(10)=abb31(10)*abb31(21)
      abb31(22)=abb31(14)*c1
      abb31(22)=abb31(22)-abb31(11)
      abb31(21)=-spbl6k2*abb31(21)*abb31(26)*abb31(22)
      abb31(23)=abb31(36)*c1
      abb31(23)=abb31(23)-abb31(34)
      abb31(26)=8.0_ki*abb31(23)
      abb31(29)=spbk2k1*abb31(13)
      abb31(32)=spbk2k1*abb31(32)
      abb31(33)=-abb31(17)*abb31(35)
      abb31(33)=abb31(33)+abb31(40)
      abb31(33)=spak4l5*abb31(25)*abb31(33)
      abb31(32)=abb31(33)+abb31(32)
      abb31(32)=abb31(5)*abb31(32)
      abb31(27)=abb31(24)*abb31(27)
      abb31(28)=abb31(31)*abb31(28)
      abb31(27)=abb31(27)-abb31(28)
      abb31(28)=-spak4l6*abb31(27)
      abb31(28)=abb31(28)+abb31(32)+abb31(29)
      abb31(28)=4.0_ki*abb31(28)
      abb31(14)=abb31(14)*abb31(15)
      abb31(11)=-spbk3k2*abb31(11)
      abb31(11)=abb31(14)+abb31(11)
      abb31(11)=abb31(7)*abb31(4)*abb31(11)
      abb31(11)=abb31(11)+abb31(30)
      abb31(11)=spak2l5*abb31(11)
      abb31(14)=abb31(7)*abb31(22)
      abb31(15)=-c1*abb31(17)
      abb31(14)=abb31(14)+abb31(15)+abb31(20)
      abb31(14)=spak4l5*abb31(25)*abb31(14)
      abb31(15)=spak4l6*abb31(23)
      abb31(13)=abb31(15)+abb31(13)
      abb31(13)=spbl6k2*abb31(13)
      abb31(12)=abb31(24)*abb31(12)
      abb31(15)=abb31(31)*abb31(16)
      abb31(12)=abb31(12)-abb31(15)
      abb31(15)=-es12*abb31(12)
      abb31(16)=-spak1k4*abb31(27)
      abb31(11)=abb31(16)+abb31(13)+abb31(15)+abb31(11)+abb31(14)
      abb31(11)=4.0_ki*abb31(11)
      abb31(12)=-8.0_ki*abb31(12)
      R2d31=0.0_ki
      rat2 = rat2 + R2d31
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='31' value='", &
          & R2d31, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd31h2
