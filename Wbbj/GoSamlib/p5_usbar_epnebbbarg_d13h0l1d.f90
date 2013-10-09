module     p5_usbar_epnebbbarg_d13h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d13h0l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d13
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd13h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd13
      complex(ki) :: brack
      acd13(1)=abb13(23)
      brack=acd13(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd13h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd13
      complex(ki) :: brack
      acd13(1)=k1(iv1)
      acd13(2)=abb13(54)
      acd13(3)=k2(iv1)
      acd13(4)=abb13(13)
      acd13(5)=l5(iv1)
      acd13(6)=abb13(40)
      acd13(7)=l6(iv1)
      acd13(8)=k7(iv1)
      acd13(9)=e7(iv1)
      acd13(10)=abb13(36)
      acd13(11)=spvak4k3(iv1)
      acd13(12)=abb13(10)
      acd13(13)=spval5k2(iv1)
      acd13(14)=abb13(11)
      acd13(15)=spval6k2(iv1)
      acd13(16)=abb13(18)
      acd13(17)=spvae7k1(iv1)
      acd13(18)=abb13(34)
      acd13(19)=-acd13(8)+acd13(1)
      acd13(19)=acd13(2)*acd13(19)
      acd13(20)=acd13(7)+acd13(5)
      acd13(20)=acd13(6)*acd13(20)
      acd13(21)=acd13(4)*acd13(3)
      acd13(22)=acd13(10)*acd13(9)
      acd13(23)=acd13(12)*acd13(11)
      acd13(24)=acd13(14)*acd13(13)
      acd13(25)=acd13(16)*acd13(15)
      acd13(26)=acd13(18)*acd13(17)
      brack=acd13(19)+acd13(20)+acd13(21)+acd13(22)+acd13(23)+acd13(24)+acd13(2&
      &5)+acd13(26)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd13h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(69) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=abb13(22)
      acd13(3)=k1(iv1)
      acd13(4)=k2(iv2)
      acd13(5)=abb13(68)
      acd13(6)=l5(iv2)
      acd13(7)=abb13(85)
      acd13(8)=l6(iv2)
      acd13(9)=spval5k2(iv2)
      acd13(10)=abb13(15)
      acd13(11)=spval6k2(iv2)
      acd13(12)=abb13(35)
      acd13(13)=k1(iv2)
      acd13(14)=k2(iv1)
      acd13(15)=l5(iv1)
      acd13(16)=l6(iv1)
      acd13(17)=spval5k2(iv1)
      acd13(18)=spval6k2(iv1)
      acd13(19)=abb13(88)
      acd13(20)=abb13(99)
      acd13(21)=k7(iv2)
      acd13(22)=e7(iv2)
      acd13(23)=abb13(43)
      acd13(24)=abb13(17)
      acd13(25)=abb13(53)
      acd13(26)=spvak4k3(iv2)
      acd13(27)=abb13(14)
      acd13(28)=spvae7k1(iv2)
      acd13(29)=abb13(21)
      acd13(30)=k7(iv1)
      acd13(31)=e7(iv1)
      acd13(32)=spvak4k3(iv1)
      acd13(33)=spvae7k1(iv1)
      acd13(34)=abb13(82)
      acd13(35)=abb13(47)
      acd13(36)=abb13(9)
      acd13(37)=abb13(20)
      acd13(38)=abb13(27)
      acd13(39)=abb13(24)
      acd13(40)=spvak2k3(iv2)
      acd13(41)=abb13(50)
      acd13(42)=spvak2l5(iv2)
      acd13(43)=abb13(45)
      acd13(44)=spvak2l6(iv2)
      acd13(45)=abb13(42)
      acd13(46)=spvak2k3(iv1)
      acd13(47)=spvak2l5(iv1)
      acd13(48)=spvak2l6(iv1)
      acd13(49)=abb13(28)
      acd13(50)=abb13(48)
      acd13(51)=abb13(46)
      acd13(52)=abb13(44)
      acd13(53)=abb13(41)
      acd13(54)=acd13(15)+acd13(16)
      acd13(55)=-acd13(20)*acd13(54)
      acd13(56)=acd13(3)-acd13(30)
      acd13(57)=acd13(5)*acd13(56)
      acd13(58)=acd13(32)*acd13(27)
      acd13(59)=acd13(33)*acd13(29)
      acd13(60)=acd13(31)*acd13(23)
      acd13(61)=acd13(18)*acd13(25)
      acd13(62)=acd13(17)*acd13(24)
      acd13(63)=acd13(14)*acd13(19)
      acd13(55)=2.0_ki*acd13(63)+acd13(62)+acd13(61)+acd13(60)+acd13(58)+acd13(&
      &59)+acd13(57)+acd13(55)
      acd13(55)=acd13(4)*acd13(55)
      acd13(57)=acd13(13)-acd13(21)
      acd13(58)=-acd13(12)*acd13(57)
      acd13(59)=acd13(44)*acd13(53)
      acd13(60)=acd13(42)*acd13(52)
      acd13(61)=acd13(40)*acd13(51)
      acd13(62)=acd13(26)*acd13(49)
      acd13(63)=acd13(28)*acd13(50)
      acd13(64)=acd13(22)*acd13(37)
      acd13(58)=acd13(64)+acd13(63)+acd13(62)+acd13(61)+acd13(59)+acd13(60)+acd&
      &13(58)
      acd13(58)=acd13(18)*acd13(58)
      acd13(59)=-acd13(10)*acd13(57)
      acd13(60)=acd13(44)*acd13(45)
      acd13(61)=acd13(42)*acd13(43)
      acd13(62)=acd13(40)*acd13(41)
      acd13(63)=acd13(26)*acd13(38)
      acd13(64)=acd13(28)*acd13(39)
      acd13(65)=acd13(22)*acd13(36)
      acd13(59)=acd13(65)+acd13(64)+acd13(63)+acd13(62)+acd13(60)+acd13(61)+acd&
      &13(59)
      acd13(59)=acd13(17)*acd13(59)
      acd13(60)=-acd13(12)*acd13(56)
      acd13(61)=acd13(48)*acd13(53)
      acd13(62)=acd13(47)*acd13(52)
      acd13(63)=acd13(46)*acd13(51)
      acd13(64)=acd13(32)*acd13(49)
      acd13(65)=acd13(33)*acd13(50)
      acd13(66)=acd13(31)*acd13(37)
      acd13(60)=acd13(66)+acd13(65)+acd13(64)+acd13(63)+acd13(61)+acd13(62)+acd&
      &13(60)
      acd13(60)=acd13(11)*acd13(60)
      acd13(61)=-acd13(10)*acd13(56)
      acd13(62)=acd13(45)*acd13(48)
      acd13(63)=acd13(43)*acd13(47)
      acd13(64)=acd13(41)*acd13(46)
      acd13(65)=acd13(32)*acd13(38)
      acd13(66)=acd13(33)*acd13(39)
      acd13(67)=acd13(31)*acd13(36)
      acd13(61)=acd13(67)+acd13(66)+acd13(65)+acd13(64)+acd13(62)+acd13(63)+acd&
      &13(61)
      acd13(61)=acd13(9)*acd13(61)
      acd13(62)=acd13(6)+acd13(8)
      acd13(63)=-acd13(20)*acd13(62)
      acd13(64)=acd13(5)*acd13(57)
      acd13(65)=acd13(26)*acd13(27)
      acd13(66)=acd13(28)*acd13(29)
      acd13(67)=acd13(22)*acd13(23)
      acd13(68)=acd13(11)*acd13(25)
      acd13(69)=acd13(9)*acd13(24)
      acd13(63)=acd13(69)+acd13(68)+acd13(67)+acd13(65)+acd13(66)+acd13(64)+acd&
      &13(63)
      acd13(63)=acd13(14)*acd13(63)
      acd13(56)=acd13(62)*acd13(56)
      acd13(57)=acd13(54)*acd13(57)
      acd13(56)=acd13(57)+acd13(56)
      acd13(56)=acd13(7)*acd13(56)
      acd13(57)=acd13(33)*acd13(35)
      acd13(64)=acd13(31)*acd13(34)
      acd13(57)=acd13(57)-acd13(64)
      acd13(57)=-acd13(57)*acd13(62)
      acd13(62)=acd13(28)*acd13(35)
      acd13(64)=acd13(22)*acd13(34)
      acd13(62)=acd13(62)-acd13(64)
      acd13(54)=-acd13(62)*acd13(54)
      acd13(62)=acd13(1)*acd13(2)
      brack=acd13(54)+acd13(55)+acd13(56)+acd13(57)+acd13(58)+acd13(59)+acd13(6&
      &0)+acd13(61)+2.0_ki*acd13(62)+acd13(63)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd13h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(62) :: acd13
      complex(ki) :: brack
      acd13(1)=d(iv1,iv2)
      acd13(2)=k1(iv3)
      acd13(3)=abb13(49)
      acd13(4)=k2(iv3)
      acd13(5)=abb13(57)
      acd13(6)=k7(iv3)
      acd13(7)=e7(iv3)
      acd13(8)=abb13(33)
      acd13(9)=spval5k2(iv3)
      acd13(10)=abb13(19)
      acd13(11)=spval6k2(iv3)
      acd13(12)=abb13(52)
      acd13(13)=spvae7k1(iv3)
      acd13(14)=abb13(39)
      acd13(15)=d(iv1,iv3)
      acd13(16)=k1(iv2)
      acd13(17)=k2(iv2)
      acd13(18)=k7(iv2)
      acd13(19)=e7(iv2)
      acd13(20)=spval5k2(iv2)
      acd13(21)=spval6k2(iv2)
      acd13(22)=spvae7k1(iv2)
      acd13(23)=d(iv2,iv3)
      acd13(24)=k1(iv1)
      acd13(25)=k2(iv1)
      acd13(26)=k7(iv1)
      acd13(27)=e7(iv1)
      acd13(28)=spval5k2(iv1)
      acd13(29)=spval6k2(iv1)
      acd13(30)=spvae7k1(iv1)
      acd13(31)=spvak4k3(iv3)
      acd13(32)=abb13(31)
      acd13(33)=spvak4k3(iv2)
      acd13(34)=abb13(32)
      acd13(35)=spvak4k3(iv1)
      acd13(36)=abb13(29)
      acd13(37)=abb13(30)
      acd13(38)=abb13(38)
      acd13(39)=spvak2k1(iv3)
      acd13(40)=abb13(37)
      acd13(41)=spvak2k7(iv3)
      acd13(42)=abb13(12)
      acd13(43)=spvak2k1(iv2)
      acd13(44)=spvak2k7(iv2)
      acd13(45)=spvak2k1(iv1)
      acd13(46)=spvak2k7(iv1)
      acd13(47)=abb13(26)
      acd13(48)=abb13(25)
      acd13(49)=abb13(16)
      acd13(50)=acd13(5)*acd13(25)
      acd13(51)=acd13(30)*acd13(14)
      acd13(52)=acd13(27)*acd13(8)
      acd13(53)=acd13(24)-acd13(26)
      acd13(54)=acd13(3)*acd13(53)
      acd13(55)=acd13(29)*acd13(12)
      acd13(56)=acd13(28)*acd13(10)
      acd13(50)=acd13(56)+acd13(55)+acd13(54)+acd13(52)+acd13(50)+acd13(51)
      acd13(50)=acd13(23)*acd13(50)
      acd13(51)=acd13(5)*acd13(17)
      acd13(52)=acd13(22)*acd13(14)
      acd13(54)=acd13(19)*acd13(8)
      acd13(55)=acd13(16)-acd13(18)
      acd13(56)=acd13(3)*acd13(55)
      acd13(57)=acd13(21)*acd13(12)
      acd13(58)=acd13(20)*acd13(10)
      acd13(51)=acd13(58)+acd13(57)+acd13(56)+acd13(54)+acd13(51)+acd13(52)
      acd13(51)=acd13(15)*acd13(51)
      acd13(52)=acd13(5)*acd13(4)
      acd13(54)=acd13(13)*acd13(14)
      acd13(56)=acd13(7)*acd13(8)
      acd13(57)=acd13(2)-acd13(6)
      acd13(58)=acd13(3)*acd13(57)
      acd13(59)=acd13(11)*acd13(12)
      acd13(60)=acd13(9)*acd13(10)
      acd13(52)=acd13(60)+acd13(59)+acd13(58)+acd13(56)+acd13(52)+acd13(54)
      acd13(52)=acd13(1)*acd13(52)
      acd13(50)=acd13(52)+acd13(51)+acd13(50)
      acd13(51)=acd13(49)*acd13(41)
      acd13(52)=acd13(48)*acd13(39)
      acd13(54)=acd13(47)*acd13(13)
      acd13(56)=acd13(57)*acd13(34)
      acd13(58)=acd13(37)*acd13(7)
      acd13(51)=acd13(58)+acd13(51)+acd13(52)+acd13(54)+acd13(56)
      acd13(52)=acd13(21)*acd13(51)
      acd13(54)=acd13(42)*acd13(41)
      acd13(56)=acd13(40)*acd13(39)
      acd13(57)=acd13(57)*acd13(32)
      acd13(58)=acd13(38)*acd13(13)
      acd13(59)=acd13(36)*acd13(7)
      acd13(54)=acd13(54)+acd13(58)+acd13(59)+acd13(56)+acd13(57)
      acd13(56)=acd13(20)*acd13(54)
      acd13(57)=acd13(49)*acd13(44)
      acd13(58)=acd13(48)*acd13(43)
      acd13(59)=acd13(47)*acd13(22)
      acd13(60)=acd13(55)*acd13(34)
      acd13(61)=acd13(37)*acd13(19)
      acd13(57)=acd13(61)+acd13(57)+acd13(58)+acd13(59)+acd13(60)
      acd13(58)=acd13(11)*acd13(57)
      acd13(59)=acd13(42)*acd13(44)
      acd13(60)=acd13(40)*acd13(43)
      acd13(61)=acd13(38)*acd13(22)
      acd13(55)=acd13(55)*acd13(32)
      acd13(62)=acd13(36)*acd13(19)
      acd13(55)=acd13(62)+acd13(59)+acd13(60)+acd13(61)+acd13(55)
      acd13(59)=acd13(9)*acd13(55)
      acd13(52)=acd13(59)+acd13(58)+acd13(52)+acd13(56)
      acd13(52)=acd13(35)*acd13(52)
      acd13(51)=acd13(29)*acd13(51)
      acd13(54)=acd13(28)*acd13(54)
      acd13(56)=acd13(49)*acd13(46)
      acd13(58)=acd13(48)*acd13(45)
      acd13(59)=acd13(47)*acd13(30)
      acd13(60)=acd13(53)*acd13(34)
      acd13(61)=acd13(37)*acd13(27)
      acd13(56)=acd13(61)+acd13(56)+acd13(58)+acd13(59)+acd13(60)
      acd13(58)=acd13(11)*acd13(56)
      acd13(59)=acd13(42)*acd13(46)
      acd13(60)=acd13(40)*acd13(45)
      acd13(61)=acd13(38)*acd13(30)
      acd13(53)=acd13(53)*acd13(32)
      acd13(62)=acd13(36)*acd13(27)
      acd13(53)=acd13(62)+acd13(59)+acd13(60)+acd13(61)+acd13(53)
      acd13(59)=acd13(9)*acd13(53)
      acd13(51)=acd13(59)+acd13(58)+acd13(51)+acd13(54)
      acd13(51)=acd13(33)*acd13(51)
      acd13(54)=acd13(29)*acd13(57)
      acd13(55)=acd13(28)*acd13(55)
      acd13(56)=acd13(21)*acd13(56)
      acd13(53)=acd13(20)*acd13(53)
      acd13(53)=acd13(53)+acd13(56)+acd13(54)+acd13(55)
      acd13(53)=acd13(31)*acd13(53)
      brack=2.0_ki*acd13(50)+acd13(51)+acd13(52)+acd13(53)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd13h0
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
!---#[ subroutine reconstruct_d13:
   subroutine     reconstruct_d13(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_13:
      coeffs%coeffs_13%c0 = derivative(czip)
      coeffs%coeffs_13%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_13%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_13%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_13%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_13%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_13%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_13%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_13%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_13%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_13%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_13%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_13%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_13%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_13%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_13%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_13%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_13%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_13%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_13%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_13%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_13%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_13%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_13%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_13%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_13%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_13%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_13%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_13%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_13%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_13%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_13%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_13%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_13%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_13%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_13:
   end subroutine reconstruct_d13
!---#] subroutine reconstruct_d13:
end module     p5_usbar_epnebbbarg_d13h0l1d
