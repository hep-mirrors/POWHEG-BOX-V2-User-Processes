module     p0_gg_hhg_abbrevd17h1_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(30), public :: abb17
   complex(ki), public :: R2d17
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
      abb17(1)=sqrt(mT**2)
      abb17(2)=sqrt2**(-1)
      abb17(3)=es12**(-1)
      abb17(4)=spbk5k2**(-1)
      abb17(5)=spak2k5**(-1)
      abb17(6)=spak1k2**(-1)
      abb17(7)=spak2l3**(-1)
      abb17(8)=spbl3k2**(-1)
      abb17(9)=spak2l4**(-1)
      abb17(10)=spbl4k2**(-1)
      abb17(11)=i_*abb17(4)
      abb17(12)=abb17(11)*abb17(3)*abb17(2)
      abb17(13)=abb17(1)*gHT
      abb17(13)=abb17(12)*abb17(13)**2
      abb17(14)=abb17(5)*spbk5k1
      abb17(15)=c1-c2
      abb17(16)=abb17(15)*abb17(13)*abb17(14)
      abb17(17)=-spak2l4*abb17(16)
      abb17(18)=spbl3k1*spak2l3
      abb17(19)=abb17(17)*abb17(18)
      abb17(13)=-abb17(13)*abb17(15)
      abb17(20)=spbk5k1**2
      abb17(21)=-abb17(20)*abb17(13)
      abb17(22)=-spak2l4*abb17(21)
      abb17(19)=abb17(22)+abb17(19)
      abb17(19)=spbk5l4*abb17(19)
      abb17(22)=abb17(17)*spbl4k1
      abb17(21)=-abb17(22)+2.0_ki*abb17(21)
      abb17(22)=spbk5l3*spak2l3
      abb17(23)=-abb17(22)*abb17(21)
      abb17(19)=abb17(23)+abb17(19)
      abb17(19)=4.0_ki*abb17(19)
      abb17(23)=gHT**2
      abb17(24)=abb17(15)*abb17(23)*abb17(12)*spak2l4
      abb17(25)=4.0_ki*spbk5l4
      abb17(25)=-abb17(25)*abb17(20)*abb17(24)
      abb17(26)=4.0_ki*spbl3k1
      abb17(26)=abb17(24)*abb17(26)
      abb17(27)=abb17(26)*spbk5l4*spbk5k1
      abb17(18)=abb17(16)*abb17(18)
      abb17(18)=abb17(18)-abb17(21)
      abb17(21)=abb17(6)*mH**2
      abb17(28)=abb17(21)*abb17(8)*abb17(7)*abb17(15)*spak2l4
      abb17(11)=spbk5k1*abb17(11)*abb17(23)*abb17(2)
      abb17(29)=spbk5l4*abb17(11)*abb17(28)
      abb17(18)=2.0_ki*abb17(18)+abb17(29)
      abb17(18)=4.0_ki*abb17(18)
      abb17(20)=abb17(20)*abb17(5)
      abb17(13)=abb17(13)*abb17(20)
      abb17(29)=4.0_ki*spak2l4*abb17(13)
      abb17(24)=-4.0_ki*abb17(20)*abb17(24)
      abb17(26)=abb17(14)*abb17(26)
      abb17(11)=abb17(5)*abb17(11)
      abb17(28)=4.0_ki*abb17(11)*abb17(28)
      abb17(30)=4.0_ki*spak2l3
      abb17(13)=-abb17(30)*abb17(13)
      abb17(12)=-abb17(23)*abb17(12)*abb17(15)
      abb17(20)=-abb17(20)*abb17(12)
      abb17(23)=8.0_ki*spak2l3*abb17(20)
      abb17(20)=abb17(20)*abb17(30)
      abb17(12)=-spbl4k1*abb17(30)*abb17(14)*abb17(12)
      abb17(11)=abb17(10)*abb17(9)*abb17(30)*abb17(21)*abb17(11)*abb17(15)
      abb17(14)=-spbk5l4*abb17(17)
      abb17(15)=-abb17(16)*abb17(22)
      abb17(14)=abb17(14)+abb17(15)
      abb17(14)=8.0_ki*abb17(14)
      abb17(15)=-32.0_ki*abb17(16)
      R2d17=0.0_ki
      rat2 = rat2 + R2d17
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='17' value='", &
          & R2d17, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd17h1_qp
