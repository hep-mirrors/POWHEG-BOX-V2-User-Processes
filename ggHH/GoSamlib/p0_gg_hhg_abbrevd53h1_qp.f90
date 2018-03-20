module     p0_gg_hhg_abbrevd53h1_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(31), public :: abb53
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
      abb53(3)=spbk5k2**(-1)
      abb53(4)=spak2k5**(-1)
      abb53(5)=spak1k2**(-1)
      abb53(6)=spak2l4**(-1)
      abb53(7)=spbl4k2**(-1)
      abb53(8)=c2-c1
      abb53(9)=-spak2l4*abb53(8)
      abb53(10)=spak1k2*spbl4k1
      abb53(11)=-abb53(10)*abb53(9)
      abb53(12)=spbk5k1**2
      abb53(13)=abb53(4)*abb53(3)
      abb53(14)=abb53(1)**2
      abb53(15)=abb53(12)*abb53(13)*abb53(14)*abb53(11)
      abb53(16)=abb53(14)*abb53(12)*abb53(3)
      abb53(17)=abb53(9)*spbk5l4
      abb53(18)=abb53(17)*abb53(16)
      abb53(15)=abb53(18)+abb53(15)
      abb53(18)=gHT**2*abb53(2)*i_
      abb53(19)=2.0_ki*abb53(18)
      abb53(15)=abb53(15)*abb53(19)
      abb53(16)=-4.0_ki*abb53(18)*abb53(8)*abb53(16)
      abb53(20)=es34-es51
      abb53(21)=abb53(20)-es12
      abb53(22)=abb53(21)+abb53(14)
      abb53(17)=abb53(22)*abb53(17)
      abb53(22)=-spak1k2*abb53(8)
      abb53(23)=spbk5k1*abb53(14)*abb53(22)
      abb53(17)=abb53(23)+abb53(17)
      abb53(23)=abb53(3)*spbk5k1
      abb53(17)=abb53(17)*abb53(23)
      abb53(11)=-spbk5k1*abb53(11)
      abb53(11)=abb53(11)+abb53(17)
      abb53(17)=abb53(19)*abb53(4)
      abb53(11)=abb53(11)*abb53(17)
      abb53(24)=abb53(19)*abb53(13)
      abb53(12)=-abb53(22)*abb53(12)*abb53(24)
      abb53(25)=abb53(8)*spbk5k1
      abb53(10)=-abb53(13)*abb53(10)*abb53(25)
      abb53(26)=abb53(23)*spbk5l4*abb53(8)
      abb53(10)=abb53(26)+abb53(10)
      abb53(10)=abb53(10)*abb53(19)
      abb53(21)=abb53(21)+2.0_ki*abb53(14)
      abb53(26)=-abb53(5)*abb53(8)
      abb53(27)=abb53(26)*spak2l4
      abb53(21)=-spbk5l4*abb53(21)*abb53(27)
      abb53(28)=abb53(7)*abb53(6)*mH**2
      abb53(20)=abb53(28)*abb53(20)
      abb53(20)=abb53(20)-es12
      abb53(29)=abb53(20)+5.0_ki*abb53(14)
      abb53(29)=-abb53(29)*abb53(25)
      abb53(21)=abb53(29)+abb53(21)
      abb53(21)=abb53(3)*abb53(21)
      abb53(29)=-spbl4k1*abb53(9)
      abb53(21)=abb53(21)+abb53(29)
      abb53(21)=abb53(21)*abb53(17)
      abb53(18)=abb53(18)*abb53(13)
      abb53(29)=abb53(8)*abb53(18)*spbk5k1
      abb53(28)=abb53(28)-1.0_ki
      abb53(28)=8.0_ki*abb53(28)
      abb53(30)=abb53(29)*abb53(28)
      abb53(29)=-6.0_ki*abb53(29)
      abb53(13)=spbl4k1*abb53(8)*abb53(13)
      abb53(31)=abb53(3)*abb53(26)*spbk5l4
      abb53(13)=abb53(31)+abb53(13)
      abb53(13)=abb53(13)*abb53(19)
      abb53(14)=abb53(20)+6.0_ki*abb53(14)
      abb53(14)=-abb53(24)*abb53(14)*abb53(26)
      abb53(19)=abb53(18)*abb53(26)*abb53(28)
      abb53(18)=4.0_ki*abb53(18)
      abb53(18)=abb53(18)*abb53(26)
      abb53(20)=abb53(17)*spbk5k1
      abb53(9)=-abb53(9)*abb53(20)
      abb53(24)=abb53(24)*abb53(25)
      abb53(23)=-abb53(23)*spak1l4*abb53(26)
      abb53(23)=abb53(23)+abb53(27)
      abb53(23)=abb53(23)*abb53(17)
      abb53(20)=-abb53(22)*abb53(20)
      abb53(8)=-abb53(8)*abb53(17)
      R2d53=0.0_ki
      rat2 = rat2 + R2d53
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='53' value='", &
          & R2d53, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd53h1_qp
