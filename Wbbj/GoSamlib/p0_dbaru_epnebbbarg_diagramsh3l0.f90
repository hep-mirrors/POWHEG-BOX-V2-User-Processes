module     p0_dbaru_epnebbbarg_diagramsh3l0
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3diagramsl0.f90
   ! generator: buildfortranborn.py
   use p0_dbaru_epnebbbarg_color, only: numcs
   use p0_dbaru_epnebbbarg_config, only: ki
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   complex(ki), dimension(numcs), parameter :: zero_col = 0.0_ki
   public :: amplitude
contains
!---#[ function amplitude:
   function amplitude()
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_config, only: debug_lo_diagrams, &
        & use_sorted_sum
      use p0_dbaru_epnebbbarg_accu, only: sorted_sum
      use p0_dbaru_epnebbbarg_util, only: inspect_lo_diagram
      implicit none
      complex(ki), dimension(numcs) :: amplitude
      complex(ki), dimension(70) :: abb
!      complex(ki), dimension(2,numcs) :: diagrams
      integer :: i
      amplitude(:) = 0.0_ki
      abb(1)=1.0_ki/(-mW**2+es34+i_*mW*wW)
      abb(2)=NC**(-1)
      abb(3)=sqrt2**(-1)
      abb(4)=es234**(-1)
      abb(5)=es56**(-1)
      abb(6)=es71**(-1)
      abb(7)=spak2l5**(-1)
      abb(8)=spak2k7**(-1)
      abb(9)=spak2l6**(-1)
      abb(10)=1.0_ki/(-es71+es56-es567+es234)
      abb(11)=1.0_ki/(es71+es34+es56-es712-es234)
      abb(12)=1.0_ki/(es34+es567-es12-es234)
      abb(13)=1.0_ki/(-es71+es712-es12)
      abb(14)=spbl5k2**(-1)
      abb(15)=spbl6k2**(-1)
      abb(16)=es567**(-1)
      abb(17)=1.0_ki/(-mB**2+es67)
      abb(18)=sqrt(mB**2)
      abb(19)=1.0_ki/(mB**2-es67-es56+es567)
      abb(20)=abb(6)*spbk7k1
      abb(21)=abb(20)*abb(11)
      abb(22)=abb(21)*spbl5k3
      abb(23)=spbl5k2*spak2l5
      abb(24)=abb(23)*abb(22)
      abb(25)=es12+es71-es712
      abb(26)=-abb(25)*spbl5k1
      abb(27)=spbk7k3*abb(10)
      abb(28)=abb(27)*abb(13)
      abb(29)=-abb(26)*abb(28)
      abb(24)=abb(24)+abb(29)
      abb(24)=abb(9)*abb(24)
      abb(21)=abb(21)*spbl6k3
      abb(29)=spbl6k2*spak2l6
      abb(30)=abb(29)*abb(21)
      abb(31)=-abb(25)*spbl6k1
      abb(32)=-abb(31)*abb(28)
      abb(30)=abb(30)+abb(32)
      abb(30)=abb(7)*abb(30)
      abb(32)=spbl5k2*abb(21)
      abb(33)=spbl6k2*abb(22)
      abb(24)=abb(30)+abb(24)+abb(32)+abb(33)
      abb(24)=abb(2)*abb(24)
      abb(30)=spbk7l5*spbl6k2
      abb(32)=spbk7l6*spbl5k2
      abb(33)=abb(30)+abb(32)
      abb(34)=abb(33)*abb(2)
      abb(35)=spbk3k1*abb(11)
      abb(36)=-abb(35)*abb(34)
      abb(37)=-abb(23)*abb(35)
      abb(38)=abb(25)*abb(13)
      abb(39)=abb(38)*spbk3k1
      abb(37)=abb(37)+abb(39)
      abb(40)=abb(9)*spbk7l5
      abb(41)=abb(40)*abb(2)
      abb(37)=abb(37)*abb(41)
      abb(42)=-abb(29)*abb(35)
      abb(39)=abb(42)+abb(39)
      abb(42)=abb(7)*spbk7l6
      abb(43)=abb(42)*abb(2)
      abb(39)=abb(39)*abb(43)
      abb(36)=abb(39)+abb(37)+abb(36)
      abb(36)=abb(12)*abb(36)
      abb(24)=abb(36)+abb(24)
      abb(24)=spak1k4*abb(24)
      abb(36)=abb(28)*abb(7)
      abb(37)=-abb(25)*abb(36)
      abb(39)=spbl6l5*spak4l5*abb(37)
      abb(44)=abb(28)*abb(9)
      abb(45)=-abb(44)*spak4l6*abb(25)*spbl6l5
      abb(39)=abb(39)-abb(45)
      abb(45)=-abb(2)*abb(39)
      abb(24)=abb(24)+abb(45)
      abb(24)=abb(5)*abb(24)
      abb(45)=spbl5k3*abb(20)
      abb(46)=spbl5k1*abb(27)
      abb(45)=abb(45)+abb(46)
      abb(45)=abb(9)*abb(45)
      abb(46)=spbl6k3*abb(20)
      abb(47)=spbl6k1*abb(27)
      abb(46)=abb(46)+abb(47)
      abb(46)=abb(7)*abb(46)
      abb(45)=abb(45)+abb(46)
      abb(46)=abb(4)*spbk3k2
      abb(47)=abb(46)*abb(2)
      abb(45)=abb(47)*spak3k4*abb(45)
      abb(48)=-spbl5k2*abb(20)
      abb(49)=abb(10)*spbk7k2
      abb(50)=-spbl5k1*abb(49)
      abb(48)=abb(48)+abb(50)
      abb(48)=abb(9)*abb(48)
      abb(50)=-spbl6k2*abb(20)
      abb(51)=-spbl6k1*abb(49)
      abb(50)=abb(50)+abb(51)
      abb(50)=abb(7)*abb(50)
      abb(48)=abb(48)+abb(50)
      abb(47)=abb(47)*spak2k4
      abb(48)=abb(48)*abb(47)
      abb(45)=abb(48)+abb(45)
      abb(48)=spak1k2*abb(5)
      abb(45)=abb(45)*abb(48)
      abb(24)=abb(24)+abb(45)
      abb(24)=spak1k2*abb(24)
      abb(45)=spbk4k3*abb(11)
      abb(34)=abb(45)*abb(34)
      abb(50)=abb(23)*abb(45)
      abb(51)=abb(38)*spbk4k3
      abb(50)=abb(50)-abb(51)
      abb(50)=abb(50)*abb(41)
      abb(52)=abb(29)*abb(45)
      abb(51)=abb(52)-abb(51)
      abb(51)=abb(51)*abb(43)
      abb(34)=abb(51)+abb(50)+abb(34)
      abb(50)=spak1k4*abb(12)
      abb(51)=abb(50)*spak2k4
      abb(34)=abb(5)*abb(34)*abb(51)
      abb(37)=spbl6k2*abb(14)*abb(37)
      abb(52)=abb(44)*abb(25)
      abb(37)=-abb(37)+2.0_ki*abb(52)
      abb(37)=abb(37)*abb(7)
      abb(28)=-abb(28)*abb(9)**2*abb(25)*spbl5k2*abb(15)
      abb(28)=abb(37)-abb(28)
      abb(37)=spak2k4*abb(48)*mB**2
      abb(52)=-abb(37)*abb(2)*abb(28)
      abb(24)=abb(52)+abb(34)+abb(24)
      abb(34)=8.0_ki*i_
      abb(34)=abb(34)*abb(3)*abb(1)*gW**2*CVDU*TR
      abb(24)=abb(8)*mB*abb(24)*abb(34)
      abb(52)=abb(25)+abb(23)
      abb(53)=abb(40)*abb(46)
      abb(54)=abb(52)*abb(53)
      abb(25)=abb(25)+abb(29)
      abb(55)=abb(42)*abb(46)
      abb(56)=abb(25)*abb(55)
      abb(57)=abb(33)*abb(46)
      abb(54)=abb(57)+abb(54)+abb(56)
      abb(54)=abb(54)*spak2k4
      abb(56)=abb(40)*spbk3k1
      abb(57)=abb(56)*abb(52)
      abb(58)=abb(42)*spbk3k1
      abb(59)=abb(58)*abb(25)
      abb(60)=abb(32)*spbk3k1
      abb(61)=abb(30)*spbk3k1
      abb(57)=abb(57)+abb(59)+abb(60)+abb(61)
      abb(57)=abb(57)*abb(50)
      abb(59)=abb(46)*spak3k4
      abb(62)=abb(59)*spbl5k3
      abb(63)=abb(62)*spak2l5
      abb(64)=abb(63)*abb(40)
      abb(65)=abb(59)*spbl6k3
      abb(66)=abb(65)*spak2l6
      abb(67)=abb(66)*abb(42)
      abb(68)=abb(65)*spbk7l5
      abb(69)=abb(62)*spbk7l6
      abb(54)=-abb(54)+abb(57)+abb(64)+abb(67)+abb(68)+abb(69)
      abb(54)=abb(54)*abb(16)
      abb(57)=abb(29)*abb(42)
      abb(70)=abb(23)*abb(40)
      abb(57)=abb(33)+abb(57)+abb(70)
      abb(35)=abb(12)*abb(35)*abb(57)
      abb(29)=-abb(7)*abb(29)
      abb(29)=abb(29)-spbl5k2
      abb(21)=abb(21)*abb(29)
      abb(23)=-abb(9)*abb(23)
      abb(23)=abb(23)-spbl6k2
      abb(22)=abb(22)*abb(23)
      abb(21)=abb(35)+abb(22)+abb(21)
      abb(21)=spak1k4*abb(21)
      abb(21)=abb(21)+abb(54)
      abb(21)=abb(5)*abb(21)
      abb(22)=-spak2k4*abb(55)
      abb(23)=abb(50)*abb(58)
      abb(22)=abb(23)+abb(22)
      abb(23)=abb(17)*abb(25)
      abb(22)=abb(23)*abb(22)
      abb(29)=abb(17)*abb(67)
      abb(22)=abb(29)+abb(22)
      abb(22)=abb(16)*abb(22)
      abb(29)=abb(9)*spbl5k2
      abb(35)=abb(7)*spbl6k2
      abb(29)=abb(29)+abb(35)
      abb(35)=abb(46)*spak2k4
      abb(29)=abb(29)*abb(35)
      abb(46)=-abb(9)*abb(62)
      abb(55)=-abb(7)*abb(65)
      abb(29)=abb(29)+abb(46)+abb(55)
      abb(20)=abb(48)*abb(20)*abb(29)
      abb(20)=abb(20)+abb(22)+abb(21)
      abb(20)=spak1k2*abb(20)
      abb(21)=abb(40)*spbk4k3
      abb(22)=abb(21)*abb(52)
      abb(29)=abb(42)*spbk4k3
      abb(25)=abb(29)*abb(25)
      abb(33)=abb(33)*spbk4k3
      abb(22)=abb(22)+abb(25)+abb(33)
      abb(25)=abb(51)*abb(16)
      abb(22)=abb(22)*abb(25)
      abb(33)=-abb(51)*abb(45)*abb(57)
      abb(33)=abb(33)-abb(22)
      abb(33)=abb(5)*abb(33)
      abb(45)=-abb(23)*abb(25)*abb(29)
      abb(20)=abb(20)+abb(45)+abb(33)
      abb(20)=mB*abb(20)
      abb(33)=abb(50)*abb(60)
      abb(33)=abb(33)+abb(69)
      abb(45)=abb(17)*abb(18)
      abb(33)=abb(45)*abb(33)
      abb(32)=abb(45)*abb(32)
      abb(46)=-abb(32)*abb(35)
      abb(33)=abb(46)+abb(33)
      abb(46)=spak1k2*abb(16)
      abb(33)=abb(33)*abb(46)
      abb(55)=abb(25)*spbk4k3
      abb(57)=-abb(32)*abb(55)
      abb(20)=abb(20)+abb(57)+abb(33)
      abb(20)=abb(8)*abb(20)
      abb(33)=abb(59)*spbk7k3
      abb(57)=abb(40)*abb(33)
      abb(33)=abb(42)*abb(33)
      abb(62)=abb(57)+abb(33)
      abb(62)=abb(62)*abb(5)
      abb(33)=abb(33)*abb(17)
      abb(65)=abb(33)+abb(62)
      abb(67)=abb(16)*mB*spak1k2
      abb(65)=abb(65)*abb(67)
      abb(20)=abb(65)+abb(20)
      abb(20)=abb(20)*abb(34)
      abb(52)=abb(19)*abb(52)
      abb(40)=-abb(52)*abb(40)
      abb(42)=abb(23)*abb(42)
      abb(40)=abb(40)+abb(42)
      abb(40)=abb(40)*abb(47)
      abb(42)=abb(41)*abb(52)
      abb(23)=abb(43)*abb(23)
      abb(23)=abb(42)-abb(23)
      abb(42)=abb(50)*spbk3k1*abb(23)
      abb(41)=abb(19)*abb(41)*abb(63)
      abb(43)=-abb(17)*abb(43)*abb(66)
      abb(40)=abb(42)+abb(40)+abb(41)+abb(43)
      abb(40)=abb(40)*abb(46)
      abb(23)=-abb(23)*abb(55)
      abb(23)=abb(23)+abb(40)
      abb(23)=mB*abb(23)
      abb(40)=abb(19)*abb(18)
      abb(41)=abb(40)*abb(61)
      abb(42)=-abb(45)*abb(60)
      abb(41)=abb(41)+abb(42)
      abb(41)=abb(50)*abb(41)
      abb(42)=abb(40)*abb(68)
      abb(43)=-abb(45)*abb(69)
      abb(41)=abb(41)+abb(42)+abb(43)
      abb(41)=abb(2)*abb(41)
      abb(30)=abb(40)*abb(30)
      abb(32)=abb(32)-abb(30)
      abb(42)=abb(32)*abb(47)
      abb(41)=abb(42)+abb(41)
      abb(41)=abb(41)*abb(46)
      abb(32)=abb(2)*abb(32)*abb(55)
      abb(23)=abb(23)+abb(32)+abb(41)
      abb(23)=abb(8)*abb(23)
      abb(32)=abb(57)*abb(19)
      abb(33)=abb(32)-abb(33)
      abb(33)=mB*abb(46)*abb(2)*abb(33)
      abb(23)=abb(33)+abb(23)
      abb(23)=abb(23)*abb(34)
      abb(26)=abb(26)*abb(44)
      abb(31)=abb(31)*abb(36)
      abb(33)=-abb(56)-abb(58)
      abb(33)=abb(12)*abb(38)*abb(33)
      abb(26)=abb(33)+abb(26)+abb(31)
      abb(26)=spak1k4*abb(26)
      abb(26)=-abb(54)+abb(26)+abb(39)
      abb(26)=abb(5)*abb(26)
      abb(31)=spak2k4*abb(53)
      abb(33)=-abb(50)*abb(56)
      abb(31)=abb(33)+abb(31)
      abb(31)=abb(52)*abb(31)
      abb(33)=-abb(19)*abb(64)
      abb(31)=abb(33)+abb(31)
      abb(31)=abb(16)*abb(31)
      abb(27)=-abb(27)*abb(59)
      abb(33)=abb(49)*abb(35)
      abb(27)=abb(33)+abb(27)
      abb(33)=abb(9)*spbl5k1
      abb(36)=abb(7)*spbl6k1
      abb(33)=abb(33)+abb(36)
      abb(27)=abb(48)*abb(33)*abb(27)
      abb(26)=abb(27)+abb(31)+abb(26)
      abb(26)=spak1k2*abb(26)
      abb(27)=abb(21)+abb(29)
      abb(27)=abb(51)*abb(38)*abb(27)
      abb(22)=abb(27)+abb(22)
      abb(22)=abb(5)*abb(22)
      abb(21)=abb(52)*abb(25)*abb(21)
      abb(25)=abb(28)*abb(37)
      abb(21)=abb(25)+abb(26)+abb(21)+abb(22)
      abb(21)=mB*abb(21)
      abb(22)=-abb(50)*abb(61)
      abb(22)=abb(22)-abb(68)
      abb(22)=abb(40)*abb(22)
      abb(25)=abb(30)*abb(35)
      abb(22)=abb(25)+abb(22)
      abb(22)=abb(22)*abb(46)
      abb(25)=abb(30)*abb(55)
      abb(21)=abb(21)+abb(25)+abb(22)
      abb(21)=abb(8)*abb(21)
      abb(22)=-abb(32)-abb(62)
      abb(22)=abb(22)*abb(67)
      abb(21)=abb(22)+abb(21)
      abb(21)=abb(21)*abb(34)
      amplitude=c4*abb(24)+c3*abb(20)+c2*abb(23)+c1*abb(21)
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
end module p0_dbaru_epnebbbarg_diagramsh3l0
