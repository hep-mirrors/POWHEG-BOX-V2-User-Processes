module     p1_dbarc_epnebbbar_abbrevd31h0
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(35), public :: abb31
   complex(ki), public :: R2d31
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p1_dbarc_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_color, only: TR
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      implicit none
      abb31(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb31(2)=NC**(-1)
      abb31(3)=es234**(-1)
      abb31(4)=spbl5k2**(-1)
      abb31(5)=spbl6k2**(-1)
      abb31(6)=spak2l6**(-1)
      abb31(7)=sqrt(mB**2)
      abb31(8)=-NC+2.0_ki*abb31(2)
      abb31(9)=spbk3k2*mB
      abb31(10)=abb31(9)*c2
      abb31(11)=abb31(8)*abb31(10)
      abb31(12)=abb31(2)**2
      abb31(13)=abb31(12)*c1
      abb31(14)=abb31(13)*abb31(9)
      abb31(11)=abb31(11)-abb31(14)
      abb31(15)=TR*gW
      abb31(15)=abb31(15)**2*i_*CVDC*abb31(3)*abb31(1)
      abb31(16)=abb31(15)*spak1l6
      abb31(17)=abb31(16)*abb31(11)
      abb31(18)=-abb31(8)*abb31(16)*c2
      abb31(19)=abb31(13)*abb31(16)
      abb31(19)=abb31(18)+abb31(19)
      abb31(20)=abb31(7)*spbk3k2*abb31(19)
      abb31(21)=abb31(20)+abb31(17)
      abb31(21)=spak2k4*abb31(21)
      abb31(22)=spak3k4*abb31(5)
      abb31(23)=-spbl6k3*abb31(17)*abb31(22)
      abb31(21)=abb31(21)+abb31(23)
      abb31(21)=spbk2k1*abb31(21)
      abb31(23)=-spbk3k1*spak3k4*abb31(20)
      abb31(21)=abb31(23)+abb31(21)
      abb31(21)=spak1l5*abb31(21)
      abb31(18)=abb31(4)*abb31(18)
      abb31(16)=abb31(16)*abb31(4)
      abb31(23)=abb31(16)*abb31(13)
      abb31(18)=abb31(23)+abb31(18)
      abb31(23)=spbk3k2**2
      abb31(24)=abb31(23)*mB**3
      abb31(25)=abb31(22)*abb31(18)*abb31(24)
      abb31(12)=abb31(12)*abb31(15)*c1
      abb31(26)=abb31(15)*abb31(8)
      abb31(27)=abb31(26)*c2
      abb31(27)=abb31(27)-abb31(12)
      abb31(24)=spak3k4*abb31(5)**2*abb31(24)*abb31(27)
      abb31(27)=spak1l5*abb31(24)
      abb31(27)=-abb31(25)+abb31(27)
      abb31(27)=es12*abb31(6)*abb31(27)
      abb31(28)=abb31(15)*abb31(4)
      abb31(29)=abb31(8)*abb31(28)
      abb31(30)=c2*mB
      abb31(31)=-abb31(30)*abb31(29)
      abb31(32)=-abb31(23)*abb31(31)
      abb31(13)=abb31(13)*abb31(28)
      abb31(33)=abb31(23)*mB
      abb31(34)=-abb31(13)*abb31(33)
      abb31(32)=abb31(34)+abb31(32)
      abb31(32)=spbl6k1*spak3k4*abb31(32)*spak1l6**2
      abb31(21)=abb31(32)+abb31(27)+abb31(21)
      abb31(21)=4.0_ki*abb31(21)
      abb31(17)=abb31(17)+2.0_ki*abb31(20)
      abb31(27)=spak4l5*abb31(17)
      abb31(11)=-abb31(16)*abb31(11)
      abb31(16)=spbl6k2*spak4l6
      abb31(32)=abb31(16)*abb31(11)
      abb31(27)=abb31(32)+abb31(27)
      abb31(32)=8.0_ki*abb31(27)
      abb31(25)=-abb31(6)*abb31(25)
      abb31(25)=abb31(25)-abb31(27)
      abb31(25)=8.0_ki*abb31(25)
      abb31(27)=-spak3k4*abb31(33)*abb31(18)
      abb31(26)=-abb31(30)*abb31(26)
      abb31(23)=-abb31(23)*abb31(26)
      abb31(30)=-abb31(33)*abb31(12)
      abb31(23)=abb31(30)+abb31(23)
      abb31(23)=spak1l5*abb31(23)*abb31(22)
      abb31(23)=abb31(27)+abb31(23)
      abb31(23)=8.0_ki*abb31(23)
      abb31(27)=abb31(11)*spbl6k2
      abb31(30)=-spak2k4*abb31(27)
      abb31(11)=spbl6k3*spak3k4*abb31(11)
      abb31(11)=abb31(30)+abb31(11)
      abb31(11)=4.0_ki*abb31(11)
      abb31(30)=-abb31(8)*abb31(28)*abb31(10)
      abb31(14)=abb31(14)*abb31(28)
      abb31(14)=abb31(14)+abb31(30)
      abb31(28)=abb31(14)*spak1k4
      abb31(28)=8.0_ki*abb31(28)
      abb31(30)=-4.0_ki*abb31(22)*abb31(33)*abb31(19)
      abb31(33)=4.0_ki*spak3k4
      abb31(34)=abb31(20)*abb31(33)
      abb31(20)=-spak2k4*abb31(20)
      abb31(24)=spak1k2*abb31(6)*abb31(24)
      abb31(20)=abb31(20)+abb31(24)
      abb31(20)=4.0_ki*abb31(20)
      abb31(24)=-mB+2.0_ki*abb31(7)
      abb31(19)=spak4l5*abb31(24)*abb31(19)
      abb31(16)=abb31(16)*abb31(18)*mB
      abb31(16)=abb31(19)+abb31(16)
      abb31(18)=-spbk4k2*abb31(16)
      abb31(19)=-spak3l5*abb31(17)
      abb31(24)=-spak3l6*abb31(27)
      abb31(18)=abb31(24)+abb31(18)+abb31(19)
      abb31(18)=4.0_ki*abb31(18)
      abb31(19)=abb31(13)*mB
      abb31(19)=abb31(31)+abb31(19)
      abb31(24)=abb31(19)*spak1k4
      abb31(31)=-spbk4k2*abb31(24)
      abb31(35)=-spak1k3*abb31(14)
      abb31(31)=abb31(31)+abb31(35)
      abb31(31)=4.0_ki*abb31(31)
      abb31(16)=spbk4k3*abb31(16)
      abb31(17)=spak2l5*abb31(17)
      abb31(27)=spak2l6*abb31(27)
      abb31(16)=abb31(27)+abb31(16)+abb31(17)
      abb31(16)=4.0_ki*abb31(16)
      abb31(17)=spbk4k3*abb31(24)
      abb31(24)=spak1k2*abb31(14)
      abb31(17)=abb31(17)+abb31(24)
      abb31(17)=4.0_ki*abb31(17)
      abb31(24)=abb31(33)*abb31(14)
      abb31(8)=abb31(8)*abb31(10)*abb31(15)
      abb31(10)=abb31(9)*abb31(12)
      abb31(8)=-abb31(10)+abb31(8)
      abb31(10)=abb31(8)*abb31(22)
      abb31(15)=4.0_ki*abb31(10)
      abb31(8)=abb31(8)*abb31(5)
      abb31(27)=spbk2k1*spak2k4*abb31(8)
      abb31(10)=-spbk3k1*abb31(10)
      abb31(10)=abb31(10)+abb31(27)
      abb31(10)=spak1l5*abb31(10)
      abb31(27)=-c2*abb31(29)
      abb31(13)=abb31(13)+abb31(27)
      abb31(9)=abb31(7)*abb31(22)*abb31(13)*abb31(9)**2
      abb31(9)=abb31(9)+abb31(10)
      abb31(9)=4.0_ki*abb31(9)
      abb31(10)=abb31(14)*spak4l6
      abb31(13)=abb31(8)*spak4l5
      abb31(10)=abb31(10)+abb31(13)
      abb31(10)=8.0_ki*abb31(10)
      abb31(12)=abb31(12)*mB
      abb31(12)=abb31(12)+abb31(26)
      abb31(12)=abb31(12)*spak4l5*abb31(5)
      abb31(13)=abb31(19)*spak4l6
      abb31(12)=abb31(12)-abb31(13)
      abb31(13)=spbk4k2*abb31(12)
      abb31(19)=-spak3l5*abb31(8)
      abb31(22)=-spak3l6*abb31(14)
      abb31(13)=abb31(22)+abb31(13)+abb31(19)
      abb31(13)=4.0_ki*abb31(13)
      abb31(12)=-spbk4k3*abb31(12)
      abb31(8)=spak2l5*abb31(8)
      abb31(14)=spak2l6*abb31(14)
      abb31(8)=abb31(14)+abb31(12)+abb31(8)
      abb31(8)=4.0_ki*abb31(8)
      R2d31=0.0_ki
      rat2 = rat2 + R2d31
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='31' value='", &
          & R2d31, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd31h0
