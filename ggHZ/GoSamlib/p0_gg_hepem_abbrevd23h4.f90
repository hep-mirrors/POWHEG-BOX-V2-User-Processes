module     p0_gg_hepem_abbrevd23h4
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_globalsh4
   implicit none
   private
   complex(ki), dimension(45), public :: abb23
   complex(ki), public :: R2d23
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
      abb23(1)=1.0_ki/(-mZ**2+es45+i_*mZ*wZ)
      abb23(2)=sqrt(mT**2)
      abb23(3)=spak2l3**(-1)
      abb23(4)=spbl3k2**(-1)
      abb23(5)=spbl3e1*spal3k4
      abb23(6)=mH**2*abb23(4)*abb23(3)
      abb23(7)=abb23(6)*spak2k4
      abb23(8)=abb23(7)*spbk2e1
      abb23(9)=2.0_ki*spak1k4
      abb23(10)=abb23(9)*spbk1e1
      abb23(5)=-abb23(10)+abb23(5)+abb23(8)
      abb23(8)=spbk5e2*spae1e2
      abb23(10)=abb23(8)*abb23(5)
      abb23(6)=abb23(6)*spbk5k2
      abb23(11)=abb23(6)*spae1k2
      abb23(12)=spae1l3*spbk5l3
      abb23(11)=abb23(11)+abb23(12)
      abb23(13)=2.0_ki*spbk5k1
      abb23(14)=spae1k1*abb23(13)
      abb23(14)=abb23(14)-abb23(11)
      abb23(15)=spae2k4*spbe2e1
      abb23(14)=abb23(15)*abb23(14)
      abb23(16)=spbk2e2*spak2k4
      abb23(17)=abb23(16)*spbk5e1*spae1e2
      abb23(18)=spae2k2*spbk5k2
      abb23(19)=-spae1k4*abb23(18)*spbe2e1
      abb23(10)=abb23(17)+abb23(19)+abb23(10)+abb23(14)
      abb23(14)=gTl-gTr
      abb23(14)=abb23(1)*abb23(14)*i_*c1*gHT*ger
      abb23(17)=abb23(2)**3*abb23(14)
      abb23(10)=abb23(17)*abb23(10)
      abb23(19)=abb23(7)*spbk2k1
      abb23(20)=spbl3k1*spal3k4
      abb23(19)=abb23(19)+abb23(20)
      abb23(14)=-abb23(2)*abb23(14)
      abb23(21)=abb23(14)*spbe2e1
      abb23(22)=abb23(21)*abb23(18)
      abb23(23)=abb23(22)*spae1k1
      abb23(24)=abb23(23)*abb23(19)
      abb23(25)=abb23(14)*spae1e2
      abb23(26)=abb23(25)*spbk1e1
      abb23(27)=abb23(26)*abb23(16)
      abb23(28)=spak1l3*spbk5l3
      abb23(29)=-abb23(28)*abb23(27)
      abb23(30)=spbk2e2*spbk5k2
      abb23(31)=abb23(30)*abb23(7)
      abb23(32)=abb23(26)*spak1k2
      abb23(33)=-abb23(32)*abb23(31)
      abb23(10)=abb23(33)+abb23(29)+abb23(10)+abb23(24)
      abb23(24)=abb23(25)*abb23(16)
      abb23(29)=-spbk5e1*abb23(24)
      abb23(33)=spae1k4*abb23(22)
      abb23(29)=abb23(29)+abb23(33)
      abb23(33)=abb23(14)*spae1k1
      abb23(20)=-abb23(33)*abb23(20)
      abb23(34)=abb23(7)*abb23(14)
      abb23(35)=-spbk2k1*spae1k1*abb23(34)
      abb23(36)=abb23(17)*spae1k4
      abb23(20)=abb23(35)+abb23(20)+abb23(36)
      abb23(20)=spbk5e2*abb23(20)
      abb23(13)=abb23(13)*abb23(33)
      abb23(35)=-abb23(16)*abb23(13)
      abb23(16)=abb23(16)*abb23(14)
      abb23(12)=abb23(16)*abb23(12)
      abb23(30)=spae1k2*abb23(34)*abb23(30)
      abb23(12)=abb23(30)+abb23(12)+abb23(35)+abb23(20)
      abb23(20)=abb23(14)*spbk5e2
      abb23(30)=-spae1k4*abb23(20)
      abb23(18)=abb23(18)*abb23(14)
      abb23(5)=-abb23(18)*abb23(5)
      abb23(35)=spak1k2*abb23(6)
      abb23(35)=abb23(35)+abb23(28)
      abb23(37)=abb23(14)*spbk1e1
      abb23(38)=abb23(37)*spae2k4
      abb23(35)=abb23(38)*abb23(35)
      abb23(39)=abb23(17)*spbk5e1
      abb23(40)=-spae2k4*abb23(39)
      abb23(5)=abb23(40)+abb23(5)+abb23(35)
      abb23(35)=abb23(14)*spae2k4
      abb23(40)=spbk5e1*abb23(35)
      abb23(41)=abb23(21)*spae1k1
      abb23(19)=-abb23(41)*abb23(19)
      abb23(36)=spbe2e1*abb23(36)
      abb23(19)=abb23(36)+abb23(19)
      abb23(36)=-spae1k4*abb23(21)
      abb23(9)=-abb23(37)*abb23(9)
      abb23(37)=spbk2e1*abb23(34)
      abb23(42)=abb23(14)*spal3k4
      abb23(43)=spbl3e1*abb23(42)
      abb23(9)=abb23(37)+abb23(9)+abb23(43)
      abb23(17)=2.0_ki*abb23(17)
      abb23(15)=abb23(15)*abb23(17)
      abb23(16)=-2.0_ki*abb23(16)
      abb23(28)=abb23(26)*abb23(28)
      abb23(32)=abb23(6)*abb23(32)
      abb23(37)=-spae1e2*abb23(39)
      abb23(28)=abb23(32)+abb23(37)+abb23(28)
      abb23(32)=spbk5e1*abb23(25)
      abb23(11)=-abb23(14)*abb23(11)
      abb23(11)=abb23(13)+abb23(11)
      abb23(13)=2.0_ki*abb23(14)
      abb23(8)=-abb23(8)*abb23(17)
      abb23(14)=2.0_ki*abb23(18)
      abb23(17)=spal3k4*abb23(22)
      abb23(18)=-spbk5e2*abb23(42)
      abb23(37)=abb23(21)*spal3k4
      abb23(39)=-spbk5l3*abb23(24)
      abb23(42)=spbk5l3*abb23(35)
      abb23(43)=abb23(25)*spbk5l3
      abb23(44)=abb23(7)*abb23(22)
      abb23(34)=-spbk5e2*abb23(34)
      abb23(7)=abb23(21)*abb23(7)
      abb23(31)=-abb23(25)*abb23(31)
      abb23(45)=abb23(6)*abb23(35)
      abb23(6)=abb23(6)*abb23(25)
      abb23(22)=-spak1k4*abb23(22)
      abb23(20)=spak1k4*abb23(20)
      abb23(21)=spak1k4*abb23(21)
      abb23(24)=spbk5k1*abb23(24)
      abb23(35)=-spbk5k1*abb23(35)
      abb23(25)=-spbk5k1*abb23(25)
      abb23(33)=spbk5e2*abb23(33)
      R2d23=0.0_ki
      rat2 = rat2 + R2d23
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='23' value='", &
          & R2d23, "'/>"
      end if
   end subroutine
end module p0_gg_hepem_abbrevd23h4
