module     p5_csbar_epnebbbar_abbrevd32h0
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(55), public :: abb32
   complex(ki), public :: R2d32
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
      abb32(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb32(2)=es234**(-1)
      abb32(3)=es56**(-1)
      abb32(4)=spbl5k2**(-1)
      abb32(5)=spbl6k2**(-1)
      abb32(6)=1.0_ki/(es34+es56-es12-es234)
      abb32(7)=sqrt(mB**2)
      abb32(8)=spak2l5**(-1)
      abb32(9)=spak2l6**(-1)
      abb32(10)=spbk2k1*spak1k4
      abb32(11)=abb32(10)*spak2l6
      abb32(12)=spbk3k2*spak2l6
      abb32(13)=abb32(12)*spak3k4
      abb32(11)=abb32(11)+abb32(13)
      abb32(13)=abb32(11)*abb32(4)
      abb32(14)=spbk3k2*spak2l5
      abb32(15)=abb32(14)*spak3k4
      abb32(10)=abb32(10)*spak2l5
      abb32(10)=abb32(15)+abb32(10)
      abb32(15)=abb32(10)*abb32(5)
      abb32(13)=abb32(13)+abb32(15)
      abb32(15)=c2*NC
      abb32(15)=abb32(15)-c1
      abb32(16)=-spbk3k1*abb32(15)
      abb32(17)=abb32(16)*abb32(6)
      abb32(18)=-abb32(13)*abb32(17)
      abb32(19)=spbk4k3*spak4l6
      abb32(20)=abb32(19)+abb32(12)
      abb32(21)=abb32(4)*spbk2k1
      abb32(22)=abb32(20)*abb32(21)
      abb32(23)=spbk4k3*spak4l5
      abb32(23)=abb32(23)+abb32(14)
      abb32(24)=abb32(5)*spbk2k1
      abb32(25)=abb32(23)*abb32(24)
      abb32(22)=abb32(22)+abb32(25)
      abb32(26)=-abb32(2)*abb32(15)
      abb32(27)=abb32(26)*spak2k4
      abb32(22)=-abb32(22)*abb32(27)
      abb32(18)=abb32(18)-abb32(22)
      abb32(22)=gW*TR
      abb32(22)=abb32(22)**2*abb32(1)*abb32(3)*CVSC*i_
      abb32(28)=abb32(22)*mB
      abb32(29)=2.0_ki*abb32(28)
      abb32(30)=-abb32(18)*abb32(29)
      abb32(31)=abb32(7)*spak4l6
      abb32(32)=abb32(9)*abb32(31)*spak2l5
      abb32(33)=abb32(7)*spak4l5
      abb32(32)=abb32(32)+2.0_ki*abb32(33)
      abb32(32)=abb32(32)*spbk4k3
      abb32(34)=3.0_ki*abb32(7)
      abb32(35)=abb32(34)*abb32(14)
      abb32(32)=abb32(32)+abb32(35)
      abb32(32)=abb32(32)*abb32(24)
      abb32(33)=abb32(8)*abb32(33)*spak2l6
      abb32(31)=abb32(33)+2.0_ki*abb32(31)
      abb32(31)=abb32(31)*spbk4k3
      abb32(12)=abb32(34)*abb32(12)
      abb32(12)=abb32(31)+abb32(12)
      abb32(12)=abb32(12)*abb32(21)
      abb32(12)=abb32(32)+abb32(12)
      abb32(12)=abb32(12)*abb32(26)
      abb32(24)=abb32(24)*abb32(9)
      abb32(31)=abb32(24)*spbk4k3
      abb32(32)=abb32(7)*spal5l6
      abb32(33)=abb32(31)*abb32(32)
      abb32(34)=abb32(32)*spbk4k3
      abb32(35)=abb32(34)*abb32(21)*abb32(8)
      abb32(33)=abb32(33)-abb32(35)
      abb32(33)=-abb32(33)*abb32(27)
      abb32(12)=abb32(33)+abb32(12)
      abb32(12)=spak2k4*abb32(12)
      abb32(13)=-abb32(17)*abb32(7)*abb32(13)
      abb32(12)=3.0_ki*abb32(13)+abb32(12)
      abb32(13)=mB**2
      abb32(33)=4.0_ki*abb32(22)
      abb32(12)=abb32(12)*abb32(13)*abb32(33)
      abb32(33)=-abb32(5)*abb32(16)
      abb32(35)=abb32(33)*abb32(6)
      abb32(36)=abb32(10)*abb32(35)
      abb32(25)=abb32(25)*abb32(27)
      abb32(25)=abb32(36)+abb32(25)
      abb32(36)=4.0_ki*abb32(28)
      abb32(25)=abb32(25)*abb32(36)
      abb32(28)=8.0_ki*abb32(28)
      abb32(37)=abb32(18)*abb32(28)
      abb32(38)=-abb32(32)*abb32(16)
      abb32(39)=spak2k4*abb32(6)
      abb32(40)=abb32(39)*abb32(22)
      abb32(40)=16.0_ki*abb32(40)
      abb32(40)=abb32(38)*abb32(40)
      abb32(19)=abb32(9)*abb32(19)*abb32(21)
      abb32(14)=abb32(24)*abb32(14)
      abb32(14)=-abb32(19)+2.0_ki*abb32(14)
      abb32(14)=abb32(14)*abb32(5)
      abb32(19)=abb32(8)*abb32(4)**2
      abb32(24)=2.0_ki*spbk2k1
      abb32(24)=abb32(24)*abb32(20)*abb32(19)
      abb32(14)=abb32(14)-abb32(24)
      abb32(14)=-abb32(14)*abb32(27)
      abb32(24)=abb32(5)**2*abb32(10)*abb32(9)
      abb32(11)=abb32(11)*abb32(19)
      abb32(11)=abb32(24)-abb32(11)
      abb32(11)=abb32(11)*abb32(17)
      abb32(11)=2.0_ki*abb32(11)+abb32(14)
      abb32(11)=abb32(11)*abb32(13)
      abb32(14)=spak1k4*spbl6k1
      abb32(24)=spak3k4*spbl6k3
      abb32(14)=abb32(14)-abb32(24)
      abb32(24)=abb32(14)*spal5l6*abb32(35)
      abb32(41)=-abb32(5)*abb32(26)
      abb32(42)=abb32(41)*spbk3k2
      abb32(43)=spal5l6*spbl6k1
      abb32(44)=-spak2k4*abb32(43)*abb32(42)
      abb32(24)=abb32(24)+abb32(44)
      abb32(11)=2.0_ki*abb32(24)+abb32(11)
      abb32(11)=abb32(11)*abb32(36)
      abb32(18)=abb32(18)*abb32(36)
      abb32(24)=-abb32(23)*abb32(21)*abb32(27)
      abb32(44)=-abb32(4)*abb32(16)
      abb32(45)=abb32(44)*abb32(6)
      abb32(10)=-abb32(10)*abb32(45)
      abb32(10)=abb32(10)+abb32(24)
      abb32(10)=abb32(10)*abb32(36)
      abb32(24)=2.0_ki*abb32(4)
      abb32(46)=abb32(24)*spbl6k2
      abb32(47)=spak2l6*abb32(46)
      abb32(47)=abb32(47)+spak2l5
      abb32(47)=abb32(17)*abb32(47)
      abb32(48)=abb32(29)*spak3k4*abb32(47)
      abb32(49)=spak1k4*spbl5k1
      abb32(50)=spak3k4*spbl5k3
      abb32(49)=abb32(49)-abb32(50)
      abb32(49)=abb32(49)*spak2l5
      abb32(50)=abb32(14)*spak2l6
      abb32(51)=abb32(49)-abb32(50)
      abb32(51)=abb32(51)*abb32(4)
      abb32(14)=spak2l5*abb32(14)*abb32(5)
      abb32(14)=abb32(51)-abb32(14)
      abb32(14)=-abb32(14)*abb32(17)
      abb32(17)=spak4l5*spbl5k1
      abb32(51)=spbl6k1*spak4l6
      abb32(52)=abb32(17)-abb32(51)
      abb32(52)=abb32(52)*spbk4k3
      abb32(53)=spak2l6*spbl6k1
      abb32(54)=spak2l5*spbl5k1
      abb32(55)=abb32(53)-abb32(54)
      abb32(55)=abb32(55)*spbk3k2
      abb32(52)=abb32(52)-abb32(55)
      abb32(52)=abb32(52)*abb32(4)
      abb32(55)=abb32(5)*abb32(23)*spbl6k1
      abb32(52)=abb32(52)-abb32(55)
      abb32(52)=abb32(52)*abb32(27)
      abb32(24)=abb32(24)*abb32(31)
      abb32(19)=spbk2k1*spbk4k3*abb32(19)
      abb32(19)=abb32(19)+abb32(24)
      abb32(24)=mB*spak2k4
      abb32(55)=abb32(24)**2
      abb32(19)=abb32(55)*abb32(19)*abb32(26)
      abb32(14)=abb32(19)+abb32(14)+abb32(52)
      abb32(14)=abb32(14)*abb32(29)
      abb32(19)=abb32(28)*abb32(39)
      abb32(28)=abb32(44)*abb32(19)
      abb32(20)=abb32(20)*abb32(46)
      abb32(20)=abb32(20)+abb32(23)
      abb32(20)=abb32(20)*abb32(27)
      abb32(23)=-spak1k4*abb32(47)
      abb32(20)=abb32(23)+abb32(20)
      abb32(20)=abb32(20)*abb32(29)
      abb32(17)=abb32(17)+abb32(51)
      abb32(17)=abb32(17)*spbk4k3
      abb32(23)=abb32(53)+abb32(54)
      abb32(23)=abb32(23)*spbk3k2
      abb32(17)=abb32(17)+abb32(23)
      abb32(17)=spak2k4*abb32(17)
      abb32(21)=abb32(21)*spbk4k3
      abb32(23)=abb32(21)*abb32(8)
      abb32(23)=abb32(23)-abb32(31)
      abb32(23)=abb32(55)*abb32(23)
      abb32(17)=abb32(23)+abb32(17)
      abb32(17)=abb32(41)*abb32(17)
      abb32(23)=abb32(49)+abb32(50)
      abb32(23)=-abb32(23)*abb32(35)
      abb32(17)=abb32(23)+abb32(17)
      abb32(17)=abb32(17)*abb32(29)
      abb32(19)=abb32(33)*abb32(19)
      abb32(23)=-abb32(38)*abb32(6)*spak2k3
      abb32(27)=-abb32(39)*spbk4k1*abb32(15)
      abb32(33)=abb32(32)*abb32(27)
      abb32(23)=abb32(23)+abb32(33)
      abb32(23)=8.0_ki*abb32(23)*abb32(22)
      abb32(33)=-abb32(4)*abb32(27)
      abb32(39)=spak2k3*abb32(45)
      abb32(33)=abb32(39)+abb32(33)
      abb32(33)=abb32(33)*abb32(36)
      abb32(27)=-abb32(5)*abb32(27)
      abb32(39)=spak2k3*abb32(35)
      abb32(27)=abb32(39)+abb32(27)
      abb32(27)=abb32(27)*abb32(36)
      abb32(31)=abb32(31)*spak2l5
      abb32(21)=abb32(21)+2.0_ki*abb32(31)
      abb32(13)=abb32(13)*abb32(21)*abb32(41)
      abb32(21)=abb32(5)*spbk4k3
      abb32(31)=abb32(26)*abb32(21)
      abb32(39)=abb32(43)*abb32(31)
      abb32(13)=2.0_ki*abb32(39)+abb32(13)
      abb32(13)=abb32(29)*spak2k4*abb32(13)
      abb32(29)=4.0_ki*abb32(6)
      abb32(39)=-abb32(29)*spak1k2*abb32(38)
      abb32(29)=abb32(29)*abb32(15)
      abb32(29)=-3.0_ki*abb32(26)+abb32(29)
      abb32(29)=spak2k4*abb32(34)*abb32(29)
      abb32(24)=-abb32(24)*spbk4k3*spal5l6*abb32(26)
      abb32(24)=abb32(24)+abb32(39)+abb32(29)
      abb32(22)=2.0_ki*abb32(22)
      abb32(24)=abb32(24)*abb32(22)
      abb32(15)=abb32(15)*abb32(6)
      abb32(29)=-abb32(15)+abb32(26)
      abb32(29)=spak2k4*abb32(29)*abb32(4)*spbk4k3
      abb32(34)=spak1k2*abb32(45)
      abb32(29)=abb32(34)+abb32(29)
      abb32(29)=abb32(29)*abb32(36)
      abb32(15)=-abb32(21)*abb32(15)
      abb32(15)=abb32(15)+abb32(31)
      abb32(15)=spak2k4*abb32(15)
      abb32(21)=spak1k2*abb32(35)
      abb32(15)=abb32(21)+abb32(15)
      abb32(15)=abb32(15)*abb32(36)
      abb32(16)=abb32(16)*spal5l6
      abb32(21)=-mB*abb32(16)
      abb32(21)=-abb32(38)+abb32(21)
      abb32(21)=abb32(22)*abb32(6)*spak3k4*abb32(21)
      abb32(31)=abb32(6)*spak1k4
      abb32(34)=abb32(38)*abb32(31)
      abb32(26)=-spbk3k2*abb32(26)
      abb32(35)=abb32(26)*spak2k4
      abb32(32)=abb32(32)*abb32(35)
      abb32(16)=abb32(16)*abb32(31)
      abb32(31)=spal5l6*abb32(35)
      abb32(16)=abb32(16)+abb32(31)
      abb32(16)=mB*abb32(16)
      abb32(16)=abb32(16)+abb32(34)+3.0_ki*abb32(32)
      abb32(16)=abb32(16)*abb32(22)
      abb32(22)=abb32(36)*spak2k4
      abb32(26)=-abb32(22)*abb32(4)*abb32(26)
      abb32(22)=-abb32(42)*abb32(22)
      R2d32=abb32(30)
      rat2 = rat2 + R2d32
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='32' value='", &
          & R2d32, "'/>"
      end if
   end subroutine
end module p5_csbar_epnebbbar_abbrevd32h0
