module     p12_sbars_epnemumnmubarg_diagramsh6l0
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p12_sbars_epnemumnmubarg/helicity6diagramsl0.f90
   ! generator: buildfortranborn.py
   use p12_sbars_epnemumnmubarg_color, only: numcs
   use p12_sbars_epnemumnmubarg_config, only: ki
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   complex(ki), dimension(numcs), parameter :: zero_col = 0.0_ki
   public :: amplitude
contains
!---#[ function amplitude:
   function amplitude()
      use p12_sbars_epnemumnmubarg_model
      use p12_sbars_epnemumnmubarg_kinematics
      use p12_sbars_epnemumnmubarg_color
      use p12_sbars_epnemumnmubarg_config, only: debug_lo_diagrams, &
        & use_sorted_sum
      use p12_sbars_epnemumnmubarg_accu, only: sorted_sum
      use p12_sbars_epnemumnmubarg_util, only: inspect_lo_diagram
      implicit none
      complex(ki), dimension(numcs) :: amplitude
      complex(ki), dimension(36) :: abb
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
      abb(12)=1.0_ki/(-es71+es712-es12)
      abb(13)=es71+es12
      abb(14)=abb(13)*abb(8)
      abb(14)=abb(14)-1.0_ki
      abb(15)=spak2k5*spbk6k2
      abb(16)=abb(15)*abb(14)
      abb(17)=-spak5k7*spbk7k6*abb(14)
      abb(16)=abb(17)+abb(16)
      abb(16)=spak4k7*abb(16)
      abb(17)=spbk6k3*spak4k7
      abb(18)=abb(17)*spak3k5*abb(14)
      abb(19)=spak4k7*spbk6k4*abb(14)
      abb(20)=-spbk6k3*spak3k7*abb(14)
      abb(19)=abb(19)+abb(20)
      abb(19)=spak4k5*abb(19)
      abb(20)=spak4k7*spak1k5*abb(14)
      abb(21)=-spak5k7*spak1k4*abb(14)
      abb(20)=abb(20)+abb(21)
      abb(20)=spbk6k1*abb(20)
      abb(16)=abb(20)+abb(19)+abb(18)+abb(16)
      abb(16)=spbk3k1*abb(16)
      abb(18)=spak2k4*spbk3k2
      abb(19)=abb(18)*abb(13)
      abb(20)=-abb(8)*abb(19)
      abb(21)=spak4k7*spbk7k3*abb(14)
      abb(20)=abb(21)+abb(18)+abb(20)
      abb(20)=spak5k7*abb(20)
      abb(21)=spbk6k3*spak5k7
      abb(22)=-abb(21)*spak4k6*abb(14)
      abb(23)=-spak5k7*spbk5k3*abb(14)
      abb(24)=spbk6k3*spak6k7*abb(14)
      abb(23)=abb(23)+abb(24)
      abb(23)=spak4k5*abb(23)
      abb(20)=abb(23)+abb(20)+abb(22)
      abb(20)=spbk6k1*abb(20)
      abb(22)=-spak4k7*spbk4k1*abb(14)
      abb(23)=spak5k7*spbk5k1*abb(14)
      abb(22)=abb(22)+abb(23)
      abb(23)=spak4k5*spbk6k3
      abb(22)=abb(22)*abb(23)
      abb(16)=abb(16)+abb(22)+abb(20)
      abb(20)=es712*abb(18)
      abb(19)=abb(20)-abb(19)
      abb(19)=gWWZ*abb(19)
      abb(13)=abb(13)-es712
      abb(20)=spak4k7*gWWZ
      abb(22)=abb(13)*abb(20)
      abb(24)=spbk7k3*abb(22)
      abb(19)=abb(19)+abb(24)
      abb(19)=spak5k7*abb(19)
      abb(24)=abb(13)*abb(21)
      abb(25)=gWWZ*spak4k6
      abb(26)=-abb(24)*abb(25)
      abb(27)=abb(13)*spak5k7*gWWZ
      abb(28)=-spbk5k3*abb(27)
      abb(29)=abb(13)*spbk6k3*gWWZ
      abb(30)=spak6k7*abb(29)
      abb(28)=abb(28)+abb(30)
      abb(28)=spak4k5*abb(28)
      abb(19)=abb(28)+abb(19)+abb(26)
      abb(19)=spbk6k1*abb(19)
      abb(26)=spbk6k3*spak3k5
      abb(15)=abb(26)+abb(15)
      abb(15)=abb(13)*abb(15)
      abb(26)=abb(13)*spak5k7
      abb(28)=-spbk7k6*abb(26)
      abb(15)=abb(28)+abb(15)
      abb(15)=abb(20)*abb(15)
      abb(28)=spbk6k4*abb(22)
      abb(29)=-spak3k7*abb(29)
      abb(28)=abb(28)+abb(29)
      abb(28)=spak4k5*abb(28)
      abb(29)=spak1k5*abb(22)
      abb(30)=-spak1k4*abb(27)
      abb(29)=abb(29)+abb(30)
      abb(29)=spbk6k1*abb(29)
      abb(15)=abb(29)+abb(28)+abb(15)
      abb(15)=spbk3k1*abb(15)
      abb(22)=-spbk4k1*abb(22)
      abb(27)=spbk5k1*abb(27)
      abb(22)=abb(22)+abb(27)
      abb(22)=abb(22)*abb(23)
      abb(15)=abb(15)+abb(22)+abb(19)
      abb(19)=abb(2)*gSr
      abb(15)=abb(15)*abb(19)
      abb(15)=1.0_ki/3.0_ki*abb(16)+abb(15)
      abb(15)=abb(12)*abb(15)
      abb(16)=abb(8)*spbk2k1
      abb(22)=abb(5)*spak1k7
      abb(23)=abb(16)*abb(22)
      abb(27)=spak2k4*spak1k5
      abb(28)=spak2k5*spak1k4
      abb(27)=abb(27)-abb(28)
      abb(27)=abb(27)*spbk6k1
      abb(28)=abb(23)*abb(27)
      abb(29)=abb(22)*spak2k5
      abb(16)=abb(29)*abb(16)
      abb(30)=spbk6k2*abb(16)
      abb(22)=abb(22)*spbk2k1
      abb(31)=spbk6k3*abb(22)
      abb(32)=abb(31)*abb(8)
      abb(33)=spak3k5*abb(32)
      abb(30)=abb(33)+abb(30)
      abb(30)=spak2k4*abb(30)
      abb(33)=spak2k4*abb(23)
      abb(34)=spak5k7*spbk7k6
      abb(35)=-abb(33)*abb(34)
      abb(33)=spbk6k4*abb(33)
      abb(36)=-spak2k3*abb(32)
      abb(33)=abb(33)+abb(36)
      abb(33)=spak4k5*abb(33)
      abb(28)=abb(28)+abb(33)+abb(35)+abb(30)
      abb(28)=spbk3k1*abb(28)
      abb(30)=spak4k7*spbk7k3
      abb(30)=-abb(18)+abb(30)
      abb(30)=abb(16)*abb(30)
      abb(16)=-spbk5k3*abb(16)
      abb(33)=spak2k6*abb(32)
      abb(16)=abb(16)+abb(33)
      abb(16)=spak4k5*abb(16)
      abb(33)=abb(32)*spak2k5
      abb(35)=-spak4k6*abb(33)
      abb(16)=abb(16)+abb(35)+abb(30)
      abb(16)=spbk6k1*abb(16)
      abb(30)=spak2k4*spbk4k1
      abb(35)=spak2k5*spbk5k1
      abb(30)=abb(30)-abb(35)
      abb(30)=abb(30)*spak4k5
      abb(32)=-abb(32)*abb(30)
      abb(16)=abb(28)+abb(32)+abb(16)
      abb(28)=abb(29)*spbk2k1
      abb(29)=abb(28)*gWWZ
      abb(18)=-abb(18)*abb(29)
      abb(20)=spbk7k3*abb(20)*abb(28)
      abb(28)=abb(31)*spak2k5
      abb(25)=-abb(28)*abb(25)
      abb(32)=-spbk5k3*abb(29)
      abb(35)=abb(31)*gWWZ
      abb(36)=spak2k6*abb(35)
      abb(32)=abb(32)+abb(36)
      abb(32)=spak4k5*abb(32)
      abb(18)=abb(32)+abb(25)+abb(18)+abb(20)
      abb(18)=spbk6k1*abb(18)
      abb(20)=gWWZ*abb(22)
      abb(25)=-abb(20)*abb(34)
      abb(29)=spbk6k2*abb(29)
      abb(32)=spak3k5*abb(35)
      abb(25)=abb(32)+abb(29)+abb(25)
      abb(25)=spak2k4*abb(25)
      abb(29)=spak2k4*spbk6k4*abb(20)
      abb(32)=-spak2k3*abb(35)
      abb(29)=abb(29)+abb(32)
      abb(29)=spak4k5*abb(29)
      abb(20)=abb(20)*abb(27)
      abb(20)=abb(20)+abb(29)+abb(25)
      abb(20)=spbk3k1*abb(20)
      abb(25)=-abb(35)*abb(30)
      abb(18)=abb(20)+abb(25)+abb(18)
      abb(18)=abb(18)*abb(19)
      abb(15)=abb(15)+1.0_ki/3.0_ki*abb(16)+abb(18)
      abb(15)=abb(9)*abb(15)
      abb(16)=abb(7)*spak4k6
      abb(18)=-spbk6k1*abb(21)*abb(16)*abb(14)
      abb(20)=abb(21)*spbk3k1
      abb(21)=abb(7)*spak3k4
      abb(25)=abb(20)*abb(21)*abb(14)
      abb(18)=abb(18)+abb(25)
      abb(25)=abb(13)*spak4k7
      abb(27)=abb(4)*gnmul
      abb(29)=abb(27)*spbk4k3
      abb(30)=abb(29)*abb(25)
      abb(27)=abb(27)*spbk5k3
      abb(32)=abb(27)*abb(26)
      abb(30)=abb(30)+abb(32)
      abb(30)=spak4k5*abb(30)
      abb(32)=abb(16)*gmul
      abb(24)=-abb(32)*abb(24)
      abb(24)=abb(24)+abb(30)
      abb(24)=spbk6k1*abb(24)
      abb(30)=abb(21)*gmul
      abb(20)=abb(20)*abb(30)*abb(13)
      abb(20)=abb(24)+abb(20)
      abb(20)=abb(20)*abb(19)
      abb(18)=1.0_ki/3.0_ki*abb(18)+abb(20)
      abb(18)=abb(12)*abb(18)
      abb(20)=-abb(28)*abb(32)
      abb(24)=spak2k4*abb(29)
      abb(27)=spak2k5*abb(27)
      abb(24)=abb(24)+abb(27)
      abb(22)=spak4k5*abb(22)
      abb(24)=abb(24)*abb(22)
      abb(20)=abb(20)+abb(24)
      abb(20)=spbk6k1*abb(20)
      abb(24)=spbk3k1*abb(28)*abb(30)
      abb(20)=abb(20)+abb(24)
      abb(20)=abb(20)*abb(19)
      abb(16)=-spbk6k1*abb(16)
      abb(21)=spbk3k1*abb(21)
      abb(16)=abb(16)+abb(21)
      abb(16)=abb(33)*abb(16)
      abb(16)=abb(18)+1.0_ki/3.0_ki*abb(16)+abb(20)
      abb(15)=2.0_ki*abb(16)+abb(15)
      abb(15)=abb(1)*abb(15)
      abb(16)=abb(10)*spbk6k4
      abb(18)=spak4k7*abb(16)*abb(14)
      abb(20)=abb(10)*spbk6k5
      abb(14)=spak5k7*abb(20)*abb(14)
      abb(14)=abb(18)+abb(14)
      abb(18)=spbk3k1*spak4k5
      abb(18)=1.0_ki/3.0_ki*abb(18)
      abb(14)=abb(14)*abb(18)
      abb(21)=abb(16)*gel
      abb(24)=abb(21)*abb(25)
      abb(25)=gel*abb(20)
      abb(26)=abb(25)*abb(26)
      abb(24)=abb(24)+abb(26)
      abb(24)=spak4k5*abb(24)
      abb(13)=abb(13)*abb(17)
      abb(17)=abb(11)*gnel
      abb(26)=abb(17)*spak3k5
      abb(27)=-abb(26)*abb(13)
      abb(24)=abb(27)+abb(24)
      abb(24)=spbk3k1*abb(24)
      abb(17)=spbk6k1*abb(17)*spak5k6
      abb(13)=abb(13)*abb(17)
      abb(13)=abb(13)+abb(24)
      abb(13)=abb(13)*abb(19)
      abb(13)=abb(14)+abb(13)
      abb(13)=abb(12)*abb(13)
      abb(14)=spak2k4*abb(16)
      abb(16)=spak2k5*abb(20)
      abb(14)=abb(14)+abb(16)
      abb(14)=abb(14)*abb(23)*abb(18)
      abb(16)=abb(31)*spak2k4
      abb(18)=-abb(26)*abb(16)
      abb(20)=spak2k4*abb(21)
      abb(21)=spak2k5*abb(25)
      abb(20)=abb(20)+abb(21)
      abb(20)=abb(20)*abb(22)
      abb(18)=abb(18)+abb(20)
      abb(18)=spbk3k1*abb(18)
      abb(16)=abb(16)*abb(17)
      abb(16)=abb(16)+abb(18)
      abb(16)=abb(16)*abb(19)
      abb(13)=abb(13)+abb(14)+abb(16)
      abb(13)=abb(9)*abb(13)
      abb(13)=2.0_ki*abb(13)+abb(15)
      abb(13)=4.0_ki*abb(3)*abb(6)*i_*abb(13)*gW**2
      amplitude=c1*abb(13)
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
end module p12_sbars_epnemumnmubarg_diagramsh6l0
