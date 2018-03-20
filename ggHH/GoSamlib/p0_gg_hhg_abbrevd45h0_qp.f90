module     p0_gg_hhg_abbrevd45h0_qp
   use p0_gg_hhg_config, only: ki => ki_qp
   use p0_gg_hhg_kinematics_qp, only: epstensor
   use p0_gg_hhg_globalsh0_qp
   implicit none
   private
   complex(ki), dimension(34), public :: abb45
   complex(ki), public :: R2d45
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_gg_hhg_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_color_qp, only: TR
      use p0_gg_hhg_globalsl1_qp, only: epspow
      implicit none
      abb45(1)=sqrt(mT**2)
      abb45(2)=sqrt2**(-1)
      abb45(3)=spbk2k1**(-1)
      abb45(4)=spak2k5**(-1)
      abb45(5)=spbk5k2**(-1)
      abb45(6)=spak2l3**(-1)
      abb45(7)=spbl3k2**(-1)
      abb45(8)=es34-es51
      abb45(9)=2.0_ki*es12
      abb45(10)=abb45(8)-abb45(9)
      abb45(11)=abb45(7)*abb45(6)*mH**2
      abb45(12)=abb45(10)*abb45(11)
      abb45(13)=spak2l3*spbl3k2
      abb45(9)=-abb45(9)+abb45(13)+abb45(12)
      abb45(9)=abb45(9)*spak1k2
      abb45(14)=abb45(5)*spbk5l3*spak1l3
      abb45(15)=-abb45(10)*abb45(14)
      abb45(16)=abb45(1)**2
      abb45(17)=abb45(16)*spak1k2
      abb45(9)=abb45(15)-abb45(9)-2.0_ki*abb45(17)
      abb45(15)=c2-c1
      abb45(18)=-abb45(16)*abb45(15)
      abb45(19)=gHT**2*abb45(2)*i_
      abb45(20)=2.0_ki*abb45(19)
      abb45(21)=abb45(3)*abb45(4)
      abb45(22)=abb45(20)*abb45(21)
      abb45(9)=abb45(22)*abb45(18)*abb45(9)
      abb45(17)=-abb45(17)*abb45(15)
      abb45(23)=abb45(11)+1.0_ki
      abb45(23)=-abb45(23)*abb45(17)
      abb45(24)=abb45(18)*abb45(14)
      abb45(23)=abb45(24)+abb45(23)
      abb45(24)=abb45(19)*abb45(21)
      abb45(25)=4.0_ki*abb45(24)
      abb45(23)=abb45(23)*abb45(25)
      abb45(26)=abb45(17)*abb45(25)
      abb45(27)=-spak1k2*abb45(15)
      abb45(24)=-8.0_ki*abb45(27)*abb45(24)
      abb45(27)=abb45(27)*abb45(25)
      abb45(21)=abb45(21)*abb45(5)
      abb45(28)=abb45(20)*abb45(21)
      abb45(17)=abb45(17)*abb45(28)
      abb45(29)=-spbl3k2*abb45(17)
      abb45(30)=-spbk5l3*abb45(17)
      abb45(22)=abb45(18)*abb45(22)
      abb45(31)=-spak1l3*abb45(22)
      abb45(13)=abb45(10)-abb45(13)
      abb45(13)=abb45(13)*abb45(16)
      abb45(8)=abb45(8)-es12
      abb45(8)=abb45(8)*abb45(11)*es12
      abb45(8)=abb45(13)+abb45(8)
      abb45(8)=-abb45(21)*abb45(8)
      abb45(8)=abb45(14)+abb45(8)
      abb45(8)=abb45(20)*abb45(15)*abb45(8)
      abb45(13)=abb45(21)*abb45(19)
      abb45(14)=4.0_ki*abb45(13)
      abb45(16)=abb45(15)*abb45(14)
      abb45(12)=abb45(12)*abb45(16)
      abb45(19)=8.0_ki*abb45(13)
      abb45(11)=-abb45(11)*abb45(15)
      abb45(21)=-abb45(11)*abb45(19)
      abb45(19)=-abb45(15)*abb45(19)
      abb45(28)=abb45(15)*abb45(28)
      abb45(10)=abb45(10)*abb45(28)
      abb45(20)=abb45(20)*abb45(5)
      abb45(32)=abb45(15)*abb45(20)*abb45(3)
      abb45(33)=-spbk5l3*abb45(32)
      abb45(20)=abb45(15)*abb45(20)
      abb45(34)=-abb45(4)*spak1l3*abb45(20)
      abb45(22)=spak2l3*abb45(22)
      abb45(15)=abb45(25)*spak2l3*abb45(15)
      abb45(17)=spbk5k1*abb45(17)
      abb45(13)=-12.0_ki*abb45(18)*abb45(13)
      abb45(11)=-abb45(11)*abb45(14)
      abb45(14)=spbk5k1*abb45(32)
      R2d45=0.0_ki
      rat2 = rat2 + R2d45
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='45' value='", &
          & R2d45, "'/>"
      end if
   end subroutine
end module p0_gg_hhg_abbrevd45h0_qp
