module     p0_dbaru_epnebbbarg_d21h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity1d21h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d21
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd21h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd21
      complex(ki) :: brack
      acd21(1)=dotproduct(k1,qshift)
      acd21(2)=dotproduct(k2,qshift)
      acd21(3)=abb21(94)
      acd21(4)=dotproduct(qshift,spval6l5)
      acd21(5)=abb21(42)
      acd21(6)=abb21(113)
      acd21(7)=abb21(82)
      acd21(8)=dotproduct(k3,qshift)
      acd21(9)=abb21(157)
      acd21(10)=dotproduct(k4,qshift)
      acd21(11)=dotproduct(l5,qshift)
      acd21(12)=abb21(102)
      acd21(13)=dotproduct(l6,qshift)
      acd21(14)=dotproduct(k7,qshift)
      acd21(15)=abb21(72)
      acd21(16)=abb21(35)
      acd21(17)=dotproduct(qshift,spvak1k2)
      acd21(18)=abb21(30)
      acd21(19)=dotproduct(qshift,spvak1l5)
      acd21(20)=abb21(20)
      acd21(21)=dotproduct(qshift,spvak1l6)
      acd21(22)=abb21(22)
      acd21(23)=dotproduct(qshift,spvak2k7)
      acd21(24)=abb21(16)
      acd21(25)=dotproduct(qshift,spvak4k2)
      acd21(26)=abb21(24)
      acd21(27)=dotproduct(qshift,spvak4k3)
      acd21(28)=abb21(17)
      acd21(29)=abb21(56)
      acd21(30)=abb21(43)
      acd21(31)=abb21(142)
      acd21(32)=abb21(83)
      acd21(33)=abb21(25)
      acd21(34)=abb21(34)
      acd21(35)=abb21(168)
      acd21(36)=dotproduct(qshift,qshift)
      acd21(37)=abb21(88)
      acd21(38)=abb21(31)
      acd21(39)=abb21(27)
      acd21(40)=abb21(28)
      acd21(41)=abb21(15)
      acd21(42)=abb21(23)
      acd21(43)=abb21(14)
      acd21(44)=abb21(21)
      acd21(45)=abb21(29)
      acd21(46)=abb21(19)
      acd21(47)=abb21(13)
      acd21(48)=abb21(18)
      acd21(49)=abb21(26)
      acd21(50)=abb21(125)
      acd21(51)=acd21(11)+acd21(13)
      acd21(52)=acd21(12)*acd21(51)
      acd21(53)=acd21(8)+acd21(10)
      acd21(54)=acd21(9)*acd21(53)
      acd21(55)=acd21(21)*acd21(22)
      acd21(56)=acd21(27)*acd21(28)
      acd21(57)=acd21(25)*acd21(26)
      acd21(58)=acd21(23)*acd21(24)
      acd21(59)=acd21(19)*acd21(20)
      acd21(60)=acd21(17)*acd21(18)
      acd21(61)=acd21(14)*acd21(15)
      acd21(62)=acd21(1)*acd21(3)
      acd21(63)=acd21(4)*acd21(16)
      acd21(64)=acd21(2)*acd21(7)
      acd21(52)=acd21(64)+acd21(63)+acd21(62)+acd21(61)+acd21(60)+acd21(59)+acd&
      &21(58)+acd21(57)+acd21(56)-acd21(29)+acd21(55)+acd21(54)+acd21(52)
      acd21(52)=acd21(2)*acd21(52)
      acd21(54)=-acd21(32)*acd21(51)
      acd21(55)=-acd21(30)*acd21(53)
      acd21(56)=acd21(21)*acd21(40)
      acd21(57)=acd21(27)*acd21(43)
      acd21(58)=acd21(25)*acd21(42)
      acd21(59)=acd21(23)*acd21(41)
      acd21(60)=acd21(19)*acd21(39)
      acd21(61)=acd21(17)*acd21(38)
      acd21(62)=acd21(14)*acd21(34)
      acd21(63)=acd21(1)*acd21(5)
      acd21(54)=acd21(63)+acd21(62)+acd21(61)+acd21(60)+acd21(59)+acd21(58)+acd&
      &21(57)-acd21(44)+acd21(56)+acd21(55)+acd21(54)
      acd21(54)=acd21(4)*acd21(54)
      acd21(51)=-acd21(33)*acd21(51)
      acd21(53)=-acd21(31)*acd21(53)
      acd21(55)=acd21(36)*acd21(37)
      acd21(56)=-acd21(27)*acd21(49)
      acd21(57)=-acd21(25)*acd21(48)
      acd21(58)=-acd21(23)*acd21(47)
      acd21(59)=-acd21(19)*acd21(46)
      acd21(60)=-acd21(17)*acd21(45)
      acd21(61)=-acd21(14)*acd21(35)
      acd21(62)=-acd21(1)*acd21(6)
      brack=acd21(50)+acd21(51)+acd21(52)+acd21(53)+acd21(54)+acd21(55)+acd21(5&
      &6)+acd21(57)+acd21(58)+acd21(59)+acd21(60)+acd21(61)+acd21(62)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd21h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(79) :: acd21
      complex(ki) :: brack
      acd21(1)=k1(iv1)
      acd21(2)=dotproduct(k2,qshift)
      acd21(3)=abb21(94)
      acd21(4)=dotproduct(qshift,spval6l5)
      acd21(5)=abb21(42)
      acd21(6)=abb21(113)
      acd21(7)=k2(iv1)
      acd21(8)=dotproduct(k1,qshift)
      acd21(9)=abb21(82)
      acd21(10)=dotproduct(k3,qshift)
      acd21(11)=abb21(157)
      acd21(12)=dotproduct(k4,qshift)
      acd21(13)=dotproduct(l5,qshift)
      acd21(14)=abb21(102)
      acd21(15)=dotproduct(l6,qshift)
      acd21(16)=dotproduct(k7,qshift)
      acd21(17)=abb21(72)
      acd21(18)=abb21(35)
      acd21(19)=dotproduct(qshift,spvak1k2)
      acd21(20)=abb21(30)
      acd21(21)=dotproduct(qshift,spvak1l5)
      acd21(22)=abb21(20)
      acd21(23)=dotproduct(qshift,spvak1l6)
      acd21(24)=abb21(22)
      acd21(25)=dotproduct(qshift,spvak2k7)
      acd21(26)=abb21(16)
      acd21(27)=dotproduct(qshift,spvak4k2)
      acd21(28)=abb21(24)
      acd21(29)=dotproduct(qshift,spvak4k3)
      acd21(30)=abb21(17)
      acd21(31)=abb21(56)
      acd21(32)=k3(iv1)
      acd21(33)=abb21(43)
      acd21(34)=abb21(142)
      acd21(35)=k4(iv1)
      acd21(36)=l5(iv1)
      acd21(37)=abb21(83)
      acd21(38)=abb21(25)
      acd21(39)=l6(iv1)
      acd21(40)=k7(iv1)
      acd21(41)=abb21(34)
      acd21(42)=abb21(168)
      acd21(43)=qshift(iv1)
      acd21(44)=abb21(88)
      acd21(45)=spval6l5(iv1)
      acd21(46)=abb21(31)
      acd21(47)=abb21(27)
      acd21(48)=abb21(28)
      acd21(49)=abb21(15)
      acd21(50)=abb21(23)
      acd21(51)=abb21(14)
      acd21(52)=abb21(21)
      acd21(53)=spvak1k2(iv1)
      acd21(54)=abb21(29)
      acd21(55)=spvak1l5(iv1)
      acd21(56)=abb21(19)
      acd21(57)=spvak1l6(iv1)
      acd21(58)=spvak2k7(iv1)
      acd21(59)=abb21(13)
      acd21(60)=spvak4k2(iv1)
      acd21(61)=abb21(18)
      acd21(62)=spvak4k3(iv1)
      acd21(63)=abb21(26)
      acd21(64)=acd21(29)*acd21(30)
      acd21(65)=acd21(27)*acd21(28)
      acd21(66)=acd21(25)*acd21(26)
      acd21(67)=acd21(23)*acd21(24)
      acd21(68)=acd21(21)*acd21(22)
      acd21(69)=acd21(19)*acd21(20)
      acd21(70)=acd21(16)*acd21(17)
      acd21(71)=acd21(3)*acd21(8)
      acd21(72)=acd21(13)+acd21(15)
      acd21(73)=acd21(14)*acd21(72)
      acd21(74)=acd21(10)+acd21(12)
      acd21(75)=acd21(11)*acd21(74)
      acd21(76)=acd21(4)*acd21(18)
      acd21(77)=acd21(2)*acd21(9)
      acd21(64)=2.0_ki*acd21(77)+acd21(76)+acd21(75)+acd21(73)+acd21(71)+acd21(&
      &70)+acd21(69)+acd21(68)+acd21(67)+acd21(66)+acd21(65)-acd21(31)+acd21(64)
      acd21(64)=acd21(7)*acd21(64)
      acd21(65)=acd21(24)*acd21(57)
      acd21(66)=acd21(62)*acd21(30)
      acd21(67)=acd21(60)*acd21(28)
      acd21(68)=acd21(58)*acd21(26)
      acd21(69)=acd21(55)*acd21(22)
      acd21(70)=acd21(53)*acd21(20)
      acd21(71)=acd21(40)*acd21(17)
      acd21(73)=acd21(1)*acd21(3)
      acd21(75)=acd21(36)+acd21(39)
      acd21(76)=acd21(14)*acd21(75)
      acd21(77)=acd21(32)+acd21(35)
      acd21(78)=acd21(11)*acd21(77)
      acd21(79)=acd21(45)*acd21(18)
      acd21(65)=acd21(79)+acd21(78)+acd21(76)+acd21(73)+acd21(71)+acd21(70)+acd&
      &21(69)+acd21(68)+acd21(67)+acd21(65)+acd21(66)
      acd21(65)=acd21(2)*acd21(65)
      acd21(66)=acd21(48)*acd21(57)
      acd21(67)=acd21(62)*acd21(51)
      acd21(68)=acd21(60)*acd21(50)
      acd21(69)=acd21(58)*acd21(49)
      acd21(70)=acd21(55)*acd21(47)
      acd21(71)=acd21(53)*acd21(46)
      acd21(73)=acd21(40)*acd21(41)
      acd21(76)=acd21(1)*acd21(5)
      acd21(78)=-acd21(37)*acd21(75)
      acd21(79)=-acd21(33)*acd21(77)
      acd21(66)=acd21(79)+acd21(78)+acd21(76)+acd21(73)+acd21(71)+acd21(70)+acd&
      &21(69)+acd21(68)+acd21(66)+acd21(67)
      acd21(66)=acd21(4)*acd21(66)
      acd21(67)=acd21(29)*acd21(51)
      acd21(68)=acd21(27)*acd21(50)
      acd21(69)=acd21(25)*acd21(49)
      acd21(70)=acd21(23)*acd21(48)
      acd21(71)=acd21(21)*acd21(47)
      acd21(73)=acd21(19)*acd21(46)
      acd21(76)=acd21(16)*acd21(41)
      acd21(78)=acd21(5)*acd21(8)
      acd21(72)=-acd21(37)*acd21(72)
      acd21(74)=-acd21(33)*acd21(74)
      acd21(67)=acd21(74)+acd21(72)+acd21(78)+acd21(76)+acd21(73)+acd21(71)+acd&
      &21(70)+acd21(69)+acd21(68)-acd21(52)+acd21(67)
      acd21(67)=acd21(45)*acd21(67)
      acd21(68)=-acd21(38)*acd21(75)
      acd21(69)=-acd21(34)*acd21(77)
      acd21(70)=acd21(43)*acd21(44)
      acd21(71)=-acd21(62)*acd21(63)
      acd21(72)=-acd21(60)*acd21(61)
      acd21(73)=-acd21(58)*acd21(59)
      acd21(74)=-acd21(55)*acd21(56)
      acd21(75)=-acd21(53)*acd21(54)
      acd21(76)=-acd21(40)*acd21(42)
      acd21(77)=-acd21(1)*acd21(6)
      brack=acd21(64)+acd21(65)+acd21(66)+acd21(67)+acd21(68)+acd21(69)+2.0_ki*&
      &acd21(70)+acd21(71)+acd21(72)+acd21(73)+acd21(74)+acd21(75)+acd21(76)+ac&
      &d21(77)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd21h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd21
      complex(ki) :: brack
      acd21(1)=d(iv1,iv2)
      acd21(2)=abb21(88)
      acd21(3)=k1(iv1)
      acd21(4)=k2(iv2)
      acd21(5)=abb21(94)
      acd21(6)=spval6l5(iv2)
      acd21(7)=abb21(42)
      acd21(8)=k1(iv2)
      acd21(9)=k2(iv1)
      acd21(10)=spval6l5(iv1)
      acd21(11)=abb21(82)
      acd21(12)=k3(iv2)
      acd21(13)=abb21(157)
      acd21(14)=k4(iv2)
      acd21(15)=l5(iv2)
      acd21(16)=abb21(102)
      acd21(17)=l6(iv2)
      acd21(18)=k7(iv2)
      acd21(19)=abb21(72)
      acd21(20)=abb21(35)
      acd21(21)=spvak1k2(iv2)
      acd21(22)=abb21(30)
      acd21(23)=spvak1l5(iv2)
      acd21(24)=abb21(20)
      acd21(25)=spvak1l6(iv2)
      acd21(26)=abb21(22)
      acd21(27)=spvak2k7(iv2)
      acd21(28)=abb21(16)
      acd21(29)=spvak4k2(iv2)
      acd21(30)=abb21(24)
      acd21(31)=spvak4k3(iv2)
      acd21(32)=abb21(17)
      acd21(33)=k3(iv1)
      acd21(34)=k4(iv1)
      acd21(35)=l5(iv1)
      acd21(36)=l6(iv1)
      acd21(37)=k7(iv1)
      acd21(38)=spvak1k2(iv1)
      acd21(39)=spvak1l5(iv1)
      acd21(40)=spvak1l6(iv1)
      acd21(41)=spvak2k7(iv1)
      acd21(42)=spvak4k2(iv1)
      acd21(43)=spvak4k3(iv1)
      acd21(44)=abb21(43)
      acd21(45)=abb21(83)
      acd21(46)=abb21(34)
      acd21(47)=abb21(31)
      acd21(48)=abb21(27)
      acd21(49)=abb21(28)
      acd21(50)=abb21(15)
      acd21(51)=abb21(23)
      acd21(52)=abb21(14)
      acd21(53)=acd21(32)*acd21(43)
      acd21(54)=acd21(30)*acd21(42)
      acd21(55)=acd21(28)*acd21(41)
      acd21(56)=acd21(26)*acd21(40)
      acd21(57)=acd21(24)*acd21(39)
      acd21(58)=acd21(22)*acd21(38)
      acd21(59)=acd21(19)*acd21(37)
      acd21(60)=acd21(3)*acd21(5)
      acd21(61)=acd21(35)+acd21(36)
      acd21(62)=acd21(16)*acd21(61)
      acd21(63)=acd21(33)+acd21(34)
      acd21(64)=acd21(13)*acd21(63)
      acd21(65)=acd21(10)*acd21(20)
      acd21(66)=acd21(9)*acd21(11)
      acd21(53)=2.0_ki*acd21(66)+acd21(65)+acd21(64)+acd21(62)+acd21(60)+acd21(&
      &59)+acd21(58)+acd21(57)+acd21(56)+acd21(55)+acd21(53)+acd21(54)
      acd21(53)=acd21(4)*acd21(53)
      acd21(54)=acd21(31)*acd21(32)
      acd21(55)=acd21(29)*acd21(30)
      acd21(56)=acd21(27)*acd21(28)
      acd21(57)=acd21(25)*acd21(26)
      acd21(58)=acd21(23)*acd21(24)
      acd21(59)=acd21(21)*acd21(22)
      acd21(60)=acd21(18)*acd21(19)
      acd21(62)=acd21(5)*acd21(8)
      acd21(64)=acd21(15)+acd21(17)
      acd21(65)=acd21(16)*acd21(64)
      acd21(66)=acd21(12)+acd21(14)
      acd21(67)=acd21(13)*acd21(66)
      acd21(68)=acd21(6)*acd21(20)
      acd21(54)=acd21(68)+acd21(67)+acd21(65)+acd21(62)+acd21(60)+acd21(59)+acd&
      &21(58)+acd21(57)+acd21(56)+acd21(54)+acd21(55)
      acd21(54)=acd21(9)*acd21(54)
      acd21(55)=acd21(31)*acd21(52)
      acd21(56)=acd21(29)*acd21(51)
      acd21(57)=acd21(27)*acd21(50)
      acd21(58)=acd21(25)*acd21(49)
      acd21(59)=acd21(23)*acd21(48)
      acd21(60)=acd21(21)*acd21(47)
      acd21(62)=acd21(18)*acd21(46)
      acd21(65)=acd21(7)*acd21(8)
      acd21(64)=-acd21(45)*acd21(64)
      acd21(66)=-acd21(44)*acd21(66)
      acd21(55)=acd21(66)+acd21(64)+acd21(65)+acd21(62)+acd21(60)+acd21(59)+acd&
      &21(58)+acd21(57)+acd21(55)+acd21(56)
      acd21(55)=acd21(10)*acd21(55)
      acd21(56)=acd21(43)*acd21(52)
      acd21(57)=acd21(42)*acd21(51)
      acd21(58)=acd21(41)*acd21(50)
      acd21(59)=acd21(40)*acd21(49)
      acd21(60)=acd21(39)*acd21(48)
      acd21(62)=acd21(38)*acd21(47)
      acd21(64)=acd21(37)*acd21(46)
      acd21(65)=acd21(3)*acd21(7)
      acd21(61)=-acd21(45)*acd21(61)
      acd21(63)=-acd21(44)*acd21(63)
      acd21(56)=acd21(63)+acd21(61)+acd21(65)+acd21(64)+acd21(62)+acd21(60)+acd&
      &21(59)+acd21(58)+acd21(56)+acd21(57)
      acd21(56)=acd21(6)*acd21(56)
      acd21(57)=acd21(1)*acd21(2)
      brack=acd21(53)+acd21(54)+acd21(55)+acd21(56)+2.0_ki*acd21(57)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd21h1
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = -k6-k5
      numerator = 0.0_ki
      deg = 0
      if(present(i1)) then
          iv1=i1
          deg=1
      else
          iv1=1
      end if
      if(present(i2)) then
          iv2=i2
          deg=2
      else
          iv2=1
      end if
      t1 = 0
      if(deg.eq.0) then
         numerator = cond(epspow.eq.t1,brack_1,Q,mu2)
         return
      end if
      if(deg.eq.1) then
         numerator = cond(epspow.eq.t1,brack_2,Q,mu2)
         return
      end if
      if(deg.eq.2) then
         numerator = cond(epspow.eq.t1,brack_3,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d21:
   subroutine     reconstruct_d21(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_21:
      coeffs%coeffs_21%c0 = derivative(czip)
      coeffs%coeffs_21%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_21%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_21%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_21%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_21%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_21%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_21%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_21%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_21%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_21%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_21%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_21%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_21%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_21%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_21:
   end subroutine reconstruct_d21
!---#] subroutine reconstruct_d21:
end module     p0_dbaru_epnebbbarg_d21h1l1d
