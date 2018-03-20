module     p1_dg_hhd_abbrevd6h2
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_kinematics, only: epstensor
   use p1_dg_hhd_globalsh2
   implicit none
   private
   complex(ki), dimension(41), public :: abb6
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
      abb6(1)=sqrt2**(-1)
      abb6(2)=es51**(-1)
      abb6(3)=spbk2k1**(-1)
      abb6(4)=sqrt(mT**2)
      abb6(5)=spak2l4**(-1)
      abb6(6)=spbl4k2**(-1)
      abb6(7)=spbl3k2**(-1)
      abb6(8)=spak2l3**(-1)
      abb6(9)=spak1k2*spbk5k1
      abb6(10)=gHT**2*abb6(1)*abb6(2)*abb6(3)*c1*TR*i_
      abb6(11)=-16.0_ki/3.0_ki*abb6(10)*abb6(9)
      abb6(12)=abb6(5)*abb6(6)
      abb6(13)=abb6(12)*spak2l3
      abb6(14)=abb6(13)*spbk5k2
      abb6(15)=-spbl3k1*abb6(14)
      abb6(13)=-spbl3k2*abb6(13)
      abb6(13)=-1.0_ki+abb6(13)
      abb6(13)=spbk5k1*abb6(13)
      abb6(13)=abb6(15)+abb6(13)
      abb6(13)=spak1k2*abb6(13)
      abb6(15)=spak1k2*spbl3k1
      abb6(16)=abb6(7)*spbk5k2
      abb6(17)=-abb6(16)*abb6(15)
      abb6(18)=spbk5l4*spak2l4
      abb6(19)=abb6(18)*abb6(8)
      abb6(19)=abb6(19)+spbk5l3
      abb6(19)=abb6(19)*abb6(7)
      abb6(20)=es12*abb6(19)
      abb6(13)=abb6(20)+abb6(13)+abb6(17)
      abb6(17)=mH**2
      abb6(13)=abb6(13)*abb6(17)
      abb6(20)=abb6(4)**2
      abb6(21)=abb6(9)*abb6(20)
      abb6(22)=spak1l4*spbl4l3
      abb6(23)=spbk5k1*spak2l3
      abb6(24)=abb6(23)*abb6(22)
      abb6(25)=spbk5l4*spal3l4
      abb6(26)=abb6(15)*abb6(25)
      abb6(27)=spak2l3*spbk5l3
      abb6(28)=abb6(18)+2.0_ki*abb6(27)
      abb6(29)=-es12*abb6(28)
      abb6(13)=-2.0_ki*abb6(21)+abb6(13)+abb6(29)+abb6(24)+abb6(26)
      abb6(24)=4.0_ki*abb6(10)
      abb6(26)=abb6(24)*abb6(20)
      abb6(13)=abb6(13)*abb6(26)
      abb6(29)=abb6(7)*abb6(8)
      abb6(30)=3.0_ki*abb6(29)+2.0_ki*abb6(12)
      abb6(21)=-abb6(17)*abb6(30)*abb6(21)
      abb6(31)=abb6(17)*es12
      abb6(32)=-abb6(31)*abb6(19)
      abb6(21)=abb6(32)+abb6(21)
      abb6(32)=8.0_ki*abb6(10)
      abb6(21)=abb6(21)*abb6(32)
      abb6(33)=abb6(10)*abb6(20)
      abb6(34)=8.0_ki*abb6(33)
      abb6(28)=-abb6(28)*abb6(34)
      abb6(10)=abb6(10)*abb6(17)
      abb6(10)=16.0_ki*abb6(10)
      abb6(19)=-abb6(10)*abb6(19)
      abb6(18)=abb6(27)+abb6(18)
      abb6(27)=abb6(24)*es12
      abb6(35)=-abb6(18)*abb6(27)
      abb6(18)=-abb6(18)*abb6(32)
      abb6(9)=abb6(32)*abb6(9)
      abb6(36)=-spak1k2*spbk5l4*abb6(34)
      abb6(15)=-abb6(26)*abb6(15)
      abb6(37)=-12.0_ki*spbk5l3*abb6(33)*spak1k2
      abb6(38)=abb6(29)+abb6(12)
      abb6(38)=abb6(38)*abb6(31)
      abb6(39)=spak1l4*spbl4k1
      abb6(38)=abb6(38)+abb6(39)
      abb6(39)=spbl3k1*spak1l3
      abb6(40)=3.0_ki*es12+2.0_ki*abb6(39)+abb6(38)
      abb6(40)=abb6(40)*abb6(26)
      abb6(41)=abb6(29)*abb6(32)*abb6(31)
      abb6(10)=abb6(29)*abb6(10)
      abb6(38)=es12+abb6(39)+abb6(38)
      abb6(38)=abb6(38)*abb6(24)
      abb6(39)=abb6(17)*spak1k2
      abb6(12)=-spbl3k2*abb6(12)
      abb6(12)=abb6(12)-abb6(8)
      abb6(12)=abb6(12)*abb6(39)
      abb6(12)=abb6(22)+abb6(12)
      abb6(12)=abb6(12)*abb6(24)
      abb6(22)=-abb6(34)*spbk5k1*spak1l4
      abb6(14)=abb6(16)+abb6(14)
      abb6(16)=abb6(14)*abb6(31)
      abb6(31)=-es12*abb6(25)
      abb6(20)=spbk5k1*spak1l3*abb6(20)
      abb6(16)=-3.0_ki*abb6(20)+abb6(31)+abb6(16)
      abb6(16)=abb6(16)*abb6(24)
      abb6(14)=abb6(14)*abb6(17)
      abb6(14)=-abb6(25)+abb6(14)
      abb6(14)=abb6(14)*abb6(32)
      abb6(20)=-abb6(26)*abb6(39)*spbk5k2*abb6(30)
      abb6(17)=abb6(24)*abb6(17)
      abb6(25)=abb6(8)*spak1l3
      abb6(30)=spak1l4*spbl4k2*abb6(29)
      abb6(25)=abb6(25)+abb6(30)
      abb6(25)=abb6(25)*abb6(17)
      abb6(30)=24.0_ki*abb6(33)
      abb6(23)=abb6(26)*abb6(23)
      abb6(17)=abb6(29)*abb6(17)
      R2d6=abb6(11)
      rat2 = rat2 + R2d6
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='6' value='", &
          & R2d6, "'/>"
      end if
   end subroutine
end module p1_dg_hhd_abbrevd6h2
