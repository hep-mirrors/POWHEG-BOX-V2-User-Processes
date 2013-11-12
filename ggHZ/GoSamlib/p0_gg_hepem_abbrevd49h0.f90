module     p0_gg_hepem_abbrevd49h0
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_globalsh0
   implicit none
   private
   complex(ki), dimension(37), public :: abb49
   complex(ki), public :: R2d49
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
      abb49(1)=1.0_ki/(-mZ**2+es45+i_*mZ*wZ)
      abb49(2)=sqrt(mB**2)
      abb49(3)=spak2l3**(-1)
      abb49(4)=spbl3k2**(-1)
      abb49(5)=mH**2*abb49(4)*abb49(3)
      abb49(6)=abb49(5)-1.0_ki
      abb49(7)=gBl-gBr
      abb49(7)=abb49(1)*abb49(7)*i_*c1*gHB*gel
      abb49(8)=abb49(2)**3*abb49(7)
      abb49(9)=abb49(6)*abb49(8)
      abb49(10)=spak2k5*spbk2e2
      abb49(11)=-abb49(9)*abb49(10)
      abb49(12)=spal3k5*spbl3e2
      abb49(13)=-abb49(8)*abb49(12)
      abb49(11)=abb49(13)+abb49(11)
      abb49(13)=spae1e2*spbk4e1
      abb49(11)=abb49(13)*abb49(11)
      abb49(14)=spbk4k2*spae2k2
      abb49(9)=abb49(9)*abb49(14)
      abb49(15)=spbk4l3*spae2l3
      abb49(16)=abb49(8)*abb49(15)
      abb49(9)=abb49(16)+abb49(9)
      abb49(16)=spbe2e1*spae1k5
      abb49(9)=abb49(16)*abb49(9)
      abb49(7)=-abb49(2)*abb49(7)
      abb49(6)=abb49(7)*abb49(6)
      abb49(10)=abb49(6)*abb49(10)
      abb49(12)=abb49(12)*abb49(7)
      abb49(10)=abb49(10)+abb49(12)
      abb49(17)=spbk4k1*spae1k1
      abb49(18)=abb49(17)*abb49(10)
      abb49(19)=abb49(8)*spbk4e2
      abb49(20)=abb49(19)*spae1k5
      abb49(18)=abb49(20)+abb49(18)
      abb49(21)=spbl3e1*spae2l3
      abb49(22)=-abb49(18)*abb49(21)
      abb49(6)=abb49(6)*abb49(14)
      abb49(14)=abb49(15)*abb49(7)
      abb49(6)=abb49(6)+abb49(14)
      abb49(15)=spak1k5*spbk1e1
      abb49(23)=abb49(15)*abb49(6)
      abb49(24)=abb49(8)*spae2k5
      abb49(25)=abb49(24)*spbk4e1
      abb49(23)=abb49(25)+abb49(23)
      abb49(26)=spae1l3*spbl3e2
      abb49(27)=abb49(23)*abb49(26)
      abb49(28)=abb49(5)*spae2k2
      abb49(20)=-abb49(28)*abb49(20)
      abb49(12)=abb49(12)*abb49(28)
      abb49(29)=-abb49(17)*abb49(12)
      abb49(20)=abb49(20)+abb49(29)
      abb49(20)=spbk2e1*abb49(20)
      abb49(5)=abb49(5)*spbk2e2
      abb49(25)=abb49(5)*abb49(25)
      abb49(14)=abb49(14)*abb49(5)
      abb49(29)=abb49(15)*abb49(14)
      abb49(25)=abb49(25)+abb49(29)
      abb49(25)=spae1k2*abb49(25)
      abb49(24)=abb49(24)*spbe2e1
      abb49(29)=abb49(17)*abb49(24)
      abb49(19)=abb49(19)*spae1e2
      abb49(30)=-abb49(15)*abb49(19)
      abb49(9)=abb49(25)+abb49(20)+abb49(27)+abb49(22)+abb49(30)+abb49(29)+abb4&
      &9(9)+abb49(11)
      abb49(11)=abb49(13)*abb49(10)
      abb49(20)=-abb49(16)*abb49(6)
      abb49(17)=abb49(7)*abb49(17)
      abb49(22)=spae2k5*spbe2e1
      abb49(25)=-abb49(17)*abb49(22)
      abb49(15)=abb49(7)*abb49(15)
      abb49(27)=spbk4e2*spae1e2
      abb49(29)=abb49(15)*abb49(27)
      abb49(11)=abb49(29)+abb49(25)+abb49(20)+abb49(11)
      abb49(18)=-2.0_ki*abb49(18)
      abb49(20)=2.0_ki*abb49(23)
      abb49(23)=spbk2e1*abb49(28)
      abb49(23)=abb49(23)+abb49(21)
      abb49(23)=abb49(17)*abb49(23)
      abb49(25)=abb49(8)*abb49(13)
      abb49(23)=abb49(25)+abb49(23)
      abb49(13)=-abb49(7)*abb49(13)
      abb49(25)=2.0_ki*abb49(17)
      abb49(29)=-abb49(6)*abb49(26)
      abb49(30)=-spae1k2*abb49(14)
      abb49(19)=abb49(30)+abb49(19)+abb49(29)
      abb49(27)=-abb49(7)*abb49(27)
      abb49(29)=-2.0_ki*abb49(6)
      abb49(30)=-spae1k2*abb49(5)
      abb49(26)=abb49(30)-abb49(26)
      abb49(26)=abb49(15)*abb49(26)
      abb49(8)=-abb49(8)*abb49(16)
      abb49(8)=abb49(8)+abb49(26)
      abb49(16)=abb49(7)*abb49(16)
      abb49(26)=-2.0_ki*abb49(15)
      abb49(30)=abb49(5)*abb49(7)
      abb49(31)=spae1k2*abb49(30)
      abb49(32)=abb49(7)*spbl3e2
      abb49(33)=spae1l3*abb49(32)
      abb49(31)=abb49(33)+abb49(31)
      abb49(33)=2.0_ki*abb49(7)
      abb49(21)=abb49(10)*abb49(21)
      abb49(34)=spbk2e1*abb49(12)
      abb49(21)=abb49(34)-abb49(24)+abb49(21)
      abb49(22)=abb49(7)*abb49(22)
      abb49(24)=2.0_ki*abb49(10)
      abb49(34)=abb49(28)*abb49(7)
      abb49(35)=-spbk2e1*abb49(34)
      abb49(7)=abb49(7)*spae2l3
      abb49(36)=-spbl3e1*abb49(7)
      abb49(35)=abb49(36)+abb49(35)
      abb49(10)=-spbk4e1*abb49(10)
      abb49(15)=abb49(15)*spbk4e2
      abb49(10)=-abb49(15)+abb49(10)
      abb49(10)=spae2l3*abb49(10)
      abb49(36)=spbk4e1*abb49(7)
      abb49(7)=spbk4e2*abb49(7)
      abb49(6)=spae1k5*abb49(6)
      abb49(17)=abb49(17)*spae2k5
      abb49(6)=abb49(17)+abb49(6)
      abb49(6)=spbl3e2*abb49(6)
      abb49(37)=-spae1k5*abb49(32)
      abb49(32)=-spae2k5*abb49(32)
      abb49(15)=-abb49(28)*abb49(15)
      abb49(12)=-spbk4e1*abb49(12)
      abb49(12)=abb49(15)+abb49(12)
      abb49(15)=spbk4e1*abb49(34)
      abb49(28)=spbk4e2*abb49(34)
      abb49(5)=abb49(5)*abb49(17)
      abb49(14)=spae1k5*abb49(14)
      abb49(5)=abb49(5)+abb49(14)
      abb49(14)=-spae1k5*abb49(30)
      abb49(17)=-spae2k5*abb49(30)
      R2d49=0.0_ki
      rat2 = rat2 + R2d49
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='49' value='", &
          & R2d49, "'/>"
      end if
   end subroutine
end module p0_gg_hepem_abbrevd49h0
