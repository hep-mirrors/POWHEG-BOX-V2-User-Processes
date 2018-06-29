module     p0_dbard_epnemumnmubarg_d489h6l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p0_dbard_epnemumnmubarg/helicity6d489h6l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbard_epnemumnmubarg_config, only: ki
   use p0_dbard_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d489
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd489h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(58) :: acd489
      complex(ki) :: brack
      acd489(1)=dotproduct(k1,qshift)
      acd489(2)=dotproduct(qshift,spvak7k2)
      acd489(3)=abb489(14)
      acd489(4)=abb489(46)
      acd489(5)=dotproduct(k3,qshift)
      acd489(6)=abb489(65)
      acd489(7)=abb489(78)
      acd489(8)=dotproduct(k4,qshift)
      acd489(9)=dotproduct(k5,qshift)
      acd489(10)=dotproduct(k6,qshift)
      acd489(11)=dotproduct(k7,qshift)
      acd489(12)=abb489(32)
      acd489(13)=abb489(20)
      acd489(14)=dotproduct(qshift,qshift)
      acd489(15)=abb489(47)
      acd489(16)=dotproduct(qshift,spvak2k3)
      acd489(17)=abb489(17)
      acd489(18)=dotproduct(qshift,spvak2k4)
      acd489(19)=abb489(31)
      acd489(20)=dotproduct(qshift,spvak2k5)
      acd489(21)=abb489(38)
      acd489(22)=dotproduct(qshift,spvak2k6)
      acd489(23)=abb489(15)
      acd489(24)=dotproduct(qshift,spvak4k3)
      acd489(25)=abb489(29)
      acd489(26)=dotproduct(qshift,spvak4k6)
      acd489(27)=abb489(19)
      acd489(28)=dotproduct(qshift,spvak5k3)
      acd489(29)=abb489(51)
      acd489(30)=dotproduct(qshift,spvak5k6)
      acd489(31)=abb489(41)
      acd489(32)=dotproduct(qshift,spvak7k1)
      acd489(33)=abb489(16)
      acd489(34)=abb489(23)
      acd489(35)=abb489(36)
      acd489(36)=abb489(27)
      acd489(37)=abb489(30)
      acd489(38)=abb489(34)
      acd489(39)=abb489(18)
      acd489(40)=abb489(53)
      acd489(41)=abb489(54)
      acd489(42)=abb489(22)
      acd489(43)=abb489(13)
      acd489(44)=abb489(28)
      acd489(45)=acd489(3)*acd489(1)
      acd489(46)=acd489(12)*acd489(11)
      acd489(47)=acd489(17)*acd489(16)
      acd489(48)=acd489(19)*acd489(18)
      acd489(49)=acd489(21)*acd489(20)
      acd489(50)=acd489(23)*acd489(22)
      acd489(51)=acd489(25)*acd489(24)
      acd489(52)=acd489(27)*acd489(26)
      acd489(53)=acd489(29)*acd489(28)
      acd489(54)=acd489(31)*acd489(30)
      acd489(55)=acd489(33)*acd489(32)
      acd489(45)=-acd489(34)+acd489(55)+acd489(54)+acd489(53)+acd489(52)+acd489&
      &(51)+acd489(50)+acd489(49)+acd489(48)+acd489(47)+acd489(46)+acd489(45)
      acd489(45)=acd489(2)*acd489(45)
      acd489(46)=acd489(10)+acd489(9)-acd489(5)-acd489(8)
      acd489(47)=acd489(6)*acd489(2)
      acd489(47)=acd489(47)-acd489(7)
      acd489(46)=acd489(47)*acd489(46)
      acd489(47)=-acd489(4)*acd489(1)
      acd489(48)=-acd489(13)*acd489(11)
      acd489(49)=acd489(15)*acd489(14)
      acd489(50)=-acd489(35)*acd489(16)
      acd489(51)=-acd489(36)*acd489(18)
      acd489(52)=-acd489(37)*acd489(20)
      acd489(53)=-acd489(38)*acd489(22)
      acd489(54)=-acd489(39)*acd489(24)
      acd489(55)=-acd489(40)*acd489(26)
      acd489(56)=-acd489(41)*acd489(28)
      acd489(57)=-acd489(42)*acd489(30)
      acd489(58)=-acd489(43)*acd489(32)
      brack=acd489(44)+acd489(45)+acd489(46)+acd489(47)+acd489(48)+acd489(49)+a&
      &cd489(50)+acd489(51)+acd489(52)+acd489(53)+acd489(54)+acd489(55)+acd489(&
      &56)+acd489(57)+acd489(58)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd489h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd489
      complex(ki) :: brack
      acd489(1)=k1(iv1)
      acd489(2)=dotproduct(qshift,spvak7k2)
      acd489(3)=abb489(14)
      acd489(4)=abb489(46)
      acd489(5)=k3(iv1)
      acd489(6)=abb489(65)
      acd489(7)=abb489(78)
      acd489(8)=k4(iv1)
      acd489(9)=k5(iv1)
      acd489(10)=k6(iv1)
      acd489(11)=k7(iv1)
      acd489(12)=abb489(32)
      acd489(13)=abb489(20)
      acd489(14)=qshift(iv1)
      acd489(15)=abb489(47)
      acd489(16)=spvak7k2(iv1)
      acd489(17)=dotproduct(k1,qshift)
      acd489(18)=dotproduct(k3,qshift)
      acd489(19)=dotproduct(k4,qshift)
      acd489(20)=dotproduct(k5,qshift)
      acd489(21)=dotproduct(k6,qshift)
      acd489(22)=dotproduct(k7,qshift)
      acd489(23)=dotproduct(qshift,spvak2k3)
      acd489(24)=abb489(17)
      acd489(25)=dotproduct(qshift,spvak2k4)
      acd489(26)=abb489(31)
      acd489(27)=dotproduct(qshift,spvak2k5)
      acd489(28)=abb489(38)
      acd489(29)=dotproduct(qshift,spvak2k6)
      acd489(30)=abb489(15)
      acd489(31)=dotproduct(qshift,spvak4k3)
      acd489(32)=abb489(29)
      acd489(33)=dotproduct(qshift,spvak4k6)
      acd489(34)=abb489(19)
      acd489(35)=dotproduct(qshift,spvak5k3)
      acd489(36)=abb489(51)
      acd489(37)=dotproduct(qshift,spvak5k6)
      acd489(38)=abb489(41)
      acd489(39)=dotproduct(qshift,spvak7k1)
      acd489(40)=abb489(16)
      acd489(41)=abb489(23)
      acd489(42)=spvak2k3(iv1)
      acd489(43)=abb489(36)
      acd489(44)=spvak2k4(iv1)
      acd489(45)=abb489(27)
      acd489(46)=spvak2k5(iv1)
      acd489(47)=abb489(30)
      acd489(48)=spvak2k6(iv1)
      acd489(49)=abb489(34)
      acd489(50)=spvak4k3(iv1)
      acd489(51)=abb489(18)
      acd489(52)=spvak4k6(iv1)
      acd489(53)=abb489(53)
      acd489(54)=spvak5k3(iv1)
      acd489(55)=abb489(54)
      acd489(56)=spvak5k6(iv1)
      acd489(57)=abb489(22)
      acd489(58)=spvak7k1(iv1)
      acd489(59)=abb489(13)
      acd489(60)=acd489(21)+acd489(20)-acd489(19)-acd489(18)
      acd489(60)=acd489(60)*acd489(6)
      acd489(61)=acd489(17)*acd489(3)
      acd489(62)=acd489(22)*acd489(12)
      acd489(63)=acd489(23)*acd489(24)
      acd489(64)=acd489(25)*acd489(26)
      acd489(65)=acd489(27)*acd489(28)
      acd489(66)=acd489(29)*acd489(30)
      acd489(67)=acd489(31)*acd489(32)
      acd489(68)=acd489(33)*acd489(34)
      acd489(69)=acd489(35)*acd489(36)
      acd489(70)=acd489(37)*acd489(38)
      acd489(71)=acd489(39)*acd489(40)
      acd489(60)=acd489(60)-acd489(41)+acd489(71)+acd489(70)+acd489(69)+acd489(&
      &68)+acd489(67)+acd489(66)+acd489(65)+acd489(64)+acd489(63)+acd489(62)+ac&
      &d489(61)
      acd489(60)=acd489(16)*acd489(60)
      acd489(61)=acd489(3)*acd489(1)
      acd489(62)=acd489(12)*acd489(11)
      acd489(63)=acd489(42)*acd489(24)
      acd489(64)=acd489(44)*acd489(26)
      acd489(65)=acd489(46)*acd489(28)
      acd489(66)=acd489(48)*acd489(30)
      acd489(67)=acd489(50)*acd489(32)
      acd489(68)=acd489(52)*acd489(34)
      acd489(69)=acd489(54)*acd489(36)
      acd489(70)=acd489(56)*acd489(38)
      acd489(71)=acd489(58)*acd489(40)
      acd489(61)=acd489(71)+acd489(70)+acd489(69)+acd489(68)+acd489(67)+acd489(&
      &66)+acd489(65)+acd489(64)+acd489(63)+acd489(62)+acd489(61)
      acd489(61)=acd489(2)*acd489(61)
      acd489(62)=acd489(10)+acd489(9)-acd489(8)-acd489(5)
      acd489(63)=acd489(6)*acd489(2)
      acd489(63)=acd489(63)-acd489(7)
      acd489(62)=acd489(63)*acd489(62)
      acd489(63)=-acd489(4)*acd489(1)
      acd489(64)=-acd489(13)*acd489(11)
      acd489(65)=acd489(15)*acd489(14)
      acd489(66)=-acd489(43)*acd489(42)
      acd489(67)=-acd489(45)*acd489(44)
      acd489(68)=-acd489(47)*acd489(46)
      acd489(69)=-acd489(49)*acd489(48)
      acd489(70)=-acd489(51)*acd489(50)
      acd489(71)=-acd489(53)*acd489(52)
      acd489(72)=-acd489(55)*acd489(54)
      acd489(73)=-acd489(57)*acd489(56)
      acd489(74)=-acd489(59)*acd489(58)
      brack=acd489(60)+acd489(61)+acd489(62)+acd489(63)+acd489(64)+2.0_ki*acd48&
      &9(65)+acd489(66)+acd489(67)+acd489(68)+acd489(69)+acd489(70)+acd489(71)+&
      &acd489(72)+acd489(73)+acd489(74)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd489h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd489
      complex(ki) :: brack
      acd489(1)=d(iv1,iv2)
      acd489(2)=abb489(47)
      acd489(3)=k1(iv1)
      acd489(4)=spvak7k2(iv2)
      acd489(5)=abb489(14)
      acd489(6)=k1(iv2)
      acd489(7)=spvak7k2(iv1)
      acd489(8)=k3(iv1)
      acd489(9)=abb489(65)
      acd489(10)=k3(iv2)
      acd489(11)=k4(iv1)
      acd489(12)=k4(iv2)
      acd489(13)=k5(iv1)
      acd489(14)=k5(iv2)
      acd489(15)=k6(iv1)
      acd489(16)=k6(iv2)
      acd489(17)=k7(iv1)
      acd489(18)=abb489(32)
      acd489(19)=k7(iv2)
      acd489(20)=spvak2k3(iv2)
      acd489(21)=abb489(17)
      acd489(22)=spvak2k4(iv2)
      acd489(23)=abb489(31)
      acd489(24)=spvak2k5(iv2)
      acd489(25)=abb489(38)
      acd489(26)=spvak2k6(iv2)
      acd489(27)=abb489(15)
      acd489(28)=spvak4k3(iv2)
      acd489(29)=abb489(29)
      acd489(30)=spvak4k6(iv2)
      acd489(31)=abb489(19)
      acd489(32)=spvak5k3(iv2)
      acd489(33)=abb489(51)
      acd489(34)=spvak5k6(iv2)
      acd489(35)=abb489(41)
      acd489(36)=spvak7k1(iv2)
      acd489(37)=abb489(16)
      acd489(38)=spvak2k3(iv1)
      acd489(39)=spvak2k4(iv1)
      acd489(40)=spvak2k5(iv1)
      acd489(41)=spvak2k6(iv1)
      acd489(42)=spvak4k3(iv1)
      acd489(43)=spvak4k6(iv1)
      acd489(44)=spvak5k3(iv1)
      acd489(45)=spvak5k6(iv1)
      acd489(46)=spvak7k1(iv1)
      acd489(47)=acd489(37)*acd489(36)
      acd489(48)=acd489(35)*acd489(34)
      acd489(49)=acd489(33)*acd489(32)
      acd489(50)=acd489(31)*acd489(30)
      acd489(51)=acd489(29)*acd489(28)
      acd489(52)=acd489(27)*acd489(26)
      acd489(53)=acd489(25)*acd489(24)
      acd489(54)=acd489(23)*acd489(22)
      acd489(55)=acd489(21)*acd489(20)
      acd489(56)=acd489(18)*acd489(19)
      acd489(57)=acd489(5)*acd489(6)
      acd489(58)=-acd489(10)-acd489(12)+acd489(16)+acd489(14)
      acd489(58)=acd489(9)*acd489(58)
      acd489(47)=acd489(58)+acd489(57)+acd489(56)+acd489(55)+acd489(54)+acd489(&
      &53)+acd489(52)+acd489(51)+acd489(50)+acd489(49)+acd489(47)+acd489(48)
      acd489(47)=acd489(7)*acd489(47)
      acd489(48)=acd489(37)*acd489(46)
      acd489(49)=acd489(35)*acd489(45)
      acd489(50)=acd489(33)*acd489(44)
      acd489(51)=acd489(31)*acd489(43)
      acd489(52)=acd489(29)*acd489(42)
      acd489(53)=acd489(27)*acd489(41)
      acd489(54)=acd489(25)*acd489(40)
      acd489(55)=acd489(23)*acd489(39)
      acd489(56)=acd489(21)*acd489(38)
      acd489(57)=acd489(18)*acd489(17)
      acd489(58)=acd489(5)*acd489(3)
      acd489(59)=-acd489(8)-acd489(11)+acd489(15)+acd489(13)
      acd489(59)=acd489(9)*acd489(59)
      acd489(48)=acd489(59)+acd489(58)+acd489(57)+acd489(56)+acd489(55)+acd489(&
      &54)+acd489(53)+acd489(52)+acd489(51)+acd489(50)+acd489(48)+acd489(49)
      acd489(48)=acd489(4)*acd489(48)
      acd489(49)=acd489(1)*acd489(2)
      brack=acd489(47)+acd489(48)+2.0_ki*acd489(49)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd489h6
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
      qshift = -k3-k7-k6-k5-k4
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
!---#[ subroutine reconstruct_d489:
   subroutine     reconstruct_d489(coeffs)
      use p0_dbard_epnemumnmubarg_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_489:
      coeffs%coeffs_489%c0 = derivative(czip)
      coeffs%coeffs_489%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_489%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_489%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_489%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_489%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_489%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_489%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_489%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_489%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_489%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_489%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_489%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_489%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_489%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_489:
   end subroutine reconstruct_d489
!---#] subroutine reconstruct_d489:
end module     p0_dbard_epnemumnmubarg_d489h6l1d
