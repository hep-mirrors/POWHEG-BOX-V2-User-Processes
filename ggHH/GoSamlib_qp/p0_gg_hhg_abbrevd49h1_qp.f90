module p0_gg_hhg_abbrevd49h1_qp
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(42), public :: abb49
   complex(ki), public :: R2d49
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config_qp, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_color_qp, only: TR
      use p0_gg_hhg_globalsl1_qp, only: epspow
      implicit none
      abb49(1)=sqrt(mT**2)
      abb49(2)=sqrt2**(-1)
      abb49(3)=spak1k2**(-1)
      abb49(4)=spbk5k2**(-1)
      abb49(5)=spak2k5**(-1)
      abb49(6)=spak2l4**(-1)
      abb49(7)=spbl4k2**(-1)
      abb49(8)=gHT**2*i_*abb49(2)
      abb49(9)=abb49(8)*c1
      abb49(10)=abb49(5)*abb49(4)
      abb49(11)=abb49(10)*abb49(9)*spbk5k1
      abb49(8)=abb49(8)*c2
      abb49(12)=abb49(8)*spbk5k1
      abb49(13)=abb49(12)*abb49(10)
      abb49(14)=abb49(11)-abb49(13)
      abb49(15)=spbl4k1*spak2l4
      abb49(14)=abb49(14)*abb49(15)
      abb49(16)=abb49(3)*abb49(4)
      abb49(17)=abb49(9)*abb49(16)
      abb49(18)=spbk5k1*abb49(17)
      abb49(19)=abb49(12)*abb49(16)
      abb49(18)=abb49(18)-abb49(19)
      abb49(20)=spbk5l4*spak2l4
      abb49(21)=abb49(18)*abb49(20)
      abb49(14)=abb49(14)-abb49(21)
      abb49(21)=abb49(4)*spbk5k1**2
      abb49(22)=abb49(8)*abb49(21)
      abb49(21)=abb49(9)*abb49(21)
      abb49(21)=-abb49(22)+abb49(21)
      abb49(21)=2.0_ki*abb49(21)-abb49(14)
      abb49(23)=abb49(1)**2
      abb49(21)=2.0_ki*abb49(23)*abb49(21)
      abb49(24)=4.0_ki*abb49(13)*abb49(15)
      abb49(22)=4.0_ki*abb49(22)
      abb49(25)=mH**2*abb49(7)*abb49(6)
      abb49(26)=-abb49(25)*abb49(22)
      abb49(27)=4.0_ki*abb49(20)
      abb49(28)=-abb49(19)*abb49(27)
      abb49(14)=2.0_ki*abb49(14)
      abb49(16)=abb49(16)*abb49(5)
      abb49(29)=abb49(16)*abb49(9)
      abb49(30)=abb49(15)*abb49(29)
      abb49(18)=abb49(30)+abb49(18)
      abb49(31)=-abb49(23)*abb49(18)
      abb49(32)=abb49(25)*es12
      abb49(33)=abb49(19)*abb49(32)
      abb49(34)=spal4k5*spbl4k1*abb49(13)
      abb49(31)=abb49(34)+abb49(33)+abb49(31)
      abb49(31)=2.0_ki*abb49(31)
      abb49(33)=-4.0_ki*abb49(18)
      abb49(18)=2.0_ki*abb49(18)
      abb49(12)=abb49(12)*abb49(16)
      abb49(34)=spak2l4*abb49(12)
      abb49(35)=2.0_ki*abb49(34)
      abb49(36)=abb49(23)*abb49(35)
      abb49(34)=4.0_ki*abb49(34)
      abb49(37)=es51-es34
      abb49(38)=es12+abb49(37)
      abb49(38)=abb49(38)*abb49(13)*abb49(25)
      abb49(16)=abb49(8)*abb49(16)
      abb49(39)=-abb49(29)+2.0_ki*abb49(16)
      abb49(40)=abb49(39)*abb49(20)
      abb49(41)=-abb49(23)*abb49(40)
      abb49(9)=abb49(9)*abb49(5)
      abb49(42)=-abb49(5)*abb49(8)
      abb49(42)=abb49(42)+abb49(9)
      abb49(15)=abb49(42)*abb49(15)
      abb49(42)=spak1l4*spbk5l4
      abb49(19)=abb49(19)*abb49(42)
      abb49(15)=abb49(19)+abb49(41)+abb49(15)+abb49(38)
      abb49(15)=2.0_ki*abb49(15)
      abb49(19)=-abb49(16)*abb49(27)
      abb49(13)=abb49(13)+abb49(11)
      abb49(13)=4.0_ki*abb49(13)
      abb49(20)=abb49(20)*abb49(16)
      abb49(11)=abb49(25)*abb49(11)
      abb49(11)=abb49(20)+abb49(11)
      abb49(11)=4.0_ki*abb49(11)
      abb49(20)=abb49(29)*abb49(27)
      abb49(27)=2.0_ki*abb49(40)
      abb49(17)=spbk5l4*abb49(17)
      abb49(8)=-spbl4k1*abb49(8)*abb49(10)
      abb49(8)=abb49(17)+abb49(8)
      abb49(8)=2.0_ki*abb49(8)
      abb49(10)=-spal4k5*spbk5l4
      abb49(17)=spbl4k2*spak2l4
      abb49(10)=abb49(17)+abb49(10)
      abb49(10)=abb49(16)*abb49(10)
      abb49(16)=abb49(29)-abb49(16)
      abb49(17)=abb49(16)*abb49(25)
      abb49(37)=abb49(17)*abb49(37)
      abb49(23)=abb49(16)*abb49(23)
      abb49(32)=-abb49(39)*abb49(32)
      abb49(10)=-6.0_ki*abb49(23)+abb49(32)+abb49(37)+abb49(10)
      abb49(10)=2.0_ki*abb49(10)
      abb49(23)=8.0_ki*abb49(16)
      abb49(17)=-8.0_ki*abb49(17)
      abb49(16)=-4.0_ki*abb49(16)
      abb49(12)=-spak1l4*abb49(12)
      abb49(32)=-spak2l4*abb49(3)*abb49(9)
      abb49(12)=abb49(32)+abb49(12)
      abb49(12)=2.0_ki*abb49(12)
      abb49(9)=-abb49(25)*abb49(9)
      abb49(25)=-abb49(29)*abb49(42)
      abb49(9)=abb49(9)+abb49(25)
      abb49(9)=2.0_ki*abb49(9)
      abb49(25)=2.0_ki*abb49(30)
      R2d49=0.0_ki
      rat2 = rat2 + R2d49
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='49' value='", &
          & R2d49, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd49h1_qp
