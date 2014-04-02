module     p5_csbar_epnebbbar_abbrevd30h2
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh2
   implicit none
   private
   complex(ki), dimension(41), public :: abb30
   complex(ki), public :: R2d30
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
      abb30(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb30(2)=NC**(-1)
      abb30(3)=es234**(-1)
      abb30(4)=spak2l5**(-1)
      abb30(5)=spbl5k2**(-1)
      abb30(6)=spak2l6**(-1)
      abb30(7)=sqrt(mB**2)
      abb30(8)=NC*spbl6k1
      abb30(9)=2.0_ki*abb30(2)
      abb30(10)=abb30(9)*spbl6k1
      abb30(8)=abb30(8)-abb30(10)
      abb30(11)=TR*gW
      abb30(11)=abb30(11)**2*i_*CVSC*abb30(3)*abb30(1)
      abb30(12)=abb30(11)*c2
      abb30(13)=abb30(12)*spak2k4
      abb30(14)=-abb30(13)*abb30(8)
      abb30(15)=abb30(2)**2
      abb30(16)=abb30(15)*c1
      abb30(17)=abb30(16)*spbl6k1
      abb30(18)=abb30(11)*spak2k4
      abb30(19)=abb30(17)*abb30(18)
      abb30(14)=abb30(14)-abb30(19)
      abb30(19)=spak2l5*spbk3k2
      abb30(20)=abb30(14)*abb30(19)
      abb30(21)=abb30(11)*spbk4k3
      abb30(22)=abb30(21)*spak2k4
      abb30(23)=abb30(22)*c2
      abb30(24)=-abb30(23)*abb30(8)
      abb30(17)=abb30(17)*abb30(22)
      abb30(17)=abb30(24)-abb30(17)
      abb30(24)=abb30(17)*spak4l5
      abb30(20)=abb30(20)+abb30(24)
      abb30(24)=abb30(21)*abb30(6)
      abb30(25)=abb30(5)*c2
      abb30(26)=abb30(24)*abb30(25)
      abb30(27)=abb30(9)-NC
      abb30(28)=mB*spak2k4
      abb30(29)=abb30(28)**2
      abb30(30)=abb30(26)*abb30(29)*abb30(27)
      abb30(31)=abb30(16)*abb30(24)
      abb30(32)=abb30(29)*abb30(5)
      abb30(33)=abb30(32)*abb30(31)
      abb30(30)=abb30(30)-abb30(33)
      abb30(33)=-spbk2k1*abb30(30)
      abb30(33)=abb30(33)-abb30(20)
      abb30(33)=spbl5k1*abb30(33)
      abb30(25)=abb30(25)*abb30(21)
      abb30(34)=abb30(29)*abb30(25)
      abb30(8)=abb30(8)*abb30(34)
      abb30(15)=abb30(15)*abb30(21)*c1
      abb30(21)=spbl6k1*abb30(15)
      abb30(32)=abb30(32)*abb30(21)
      abb30(8)=abb30(8)+abb30(32)
      abb30(32)=abb30(4)*spbk2k1
      abb30(35)=-abb30(8)*abb30(32)
      abb30(33)=abb30(35)+abb30(33)
      abb30(33)=spak1l5*abb30(33)
      abb30(11)=abb30(16)*abb30(11)*abb30(5)
      abb30(35)=abb30(12)*NC
      abb30(36)=abb30(5)*abb30(35)
      abb30(36)=-abb30(36)-abb30(11)
      abb30(37)=abb30(28)*spbl6k1
      abb30(36)=abb30(37)*abb30(36)
      abb30(38)=abb30(28)*abb30(5)
      abb30(12)=abb30(38)*abb30(12)
      abb30(39)=abb30(12)*abb30(10)
      abb30(36)=abb30(39)+abb30(36)
      abb30(39)=abb30(7)*spbk3k2
      abb30(36)=abb30(36)*abb30(39)
      abb30(24)=-abb30(27)*abb30(24)*c2
      abb30(24)=abb30(31)+abb30(24)
      abb30(40)=abb30(5)*spak2k4
      abb30(32)=abb30(32)*abb30(24)*abb30(40)**2*mB**4
      abb30(32)=abb30(36)-abb30(32)
      abb30(36)=-es12*abb30(32)
      abb30(10)=abb30(28)*abb30(10)*abb30(25)
      abb30(41)=abb30(25)*NC
      abb30(37)=abb30(41)*abb30(37)
      abb30(21)=abb30(21)*abb30(38)
      abb30(10)=abb30(10)-abb30(37)-abb30(21)
      abb30(10)=abb30(10)*abb30(7)
      abb30(21)=spak1k4*spbk2k1
      abb30(37)=-abb30(21)*abb30(10)
      abb30(33)=abb30(37)+abb30(36)+abb30(33)
      abb30(33)=4.0_ki*abb30(33)
      abb30(20)=-8.0_ki*abb30(20)
      abb30(32)=-8.0_ki*abb30(32)
      abb30(8)=-abb30(4)*abb30(8)
      abb30(30)=-spbl5k1*abb30(30)
      abb30(8)=abb30(8)+abb30(30)
      abb30(8)=4.0_ki*abb30(8)
      abb30(23)=-abb30(23)*abb30(27)
      abb30(22)=abb30(16)*abb30(22)
      abb30(22)=abb30(22)+abb30(23)
      abb30(23)=-spak4l5*abb30(22)
      abb30(13)=-abb30(13)*abb30(27)
      abb30(16)=abb30(16)*abb30(18)
      abb30(13)=abb30(16)+abb30(13)
      abb30(16)=-abb30(13)*abb30(19)
      abb30(16)=abb30(23)+abb30(16)
      abb30(16)=spbl6l5*abb30(16)
      abb30(18)=abb30(7)*mB*spak2k4**2
      abb30(18)=abb30(18)-abb30(29)
      abb30(18)=abb30(24)*abb30(18)
      abb30(19)=-abb30(34)*abb30(27)
      abb30(15)=abb30(5)*abb30(15)
      abb30(23)=abb30(29)*abb30(15)
      abb30(19)=abb30(23)+abb30(19)
      abb30(19)=spbl6k2*abb30(4)*abb30(19)
      abb30(16)=abb30(16)+abb30(19)+abb30(18)
      abb30(16)=4.0_ki*abb30(16)
      abb30(10)=-4.0_ki*abb30(10)
      abb30(18)=abb30(9)*abb30(25)
      abb30(15)=-abb30(41)+abb30(18)-abb30(15)
      abb30(15)=spbl6k2*abb30(7)*abb30(28)*abb30(15)
      abb30(18)=mB**2
      abb30(19)=abb30(27)*spak2k4*abb30(26)*abb30(18)
      abb30(18)=abb30(40)*abb30(31)*abb30(18)
      abb30(18)=-abb30(18)+abb30(19)
      abb30(19)=es12*abb30(18)
      abb30(17)=-spak1l5*abb30(17)
      abb30(15)=abb30(19)+abb30(17)+abb30(15)
      abb30(15)=4.0_ki*abb30(15)
      abb30(17)=16.0_ki*abb30(18)
      abb30(19)=4.0_ki*abb30(22)
      abb30(9)=abb30(9)*abb30(12)
      abb30(11)=-abb30(28)*abb30(11)
      abb30(12)=-abb30(35)*abb30(38)
      abb30(9)=abb30(12)+abb30(9)+abb30(11)
      abb30(9)=spbl6k2*abb30(9)*abb30(39)
      abb30(11)=-abb30(18)*abb30(21)
      abb30(12)=-spak1l5*spbk3k2*abb30(14)
      abb30(9)=abb30(11)+abb30(12)+abb30(9)
      abb30(9)=4.0_ki*abb30(9)
      abb30(11)=4.0_ki*spbk3k2*abb30(13)
      abb30(12)=-8.0_ki*abb30(18)
      R2d30=0.0_ki
      rat2 = rat2 + R2d30
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='30' value='", &
          & R2d30, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd30h2
