module     p0_gg_hhg_abbrevd61h1
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh1
   implicit none
   private
   complex(ki), dimension(45), public :: abb61
   complex(ki), public :: R2d61
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
      abb61(1)=sqrt(mT**2)
      abb61(2)=sqrt2**(-1)
      abb61(3)=spak2k5**(-1)
      abb61(4)=spbk5k2**(-1)
      abb61(5)=spak1k2**(-1)
      abb61(6)=spak2l3**(-1)
      abb61(7)=spbl3k2**(-1)
      abb61(8)=spak2l4**(-1)
      abb61(9)=spbl4k2**(-1)
      abb61(10)=spbk5k1**2
      abb61(11)=gHT**2*abb61(2)*abb61(3)
      abb61(12)=abb61(11)*i_*abb61(4)
      abb61(13)=2.0_ki*abb61(12)
      abb61(14)=abb61(10)*abb61(13)
      abb61(15)=c2-c1
      abb61(16)=abb61(15)*abb61(14)
      abb61(17)=spak1k2*spbl4k1
      abb61(18)=spak2l3*spbl4l3
      abb61(17)=abb61(17)+abb61(18)
      abb61(19)=abb61(1)**2
      abb61(20)=abb61(19)*spak2l4
      abb61(17)=abb61(17)*abb61(20)
      abb61(21)=abb61(19)*spak2l3
      abb61(22)=2.0_ki*abb61(21)
      abb61(23)=abb61(22)*spbl3k1
      abb61(24)=abb61(23)*spak1k2
      abb61(17)=abb61(17)+abb61(24)
      abb61(17)=-abb61(17)*abb61(16)
      abb61(24)=spak2l4*spak1k2
      abb61(25)=abb61(24)*spbl4k1
      abb61(26)=spak2l3*spbl3k1
      abb61(27)=abb61(26)*spak1k2
      abb61(25)=abb61(25)+abb61(27)
      abb61(25)=-abb61(25)*abb61(16)
      abb61(16)=abb61(24)*spbl4l3*abb61(16)
      abb61(18)=abb61(5)*abb61(18)*abb61(20)
      abb61(24)=abb61(20)*spbl4k1
      abb61(23)=abb61(24)+abb61(23)
      abb61(18)=abb61(18)+2.0_ki*abb61(23)
      abb61(24)=abb61(13)*spbk5k1
      abb61(27)=abb61(15)*abb61(24)
      abb61(18)=abb61(18)*abb61(27)
      abb61(28)=abb61(12)*spbk5k1
      abb61(28)=4.0_ki*abb61(28)
      abb61(29)=abb61(15)*abb61(28)
      abb61(30)=spak2l4*spbl4k1
      abb61(26)=abb61(30)+abb61(26)
      abb61(30)=abb61(26)*abb61(29)
      abb61(31)=spak2l4*spbl4l3
      abb61(32)=-abb61(31)*abb61(29)
      abb61(33)=-abb61(5)*abb61(15)
      abb61(34)=abb61(33)*abb61(13)
      abb61(23)=abb61(23)*abb61(34)
      abb61(26)=abb61(26)*abb61(34)
      abb61(31)=-abb61(31)*abb61(34)
      abb61(35)=4.0_ki*abb61(12)
      abb61(10)=abb61(15)*abb61(10)*abb61(35)
      abb61(36)=-abb61(20)*abb61(10)
      abb61(37)=abb61(33)*abb61(28)
      abb61(38)=-abb61(20)*abb61(37)
      abb61(10)=-abb61(21)*abb61(10)
      abb61(39)=abb61(15)*spak1k2
      abb61(14)=-abb61(39)*abb61(14)
      abb61(21)=-abb61(21)*abb61(37)
      abb61(20)=abb61(20)*spbk5l4
      abb61(22)=abb61(22)*spbk5l3
      abb61(20)=abb61(20)+abb61(22)
      abb61(22)=-abb61(20)*abb61(15)
      abb61(37)=mH**2
      abb61(40)=abb61(37)*abb61(7)
      abb61(41)=abb61(40)*abb61(6)
      abb61(42)=abb61(41)*spak2l4
      abb61(43)=abb61(42)*spbl4k2
      abb61(43)=abb61(43)+abb61(37)
      abb61(44)=abb61(43)+3.0_ki*abb61(19)
      abb61(45)=abb61(15)*spbk5k1
      abb61(44)=abb61(44)*spak1k2*abb61(45)
      abb61(22)=abb61(44)+abb61(22)
      abb61(22)=abb61(22)*abb61(24)
      abb61(40)=abb61(40)*spbk5l3
      abb61(42)=abb61(42)*spbk5l4
      abb61(40)=abb61(40)+abb61(42)
      abb61(42)=abb61(40)*abb61(15)
      abb61(39)=abb61(39)*spbk5k1
      abb61(44)=-abb61(41)*abb61(39)
      abb61(42)=abb61(44)+abb61(42)
      abb61(28)=abb61(42)*abb61(28)
      abb61(42)=spak2l3*spbk5l3
      abb61(44)=spak2l4*spbk5l4
      abb61(42)=abb61(42)+abb61(44)
      abb61(44)=-abb61(42)*abb61(15)
      abb61(39)=abb61(39)+abb61(44)
      abb61(24)=abb61(39)*abb61(24)
      abb61(20)=-abb61(20)*abb61(33)
      abb61(39)=9.0_ki*abb61(19)+2.0_ki*abb61(43)
      abb61(39)=-abb61(39)*abb61(45)
      abb61(20)=abb61(39)+abb61(20)
      abb61(20)=abb61(20)*abb61(13)
      abb61(39)=abb61(40)*abb61(33)
      abb61(40)=3.0_ki*spbk5k1
      abb61(40)=abb61(15)*abb61(40)
      abb61(44)=abb61(41)*abb61(40)
      abb61(39)=abb61(44)+abb61(39)
      abb61(39)=abb61(39)*abb61(35)
      abb61(42)=-abb61(42)*abb61(33)
      abb61(40)=-abb61(40)+abb61(42)
      abb61(13)=abb61(40)*abb61(13)
      abb61(19)=abb61(43)+6.0_ki*abb61(19)
      abb61(19)=-abb61(19)*abb61(34)
      abb61(12)=8.0_ki*abb61(12)*abb61(41)*abb61(33)
      abb61(35)=-abb61(33)*abb61(35)
      abb61(40)=abb61(9)*spak2l3*abb61(8)
      abb61(40)=abb61(40)+abb61(7)
      abb61(37)=abb61(40)*abb61(37)
      abb61(40)=abb61(4)*spbk5l4*spal3l4
      abb61(37)=abb61(40)-abb61(37)
      abb61(11)=2.0_ki*abb61(11)
      abb61(11)=abb61(11)*i_
      abb61(15)=abb61(11)*spbk5k1*abb61(15)*abb61(37)
      abb61(11)=abb61(11)*abb61(33)*abb61(37)
      R2d61=0.0_ki
      rat2 = rat2 + R2d61
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='61' value='", &
          & R2d61, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd61h1
