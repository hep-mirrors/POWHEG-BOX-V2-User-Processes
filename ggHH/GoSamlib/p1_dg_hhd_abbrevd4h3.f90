module     p1_dg_hhd_abbrevd4h3
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_kinematics, only: epstensor
   use p1_dg_hhd_globalsh3
   implicit none
   private
   complex(ki), dimension(35), public :: abb4
   complex(ki), public :: R2d4
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
      abb4(1)=sqrt(mT**2)
      abb4(2)=sqrt2**(-1)
      abb4(3)=es51**(-1)
      abb4(4)=spak1k2**(-1)
      abb4(5)=spak2l3**(-1)
      abb4(6)=spbl3k2**(-1)
      abb4(7)=spak2l4**(-1)
      abb4(8)=spbl4k2**(-1)
      abb4(9)=spak1l3*spbl3k2
      abb4(10)=abb4(7)*abb4(8)
      abb4(11)=abb4(10)*abb4(9)
      abb4(12)=spak1l4*spbl4k2
      abb4(13)=abb4(5)*abb4(6)
      abb4(14)=abb4(13)*abb4(12)
      abb4(11)=abb4(11)+abb4(14)
      abb4(14)=mH**2
      abb4(11)=abb4(11)*abb4(14)
      abb4(11)=abb4(11)-2.0_ki*abb4(9)-abb4(12)
      abb4(15)=abb4(1)**2
      abb4(16)=abb4(15)*spbk5k2
      abb4(11)=abb4(11)*abb4(16)
      abb4(17)=spbk5l4*spbl3k2
      abb4(18)=spbl4k2*spbk5l3
      abb4(17)=abb4(17)+abb4(18)
      abb4(15)=abb4(15)*abb4(4)
      abb4(17)=spak1l3*abb4(17)*abb4(15)*spak1l4
      abb4(11)=abb4(17)+abb4(11)
      abb4(17)=abb4(2)*abb4(3)*c1*TR*i_*gHT**2
      abb4(18)=4.0_ki*abb4(17)
      abb4(11)=abb4(11)*abb4(18)
      abb4(19)=abb4(13)*abb4(14)
      abb4(20)=abb4(17)*spbk5k2
      abb4(20)=8.0_ki*abb4(20)
      abb4(21)=abb4(20)*abb4(19)
      abb4(22)=abb4(12)*abb4(21)
      abb4(23)=abb4(18)*spbk5k2
      abb4(24)=-abb4(12)*abb4(23)
      abb4(25)=abb4(18)*spbk5l3
      abb4(26)=abb4(12)*abb4(25)
      abb4(17)=abb4(17)*abb4(15)
      abb4(9)=-abb4(9)+abb4(12)
      abb4(9)=8.0_ki*abb4(9)*abb4(17)
      abb4(12)=abb4(23)*abb4(15)
      abb4(27)=-spak1l4*abb4(12)
      abb4(21)=abb4(4)*spak1l4*abb4(21)
      abb4(28)=abb4(18)*spak1l4
      abb4(29)=spbk5k2*abb4(4)
      abb4(30)=-abb4(29)*abb4(28)
      abb4(28)=abb4(4)*spbk5l3*abb4(28)
      abb4(12)=spak1l3*abb4(12)
      abb4(31)=abb4(10)*abb4(14)
      abb4(32)=-1.0_ki+abb4(31)
      abb4(32)=abb4(20)*abb4(4)*spak1l3*abb4(32)
      abb4(33)=abb4(18)*spak1l3
      abb4(29)=abb4(29)*abb4(33)
      abb4(33)=abb4(4)*spbk5l4*abb4(33)
      abb4(34)=spak1l3*spbk5l3
      abb4(35)=-spak1l4*spbk5l4
      abb4(34)=abb4(34)+abb4(35)
      abb4(15)=abb4(34)*abb4(15)
      abb4(34)=abb4(10)-abb4(13)
      abb4(34)=abb4(34)*abb4(14)
      abb4(35)=4.0_ki-3.0_ki*abb4(34)
      abb4(16)=abb4(35)*abb4(16)
      abb4(15)=2.0_ki*abb4(15)+abb4(16)
      abb4(15)=abb4(15)*abb4(18)
      abb4(10)=abb4(10)*abb4(19)
      abb4(10)=-abb4(13)+2.0_ki*abb4(10)
      abb4(10)=abb4(10)*abb4(14)*abb4(20)
      abb4(13)=-abb4(23)*abb4(34)
      abb4(14)=spbk5l4*abb4(18)*abb4(19)
      abb4(16)=abb4(31)*abb4(25)
      abb4(17)=32.0_ki*abb4(17)
      R2d4=0.0_ki
      rat2 = rat2 + R2d4
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='4' value='", &
          & R2d4, "'/>"
      end if
   end subroutine
end module p1_dg_hhd_abbrevd4h3
