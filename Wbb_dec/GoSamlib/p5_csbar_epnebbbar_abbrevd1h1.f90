module     p5_csbar_epnebbbar_abbrevd1h1
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh1
   implicit none
   private
   complex(ki), dimension(48), public :: abb1
   complex(ki), public :: R2d1
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
      abb1(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb1(2)=es56**(-1)
      abb1(3)=spak2l5**(-1)
      abb1(4)=spbl5k2**(-1)
      abb1(5)=spbl6k2**(-1)
      abb1(6)=spbl5k3*spak2l6
      abb1(7)=spak3k4*spbk3k1
      abb1(8)=abb1(6)*abb1(7)
      abb1(9)=4.0_ki*abb1(8)
      abb1(10)=NC*c2
      abb1(10)=c1-abb1(10)
      abb1(11)=TR*gW
      abb1(10)=abb1(10)*abb1(11)**2*i_*CVSC*abb1(2)*abb1(1)
      abb1(9)=abb1(9)*abb1(10)
      abb1(11)=mB**2
      abb1(12)=abb1(11)*abb1(4)*abb1(3)
      abb1(13)=-abb1(12)-1.0_ki
      abb1(13)=abb1(8)*abb1(13)
      abb1(14)=abb1(7)*spbl5k3
      abb1(15)=2.0_ki*abb1(11)
      abb1(16)=abb1(15)*abb1(5)
      abb1(17)=-abb1(16)*abb1(14)
      abb1(18)=spak3k4*spak1k2*spbk3k1**2
      abb1(11)=abb1(11)*abb1(5)*abb1(3)
      abb1(19)=-abb1(11)*abb1(18)
      abb1(20)=abb1(11)*abb1(7)
      abb1(21)=spbl6k3*spak2l6
      abb1(22)=-abb1(20)*abb1(21)
      abb1(13)=abb1(22)+abb1(19)+abb1(17)+abb1(13)
      abb1(17)=4.0_ki*abb1(10)
      abb1(13)=abb1(13)*abb1(17)
      abb1(19)=8.0_ki*abb1(10)
      abb1(22)=spak2k4*spbk3k1
      abb1(23)=abb1(22)*abb1(11)
      abb1(24)=abb1(19)*abb1(23)
      abb1(25)=spak1k2*spbk3k1
      abb1(26)=spak2l5*spbl5k3
      abb1(25)=abb1(26)+abb1(25)
      abb1(25)=spbl5k1*abb1(25)
      abb1(26)=spbl5k4*abb1(22)
      abb1(27)=spbl5k1*spak2l6
      abb1(28)=spbl6k3*abb1(27)
      abb1(29)=-spbl6k1*abb1(6)
      abb1(25)=abb1(29)+abb1(28)+abb1(26)+abb1(25)
      abb1(25)=spak4l6*abb1(25)
      abb1(26)=spak3l6*spbl5k3
      abb1(28)=spbl5k2*spak2l6
      abb1(29)=spak1l6*spbl5k1
      abb1(30)=-abb1(28)+abb1(26)+abb1(29)
      abb1(30)=abb1(22)*abb1(30)
      abb1(31)=spbk2k1*spak2k4*abb1(12)
      abb1(32)=-spak4l5*spbl5k1
      abb1(31)=abb1(32)+abb1(31)
      abb1(31)=abb1(6)*abb1(31)
      abb1(32)=es234-es34
      abb1(33)=abb1(23)*abb1(32)
      abb1(34)=-spak4l6*spbl5k1*spak2k4
      abb1(35)=-spbk2k1*spak2k4**2*abb1(11)
      abb1(34)=abb1(34)+abb1(35)
      abb1(34)=spbk4k3*abb1(34)
      abb1(8)=abb1(34)+abb1(25)-2.0_ki*abb1(8)+abb1(30)+abb1(33)+abb1(31)
      abb1(8)=abb1(10)*abb1(8)
      abb1(25)=abb1(10)*abb1(6)
      abb1(30)=abb1(16)*spbl5k3
      abb1(31)=abb1(10)*abb1(30)
      abb1(31)=abb1(25)+abb1(31)
      abb1(31)=spak2k4*abb1(31)
      abb1(33)=abb1(11)*spak2k4
      abb1(34)=abb1(10)*abb1(33)*abb1(21)
      abb1(31)=abb1(31)+abb1(34)
      abb1(31)=spbk2k1*abb1(31)
      abb1(8)=abb1(31)+abb1(8)
      abb1(8)=2.0_ki*abb1(8)
      abb1(23)=abb1(23)*abb1(17)
      abb1(31)=abb1(7)*abb1(21)
      abb1(34)=spak2l5*abb1(14)
      abb1(18)=abb1(34)+abb1(18)+abb1(31)
      abb1(31)=2.0_ki*abb1(10)
      abb1(18)=abb1(18)*abb1(31)
      abb1(34)=abb1(17)*abb1(22)
      abb1(22)=-abb1(22)*abb1(31)
      abb1(35)=spak1k2*abb1(10)*abb1(14)
      abb1(36)=abb1(10)*spak3k4
      abb1(37)=spbl5k3**2
      abb1(38)=spak2l5*abb1(37)*abb1(36)
      abb1(35)=abb1(35)+abb1(38)
      abb1(35)=2.0_ki*abb1(35)
      abb1(38)=4.0_ki*spak2k4
      abb1(38)=abb1(38)*abb1(10)
      abb1(39)=abb1(38)*spbl5k3
      abb1(40)=abb1(31)*spak2k4
      abb1(41)=spbl5k3*abb1(40)
      abb1(42)=abb1(31)*spak2l6
      abb1(37)=-spak3k4*abb1(37)*abb1(42)
      abb1(43)=4.0_ki*abb1(27)
      abb1(43)=abb1(43)*abb1(10)
      abb1(44)=spak2k3*spbk3k1
      abb1(45)=spbl6k1*spak2l6
      abb1(44)=abb1(44)-abb1(45)
      abb1(45)=-abb1(11)*abb1(44)
      abb1(46)=abb1(27)*abb1(12)
      abb1(47)=spak2l6+abb1(16)
      abb1(47)=spbl5k1*abb1(47)
      abb1(33)=-spbk4k1*abb1(33)
      abb1(33)=abb1(47)+abb1(33)+abb1(46)+abb1(45)
      abb1(33)=4.0_ki*abb1(10)*abb1(33)
      abb1(27)=abb1(27)*abb1(31)
      abb1(45)=-spak2l5*spbl5k1
      abb1(46)=spbk4k1*spak2k4
      abb1(44)=abb1(46)+abb1(45)+abb1(44)
      abb1(44)=abb1(44)*abb1(31)
      abb1(45)=spak1k2*spbl5k1
      abb1(46)=spbl5k4*spak2k4
      abb1(47)=spak2k3*spbl5k3
      abb1(48)=spbl6l5*spak2l6
      abb1(45)=2.0_ki*abb1(48)+abb1(47)+abb1(45)+abb1(46)
      abb1(45)=abb1(45)*abb1(31)
      abb1(46)=abb1(31)*abb1(6)
      abb1(47)=es34*abb1(46)
      abb1(42)=spbl5k4*abb1(42)
      abb1(48)=spbl5k4*spak4l6
      abb1(29)=abb1(48)+abb1(29)
      abb1(28)=abb1(28)-abb1(29)
      abb1(28)=abb1(7)*abb1(28)
      abb1(48)=es12-abb1(32)
      abb1(48)=abb1(20)*abb1(48)
      abb1(14)=-spak3l6*abb1(14)
      abb1(14)=abb1(14)+abb1(48)+abb1(28)
      abb1(14)=abb1(14)*abb1(31)
      abb1(28)=-abb1(20)*abb1(19)
      abb1(7)=abb1(7)*abb1(17)
      abb1(20)=spak1k2*abb1(20)
      abb1(6)=spak3k4*abb1(6)*abb1(12)
      abb1(6)=abb1(6)+abb1(20)
      abb1(6)=spbk3k2*abb1(6)
      abb1(12)=abb1(11)*spbk3k2
      abb1(20)=spak3k4*abb1(12)*abb1(21)
      abb1(6)=abb1(20)+abb1(6)
      abb1(6)=abb1(10)*abb1(6)
      abb1(10)=spak3k4*abb1(25)
      abb1(20)=abb1(30)*abb1(36)
      abb1(10)=abb1(10)+abb1(20)
      abb1(10)=spbk3k2*abb1(10)
      abb1(6)=abb1(10)+abb1(6)
      abb1(6)=2.0_ki*abb1(6)
      abb1(10)=abb1(38)*abb1(12)
      abb1(12)=abb1(12)*abb1(40)
      abb1(20)=-2.0_ki*abb1(32)
      abb1(20)=abb1(11)*abb1(20)
      abb1(15)=-abb1(3)*spak2l6*abb1(15)
      abb1(16)=-spbl5k2*abb1(16)
      abb1(15)=abb1(16)-abb1(26)+abb1(15)+abb1(20)-abb1(29)
      abb1(15)=abb1(15)*abb1(31)
      abb1(11)=-abb1(11)*abb1(19)
      R2d1=0.0_ki
      rat2 = rat2 + R2d1
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='1' value='", &
          & R2d1, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd1h1
