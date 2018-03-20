module     p0_gg_hhg_abbrevd59h1_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(41), public :: abb59
   complex(ki), public :: R2d59
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_color_qp, only: TR
      use p0_gg_hhg_globalsl1_qp, only: epspow
      implicit none
      abb59(1)=sqrt(mT**2)
      abb59(2)=sqrt2**(-1)
      abb59(3)=spak1k2**(-1)
      abb59(4)=spbk5k2**(-1)
      abb59(5)=spak2k5**(-1)
      abb59(6)=spbl3k2**(-1)
      abb59(7)=spak2l3**(-1)
      abb59(8)=gHT**2*i_*abb59(2)
      abb59(9)=abb59(8)*c1
      abb59(10)=abb59(4)*abb59(9)
      abb59(11)=abb59(8)*c2
      abb59(12)=abb59(11)*abb59(4)
      abb59(10)=abb59(10)-abb59(12)
      abb59(13)=spbk5k1**2
      abb59(14)=abb59(13)*abb59(10)
      abb59(15)=spbk5l3*spak2l3
      abb59(16)=abb59(14)*abb59(15)
      abb59(12)=abb59(12)*spbk5k1
      abb59(17)=abb59(8)*spbk5k1
      abb59(18)=abb59(17)*c1
      abb59(19)=abb59(18)*abb59(4)
      abb59(12)=abb59(12)-abb59(19)
      abb59(19)=abb59(12)*abb59(3)
      abb59(20)=abb59(15)**2
      abb59(21)=-abb59(20)*abb59(19)
      abb59(21)=abb59(16)+abb59(21)
      abb59(22)=abb59(1)**2
      abb59(21)=abb59(21)*abb59(22)
      abb59(23)=abb59(5)*abb59(4)
      abb59(24)=abb59(23)*c1
      abb59(17)=abb59(17)*abb59(24)
      abb59(23)=abb59(11)*abb59(23)
      abb59(25)=spbk5k1*abb59(23)
      abb59(17)=abb59(17)-abb59(25)
      abb59(25)=2.0_ki*abb59(17)
      abb59(26)=spbk5l3*spak2l3**2
      abb59(27)=abb59(22)*spbl3k1
      abb59(28)=-abb59(25)*abb59(27)*abb59(26)
      abb59(21)=abb59(21)+abb59(28)
      abb59(21)=2.0_ki*abb59(21)
      abb59(8)=abb59(24)*abb59(8)
      abb59(8)=abb59(23)-abb59(8)
      abb59(13)=-abb59(13)*abb59(8)
      abb59(23)=abb59(13)*spak2l3
      abb59(24)=spak1k2*spbl3k1
      abb59(28)=-abb59(23)*abb59(24)
      abb59(16)=abb59(16)+abb59(28)
      abb59(16)=2.0_ki*abb59(16)
      abb59(28)=abb59(17)*abb59(15)
      abb59(24)=abb59(28)*abb59(24)
      abb59(29)=spbk5l3**2
      abb59(30)=spak2l3*abb59(12)*abb59(29)
      abb59(24)=abb59(30)+abb59(24)
      abb59(24)=2.0_ki*abb59(24)
      abb59(30)=abb59(17)*spak2l3
      abb59(31)=abb59(8)*abb59(3)
      abb59(26)=-abb59(31)*abb59(26)
      abb59(26)=-4.0_ki*abb59(30)+abb59(26)
      abb59(26)=abb59(26)*abb59(27)
      abb59(32)=2.0_ki*abb59(3)
      abb59(33)=abb59(12)*abb59(32)
      abb59(34)=-abb59(15)*abb59(33)
      abb59(34)=abb59(34)+abb59(14)
      abb59(34)=abb59(34)*abb59(22)
      abb59(26)=abb59(34)+abb59(26)
      abb59(26)=2.0_ki*abb59(26)
      abb59(30)=spbl3k1*abb59(30)
      abb59(34)=abb59(15)*abb59(3)
      abb59(35)=abb59(12)*abb59(34)
      abb59(14)=abb59(30)+abb59(35)+abb59(14)
      abb59(14)=2.0_ki*abb59(14)
      abb59(30)=abb59(3)*spak2l3
      abb59(29)=abb59(10)*abb59(29)*abb59(30)
      abb59(35)=spbl3k1*abb59(8)*abb59(15)
      abb59(12)=spbk5l3*abb59(12)
      abb59(12)=abb59(35)+abb59(12)+abb59(29)
      abb59(12)=2.0_ki*abb59(12)
      abb59(8)=2.0_ki*abb59(8)
      abb59(27)=-abb59(30)*abb59(27)*abb59(8)
      abb59(19)=-abb59(22)*abb59(19)
      abb59(19)=abb59(19)+abb59(27)
      abb59(19)=2.0_ki*abb59(19)
      abb59(10)=spbk5l3*abb59(10)*abb59(32)
      abb59(27)=4.0_ki*abb59(22)*abb59(23)
      abb59(23)=2.0_ki*abb59(23)
      abb59(29)=-abb59(15)*abb59(25)
      abb59(32)=abb59(25)*abb59(30)
      abb59(35)=-abb59(22)*abb59(32)
      abb59(15)=abb59(31)*abb59(15)
      abb59(15)=2.0_ki*abb59(15)
      abb59(20)=abb59(20)*abb59(31)
      abb59(20)=4.0_ki*abb59(28)+abb59(20)
      abb59(20)=abb59(20)*abb59(22)
      abb59(28)=abb59(6)*mH**2
      abb59(36)=abb59(28)*spbk5l3
      abb59(37)=-es34+es12+es51
      abb59(38)=-abb59(37)*abb59(17)*abb59(36)
      abb59(39)=abb59(13)*abb59(22)
      abb59(18)=abb59(18)*abb59(5)
      abb59(11)=abb59(11)*abb59(5)
      abb59(40)=abb59(11)*spbk5k1
      abb59(18)=abb59(18)-abb59(40)
      abb59(40)=abb59(18)*abb59(28)
      abb59(41)=spbl3k1*abb59(40)
      abb59(39)=-abb59(39)+abb59(41)
      abb59(39)=spak1k2*abb59(39)
      abb59(20)=abb59(20)+abb59(39)+abb59(38)
      abb59(20)=2.0_ki*abb59(20)
      abb59(13)=2.0_ki*abb59(13)*spak1k2
      abb59(38)=-spak1k2*abb59(25)*spbk5l3
      abb59(39)=abb59(28)*abb59(7)
      abb59(41)=abb59(39)*abb59(17)
      abb59(36)=abb59(31)*abb59(36)
      abb59(36)=abb59(41)+abb59(36)
      abb59(36)=-abb59(36)*abb59(37)
      abb59(41)=3.0_ki*abb59(17)+abb59(15)
      abb59(41)=abb59(41)*abb59(22)
      abb59(9)=abb59(5)*abb59(9)
      abb59(9)=abb59(9)-abb59(11)
      abb59(11)=-spbl3k1*abb59(9)*abb59(28)
      abb59(11)=3.0_ki*abb59(41)+abb59(11)+abb59(36)
      abb59(11)=2.0_ki*abb59(11)
      abb59(8)=-spbk5l3*abb59(8)
      abb59(36)=-abb59(39)*abb59(37)
      abb59(22)=8.0_ki*abb59(22)+abb59(36)
      abb59(22)=2.0_ki*abb59(31)*abb59(22)
      abb59(17)=-spak1l3*abb59(17)*abb59(34)
      abb59(31)=spak2l3*abb59(18)
      abb59(17)=abb59(17)+abb59(31)-2.0_ki*abb59(40)
      abb59(17)=2.0_ki*abb59(17)
      abb59(28)=abb59(28)*abb59(3)
      abb59(28)=-abb59(30)+2.0_ki*abb59(28)
      abb59(28)=2.0_ki*abb59(9)*abb59(28)
      abb59(30)=2.0_ki*abb59(39)
      abb59(18)=-spak1k2*abb59(18)*abb59(30)
      abb59(9)=abb59(9)*abb59(30)
      R2d59=0.0_ki
      rat2 = rat2 + R2d59
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='59' value='", &
          & R2d59, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd59h1_qp
