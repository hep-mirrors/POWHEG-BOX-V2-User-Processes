module     p5_csbar_epnebbbar_abbrevd26h3
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh3
   implicit none
   private
   complex(ki), dimension(45), public :: abb26
   complex(ki), public :: R2d26
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
      abb26(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb26(2)=sqrt(mB**2)
      abb26(3)=NC**(-1)
      abb26(4)=spak2l6**(-1)
      abb26(5)=spbl6k2**(-1)
      abb26(6)=spak2l5**(-1)
      abb26(7)=spbl5k2**(-1)
      abb26(8)=i_*CVSC
      abb26(9)=abb26(8)*abb26(1)
      abb26(10)=TR*gW
      abb26(10)=abb26(10)**2
      abb26(11)=abb26(10)*spak2k4*abb26(9)
      abb26(12)=abb26(3)**2
      abb26(13)=c1*abb26(12)*abb26(11)
      abb26(14)=abb26(2)*abb26(13)
      abb26(15)=mB**2
      abb26(16)=abb26(14)*abb26(15)
      abb26(11)=abb26(11)*c2
      abb26(17)=2.0_ki*abb26(3)
      abb26(18)=abb26(11)*abb26(17)
      abb26(15)=abb26(15)*abb26(2)
      abb26(19)=abb26(15)*abb26(18)
      abb26(11)=abb26(11)*NC
      abb26(15)=abb26(15)*abb26(11)
      abb26(15)=abb26(15)+abb26(16)-abb26(19)
      abb26(16)=abb26(15)*abb26(4)
      abb26(11)=abb26(11)-abb26(18)
      abb26(18)=-abb26(2)*abb26(11)
      abb26(14)=abb26(18)-abb26(14)
      abb26(18)=abb26(14)*spbl6k2
      abb26(16)=abb26(16)+abb26(18)
      abb26(19)=spak1k2*spbk3k1
      abb26(20)=abb26(19)*spbl5k1*abb26(16)
      abb26(21)=spbl5k3*abb26(4)
      abb26(22)=abb26(15)*abb26(21)
      abb26(18)=abb26(18)*spbl5k3
      abb26(18)=abb26(18)+abb26(22)
      abb26(22)=spak2l5*spbl5k1
      abb26(23)=-abb26(18)*abb26(22)
      abb26(20)=abb26(23)+abb26(20)
      abb26(20)=4.0_ki*abb26(20)
      abb26(23)=spbl5k1*spbl6k3
      abb26(14)=abb26(14)*abb26(23)
      abb26(24)=8.0_ki*abb26(14)
      abb26(11)=abb26(11)+abb26(13)
      abb26(13)=abb26(11)*mB**3
      abb26(21)=-abb26(13)*abb26(21)
      abb26(25)=-abb26(6)*abb26(13)
      abb26(26)=-abb26(4)*abb26(25)*abb26(19)
      abb26(21)=abb26(21)+abb26(26)
      abb26(21)=abb26(5)*abb26(21)
      abb26(26)=abb26(11)*mB
      abb26(27)=spbl5k3*abb26(26)
      abb26(21)=abb26(21)+abb26(27)
      abb26(21)=spbl6k1*abb26(21)
      abb26(15)=abb26(6)*abb26(15)
      abb26(27)=abb26(15)*abb26(7)
      abb26(28)=abb26(23)*abb26(27)
      abb26(29)=abb26(6)*mB
      abb26(11)=abb26(29)*abb26(11)
      abb26(30)=abb26(11)*spbl6k1
      abb26(31)=-abb26(19)*abb26(30)
      abb26(21)=abb26(28)+abb26(31)+abb26(21)
      abb26(21)=8.0_ki*abb26(21)
      abb26(14)=-4.0_ki*abb26(14)
      abb26(9)=c2*abb26(9)
      abb26(28)=abb26(9)*abb26(10)*abb26(2)
      abb26(17)=-abb26(17)+NC
      abb26(17)=abb26(28)*abb26(17)
      abb26(12)=c1*abb26(10)*abb26(12)*abb26(1)
      abb26(31)=abb26(8)*abb26(2)
      abb26(32)=abb26(12)*abb26(31)
      abb26(17)=abb26(32)+abb26(17)
      abb26(32)=spak1k2*spbl6k1
      abb26(33)=-abb26(32)*abb26(17)*spbl5k1
      abb26(34)=abb26(17)*spbl6l5
      abb26(22)=-abb26(34)*abb26(22)
      abb26(22)=abb26(33)+abb26(22)
      abb26(22)=4.0_ki*abb26(22)
      abb26(33)=abb26(5)*abb26(4)
      abb26(35)=abb26(13)*abb26(33)
      abb26(26)=-abb26(26)+abb26(35)
      abb26(26)=spbk2k1*spbl5k3*abb26(26)
      abb26(35)=abb26(11)*spbk3k1
      abb26(25)=abb26(25)*abb26(33)
      abb26(33)=spbk3k1*abb26(25)
      abb26(33)=abb26(35)+abb26(33)
      abb26(33)=es12*abb26(33)
      abb26(26)=abb26(26)+abb26(33)
      abb26(26)=4.0_ki*abb26(26)
      abb26(33)=-8.0_ki*abb26(35)
      abb26(13)=-abb26(7)*abb26(6)**2*abb26(13)
      abb26(36)=8.0_ki*abb26(13)
      abb26(37)=spbk3k1*abb26(36)
      abb26(35)=-4.0_ki*abb26(35)
      abb26(38)=4.0_ki*abb26(11)
      abb26(39)=spbl6k3*abb26(38)
      abb26(38)=-spbl5k3*abb26(38)
      abb26(8)=abb26(8)*mB
      abb26(40)=abb26(8)*abb26(12)
      abb26(41)=abb26(10)*NC
      abb26(42)=abb26(10)*abb26(3)
      abb26(41)=-abb26(41)+2.0_ki*abb26(42)
      abb26(43)=abb26(9)*mB
      abb26(44)=abb26(41)*abb26(43)
      abb26(44)=abb26(44)-abb26(40)
      abb26(45)=-4.0_ki*spbl5k1*abb26(44)
      abb26(9)=abb26(41)*abb26(9)*abb26(29)
      abb26(29)=abb26(6)*abb26(40)
      abb26(9)=-abb26(29)+abb26(9)
      abb26(29)=spak2l6*spbl6k3
      abb26(19)=abb26(29)+abb26(19)
      abb26(19)=abb26(9)*abb26(19)
      abb26(29)=-spbl5k3*abb26(44)
      abb26(19)=abb26(29)+abb26(19)
      abb26(19)=4.0_ki*abb26(19)
      abb26(16)=-spbk3k1*abb26(16)
      abb26(27)=-spbk2k1*spbl6k3*abb26(27)
      abb26(17)=abb26(17)*abb26(23)
      abb26(23)=spak4l5*abb26(17)
      abb26(16)=abb26(23)+abb26(27)+abb26(16)
      abb26(16)=4.0_ki*abb26(16)
      abb26(23)=abb26(42)*abb26(43)
      abb26(27)=-abb26(3)*abb26(28)
      abb26(23)=abb26(23)+abb26(27)
      abb26(8)=-abb26(8)+abb26(31)
      abb26(8)=abb26(8)*abb26(12)
      abb26(10)=-abb26(10)*abb26(43)
      abb26(10)=abb26(10)+abb26(28)
      abb26(10)=NC*abb26(10)
      abb26(8)=abb26(10)+2.0_ki*abb26(23)+abb26(8)
      abb26(8)=4.0_ki*spbl6k1*abb26(8)
      abb26(10)=8.0_ki*abb26(30)
      abb26(12)=-spbl6k1*abb26(36)
      abb26(23)=4.0_ki*abb26(30)
      abb26(15)=abb26(15)*spbl6k3
      abb26(17)=spak1k4*abb26(17)
      abb26(15)=abb26(17)-abb26(15)-abb26(18)
      abb26(15)=4.0_ki*abb26(15)
      abb26(11)=abb26(25)+abb26(11)
      abb26(17)=8.0_ki*spbl6k3*abb26(11)
      abb26(18)=abb26(9)*abb26(32)
      abb26(18)=abb26(18)-abb26(34)
      abb26(18)=4.0_ki*abb26(18)
      abb26(11)=-abb26(13)+abb26(11)
      abb26(11)=spbk3k2*abb26(11)
      abb26(25)=-spak4l6*spbl6k3*abb26(9)
      abb26(11)=abb26(11)+abb26(25)
      abb26(11)=4.0_ki*abb26(11)
      abb26(25)=-4.0_ki*abb26(9)
      abb26(27)=-spak4l5*spbl6l5
      abb26(28)=-spak1k4*spbl6k1
      abb26(27)=abb26(28)+abb26(27)
      abb26(9)=abb26(9)*abb26(27)
      abb26(13)=spbl6k2*abb26(13)
      abb26(9)=abb26(13)+abb26(9)
      abb26(9)=4.0_ki*abb26(9)
      R2d26=0.0_ki
      rat2 = rat2 + R2d26
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='26' value='", &
          & R2d26, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd26h3
