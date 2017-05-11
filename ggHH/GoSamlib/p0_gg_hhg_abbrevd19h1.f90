module     p0_gg_hhg_abbrevd19h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(37), public :: abb19
   complex(ki), public :: R2d19
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
      abb19(1)=sqrt(mT**2)
      abb19(2)=sqrt2**(-1)
      abb19(3)=es51**(-1)
      abb19(4)=spak1k2**(-1)
      abb19(5)=spbk5k2**(-1)
      abb19(6)=spak2k5**(-1)
      abb19(7)=spak2l3**(-1)
      abb19(8)=spbl3k2**(-1)
      abb19(9)=spak2l4**(-1)
      abb19(10)=spbl4k2**(-1)
      abb19(11)=gHT**2*i_*abb19(2)
      abb19(12)=abb19(3)*abb19(5)
      abb19(13)=abb19(11)*abb19(12)*spbk5k1
      abb19(14)=c1-c2
      abb19(15)=abb19(14)*abb19(13)*spak2l4
      abb19(16)=spak2l3*abb19(15)
      abb19(17)=spbk5l3*abb19(4)
      abb19(18)=abb19(16)*abb19(17)
      abb19(19)=spak2l3*abb19(6)
      abb19(20)=abb19(19)*abb19(15)
      abb19(21)=abb19(20)*spbl3k1
      abb19(22)=-abb19(21)+2.0_ki*abb19(18)
      abb19(22)=spbk5l4*abb19(22)
      abb19(23)=abb19(20)*spbl4k1
      abb19(24)=abb19(23)*spbk5l3
      abb19(22)=-abb19(24)+abb19(22)
      abb19(22)=4.0_ki*abb19(22)
      abb19(24)=abb19(1)**2
      abb19(25)=-abb19(24)*abb19(22)
      abb19(19)=-abb19(13)*abb19(14)*abb19(19)
      abb19(26)=abb19(19)*spbl3k1
      abb19(27)=abb19(6)*abb19(15)
      abb19(28)=abb19(27)*spbl4k1
      abb19(26)=abb19(26)+abb19(28)
      abb19(13)=abb19(14)*abb19(13)
      abb19(28)=spak2l3*abb19(13)
      abb19(29)=abb19(28)*abb19(17)
      abb19(30)=spbk5l4*abb19(4)
      abb19(31)=-abb19(15)*abb19(30)
      abb19(31)=abb19(29)+abb19(31)
      abb19(31)=8.0_ki*abb19(31)+7.0_ki*abb19(26)
      abb19(31)=abb19(24)*abb19(31)
      abb19(32)=es34*abb19(4)
      abb19(33)=es12*abb19(4)
      abb19(33)=abb19(33)-abb19(32)
      abb19(20)=abb19(20)*abb19(33)
      abb19(11)=abb19(11)*abb19(6)
      abb19(33)=abb19(11)*spak2l3
      abb19(34)=abb19(5)*spbk5k1
      abb19(35)=abb19(33)*abb19(34)
      abb19(36)=-spak2l4*abb19(14)
      abb19(37)=-abb19(4)*abb19(35)*abb19(36)
      abb19(20)=abb19(37)+abb19(20)
      abb19(20)=spbl4l3*abb19(20)
      abb19(16)=-abb19(16)*abb19(30)
      abb19(16)=abb19(16)+abb19(23)
      abb19(16)=spbl3k2*abb19(16)
      abb19(18)=-abb19(18)+abb19(21)
      abb19(18)=spbl4k2*abb19(18)
      abb19(16)=abb19(18)+abb19(16)+abb19(20)+abb19(31)
      abb19(16)=2.0_ki*abb19(16)
      abb19(18)=8.0_ki*abb19(29)
      abb19(20)=2.0_ki*abb19(26)
      abb19(21)=spbl4k1*abb19(19)
      abb19(23)=abb19(28)*abb19(30)
      abb19(21)=abb19(23)+abb19(21)
      abb19(21)=4.0_ki*abb19(21)
      abb19(15)=abb19(15)*abb19(17)
      abb19(17)=-spbl3k1*abb19(27)
      abb19(15)=abb19(15)+abb19(17)
      abb19(15)=4.0_ki*abb19(15)
      abb19(17)=8.0_ki*abb19(24)
      abb19(13)=abb19(13)*abb19(17)
      abb19(17)=spbl3k2*abb19(28)
      abb19(17)=abb19(13)+abb19(17)
      abb19(17)=4.0_ki*abb19(4)*abb19(17)
      abb19(11)=abb19(36)*abb19(11)
      abb19(12)=abb19(12)*spbk5k1**2
      abb19(23)=-abb19(12)*abb19(11)
      abb19(26)=2.0_ki*abb19(24)
      abb19(28)=-abb19(23)*abb19(26)
      abb19(23)=2.0_ki*abb19(23)
      abb19(11)=-abb19(34)*abb19(11)
      abb19(29)=-es34*abb19(27)
      abb19(11)=abb19(11)+abb19(29)
      abb19(29)=abb19(4)*mH**2
      abb19(11)=4.0_ki*abb19(8)*abb19(7)*abb19(29)*abb19(11)
      abb19(12)=-abb19(14)*abb19(12)*abb19(33)
      abb19(26)=-abb19(12)*abb19(26)
      abb19(12)=2.0_ki*abb19(12)
      abb19(30)=-abb19(19)*abb19(32)
      abb19(31)=es34*abb19(19)
      abb19(14)=abb19(14)*abb19(35)
      abb19(31)=abb19(14)+abb19(31)
      abb19(29)=abb19(10)*abb19(9)*abb19(29)*abb19(31)
      abb19(14)=-abb19(4)*abb19(14)
      abb19(14)=abb19(29)+abb19(14)+abb19(30)
      abb19(14)=4.0_ki*abb19(14)
      abb19(29)=abb19(19)*spbk5l3
      abb19(27)=abb19(27)*spbk5l4
      abb19(27)=abb19(27)+abb19(29)
      abb19(24)=-abb19(24)*abb19(27)
      abb19(30)=-spbl4l3*abb19(33)*abb19(3)*spbk5k1*abb19(36)
      abb19(24)=abb19(30)+abb19(24)
      abb19(24)=2.0_ki*abb19(24)
      abb19(29)=-8.0_ki*abb19(29)
      abb19(27)=2.0_ki*abb19(27)
      abb19(19)=-spbl3k2*abb19(19)
      abb19(13)=abb19(6)*abb19(13)
      abb19(13)=abb19(13)+abb19(19)
      abb19(13)=4.0_ki*abb19(13)
      R2d19=0.0_ki
      rat2 = rat2 + R2d19
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='19' value='", &
          & R2d19, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd19h1
