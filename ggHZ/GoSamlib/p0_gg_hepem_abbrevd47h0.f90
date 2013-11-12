module     p0_gg_hepem_abbrevd47h0
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_globalsh0
   implicit none
   private
   complex(ki), dimension(37), public :: abb47
   complex(ki), public :: R2d47
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
      abb47(1)=1.0_ki/(-mZ**2+es45+i_*mZ*wZ)
      abb47(2)=sqrt(mT**2)
      abb47(3)=spak2l3**(-1)
      abb47(4)=spbl3k2**(-1)
      abb47(5)=mH**2*abb47(4)*abb47(3)
      abb47(6)=abb47(5)-1.0_ki
      abb47(7)=gTl-gTr
      abb47(7)=abb47(1)*abb47(7)*i_*c1*gHT*gel
      abb47(8)=abb47(2)**3*abb47(7)
      abb47(9)=abb47(6)*abb47(8)
      abb47(10)=spak2k5*spbk2e2
      abb47(11)=-abb47(9)*abb47(10)
      abb47(12)=spal3k5*spbl3e2
      abb47(13)=-abb47(8)*abb47(12)
      abb47(11)=abb47(13)+abb47(11)
      abb47(13)=spae1e2*spbk4e1
      abb47(11)=abb47(13)*abb47(11)
      abb47(14)=spbk4k2*spae2k2
      abb47(9)=abb47(9)*abb47(14)
      abb47(15)=spbk4l3*spae2l3
      abb47(16)=abb47(8)*abb47(15)
      abb47(9)=abb47(16)+abb47(9)
      abb47(16)=spbe2e1*spae1k5
      abb47(9)=abb47(16)*abb47(9)
      abb47(7)=-abb47(2)*abb47(7)
      abb47(6)=abb47(7)*abb47(6)
      abb47(10)=abb47(6)*abb47(10)
      abb47(12)=abb47(12)*abb47(7)
      abb47(10)=abb47(10)+abb47(12)
      abb47(17)=spbk4k1*spae1k1
      abb47(18)=abb47(17)*abb47(10)
      abb47(19)=abb47(8)*spbk4e2
      abb47(20)=abb47(19)*spae1k5
      abb47(18)=abb47(20)+abb47(18)
      abb47(21)=spbl3e1*spae2l3
      abb47(22)=-abb47(18)*abb47(21)
      abb47(6)=abb47(6)*abb47(14)
      abb47(14)=abb47(15)*abb47(7)
      abb47(6)=abb47(6)+abb47(14)
      abb47(15)=spak1k5*spbk1e1
      abb47(23)=abb47(15)*abb47(6)
      abb47(24)=abb47(8)*spae2k5
      abb47(25)=abb47(24)*spbk4e1
      abb47(23)=abb47(25)+abb47(23)
      abb47(26)=spae1l3*spbl3e2
      abb47(27)=abb47(23)*abb47(26)
      abb47(28)=abb47(5)*spae2k2
      abb47(20)=-abb47(28)*abb47(20)
      abb47(12)=abb47(12)*abb47(28)
      abb47(29)=-abb47(17)*abb47(12)
      abb47(20)=abb47(20)+abb47(29)
      abb47(20)=spbk2e1*abb47(20)
      abb47(5)=abb47(5)*spbk2e2
      abb47(25)=abb47(5)*abb47(25)
      abb47(14)=abb47(14)*abb47(5)
      abb47(29)=abb47(15)*abb47(14)
      abb47(25)=abb47(25)+abb47(29)
      abb47(25)=spae1k2*abb47(25)
      abb47(24)=abb47(24)*spbe2e1
      abb47(29)=abb47(17)*abb47(24)
      abb47(19)=abb47(19)*spae1e2
      abb47(30)=-abb47(15)*abb47(19)
      abb47(9)=abb47(25)+abb47(20)+abb47(27)+abb47(22)+abb47(30)+abb47(29)+abb4&
      &7(9)+abb47(11)
      abb47(11)=abb47(13)*abb47(10)
      abb47(20)=-abb47(16)*abb47(6)
      abb47(17)=abb47(7)*abb47(17)
      abb47(22)=spae2k5*spbe2e1
      abb47(25)=-abb47(17)*abb47(22)
      abb47(15)=abb47(7)*abb47(15)
      abb47(27)=spbk4e2*spae1e2
      abb47(29)=abb47(15)*abb47(27)
      abb47(11)=abb47(29)+abb47(25)+abb47(20)+abb47(11)
      abb47(18)=-2.0_ki*abb47(18)
      abb47(20)=2.0_ki*abb47(23)
      abb47(23)=spbk2e1*abb47(28)
      abb47(23)=abb47(23)+abb47(21)
      abb47(23)=abb47(17)*abb47(23)
      abb47(25)=abb47(8)*abb47(13)
      abb47(23)=abb47(25)+abb47(23)
      abb47(13)=-abb47(7)*abb47(13)
      abb47(25)=2.0_ki*abb47(17)
      abb47(29)=-abb47(6)*abb47(26)
      abb47(30)=-spae1k2*abb47(14)
      abb47(19)=abb47(30)+abb47(19)+abb47(29)
      abb47(27)=-abb47(7)*abb47(27)
      abb47(29)=-2.0_ki*abb47(6)
      abb47(30)=-spae1k2*abb47(5)
      abb47(26)=abb47(30)-abb47(26)
      abb47(26)=abb47(15)*abb47(26)
      abb47(8)=-abb47(8)*abb47(16)
      abb47(8)=abb47(8)+abb47(26)
      abb47(16)=abb47(7)*abb47(16)
      abb47(26)=-2.0_ki*abb47(15)
      abb47(30)=abb47(5)*abb47(7)
      abb47(31)=spae1k2*abb47(30)
      abb47(32)=abb47(7)*spbl3e2
      abb47(33)=spae1l3*abb47(32)
      abb47(31)=abb47(33)+abb47(31)
      abb47(33)=2.0_ki*abb47(7)
      abb47(21)=abb47(10)*abb47(21)
      abb47(34)=spbk2e1*abb47(12)
      abb47(21)=abb47(34)-abb47(24)+abb47(21)
      abb47(22)=abb47(7)*abb47(22)
      abb47(24)=2.0_ki*abb47(10)
      abb47(34)=abb47(28)*abb47(7)
      abb47(35)=-spbk2e1*abb47(34)
      abb47(7)=abb47(7)*spae2l3
      abb47(36)=-spbl3e1*abb47(7)
      abb47(35)=abb47(36)+abb47(35)
      abb47(10)=-spbk4e1*abb47(10)
      abb47(15)=abb47(15)*spbk4e2
      abb47(10)=-abb47(15)+abb47(10)
      abb47(10)=spae2l3*abb47(10)
      abb47(36)=spbk4e1*abb47(7)
      abb47(7)=spbk4e2*abb47(7)
      abb47(6)=spae1k5*abb47(6)
      abb47(17)=abb47(17)*spae2k5
      abb47(6)=abb47(17)+abb47(6)
      abb47(6)=spbl3e2*abb47(6)
      abb47(37)=-spae1k5*abb47(32)
      abb47(32)=-spae2k5*abb47(32)
      abb47(15)=-abb47(28)*abb47(15)
      abb47(12)=-spbk4e1*abb47(12)
      abb47(12)=abb47(15)+abb47(12)
      abb47(15)=spbk4e1*abb47(34)
      abb47(28)=spbk4e2*abb47(34)
      abb47(5)=abb47(5)*abb47(17)
      abb47(14)=spae1k5*abb47(14)
      abb47(5)=abb47(5)+abb47(14)
      abb47(14)=-spae1k5*abb47(30)
      abb47(17)=-spae2k5*abb47(30)
      R2d47=0.0_ki
      rat2 = rat2 + R2d47
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='47' value='", &
          & R2d47, "'/>"
      end if
   end subroutine
end module p0_gg_hepem_abbrevd47h0
