module     p0_dbaru_epnebbbarg_d38h6l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity6d38h6l1d.f90
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
   public :: derivative , reconstruct_d38
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd38h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd38
      complex(ki) :: brack
      acd38(1)=dotproduct(k1,qshift)
      acd38(2)=abb38(60)
      acd38(3)=dotproduct(k2,qshift)
      acd38(4)=abb38(82)
      acd38(5)=dotproduct(k3,qshift)
      acd38(6)=dotproduct(k4,qshift)
      acd38(7)=dotproduct(qshift,spvak1k2)
      acd38(8)=abb38(19)
      acd38(9)=dotproduct(qshift,spvak1k3)
      acd38(10)=abb38(15)
      acd38(11)=dotproduct(qshift,spvak4k2)
      acd38(12)=abb38(18)
      acd38(13)=dotproduct(qshift,spvak4k3)
      acd38(14)=abb38(35)
      acd38(15)=dotproduct(qshift,spval5l6)
      acd38(16)=abb38(38)
      acd38(17)=dotproduct(qshift,spvak7k2)
      acd38(18)=abb38(96)
      acd38(19)=dotproduct(qshift,spvak7k3)
      acd38(20)=abb38(95)
      acd38(21)=abb38(64)
      acd38(22)=abb38(121)
      acd38(23)=dotproduct(l5,qshift)
      acd38(24)=abb38(21)
      acd38(25)=dotproduct(l6,qshift)
      acd38(26)=dotproduct(k7,qshift)
      acd38(27)=dotproduct(qshift,qshift)
      acd38(28)=abb38(32)
      acd38(29)=abb38(22)
      acd38(30)=abb38(17)
      acd38(31)=abb38(16)
      acd38(32)=abb38(13)
      acd38(33)=abb38(24)
      acd38(34)=abb38(20)
      acd38(35)=abb38(12)
      acd38(36)=abb38(40)
      acd38(37)=abb38(37)
      acd38(38)=abb38(36)
      acd38(39)=abb38(67)
      acd38(40)=dotproduct(qshift,spvak1l6)
      acd38(41)=abb38(14)
      acd38(42)=dotproduct(qshift,spvak7l6)
      acd38(43)=abb38(93)
      acd38(44)=abb38(54)
      acd38(45)=acd38(5)+acd38(6)
      acd38(46)=acd38(3)-acd38(45)
      acd38(46)=acd38(4)*acd38(46)
      acd38(47)=acd38(19)*acd38(20)
      acd38(48)=acd38(9)*acd38(10)
      acd38(49)=acd38(17)*acd38(18)
      acd38(50)=acd38(13)*acd38(14)
      acd38(51)=acd38(11)*acd38(12)
      acd38(52)=acd38(7)*acd38(8)
      acd38(53)=acd38(15)*acd38(16)
      acd38(46)=acd38(53)+acd38(52)+acd38(51)+acd38(50)+acd38(49)+acd38(48)-acd&
      &38(21)+acd38(47)+acd38(46)
      acd38(46)=acd38(3)*acd38(46)
      acd38(47)=-acd38(16)*acd38(45)
      acd38(48)=acd38(19)*acd38(37)
      acd38(49)=acd38(9)*acd38(31)
      acd38(50)=acd38(17)*acd38(36)
      acd38(51)=acd38(13)*acd38(34)
      acd38(52)=acd38(11)*acd38(32)
      acd38(53)=acd38(7)*acd38(29)
      acd38(47)=acd38(53)+acd38(52)+acd38(51)+acd38(50)+acd38(49)-acd38(38)+acd&
      &38(48)+acd38(47)
      acd38(47)=acd38(15)*acd38(47)
      acd38(45)=-acd38(22)*acd38(45)
      acd38(48)=-acd38(42)*acd38(43)
      acd38(49)=-acd38(40)*acd38(41)
      acd38(50)=acd38(27)*acd38(28)
      acd38(51)=-acd38(25)-acd38(23)
      acd38(51)=acd38(24)*acd38(51)
      acd38(52)=-acd38(26)+acd38(1)
      acd38(52)=acd38(2)*acd38(52)
      acd38(53)=-acd38(17)*acd38(39)
      acd38(54)=-acd38(13)*acd38(35)
      acd38(55)=-acd38(11)*acd38(33)
      acd38(56)=-acd38(7)*acd38(30)
      brack=acd38(44)+acd38(45)+acd38(46)+acd38(47)+acd38(48)+acd38(49)+acd38(5&
      &0)+acd38(51)+acd38(52)+acd38(53)+acd38(54)+acd38(55)+acd38(56)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd38h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd38
      complex(ki) :: brack
      acd38(1)=k1(iv1)
      acd38(2)=abb38(60)
      acd38(3)=k2(iv1)
      acd38(4)=dotproduct(k2,qshift)
      acd38(5)=abb38(82)
      acd38(6)=dotproduct(k3,qshift)
      acd38(7)=dotproduct(k4,qshift)
      acd38(8)=dotproduct(qshift,spvak1k2)
      acd38(9)=abb38(19)
      acd38(10)=dotproduct(qshift,spvak1k3)
      acd38(11)=abb38(15)
      acd38(12)=dotproduct(qshift,spvak4k2)
      acd38(13)=abb38(18)
      acd38(14)=dotproduct(qshift,spvak4k3)
      acd38(15)=abb38(35)
      acd38(16)=dotproduct(qshift,spval5l6)
      acd38(17)=abb38(38)
      acd38(18)=dotproduct(qshift,spvak7k2)
      acd38(19)=abb38(96)
      acd38(20)=dotproduct(qshift,spvak7k3)
      acd38(21)=abb38(95)
      acd38(22)=abb38(64)
      acd38(23)=k3(iv1)
      acd38(24)=abb38(121)
      acd38(25)=k4(iv1)
      acd38(26)=l5(iv1)
      acd38(27)=abb38(21)
      acd38(28)=l6(iv1)
      acd38(29)=k7(iv1)
      acd38(30)=qshift(iv1)
      acd38(31)=abb38(32)
      acd38(32)=spvak1k2(iv1)
      acd38(33)=abb38(22)
      acd38(34)=abb38(17)
      acd38(35)=spvak1k3(iv1)
      acd38(36)=abb38(16)
      acd38(37)=spvak4k2(iv1)
      acd38(38)=abb38(13)
      acd38(39)=abb38(24)
      acd38(40)=spvak4k3(iv1)
      acd38(41)=abb38(20)
      acd38(42)=abb38(12)
      acd38(43)=spval5l6(iv1)
      acd38(44)=abb38(40)
      acd38(45)=abb38(37)
      acd38(46)=abb38(36)
      acd38(47)=spvak7k2(iv1)
      acd38(48)=abb38(67)
      acd38(49)=spvak7k3(iv1)
      acd38(50)=spvak1l6(iv1)
      acd38(51)=abb38(14)
      acd38(52)=spvak7l6(iv1)
      acd38(53)=abb38(93)
      acd38(54)=acd38(21)*acd38(49)
      acd38(55)=acd38(11)*acd38(35)
      acd38(56)=acd38(47)*acd38(19)
      acd38(57)=acd38(40)*acd38(15)
      acd38(58)=acd38(37)*acd38(13)
      acd38(59)=acd38(32)*acd38(9)
      acd38(60)=acd38(23)+acd38(25)
      acd38(61)=-acd38(5)*acd38(60)
      acd38(62)=acd38(43)*acd38(17)
      acd38(54)=acd38(62)+acd38(61)+acd38(59)+acd38(58)+acd38(57)+acd38(56)+acd&
      &38(54)+acd38(55)
      acd38(54)=acd38(4)*acd38(54)
      acd38(55)=acd38(6)+acd38(7)
      acd38(56)=2.0_ki*acd38(4)-acd38(55)
      acd38(56)=acd38(5)*acd38(56)
      acd38(57)=acd38(20)*acd38(21)
      acd38(58)=acd38(18)*acd38(19)
      acd38(59)=acd38(14)*acd38(15)
      acd38(61)=acd38(12)*acd38(13)
      acd38(62)=acd38(10)*acd38(11)
      acd38(63)=acd38(8)*acd38(9)
      acd38(64)=acd38(16)*acd38(17)
      acd38(56)=acd38(64)+acd38(63)+acd38(62)+acd38(61)+acd38(59)+acd38(58)-acd&
      &38(22)+acd38(57)+acd38(56)
      acd38(56)=acd38(3)*acd38(56)
      acd38(57)=acd38(45)*acd38(49)
      acd38(58)=acd38(35)*acd38(36)
      acd38(59)=acd38(47)*acd38(44)
      acd38(61)=acd38(40)*acd38(41)
      acd38(62)=acd38(37)*acd38(38)
      acd38(63)=acd38(32)*acd38(33)
      acd38(64)=-acd38(17)*acd38(60)
      acd38(57)=acd38(64)+acd38(63)+acd38(62)+acd38(61)+acd38(59)+acd38(57)+acd&
      &38(58)
      acd38(57)=acd38(16)*acd38(57)
      acd38(58)=acd38(20)*acd38(45)
      acd38(59)=acd38(18)*acd38(44)
      acd38(61)=acd38(14)*acd38(41)
      acd38(62)=acd38(12)*acd38(38)
      acd38(63)=acd38(10)*acd38(36)
      acd38(64)=acd38(8)*acd38(33)
      acd38(55)=-acd38(17)*acd38(55)
      acd38(55)=acd38(55)+acd38(64)+acd38(63)+acd38(62)+acd38(61)+acd38(59)-acd&
      &38(46)+acd38(58)
      acd38(55)=acd38(43)*acd38(55)
      acd38(58)=-acd38(24)*acd38(60)
      acd38(59)=-acd38(52)*acd38(53)
      acd38(60)=-acd38(50)*acd38(51)
      acd38(61)=acd38(30)*acd38(31)
      acd38(62)=-acd38(28)-acd38(26)
      acd38(62)=acd38(27)*acd38(62)
      acd38(63)=-acd38(29)+acd38(1)
      acd38(63)=acd38(2)*acd38(63)
      acd38(64)=-acd38(47)*acd38(48)
      acd38(65)=-acd38(40)*acd38(42)
      acd38(66)=-acd38(37)*acd38(39)
      acd38(67)=-acd38(32)*acd38(34)
      brack=acd38(54)+acd38(55)+acd38(56)+acd38(57)+acd38(58)+acd38(59)+acd38(6&
      &0)+2.0_ki*acd38(61)+acd38(62)+acd38(63)+acd38(64)+acd38(65)+acd38(66)+ac&
      &d38(67)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd38h6
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd38
      complex(ki) :: brack
      acd38(1)=d(iv1,iv2)
      acd38(2)=abb38(32)
      acd38(3)=k2(iv1)
      acd38(4)=k2(iv2)
      acd38(5)=abb38(82)
      acd38(6)=k3(iv2)
      acd38(7)=k4(iv2)
      acd38(8)=spvak1k2(iv2)
      acd38(9)=abb38(19)
      acd38(10)=spvak1k3(iv2)
      acd38(11)=abb38(15)
      acd38(12)=spvak4k2(iv2)
      acd38(13)=abb38(18)
      acd38(14)=spvak4k3(iv2)
      acd38(15)=abb38(35)
      acd38(16)=spval5l6(iv2)
      acd38(17)=abb38(38)
      acd38(18)=spvak7k2(iv2)
      acd38(19)=abb38(96)
      acd38(20)=spvak7k3(iv2)
      acd38(21)=abb38(95)
      acd38(22)=k3(iv1)
      acd38(23)=k4(iv1)
      acd38(24)=spvak1k2(iv1)
      acd38(25)=spvak1k3(iv1)
      acd38(26)=spvak4k2(iv1)
      acd38(27)=spvak4k3(iv1)
      acd38(28)=spval5l6(iv1)
      acd38(29)=spvak7k2(iv1)
      acd38(30)=spvak7k3(iv1)
      acd38(31)=abb38(22)
      acd38(32)=abb38(16)
      acd38(33)=abb38(13)
      acd38(34)=abb38(20)
      acd38(35)=abb38(40)
      acd38(36)=abb38(37)
      acd38(37)=acd38(21)*acd38(30)
      acd38(38)=acd38(19)*acd38(29)
      acd38(39)=acd38(15)*acd38(27)
      acd38(40)=acd38(13)*acd38(26)
      acd38(41)=acd38(11)*acd38(25)
      acd38(42)=acd38(9)*acd38(24)
      acd38(43)=acd38(22)+acd38(23)
      acd38(44)=-acd38(5)*acd38(43)
      acd38(45)=acd38(28)*acd38(17)
      acd38(37)=acd38(45)+acd38(44)+acd38(42)+acd38(41)+acd38(40)+acd38(39)+acd&
      &38(37)+acd38(38)
      acd38(37)=acd38(4)*acd38(37)
      acd38(38)=acd38(6)+acd38(7)
      acd38(39)=2.0_ki*acd38(4)-acd38(38)
      acd38(39)=acd38(5)*acd38(39)
      acd38(40)=acd38(20)*acd38(21)
      acd38(41)=acd38(18)*acd38(19)
      acd38(42)=acd38(14)*acd38(15)
      acd38(44)=acd38(12)*acd38(13)
      acd38(45)=acd38(10)*acd38(11)
      acd38(46)=acd38(8)*acd38(9)
      acd38(47)=acd38(16)*acd38(17)
      acd38(39)=acd38(47)+acd38(46)+acd38(45)+acd38(44)+acd38(42)+acd38(40)+acd&
      &38(41)+acd38(39)
      acd38(39)=acd38(3)*acd38(39)
      acd38(40)=acd38(20)*acd38(36)
      acd38(41)=acd38(18)*acd38(35)
      acd38(42)=acd38(14)*acd38(34)
      acd38(44)=acd38(12)*acd38(33)
      acd38(45)=acd38(10)*acd38(32)
      acd38(46)=acd38(8)*acd38(31)
      acd38(38)=-acd38(17)*acd38(38)
      acd38(38)=acd38(38)+acd38(46)+acd38(45)+acd38(44)+acd38(42)+acd38(40)+acd&
      &38(41)
      acd38(38)=acd38(28)*acd38(38)
      acd38(40)=acd38(30)*acd38(36)
      acd38(41)=acd38(29)*acd38(35)
      acd38(42)=acd38(27)*acd38(34)
      acd38(44)=acd38(26)*acd38(33)
      acd38(45)=acd38(25)*acd38(32)
      acd38(46)=acd38(24)*acd38(31)
      acd38(43)=-acd38(17)*acd38(43)
      acd38(40)=acd38(43)+acd38(46)+acd38(45)+acd38(44)+acd38(42)+acd38(40)+acd&
      &38(41)
      acd38(40)=acd38(16)*acd38(40)
      acd38(41)=acd38(1)*acd38(2)
      brack=acd38(37)+acd38(38)+acd38(39)+acd38(40)+2.0_ki*acd38(41)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd38h6
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
!---#[ subroutine reconstruct_d38:
   subroutine     reconstruct_d38(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_38:
      coeffs%coeffs_38%c0 = derivative(czip)
      coeffs%coeffs_38%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_38%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_38%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_38%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_38%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_38%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_38%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_38%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_38%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_38%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_38%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_38%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_38%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_38%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_38:
   end subroutine reconstruct_d38
!---#] subroutine reconstruct_d38:
end module     p0_dbaru_epnebbbarg_d38h6l1d
