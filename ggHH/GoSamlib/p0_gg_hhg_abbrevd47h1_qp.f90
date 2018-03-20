module     p0_gg_hhg_abbrevd47h1_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(36), public :: abb47
   complex(ki), public :: R2d47
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
      abb47(1)=sqrt(mT**2)
      abb47(2)=sqrt2**(-1)
      abb47(3)=spak2k5**(-1)
      abb47(4)=spbk5k2**(-1)
      abb47(5)=spak1k2**(-1)
      abb47(6)=spak2l3**(-1)
      abb47(7)=spbl3k2**(-1)
      abb47(8)=spak2l4**(-1)
      abb47(9)=spbl4k2**(-1)
      abb47(10)=c1-c2
      abb47(11)=i_*abb47(3)
      abb47(12)=abb47(11)*abb47(2)
      abb47(13)=abb47(4)*abb47(12)
      abb47(14)=abb47(1)*gHT
      abb47(14)=abb47(10)*abb47(13)*abb47(14)**2
      abb47(15)=-spak2l4*abb47(14)
      abb47(16)=2.0_ki*spbk5l3
      abb47(17)=abb47(16)*spbk5k1
      abb47(18)=abb47(17)*abb47(15)*spbl4k1*spak2l3
      abb47(19)=2.0_ki*spbk5k1
      abb47(20)=abb47(15)*abb47(19)
      abb47(21)=spak2l3*abb47(5)
      abb47(22)=-abb47(21)*abb47(15)
      abb47(23)=-spbk5l3*abb47(22)
      abb47(20)=abb47(20)+abb47(23)
      abb47(20)=2.0_ki*spbl4k1*abb47(20)
      abb47(15)=-abb47(5)*abb47(15)
      abb47(23)=4.0_ki*abb47(15)
      abb47(24)=-spbl4k1*abb47(23)
      abb47(25)=abb47(22)*abb47(17)
      abb47(23)=spbk5k1*abb47(23)
      abb47(26)=-abb47(14)*spak2l3
      abb47(27)=abb47(26)*spbk5k1**2
      abb47(22)=abb47(22)*spbk5l4
      abb47(28)=-spbk5k1*abb47(22)
      abb47(27)=2.0_ki*abb47(27)+abb47(28)
      abb47(27)=2.0_ki*abb47(27)
      abb47(21)=-abb47(14)*abb47(21)
      abb47(28)=-abb47(21)*abb47(19)
      abb47(29)=gHT**2
      abb47(30)=-abb47(29)*abb47(10)
      abb47(31)=abb47(30)*spak2l3
      abb47(32)=abb47(13)*abb47(5)
      abb47(33)=-abb47(32)*abb47(31)
      abb47(34)=4.0_ki*spbk5k1
      abb47(34)=abb47(33)*abb47(34)
      abb47(19)=-abb47(33)*abb47(19)
      abb47(33)=-2.0_ki*spbk5l4*abb47(33)
      abb47(10)=abb47(10)*spak2l4
      abb47(35)=abb47(10)*abb47(29)*abb47(2)
      abb47(36)=spak2l3*abb47(35)*abb47(11)*spbl4k1
      abb47(22)=abb47(22)+abb47(36)
      abb47(22)=spbk5l3*abb47(22)
      abb47(17)=-abb47(26)*abb47(17)
      abb47(17)=abb47(17)+abb47(22)
      abb47(17)=2.0_ki*abb47(17)
      abb47(22)=spak2l4*abb47(30)*spbl4k1
      abb47(13)=-abb47(16)*abb47(13)*abb47(22)
      abb47(26)=spbk5k1*abb47(14)
      abb47(21)=spbk5l3*abb47(21)
      abb47(21)=abb47(26)+abb47(21)
      abb47(15)=spbk5l4*abb47(15)
      abb47(15)=2.0_ki*abb47(21)+abb47(15)
      abb47(21)=mH**2
      abb47(26)=abb47(6)*abb47(21)*abb47(7)
      abb47(12)=-abb47(26)*abb47(12)*abb47(22)
      abb47(12)=2.0_ki*abb47(15)+abb47(12)
      abb47(12)=2.0_ki*abb47(12)
      abb47(14)=-16.0_ki*abb47(5)*abb47(14)
      abb47(10)=abb47(10)*abb47(16)*abb47(29)
      abb47(11)=abb47(11)*abb47(5)
      abb47(15)=abb47(11)*abb47(2)
      abb47(16)=-abb47(10)*abb47(15)*spak2l3
      abb47(10)=-abb47(32)*abb47(10)
      abb47(11)=-2.0_ki*abb47(26)*abb47(11)*abb47(35)
      abb47(21)=2.0_ki*abb47(21)
      abb47(15)=abb47(9)*abb47(8)*abb47(21)*abb47(15)*abb47(31)
      R2d47=0.0_ki
      rat2 = rat2 + R2d47
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='47' value='", &
          & R2d47, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd47h1_qp
