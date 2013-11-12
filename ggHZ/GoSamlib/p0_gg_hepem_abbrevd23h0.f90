module     p0_gg_hepem_abbrevd23h0
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_globalsh0
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
      abb23(5)=spae1l3*spbk4l3
      abb23(6)=mH**2*abb23(4)*abb23(3)
      abb23(7)=abb23(6)*spbk4k2
      abb23(8)=abb23(7)*spae1k2
      abb23(9)=2.0_ki*spbk4k1
      abb23(10)=abb23(9)*spae1k1
      abb23(5)=-abb23(10)+abb23(5)+abb23(8)
      abb23(8)=spae2k5*spbe2e1
      abb23(10)=-abb23(8)*abb23(5)
      abb23(6)=abb23(6)*spak2k5
      abb23(11)=abb23(6)*spbk2e1
      abb23(12)=spbl3e1*spal3k5
      abb23(11)=abb23(11)+abb23(12)
      abb23(13)=2.0_ki*spak1k5
      abb23(14)=-spbk1e1*abb23(13)
      abb23(14)=abb23(14)+abb23(11)
      abb23(15)=spbk4e2*spae1e2
      abb23(14)=abb23(15)*abb23(14)
      abb23(16)=spae2k2*spbk4k2
      abb23(17)=-abb23(16)*spae1k5*spbe2e1
      abb23(18)=spbk2e2*spak2k5
      abb23(19)=spbk4e1*abb23(18)*spae1e2
      abb23(10)=abb23(17)+abb23(19)+abb23(10)+abb23(14)
      abb23(14)=gTl-gTr
      abb23(14)=abb23(1)*abb23(14)*i_*c1*gHT*gel
      abb23(17)=abb23(2)**3*abb23(14)
      abb23(10)=abb23(17)*abb23(10)
      abb23(19)=abb23(7)*spak1k2
      abb23(20)=spak1l3*spbk4l3
      abb23(19)=abb23(19)+abb23(20)
      abb23(14)=-abb23(2)*abb23(14)
      abb23(21)=abb23(14)*spae1e2
      abb23(22)=abb23(21)*abb23(18)
      abb23(23)=abb23(22)*spbk1e1
      abb23(24)=-abb23(23)*abb23(19)
      abb23(25)=abb23(14)*spbe2e1
      abb23(26)=abb23(25)*abb23(16)
      abb23(27)=abb23(26)*spae1k1
      abb23(28)=spbl3k1*spal3k5
      abb23(29)=abb23(28)*abb23(27)
      abb23(30)=abb23(7)*abb23(14)
      abb23(31)=spae2k2*abb23(30)*spak2k5
      abb23(32)=spbe2e1*abb23(31)
      abb23(33)=spbk2k1*spae1k1*abb23(32)
      abb23(10)=abb23(33)+abb23(29)+abb23(10)+abb23(24)
      abb23(24)=spae1k5*abb23(26)
      abb23(29)=-spbk4e1*abb23(22)
      abb23(24)=abb23(24)+abb23(29)
      abb23(18)=abb23(18)*abb23(14)
      abb23(5)=abb23(18)*abb23(5)
      abb23(29)=abb23(6)*spbk2k1
      abb23(28)=abb23(29)+abb23(28)
      abb23(29)=abb23(14)*spae1k1
      abb23(33)=abb23(29)*spbk4e2
      abb23(34)=-abb23(33)*abb23(28)
      abb23(35)=abb23(17)*spae1k5
      abb23(36)=spbk4e2*abb23(35)
      abb23(5)=abb23(36)+abb23(5)+abb23(34)
      abb23(34)=abb23(14)*spbk4e2
      abb23(36)=-spae1k5*abb23(34)
      abb23(37)=abb23(14)*spbk1e1
      abb23(20)=abb23(37)*abb23(20)
      abb23(38)=spak1k2*spbk1e1*abb23(30)
      abb23(39)=abb23(17)*spbk4e1
      abb23(20)=abb23(38)+abb23(20)-abb23(39)
      abb23(20)=spae2k5*abb23(20)
      abb23(13)=abb23(13)*abb23(37)
      abb23(38)=abb23(16)*abb23(13)
      abb23(16)=abb23(16)*abb23(14)
      abb23(12)=-abb23(16)*abb23(12)
      abb23(31)=-spbk2e1*abb23(31)
      abb23(12)=abb23(31)+abb23(12)+abb23(38)+abb23(20)
      abb23(20)=abb23(14)*spae2k5
      abb23(31)=spbk4e1*abb23(20)
      abb23(38)=abb23(21)*spbk1e1
      abb23(19)=abb23(38)*abb23(19)
      abb23(39)=-spae1e2*abb23(39)
      abb23(19)=abb23(39)+abb23(19)
      abb23(39)=spbk4e1*abb23(21)
      abb23(9)=abb23(29)*abb23(9)
      abb23(29)=-spae1k2*abb23(30)
      abb23(40)=abb23(14)*spbk4l3
      abb23(41)=-spae1l3*abb23(40)
      abb23(9)=abb23(29)+abb23(9)+abb23(41)
      abb23(17)=2.0_ki*abb23(17)
      abb23(15)=-abb23(15)*abb23(17)
      abb23(16)=2.0_ki*abb23(16)
      abb23(29)=abb23(25)*spae1k1
      abb23(28)=-abb23(29)*abb23(28)
      abb23(35)=spbe2e1*abb23(35)
      abb23(28)=abb23(35)+abb23(28)
      abb23(35)=-spae1k5*abb23(25)
      abb23(11)=abb23(14)*abb23(11)
      abb23(11)=-abb23(13)+abb23(11)
      abb23(13)=2.0_ki*abb23(14)
      abb23(8)=abb23(8)*abb23(17)
      abb23(14)=-2.0_ki*abb23(18)
      abb23(17)=abb23(26)*spal3k5
      abb23(18)=-spal3k5*abb23(34)
      abb23(41)=abb23(25)*spal3k5
      abb23(42)=-spbk4l3*abb23(22)
      abb23(40)=spae2k5*abb23(40)
      abb23(43)=abb23(21)*spbk4l3
      abb23(44)=-abb23(6)*abb23(34)
      abb23(6)=-abb23(6)*abb23(25)
      abb23(45)=-abb23(7)*abb23(22)
      abb23(30)=spae2k5*abb23(30)
      abb23(7)=abb23(21)*abb23(7)
      abb23(26)=-spak1k5*abb23(26)
      abb23(34)=spak1k5*abb23(34)
      abb23(25)=spak1k5*abb23(25)
      abb23(22)=spbk4k1*abb23(22)
      abb23(20)=-spbk4k1*abb23(20)
      abb23(21)=-spbk4k1*abb23(21)
      abb23(37)=-spae2k5*abb23(37)
      R2d23=0.0_ki
      rat2 = rat2 + R2d23
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='23' value='", &
          & R2d23, "'/>"
      end if
   end subroutine
end module p0_gg_hepem_abbrevd23h0
