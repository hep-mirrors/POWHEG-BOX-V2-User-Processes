module     p0_gg_hhg_abbrevd51h1_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(31), public :: abb51
   complex(ki), public :: R2d51
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
      abb51(1)=sqrt(mT**2)
      abb51(2)=sqrt2**(-1)
      abb51(3)=spbk5k2**(-1)
      abb51(4)=spak2k5**(-1)
      abb51(5)=spak1k2**(-1)
      abb51(6)=spak2l3**(-1)
      abb51(7)=spbl3k2**(-1)
      abb51(8)=c2-c1
      abb51(9)=-spak2l3*abb51(8)
      abb51(10)=spak1k2*spbl3k1
      abb51(11)=-abb51(10)*abb51(9)
      abb51(12)=spbk5k1**2
      abb51(13)=abb51(4)*abb51(3)
      abb51(14)=abb51(1)**2
      abb51(15)=abb51(12)*abb51(13)*abb51(14)*abb51(11)
      abb51(16)=abb51(14)*abb51(12)*abb51(3)
      abb51(17)=abb51(9)*spbk5l3
      abb51(18)=abb51(17)*abb51(16)
      abb51(15)=abb51(18)+abb51(15)
      abb51(18)=gHT**2*abb51(2)*i_
      abb51(19)=2.0_ki*abb51(18)
      abb51(15)=abb51(15)*abb51(19)
      abb51(16)=-4.0_ki*abb51(18)*abb51(8)*abb51(16)
      abb51(20)=es34-es51
      abb51(21)=abb51(20)-es12
      abb51(22)=abb51(21)+abb51(14)
      abb51(17)=abb51(22)*abb51(17)
      abb51(22)=-spak1k2*abb51(8)
      abb51(23)=spbk5k1*abb51(14)*abb51(22)
      abb51(17)=abb51(23)+abb51(17)
      abb51(23)=abb51(3)*spbk5k1
      abb51(17)=abb51(17)*abb51(23)
      abb51(11)=-spbk5k1*abb51(11)
      abb51(11)=abb51(11)+abb51(17)
      abb51(17)=abb51(19)*abb51(4)
      abb51(11)=abb51(11)*abb51(17)
      abb51(24)=abb51(19)*abb51(13)
      abb51(12)=-abb51(22)*abb51(12)*abb51(24)
      abb51(25)=abb51(8)*spbk5k1
      abb51(10)=-abb51(13)*abb51(10)*abb51(25)
      abb51(26)=abb51(23)*spbk5l3*abb51(8)
      abb51(10)=abb51(26)+abb51(10)
      abb51(10)=abb51(10)*abb51(19)
      abb51(21)=abb51(21)+2.0_ki*abb51(14)
      abb51(26)=-abb51(5)*abb51(8)
      abb51(27)=abb51(26)*spak2l3
      abb51(21)=-spbk5l3*abb51(21)*abb51(27)
      abb51(28)=abb51(7)*abb51(6)*mH**2
      abb51(20)=abb51(28)*abb51(20)
      abb51(20)=abb51(20)-es12
      abb51(29)=abb51(20)+5.0_ki*abb51(14)
      abb51(29)=-abb51(29)*abb51(25)
      abb51(21)=abb51(29)+abb51(21)
      abb51(21)=abb51(3)*abb51(21)
      abb51(29)=-spbl3k1*abb51(9)
      abb51(21)=abb51(21)+abb51(29)
      abb51(21)=abb51(21)*abb51(17)
      abb51(18)=abb51(18)*abb51(13)
      abb51(29)=abb51(8)*abb51(18)*spbk5k1
      abb51(28)=abb51(28)-1.0_ki
      abb51(28)=8.0_ki*abb51(28)
      abb51(30)=abb51(29)*abb51(28)
      abb51(29)=-6.0_ki*abb51(29)
      abb51(13)=spbl3k1*abb51(8)*abb51(13)
      abb51(31)=abb51(3)*abb51(26)*spbk5l3
      abb51(13)=abb51(31)+abb51(13)
      abb51(13)=abb51(13)*abb51(19)
      abb51(14)=abb51(20)+6.0_ki*abb51(14)
      abb51(14)=-abb51(24)*abb51(14)*abb51(26)
      abb51(19)=abb51(18)*abb51(26)*abb51(28)
      abb51(18)=4.0_ki*abb51(18)
      abb51(18)=abb51(18)*abb51(26)
      abb51(20)=abb51(17)*spbk5k1
      abb51(9)=-abb51(9)*abb51(20)
      abb51(24)=abb51(24)*abb51(25)
      abb51(23)=-abb51(23)*spak1l3*abb51(26)
      abb51(23)=abb51(23)+abb51(27)
      abb51(23)=abb51(23)*abb51(17)
      abb51(20)=-abb51(22)*abb51(20)
      abb51(8)=-abb51(8)*abb51(17)
      R2d51=0.0_ki
      rat2 = rat2 + R2d51
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='51' value='", &
          & R2d51, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd51h1_qp
