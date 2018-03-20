module     p0_gg_hhg_abbrevd23h1_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(36), public :: abb23
   complex(ki), public :: R2d23
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
      abb23(1)=sqrt(mT**2)
      abb23(2)=sqrt2**(-1)
      abb23(3)=es51**(-1)
      abb23(4)=spak2k5**(-1)
      abb23(5)=spbk5k2**(-1)
      abb23(6)=spak1k2**(-1)
      abb23(7)=spbl4k2**(-1)
      abb23(8)=spak2l4**(-1)
      abb23(9)=spak2l3**(-1)
      abb23(10)=spbl3k2**(-1)
      abb23(11)=gHT**2*i_*abb23(5)
      abb23(12)=abb23(11)*abb23(3)*abb23(2)
      abb23(13)=c1-c2
      abb23(14)=abb23(13)*abb23(4)
      abb23(15)=spbk5k1**2*abb23(14)*abb23(12)
      abb23(16)=abb23(1)**2
      abb23(17)=abb23(16)*spak2l4
      abb23(18)=abb23(15)*abb23(17)
      abb23(19)=4.0_ki*spbl4l3
      abb23(20)=spak2l3*abb23(19)*abb23(18)
      abb23(12)=spbk5k1*abb23(12)
      abb23(13)=abb23(13)*abb23(12)
      abb23(21)=-abb23(13)*abb23(6)
      abb23(22)=abb23(21)*spbk5l3
      abb23(23)=abb23(16)*spak2l3
      abb23(24)=abb23(23)*abb23(22)
      abb23(25)=abb23(21)*spbk5l4
      abb23(17)=2.0_ki*abb23(17)
      abb23(26)=abb23(17)*abb23(25)
      abb23(24)=abb23(24)+abb23(26)
      abb23(12)=abb23(12)*abb23(14)
      abb23(26)=abb23(12)*spbl3k1
      abb23(27)=abb23(23)*abb23(26)
      abb23(28)=abb23(12)*spbl4k1
      abb23(29)=abb23(28)*abb23(17)
      abb23(24)=abb23(29)+2.0_ki*abb23(24)+abb23(27)
      abb23(24)=4.0_ki*abb23(24)
      abb23(27)=spbk5l3*spak2l3
      abb23(29)=abb23(21)*abb23(27)
      abb23(30)=abb23(26)*spak2l3
      abb23(31)=abb23(30)+abb23(29)
      abb23(32)=mH**2
      abb23(33)=abb23(32)*abb23(7)
      abb23(34)=abb23(33)*abb23(8)
      abb23(31)=abb23(34)*abb23(31)
      abb23(35)=abb23(33)*abb23(6)
      abb23(36)=-abb23(35)*abb23(13)*spbk5l4
      abb23(33)=abb23(33)*abb23(28)
      abb23(31)=abb23(33)+abb23(36)+abb23(31)
      abb23(31)=8.0_ki*abb23(31)
      abb23(25)=spak2l4*abb23(25)
      abb23(25)=abb23(29)+abb23(25)
      abb23(28)=spak2l4*abb23(28)
      abb23(25)=abb23(28)+2.0_ki*abb23(25)+abb23(30)
      abb23(25)=4.0_ki*abb23(25)
      abb23(28)=spak2l3*abb23(6)
      abb23(29)=-abb23(13)*abb23(28)*abb23(19)
      abb23(30)=abb23(34)*spbl3k2
      abb23(28)=abb23(28)*abb23(30)
      abb23(33)=abb23(32)*abb23(6)
      abb23(28)=abb23(28)+abb23(33)
      abb23(13)=abb23(13)*abb23(28)
      abb23(16)=6.0_ki*abb23(16)
      abb23(28)=-abb23(21)*abb23(16)
      abb23(13)=abb23(28)+abb23(13)
      abb23(13)=4.0_ki*abb23(13)
      abb23(28)=16.0_ki*abb23(34)
      abb23(34)=-abb23(21)*abb23(28)
      abb23(21)=8.0_ki*abb23(21)
      abb23(18)=8.0_ki*abb23(18)
      abb23(11)=abb23(2)*abb23(14)*abb23(11)*spbk5k1
      abb23(14)=-es34*abb23(12)
      abb23(11)=abb23(14)+abb23(11)
      abb23(14)=abb23(33)*abb23(10)*abb23(9)*spak2l4
      abb23(14)=abb23(14)+abb23(35)
      abb23(11)=abb23(14)*abb23(11)
      abb23(14)=-abb23(22)-abb23(26)
      abb23(14)=spal3l4*abb23(14)
      abb23(11)=abb23(14)+abb23(11)
      abb23(11)=4.0_ki*abb23(11)
      abb23(14)=4.0_ki*abb23(12)
      abb23(15)=8.0_ki*abb23(15)
      abb23(15)=abb23(23)*abb23(15)
      abb23(22)=-spbk5l3*abb23(23)
      abb23(17)=-spbk5l4*abb23(17)
      abb23(17)=abb23(22)+abb23(17)
      abb23(17)=abb23(17)*abb23(14)
      abb23(22)=-spbk5l4*spak2l4
      abb23(22)=-abb23(27)+abb23(22)
      abb23(22)=abb23(22)*abb23(14)
      abb23(23)=abb23(12)*spak2l3
      abb23(19)=-abb23(23)*abb23(19)
      abb23(16)=abb23(32)+abb23(16)
      abb23(16)=abb23(12)*abb23(16)
      abb23(23)=abb23(23)*abb23(30)
      abb23(16)=abb23(23)+abb23(16)
      abb23(16)=4.0_ki*abb23(16)
      abb23(23)=abb23(12)*abb23(28)
      abb23(12)=8.0_ki*abb23(12)
      R2d23=0.0_ki
      rat2 = rat2 + R2d23
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='23' value='", &
          & R2d23, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd23h1_qp
