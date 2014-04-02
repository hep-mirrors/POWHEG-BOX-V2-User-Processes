module     p0_dbaru_epnebbbar_abbrevd26h0
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_globalsh0
   implicit none
   private
   complex(ki), dimension(45), public :: abb26
   complex(ki), public :: R2d26
   public :: init_abbrev
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
contains
   subroutine     init_abbrev()
      use p0_dbaru_epnebbbar_config, only: deltaOS, &
     &    logfile, debug_nlo_diagrams
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_color, only: TR
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      implicit none
      abb26(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb26(2)=sqrt(mB**2)
      abb26(3)=NC**(-1)
      abb26(4)=spbl6k2**(-1)
      abb26(5)=spak2l6**(-1)
      abb26(6)=spbl5k2**(-1)
      abb26(7)=spak2l5**(-1)
      abb26(8)=abb26(3)**2
      abb26(8)=abb26(8)+1.0_ki
      abb26(9)=TR*gW
      abb26(9)=i_*CVDU*abb26(9)**2
      abb26(10)=abb26(9)*abb26(1)
      abb26(11)=spbk3k2*abb26(10)
      abb26(12)=abb26(11)*abb26(8)
      abb26(13)=spak1k4*c1
      abb26(14)=abb26(12)*abb26(13)
      abb26(15)=spak1l5*abb26(2)
      abb26(16)=abb26(14)*abb26(15)
      abb26(17)=mB**2
      abb26(18)=abb26(17)*abb26(16)
      abb26(19)=2.0_ki*c2
      abb26(11)=abb26(19)*abb26(11)*abb26(3)
      abb26(20)=abb26(11)*abb26(15)
      abb26(21)=abb26(20)*abb26(17)
      abb26(22)=-spak1k4*abb26(21)
      abb26(18)=abb26(18)+abb26(22)
      abb26(18)=abb26(4)*abb26(18)
      abb26(22)=abb26(20)*spak1k4
      abb26(16)=abb26(22)-abb26(16)
      abb26(22)=spak2l6*abb26(16)
      abb26(18)=abb26(18)+abb26(22)
      abb26(18)=spbk2k1*abb26(18)
      abb26(22)=abb26(12)*abb26(17)
      abb26(23)=abb26(15)*c1
      abb26(24)=abb26(22)*abb26(23)
      abb26(24)=abb26(24)-abb26(21)
      abb26(25)=-abb26(4)*spak4l5*abb26(24)
      abb26(26)=abb26(12)*abb26(23)
      abb26(20)=abb26(26)-abb26(20)
      abb26(26)=abb26(20)*spak4l5
      abb26(27)=spak2l6*abb26(26)
      abb26(25)=abb26(25)+abb26(27)
      abb26(25)=spbl5k2*abb26(25)
      abb26(18)=abb26(25)+abb26(18)
      abb26(18)=4.0_ki*abb26(18)
      abb26(25)=abb26(20)*spak4l6
      abb26(27)=-8.0_ki*abb26(25)
      abb26(28)=abb26(12)*c1
      abb26(29)=abb26(11)-abb26(28)
      abb26(30)=-mB*abb26(29)
      abb26(31)=mB**3
      abb26(32)=abb26(28)*abb26(31)
      abb26(33)=abb26(31)*abb26(11)
      abb26(34)=-abb26(32)+abb26(33)
      abb26(35)=abb26(5)*abb26(4)
      abb26(34)=abb26(34)*abb26(35)
      abb26(30)=abb26(30)+abb26(34)
      abb26(30)=spak4l5*abb26(30)
      abb26(34)=spak1k4*abb26(6)
      abb26(36)=abb26(35)*abb26(29)*abb26(31)*abb26(34)
      abb26(37)=abb26(6)*mB
      abb26(38)=abb26(37)*abb26(11)
      abb26(39)=abb26(38)*spak1k4
      abb26(40)=abb26(14)*abb26(37)
      abb26(39)=abb26(39)-abb26(40)
      abb26(36)=abb26(36)-abb26(39)
      abb26(40)=-spbk2k1*abb26(36)
      abb26(30)=abb26(40)+abb26(30)
      abb26(30)=spak1l6*abb26(30)
      abb26(24)=-abb26(24)*abb26(35)
      abb26(20)=abb26(24)+abb26(20)
      abb26(20)=spak4l6*abb26(20)
      abb26(20)=abb26(20)+abb26(30)
      abb26(20)=8.0_ki*abb26(20)
      abb26(24)=4.0_ki*abb26(25)
      abb26(25)=4.0_ki*abb26(26)
      abb26(8)=abb26(9)*abb26(1)*abb26(8)
      abb26(9)=abb26(8)*abb26(23)
      abb26(10)=abb26(10)*abb26(19)*abb26(3)
      abb26(19)=abb26(10)*abb26(15)
      abb26(9)=abb26(9)-abb26(19)
      abb26(23)=4.0_ki*abb26(9)
      abb26(26)=spbl6k2*spak4l6*abb26(23)
      abb26(30)=abb26(8)*c1
      abb26(30)=abb26(30)-abb26(10)
      abb26(40)=abb26(30)*spak4l5
      abb26(41)=-spak1l6*abb26(40)
      abb26(10)=abb26(10)*spak1k4
      abb26(8)=abb26(8)*abb26(13)
      abb26(10)=abb26(10)-abb26(8)
      abb26(13)=spal5l6*abb26(10)
      abb26(13)=abb26(13)+abb26(41)
      abb26(13)=spbl6k3*abb26(2)*abb26(13)
      abb26(17)=abb26(17)*abb26(2)
      abb26(41)=-abb26(31)-abb26(17)
      abb26(41)=abb26(41)*abb26(11)
      abb26(42)=abb26(17)*abb26(28)
      abb26(32)=abb26(41)+abb26(32)+abb26(42)
      abb26(32)=abb26(32)*abb26(35)
      abb26(41)=abb26(2)+mB
      abb26(29)=abb26(41)*abb26(29)
      abb26(29)=abb26(32)+abb26(29)
      abb26(32)=spak1k2*spak4l5
      abb26(29)=abb26(29)*abb26(32)
      abb26(41)=abb26(6)*c1
      abb26(22)=abb26(22)*abb26(41)
      abb26(43)=-abb26(2)*abb26(22)
      abb26(44)=abb26(17)*abb26(11)
      abb26(45)=abb26(6)*abb26(44)
      abb26(43)=abb26(43)+abb26(45)
      abb26(32)=abb26(43)*abb26(32)
      abb26(22)=-abb26(15)*abb26(22)
      abb26(21)=abb26(6)*abb26(21)
      abb26(21)=abb26(22)+abb26(21)
      abb26(21)=spak2k4*abb26(21)
      abb26(21)=abb26(32)+abb26(21)
      abb26(21)=abb26(7)*abb26(21)
      abb26(22)=es12*abb26(36)
      abb26(32)=abb26(42)-abb26(44)
      abb26(32)=abb26(34)*abb26(32)
      abb26(11)=abb26(11)*spak1k4
      abb26(11)=abb26(14)-abb26(11)
      abb26(14)=-abb26(35)*abb26(17)
      abb26(14)=abb26(14)+abb26(2)
      abb26(11)=spak2l5*abb26(11)*abb26(14)
      abb26(9)=spbl5k3*spak4l5*abb26(9)
      abb26(8)=-abb26(15)*abb26(8)
      abb26(14)=spak1k4*abb26(19)
      abb26(8)=abb26(8)+abb26(14)
      abb26(8)=spbk3k1*abb26(8)
      abb26(8)=abb26(8)+abb26(9)+abb26(22)+abb26(11)+abb26(21)+abb26(29)+abb26(&
      &13)+abb26(32)
      abb26(8)=4.0_ki*abb26(8)
      abb26(9)=-8.0_ki*abb26(39)
      abb26(11)=-8.0_ki*abb26(36)
      abb26(13)=4.0_ki*abb26(39)
      abb26(14)=-4.0_ki*abb26(16)
      abb26(15)=abb26(28)*abb26(37)
      abb26(15)=abb26(15)-abb26(38)
      abb26(16)=abb26(15)*spak1l6
      abb26(17)=-8.0_ki*abb26(16)
      abb26(12)=abb26(41)*abb26(31)*abb26(12)
      abb26(19)=abb26(33)*abb26(6)
      abb26(12)=abb26(12)-abb26(19)
      abb26(12)=abb26(12)*abb26(35)
      abb26(12)=abb26(12)-abb26(15)
      abb26(19)=-8.0_ki*spak1l6*abb26(12)
      abb26(16)=4.0_ki*abb26(16)
      abb26(15)=8.0_ki*spak4l6*abb26(15)
      abb26(21)=mB*abb26(40)
      abb26(10)=spbk2k1*abb26(37)*abb26(10)
      abb26(10)=abb26(21)+abb26(10)
      abb26(10)=4.0_ki*abb26(10)
      abb26(12)=-4.0_ki*spak2k4*abb26(12)
      abb26(21)=4.0_ki*abb26(37)*abb26(30)
      R2d26=0.0_ki
      rat2 = rat2 + R2d26
      if (debug_nlo_diagrams) then
          write (logfile,*) "<result name='r2' index='26' value='", &
          & R2d26, "'/>"
      end if
   end subroutine
end module p0_dbaru_epnebbbar_abbrevd26h0
