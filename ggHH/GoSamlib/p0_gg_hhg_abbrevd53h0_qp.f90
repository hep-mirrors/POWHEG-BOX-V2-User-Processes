module     p0_gg_hhg_abbrevd53h0_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(35), public :: abb53
   complex(ki), public :: R2d53
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_color_qp, only: TR
      use p0_gg_hhg_globalsl1_qp, only: epspow
      implicit none
      abb53(1)=sqrt(mT**2)
      abb53(2)=sqrt2**(-1)
      abb53(3)=spbk2k1**(-1)
      abb53(4)=spak2k5**(-1)
      abb53(5)=spbk5k2**(-1)
      abb53(6)=spak2l4**(-1)
      abb53(7)=spbl4k2**(-1)
      abb53(8)=c1-c2
      abb53(9)=gHT**2*i_*abb53(3)
      abb53(10)=-abb53(9)*abb53(8)
      abb53(11)=abb53(1)**4
      abb53(12)=abb53(4)*abb53(2)
      abb53(13)=abb53(12)*spak1k2**2
      abb53(14)=-spbk5k1*abb53(13)*abb53(11)*abb53(10)
      abb53(15)=abb53(1)**2
      abb53(16)=abb53(8)*abb53(15)*abb53(9)
      abb53(13)=abb53(13)*abb53(16)
      abb53(17)=es12*spbk5k1
      abb53(18)=-abb53(13)*abb53(17)
      abb53(19)=abb53(12)*spak1k2
      abb53(16)=-abb53(19)*abb53(16)
      abb53(20)=abb53(16)*es12
      abb53(19)=-abb53(19)*abb53(10)
      abb53(11)=-abb53(11)*abb53(19)
      abb53(21)=-abb53(20)+abb53(11)
      abb53(22)=spak2l4*spbk5l4
      abb53(21)=abb53(21)*abb53(22)
      abb53(14)=abb53(21)+abb53(14)+abb53(18)
      abb53(18)=es51-es34
      abb53(21)=-abb53(22)*abb53(16)*abb53(18)
      abb53(23)=mH**2*abb53(7)*abb53(6)
      abb53(24)=abb53(23)*abb53(17)
      abb53(25)=spbk5k2*spak2l4
      abb53(26)=-spbl4k1*abb53(25)
      abb53(24)=abb53(26)+abb53(24)
      abb53(24)=abb53(13)*abb53(24)
      abb53(15)=-abb53(15)*abb53(8)
      abb53(9)=abb53(9)*abb53(12)*abb53(5)
      abb53(26)=abb53(9)*spak1k2
      abb53(27)=-abb53(26)*abb53(15)
      abb53(28)=abb53(27)*abb53(17)
      abb53(29)=spak1l4*spbk5l4*abb53(28)
      abb53(14)=abb53(29)+2.0_ki*abb53(14)+abb53(24)+abb53(21)
      abb53(14)=2.0_ki*abb53(14)
      abb53(21)=abb53(13)*spbk5k1
      abb53(21)=4.0_ki*abb53(21)
      abb53(24)=abb53(23)-1.0_ki
      abb53(29)=-abb53(24)*abb53(21)
      abb53(30)=es12+abb53(18)
      abb53(30)=spbk5l4*abb53(27)*abb53(30)
      abb53(31)=-spbl4k1*abb53(13)
      abb53(30)=abb53(31)+abb53(30)
      abb53(30)=2.0_ki*abb53(30)
      abb53(31)=abb53(23)*abb53(16)
      abb53(32)=-abb53(31)*abb53(18)
      abb53(11)=2.0_ki*abb53(11)-abb53(20)
      abb53(11)=3.0_ki*abb53(11)+abb53(32)
      abb53(11)=2.0_ki*abb53(11)
      abb53(20)=-abb53(31)+abb53(16)
      abb53(20)=8.0_ki*abb53(20)
      abb53(31)=-8.0_ki*abb53(16)
      abb53(32)=4.0_ki*abb53(19)
      abb53(33)=spak1l4*spbk5k1
      abb53(25)=abb53(33)-abb53(25)
      abb53(25)=2.0_ki*abb53(16)*abb53(25)
      abb53(16)=-4.0_ki*abb53(16)
      abb53(13)=2.0_ki*spbk5k2*abb53(13)
      abb53(15)=-abb53(9)*abb53(15)
      abb53(33)=abb53(15)*es12
      abb53(34)=abb53(22)*abb53(33)
      abb53(28)=abb53(28)+abb53(34)
      abb53(28)=2.0_ki*abb53(28)
      abb53(9)=-abb53(9)*abb53(8)
      abb53(18)=abb53(18)*abb53(9)
      abb53(34)=abb53(9)*es12
      abb53(35)=-abb53(18)-2.0_ki*abb53(15)-abb53(34)
      abb53(22)=abb53(22)*abb53(35)
      abb53(27)=spbk5k1*abb53(27)
      abb53(8)=-abb53(26)*abb53(8)
      abb53(26)=abb53(8)*abb53(17)
      abb53(35)=-abb53(26)*abb53(24)
      abb53(19)=-spbl4k1*spak2l4*abb53(19)
      abb53(19)=abb53(19)+2.0_ki*abb53(27)+abb53(22)+abb53(35)
      abb53(19)=4.0_ki*abb53(19)
      abb53(22)=abb53(8)*spbk5k1
      abb53(22)=8.0_ki*abb53(22)
      abb53(27)=abb53(24)*abb53(22)
      abb53(26)=2.0_ki*abb53(26)
      abb53(35)=-spbk5l4*abb53(5)*abb53(2)*abb53(10)
      abb53(8)=spbl4k1*abb53(8)
      abb53(8)=abb53(35)+abb53(8)
      abb53(8)=4.0_ki*abb53(8)
      abb53(33)=6.0_ki*abb53(33)
      abb53(18)=abb53(34)-abb53(18)
      abb53(18)=abb53(23)*abb53(18)
      abb53(23)=2.0_ki*abb53(34)
      abb53(18)=-abb53(23)+abb53(18)
      abb53(18)=4.0_ki*abb53(18)
      abb53(24)=-16.0_ki*abb53(9)*abb53(24)
      abb53(34)=abb53(9)*spak1l4
      abb53(17)=-2.0_ki*abb53(17)*abb53(34)
      abb53(10)=-spak2l4*abb53(12)*abb53(10)
      abb53(12)=spbk5k1*abb53(34)
      abb53(10)=abb53(10)+abb53(12)
      abb53(10)=4.0_ki*abb53(10)
      abb53(12)=-8.0_ki*abb53(9)
      abb53(15)=-12.0_ki*abb53(15)
      abb53(9)=4.0_ki*abb53(9)
      R2d53=0.0_ki
      rat2 = rat2 + R2d53
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='53' value='", &
          & R2d53, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd53h0_qp
