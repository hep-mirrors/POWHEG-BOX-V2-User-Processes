module     p9_csbar_epnebbbarg_d94h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d94h3l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
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
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd94h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd94
      complex(ki) :: brack
      acd94(1)=abb94(29)
      brack=acd94(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd94h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(30) :: acd94
      complex(ki) :: brack
      acd94(1)=k1(iv1)
      acd94(2)=abb94(14)
      acd94(3)=k2(iv1)
      acd94(4)=abb94(54)
      acd94(5)=k3(iv1)
      acd94(6)=k4(iv1)
      acd94(7)=l5(iv1)
      acd94(8)=abb94(90)
      acd94(9)=l6(iv1)
      acd94(10)=k7(iv1)
      acd94(11)=abb94(71)
      acd94(12)=e7(iv1)
      acd94(13)=abb94(57)
      acd94(14)=spvak2l5(iv1)
      acd94(15)=abb94(27)
      acd94(16)=spvak2l6(iv1)
      acd94(17)=abb94(63)
      acd94(18)=spvak4k1(iv1)
      acd94(19)=abb94(17)
      acd94(20)=spvak4k3(iv1)
      acd94(21)=abb94(33)
      acd94(22)=acd94(9)+acd94(7)
      acd94(22)=acd94(8)*acd94(22)
      acd94(23)=-acd94(6)-acd94(5)+acd94(1)
      acd94(23)=acd94(2)*acd94(23)
      acd94(24)=acd94(4)*acd94(3)
      acd94(25)=acd94(11)*acd94(10)
      acd94(26)=acd94(13)*acd94(12)
      acd94(27)=acd94(15)*acd94(14)
      acd94(28)=acd94(17)*acd94(16)
      acd94(29)=acd94(19)*acd94(18)
      acd94(30)=acd94(21)*acd94(20)
      brack=acd94(22)+acd94(23)+acd94(24)+acd94(25)+acd94(26)+acd94(27)+acd94(2&
      &8)+acd94(29)+acd94(30)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd94h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(78) :: acd94
      complex(ki) :: brack
      acd94(1)=d(iv1,iv2)
      acd94(2)=abb94(21)
      acd94(3)=k1(iv1)
      acd94(4)=k2(iv2)
      acd94(5)=abb94(39)
      acd94(6)=l5(iv2)
      acd94(7)=abb94(68)
      acd94(8)=l6(iv2)
      acd94(9)=spvak2l5(iv2)
      acd94(10)=abb94(30)
      acd94(11)=spvak2l6(iv2)
      acd94(12)=abb94(18)
      acd94(13)=k1(iv2)
      acd94(14)=k2(iv1)
      acd94(15)=l5(iv1)
      acd94(16)=l6(iv1)
      acd94(17)=spvak2l5(iv1)
      acd94(18)=spvak2l6(iv1)
      acd94(19)=k3(iv2)
      acd94(20)=k4(iv2)
      acd94(21)=abb94(9)
      acd94(22)=abb94(10)
      acd94(23)=spvak4k1(iv2)
      acd94(24)=abb94(25)
      acd94(25)=spvak4k3(iv2)
      acd94(26)=abb94(65)
      acd94(27)=k3(iv1)
      acd94(28)=k4(iv1)
      acd94(29)=spvak4k1(iv1)
      acd94(30)=spvak4k3(iv1)
      acd94(31)=abb94(49)
      acd94(32)=abb94(81)
      acd94(33)=abb94(19)
      acd94(34)=abb94(35)
      acd94(35)=k7(iv1)
      acd94(36)=abb94(47)
      acd94(37)=abb94(72)
      acd94(38)=k7(iv2)
      acd94(39)=e7(iv1)
      acd94(40)=abb94(31)
      acd94(41)=abb94(28)
      acd94(42)=e7(iv2)
      acd94(43)=abb94(15)
      acd94(44)=abb94(13)
      acd94(45)=abb94(11)
      acd94(46)=abb94(37)
      acd94(47)=spvak2k1(iv2)
      acd94(48)=abb94(44)
      acd94(49)=spvak2k3(iv2)
      acd94(50)=abb94(45)
      acd94(51)=spvak2e7(iv2)
      acd94(52)=abb94(40)
      acd94(53)=spvak2k1(iv1)
      acd94(54)=spvak2k3(iv1)
      acd94(55)=spvak2e7(iv1)
      acd94(56)=abb94(36)
      acd94(57)=abb94(16)
      acd94(58)=abb94(67)
      acd94(59)=abb94(50)
      acd94(60)=abb94(34)
      acd94(61)=abb94(56)
      acd94(62)=acd94(15)+acd94(16)
      acd94(63)=-acd94(32)*acd94(62)
      acd94(64)=acd94(55)*acd94(61)
      acd94(65)=acd94(54)*acd94(60)
      acd94(66)=acd94(53)*acd94(59)
      acd94(67)=acd94(39)*acd94(41)
      acd94(68)=acd94(35)*acd94(37)
      acd94(69)=acd94(30)*acd94(58)
      acd94(70)=acd94(29)*acd94(57)
      acd94(71)=-acd94(28)+acd94(3)-acd94(27)
      acd94(72)=-acd94(12)*acd94(71)
      acd94(73)=acd94(14)*acd94(22)
      acd94(74)=acd94(18)*acd94(56)
      acd94(75)=acd94(17)*acd94(44)
      acd94(63)=acd94(75)+2.0_ki*acd94(74)+acd94(73)+acd94(72)+acd94(70)+acd94(&
      &69)+acd94(68)+acd94(67)+acd94(66)+acd94(64)+acd94(65)+acd94(63)
      acd94(63)=acd94(11)*acd94(63)
      acd94(64)=-acd94(31)*acd94(62)
      acd94(65)=acd94(52)*acd94(55)
      acd94(66)=acd94(50)*acd94(54)
      acd94(67)=acd94(48)*acd94(53)
      acd94(68)=acd94(39)*acd94(40)
      acd94(69)=acd94(35)*acd94(36)
      acd94(70)=acd94(30)*acd94(46)
      acd94(72)=acd94(29)*acd94(45)
      acd94(73)=-acd94(10)*acd94(71)
      acd94(74)=acd94(14)*acd94(21)
      acd94(75)=acd94(18)*acd94(44)
      acd94(76)=acd94(17)*acd94(43)
      acd94(64)=2.0_ki*acd94(76)+acd94(75)+acd94(74)+acd94(73)+acd94(72)+acd94(&
      &70)+acd94(69)+acd94(68)+acd94(67)+acd94(65)+acd94(66)+acd94(64)
      acd94(64)=acd94(9)*acd94(64)
      acd94(65)=acd94(6)+acd94(8)
      acd94(66)=-acd94(32)*acd94(65)
      acd94(67)=acd94(51)*acd94(61)
      acd94(68)=acd94(49)*acd94(60)
      acd94(69)=acd94(47)*acd94(59)
      acd94(70)=acd94(41)*acd94(42)
      acd94(72)=acd94(37)*acd94(38)
      acd94(73)=acd94(25)*acd94(58)
      acd94(74)=acd94(23)*acd94(57)
      acd94(75)=-acd94(20)+acd94(13)-acd94(19)
      acd94(76)=-acd94(12)*acd94(75)
      acd94(77)=acd94(4)*acd94(22)
      acd94(66)=acd94(77)+acd94(76)+acd94(74)+acd94(73)+acd94(72)+acd94(70)+acd&
      &94(69)+acd94(67)+acd94(68)+acd94(66)
      acd94(66)=acd94(18)*acd94(66)
      acd94(67)=-acd94(31)*acd94(65)
      acd94(68)=acd94(51)*acd94(52)
      acd94(69)=acd94(49)*acd94(50)
      acd94(70)=acd94(47)*acd94(48)
      acd94(72)=acd94(40)*acd94(42)
      acd94(73)=acd94(36)*acd94(38)
      acd94(74)=acd94(25)*acd94(46)
      acd94(76)=acd94(23)*acd94(45)
      acd94(77)=-acd94(10)*acd94(75)
      acd94(78)=acd94(4)*acd94(21)
      acd94(67)=acd94(78)+acd94(77)+acd94(76)+acd94(74)+acd94(73)+acd94(72)+acd&
      &94(70)+acd94(68)+acd94(69)+acd94(67)
      acd94(67)=acd94(17)*acd94(67)
      acd94(68)=acd94(25)*acd94(26)
      acd94(69)=acd94(23)*acd94(24)
      acd94(70)=-acd94(5)*acd94(75)
      acd94(68)=acd94(70)+acd94(68)+acd94(69)
      acd94(68)=acd94(14)*acd94(68)
      acd94(69)=acd94(30)*acd94(26)
      acd94(70)=acd94(29)*acd94(24)
      acd94(72)=-acd94(5)*acd94(71)
      acd94(69)=acd94(72)+acd94(69)+acd94(70)
      acd94(69)=acd94(4)*acd94(69)
      acd94(70)=acd94(75)*acd94(62)
      acd94(71)=acd94(71)*acd94(65)
      acd94(70)=acd94(71)+acd94(70)
      acd94(70)=acd94(7)*acd94(70)
      acd94(71)=acd94(30)*acd94(34)
      acd94(72)=acd94(29)*acd94(33)
      acd94(71)=acd94(71)+acd94(72)
      acd94(65)=acd94(71)*acd94(65)
      acd94(71)=acd94(25)*acd94(34)
      acd94(72)=acd94(23)*acd94(33)
      acd94(71)=acd94(71)+acd94(72)
      acd94(62)=acd94(71)*acd94(62)
      acd94(71)=acd94(1)*acd94(2)
      brack=acd94(62)+acd94(63)+acd94(64)+acd94(65)+acd94(66)+acd94(67)+acd94(6&
      &8)+acd94(69)+acd94(70)+2.0_ki*acd94(71)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd94h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd94
      complex(ki) :: brack
      acd94(1)=d(iv1,iv2)
      acd94(2)=k1(iv3)
      acd94(3)=abb94(23)
      acd94(4)=k3(iv3)
      acd94(5)=k4(iv3)
      acd94(6)=spvak2l5(iv3)
      acd94(7)=abb94(26)
      acd94(8)=spvak2l6(iv3)
      acd94(9)=abb94(32)
      acd94(10)=spvak4k1(iv3)
      acd94(11)=abb94(20)
      acd94(12)=spvak4k3(iv3)
      acd94(13)=abb94(59)
      acd94(14)=d(iv1,iv3)
      acd94(15)=k1(iv2)
      acd94(16)=k3(iv2)
      acd94(17)=k4(iv2)
      acd94(18)=spvak2l5(iv2)
      acd94(19)=spvak2l6(iv2)
      acd94(20)=spvak4k1(iv2)
      acd94(21)=spvak4k3(iv2)
      acd94(22)=d(iv2,iv3)
      acd94(23)=k1(iv1)
      acd94(24)=k3(iv1)
      acd94(25)=k4(iv1)
      acd94(26)=spvak2l5(iv1)
      acd94(27)=spvak2l6(iv1)
      acd94(28)=spvak4k1(iv1)
      acd94(29)=spvak4k3(iv1)
      acd94(30)=e7(iv2)
      acd94(31)=abb94(38)
      acd94(32)=abb94(22)
      acd94(33)=e7(iv3)
      acd94(34)=e7(iv1)
      acd94(35)=abb94(12)
      acd94(36)=abb94(41)
      acd94(37)=spvak2k1(iv3)
      acd94(38)=abb94(46)
      acd94(39)=spvak2k3(iv3)
      acd94(40)=abb94(48)
      acd94(41)=spvak2k1(iv2)
      acd94(42)=spvak2k3(iv2)
      acd94(43)=abb94(24)
      acd94(44)=abb94(79)
      acd94(45)=abb94(42)
      acd94(46)=abb94(43)
      acd94(47)=spvak2k1(iv1)
      acd94(48)=spvak2k3(iv1)
      acd94(49)=acd94(1)*acd94(6)
      acd94(50)=acd94(14)*acd94(18)
      acd94(51)=acd94(22)*acd94(26)
      acd94(49)=acd94(51)+acd94(49)+acd94(50)
      acd94(49)=acd94(7)*acd94(49)
      acd94(50)=acd94(1)*acd94(8)
      acd94(51)=acd94(14)*acd94(19)
      acd94(52)=acd94(22)*acd94(27)
      acd94(50)=acd94(52)+acd94(50)+acd94(51)
      acd94(50)=acd94(9)*acd94(50)
      acd94(51)=acd94(10)*acd94(1)
      acd94(52)=acd94(20)*acd94(14)
      acd94(53)=acd94(28)*acd94(22)
      acd94(51)=acd94(53)+acd94(51)+acd94(52)
      acd94(51)=acd94(11)*acd94(51)
      acd94(52)=acd94(12)*acd94(1)
      acd94(53)=acd94(21)*acd94(14)
      acd94(54)=acd94(29)*acd94(22)
      acd94(52)=acd94(54)+acd94(52)+acd94(53)
      acd94(52)=acd94(13)*acd94(52)
      acd94(49)=acd94(49)+acd94(50)+acd94(51)+acd94(52)
      acd94(50)=acd94(8)*acd94(30)
      acd94(51)=acd94(19)*acd94(33)
      acd94(50)=acd94(50)+acd94(51)
      acd94(51)=acd94(32)*acd94(50)
      acd94(52)=acd94(6)*acd94(30)
      acd94(53)=acd94(18)*acd94(33)
      acd94(52)=acd94(52)+acd94(53)
      acd94(53)=acd94(31)*acd94(52)
      acd94(54)=2.0_ki*acd94(3)
      acd94(55)=acd94(54)*acd94(22)
      acd94(51)=acd94(53)-acd94(55)+acd94(51)
      acd94(53)=-acd94(25)-acd94(24)+acd94(23)
      acd94(51)=acd94(51)*acd94(53)
      acd94(53)=acd94(18)*acd94(34)
      acd94(55)=acd94(26)*acd94(30)
      acd94(53)=acd94(53)+acd94(55)
      acd94(55)=acd94(31)*acd94(53)
      acd94(56)=acd94(19)*acd94(34)
      acd94(57)=acd94(27)*acd94(30)
      acd94(56)=acd94(56)+acd94(57)
      acd94(57)=acd94(32)*acd94(56)
      acd94(58)=acd94(54)*acd94(1)
      acd94(55)=-acd94(58)+acd94(57)+acd94(55)
      acd94(57)=-acd94(5)+acd94(2)-acd94(4)
      acd94(55)=acd94(55)*acd94(57)
      acd94(57)=acd94(8)*acd94(34)
      acd94(58)=acd94(27)*acd94(33)
      acd94(57)=acd94(57)+acd94(58)
      acd94(58)=acd94(32)*acd94(57)
      acd94(59)=acd94(6)*acd94(34)
      acd94(60)=acd94(26)*acd94(33)
      acd94(59)=acd94(59)+acd94(60)
      acd94(60)=acd94(31)*acd94(59)
      acd94(54)=acd94(54)*acd94(14)
      acd94(54)=acd94(60)-acd94(54)+acd94(58)
      acd94(58)=-acd94(17)-acd94(16)+acd94(15)
      acd94(54)=acd94(54)*acd94(58)
      acd94(58)=acd94(35)*acd94(53)
      acd94(60)=acd94(43)*acd94(56)
      acd94(58)=acd94(58)+acd94(60)
      acd94(58)=acd94(10)*acd94(58)
      acd94(60)=acd94(36)*acd94(53)
      acd94(61)=acd94(44)*acd94(56)
      acd94(60)=acd94(60)+acd94(61)
      acd94(60)=acd94(12)*acd94(60)
      acd94(61)=acd94(35)*acd94(59)
      acd94(62)=acd94(43)*acd94(57)
      acd94(61)=acd94(61)+acd94(62)
      acd94(61)=acd94(20)*acd94(61)
      acd94(62)=acd94(36)*acd94(59)
      acd94(63)=acd94(44)*acd94(57)
      acd94(62)=acd94(62)+acd94(63)
      acd94(62)=acd94(21)*acd94(62)
      acd94(63)=acd94(35)*acd94(52)
      acd94(64)=acd94(43)*acd94(50)
      acd94(63)=acd94(63)+acd94(64)
      acd94(63)=acd94(28)*acd94(63)
      acd94(64)=acd94(36)*acd94(52)
      acd94(65)=acd94(44)*acd94(50)
      acd94(64)=acd94(64)+acd94(65)
      acd94(64)=acd94(29)*acd94(64)
      acd94(65)=acd94(38)*acd94(53)
      acd94(66)=acd94(45)*acd94(56)
      acd94(65)=acd94(65)+acd94(66)
      acd94(65)=acd94(37)*acd94(65)
      acd94(53)=acd94(40)*acd94(53)
      acd94(56)=acd94(46)*acd94(56)
      acd94(53)=acd94(53)+acd94(56)
      acd94(53)=acd94(39)*acd94(53)
      acd94(56)=acd94(38)*acd94(59)
      acd94(66)=acd94(45)*acd94(57)
      acd94(56)=acd94(56)+acd94(66)
      acd94(56)=acd94(41)*acd94(56)
      acd94(59)=acd94(40)*acd94(59)
      acd94(57)=acd94(46)*acd94(57)
      acd94(57)=acd94(59)+acd94(57)
      acd94(57)=acd94(42)*acd94(57)
      acd94(59)=acd94(38)*acd94(52)
      acd94(66)=acd94(45)*acd94(50)
      acd94(59)=acd94(59)+acd94(66)
      acd94(59)=acd94(47)*acd94(59)
      acd94(52)=acd94(40)*acd94(52)
      acd94(50)=acd94(46)*acd94(50)
      acd94(50)=acd94(52)+acd94(50)
      acd94(50)=acd94(48)*acd94(50)
      brack=2.0_ki*acd94(49)+acd94(50)+acd94(51)+acd94(53)+acd94(54)+acd94(55)+&
      &acd94(56)+acd94(57)+acd94(58)+acd94(59)+acd94(60)+acd94(61)+acd94(62)+ac&
      &d94(63)+acd94(64)+acd94(65)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd94h3
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
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_94:
      coeffs%coeffs_94%c0 = derivative(czip)
      coeffs%coeffs_94%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_94%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_94%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_94%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_94%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_94%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_94%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_94%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_94%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_94%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_94%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_94%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_94%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_94%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_94%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_94%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_94%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_94%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_94%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_94%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_94%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_94%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_94%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_94%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_94%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_94%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_94%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_94%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_94%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_94%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_94%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_94%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_94%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_94%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_94:
   end subroutine reconstruct_d94
!---#] subroutine reconstruct_d94:
end module     p9_csbar_epnebbbarg_d94h3l1d
