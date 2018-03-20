module     p0_gg_hhg_abbrevd49h1_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh1_qp
   implicit none
   private
   complex(ki), dimension(21), public :: abb49
   complex(ki), public :: R2d49
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
      abb49(1)=sqrt(mT**2)
      abb49(2)=sqrt2**(-1)
      abb49(3)=spak1k2**(-1)
      abb49(4)=spbk5k2**(-1)
      abb49(5)=spak2k5**(-1)
      abb49(6)=spak2l4**(-1)
      abb49(7)=spbl4k2**(-1)
      abb49(8)=abb49(1)**2
      abb49(9)=abb49(8)*spak2l4
      abb49(10)=abb49(9)*spbl4k1
      abb49(11)=c1-c2
      abb49(11)=abb49(11)*gHT**2*i_*abb49(2)
      abb49(12)=abb49(11)*abb49(5)
      abb49(13)=abb49(4)*abb49(12)
      abb49(14)=-abb49(13)*abb49(10)
      abb49(15)=abb49(3)*abb49(4)
      abb49(16)=abb49(11)*abb49(15)
      abb49(9)=abb49(9)*spbk5l4
      abb49(17)=abb49(16)*abb49(9)
      abb49(14)=abb49(17)+abb49(14)
      abb49(14)=spbk5k1*abb49(14)
      abb49(11)=abb49(8)*spbk5k1**2*abb49(11)*abb49(4)
      abb49(11)=2.0_ki*abb49(11)+abb49(14)
      abb49(11)=2.0_ki*abb49(11)
      abb49(14)=abb49(16)*spbk5k1
      abb49(17)=-abb49(8)*abb49(14)
      abb49(15)=-abb49(15)*abb49(12)
      abb49(10)=abb49(15)*abb49(10)
      abb49(10)=abb49(17)+abb49(10)
      abb49(10)=2.0_ki*abb49(10)
      abb49(14)=-4.0_ki*abb49(14)
      abb49(17)=2.0_ki*spbk5k1
      abb49(18)=abb49(16)*abb49(17)
      abb49(16)=2.0_ki*spbk5l4*abb49(16)
      abb49(19)=2.0_ki*abb49(15)
      abb49(9)=-abb49(15)*abb49(9)
      abb49(12)=abb49(12)*spak2l4
      abb49(20)=spbl4k1*abb49(12)
      abb49(9)=abb49(20)+abb49(9)
      abb49(9)=2.0_ki*abb49(9)
      abb49(17)=abb49(13)*abb49(17)
      abb49(13)=2.0_ki*spbl4k1*abb49(13)
      abb49(20)=mH**2*abb49(15)*abb49(7)*abb49(6)
      abb49(21)=-2.0_ki*es12-es51+es34
      abb49(21)=abb49(21)*abb49(20)
      abb49(8)=abb49(15)*abb49(8)
      abb49(8)=6.0_ki*abb49(8)+abb49(21)
      abb49(8)=2.0_ki*abb49(8)
      abb49(20)=8.0_ki*abb49(20)
      abb49(15)=4.0_ki*abb49(15)
      abb49(12)=-2.0_ki*abb49(3)*abb49(12)
      R2d49=0.0_ki
      rat2 = rat2 + R2d49
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='49' value='", &
          & R2d49, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd49h1_qp
