module     p0_gg_hepem_abbrevd35h0
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_globalsh0
   implicit none
   private
   complex(ki), dimension(39), public :: abb35
   complex(ki), public :: R2d35
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
      abb35(1)=1.0_ki/(-mZ**2+es45+i_*mZ*wZ)
      abb35(2)=sqrt(mT**2)
      abb35(3)=spak2l3**(-1)
      abb35(4)=spbl3k2**(-1)
      abb35(5)=gTl-gTr
      abb35(5)=abb35(1)*abb35(5)*i_*c1*gHT*gel
      abb35(6)=abb35(2)**3*abb35(5)
      abb35(7)=abb35(6)*spbe2e1
      abb35(8)=abb35(7)*spae1k5
      abb35(9)=spbk4k2*spae2k2
      abb35(10)=abb35(9)*abb35(8)
      abb35(11)=abb35(6)*spae1e2
      abb35(12)=abb35(11)*spbk4e1
      abb35(13)=spak2k5*spbk2e2
      abb35(14)=-abb35(13)*abb35(12)
      abb35(10)=abb35(10)+abb35(14)
      abb35(14)=abb35(3)*abb35(4)*mH**2
      abb35(15)=abb35(14)-2.0_ki
      abb35(10)=abb35(15)*abb35(10)
      abb35(15)=spak1k5*spbk1e1
      abb35(16)=-spbk4e2*abb35(15)
      abb35(17)=-spbl3e2*spal3k5*spbk4e1
      abb35(16)=abb35(17)+abb35(16)
      abb35(16)=abb35(11)*abb35(16)
      abb35(17)=spbk4k1*spae1k1
      abb35(18)=spae2k5*abb35(17)
      abb35(19)=spae2l3*spbk4l3*spae1k5
      abb35(18)=abb35(19)+abb35(18)
      abb35(18)=abb35(7)*abb35(18)
      abb35(5)=-abb35(2)*abb35(5)
      abb35(19)=abb35(5)*spbe2e1
      abb35(20)=abb35(19)*abb35(17)
      abb35(21)=abb35(20)*spal3k5
      abb35(22)=spbl3k2*spae2k2
      abb35(23)=-abb35(22)*abb35(21)
      abb35(24)=abb35(5)*spae1e2
      abb35(25)=abb35(24)*abb35(15)
      abb35(26)=abb35(25)*spbk4l3
      abb35(27)=spak2l3*spbk2e2
      abb35(28)=abb35(27)*abb35(26)
      abb35(10)=abb35(28)+abb35(23)+abb35(18)+abb35(16)+abb35(10)
      abb35(16)=-spae2k5*abb35(20)
      abb35(18)=spbk4e2*abb35(25)
      abb35(16)=abb35(16)+abb35(18)
      abb35(18)=abb35(5)*spbk4l3
      abb35(23)=abb35(18)*abb35(27)
      abb35(28)=-spbk4e2*abb35(6)
      abb35(23)=abb35(23)+abb35(28)
      abb35(23)=spae1k5*abb35(23)
      abb35(28)=abb35(14)*abb35(5)
      abb35(29)=2.0_ki*abb35(5)
      abb35(30)=abb35(29)-abb35(28)
      abb35(13)=abb35(13)*abb35(30)
      abb35(31)=abb35(5)*spal3k5
      abb35(32)=abb35(31)*spbl3e2
      abb35(13)=abb35(32)-abb35(13)
      abb35(32)=-abb35(17)*abb35(13)
      abb35(23)=abb35(32)+abb35(23)
      abb35(32)=abb35(5)*spae1k5
      abb35(33)=spbk4e2*abb35(32)
      abb35(34)=-abb35(31)*abb35(22)
      abb35(6)=spae2k5*abb35(6)
      abb35(6)=abb35(34)+abb35(6)
      abb35(6)=spbk4e1*abb35(6)
      abb35(9)=abb35(9)*abb35(30)
      abb35(30)=abb35(18)*spae2l3
      abb35(9)=abb35(30)-abb35(9)
      abb35(30)=abb35(15)*abb35(9)
      abb35(6)=abb35(30)+abb35(6)
      abb35(30)=abb35(5)*spbk4e1
      abb35(34)=-spae2k5*abb35(30)
      abb35(12)=2.0_ki*abb35(12)
      abb35(35)=abb35(17)*abb35(29)
      abb35(36)=abb35(24)*spbk4l3
      abb35(27)=-abb35(36)*abb35(27)
      abb35(11)=spbk4e2*abb35(11)
      abb35(11)=abb35(11)+abb35(27)
      abb35(27)=-spbk4e2*abb35(24)
      abb35(8)=-2.0_ki*abb35(8)
      abb35(37)=-abb35(15)*abb35(29)
      abb35(38)=abb35(19)*spal3k5
      abb35(22)=abb35(38)*abb35(22)
      abb35(7)=-spae2k5*abb35(7)
      abb35(7)=abb35(7)+abb35(22)
      abb35(22)=spae2k5*abb35(19)
      abb35(31)=-spbk4e1*abb35(31)
      abb35(18)=spae1k5*abb35(18)
      abb35(14)=abb35(14)-1.0_ki
      abb35(39)=spak2k5*abb35(14)*abb35(19)
      abb35(17)=-abb35(17)*abb35(39)
      abb35(5)=abb35(28)-abb35(5)
      abb35(28)=-spbk4e1*spak2k5*abb35(5)
      abb35(14)=spbk4k2*abb35(14)*abb35(24)
      abb35(15)=abb35(15)*abb35(14)
      abb35(5)=spae1k5*spbk4k2*abb35(5)
      abb35(20)=spae2k2*abb35(20)
      abb35(30)=spae2k2*abb35(30)
      abb35(19)=abb35(19)*spae2k2
      abb35(25)=abb35(25)*spbk2e2
      abb35(32)=-spbk2e2*abb35(32)
      abb35(24)=abb35(24)*spbk2e2
      R2d35=0.0_ki
      rat2 = rat2 + R2d35
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='35' value='", &
          & R2d35, "'/>"
      end if
   end subroutine
end module p0_gg_hepem_abbrevd35h0
