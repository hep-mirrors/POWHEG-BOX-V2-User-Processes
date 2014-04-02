module     p1_dbarc_epnebbbar_abbrevd32h0
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(41), public :: abb32
   complex(ki), public :: R2d32
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
      abb32(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb32(2)=es234**(-1)
      abb32(3)=es56**(-1)
      abb32(4)=spbl5k2**(-1)
      abb32(5)=spbl6k2**(-1)
      abb32(6)=sqrt(mB**2)
      abb32(7)=spak2l6**(-1)
      abb32(8)=spak2l5**(-1)
      abb32(9)=1.0_ki/(es34+es56-es12-es234)
      abb32(10)=NC*c2
      abb32(10)=abb32(10)-c1
      abb32(11)=TR*gW
      abb32(10)=abb32(10)*abb32(11)**2*i_*CVDC*abb32(3)*abb32(1)
      abb32(11)=-abb32(2)*abb32(10)
      abb32(12)=abb32(11)*spbk3k2**2
      abb32(13)=mB*abb32(12)
      abb32(14)=abb32(4)*spak3k4
      abb32(15)=abb32(14)*spak1l6
      abb32(16)=abb32(15)*abb32(13)
      abb32(17)=abb32(5)*spak3k4
      abb32(18)=abb32(17)*spak1l5
      abb32(19)=abb32(18)*abb32(13)
      abb32(16)=abb32(16)+abb32(19)
      abb32(20)=-2.0_ki*abb32(16)
      abb32(21)=abb32(6)*spal5l6
      abb32(22)=abb32(21)*spak1k2
      abb32(23)=-spak2l6*spak1l5*abb32(6)
      abb32(23)=abb32(23)+abb32(22)
      abb32(23)=abb32(14)*abb32(8)*abb32(23)
      abb32(24)=-spak2l5*spak1l6*abb32(6)
      abb32(22)=abb32(24)-abb32(22)
      abb32(22)=abb32(22)*abb32(17)*abb32(7)
      abb32(24)=abb32(15)+abb32(18)
      abb32(25)=-abb32(6)*abb32(24)
      abb32(22)=2.0_ki*abb32(25)+abb32(22)+abb32(23)
      abb32(23)=spbk3k2*mB
      abb32(22)=-4.0_ki*abb32(22)*abb32(11)*abb32(23)**2
      abb32(19)=4.0_ki*abb32(19)
      abb32(25)=8.0_ki*abb32(16)
      abb32(26)=-spbk3k2*abb32(11)
      abb32(27)=abb32(21)*spak1k4
      abb32(28)=abb32(26)*abb32(27)
      abb32(29)=16.0_ki*abb32(28)
      abb32(12)=-mB**3*abb32(12)
      abb32(30)=abb32(12)*abb32(17)
      abb32(31)=spak1l6*abb32(4)
      abb32(32)=-abb32(31)*abb32(30)*abb32(7)
      abb32(12)=abb32(12)*spak3k4
      abb32(33)=abb32(12)*abb32(8)*abb32(4)**2
      abb32(34)=spak1l6*abb32(33)
      abb32(28)=-2.0_ki*abb32(34)+4.0_ki*abb32(28)+abb32(32)
      abb32(28)=4.0_ki*abb32(28)
      abb32(16)=4.0_ki*abb32(16)
      abb32(13)=-4.0_ki*spak1l5*abb32(13)*abb32(14)
      abb32(32)=spak1l5*spak3k4
      abb32(15)=spbl6k2*abb32(15)
      abb32(15)=abb32(32)+2.0_ki*abb32(15)
      abb32(23)=-abb32(23)*abb32(11)
      abb32(15)=2.0_ki*abb32(23)*abb32(15)
      abb32(30)=abb32(30)*abb32(4)
      abb32(32)=abb32(7)*abb32(30)
      abb32(32)=abb32(33)+2.0_ki*abb32(32)
      abb32(32)=spak1k2*abb32(32)
      abb32(33)=abb32(23)*spak2k4
      abb32(34)=-spak1k4*mB*abb32(10)
      abb32(35)=abb32(9)*abb32(34)
      abb32(36)=abb32(35)*spbk3k1
      abb32(33)=abb32(33)+abb32(36)
      abb32(37)=abb32(23)*spbl5k3
      abb32(14)=abb32(14)*abb32(37)
      abb32(14)=abb32(14)-abb32(33)
      abb32(14)=spak1l5*abb32(14)
      abb32(24)=-spbl6k3*abb32(23)*abb32(24)
      abb32(31)=-spbl6k2*abb32(31)*abb32(33)
      abb32(38)=abb32(35)*spbk4k3
      abb32(39)=-spak4l6*spbl6k2*abb32(4)
      abb32(39)=-spak4l5+abb32(39)
      abb32(39)=abb32(38)*abb32(39)
      abb32(14)=abb32(31)+abb32(24)+abb32(14)+abb32(39)+abb32(32)
      abb32(14)=2.0_ki*abb32(14)
      abb32(24)=8.0_ki*abb32(23)
      abb32(31)=abb32(4)*spak1k4
      abb32(32)=abb32(24)*abb32(31)
      abb32(12)=abb32(5)**2*abb32(7)*abb32(12)
      abb32(39)=-abb32(8)*abb32(30)
      abb32(39)=abb32(39)+abb32(12)
      abb32(39)=spak1k2*abb32(39)
      abb32(17)=abb32(17)*spbl6k3
      abb32(40)=-abb32(23)*abb32(17)
      abb32(40)=abb32(40)+abb32(33)
      abb32(40)=spak1l6*abb32(40)
      abb32(41)=spbl5k2*abb32(5)
      abb32(33)=spak1l5*abb32(33)*abb32(41)
      abb32(41)=spak4l5*abb32(41)
      abb32(41)=abb32(41)+spak4l6
      abb32(38)=abb32(38)*abb32(41)
      abb32(18)=-abb32(18)*abb32(37)
      abb32(18)=abb32(18)+abb32(33)+abb32(40)+abb32(38)+abb32(39)
      abb32(18)=2.0_ki*abb32(18)
      abb32(33)=abb32(5)*spak1k4
      abb32(24)=abb32(24)*abb32(33)
      abb32(37)=abb32(11)*abb32(27)
      abb32(38)=-spbk4k2*abb32(37)
      abb32(21)=abb32(26)*abb32(21)
      abb32(26)=spak1k3*abb32(21)
      abb32(26)=abb32(38)+abb32(26)
      abb32(26)=8.0_ki*abb32(26)
      abb32(11)=abb32(11)*mB
      abb32(31)=-abb32(11)*abb32(31)
      abb32(38)=-spbk4k2*abb32(31)
      abb32(39)=abb32(23)*spak1k3
      abb32(40)=-abb32(4)*abb32(39)
      abb32(38)=abb32(38)+abb32(40)
      abb32(38)=4.0_ki*abb32(38)
      abb32(11)=-abb32(11)*abb32(33)
      abb32(33)=-spbk4k2*abb32(11)
      abb32(39)=-abb32(5)*abb32(39)
      abb32(33)=abb32(33)+abb32(39)
      abb32(33)=4.0_ki*abb32(33)
      abb32(27)=3.0_ki*abb32(27)
      abb32(10)=abb32(10)*abb32(27)
      abb32(27)=spal5l6*abb32(34)
      abb32(10)=abb32(10)+abb32(27)
      abb32(10)=abb32(10)*abb32(9)
      abb32(27)=4.0_ki*abb32(37)-abb32(10)
      abb32(27)=spbk4k3*abb32(27)
      abb32(34)=spak1k2*abb32(21)
      abb32(27)=abb32(27)-4.0_ki*abb32(34)
      abb32(27)=2.0_ki*abb32(27)
      abb32(34)=-abb32(4)*abb32(35)
      abb32(31)=abb32(31)+abb32(34)
      abb32(31)=spbk4k3*abb32(31)
      abb32(34)=abb32(23)*spak1k2
      abb32(37)=abb32(4)*abb32(34)
      abb32(31)=abb32(31)+abb32(37)
      abb32(31)=4.0_ki*abb32(31)
      abb32(35)=abb32(35)*abb32(5)
      abb32(11)=abb32(11)-abb32(35)
      abb32(11)=spbk4k3*abb32(11)
      abb32(34)=abb32(5)*abb32(34)
      abb32(11)=abb32(11)+abb32(34)
      abb32(11)=4.0_ki*abb32(11)
      abb32(23)=abb32(23)*spal5l6
      abb32(34)=-abb32(23)+abb32(21)
      abb32(34)=2.0_ki*spak3k4*abb32(34)
      abb32(17)=abb32(23)*abb32(17)
      abb32(12)=spak2l5*abb32(12)
      abb32(12)=abb32(17)+abb32(12)
      abb32(10)=-spbk3k1*abb32(10)
      abb32(17)=-abb32(23)-abb32(21)
      abb32(17)=spak2k4*abb32(17)
      abb32(10)=abb32(17)+abb32(30)+abb32(10)+2.0_ki*abb32(12)
      abb32(10)=2.0_ki*abb32(10)
      abb32(12)=4.0_ki*abb32(36)
      abb32(17)=-abb32(4)*abb32(12)
      abb32(12)=-abb32(5)*abb32(12)
      R2d32=abb32(20)
      rat2 = rat2 + R2d32
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='32' value='", &
          & R2d32, "'/>"
      end if
   end subroutine
end module p1_dbarc_epnebbbar_abbrevd32h0
