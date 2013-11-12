module     p0_gg_hepem_abbrevd59h0
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_globalsh0
   implicit none
   private
   complex(ki), dimension(38), public :: abb59
   complex(ki), public :: R2d59
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hepem_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hepem_kinematics
      use p0_gg_hepem_model
      use p0_gg_hepem_color, only: TR
      use p0_gg_hepem_globalsl1, only: epspow
      implicit none
      abb59(1)=1.0_ki/(-mZ**2+es45+i_*mZ*wZ)
      abb59(2)=1.0_ki/(-mZ**2+es12+i_*mZ*wZ)
      abb59(3)=dotproduct(k3,spvae1k4)
      abb59(4)=dotproduct(k3,spvae2k4)
      abb59(5)=dotproduct(k3,spvak5e1)
      abb59(6)=dotproduct(k3,spvak5e2)
      abb59(7)=dotproduct(k3,spvae1e2)
      abb59(8)=dotproduct(k3,spvae2e1)
      abb59(9)=sqrt(mT**2)
      abb59(10)=spak2l3**(-1)
      abb59(11)=spbl3k2**(-1)
      abb59(12)=spae2k4*spbk4e1
      abb59(13)=spbk5e1*spae2k5
      abb59(12)=abb59(13)+abb59(12)+abb59(8)
      abb59(13)=1.0_ki/6.0_ki*spbk4e2
      abb59(12)=abb59(13)*abb59(12)
      abb59(14)=abb59(4)*spbe2e1
      abb59(15)=spbk4e1*spae2k5
      abb59(16)=1.0_ki/6.0_ki*abb59(15)
      abb59(17)=-spbk5e2*abb59(16)
      abb59(18)=spae2k5*spbe2e1
      abb59(19)=spbk5k4*abb59(18)
      abb59(12)=1.0_ki/3.0_ki*abb59(19)+abb59(17)+1.0_ki/6.0_ki*abb59(14)+abb59&
      &(12)
      abb59(12)=spae1k5*abb59(12)
      abb59(14)=abb59(3)*abb59(18)
      abb59(17)=spbk4e1*spae1e2
      abb59(19)=abb59(6)*abb59(17)
      abb59(14)=abb59(14)-abb59(19)
      abb59(19)=spak4k5*spbk4e1
      abb59(19)=1.0_ki/3.0_ki*abb59(19)-1.0_ki/6.0_ki*abb59(5)
      abb59(20)=spbk4e2*spae1e2
      abb59(19)=abb59(20)*abb59(19)
      abb59(13)=-spae1k4*abb59(15)*abb59(13)
      abb59(16)=-abb59(7)*abb59(16)
      abb59(12)=abb59(13)+abb59(16)+abb59(12)+abb59(19)+1.0_ki/6.0_ki*abb59(14)
      abb59(13)=gTr-gTl
      abb59(14)=c1*gel*abb59(2)*abb59(1)
      abb59(13)=abb59(13)*abb59(14)*i_*gHZZ
      abb59(12)=abb59(13)*abb59(12)
      abb59(16)=abb59(13)*spak2k5
      abb59(19)=-abb59(20)*abb59(16)
      abb59(21)=-spae1k5*spae2k2*spbk4e2*abb59(13)
      abb59(19)=abb59(19)+abb59(21)
      abb59(19)=spbk2e1*abb59(19)
      abb59(21)=abb59(13)*spbk4k2
      abb59(22)=abb59(18)*abb59(21)
      abb59(23)=spbk2e2*abb59(13)*abb59(15)
      abb59(22)=abb59(22)+abb59(23)
      abb59(22)=spae1k2*abb59(22)
      abb59(19)=abb59(19)+abb59(22)
      abb59(22)=spae2k2*spbe2e1
      abb59(23)=-spae1k5*abb59(22)*abb59(21)
      abb59(24)=spbk2e2*spae1e2
      abb59(25)=abb59(24)*spbk4e1
      abb59(26)=abb59(16)*abb59(25)
      abb59(23)=abb59(23)+abb59(26)
      abb59(26)=abb59(13)*spak1k5
      abb59(27)=spbk1e1*spae1e2
      abb59(28)=abb59(27)*spbk4e2
      abb59(29)=-abb59(26)*abb59(28)
      abb59(30)=abb59(13)*spbk4k1
      abb59(31)=spae1k1*spbe2e1
      abb59(32)=abb59(31)*spae2k5
      abb59(33)=abb59(30)*abb59(32)
      abb59(23)=abb59(33)+1.0_ki/3.0_ki*abb59(23)+abb59(29)
      abb59(12)=1.0_ki/2.0_ki*abb59(23)+abb59(12)+1.0_ki/3.0_ki*abb59(19)
      abb59(19)=mH**2*abb59(11)*abb59(10)
      abb59(19)=abb59(19)+1.0_ki
      abb59(14)=abb59(9)*abb59(14)*gZXH*gXT
      abb59(19)=abb59(19)*abb59(14)*spbk4k2*spak2k5
      abb59(23)=spae1k1*abb59(19)
      abb59(29)=spbk4k1*spak1k5
      abb59(33)=spbk4l3*spal3k5
      abb59(29)=abb59(29)+abb59(33)
      abb59(14)=abb59(29)*abb59(14)
      abb59(29)=spae1k1*abb59(14)
      abb59(23)=abb59(29)+abb59(23)
      abb59(33)=spbk2k1*abb59(23)
      abb59(34)=-abb59(13)*abb59(9)**2
      abb59(35)=abb59(34)*spae1k5
      abb59(36)=spbk4k2*abb59(35)
      abb59(33)=abb59(33)+abb59(36)
      abb59(33)=abb59(22)*abb59(33)
      abb59(25)=-spak2k5*abb59(25)
      abb59(28)=spak1k5*abb59(28)
      abb59(32)=-spbk4k1*abb59(32)
      abb59(25)=abb59(32)+abb59(28)+abb59(25)
      abb59(25)=abb59(34)*abb59(25)
      abb59(28)=spbk1e1*abb59(19)
      abb59(32)=spbk1e1*abb59(14)
      abb59(28)=abb59(32)+abb59(28)
      abb59(36)=-spak1k2*abb59(24)*abb59(28)
      abb59(25)=abb59(36)+abb59(25)+abb59(33)
      abb59(33)=spbk2e2*abb59(14)
      abb59(36)=spbk2e2*abb59(19)
      abb59(36)=abb59(36)+abb59(33)
      abb59(36)=spae1k2*abb59(36)
      abb59(23)=-spbe2k1*abb59(23)
      abb59(37)=-spbk4e2*abb59(35)
      abb59(16)=abb59(16)*spbk2e2
      abb59(38)=spbk4k1*spae1k1*abb59(16)
      abb59(23)=abb59(23)+abb59(36)+abb59(37)+abb59(38)
      abb59(14)=spae2k2*abb59(14)
      abb59(36)=-spae2k2*abb59(19)
      abb59(36)=abb59(36)-abb59(14)
      abb59(36)=spbk2e1*abb59(36)
      abb59(28)=spak1e2*abb59(28)
      abb59(15)=abb59(34)*abb59(15)
      abb59(21)=abb59(21)*spae2k2
      abb59(37)=-spak1k5*spbk1e1*abb59(21)
      abb59(15)=abb59(28)+abb59(36)+abb59(15)+abb59(37)
      abb59(17)=abb59(34)*abb59(17)
      abb59(28)=-spae1k1*abb59(30)
      abb59(20)=abb59(34)*abb59(20)
      abb59(30)=-spbe2e1*abb59(35)
      abb59(26)=spbk1e1*abb59(26)
      abb59(18)=-abb59(34)*abb59(18)
      abb59(14)=spbe2e1*abb59(14)
      abb59(22)=abb59(22)*abb59(19)
      abb59(14)=abb59(22)+abb59(14)
      abb59(22)=-spae1e2*abb59(33)
      abb59(24)=-abb59(24)*abb59(19)
      abb59(22)=abb59(24)+abb59(22)
      abb59(24)=spbe2e1*abb59(29)
      abb59(29)=abb59(31)*abb59(19)
      abb59(24)=abb59(29)+abb59(24)
      abb59(29)=-spae1e2*abb59(32)
      abb59(19)=-abb59(27)*abb59(19)
      abb59(19)=abb59(19)+abb59(29)
      R2d59=abb59(12)
      rat2 = rat2 + R2d59
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='59' value='", &
          & R2d59, "'/>"
      end if
   end subroutine
end module p0_gg_hepem_abbrevd59h0
