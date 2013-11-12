module     p0_gg_hepem_abbrevd25h0
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_globalsh0
   implicit none
   private
   complex(ki), dimension(45), public :: abb25
   complex(ki), public :: R2d25
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
      abb25(1)=1.0_ki/(-mZ**2+es45+i_*mZ*wZ)
      abb25(2)=sqrt(mB**2)
      abb25(3)=spak2l3**(-1)
      abb25(4)=spbl3k2**(-1)
      abb25(5)=spae1l3*spbk4l3
      abb25(6)=mH**2*abb25(4)*abb25(3)
      abb25(7)=abb25(6)*spbk4k2
      abb25(8)=abb25(7)*spae1k2
      abb25(9)=2.0_ki*spbk4k1
      abb25(10)=abb25(9)*spae1k1
      abb25(5)=-abb25(10)+abb25(5)+abb25(8)
      abb25(8)=spae2k5*spbe2e1
      abb25(10)=-abb25(8)*abb25(5)
      abb25(6)=abb25(6)*spak2k5
      abb25(11)=abb25(6)*spbk2e1
      abb25(12)=spbl3e1*spal3k5
      abb25(11)=abb25(11)+abb25(12)
      abb25(13)=2.0_ki*spak1k5
      abb25(14)=-spbk1e1*abb25(13)
      abb25(14)=abb25(14)+abb25(11)
      abb25(15)=spbk4e2*spae1e2
      abb25(14)=abb25(15)*abb25(14)
      abb25(16)=spae2k2*spbk4k2
      abb25(17)=-abb25(16)*spae1k5*spbe2e1
      abb25(18)=spbk2e2*spak2k5
      abb25(19)=spbk4e1*abb25(18)*spae1e2
      abb25(10)=abb25(17)+abb25(19)+abb25(10)+abb25(14)
      abb25(14)=gBl-gBr
      abb25(14)=abb25(1)*abb25(14)*i_*c1*gHB*gel
      abb25(17)=abb25(2)**3*abb25(14)
      abb25(10)=abb25(17)*abb25(10)
      abb25(19)=abb25(7)*spak1k2
      abb25(20)=spak1l3*spbk4l3
      abb25(19)=abb25(19)+abb25(20)
      abb25(14)=-abb25(2)*abb25(14)
      abb25(21)=abb25(14)*spae1e2
      abb25(22)=abb25(21)*abb25(18)
      abb25(23)=abb25(22)*spbk1e1
      abb25(24)=-abb25(23)*abb25(19)
      abb25(25)=abb25(14)*spbe2e1
      abb25(26)=abb25(25)*abb25(16)
      abb25(27)=abb25(26)*spae1k1
      abb25(28)=spbl3k1*spal3k5
      abb25(29)=abb25(28)*abb25(27)
      abb25(30)=abb25(7)*abb25(14)
      abb25(31)=spae2k2*abb25(30)*spak2k5
      abb25(32)=spbe2e1*abb25(31)
      abb25(33)=spbk2k1*spae1k1*abb25(32)
      abb25(10)=abb25(33)+abb25(29)+abb25(10)+abb25(24)
      abb25(24)=spae1k5*abb25(26)
      abb25(29)=-spbk4e1*abb25(22)
      abb25(24)=abb25(24)+abb25(29)
      abb25(18)=abb25(18)*abb25(14)
      abb25(5)=abb25(18)*abb25(5)
      abb25(29)=abb25(6)*spbk2k1
      abb25(28)=abb25(29)+abb25(28)
      abb25(29)=abb25(14)*spae1k1
      abb25(33)=abb25(29)*spbk4e2
      abb25(34)=-abb25(33)*abb25(28)
      abb25(35)=abb25(17)*spae1k5
      abb25(36)=spbk4e2*abb25(35)
      abb25(5)=abb25(36)+abb25(5)+abb25(34)
      abb25(34)=abb25(14)*spbk4e2
      abb25(36)=-spae1k5*abb25(34)
      abb25(37)=abb25(14)*spbk1e1
      abb25(20)=abb25(37)*abb25(20)
      abb25(38)=spak1k2*spbk1e1*abb25(30)
      abb25(39)=abb25(17)*spbk4e1
      abb25(20)=abb25(38)+abb25(20)-abb25(39)
      abb25(20)=spae2k5*abb25(20)
      abb25(13)=abb25(13)*abb25(37)
      abb25(38)=abb25(16)*abb25(13)
      abb25(16)=abb25(16)*abb25(14)
      abb25(12)=-abb25(16)*abb25(12)
      abb25(31)=-spbk2e1*abb25(31)
      abb25(12)=abb25(31)+abb25(12)+abb25(38)+abb25(20)
      abb25(20)=abb25(14)*spae2k5
      abb25(31)=spbk4e1*abb25(20)
      abb25(38)=abb25(21)*spbk1e1
      abb25(19)=abb25(38)*abb25(19)
      abb25(39)=-spae1e2*abb25(39)
      abb25(19)=abb25(39)+abb25(19)
      abb25(39)=spbk4e1*abb25(21)
      abb25(9)=abb25(29)*abb25(9)
      abb25(29)=-spae1k2*abb25(30)
      abb25(40)=abb25(14)*spbk4l3
      abb25(41)=-spae1l3*abb25(40)
      abb25(9)=abb25(29)+abb25(9)+abb25(41)
      abb25(17)=2.0_ki*abb25(17)
      abb25(15)=-abb25(15)*abb25(17)
      abb25(16)=2.0_ki*abb25(16)
      abb25(29)=abb25(25)*spae1k1
      abb25(28)=-abb25(29)*abb25(28)
      abb25(35)=spbe2e1*abb25(35)
      abb25(28)=abb25(35)+abb25(28)
      abb25(35)=-spae1k5*abb25(25)
      abb25(11)=abb25(14)*abb25(11)
      abb25(11)=-abb25(13)+abb25(11)
      abb25(13)=2.0_ki*abb25(14)
      abb25(8)=abb25(8)*abb25(17)
      abb25(14)=-2.0_ki*abb25(18)
      abb25(17)=abb25(26)*spal3k5
      abb25(18)=-spal3k5*abb25(34)
      abb25(41)=abb25(25)*spal3k5
      abb25(42)=-spbk4l3*abb25(22)
      abb25(40)=spae2k5*abb25(40)
      abb25(43)=abb25(21)*spbk4l3
      abb25(44)=-abb25(6)*abb25(34)
      abb25(6)=-abb25(6)*abb25(25)
      abb25(45)=-abb25(7)*abb25(22)
      abb25(30)=spae2k5*abb25(30)
      abb25(7)=abb25(21)*abb25(7)
      abb25(26)=-spak1k5*abb25(26)
      abb25(34)=spak1k5*abb25(34)
      abb25(25)=spak1k5*abb25(25)
      abb25(22)=spbk4k1*abb25(22)
      abb25(20)=-spbk4k1*abb25(20)
      abb25(21)=-spbk4k1*abb25(21)
      abb25(37)=-spae2k5*abb25(37)
      R2d25=0.0_ki
      rat2 = rat2 + R2d25
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='25' value='", &
          & R2d25, "'/>"
      end if
   end subroutine
end module p0_gg_hepem_abbrevd25h0
