module     p0_gg_hepem_abbrevd61h4
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_globalsh4
   implicit none
   private
   complex(ki), dimension(37), public :: abb61
   complex(ki), public :: R2d61
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
      abb61(1)=1.0_ki/(-mZ**2+es45+i_*mZ*wZ)
      abb61(2)=1.0_ki/(-mZ**2+es12+i_*mZ*wZ)
      abb61(3)=dotproduct(k3,spvak4e1)
      abb61(4)=dotproduct(k3,spvak4e2)
      abb61(5)=dotproduct(k3,spvae1k5)
      abb61(6)=dotproduct(k3,spvae2k5)
      abb61(7)=dotproduct(k3,spvae1e2)
      abb61(8)=dotproduct(k3,spvae2e1)
      abb61(9)=sqrt(mB**2)
      abb61(10)=spak2l3**(-1)
      abb61(11)=spbl3k2**(-1)
      abb61(12)=-spbk4e2*spae1k4
      abb61(13)=-spae1k5*spbk5e2
      abb61(12)=abb61(13)+abb61(12)-abb61(7)
      abb61(13)=1.0_ki/6.0_ki*spae2k4
      abb61(12)=abb61(13)*abb61(12)
      abb61(14)=abb61(4)*spae1e2
      abb61(15)=spae1k4*spbk5e2
      abb61(16)=1.0_ki/6.0_ki*abb61(15)
      abb61(17)=spae2k5*abb61(16)
      abb61(18)=spbk5e2*spae1e2
      abb61(19)=spak4k5*abb61(18)
      abb61(12)=-1.0_ki/3.0_ki*abb61(19)+abb61(17)-1.0_ki/6.0_ki*abb61(14)+abb6&
      &1(12)
      abb61(12)=spbk5e1*abb61(12)
      abb61(14)=abb61(3)*abb61(18)
      abb61(17)=spae1k4*spbe2e1
      abb61(19)=abb61(6)*abb61(17)
      abb61(14)=abb61(14)-abb61(19)
      abb61(19)=spbk5k4*spae1k4
      abb61(19)=-1.0_ki/3.0_ki*abb61(19)+1.0_ki/6.0_ki*abb61(5)
      abb61(20)=spae2k4*spbe2e1
      abb61(19)=abb61(20)*abb61(19)
      abb61(13)=spbk4e1*abb61(15)*abb61(13)
      abb61(16)=abb61(8)*abb61(16)
      abb61(12)=abb61(13)+abb61(16)+abb61(12)+abb61(19)-1.0_ki/6.0_ki*abb61(14)
      abb61(13)=gBr-gBl
      abb61(14)=c1*ger*abb61(2)*abb61(1)
      abb61(13)=abb61(13)*abb61(14)*i_*gHZZ
      abb61(12)=abb61(13)*abb61(12)
      abb61(16)=abb61(13)*spak2k4
      abb61(19)=-abb61(18)*abb61(16)
      abb61(21)=-spae2k2*abb61(13)*abb61(15)
      abb61(19)=abb61(19)+abb61(21)
      abb61(19)=spbk2e1*abb61(19)
      abb61(21)=abb61(13)*spbk5k2
      abb61(22)=abb61(20)*abb61(21)
      abb61(23)=spbk5e1*spbk2e2*spae2k4*abb61(13)
      abb61(22)=abb61(22)+abb61(23)
      abb61(22)=spae1k2*abb61(22)
      abb61(19)=abb61(19)+abb61(22)
      abb61(22)=spbk2e2*spae1e2
      abb61(23)=spbk5e1*abb61(22)*abb61(16)
      abb61(24)=spae2k2*spbe2e1
      abb61(25)=abb61(24)*spae1k4
      abb61(26)=-abb61(21)*abb61(25)
      abb61(23)=abb61(23)+abb61(26)
      abb61(26)=abb61(13)*spbk5k1
      abb61(27)=spae1k1*spbe2e1
      abb61(28)=abb61(27)*spae2k4
      abb61(29)=abb61(26)*abb61(28)
      abb61(30)=abb61(13)*spak1k4
      abb61(31)=spbk1e1*spae1e2
      abb61(32)=abb61(31)*spbk5e2
      abb61(33)=-abb61(30)*abb61(32)
      abb61(23)=abb61(33)+1.0_ki/3.0_ki*abb61(23)+abb61(29)
      abb61(12)=1.0_ki/2.0_ki*abb61(23)+abb61(12)+1.0_ki/3.0_ki*abb61(19)
      abb61(19)=mH**2*abb61(11)*abb61(10)
      abb61(19)=abb61(19)+1.0_ki
      abb61(14)=abb61(9)*abb61(14)*gZXH*gXB
      abb61(19)=abb61(19)*abb61(14)*spak2k4*spbk5k2
      abb61(23)=spbk1e1*abb61(19)
      abb61(29)=spak1k4*spbk5k1
      abb61(33)=spal3k4*spbk5l3
      abb61(29)=abb61(29)+abb61(33)
      abb61(14)=abb61(29)*abb61(14)
      abb61(29)=spbk1e1*abb61(14)
      abb61(23)=abb61(29)+abb61(23)
      abb61(33)=-spak1k2*abb61(23)
      abb61(34)=-abb61(13)*abb61(9)**2
      abb61(35)=abb61(34)*spbk5e1
      abb61(36)=-spak2k4*abb61(35)
      abb61(33)=abb61(33)+abb61(36)
      abb61(33)=abb61(22)*abb61(33)
      abb61(25)=spbk5k2*abb61(25)
      abb61(28)=-spbk5k1*abb61(28)
      abb61(32)=spak1k4*abb61(32)
      abb61(25)=abb61(32)+abb61(28)+abb61(25)
      abb61(25)=abb61(34)*abb61(25)
      abb61(28)=spae1k1*abb61(19)
      abb61(32)=spae1k1*abb61(14)
      abb61(28)=abb61(32)+abb61(28)
      abb61(36)=spbk2k1*abb61(24)*abb61(28)
      abb61(25)=abb61(36)+abb61(25)+abb61(33)
      abb61(33)=spbk2e2*abb61(14)
      abb61(36)=spbk2e2*abb61(19)
      abb61(36)=abb61(36)+abb61(33)
      abb61(36)=spae1k2*abb61(36)
      abb61(28)=-spbe2k1*abb61(28)
      abb61(15)=-abb61(34)*abb61(15)
      abb61(16)=abb61(16)*spbk2e2
      abb61(37)=spbk5k1*spae1k1*abb61(16)
      abb61(15)=abb61(28)+abb61(36)+abb61(15)+abb61(37)
      abb61(14)=spae2k2*abb61(14)
      abb61(28)=-spae2k2*abb61(19)
      abb61(28)=abb61(28)-abb61(14)
      abb61(28)=spbk2e1*abb61(28)
      abb61(23)=spak1e2*abb61(23)
      abb61(36)=spae2k4*abb61(35)
      abb61(21)=abb61(21)*spae2k2
      abb61(37)=-spak1k4*spbk1e1*abb61(21)
      abb61(23)=abb61(23)+abb61(28)+abb61(36)+abb61(37)
      abb61(17)=-abb61(34)*abb61(17)
      abb61(28)=spbk1e1*abb61(30)
      abb61(20)=-abb61(34)*abb61(20)
      abb61(30)=spae1e2*abb61(35)
      abb61(26)=-spae1k1*abb61(26)
      abb61(18)=abb61(34)*abb61(18)
      abb61(14)=spbe2e1*abb61(14)
      abb61(24)=abb61(24)*abb61(19)
      abb61(14)=abb61(24)+abb61(14)
      abb61(24)=-spae1e2*abb61(33)
      abb61(22)=-abb61(22)*abb61(19)
      abb61(22)=abb61(22)+abb61(24)
      abb61(24)=spbe2e1*abb61(32)
      abb61(27)=abb61(27)*abb61(19)
      abb61(24)=abb61(27)+abb61(24)
      abb61(27)=-spae1e2*abb61(29)
      abb61(19)=-abb61(31)*abb61(19)
      abb61(19)=abb61(19)+abb61(27)
      R2d61=abb61(12)
      rat2 = rat2 + R2d61
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='61' value='", &
          & R2d61, "'/>"
      end if
   end subroutine
end module p0_gg_hepem_abbrevd61h4
