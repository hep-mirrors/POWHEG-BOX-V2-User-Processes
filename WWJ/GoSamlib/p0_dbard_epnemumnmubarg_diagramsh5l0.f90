module     p0_dbard_epnemumnmubarg_diagramsh5l0
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity5diagramsl0.f90
   ! generator: buildfortranborn.py
   use p0_dbard_epnemumnmubarg_color, only: numcs
   use p0_dbard_epnemumnmubarg_config, only: ki
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   complex(ki), dimension(numcs), parameter :: zero_col = 0.0_ki
   public :: amplitude
contains
!---#[ function amplitude:
   function amplitude()
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_config, only: debug_lo_diagrams, &
        & use_sorted_sum
      use p0_dbard_epnemumnmubarg_accu, only: sorted_sum
      use p0_dbard_epnemumnmubarg_util, only: inspect_lo_diagram
      implicit none
      complex(ki), dimension(numcs) :: amplitude
      complex(ki), dimension(38) :: abb
!      complex(ki), dimension(2,numcs) :: diagrams
      integer :: i
      amplitude(:) = 0.0_ki
      abb(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb(2)=1.0_ki/(-mZ**2+es712+i_*mZ*wZ)
      abb(3)=sqrt2**(-1)
      abb(4)=es345**(-1)
      abb(5)=es71**(-1)
      abb(6)=spbk7k2**(-1)
      abb(7)=1.0_ki/(es34-es56+es712-es345)
      abb(8)=es712**(-1)
      abb(9)=1.0_ki/(-mW**2+es56+i_*mW*wW)
      abb(10)=es456**(-1)
      abb(11)=1.0_ki/(-es34+es56+es712-es456)
      abb(12)=1.0_ki/(es71+es34+es56-es712-es234)
      abb(13)=1.0_ki/(es34+es567-es12-es234)
      abb(14)=i_*abb(3)
      abb(15)=abb(14)*abb(5)*spak1k7
      abb(16)=gW**2
      abb(17)=abb(15)*abb(16)*abb(9)
      abb(18)=spbk6k3*spbk6k2
      abb(19)=spak5k6*abb(18)*abb(17)
      abb(20)=abb(17)*spbk3k2
      abb(21)=-spak3k5*abb(20)*spbk6k3
      abb(19)=abb(19)+abb(21)
      abb(21)=gDl*abb(2)
      abb(22)=spbk2k1*abb(6)
      abb(23)=abb(22)*spak1k4
      abb(23)=abb(23)-spak4k7
      abb(19)=gnel*abb(11)*abb(19)*abb(23)*abb(21)
      abb(20)=abb(20)*spak4k5
      abb(24)=gel*abb(20)*abb(21)
      abb(20)=abb(20)*abb(8)
      abb(25)=1.0_ki/3.0_ki*abb(20)+abb(24)
      abb(26)=abb(22)*spak1k5
      abb(27)=abb(26)-spak5k7
      abb(25)=spbk6k5*abb(10)*abb(27)*abb(25)
      abb(28)=1.0_ki/3.0_ki*abb(8)
      abb(29)=gmul*abb(21)
      abb(29)=abb(29)+abb(28)
      abb(16)=abb(16)*abb(1)
      abb(30)=abb(16)*spbk6k3
      abb(26)=abb(26)*abb(30)
      abb(30)=spak5k7*abb(30)
      abb(26)=abb(26)-abb(30)
      abb(31)=abb(15)*spbk3k2
      abb(26)=spak3k4*abb(7)*abb(29)*abb(31)*abb(26)
      abb(19)=abb(26)+abb(19)+abb(25)
      abb(25)=abb(21)*gWWZ
      abb(25)=abb(25)+abb(28)
      abb(17)=abb(25)*abb(17)*abb(1)
      abb(25)=spbk6k2*abb(17)
      abb(26)=-spak6k7*abb(25)
      abb(28)=spbk3k2*abb(17)
      abb(29)=spak3k7*abb(28)
      abb(32)=abb(22)*abb(17)
      abb(33)=spbk3k2*abb(32)
      abb(34)=-spak1k3*abb(33)
      abb(26)=abb(34)+abb(29)+abb(26)
      abb(29)=spak4k5*spbk6k3
      abb(26)=abb(29)*abb(26)
      abb(22)=abb(18)*abb(15)*abb(22)
      abb(34)=-abb(22)*abb(16)*spak1k5
      abb(35)=abb(15)*spbk6k2
      abb(30)=abb(35)*abb(30)
      abb(30)=abb(30)+abb(34)
      abb(30)=abb(8)*abb(30)
      abb(15)=abb(16)*abb(15)*abb(21)
      abb(16)=-gmul*abb(27)*abb(15)*abb(18)
      abb(16)=2.0_ki*abb(16)+2.0_ki/3.0_ki*abb(30)
      abb(16)=abb(7)*abb(16)
      abb(21)=abb(17)*spak5k7
      abb(30)=abb(32)*spak1k5
      abb(21)=abb(21)-abb(30)
      abb(18)=abb(18)*abb(21)
      abb(16)=abb(18)+abb(16)
      abb(16)=spak4k6*abb(16)
      abb(18)=spbk3k2*spbk6k2
      abb(34)=abb(32)*abb(18)
      abb(36)=spak1k4*abb(34)
      abb(18)=abb(17)*abb(18)
      abb(37)=-spak4k7*abb(18)
      abb(38)=abb(1)*abb(9)*gW**4
      abb(31)=abb(12)*spbk6k2*abb(23)*abb(38)*abb(31)
      abb(31)=2.0_ki*abb(31)+abb(36)+abb(37)
      abb(31)=spak2k5*abb(31)
      abb(30)=spbk6k2*abb(30)
      abb(25)=abb(25)*spak5k7
      abb(25)=abb(30)-abb(25)
      abb(30)=-spbk3k1*spak1k4
      abb(36)=spbk7k3*spak4k7
      abb(30)=abb(36)+abb(30)
      abb(25)=abb(25)*abb(30)
      abb(30)=abb(33)*spak1k4
      abb(28)=abb(28)*spak4k7
      abb(28)=abb(30)-abb(28)
      abb(30)=-spbk7k6*spak5k7
      abb(33)=spbk6k1*spak1k5
      abb(30)=abb(33)+abb(30)
      abb(30)=abb(28)*abb(30)
      abb(33)=spak4k5*abb(28)
      abb(20)=2.0_ki*abb(24)+2.0_ki/3.0_ki*abb(20)
      abb(20)=abb(20)*abb(23)*abb(10)
      abb(20)=abb(20)+abb(33)
      abb(20)=spbk6k4*abb(20)
      abb(24)=spak4k5*spbk6k2
      abb(21)=spbk5k3*abb(24)*abb(21)
      abb(28)=spak3k5*spbk6k3*abb(28)
      abb(17)=abb(17)*abb(29)
      abb(33)=-spak5k7*abb(17)
      abb(29)=abb(29)*abb(32)
      abb(32)=spak1k5*abb(29)
      abb(32)=abb(33)+abb(32)
      abb(32)=spbk5k2*abb(32)
      abb(33)=-spak1k4*abb(29)
      abb(17)=spak4k7*abb(17)
      abb(17)=abb(33)+abb(17)
      abb(17)=spbk4k2*abb(17)
      abb(18)=spak5k7*abb(18)
      abb(33)=-spak1k5*abb(34)
      abb(18)=abb(18)+abb(33)
      abb(18)=spak2k4*abb(18)
      abb(22)=-spak1k4*abb(22)
      abb(33)=-spbk3k1*spak1k7
      abb(34)=-spbk4k3*spak4k7
      abb(33)=abb(33)+abb(34)
      abb(14)=abb(13)*spak1k4*abb(33)*abb(14)*abb(6)*spbk6k2**2
      abb(33)=spbk6k3*abb(35)*spak4k7
      abb(14)=abb(14)+abb(22)+abb(33)
      abb(14)=abb(38)*abb(14)
      abb(14)=2.0_ki*abb(14)
      abb(14)=abb(14)*spak5k6*abb(12)
      abb(22)=spbk5k3*abb(27)
      abb(23)=spbk4k3*abb(23)
      abb(22)=abb(22)+abb(23)
      abb(22)=2.0_ki*abb(22)
      abb(15)=gnmul*abb(4)*abb(22)*abb(15)*abb(24)
      abb(22)=spak1k6*spbk6k2*abb(29)
      abb(14)=abb(22)+abb(18)+abb(17)+abb(32)+abb(31)+abb(28)+abb(21)+abb(15)+a&
      &bb(16)+abb(20)+abb(30)+abb(26)+abb(25)+abb(14)+2.0_ki*abb(19)
      abb(14)=4.0_ki*abb(14)
      amplitude=c1*abb(14)
      if (debug_lo_diagrams) then
         write(*,*) "Using Born optimization, debug_lo_diagrams not implemented&
         &."
      end if
!      if (use_sorted_sum) then
!         do i=1,numcs
!            amplitude(i) = sorted_sum(diagrams(i))
!         end do
!      else
!         do i=1,numcs
!            amplitude(i) = sum(diagrams(i))
!         end do
!      end if
   end function     amplitude
!---#] function amplitude:
end module p0_dbard_epnemumnmubarg_diagramsh5l0
