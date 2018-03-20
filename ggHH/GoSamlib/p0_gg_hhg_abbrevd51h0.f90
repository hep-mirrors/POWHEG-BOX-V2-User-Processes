module     p0_gg_hhg_abbrevd51h0
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh0
   implicit none
   private
   complex(ki), dimension(35), public :: abb51
   complex(ki), public :: R2d51
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
      abb51(1)=sqrt(mT**2)
      abb51(2)=sqrt2**(-1)
      abb51(3)=spbk2k1**(-1)
      abb51(4)=spak2k5**(-1)
      abb51(5)=spbk5k2**(-1)
      abb51(6)=spak2l3**(-1)
      abb51(7)=spbl3k2**(-1)
      abb51(8)=c1-c2
      abb51(9)=gHT**2*i_*abb51(3)
      abb51(10)=-abb51(9)*abb51(8)
      abb51(11)=abb51(1)**4
      abb51(12)=abb51(4)*abb51(2)
      abb51(13)=abb51(12)*spak1k2**2
      abb51(14)=-spbk5k1*abb51(13)*abb51(11)*abb51(10)
      abb51(15)=abb51(1)**2
      abb51(16)=abb51(8)*abb51(15)*abb51(9)
      abb51(13)=abb51(13)*abb51(16)
      abb51(17)=es12*spbk5k1
      abb51(18)=-abb51(13)*abb51(17)
      abb51(19)=abb51(12)*spak1k2
      abb51(16)=-abb51(19)*abb51(16)
      abb51(20)=abb51(16)*es12
      abb51(19)=-abb51(19)*abb51(10)
      abb51(11)=-abb51(11)*abb51(19)
      abb51(21)=-abb51(20)+abb51(11)
      abb51(22)=spak2l3*spbk5l3
      abb51(21)=abb51(21)*abb51(22)
      abb51(14)=abb51(21)+abb51(14)+abb51(18)
      abb51(18)=es51-es34
      abb51(21)=-abb51(22)*abb51(16)*abb51(18)
      abb51(23)=mH**2*abb51(7)*abb51(6)
      abb51(24)=abb51(23)*abb51(17)
      abb51(25)=spbk5k2*spak2l3
      abb51(26)=-spbl3k1*abb51(25)
      abb51(24)=abb51(26)+abb51(24)
      abb51(24)=abb51(13)*abb51(24)
      abb51(15)=-abb51(15)*abb51(8)
      abb51(9)=abb51(9)*abb51(12)*abb51(5)
      abb51(26)=abb51(9)*spak1k2
      abb51(27)=-abb51(26)*abb51(15)
      abb51(28)=abb51(27)*abb51(17)
      abb51(29)=spak1l3*spbk5l3*abb51(28)
      abb51(14)=abb51(29)+2.0_ki*abb51(14)+abb51(24)+abb51(21)
      abb51(14)=2.0_ki*abb51(14)
      abb51(21)=abb51(13)*spbk5k1
      abb51(21)=4.0_ki*abb51(21)
      abb51(24)=abb51(23)-1.0_ki
      abb51(29)=-abb51(24)*abb51(21)
      abb51(30)=es12+abb51(18)
      abb51(30)=spbk5l3*abb51(27)*abb51(30)
      abb51(31)=-spbl3k1*abb51(13)
      abb51(30)=abb51(31)+abb51(30)
      abb51(30)=2.0_ki*abb51(30)
      abb51(31)=abb51(23)*abb51(16)
      abb51(32)=-abb51(31)*abb51(18)
      abb51(11)=2.0_ki*abb51(11)-abb51(20)
      abb51(11)=3.0_ki*abb51(11)+abb51(32)
      abb51(11)=2.0_ki*abb51(11)
      abb51(20)=-abb51(31)+abb51(16)
      abb51(20)=8.0_ki*abb51(20)
      abb51(31)=-8.0_ki*abb51(16)
      abb51(32)=4.0_ki*abb51(19)
      abb51(33)=spak1l3*spbk5k1
      abb51(25)=abb51(33)-abb51(25)
      abb51(25)=2.0_ki*abb51(16)*abb51(25)
      abb51(16)=-4.0_ki*abb51(16)
      abb51(13)=2.0_ki*spbk5k2*abb51(13)
      abb51(15)=-abb51(9)*abb51(15)
      abb51(33)=abb51(15)*es12
      abb51(34)=abb51(22)*abb51(33)
      abb51(28)=abb51(28)+abb51(34)
      abb51(28)=2.0_ki*abb51(28)
      abb51(9)=-abb51(9)*abb51(8)
      abb51(18)=abb51(18)*abb51(9)
      abb51(34)=abb51(9)*es12
      abb51(35)=-abb51(18)-2.0_ki*abb51(15)-abb51(34)
      abb51(22)=abb51(22)*abb51(35)
      abb51(27)=spbk5k1*abb51(27)
      abb51(8)=-abb51(26)*abb51(8)
      abb51(26)=abb51(8)*abb51(17)
      abb51(35)=-abb51(26)*abb51(24)
      abb51(19)=-spbl3k1*spak2l3*abb51(19)
      abb51(19)=abb51(19)+2.0_ki*abb51(27)+abb51(22)+abb51(35)
      abb51(19)=4.0_ki*abb51(19)
      abb51(22)=abb51(8)*spbk5k1
      abb51(22)=8.0_ki*abb51(22)
      abb51(27)=abb51(24)*abb51(22)
      abb51(26)=2.0_ki*abb51(26)
      abb51(35)=-spbk5l3*abb51(5)*abb51(2)*abb51(10)
      abb51(8)=spbl3k1*abb51(8)
      abb51(8)=abb51(35)+abb51(8)
      abb51(8)=4.0_ki*abb51(8)
      abb51(33)=6.0_ki*abb51(33)
      abb51(18)=abb51(34)-abb51(18)
      abb51(18)=abb51(23)*abb51(18)
      abb51(23)=2.0_ki*abb51(34)
      abb51(18)=-abb51(23)+abb51(18)
      abb51(18)=4.0_ki*abb51(18)
      abb51(24)=-16.0_ki*abb51(9)*abb51(24)
      abb51(34)=abb51(9)*spak1l3
      abb51(17)=-2.0_ki*abb51(17)*abb51(34)
      abb51(10)=-spak2l3*abb51(12)*abb51(10)
      abb51(12)=spbk5k1*abb51(34)
      abb51(10)=abb51(10)+abb51(12)
      abb51(10)=4.0_ki*abb51(10)
      abb51(12)=-8.0_ki*abb51(9)
      abb51(15)=-12.0_ki*abb51(15)
      abb51(9)=4.0_ki*abb51(9)
      R2d51=0.0_ki
      rat2 = rat2 + R2d51
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='51' value='", &
          & R2d51, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd51h0
