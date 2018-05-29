module     p0_dbard_epnemumnmubarg_d191h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_emu/GoSam_POWHEG/Virtua &
   ! &l/p0_dbard_epnemumnmubarg/helicity1d191h1l1d.f90
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
   public :: derivative , reconstruct_d191
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd191h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(61) :: acd191
      complex(ki) :: brack
      acd191(1)=dotproduct(k1,qshift)
      acd191(2)=abb191(89)
      acd191(3)=dotproduct(k2,qshift)
      acd191(4)=dotproduct(k3,qshift)
      acd191(5)=dotproduct(k7,qshift)
      acd191(6)=abb191(88)
      acd191(7)=dotproduct(qshift,spvak1k7)
      acd191(8)=abb191(35)
      acd191(9)=dotproduct(qshift,spvak2k7)
      acd191(10)=abb191(22)
      acd191(11)=abb191(70)
      acd191(12)=dotproduct(k4,qshift)
      acd191(13)=dotproduct(k5,qshift)
      acd191(14)=dotproduct(k6,qshift)
      acd191(15)=dotproduct(qshift,spvak4k3)
      acd191(16)=abb191(59)
      acd191(17)=dotproduct(qshift,spvak4k6)
      acd191(18)=abb191(181)
      acd191(19)=dotproduct(qshift,spvak5k3)
      acd191(20)=abb191(126)
      acd191(21)=dotproduct(qshift,spvak5k6)
      acd191(22)=abb191(102)
      acd191(23)=abb191(31)
      acd191(24)=dotproduct(qshift,qshift)
      acd191(25)=abb191(26)
      acd191(26)=abb191(18)
      acd191(27)=abb191(27)
      acd191(28)=abb191(16)
      acd191(29)=abb191(13)
      acd191(30)=abb191(34)
      acd191(31)=abb191(32)
      acd191(32)=abb191(29)
      acd191(33)=abb191(24)
      acd191(34)=abb191(19)
      acd191(35)=abb191(17)
      acd191(36)=abb191(178)
      acd191(37)=abb191(166)
      acd191(38)=abb191(48)
      acd191(39)=dotproduct(qshift,spvak1k3)
      acd191(40)=abb191(14)
      acd191(41)=dotproduct(qshift,spvak1k4)
      acd191(42)=abb191(30)
      acd191(43)=dotproduct(qshift,spvak1k5)
      acd191(44)=abb191(39)
      acd191(45)=dotproduct(qshift,spvak1k6)
      acd191(46)=abb191(15)
      acd191(47)=abb191(20)
      acd191(48)=acd191(26)*acd191(15)
      acd191(49)=acd191(27)*acd191(17)
      acd191(50)=acd191(28)*acd191(19)
      acd191(51)=acd191(29)*acd191(21)
      acd191(48)=acd191(51)+acd191(50)+acd191(49)+acd191(48)
      acd191(48)=acd191(7)*acd191(48)
      acd191(49)=acd191(16)*acd191(15)
      acd191(50)=acd191(18)*acd191(17)
      acd191(51)=acd191(20)*acd191(19)
      acd191(52)=acd191(22)*acd191(21)
      acd191(49)=-acd191(23)+acd191(52)+acd191(51)+acd191(50)+acd191(49)
      acd191(49)=acd191(5)*acd191(49)
      acd191(50)=acd191(30)*acd191(15)
      acd191(51)=acd191(31)*acd191(17)
      acd191(52)=acd191(32)*acd191(19)
      acd191(53)=acd191(33)*acd191(21)
      acd191(50)=-acd191(34)+acd191(53)+acd191(52)+acd191(51)+acd191(50)
      acd191(50)=acd191(9)*acd191(50)
      acd191(51)=acd191(6)*acd191(5)
      acd191(52)=acd191(8)*acd191(7)
      acd191(53)=acd191(10)*acd191(9)
      acd191(51)=-acd191(51)-acd191(52)+acd191(53)-acd191(11)
      acd191(52)=acd191(14)+acd191(13)-acd191(12)-acd191(4)
      acd191(51)=acd191(51)*acd191(52)
      acd191(52)=acd191(3)-acd191(1)
      acd191(52)=acd191(2)*acd191(52)
      acd191(53)=acd191(25)*acd191(24)
      acd191(54)=-acd191(35)*acd191(15)
      acd191(55)=-acd191(36)*acd191(17)
      acd191(56)=-acd191(37)*acd191(19)
      acd191(57)=-acd191(38)*acd191(21)
      acd191(58)=-acd191(40)*acd191(39)
      acd191(59)=-acd191(42)*acd191(41)
      acd191(60)=-acd191(44)*acd191(43)
      acd191(61)=-acd191(46)*acd191(45)
      brack=acd191(47)+acd191(48)+acd191(49)+acd191(50)+acd191(51)+acd191(52)+a&
      &cd191(53)+acd191(54)+acd191(55)+acd191(56)+acd191(57)+acd191(58)+acd191(&
      &59)+acd191(60)+acd191(61)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd191h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(74) :: acd191
      complex(ki) :: brack
      acd191(1)=k1(iv1)
      acd191(2)=abb191(89)
      acd191(3)=k2(iv1)
      acd191(4)=k3(iv1)
      acd191(5)=dotproduct(k7,qshift)
      acd191(6)=abb191(88)
      acd191(7)=dotproduct(qshift,spvak1k7)
      acd191(8)=abb191(35)
      acd191(9)=dotproduct(qshift,spvak2k7)
      acd191(10)=abb191(22)
      acd191(11)=abb191(70)
      acd191(12)=k4(iv1)
      acd191(13)=k5(iv1)
      acd191(14)=k6(iv1)
      acd191(15)=k7(iv1)
      acd191(16)=dotproduct(k3,qshift)
      acd191(17)=dotproduct(k4,qshift)
      acd191(18)=dotproduct(k5,qshift)
      acd191(19)=dotproduct(k6,qshift)
      acd191(20)=dotproduct(qshift,spvak4k3)
      acd191(21)=abb191(59)
      acd191(22)=dotproduct(qshift,spvak4k6)
      acd191(23)=abb191(181)
      acd191(24)=dotproduct(qshift,spvak5k3)
      acd191(25)=abb191(126)
      acd191(26)=dotproduct(qshift,spvak5k6)
      acd191(27)=abb191(102)
      acd191(28)=abb191(31)
      acd191(29)=qshift(iv1)
      acd191(30)=abb191(26)
      acd191(31)=spvak1k7(iv1)
      acd191(32)=abb191(18)
      acd191(33)=abb191(27)
      acd191(34)=abb191(16)
      acd191(35)=abb191(13)
      acd191(36)=spvak2k7(iv1)
      acd191(37)=abb191(34)
      acd191(38)=abb191(32)
      acd191(39)=abb191(29)
      acd191(40)=abb191(24)
      acd191(41)=abb191(19)
      acd191(42)=spvak4k3(iv1)
      acd191(43)=abb191(17)
      acd191(44)=spvak4k6(iv1)
      acd191(45)=abb191(178)
      acd191(46)=spvak5k3(iv1)
      acd191(47)=abb191(166)
      acd191(48)=spvak5k6(iv1)
      acd191(49)=abb191(48)
      acd191(50)=spvak1k3(iv1)
      acd191(51)=abb191(14)
      acd191(52)=spvak1k4(iv1)
      acd191(53)=abb191(30)
      acd191(54)=spvak1k5(iv1)
      acd191(55)=abb191(39)
      acd191(56)=spvak1k6(iv1)
      acd191(57)=abb191(15)
      acd191(58)=-acd191(26)*acd191(35)
      acd191(59)=-acd191(24)*acd191(34)
      acd191(60)=-acd191(22)*acd191(33)
      acd191(61)=-acd191(20)*acd191(32)
      acd191(62)=-acd191(19)-acd191(18)+acd191(16)+acd191(17)
      acd191(63)=-acd191(8)*acd191(62)
      acd191(58)=acd191(63)+acd191(61)+acd191(60)+acd191(58)+acd191(59)
      acd191(58)=acd191(31)*acd191(58)
      acd191(59)=-acd191(48)*acd191(40)
      acd191(60)=-acd191(46)*acd191(39)
      acd191(61)=-acd191(44)*acd191(38)
      acd191(63)=-acd191(42)*acd191(37)
      acd191(64)=-acd191(14)+acd191(4)+acd191(12)-acd191(13)
      acd191(65)=acd191(10)*acd191(64)
      acd191(59)=acd191(65)+acd191(63)+acd191(61)+acd191(59)+acd191(60)
      acd191(59)=acd191(9)*acd191(59)
      acd191(60)=-acd191(48)*acd191(35)
      acd191(61)=-acd191(46)*acd191(34)
      acd191(63)=-acd191(44)*acd191(33)
      acd191(65)=-acd191(42)*acd191(32)
      acd191(66)=-acd191(8)*acd191(64)
      acd191(60)=acd191(66)+acd191(65)+acd191(63)+acd191(60)+acd191(61)
      acd191(60)=acd191(7)*acd191(60)
      acd191(61)=-acd191(48)*acd191(27)
      acd191(63)=-acd191(46)*acd191(25)
      acd191(65)=-acd191(44)*acd191(23)
      acd191(66)=-acd191(42)*acd191(21)
      acd191(67)=-acd191(6)*acd191(64)
      acd191(61)=acd191(67)+acd191(66)+acd191(65)+acd191(61)+acd191(63)
      acd191(61)=acd191(5)*acd191(61)
      acd191(63)=-acd191(26)*acd191(40)
      acd191(65)=-acd191(24)*acd191(39)
      acd191(66)=-acd191(22)*acd191(38)
      acd191(67)=-acd191(20)*acd191(37)
      acd191(68)=acd191(10)*acd191(62)
      acd191(63)=acd191(68)+acd191(67)+acd191(66)+acd191(65)+acd191(41)+acd191(&
      &63)
      acd191(63)=acd191(36)*acd191(63)
      acd191(65)=-acd191(26)*acd191(27)
      acd191(66)=-acd191(24)*acd191(25)
      acd191(67)=-acd191(22)*acd191(23)
      acd191(68)=-acd191(20)*acd191(21)
      acd191(62)=-acd191(6)*acd191(62)
      acd191(62)=acd191(62)+acd191(68)+acd191(67)+acd191(66)+acd191(28)+acd191(&
      &65)
      acd191(62)=acd191(15)*acd191(62)
      acd191(64)=-acd191(11)*acd191(64)
      acd191(65)=acd191(56)*acd191(57)
      acd191(66)=acd191(54)*acd191(55)
      acd191(67)=acd191(52)*acd191(53)
      acd191(68)=acd191(50)*acd191(51)
      acd191(69)=acd191(29)*acd191(30)
      acd191(70)=-acd191(3)+acd191(1)
      acd191(70)=acd191(2)*acd191(70)
      acd191(71)=acd191(48)*acd191(49)
      acd191(72)=acd191(46)*acd191(47)
      acd191(73)=acd191(44)*acd191(45)
      acd191(74)=acd191(42)*acd191(43)
      brack=acd191(58)+acd191(59)+acd191(60)+acd191(61)+acd191(62)+acd191(63)+a&
      &cd191(64)+acd191(65)+acd191(66)+acd191(67)+acd191(68)-2.0_ki*acd191(69)+&
      &acd191(70)+acd191(71)+acd191(72)+acd191(73)+acd191(74)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbard_epnemumnmubarg_model
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_color
      use p0_dbard_epnemumnmubarg_abbrevd191h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(48) :: acd191
      complex(ki) :: brack
      acd191(1)=d(iv1,iv2)
      acd191(2)=abb191(26)
      acd191(3)=k3(iv1)
      acd191(4)=k7(iv2)
      acd191(5)=abb191(88)
      acd191(6)=spvak1k7(iv2)
      acd191(7)=abb191(35)
      acd191(8)=spvak2k7(iv2)
      acd191(9)=abb191(22)
      acd191(10)=k3(iv2)
      acd191(11)=k7(iv1)
      acd191(12)=spvak1k7(iv1)
      acd191(13)=spvak2k7(iv1)
      acd191(14)=k4(iv1)
      acd191(15)=k4(iv2)
      acd191(16)=k5(iv1)
      acd191(17)=k5(iv2)
      acd191(18)=k6(iv1)
      acd191(19)=k6(iv2)
      acd191(20)=spvak4k3(iv2)
      acd191(21)=abb191(59)
      acd191(22)=spvak4k6(iv2)
      acd191(23)=abb191(181)
      acd191(24)=spvak5k3(iv2)
      acd191(25)=abb191(126)
      acd191(26)=spvak5k6(iv2)
      acd191(27)=abb191(102)
      acd191(28)=spvak4k3(iv1)
      acd191(29)=spvak4k6(iv1)
      acd191(30)=spvak5k3(iv1)
      acd191(31)=spvak5k6(iv1)
      acd191(32)=abb191(18)
      acd191(33)=abb191(27)
      acd191(34)=abb191(16)
      acd191(35)=abb191(13)
      acd191(36)=abb191(34)
      acd191(37)=abb191(32)
      acd191(38)=abb191(29)
      acd191(39)=abb191(24)
      acd191(40)=acd191(31)*acd191(39)
      acd191(41)=acd191(30)*acd191(38)
      acd191(42)=acd191(29)*acd191(37)
      acd191(43)=acd191(28)*acd191(36)
      acd191(44)=-acd191(18)-acd191(16)+acd191(3)+acd191(14)
      acd191(45)=-acd191(9)*acd191(44)
      acd191(40)=acd191(45)+acd191(43)+acd191(42)+acd191(40)+acd191(41)
      acd191(40)=acd191(8)*acd191(40)
      acd191(41)=acd191(31)*acd191(35)
      acd191(42)=acd191(30)*acd191(34)
      acd191(43)=acd191(29)*acd191(33)
      acd191(45)=acd191(28)*acd191(32)
      acd191(46)=acd191(7)*acd191(44)
      acd191(41)=acd191(46)+acd191(45)+acd191(43)+acd191(41)+acd191(42)
      acd191(41)=acd191(6)*acd191(41)
      acd191(42)=acd191(31)*acd191(27)
      acd191(43)=acd191(30)*acd191(25)
      acd191(45)=acd191(29)*acd191(23)
      acd191(46)=acd191(28)*acd191(21)
      acd191(44)=acd191(5)*acd191(44)
      acd191(42)=acd191(44)+acd191(46)+acd191(45)+acd191(42)+acd191(43)
      acd191(42)=acd191(4)*acd191(42)
      acd191(43)=acd191(26)*acd191(39)
      acd191(44)=acd191(24)*acd191(38)
      acd191(45)=acd191(22)*acd191(37)
      acd191(46)=acd191(20)*acd191(36)
      acd191(43)=acd191(46)+acd191(45)+acd191(43)+acd191(44)
      acd191(43)=acd191(13)*acd191(43)
      acd191(44)=acd191(26)*acd191(35)
      acd191(45)=acd191(24)*acd191(34)
      acd191(46)=acd191(22)*acd191(33)
      acd191(47)=acd191(20)*acd191(32)
      acd191(44)=acd191(47)+acd191(46)+acd191(44)+acd191(45)
      acd191(44)=acd191(12)*acd191(44)
      acd191(45)=acd191(26)*acd191(27)
      acd191(46)=acd191(24)*acd191(25)
      acd191(47)=acd191(22)*acd191(23)
      acd191(48)=acd191(20)*acd191(21)
      acd191(45)=acd191(48)+acd191(47)+acd191(45)+acd191(46)
      acd191(45)=acd191(11)*acd191(45)
      acd191(46)=-acd191(9)*acd191(13)
      acd191(47)=acd191(7)*acd191(12)
      acd191(48)=acd191(5)*acd191(11)
      acd191(46)=acd191(48)+acd191(47)+acd191(46)
      acd191(47)=-acd191(19)-acd191(17)+acd191(10)+acd191(15)
      acd191(46)=acd191(47)*acd191(46)
      acd191(47)=acd191(1)*acd191(2)
      brack=acd191(40)+acd191(41)+acd191(42)+acd191(43)+acd191(44)+acd191(45)+a&
      &cd191(46)+2.0_ki*acd191(47)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbard_epnemumnmubarg_globalsl1, only: epspow
      use p0_dbard_epnemumnmubarg_kinematics
      use p0_dbard_epnemumnmubarg_abbrevd191h1
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
      qshift = k2
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
!---#[ subroutine reconstruct_d191:
   subroutine     reconstruct_d191(coeffs)
      use p0_dbard_epnemumnmubarg_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_191:
      coeffs%coeffs_191%c0 = derivative(czip)
      coeffs%coeffs_191%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_191%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_191%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_191%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_191%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_191%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_191%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_191%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_191%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_191%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_191%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_191%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_191%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_191%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_191:
   end subroutine reconstruct_d191
!---#] subroutine reconstruct_d191:
end module     p0_dbard_epnemumnmubarg_d191h1l1d
