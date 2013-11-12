module     p0_gg_hepem_abbrevd37h4
   use p0_gg_hepem_config, only: ki
   use p0_gg_hepem_globalsh4
   implicit none
   private
   complex(ki), dimension(39), public :: abb37
   complex(ki), public :: R2d37
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
      abb37(1)=1.0_ki/(-mZ**2+es45+i_*mZ*wZ)
      abb37(2)=sqrt(mB**2)
      abb37(3)=spak2l3**(-1)
      abb37(4)=spbl3k2**(-1)
      abb37(5)=gBl-gBr
      abb37(5)=abb37(1)*abb37(5)*i_*c1*gHB*ger
      abb37(6)=abb37(2)**3*abb37(5)
      abb37(7)=abb37(6)*spae1e2
      abb37(8)=abb37(7)*spbk5e1
      abb37(9)=spak2k4*spbk2e2
      abb37(10)=-abb37(9)*abb37(8)
      abb37(11)=abb37(6)*spbe2e1
      abb37(12)=abb37(11)*spae1k4
      abb37(13)=spbk5k2*spae2k2
      abb37(14)=abb37(13)*abb37(12)
      abb37(10)=abb37(10)+abb37(14)
      abb37(14)=abb37(3)*abb37(4)*mH**2
      abb37(15)=abb37(14)-2.0_ki
      abb37(10)=abb37(15)*abb37(10)
      abb37(15)=spak1k4*spbk1e1
      abb37(16)=-spbk5e2*abb37(15)
      abb37(17)=-spbl3e2*spal3k4*spbk5e1
      abb37(16)=abb37(17)+abb37(16)
      abb37(16)=abb37(7)*abb37(16)
      abb37(17)=spbk5k1*spae1k1
      abb37(18)=spae2k4*abb37(17)
      abb37(19)=spae2l3*spbk5l3*spae1k4
      abb37(18)=abb37(19)+abb37(18)
      abb37(18)=abb37(11)*abb37(18)
      abb37(5)=-abb37(2)*abb37(5)
      abb37(19)=abb37(5)*spbe2e1
      abb37(20)=abb37(19)*abb37(17)
      abb37(21)=abb37(20)*spal3k4
      abb37(22)=spbl3k2*spae2k2
      abb37(23)=-abb37(22)*abb37(21)
      abb37(24)=abb37(5)*spae1e2
      abb37(25)=abb37(24)*abb37(15)
      abb37(26)=abb37(25)*spbk5l3
      abb37(27)=spak2l3*spbk2e2
      abb37(28)=abb37(27)*abb37(26)
      abb37(10)=abb37(28)+abb37(23)+abb37(18)+abb37(16)+abb37(10)
      abb37(16)=spbk5e2*abb37(25)
      abb37(18)=-spae2k4*abb37(20)
      abb37(16)=abb37(16)+abb37(18)
      abb37(18)=abb37(5)*spbk5l3
      abb37(23)=abb37(18)*abb37(27)
      abb37(28)=-spbk5e2*abb37(6)
      abb37(23)=abb37(23)+abb37(28)
      abb37(23)=spae1k4*abb37(23)
      abb37(28)=abb37(14)*abb37(5)
      abb37(29)=2.0_ki*abb37(5)
      abb37(30)=abb37(29)-abb37(28)
      abb37(9)=abb37(9)*abb37(30)
      abb37(31)=abb37(5)*spal3k4
      abb37(32)=abb37(31)*spbl3e2
      abb37(9)=abb37(32)-abb37(9)
      abb37(32)=-abb37(17)*abb37(9)
      abb37(23)=abb37(32)+abb37(23)
      abb37(32)=abb37(5)*spae1k4
      abb37(33)=spbk5e2*abb37(32)
      abb37(34)=-abb37(31)*abb37(22)
      abb37(6)=spae2k4*abb37(6)
      abb37(6)=abb37(34)+abb37(6)
      abb37(6)=spbk5e1*abb37(6)
      abb37(13)=abb37(13)*abb37(30)
      abb37(30)=abb37(18)*spae2l3
      abb37(13)=abb37(30)-abb37(13)
      abb37(30)=abb37(15)*abb37(13)
      abb37(6)=abb37(30)+abb37(6)
      abb37(30)=abb37(5)*spbk5e1
      abb37(34)=-spae2k4*abb37(30)
      abb37(12)=-2.0_ki*abb37(12)
      abb37(35)=-abb37(15)*abb37(29)
      abb37(36)=abb37(19)*spal3k4
      abb37(22)=abb37(36)*abb37(22)
      abb37(11)=-spae2k4*abb37(11)
      abb37(11)=abb37(11)+abb37(22)
      abb37(22)=spae2k4*abb37(19)
      abb37(8)=2.0_ki*abb37(8)
      abb37(37)=abb37(17)*abb37(29)
      abb37(38)=abb37(24)*spbk5l3
      abb37(27)=-abb37(38)*abb37(27)
      abb37(7)=spbk5e2*abb37(7)
      abb37(7)=abb37(7)+abb37(27)
      abb37(27)=-spbk5e2*abb37(24)
      abb37(31)=-spbk5e1*abb37(31)
      abb37(18)=spae1k4*abb37(18)
      abb37(14)=abb37(14)-1.0_ki
      abb37(39)=spak2k4*abb37(14)*abb37(19)
      abb37(17)=-abb37(17)*abb37(39)
      abb37(5)=abb37(28)-abb37(5)
      abb37(28)=-spbk5e1*spak2k4*abb37(5)
      abb37(14)=spbk5k2*abb37(14)*abb37(24)
      abb37(15)=abb37(15)*abb37(14)
      abb37(5)=spae1k4*spbk5k2*abb37(5)
      abb37(20)=spae2k2*abb37(20)
      abb37(30)=spae2k2*abb37(30)
      abb37(19)=abb37(19)*spae2k2
      abb37(25)=abb37(25)*spbk2e2
      abb37(32)=-spbk2e2*abb37(32)
      abb37(24)=abb37(24)*spbk2e2
      R2d37=0.0_ki
      rat2 = rat2 + R2d37
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='37' value='", &
          & R2d37, "'/>"
      end if
   end subroutine
end module p0_gg_hepem_abbrevd37h4
