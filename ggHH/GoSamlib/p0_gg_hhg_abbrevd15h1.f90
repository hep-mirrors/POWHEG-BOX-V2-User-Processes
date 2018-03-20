module     p0_gg_hhg_abbrevd15h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(35), public :: abb15
   complex(ki), public :: R2d15
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
      abb15(1)=sqrt(mT**2)
      abb15(2)=sqrt2**(-1)
      abb15(3)=es12**(-1)
      abb15(4)=spbk5k2**(-1)
      abb15(5)=spak2k5**(-1)
      abb15(6)=spak1k2**(-1)
      abb15(7)=spak2l3**(-1)
      abb15(8)=spbl3k2**(-1)
      abb15(9)=spbl4k2**(-1)
      abb15(10)=spak2l4**(-1)
      abb15(11)=c1-c2
      abb15(12)=spbk5k1**2
      abb15(13)=abb15(3)*abb15(4)
      abb15(14)=abb15(11)*abb15(12)*abb15(13)
      abb15(15)=gHT**2*i_*abb15(2)
      abb15(16)=abb15(15)*abb15(14)
      abb15(17)=abb15(16)*spak2l4
      abb15(13)=abb15(15)*abb15(13)*abb15(5)
      abb15(18)=abb15(11)*abb15(13)
      abb15(19)=-spbk5k1*abb15(18)
      abb15(20)=abb15(19)*spak2l4
      abb15(21)=-spak2l3*abb15(20)
      abb15(22)=abb15(21)*spbl3k1
      abb15(23)=spak2l4**2
      abb15(24)=-abb15(23)*abb15(19)
      abb15(25)=2.0_ki*spbl4k1
      abb15(26)=abb15(24)*abb15(25)
      abb15(17)=-abb15(17)+abb15(22)-abb15(26)
      abb15(22)=abb15(1)**2
      abb15(26)=abb15(22)*spbk5l4
      abb15(27)=-abb15(26)*abb15(17)
      abb15(28)=abb15(15)*spak2l3
      abb15(14)=-abb15(28)*abb15(14)
      abb15(21)=abb15(21)*spbl4k1
      abb15(14)=abb15(14)-abb15(21)
      abb15(21)=abb15(14)*spbk5l3
      abb15(13)=spak2l3*abb15(12)*abb15(13)
      abb15(29)=abb15(11)*spak2l4
      abb15(30)=spbl4l3*abb15(13)*abb15(29)
      abb15(30)=abb15(30)+abb15(21)
      abb15(30)=abb15(22)*abb15(30)
      abb15(27)=abb15(27)+abb15(30)
      abb15(27)=4.0_ki*abb15(27)
      abb15(17)=-spbk5l4*abb15(17)
      abb15(17)=abb15(21)+abb15(17)
      abb15(17)=4.0_ki*abb15(17)
      abb15(21)=4.0_ki*spbk5l4
      abb15(14)=abb15(14)*abb15(21)
      abb15(24)=-spbl3k1*abb15(24)*abb15(21)
      abb15(30)=abb15(19)*spak2l3
      abb15(31)=-abb15(30)*spbl3k1
      abb15(32)=-4.0_ki*abb15(20)
      abb15(33)=-spbl4k1*abb15(32)
      abb15(33)=abb15(31)-3.0_ki*abb15(16)+abb15(33)
      abb15(33)=4.0_ki*abb15(22)*abb15(33)
      abb15(25)=abb15(20)*abb15(25)
      abb15(16)=abb15(31)+abb15(25)-abb15(16)
      abb15(16)=4.0_ki*abb15(16)
      abb15(25)=spbl3k1*abb15(32)
      abb15(31)=2.0_ki*abb15(22)
      abb15(18)=abb15(31)*abb15(12)*spak2l4*abb15(18)
      abb15(34)=mH**2
      abb15(35)=abb15(5)*abb15(4)
      abb15(15)=abb15(35)*abb15(15)*spbk5k1*abb15(6)*abb15(7)*abb15(34)*abb15(8)
      abb15(23)=-spbk5l4*abb15(23)*abb15(11)*abb15(15)
      abb15(18)=abb15(18)+abb15(23)
      abb15(18)=4.0_ki*abb15(18)
      abb15(15)=4.0_ki*abb15(29)*abb15(15)
      abb15(23)=abb15(11)*abb15(28)
      abb15(12)=-abb15(12)*abb15(35)*abb15(23)
      abb15(11)=-abb15(13)*abb15(11)
      abb15(13)=es51-es34
      abb15(13)=abb15(11)*abb15(13)
      abb15(12)=abb15(12)+abb15(13)
      abb15(12)=abb15(10)*abb15(12)
      abb15(13)=abb15(23)*abb15(3)*abb15(5)*spbk5k1
      abb15(23)=-spbl4k1*abb15(13)
      abb15(12)=abb15(23)+abb15(12)
      abb15(23)=abb15(34)*abb15(9)
      abb15(12)=abb15(23)*abb15(12)
      abb15(11)=-abb15(11)*abb15(31)
      abb15(11)=abb15(11)+abb15(12)
      abb15(11)=4.0_ki*abb15(11)
      abb15(12)=abb15(26)*abb15(32)
      abb15(26)=-abb15(30)*spbk5l3
      abb15(28)=-abb15(22)*abb15(26)
      abb15(12)=abb15(12)+abb15(28)
      abb15(12)=4.0_ki*abb15(12)
      abb15(20)=-spbk5l4*abb15(20)
      abb15(20)=2.0_ki*abb15(20)-abb15(26)
      abb15(20)=4.0_ki*abb15(20)
      abb15(21)=abb15(30)*abb15(21)
      abb15(22)=24.0_ki*abb15(19)*abb15(22)
      abb15(19)=8.0_ki*abb15(19)
      abb15(13)=-4.0_ki*abb15(10)*abb15(13)*abb15(23)
      R2d15=0.0_ki
      rat2 = rat2 + R2d15
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='15' value='", &
          & R2d15, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd15h1
