module     p0_gg_hhg_abbrevd43h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(34), public :: abb43
   complex(ki), public :: R2d43
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
      abb43(1)=sqrt(mT**2)
      abb43(2)=sqrt2**(-1)
      abb43(3)=spak2k5**(-1)
      abb43(4)=spbk5k2**(-1)
      abb43(5)=spak1k2**(-1)
      abb43(6)=spak2l4**(-1)
      abb43(7)=spbl4k2**(-1)
      abb43(8)=spak2l3**(-1)
      abb43(9)=spbl3k2**(-1)
      abb43(10)=c1-c2
      abb43(11)=i_*abb43(3)
      abb43(12)=abb43(11)*abb43(4)*abb43(2)
      abb43(13)=abb43(1)*gHT
      abb43(13)=abb43(10)*abb43(12)*abb43(13)**2
      abb43(14)=-spak2l3*abb43(13)
      abb43(15)=2.0_ki*spbk5l4
      abb43(16)=abb43(15)*spbk5k1
      abb43(17)=spbl3k1*abb43(16)*spak2l4*abb43(14)
      abb43(18)=2.0_ki*spbk5k1
      abb43(19)=abb43(14)*abb43(18)
      abb43(20)=spak2l4*abb43(5)
      abb43(21)=-abb43(20)*abb43(14)
      abb43(22)=-spbk5l4*abb43(21)
      abb43(19)=abb43(19)+abb43(22)
      abb43(19)=2.0_ki*spbl3k1*abb43(19)
      abb43(14)=-abb43(5)*abb43(14)
      abb43(22)=-4.0_ki*spbl3k1*abb43(14)
      abb43(23)=-abb43(13)*spak2l4
      abb43(24)=abb43(23)*spbk5k1**2
      abb43(25)=abb43(21)*spbk5l3
      abb43(26)=-spbk5k1*abb43(25)
      abb43(24)=2.0_ki*abb43(24)+abb43(26)
      abb43(24)=2.0_ki*abb43(24)
      abb43(20)=-abb43(13)*abb43(20)
      abb43(26)=-abb43(20)*abb43(18)
      abb43(27)=gHT**2
      abb43(28)=abb43(27)*spak2l4
      abb43(29)=abb43(12)*abb43(5)
      abb43(30)=-abb43(10)*abb43(28)*abb43(29)
      abb43(31)=4.0_ki*spbk5k1
      abb43(32)=-abb43(30)*abb43(31)
      abb43(18)=abb43(30)*abb43(18)
      abb43(30)=2.0_ki*spbk5l3*abb43(30)
      abb43(21)=abb43(21)*abb43(16)
      abb43(31)=abb43(14)*abb43(31)
      abb43(28)=abb43(28)*abb43(2)
      abb43(33)=abb43(11)*spak2l3
      abb43(34)=abb43(28)*abb43(10)*abb43(33)*spbl3k1
      abb43(25)=abb43(25)+abb43(34)
      abb43(25)=spbk5l4*abb43(25)
      abb43(16)=-abb43(23)*abb43(16)
      abb43(16)=abb43(16)+abb43(25)
      abb43(16)=2.0_ki*abb43(16)
      abb43(23)=-spbl3k1*abb43(27)*abb43(10)
      abb43(12)=-abb43(15)*abb43(12)*spak2l3*abb43(23)
      abb43(25)=spbk5k1*abb43(13)
      abb43(20)=spbk5l4*abb43(20)
      abb43(20)=abb43(25)+abb43(20)
      abb43(14)=spbk5l3*abb43(14)
      abb43(14)=2.0_ki*abb43(20)+abb43(14)
      abb43(20)=mH**2
      abb43(25)=abb43(2)*abb43(6)*abb43(20)*abb43(7)
      abb43(23)=-abb43(33)*abb43(23)*abb43(25)
      abb43(14)=2.0_ki*abb43(14)+abb43(23)
      abb43(14)=2.0_ki*abb43(14)
      abb43(13)=-16.0_ki*abb43(5)*abb43(13)
      abb43(11)=abb43(11)*abb43(5)
      abb43(23)=abb43(28)*abb43(11)
      abb43(20)=2.0_ki*abb43(20)
      abb43(20)=-abb43(9)*abb43(8)*abb43(20)*abb43(23)*abb43(10)
      abb43(10)=abb43(10)*spak2l3
      abb43(15)=abb43(10)*abb43(15)
      abb43(23)=-abb43(23)*abb43(15)
      abb43(15)=-abb43(29)*abb43(27)*abb43(15)
      abb43(10)=-2.0_ki*abb43(11)*abb43(25)*abb43(10)*abb43(27)
      R2d43=0.0_ki
      rat2 = rat2 + R2d43
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='43' value='", &
          & R2d43, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd43h1
