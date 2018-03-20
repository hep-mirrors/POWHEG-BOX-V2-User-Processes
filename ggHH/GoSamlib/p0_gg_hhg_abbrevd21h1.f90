module     p0_gg_hhg_abbrevd21h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(36), public :: abb21
   complex(ki), public :: R2d21
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_model
      use p0_gg_hhg_color, only: TR
      use p0_gg_hhg_globalsl1, only: epspow
      implicit none
      abb21(1)=sqrt(mT**2)
      abb21(2)=sqrt2**(-1)
      abb21(3)=es51**(-1)
      abb21(4)=spak2k5**(-1)
      abb21(5)=spbk5k2**(-1)
      abb21(6)=spak1k2**(-1)
      abb21(7)=spak2l3**(-1)
      abb21(8)=spbl3k2**(-1)
      abb21(9)=spak2l4**(-1)
      abb21(10)=spbl4k2**(-1)
      abb21(11)=gHT**2*i_*abb21(5)
      abb21(12)=abb21(11)*abb21(3)*abb21(2)
      abb21(13)=c1-c2
      abb21(14)=abb21(13)*abb21(4)
      abb21(15)=spbk5k1**2*abb21(14)*abb21(12)
      abb21(16)=abb21(1)**2
      abb21(17)=abb21(16)*spak2l3
      abb21(18)=abb21(15)*abb21(17)
      abb21(19)=4.0_ki*spbl4l3
      abb21(20)=-spak2l4*abb21(19)*abb21(18)
      abb21(12)=spbk5k1*abb21(12)
      abb21(13)=abb21(13)*abb21(12)
      abb21(21)=-abb21(13)*abb21(6)
      abb21(22)=abb21(21)*spbk5l4
      abb21(23)=abb21(16)*spak2l4
      abb21(24)=abb21(23)*abb21(22)
      abb21(25)=abb21(21)*spbk5l3
      abb21(17)=2.0_ki*abb21(17)
      abb21(26)=abb21(17)*abb21(25)
      abb21(24)=abb21(24)+abb21(26)
      abb21(12)=abb21(12)*abb21(14)
      abb21(26)=abb21(12)*spbl4k1
      abb21(27)=abb21(23)*abb21(26)
      abb21(28)=abb21(12)*spbl3k1
      abb21(29)=abb21(28)*abb21(17)
      abb21(24)=abb21(29)+2.0_ki*abb21(24)+abb21(27)
      abb21(24)=4.0_ki*abb21(24)
      abb21(27)=spbk5l4*spak2l4
      abb21(29)=abb21(21)*abb21(27)
      abb21(30)=abb21(26)*spak2l4
      abb21(31)=abb21(30)+abb21(29)
      abb21(32)=mH**2
      abb21(33)=abb21(32)*abb21(8)
      abb21(34)=abb21(33)*abb21(7)
      abb21(31)=abb21(34)*abb21(31)
      abb21(35)=abb21(33)*abb21(6)
      abb21(36)=-abb21(35)*abb21(13)*spbk5l3
      abb21(33)=abb21(33)*abb21(28)
      abb21(31)=abb21(33)+abb21(36)+abb21(31)
      abb21(31)=8.0_ki*abb21(31)
      abb21(25)=spak2l3*abb21(25)
      abb21(25)=abb21(29)+abb21(25)
      abb21(28)=spak2l3*abb21(28)
      abb21(25)=abb21(28)+2.0_ki*abb21(25)+abb21(30)
      abb21(25)=4.0_ki*abb21(25)
      abb21(28)=spak2l4*abb21(6)
      abb21(29)=abb21(13)*abb21(28)*abb21(19)
      abb21(30)=abb21(34)*spbl4k2
      abb21(28)=abb21(28)*abb21(30)
      abb21(33)=abb21(32)*abb21(6)
      abb21(28)=abb21(28)+abb21(33)
      abb21(13)=abb21(13)*abb21(28)
      abb21(16)=6.0_ki*abb21(16)
      abb21(28)=-abb21(21)*abb21(16)
      abb21(13)=abb21(28)+abb21(13)
      abb21(13)=4.0_ki*abb21(13)
      abb21(28)=16.0_ki*abb21(34)
      abb21(34)=-abb21(21)*abb21(28)
      abb21(21)=8.0_ki*abb21(21)
      abb21(15)=8.0_ki*abb21(15)
      abb21(15)=abb21(23)*abb21(15)
      abb21(18)=8.0_ki*abb21(18)
      abb21(11)=abb21(2)*abb21(14)*abb21(11)*spbk5k1
      abb21(14)=-es34*abb21(12)
      abb21(11)=abb21(14)+abb21(11)
      abb21(14)=abb21(33)*abb21(10)*abb21(9)*spak2l3
      abb21(14)=abb21(14)+abb21(35)
      abb21(11)=abb21(14)*abb21(11)
      abb21(14)=abb21(22)+abb21(26)
      abb21(14)=spal3l4*abb21(14)
      abb21(11)=abb21(14)+abb21(11)
      abb21(11)=4.0_ki*abb21(11)
      abb21(14)=4.0_ki*abb21(12)
      abb21(22)=-spbk5l4*abb21(23)
      abb21(17)=-spbk5l3*abb21(17)
      abb21(17)=abb21(22)+abb21(17)
      abb21(17)=abb21(17)*abb21(14)
      abb21(22)=-spbk5l3*spak2l3
      abb21(22)=-abb21(27)+abb21(22)
      abb21(22)=abb21(22)*abb21(14)
      abb21(23)=abb21(12)*spak2l4
      abb21(19)=abb21(23)*abb21(19)
      abb21(16)=abb21(32)+abb21(16)
      abb21(16)=abb21(12)*abb21(16)
      abb21(23)=abb21(23)*abb21(30)
      abb21(16)=abb21(23)+abb21(16)
      abb21(16)=4.0_ki*abb21(16)
      abb21(23)=abb21(12)*abb21(28)
      abb21(12)=8.0_ki*abb21(12)
      R2d21=0.0_ki
      rat2 = rat2 + R2d21
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='21' value='", &
          & R2d21, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd21h1
