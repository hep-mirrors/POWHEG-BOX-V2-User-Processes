module     p0_gg_hepem_abbrevd59h4
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_globalsh4
   implicit none
   private
   complex(ki), dimension(37), public :: abb59
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
      abb59(3)=dotproduct(k3,spvak4e1)
      abb59(4)=dotproduct(k3,spvak4e2)
      abb59(5)=dotproduct(k3,spvae1k5)
      abb59(6)=dotproduct(k3,spvae2k5)
      abb59(7)=dotproduct(k3,spvae1e2)
      abb59(8)=dotproduct(k3,spvae2e1)
      abb59(9)=sqrt(mT**2)
      abb59(10)=spak2l3**(-1)
      abb59(11)=spbl3k2**(-1)
      abb59(12)=-spbk4e2*spae1k4
      abb59(13)=-spae1k5*spbk5e2
      abb59(12)=abb59(13)+abb59(12)-abb59(7)
      abb59(13)=1.0_ki/6.0_ki*spae2k4
      abb59(12)=abb59(13)*abb59(12)
      abb59(14)=abb59(4)*spae1e2
      abb59(15)=spae1k4*spbk5e2
      abb59(16)=1.0_ki/6.0_ki*abb59(15)
      abb59(17)=spae2k5*abb59(16)
      abb59(18)=spbk5e2*spae1e2
      abb59(19)=spak4k5*abb59(18)
      abb59(12)=-1.0_ki/3.0_ki*abb59(19)+abb59(17)-1.0_ki/6.0_ki*abb59(14)+abb5&
      &9(12)
      abb59(12)=spbk5e1*abb59(12)
      abb59(14)=abb59(3)*abb59(18)
      abb59(17)=spae1k4*spbe2e1
      abb59(19)=abb59(6)*abb59(17)
      abb59(14)=abb59(14)-abb59(19)
      abb59(19)=spbk5k4*spae1k4
      abb59(19)=-1.0_ki/3.0_ki*abb59(19)+1.0_ki/6.0_ki*abb59(5)
      abb59(20)=spae2k4*spbe2e1
      abb59(19)=abb59(20)*abb59(19)
      abb59(13)=spbk4e1*abb59(15)*abb59(13)
      abb59(16)=abb59(8)*abb59(16)
      abb59(12)=abb59(13)+abb59(16)+abb59(12)+abb59(19)-1.0_ki/6.0_ki*abb59(14)
      abb59(13)=gTr-gTl
      abb59(14)=c1*ger*abb59(2)*abb59(1)
      abb59(13)=abb59(13)*abb59(14)*i_*gHZZ
      abb59(12)=abb59(13)*abb59(12)
      abb59(16)=abb59(13)*spak2k4
      abb59(19)=-abb59(18)*abb59(16)
      abb59(21)=-spae2k2*abb59(13)*abb59(15)
      abb59(19)=abb59(19)+abb59(21)
      abb59(19)=spbk2e1*abb59(19)
      abb59(21)=abb59(13)*spbk5k2
      abb59(22)=abb59(20)*abb59(21)
      abb59(23)=spbk5e1*spbk2e2*spae2k4*abb59(13)
      abb59(22)=abb59(22)+abb59(23)
      abb59(22)=spae1k2*abb59(22)
      abb59(19)=abb59(19)+abb59(22)
      abb59(22)=spbk2e2*spae1e2
      abb59(23)=spbk5e1*abb59(22)*abb59(16)
      abb59(24)=spae2k2*spbe2e1
      abb59(25)=abb59(24)*spae1k4
      abb59(26)=-abb59(21)*abb59(25)
      abb59(23)=abb59(23)+abb59(26)
      abb59(26)=abb59(13)*spbk5k1
      abb59(27)=spae1k1*spbe2e1
      abb59(28)=abb59(27)*spae2k4
      abb59(29)=abb59(26)*abb59(28)
      abb59(30)=abb59(13)*spak1k4
      abb59(31)=spbk1e1*spae1e2
      abb59(32)=abb59(31)*spbk5e2
      abb59(33)=-abb59(30)*abb59(32)
      abb59(23)=abb59(33)+1.0_ki/3.0_ki*abb59(23)+abb59(29)
      abb59(12)=1.0_ki/2.0_ki*abb59(23)+abb59(12)+1.0_ki/3.0_ki*abb59(19)
      abb59(19)=mH**2*abb59(11)*abb59(10)
      abb59(19)=abb59(19)+1.0_ki
      abb59(14)=abb59(9)*abb59(14)*gZXH*gXT
      abb59(19)=abb59(19)*abb59(14)*spak2k4*spbk5k2
      abb59(23)=spbk1e1*abb59(19)
      abb59(29)=spak1k4*spbk5k1
      abb59(33)=spal3k4*spbk5l3
      abb59(29)=abb59(29)+abb59(33)
      abb59(14)=abb59(29)*abb59(14)
      abb59(29)=spbk1e1*abb59(14)
      abb59(23)=abb59(29)+abb59(23)
      abb59(33)=-spak1k2*abb59(23)
      abb59(34)=-abb59(13)*abb59(9)**2
      abb59(35)=abb59(34)*spbk5e1
      abb59(36)=-spak2k4*abb59(35)
      abb59(33)=abb59(33)+abb59(36)
      abb59(33)=abb59(22)*abb59(33)
      abb59(25)=spbk5k2*abb59(25)
      abb59(28)=-spbk5k1*abb59(28)
      abb59(32)=spak1k4*abb59(32)
      abb59(25)=abb59(32)+abb59(28)+abb59(25)
      abb59(25)=abb59(34)*abb59(25)
      abb59(28)=spae1k1*abb59(19)
      abb59(32)=spae1k1*abb59(14)
      abb59(28)=abb59(32)+abb59(28)
      abb59(36)=spbk2k1*abb59(24)*abb59(28)
      abb59(25)=abb59(36)+abb59(25)+abb59(33)
      abb59(33)=spbk2e2*abb59(14)
      abb59(36)=spbk2e2*abb59(19)
      abb59(36)=abb59(36)+abb59(33)
      abb59(36)=spae1k2*abb59(36)
      abb59(28)=-spbe2k1*abb59(28)
      abb59(15)=-abb59(34)*abb59(15)
      abb59(16)=abb59(16)*spbk2e2
      abb59(37)=spbk5k1*spae1k1*abb59(16)
      abb59(15)=abb59(28)+abb59(36)+abb59(15)+abb59(37)
      abb59(14)=spae2k2*abb59(14)
      abb59(28)=-spae2k2*abb59(19)
      abb59(28)=abb59(28)-abb59(14)
      abb59(28)=spbk2e1*abb59(28)
      abb59(23)=spak1e2*abb59(23)
      abb59(36)=spae2k4*abb59(35)
      abb59(21)=abb59(21)*spae2k2
      abb59(37)=-spak1k4*spbk1e1*abb59(21)
      abb59(23)=abb59(23)+abb59(28)+abb59(36)+abb59(37)
      abb59(17)=-abb59(34)*abb59(17)
      abb59(28)=spbk1e1*abb59(30)
      abb59(20)=-abb59(34)*abb59(20)
      abb59(30)=spae1e2*abb59(35)
      abb59(26)=-spae1k1*abb59(26)
      abb59(18)=abb59(34)*abb59(18)
      abb59(14)=spbe2e1*abb59(14)
      abb59(24)=abb59(24)*abb59(19)
      abb59(14)=abb59(24)+abb59(14)
      abb59(24)=-spae1e2*abb59(33)
      abb59(22)=-abb59(22)*abb59(19)
      abb59(22)=abb59(22)+abb59(24)
      abb59(24)=spbe2e1*abb59(32)
      abb59(27)=abb59(27)*abb59(19)
      abb59(24)=abb59(27)+abb59(24)
      abb59(27)=-spae1e2*abb59(29)
      abb59(19)=-abb59(31)*abb59(19)
      abb59(19)=abb59(19)+abb59(27)
      R2d59=abb59(12)
      rat2 = rat2 + R2d59
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='59' value='", &
          & R2d59, "'/>"
      end if
   end subroutine
end module p0_gg_hepem_abbrevd59h4
