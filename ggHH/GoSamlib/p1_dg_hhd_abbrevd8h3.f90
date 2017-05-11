module     p1_dg_hhd_abbrevd8h3
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_globalsh3
   implicit none
   private
   complex(ki), dimension(40), public :: abb8
   complex(ki), public :: R2d8
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dg_hhd_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_model
      use p1_dg_hhd_color, only: TR
      use p1_dg_hhd_globalsl1, only: epspow
      implicit none
      abb8(1)=sqrt(mT**2)
      abb8(2)=sqrt2**(-1)
      abb8(3)=es51**(-1)
      abb8(4)=spak1k2**(-1)
      abb8(5)=spak2l3**(-1)
      abb8(6)=spbl3k2**(-1)
      abb8(7)=spak2l4**(-1)
      abb8(8)=spbl4k2**(-1)
      abb8(9)=spak1l3*spbl3k2
      abb8(10)=abb8(7)*abb8(8)
      abb8(11)=abb8(9)*abb8(10)
      abb8(12)=abb8(5)*abb8(6)
      abb8(13)=abb8(12)*spbl4k2
      abb8(14)=abb8(13)*spak1l4
      abb8(15)=abb8(11)-abb8(14)
      abb8(16)=mH**2
      abb8(17)=abb8(15)*abb8(16)
      abb8(18)=abb8(17)-abb8(9)
      abb8(19)=abb8(1)**2
      abb8(18)=abb8(19)*abb8(18)
      abb8(20)=abb8(19)*spak1l4
      abb8(21)=spbl4k2*abb8(20)
      abb8(18)=-2.0_ki*abb8(21)+abb8(18)
      abb8(18)=spbk5k2*abb8(18)
      abb8(21)=abb8(4)*spak1l3
      abb8(22)=abb8(21)*spbk5k2
      abb8(23)=abb8(22)*abb8(19)
      abb8(24)=spak1l4*spbl4l3
      abb8(25)=-abb8(24)*abb8(23)
      abb8(18)=abb8(18)+abb8(25)
      abb8(25)=abb8(2)*abb8(3)*c1*TR*i_*gHT**2
      abb8(26)=4.0_ki*abb8(25)
      abb8(18)=abb8(18)*abb8(26)
      abb8(27)=abb8(26)*spbk5k2
      abb8(28)=-abb8(9)*abb8(27)
      abb8(27)=spak1l4*spbl4k2*abb8(27)
      abb8(29)=abb8(24)*abb8(22)
      abb8(30)=abb8(16)*spbk5k2
      abb8(15)=abb8(15)*abb8(30)
      abb8(15)=-2.0_ki*abb8(15)+abb8(29)
      abb8(15)=abb8(15)*abb8(26)
      abb8(9)=-abb8(9)-abb8(17)
      abb8(9)=spbk5k2*abb8(9)
      abb8(9)=abb8(9)+abb8(29)
      abb8(9)=abb8(9)*abb8(26)
      abb8(17)=2.0_ki*abb8(25)
      abb8(26)=spbl3k2*abb8(17)*abb8(21)
      abb8(29)=-abb8(19)*abb8(26)
      abb8(31)=-spbk5k2*spbl4k2*spal3l4
      abb8(23)=abb8(31)-abb8(23)
      abb8(23)=abb8(23)*abb8(17)
      abb8(22)=abb8(17)*abb8(22)
      abb8(31)=-4.0_ki*abb8(10)-3.0_ki*abb8(12)
      abb8(31)=abb8(19)*abb8(31)
      abb8(32)=-spak2l4*abb8(13)
      abb8(31)=-1.0_ki+abb8(32)+abb8(31)
      abb8(31)=abb8(31)*abb8(16)
      abb8(31)=-3.0_ki*abb8(19)+abb8(31)
      abb8(32)=2.0_ki*spbk5k2
      abb8(31)=abb8(31)*abb8(32)
      abb8(33)=abb8(19)*spbk5l3
      abb8(34)=-spbl4l3*spak2l4*spbk5k2
      abb8(33)=abb8(34)-5.0_ki*abb8(33)
      abb8(33)=spak1l3*abb8(33)
      abb8(20)=spbk5l4*abb8(20)
      abb8(20)=-8.0_ki*abb8(20)+abb8(33)
      abb8(20)=abb8(4)*abb8(20)
      abb8(20)=abb8(31)+abb8(20)
      abb8(20)=abb8(20)*abb8(17)
      abb8(31)=abb8(12)*abb8(16)
      abb8(31)=abb8(31)+1.0_ki
      abb8(33)=-spbk5k2*abb8(31)
      abb8(34)=abb8(21)*spbk5l3
      abb8(33)=abb8(33)-abb8(34)
      abb8(35)=8.0_ki*abb8(25)
      abb8(33)=abb8(33)*abb8(35)
      abb8(36)=abb8(10)*abb8(16)
      abb8(37)=abb8(36)*spbk5k2
      abb8(38)=spak1l4*spbk5l4
      abb8(39)=abb8(4)*abb8(38)
      abb8(39)=abb8(37)+abb8(39)
      abb8(39)=abb8(39)*abb8(35)
      abb8(38)=abb8(12)*abb8(38)
      abb8(10)=abb8(10)*spbk5l3
      abb8(40)=-spak1l3*abb8(10)
      abb8(38)=abb8(38)+abb8(40)
      abb8(38)=abb8(4)*abb8(38)*abb8(16)
      abb8(38)=-abb8(37)+abb8(38)
      abb8(35)=abb8(38)*abb8(35)
      abb8(31)=-abb8(31)*abb8(32)
      abb8(31)=abb8(31)-3.0_ki*abb8(34)
      abb8(31)=abb8(31)*abb8(17)
      abb8(32)=2.0_ki*abb8(7)
      abb8(13)=-abb8(13)-abb8(32)
      abb8(13)=abb8(13)*abb8(16)
      abb8(21)=abb8(21)*spbl4l3
      abb8(13)=abb8(13)-abb8(21)
      abb8(13)=abb8(13)*abb8(17)
      abb8(21)=-spbl3k2*abb8(36)
      abb8(24)=abb8(4)*abb8(24)
      abb8(21)=abb8(21)+abb8(24)
      abb8(17)=abb8(21)*abb8(17)
      abb8(21)=spak1l4*abb8(32)
      abb8(11)=abb8(11)+abb8(14)+abb8(21)
      abb8(14)=2.0_ki*abb8(4)
      abb8(14)=abb8(14)*abb8(25)
      abb8(16)=abb8(14)*abb8(16)
      abb8(11)=abb8(11)*abb8(16)
      abb8(21)=abb8(25)*abb8(4)
      abb8(19)=24.0_ki*abb8(19)*abb8(21)
      abb8(24)=16.0_ki*abb8(21)
      abb8(25)=abb8(36)*abb8(24)
      abb8(21)=8.0_ki*abb8(21)
      abb8(12)=abb8(12)*spak2l4
      abb8(12)=abb8(12)+2.0_ki*abb8(8)
      abb8(30)=abb8(12)*abb8(30)
      abb8(32)=spbk5l3*spal3l4
      abb8(30)=abb8(32)+abb8(30)
      abb8(30)=abb8(30)*abb8(14)
      abb8(32)=spak2l3*abb8(37)
      abb8(34)=-spbk5l4*spal3l4
      abb8(32)=abb8(34)+abb8(32)
      abb8(14)=abb8(32)*abb8(14)
      abb8(12)=-spbk5l4*abb8(12)
      abb8(10)=-spak2l3*abb8(10)
      abb8(10)=abb8(10)+abb8(12)
      abb8(10)=abb8(10)*abb8(16)
      R2d8=0.0_ki
      rat2 = rat2 + R2d8
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='8' value='", &
          & R2d8, "'/>"
      end if
   end subroutine
end module p1_dg_hhd_abbrevd8h3
