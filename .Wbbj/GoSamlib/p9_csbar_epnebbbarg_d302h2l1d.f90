module     p9_csbar_epnebbbarg_d302h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d302h2l1d.f90
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
   public :: derivative , reconstruct_d302
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd302h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd302
      complex(ki) :: brack
      acd302(1)=abb302(12)
      brack=acd302(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd302h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd302
      complex(ki) :: brack
      acd302(1)=k1(iv1)
      acd302(2)=abb302(35)
      acd302(3)=k2(iv1)
      acd302(4)=abb302(31)
      acd302(5)=k3(iv1)
      acd302(6)=k4(iv1)
      acd302(7)=k7(iv1)
      acd302(8)=abb302(32)
      acd302(9)=e7(iv1)
      acd302(10)=abb302(7)
      acd302(11)=spvak2l6(iv1)
      acd302(12)=abb302(8)
      acd302(13)=spvak4k1(iv1)
      acd302(14)=abb302(23)
      acd302(15)=spvak4k3(iv1)
      acd302(16)=abb302(53)
      acd302(17)=spval5l6(iv1)
      acd302(18)=abb302(30)
      acd302(19)=acd302(6)+acd302(5)-acd302(1)
      acd302(19)=acd302(2)*acd302(19)
      acd302(20)=acd302(4)*acd302(3)
      acd302(21)=acd302(8)*acd302(7)
      acd302(22)=acd302(10)*acd302(9)
      acd302(23)=acd302(12)*acd302(11)
      acd302(24)=acd302(14)*acd302(13)
      acd302(25)=acd302(16)*acd302(15)
      acd302(26)=acd302(18)*acd302(17)
      brack=acd302(19)+acd302(20)+acd302(21)+acd302(22)+acd302(23)+acd302(24)+a&
      &cd302(25)+acd302(26)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd302h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd302
      complex(ki) :: brack
      acd302(1)=d(iv1,iv2)
      acd302(2)=abb302(27)
      acd302(3)=k1(iv1)
      acd302(4)=k2(iv2)
      acd302(5)=abb302(42)
      acd302(6)=e7(iv2)
      acd302(7)=abb302(38)
      acd302(8)=spvak7l6(iv2)
      acd302(9)=abb302(49)
      acd302(10)=spvak2e7(iv2)
      acd302(11)=abb302(39)
      acd302(12)=spvae7l6(iv2)
      acd302(13)=abb302(47)
      acd302(14)=k1(iv2)
      acd302(15)=k2(iv1)
      acd302(16)=e7(iv1)
      acd302(17)=spvak7l6(iv1)
      acd302(18)=spvak2e7(iv1)
      acd302(19)=spvae7l6(iv1)
      acd302(20)=k3(iv2)
      acd302(21)=k4(iv2)
      acd302(22)=abb302(36)
      acd302(23)=abb302(48)
      acd302(24)=spvak2l6(iv2)
      acd302(25)=abb302(21)
      acd302(26)=spvak4k1(iv2)
      acd302(27)=abb302(17)
      acd302(28)=spvak4k3(iv2)
      acd302(29)=abb302(20)
      acd302(30)=spval5l6(iv2)
      acd302(31)=abb302(26)
      acd302(32)=k3(iv1)
      acd302(33)=k4(iv1)
      acd302(34)=spvak2l6(iv1)
      acd302(35)=spvak4k1(iv1)
      acd302(36)=spvak4k3(iv1)
      acd302(37)=spval5l6(iv1)
      acd302(38)=k7(iv1)
      acd302(39)=k7(iv2)
      acd302(40)=abb302(9)
      acd302(41)=abb302(11)
      acd302(42)=abb302(54)
      acd302(43)=abb302(24)
      acd302(44)=spvak2k7(iv2)
      acd302(45)=abb302(6)
      acd302(46)=spvak2k7(iv1)
      acd302(47)=abb302(13)
      acd302(48)=abb302(19)
      acd302(49)=abb302(14)
      acd302(50)=abb302(34)
      acd302(51)=abb302(25)
      acd302(52)=abb302(18)
      acd302(53)=abb302(56)
      acd302(54)=spval5k2(iv2)
      acd302(55)=abb302(10)
      acd302(56)=spval5e7(iv2)
      acd302(57)=spval5k2(iv1)
      acd302(58)=spval5e7(iv1)
      acd302(59)=acd302(45)*acd302(46)
      acd302(60)=acd302(37)*acd302(43)
      acd302(61)=acd302(36)*acd302(42)
      acd302(62)=acd302(35)*acd302(41)
      acd302(63)=acd302(34)*acd302(40)
      acd302(64)=-acd302(3)+acd302(32)+acd302(33)
      acd302(65)=-acd302(7)*acd302(64)
      acd302(66)=acd302(15)*acd302(22)
      acd302(59)=acd302(66)+acd302(65)+acd302(63)+acd302(62)+acd302(61)+acd302(&
      &59)+acd302(60)
      acd302(59)=acd302(6)*acd302(59)
      acd302(60)=acd302(37)*acd302(31)
      acd302(61)=acd302(36)*acd302(29)
      acd302(62)=acd302(35)*acd302(27)
      acd302(63)=-acd302(34)*acd302(25)
      acd302(65)=-acd302(5)*acd302(64)
      acd302(66)=acd302(18)*acd302(23)
      acd302(67)=acd302(16)*acd302(22)
      acd302(60)=acd302(67)+acd302(66)+acd302(65)+acd302(63)+acd302(62)+acd302(&
      &60)+acd302(61)
      acd302(60)=acd302(4)*acd302(60)
      acd302(61)=acd302(45)*acd302(44)
      acd302(62)=acd302(30)*acd302(43)
      acd302(63)=acd302(28)*acd302(42)
      acd302(65)=acd302(26)*acd302(41)
      acd302(66)=acd302(24)*acd302(40)
      acd302(67)=-acd302(14)+acd302(20)+acd302(21)
      acd302(68)=-acd302(7)*acd302(67)
      acd302(61)=acd302(68)+acd302(66)+acd302(65)+acd302(63)+acd302(61)+acd302(&
      &62)
      acd302(61)=acd302(16)*acd302(61)
      acd302(62)=acd302(30)*acd302(31)
      acd302(63)=acd302(28)*acd302(29)
      acd302(65)=acd302(26)*acd302(27)
      acd302(66)=-acd302(24)*acd302(25)
      acd302(68)=-acd302(5)*acd302(67)
      acd302(69)=acd302(10)*acd302(23)
      acd302(62)=acd302(69)+acd302(68)+acd302(66)+acd302(65)+acd302(62)+acd302(&
      &63)
      acd302(62)=acd302(15)*acd302(62)
      acd302(63)=-acd302(51)*acd302(30)
      acd302(65)=-acd302(23)*acd302(39)
      acd302(66)=acd302(28)*acd302(50)
      acd302(68)=acd302(26)*acd302(49)
      acd302(69)=-acd302(11)*acd302(67)
      acd302(63)=acd302(69)+acd302(68)+acd302(66)+acd302(63)+acd302(65)
      acd302(63)=acd302(18)*acd302(63)
      acd302(65)=-acd302(51)*acd302(37)
      acd302(66)=-acd302(23)*acd302(38)
      acd302(68)=acd302(36)*acd302(50)
      acd302(69)=acd302(35)*acd302(49)
      acd302(70)=-acd302(11)*acd302(64)
      acd302(65)=acd302(70)+acd302(69)+acd302(68)+acd302(65)+acd302(66)
      acd302(65)=acd302(10)*acd302(65)
      acd302(66)=acd302(55)*acd302(54)
      acd302(68)=acd302(51)*acd302(56)
      acd302(69)=acd302(25)*acd302(39)
      acd302(66)=acd302(69)+acd302(66)+acd302(68)
      acd302(66)=acd302(34)*acd302(66)
      acd302(68)=acd302(55)*acd302(57)
      acd302(69)=acd302(51)*acd302(58)
      acd302(70)=acd302(25)*acd302(38)
      acd302(68)=acd302(70)+acd302(68)+acd302(69)
      acd302(68)=acd302(24)*acd302(68)
      acd302(69)=acd302(28)*acd302(53)
      acd302(70)=acd302(26)*acd302(52)
      acd302(69)=acd302(69)+acd302(70)
      acd302(69)=acd302(19)*acd302(69)
      acd302(70)=acd302(28)*acd302(48)
      acd302(71)=acd302(26)*acd302(47)
      acd302(70)=acd302(70)+acd302(71)
      acd302(70)=acd302(17)*acd302(70)
      acd302(71)=acd302(36)*acd302(53)
      acd302(72)=acd302(35)*acd302(52)
      acd302(71)=acd302(71)+acd302(72)
      acd302(71)=acd302(12)*acd302(71)
      acd302(72)=acd302(36)*acd302(48)
      acd302(73)=acd302(35)*acd302(47)
      acd302(72)=acd302(72)+acd302(73)
      acd302(72)=acd302(8)*acd302(72)
      acd302(73)=-acd302(19)*acd302(67)
      acd302(74)=-acd302(12)*acd302(64)
      acd302(73)=acd302(74)+acd302(73)
      acd302(73)=acd302(13)*acd302(73)
      acd302(67)=acd302(17)*acd302(67)
      acd302(64)=acd302(8)*acd302(64)
      acd302(64)=acd302(64)+acd302(67)
      acd302(64)=acd302(9)*acd302(64)
      acd302(67)=acd302(1)*acd302(2)
      brack=acd302(59)+acd302(60)+acd302(61)+acd302(62)+acd302(63)+acd302(64)+a&
      &cd302(65)+acd302(66)+2.0_ki*acd302(67)+acd302(68)+acd302(69)+acd302(70)+&
      &acd302(71)+acd302(72)+acd302(73)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd302h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(64) :: acd302
      complex(ki) :: brack
      acd302(1)=d(iv1,iv2)
      acd302(2)=spvak2l6(iv3)
      acd302(3)=abb302(16)
      acd302(4)=spvak2e7(iv3)
      acd302(5)=abb302(29)
      acd302(6)=d(iv1,iv3)
      acd302(7)=spvak2l6(iv2)
      acd302(8)=spvak2e7(iv2)
      acd302(9)=d(iv2,iv3)
      acd302(10)=spvak2l6(iv1)
      acd302(11)=spvak2e7(iv1)
      acd302(12)=k1(iv1)
      acd302(13)=e7(iv2)
      acd302(14)=abb302(22)
      acd302(15)=e7(iv3)
      acd302(16)=k1(iv2)
      acd302(17)=e7(iv1)
      acd302(18)=k1(iv3)
      acd302(19)=k3(iv1)
      acd302(20)=k3(iv2)
      acd302(21)=k3(iv3)
      acd302(22)=k4(iv1)
      acd302(23)=k4(iv2)
      acd302(24)=k4(iv3)
      acd302(25)=spvak4k1(iv3)
      acd302(26)=abb302(15)
      acd302(27)=spvak4k3(iv3)
      acd302(28)=abb302(37)
      acd302(29)=spval5k1(iv3)
      acd302(30)=abb302(33)
      acd302(31)=spval5k3(iv3)
      acd302(32)=abb302(28)
      acd302(33)=spvak4k1(iv2)
      acd302(34)=spvak4k3(iv2)
      acd302(35)=spval5k1(iv2)
      acd302(36)=spval5k3(iv2)
      acd302(37)=spvak2k1(iv2)
      acd302(38)=spval5l6(iv3)
      acd302(39)=spvak2k1(iv3)
      acd302(40)=spval5l6(iv2)
      acd302(41)=spvak2k3(iv3)
      acd302(42)=spvak2k3(iv2)
      acd302(43)=spvak4k1(iv1)
      acd302(44)=spvak4k3(iv1)
      acd302(45)=spval5k1(iv1)
      acd302(46)=spval5k3(iv1)
      acd302(47)=spvak2k1(iv1)
      acd302(48)=spval5l6(iv1)
      acd302(49)=spvak2k3(iv1)
      acd302(50)=acd302(2)*acd302(17)
      acd302(51)=acd302(10)*acd302(15)
      acd302(50)=acd302(50)+acd302(51)
      acd302(51)=-acd302(23)-acd302(20)+acd302(16)
      acd302(51)=acd302(51)*acd302(50)
      acd302(52)=acd302(7)*acd302(17)
      acd302(53)=acd302(10)*acd302(13)
      acd302(52)=acd302(52)+acd302(53)
      acd302(53)=-acd302(24)-acd302(21)+acd302(18)
      acd302(53)=acd302(53)*acd302(52)
      acd302(54)=acd302(2)*acd302(13)
      acd302(55)=acd302(7)*acd302(15)
      acd302(54)=acd302(54)+acd302(55)
      acd302(55)=-acd302(22)-acd302(19)+acd302(12)
      acd302(55)=acd302(55)*acd302(54)
      acd302(51)=acd302(55)+acd302(53)+acd302(51)
      acd302(51)=acd302(14)*acd302(51)
      acd302(53)=acd302(43)*acd302(26)
      acd302(55)=acd302(44)*acd302(28)
      acd302(56)=acd302(45)*acd302(30)
      acd302(57)=-acd302(46)*acd302(32)
      acd302(53)=acd302(57)+acd302(56)+acd302(55)+acd302(53)
      acd302(53)=acd302(54)*acd302(53)
      acd302(54)=acd302(33)*acd302(26)
      acd302(55)=acd302(34)*acd302(28)
      acd302(56)=acd302(35)*acd302(30)
      acd302(57)=-acd302(36)*acd302(32)
      acd302(54)=acd302(57)+acd302(56)+acd302(55)+acd302(54)
      acd302(50)=acd302(50)*acd302(54)
      acd302(54)=acd302(25)*acd302(26)
      acd302(55)=acd302(27)*acd302(28)
      acd302(56)=acd302(29)*acd302(30)
      acd302(57)=-acd302(31)*acd302(32)
      acd302(54)=acd302(57)+acd302(56)+acd302(55)+acd302(54)
      acd302(52)=acd302(52)*acd302(54)
      acd302(54)=acd302(4)*acd302(1)
      acd302(55)=acd302(8)*acd302(6)
      acd302(56)=acd302(11)*acd302(9)
      acd302(54)=acd302(56)+acd302(55)+acd302(54)
      acd302(55)=2.0_ki*acd302(5)
      acd302(54)=acd302(55)*acd302(54)
      acd302(55)=acd302(1)*acd302(2)
      acd302(56)=acd302(6)*acd302(7)
      acd302(57)=acd302(9)*acd302(10)
      acd302(55)=acd302(57)+acd302(55)+acd302(56)
      acd302(55)=acd302(3)*acd302(55)
      acd302(56)=acd302(38)*acd302(30)
      acd302(57)=-acd302(17)*acd302(56)
      acd302(58)=acd302(48)*acd302(30)
      acd302(59)=-acd302(15)*acd302(58)
      acd302(57)=acd302(57)+acd302(59)
      acd302(57)=acd302(37)*acd302(57)
      acd302(59)=acd302(40)*acd302(30)
      acd302(60)=-acd302(17)*acd302(59)
      acd302(58)=-acd302(13)*acd302(58)
      acd302(58)=acd302(60)+acd302(58)
      acd302(58)=acd302(39)*acd302(58)
      acd302(60)=acd302(40)*acd302(32)
      acd302(61)=acd302(17)*acd302(60)
      acd302(62)=acd302(48)*acd302(32)
      acd302(63)=acd302(13)*acd302(62)
      acd302(61)=acd302(61)+acd302(63)
      acd302(61)=acd302(41)*acd302(61)
      acd302(63)=acd302(38)*acd302(32)
      acd302(64)=acd302(17)*acd302(63)
      acd302(62)=acd302(15)*acd302(62)
      acd302(62)=acd302(64)+acd302(62)
      acd302(62)=acd302(42)*acd302(62)
      acd302(56)=-acd302(13)*acd302(56)
      acd302(59)=-acd302(15)*acd302(59)
      acd302(56)=acd302(56)+acd302(59)
      acd302(56)=acd302(47)*acd302(56)
      acd302(59)=acd302(13)*acd302(63)
      acd302(60)=acd302(15)*acd302(60)
      acd302(59)=acd302(59)+acd302(60)
      acd302(59)=acd302(49)*acd302(59)
      brack=acd302(50)+acd302(51)+acd302(52)+acd302(53)+acd302(54)+2.0_ki*acd30&
      &2(55)+acd302(56)+acd302(57)+acd302(58)+acd302(59)+acd302(61)+acd302(62)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd302h2
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
!---#[ subroutine reconstruct_d302:
   subroutine     reconstruct_d302(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_302:
      coeffs%coeffs_302%c0 = derivative(czip)
      coeffs%coeffs_302%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_302%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_302%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_302%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_302%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_302%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_302%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_302%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_302%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_302%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_302%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_302%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_302%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_302%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_302%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_302%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_302%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_302%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_302%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_302%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_302%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_302%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_302%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_302%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_302%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_302%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_302%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_302%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_302%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_302%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_302%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_302%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_302%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_302%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_302:
   end subroutine reconstruct_d302
!---#] subroutine reconstruct_d302:
end module     p9_csbar_epnebbbarg_d302h2l1d
