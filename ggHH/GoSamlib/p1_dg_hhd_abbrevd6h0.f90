module     p1_dg_hhd_abbrevd6h0
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_globalsh0
   implicit none
   private
   complex(ki), dimension(40), public :: abb6
   complex(ki), public :: R2d6
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
      abb6(1)=sqrt(mT**2)
      abb6(2)=sqrt2**(-1)
      abb6(3)=es51**(-1)
      abb6(4)=spbk2k1**(-1)
      abb6(5)=spak2l3**(-1)
      abb6(6)=spbl3k2**(-1)
      abb6(7)=spak2l4**(-1)
      abb6(8)=spbl4k2**(-1)
      abb6(9)=spbl4k1*spak2l4
      abb6(10)=abb6(5)*abb6(6)
      abb6(11)=abb6(9)*abb6(10)
      abb6(12)=abb6(7)*abb6(8)
      abb6(13)=abb6(12)*spak2l3
      abb6(14)=abb6(13)*spbl3k1
      abb6(15)=abb6(14)-abb6(11)
      abb6(16)=mH**2
      abb6(17)=abb6(15)*abb6(16)
      abb6(18)=spbl3k1*spak2l3
      abb6(19)=-abb6(17)-2.0_ki*abb6(18)-abb6(9)
      abb6(20)=abb6(1)**2
      abb6(19)=spak2k5*abb6(20)*abb6(19)
      abb6(21)=spbl3k1*spal3l4
      abb6(22)=abb6(4)*spbl4k1
      abb6(23)=abb6(22)*spak2k5
      abb6(24)=abb6(21)*abb6(23)
      abb6(25)=abb6(20)*abb6(24)
      abb6(19)=abb6(19)+abb6(25)
      abb6(25)=abb6(2)*abb6(3)*c1*TR*i_*gHT**2
      abb6(26)=4.0_ki*abb6(25)
      abb6(19)=abb6(19)*abb6(26)
      abb6(27)=abb6(26)*spak2k5
      abb6(18)=abb6(18)*abb6(27)
      abb6(27)=-abb6(9)*abb6(27)
      abb6(28)=abb6(16)*spak2k5
      abb6(15)=abb6(15)*abb6(28)
      abb6(15)=2.0_ki*abb6(15)-abb6(24)
      abb6(15)=abb6(15)*abb6(26)
      abb6(9)=-abb6(9)+abb6(17)
      abb6(9)=spak2k5*abb6(9)
      abb6(9)=abb6(9)-abb6(24)
      abb6(9)=abb6(9)*abb6(26)
      abb6(17)=2.0_ki*abb6(25)
      abb6(24)=spak2l4*abb6(17)*abb6(22)
      abb6(26)=-abb6(20)*abb6(24)
      abb6(29)=abb6(23)*abb6(20)
      abb6(30)=spak2k5*spak2l3*spbl4l3
      abb6(29)=abb6(30)-abb6(29)
      abb6(29)=abb6(29)*abb6(17)
      abb6(23)=abb6(17)*abb6(23)
      abb6(30)=-4.0_ki*abb6(10)-3.0_ki*abb6(12)
      abb6(30)=abb6(20)*abb6(30)
      abb6(31)=-spbl3k2*abb6(13)
      abb6(30)=-1.0_ki+abb6(31)+abb6(30)
      abb6(30)=abb6(30)*abb6(16)
      abb6(30)=-3.0_ki*abb6(20)+abb6(30)
      abb6(31)=2.0_ki*spak2k5
      abb6(30)=abb6(30)*abb6(31)
      abb6(32)=spbl3k1*spal3k5
      abb6(33)=spbl4k1*spal4k5
      abb6(34)=-8.0_ki*abb6(32)-5.0_ki*abb6(33)
      abb6(34)=abb6(20)*abb6(34)
      abb6(35)=spal3l4*spbl3k2*spak2k5*spbl4k1
      abb6(34)=abb6(35)+abb6(34)
      abb6(34)=abb6(4)*abb6(34)
      abb6(30)=abb6(30)+abb6(34)
      abb6(30)=abb6(30)*abb6(17)
      abb6(34)=abb6(10)*abb6(16)
      abb6(35)=abb6(34)*spak2k5
      abb6(36)=abb6(4)*abb6(32)
      abb6(36)=abb6(35)+abb6(36)
      abb6(37)=8.0_ki*abb6(25)
      abb6(36)=abb6(36)*abb6(37)
      abb6(38)=abb6(12)*abb6(16)
      abb6(38)=abb6(38)+1.0_ki
      abb6(39)=-spak2k5*abb6(38)
      abb6(40)=abb6(22)*spal4k5
      abb6(39)=abb6(39)-abb6(40)
      abb6(39)=abb6(39)*abb6(37)
      abb6(32)=abb6(12)*abb6(32)
      abb6(10)=-abb6(10)*abb6(33)
      abb6(10)=abb6(32)+abb6(10)
      abb6(10)=abb6(4)*abb6(10)*abb6(16)
      abb6(10)=-abb6(35)+abb6(10)
      abb6(10)=abb6(10)*abb6(37)
      abb6(31)=-abb6(38)*abb6(31)
      abb6(31)=abb6(31)-3.0_ki*abb6(40)
      abb6(31)=abb6(31)*abb6(17)
      abb6(32)=-spak2l4*abb6(34)
      abb6(21)=-abb6(4)*abb6(21)
      abb6(21)=abb6(32)+abb6(21)
      abb6(21)=abb6(21)*abb6(17)
      abb6(32)=2.0_ki*abb6(6)
      abb6(13)=-abb6(13)-abb6(32)
      abb6(13)=abb6(13)*abb6(16)
      abb6(22)=spal3l4*abb6(22)
      abb6(13)=abb6(13)+abb6(22)
      abb6(13)=abb6(13)*abb6(17)
      abb6(17)=spbl3k1*abb6(32)
      abb6(11)=abb6(11)+abb6(14)+abb6(17)
      abb6(14)=2.0_ki*abb6(4)
      abb6(14)=abb6(14)*abb6(25)
      abb6(16)=abb6(14)*abb6(16)
      abb6(11)=abb6(11)*abb6(16)
      abb6(17)=abb6(25)*abb6(4)
      abb6(20)=24.0_ki*abb6(20)*abb6(17)
      abb6(22)=16.0_ki*abb6(17)
      abb6(25)=abb6(34)*abb6(22)
      abb6(17)=8.0_ki*abb6(17)
      abb6(32)=spbl4k2*abb6(35)
      abb6(33)=spal3k5*spbl4l3
      abb6(32)=abb6(33)+abb6(32)
      abb6(32)=abb6(32)*abb6(14)
      abb6(12)=abb6(12)*spbl3k2
      abb6(33)=abb6(12)+2.0_ki*abb6(5)
      abb6(28)=abb6(33)*abb6(28)
      abb6(33)=-spal4k5*spbl4l3
      abb6(28)=abb6(33)+abb6(28)
      abb6(14)=abb6(28)*abb6(14)
      abb6(12)=-spal3k5*abb6(12)
      abb6(28)=-abb6(6)*spal4k5*spbl4k2
      abb6(28)=-2.0_ki*spal3k5+abb6(28)
      abb6(28)=abb6(5)*abb6(28)
      abb6(12)=abb6(12)+abb6(28)
      abb6(12)=abb6(12)*abb6(16)
      R2d6=0.0_ki
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module p1_dg_hhd_abbrevd6h0
