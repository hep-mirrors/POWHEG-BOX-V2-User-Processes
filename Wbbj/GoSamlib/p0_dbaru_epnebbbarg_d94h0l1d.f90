module     p0_dbaru_epnebbbarg_d94h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d94h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d94
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd94h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd94
      complex(ki) :: brack
      acd94(1)=abb94(16)
      brack=acd94(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd94h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(13) :: acd94
      complex(ki) :: brack
      acd94(1)=k2(iv1)
      acd94(2)=abb94(39)
      acd94(3)=l5(iv1)
      acd94(4)=abb94(23)
      acd94(5)=l6(iv1)
      acd94(6)=spval5k2(iv1)
      acd94(7)=abb94(15)
      acd94(8)=spval6k2(iv1)
      acd94(9)=abb94(12)
      acd94(10)=-acd94(5)-acd94(3)
      acd94(10)=acd94(4)*acd94(10)
      acd94(11)=acd94(2)*acd94(1)
      acd94(12)=acd94(7)*acd94(6)
      acd94(13)=acd94(9)*acd94(8)
      brack=acd94(10)+acd94(11)+acd94(12)+acd94(13)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd94h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(80) :: acd94
      complex(ki) :: brack
      acd94(1)=d(iv1,iv2)
      acd94(2)=abb94(17)
      acd94(3)=k2(iv1)
      acd94(4)=k2(iv2)
      acd94(5)=abb94(96)
      acd94(6)=l5(iv2)
      acd94(7)=abb94(91)
      acd94(8)=l6(iv2)
      acd94(9)=spvak1k2(iv2)
      acd94(10)=abb94(45)
      acd94(11)=spvak4k2(iv2)
      acd94(12)=abb94(54)
      acd94(13)=spval5k2(iv2)
      acd94(14)=abb94(20)
      acd94(15)=spval6k2(iv2)
      acd94(16)=abb94(41)
      acd94(17)=l5(iv1)
      acd94(18)=l6(iv1)
      acd94(19)=spvak1k2(iv1)
      acd94(20)=spvak4k2(iv1)
      acd94(21)=spval5k2(iv1)
      acd94(22)=spval6k2(iv1)
      acd94(23)=abb94(19)
      acd94(24)=abb94(40)
      acd94(25)=k7(iv1)
      acd94(26)=abb94(18)
      acd94(27)=abb94(36)
      acd94(28)=k7(iv2)
      acd94(29)=abb94(35)
      acd94(30)=abb94(46)
      acd94(31)=abb94(28)
      acd94(32)=abb94(55)
      acd94(33)=abb94(32)
      acd94(34)=abb94(25)
      acd94(35)=spvak1l5(iv2)
      acd94(36)=abb94(38)
      acd94(37)=spvak1l6(iv2)
      acd94(38)=abb94(34)
      acd94(39)=spvak1k7(iv2)
      acd94(40)=abb94(31)
      acd94(41)=spvak2k7(iv2)
      acd94(42)=abb94(11)
      acd94(43)=spvak4l5(iv2)
      acd94(44)=abb94(53)
      acd94(45)=spvak4l6(iv2)
      acd94(46)=abb94(49)
      acd94(47)=spvak4k7(iv2)
      acd94(48)=abb94(44)
      acd94(49)=spvak1l5(iv1)
      acd94(50)=spvak1l6(iv1)
      acd94(51)=spvak1k7(iv1)
      acd94(52)=spvak2k7(iv1)
      acd94(53)=spvak4l5(iv1)
      acd94(54)=spvak4l6(iv1)
      acd94(55)=spvak4k7(iv1)
      acd94(56)=abb94(27)
      acd94(57)=abb94(37)
      acd94(58)=abb94(33)
      acd94(59)=abb94(30)
      acd94(60)=abb94(13)
      acd94(61)=abb94(52)
      acd94(62)=abb94(48)
      acd94(63)=abb94(43)
      acd94(64)=acd94(55)*acd94(63)
      acd94(65)=acd94(54)*acd94(62)
      acd94(66)=acd94(53)*acd94(61)
      acd94(67)=acd94(52)*acd94(60)
      acd94(68)=acd94(51)*acd94(59)
      acd94(69)=acd94(50)*acd94(58)
      acd94(70)=acd94(49)*acd94(57)
      acd94(71)=acd94(25)*acd94(27)
      acd94(72)=acd94(20)*acd94(32)
      acd94(73)=acd94(19)*acd94(30)
      acd94(74)=acd94(17)+acd94(18)
      acd94(75)=acd94(24)*acd94(74)
      acd94(76)=acd94(3)*acd94(16)
      acd94(77)=acd94(22)*acd94(56)
      acd94(78)=acd94(21)*acd94(34)
      acd94(64)=acd94(78)+2.0_ki*acd94(77)+acd94(76)+acd94(75)+acd94(73)+acd94(&
      &72)+acd94(71)+acd94(70)+acd94(69)+acd94(68)+acd94(67)+acd94(66)+acd94(64&
      &)+acd94(65)
      acd94(64)=acd94(15)*acd94(64)
      acd94(65)=acd94(48)*acd94(55)
      acd94(66)=acd94(46)*acd94(54)
      acd94(67)=acd94(44)*acd94(53)
      acd94(68)=acd94(42)*acd94(52)
      acd94(69)=acd94(40)*acd94(51)
      acd94(70)=acd94(38)*acd94(50)
      acd94(71)=acd94(36)*acd94(49)
      acd94(72)=acd94(25)*acd94(26)
      acd94(73)=acd94(20)*acd94(31)
      acd94(75)=acd94(19)*acd94(29)
      acd94(76)=-acd94(23)*acd94(74)
      acd94(77)=acd94(3)*acd94(14)
      acd94(78)=acd94(22)*acd94(34)
      acd94(79)=acd94(21)*acd94(33)
      acd94(65)=2.0_ki*acd94(79)+acd94(78)+acd94(77)+acd94(76)+acd94(75)+acd94(&
      &73)+acd94(72)+acd94(71)+acd94(70)+acd94(69)+acd94(68)+acd94(67)+acd94(65&
      &)+acd94(66)
      acd94(65)=acd94(13)*acd94(65)
      acd94(66)=acd94(47)*acd94(63)
      acd94(67)=acd94(45)*acd94(62)
      acd94(68)=acd94(43)*acd94(61)
      acd94(69)=acd94(41)*acd94(60)
      acd94(70)=acd94(39)*acd94(59)
      acd94(71)=acd94(37)*acd94(58)
      acd94(72)=acd94(35)*acd94(57)
      acd94(73)=acd94(27)*acd94(28)
      acd94(75)=acd94(11)*acd94(32)
      acd94(76)=acd94(9)*acd94(30)
      acd94(77)=acd94(6)+acd94(8)
      acd94(78)=acd94(24)*acd94(77)
      acd94(79)=acd94(4)*acd94(16)
      acd94(66)=acd94(79)+acd94(78)+acd94(76)+acd94(75)+acd94(73)+acd94(72)+acd&
      &94(71)+acd94(70)+acd94(69)+acd94(68)+acd94(66)+acd94(67)
      acd94(66)=acd94(22)*acd94(66)
      acd94(67)=acd94(47)*acd94(48)
      acd94(68)=acd94(45)*acd94(46)
      acd94(69)=acd94(43)*acd94(44)
      acd94(70)=acd94(41)*acd94(42)
      acd94(71)=acd94(39)*acd94(40)
      acd94(72)=acd94(37)*acd94(38)
      acd94(73)=acd94(35)*acd94(36)
      acd94(75)=acd94(26)*acd94(28)
      acd94(76)=acd94(11)*acd94(31)
      acd94(78)=acd94(9)*acd94(29)
      acd94(79)=-acd94(23)*acd94(77)
      acd94(80)=acd94(4)*acd94(14)
      acd94(67)=acd94(80)+acd94(79)+acd94(78)+acd94(76)+acd94(75)+acd94(73)+acd&
      &94(72)+acd94(71)+acd94(70)+acd94(69)+acd94(67)+acd94(68)
      acd94(67)=acd94(21)*acd94(67)
      acd94(68)=acd94(11)*acd94(12)
      acd94(69)=acd94(9)*acd94(10)
      acd94(70)=acd94(7)*acd94(77)
      acd94(71)=acd94(4)*acd94(5)
      acd94(68)=2.0_ki*acd94(71)+acd94(70)+acd94(68)+acd94(69)
      acd94(68)=acd94(3)*acd94(68)
      acd94(69)=acd94(20)*acd94(12)
      acd94(70)=acd94(19)*acd94(10)
      acd94(71)=acd94(7)*acd94(74)
      acd94(69)=acd94(71)+acd94(69)+acd94(70)
      acd94(69)=acd94(4)*acd94(69)
      acd94(70)=acd94(1)*acd94(2)
      brack=acd94(64)+acd94(65)+acd94(66)+acd94(67)+acd94(68)+acd94(69)+2.0_ki*&
      &acd94(70)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd94h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd94
      complex(ki) :: brack
      acd94(1)=d(iv1,iv2)
      acd94(2)=k2(iv3)
      acd94(3)=abb94(57)
      acd94(4)=spvak1k2(iv3)
      acd94(5)=abb94(21)
      acd94(6)=spvak4k2(iv3)
      acd94(7)=abb94(29)
      acd94(8)=spval5k2(iv3)
      acd94(9)=abb94(22)
      acd94(10)=spval6k2(iv3)
      acd94(11)=abb94(24)
      acd94(12)=d(iv1,iv3)
      acd94(13)=k2(iv2)
      acd94(14)=spvak1k2(iv2)
      acd94(15)=spvak4k2(iv2)
      acd94(16)=spval5k2(iv2)
      acd94(17)=spval6k2(iv2)
      acd94(18)=d(iv2,iv3)
      acd94(19)=k2(iv1)
      acd94(20)=spvak1k2(iv1)
      acd94(21)=spvak4k2(iv1)
      acd94(22)=spval5k2(iv1)
      acd94(23)=spval6k2(iv1)
      acd94(24)=spvak2k7(iv3)
      acd94(25)=abb94(42)
      acd94(26)=spvak2k7(iv2)
      acd94(27)=abb94(47)
      acd94(28)=spvak2k7(iv1)
      acd94(29)=abb94(26)
      acd94(30)=abb94(14)
      acd94(31)=acd94(4)*acd94(1)
      acd94(32)=acd94(14)*acd94(12)
      acd94(33)=acd94(20)*acd94(18)
      acd94(31)=acd94(33)+acd94(31)+acd94(32)
      acd94(31)=acd94(5)*acd94(31)
      acd94(32)=acd94(6)*acd94(1)
      acd94(33)=acd94(15)*acd94(12)
      acd94(34)=acd94(21)*acd94(18)
      acd94(32)=acd94(34)+acd94(32)+acd94(33)
      acd94(32)=acd94(7)*acd94(32)
      acd94(33)=acd94(8)*acd94(1)
      acd94(34)=acd94(16)*acd94(12)
      acd94(35)=acd94(22)*acd94(18)
      acd94(33)=acd94(35)+acd94(33)+acd94(34)
      acd94(33)=acd94(9)*acd94(33)
      acd94(34)=acd94(10)*acd94(1)
      acd94(35)=acd94(17)*acd94(12)
      acd94(36)=acd94(23)*acd94(18)
      acd94(34)=acd94(36)+acd94(34)+acd94(35)
      acd94(34)=acd94(11)*acd94(34)
      acd94(31)=acd94(31)+acd94(32)+acd94(33)+acd94(34)
      acd94(32)=acd94(10)*acd94(27)
      acd94(33)=acd94(8)*acd94(25)
      acd94(33)=acd94(33)+acd94(32)
      acd94(33)=acd94(14)*acd94(33)
      acd94(34)=acd94(8)*acd94(29)
      acd94(35)=acd94(10)*acd94(30)
      acd94(34)=acd94(34)+acd94(35)
      acd94(35)=acd94(15)*acd94(34)
      acd94(36)=acd94(4)*acd94(25)
      acd94(37)=acd94(6)*acd94(29)
      acd94(36)=acd94(36)+acd94(37)
      acd94(36)=acd94(16)*acd94(36)
      acd94(37)=acd94(4)*acd94(27)
      acd94(38)=acd94(6)*acd94(30)
      acd94(37)=acd94(37)+acd94(38)
      acd94(37)=acd94(17)*acd94(37)
      acd94(33)=acd94(37)+acd94(36)+acd94(33)+acd94(35)
      acd94(33)=acd94(28)*acd94(33)
      acd94(35)=acd94(2)*acd94(1)
      acd94(36)=acd94(13)*acd94(12)
      acd94(37)=acd94(19)*acd94(18)
      acd94(35)=acd94(37)+acd94(36)+acd94(35)
      acd94(36)=2.0_ki*acd94(3)
      acd94(35)=acd94(36)*acd94(35)
      acd94(36)=acd94(16)*acd94(24)
      acd94(37)=acd94(8)*acd94(26)
      acd94(37)=acd94(36)+acd94(37)
      acd94(37)=acd94(25)*acd94(37)
      acd94(32)=acd94(26)*acd94(32)
      acd94(38)=acd94(17)*acd94(24)
      acd94(39)=acd94(27)*acd94(38)
      acd94(32)=acd94(39)+acd94(32)+acd94(37)
      acd94(32)=acd94(20)*acd94(32)
      acd94(34)=acd94(26)*acd94(34)
      acd94(36)=acd94(29)*acd94(36)
      acd94(37)=acd94(30)*acd94(38)
      acd94(34)=acd94(37)+acd94(36)+acd94(34)
      acd94(34)=acd94(21)*acd94(34)
      acd94(36)=acd94(4)*acd94(26)
      acd94(37)=acd94(14)*acd94(24)
      acd94(36)=acd94(36)+acd94(37)
      acd94(37)=acd94(25)*acd94(36)
      acd94(38)=acd94(6)*acd94(26)
      acd94(39)=acd94(15)*acd94(24)
      acd94(38)=acd94(38)+acd94(39)
      acd94(39)=acd94(29)*acd94(38)
      acd94(37)=acd94(39)+acd94(37)
      acd94(37)=acd94(22)*acd94(37)
      acd94(36)=acd94(27)*acd94(36)
      acd94(38)=acd94(30)*acd94(38)
      acd94(36)=acd94(38)+acd94(36)
      acd94(36)=acd94(23)*acd94(36)
      brack=2.0_ki*acd94(31)+acd94(32)+acd94(33)+acd94(34)+acd94(35)+acd94(36)+&
      &acd94(37)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd94h0
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      complex(ki) :: numerator
      complex(ki) :: loc
      integer :: t1
      integer :: deg
      complex(ki), dimension(4), parameter :: Q = (/ (0.0_ki,0.0_ki),(0.0_ki,0.&
      &0_ki),(0.0_ki,0.0_ki),(0.0_ki,0.0_ki)/)
      qshift = 0
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
      if(present(i3)) then
          iv3=i3
          deg=3
      else
          iv3=1
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
      if(deg.eq.3) then
         numerator = cond(epspow.eq.t1,brack_4,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d94:
   subroutine     reconstruct_d94(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_94:
      coeffs%coeffs_94%c0 = derivative(czip)
      coeffs%coeffs_94%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_94%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_94%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_94%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_94%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_94%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_94%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_94%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_94%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_94%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_94%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_94%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_94%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_94%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_94%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_94%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_94%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_94%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_94%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_94%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_94%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_94%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_94%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_94%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_94%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_94%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_94%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_94%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_94%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_94%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_94%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_94%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_94%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_94%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_94:
   end subroutine reconstruct_d94
!---#] subroutine reconstruct_d94:
end module     p0_dbaru_epnebbbarg_d94h0l1d
