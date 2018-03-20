module     p0_gg_hhg_abbrevd49h0
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_kinematics, only: epstensor
   use p0_gg_hhg_globalsh0
   implicit none
   private
   complex(ki), dimension(34), public :: abb49
   complex(ki), public :: R2d49
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_model
      use p0_gg_hhg_color, only: TR
      use p0_gg_hhg_globalsl1, only: epspow
      implicit none
      abb49(1)=sqrt(mT**2)
      abb49(2)=sqrt2**(-1)
      abb49(3)=spbk2k1**(-1)
      abb49(4)=spak2k5**(-1)
      abb49(5)=spbk5k2**(-1)
      abb49(6)=spak2l4**(-1)
      abb49(7)=spbl4k2**(-1)
      abb49(8)=es34-es51
      abb49(9)=2.0_ki*es12
      abb49(10)=abb49(8)-abb49(9)
      abb49(11)=abb49(7)*abb49(6)*mH**2
      abb49(12)=abb49(10)*abb49(11)
      abb49(13)=spak2l4*spbl4k2
      abb49(9)=-abb49(9)+abb49(13)+abb49(12)
      abb49(9)=abb49(9)*spak1k2
      abb49(14)=abb49(5)*spbk5l4*spak1l4
      abb49(15)=-abb49(10)*abb49(14)
      abb49(16)=abb49(1)**2
      abb49(17)=abb49(16)*spak1k2
      abb49(9)=abb49(15)-abb49(9)-2.0_ki*abb49(17)
      abb49(15)=c2-c1
      abb49(18)=-abb49(16)*abb49(15)
      abb49(19)=gHT**2*abb49(2)*i_
      abb49(20)=2.0_ki*abb49(19)
      abb49(21)=abb49(3)*abb49(4)
      abb49(22)=abb49(20)*abb49(21)
      abb49(9)=abb49(22)*abb49(18)*abb49(9)
      abb49(17)=-abb49(17)*abb49(15)
      abb49(23)=abb49(11)+1.0_ki
      abb49(23)=-abb49(23)*abb49(17)
      abb49(24)=abb49(18)*abb49(14)
      abb49(23)=abb49(24)+abb49(23)
      abb49(24)=abb49(19)*abb49(21)
      abb49(25)=4.0_ki*abb49(24)
      abb49(23)=abb49(23)*abb49(25)
      abb49(26)=abb49(17)*abb49(25)
      abb49(27)=-spak1k2*abb49(15)
      abb49(24)=-8.0_ki*abb49(27)*abb49(24)
      abb49(27)=abb49(27)*abb49(25)
      abb49(21)=abb49(21)*abb49(5)
      abb49(28)=abb49(20)*abb49(21)
      abb49(17)=abb49(17)*abb49(28)
      abb49(29)=-spbl4k2*abb49(17)
      abb49(30)=-spbk5l4*abb49(17)
      abb49(22)=abb49(18)*abb49(22)
      abb49(31)=-spak1l4*abb49(22)
      abb49(13)=abb49(10)-abb49(13)
      abb49(13)=abb49(13)*abb49(16)
      abb49(8)=abb49(8)-es12
      abb49(8)=abb49(8)*abb49(11)*es12
      abb49(8)=abb49(13)+abb49(8)
      abb49(8)=-abb49(21)*abb49(8)
      abb49(8)=abb49(14)+abb49(8)
      abb49(8)=abb49(20)*abb49(15)*abb49(8)
      abb49(13)=abb49(21)*abb49(19)
      abb49(14)=4.0_ki*abb49(13)
      abb49(16)=abb49(15)*abb49(14)
      abb49(12)=abb49(12)*abb49(16)
      abb49(19)=8.0_ki*abb49(13)
      abb49(11)=-abb49(11)*abb49(15)
      abb49(21)=-abb49(11)*abb49(19)
      abb49(19)=-abb49(15)*abb49(19)
      abb49(28)=abb49(15)*abb49(28)
      abb49(10)=abb49(10)*abb49(28)
      abb49(20)=abb49(20)*abb49(5)
      abb49(32)=abb49(15)*abb49(20)*abb49(3)
      abb49(33)=-spbk5l4*abb49(32)
      abb49(20)=abb49(15)*abb49(20)
      abb49(34)=-abb49(4)*spak1l4*abb49(20)
      abb49(22)=spak2l4*abb49(22)
      abb49(15)=abb49(25)*spak2l4*abb49(15)
      abb49(17)=spbk5k1*abb49(17)
      abb49(13)=-12.0_ki*abb49(18)*abb49(13)
      abb49(11)=-abb49(11)*abb49(14)
      abb49(14)=spbk5k1*abb49(32)
      R2d49=0.0_ki
      rat2 = rat2 + R2d49
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='49' value='", &
          & R2d49, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd49h0
