module     p0_dbaru_epnebbbar_d31h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity3d31h3l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d31
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd31h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd31
      complex(ki) :: brack
      acd31(1)=dotproduct(k1,qshift)
      acd31(2)=abb31(20)
      acd31(3)=dotproduct(k2,qshift)
      acd31(4)=dotproduct(qshift,spvak1l5)
      acd31(5)=abb31(33)
      acd31(6)=dotproduct(qshift,spvak2l5)
      acd31(7)=abb31(14)
      acd31(8)=abb31(47)
      acd31(9)=dotproduct(k3,qshift)
      acd31(10)=abb31(28)
      acd31(11)=dotproduct(qshift,spvak1l6)
      acd31(12)=abb31(32)
      acd31(13)=abb31(44)
      acd31(14)=dotproduct(k4,qshift)
      acd31(15)=dotproduct(qshift,spvak2k3)
      acd31(16)=abb31(11)
      acd31(17)=dotproduct(qshift,spvak4k2)
      acd31(18)=abb31(10)
      acd31(19)=dotproduct(qshift,spvak4k3)
      acd31(20)=abb31(8)
      acd31(21)=abb31(22)
      acd31(22)=dotproduct(qshift,spvak1k2)
      acd31(23)=abb31(19)
      acd31(24)=dotproduct(qshift,spvak1k3)
      acd31(25)=abb31(30)
      acd31(26)=abb31(23)
      acd31(27)=abb31(21)
      acd31(28)=abb31(17)
      acd31(29)=abb31(18)
      acd31(30)=abb31(15)
      acd31(31)=abb31(26)
      acd31(32)=dotproduct(qshift,spvak2l6)
      acd31(33)=abb31(13)
      acd31(34)=abb31(27)
      acd31(35)=abb31(16)
      acd31(36)=abb31(12)
      acd31(37)=abb31(9)
      acd31(38)=dotproduct(qshift,spval6l5)
      acd31(39)=abb31(34)
      acd31(40)=abb31(29)
      acd31(41)=acd31(9)+acd31(14)
      acd31(42)=acd31(10)*acd31(41)
      acd31(43)=acd31(15)*acd31(16)
      acd31(44)=acd31(3)*acd31(5)
      acd31(45)=acd31(19)*acd31(20)
      acd31(46)=acd31(17)*acd31(18)
      acd31(42)=acd31(46)+acd31(45)+acd31(44)-acd31(21)+acd31(43)+acd31(42)
      acd31(42)=acd31(4)*acd31(42)
      acd31(43)=acd31(3)-acd31(41)
      acd31(43)=acd31(7)*acd31(43)
      acd31(44)=acd31(22)*acd31(23)
      acd31(45)=-acd31(16)*acd31(24)
      acd31(46)=acd31(19)*acd31(26)
      acd31(47)=acd31(17)*acd31(25)
      acd31(43)=acd31(47)+acd31(46)+acd31(45)-acd31(27)+acd31(44)+acd31(43)
      acd31(43)=acd31(6)*acd31(43)
      acd31(44)=acd31(12)*acd31(41)
      acd31(45)=-acd31(15)*acd31(28)
      acd31(46)=acd31(19)*acd31(30)
      acd31(47)=acd31(17)*acd31(29)
      acd31(44)=acd31(47)+acd31(46)-acd31(31)+acd31(45)+acd31(44)
      acd31(44)=acd31(11)*acd31(44)
      acd31(45)=acd31(24)*acd31(28)
      acd31(46)=acd31(22)*acd31(33)
      acd31(45)=acd31(46)-acd31(34)+acd31(45)
      acd31(45)=acd31(32)*acd31(45)
      acd31(41)=-acd31(13)*acd31(41)
      acd31(46)=-acd31(38)*acd31(39)
      acd31(47)=-acd31(1)*acd31(2)
      acd31(48)=-acd31(15)*acd31(35)
      acd31(49)=-acd31(3)*acd31(8)
      acd31(50)=-acd31(19)*acd31(37)
      acd31(51)=-acd31(17)*acd31(36)
      brack=acd31(40)+acd31(41)+acd31(42)+acd31(43)+acd31(44)+acd31(45)+acd31(4&
      &6)+acd31(47)+acd31(48)+acd31(49)+acd31(50)+acd31(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd31h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(67) :: acd31
      complex(ki) :: brack
      acd31(1)=k1(iv1)
      acd31(2)=abb31(20)
      acd31(3)=k2(iv1)
      acd31(4)=dotproduct(qshift,spvak1l5)
      acd31(5)=abb31(33)
      acd31(6)=dotproduct(qshift,spvak2l5)
      acd31(7)=abb31(14)
      acd31(8)=abb31(47)
      acd31(9)=k3(iv1)
      acd31(10)=abb31(28)
      acd31(11)=dotproduct(qshift,spvak1l6)
      acd31(12)=abb31(32)
      acd31(13)=abb31(44)
      acd31(14)=k4(iv1)
      acd31(15)=spvak1l5(iv1)
      acd31(16)=dotproduct(k2,qshift)
      acd31(17)=dotproduct(k3,qshift)
      acd31(18)=dotproduct(k4,qshift)
      acd31(19)=dotproduct(qshift,spvak2k3)
      acd31(20)=abb31(11)
      acd31(21)=dotproduct(qshift,spvak4k2)
      acd31(22)=abb31(10)
      acd31(23)=dotproduct(qshift,spvak4k3)
      acd31(24)=abb31(8)
      acd31(25)=abb31(22)
      acd31(26)=spvak2l5(iv1)
      acd31(27)=dotproduct(qshift,spvak1k2)
      acd31(28)=abb31(19)
      acd31(29)=dotproduct(qshift,spvak1k3)
      acd31(30)=abb31(30)
      acd31(31)=abb31(23)
      acd31(32)=abb31(21)
      acd31(33)=spvak1l6(iv1)
      acd31(34)=abb31(17)
      acd31(35)=abb31(18)
      acd31(36)=abb31(15)
      acd31(37)=abb31(26)
      acd31(38)=spvak1k2(iv1)
      acd31(39)=dotproduct(qshift,spvak2l6)
      acd31(40)=abb31(13)
      acd31(41)=spvak2l6(iv1)
      acd31(42)=abb31(27)
      acd31(43)=spvak1k3(iv1)
      acd31(44)=spvak2k3(iv1)
      acd31(45)=abb31(16)
      acd31(46)=spvak4k2(iv1)
      acd31(47)=abb31(12)
      acd31(48)=spvak4k3(iv1)
      acd31(49)=abb31(9)
      acd31(50)=spval6l5(iv1)
      acd31(51)=abb31(34)
      acd31(52)=acd31(9)+acd31(14)
      acd31(53)=-acd31(10)*acd31(52)
      acd31(54)=-acd31(3)*acd31(5)
      acd31(55)=-acd31(48)*acd31(24)
      acd31(56)=-acd31(46)*acd31(22)
      acd31(57)=-acd31(20)*acd31(44)
      acd31(53)=acd31(57)+acd31(56)+acd31(54)+acd31(55)+acd31(53)
      acd31(53)=acd31(4)*acd31(53)
      acd31(54)=-acd31(5)*acd31(16)
      acd31(55)=-acd31(23)*acd31(24)
      acd31(56)=-acd31(21)*acd31(22)
      acd31(57)=-acd31(20)*acd31(19)
      acd31(58)=acd31(17)+acd31(18)
      acd31(59)=-acd31(10)*acd31(58)
      acd31(54)=acd31(59)+acd31(57)+acd31(56)+acd31(55)+acd31(25)+acd31(54)
      acd31(54)=acd31(15)*acd31(54)
      acd31(55)=-acd31(28)*acd31(38)
      acd31(56)=-acd31(48)*acd31(31)
      acd31(57)=-acd31(46)*acd31(30)
      acd31(59)=acd31(20)*acd31(43)
      acd31(60)=-acd31(3)+acd31(52)
      acd31(60)=acd31(7)*acd31(60)
      acd31(55)=acd31(60)+acd31(59)+acd31(57)+acd31(55)+acd31(56)
      acd31(55)=acd31(6)*acd31(55)
      acd31(56)=-acd31(27)*acd31(28)
      acd31(57)=-acd31(23)*acd31(31)
      acd31(59)=-acd31(21)*acd31(30)
      acd31(60)=acd31(20)*acd31(29)
      acd31(61)=-acd31(16)+acd31(58)
      acd31(61)=acd31(7)*acd31(61)
      acd31(56)=acd31(61)+acd31(60)+acd31(59)+acd31(57)+acd31(32)+acd31(56)
      acd31(56)=acd31(26)*acd31(56)
      acd31(57)=-acd31(12)*acd31(52)
      acd31(59)=-acd31(48)*acd31(36)
      acd31(60)=-acd31(46)*acd31(35)
      acd31(61)=acd31(34)*acd31(44)
      acd31(57)=acd31(61)+acd31(59)+acd31(60)+acd31(57)
      acd31(57)=acd31(11)*acd31(57)
      acd31(59)=-acd31(23)*acd31(36)
      acd31(60)=-acd31(21)*acd31(35)
      acd31(61)=acd31(34)*acd31(19)
      acd31(58)=-acd31(12)*acd31(58)
      acd31(58)=acd31(58)+acd31(61)+acd31(60)+acd31(37)+acd31(59)
      acd31(58)=acd31(33)*acd31(58)
      acd31(59)=-acd31(39)*acd31(43)
      acd31(60)=-acd31(41)*acd31(29)
      acd31(59)=acd31(59)+acd31(60)
      acd31(59)=acd31(34)*acd31(59)
      acd31(52)=acd31(13)*acd31(52)
      acd31(60)=acd31(50)*acd31(51)
      acd31(61)=acd31(1)*acd31(2)
      acd31(62)=-acd31(38)*acd31(39)*acd31(40)
      acd31(63)=acd31(44)*acd31(45)
      acd31(64)=-acd31(27)*acd31(40)
      acd31(64)=acd31(42)+acd31(64)
      acd31(64)=acd31(41)*acd31(64)
      acd31(65)=acd31(3)*acd31(8)
      acd31(66)=acd31(48)*acd31(49)
      acd31(67)=acd31(46)*acd31(47)
      brack=acd31(52)+acd31(53)+acd31(54)+acd31(55)+acd31(56)+acd31(57)+acd31(5&
      &8)+acd31(59)+acd31(60)+acd31(61)+acd31(62)+acd31(63)+acd31(64)+acd31(65)&
      &+acd31(66)+acd31(67)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd31h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(48) :: acd31
      complex(ki) :: brack
      acd31(1)=k2(iv1)
      acd31(2)=spvak1l5(iv2)
      acd31(3)=abb31(33)
      acd31(4)=spvak2l5(iv2)
      acd31(5)=abb31(14)
      acd31(6)=k2(iv2)
      acd31(7)=spvak1l5(iv1)
      acd31(8)=spvak2l5(iv1)
      acd31(9)=k3(iv1)
      acd31(10)=abb31(28)
      acd31(11)=spvak1l6(iv2)
      acd31(12)=abb31(32)
      acd31(13)=k3(iv2)
      acd31(14)=spvak1l6(iv1)
      acd31(15)=k4(iv1)
      acd31(16)=k4(iv2)
      acd31(17)=spvak2k3(iv2)
      acd31(18)=abb31(11)
      acd31(19)=spvak4k2(iv2)
      acd31(20)=abb31(10)
      acd31(21)=spvak4k3(iv2)
      acd31(22)=abb31(8)
      acd31(23)=spvak2k3(iv1)
      acd31(24)=spvak4k2(iv1)
      acd31(25)=spvak4k3(iv1)
      acd31(26)=spvak1k2(iv2)
      acd31(27)=abb31(19)
      acd31(28)=spvak1k3(iv2)
      acd31(29)=abb31(30)
      acd31(30)=abb31(23)
      acd31(31)=spvak1k2(iv1)
      acd31(32)=spvak1k3(iv1)
      acd31(33)=abb31(17)
      acd31(34)=abb31(18)
      acd31(35)=abb31(15)
      acd31(36)=spvak2l6(iv2)
      acd31(37)=abb31(13)
      acd31(38)=spvak2l6(iv1)
      acd31(39)=acd31(3)*acd31(6)
      acd31(40)=acd31(21)*acd31(22)
      acd31(41)=acd31(19)*acd31(20)
      acd31(42)=acd31(18)*acd31(17)
      acd31(43)=acd31(13)+acd31(16)
      acd31(44)=acd31(10)*acd31(43)
      acd31(39)=acd31(44)+acd31(42)+acd31(41)+acd31(39)+acd31(40)
      acd31(39)=acd31(7)*acd31(39)
      acd31(40)=acd31(1)*acd31(3)
      acd31(41)=acd31(25)*acd31(22)
      acd31(42)=acd31(24)*acd31(20)
      acd31(44)=acd31(18)*acd31(23)
      acd31(45)=acd31(9)+acd31(15)
      acd31(46)=acd31(10)*acd31(45)
      acd31(40)=acd31(46)+acd31(44)+acd31(42)+acd31(40)+acd31(41)
      acd31(40)=acd31(2)*acd31(40)
      acd31(41)=acd31(26)*acd31(27)
      acd31(42)=acd31(21)*acd31(30)
      acd31(44)=acd31(19)*acd31(29)
      acd31(46)=-acd31(18)*acd31(28)
      acd31(47)=acd31(6)-acd31(43)
      acd31(47)=acd31(5)*acd31(47)
      acd31(41)=acd31(47)+acd31(46)+acd31(44)+acd31(41)+acd31(42)
      acd31(41)=acd31(8)*acd31(41)
      acd31(42)=acd31(27)*acd31(31)
      acd31(44)=acd31(25)*acd31(30)
      acd31(46)=acd31(24)*acd31(29)
      acd31(47)=-acd31(18)*acd31(32)
      acd31(48)=acd31(1)-acd31(45)
      acd31(48)=acd31(5)*acd31(48)
      acd31(42)=acd31(48)+acd31(47)+acd31(46)+acd31(42)+acd31(44)
      acd31(42)=acd31(4)*acd31(42)
      acd31(44)=acd31(21)*acd31(35)
      acd31(46)=acd31(19)*acd31(34)
      acd31(47)=-acd31(33)*acd31(17)
      acd31(43)=acd31(12)*acd31(43)
      acd31(43)=acd31(43)+acd31(47)+acd31(44)+acd31(46)
      acd31(43)=acd31(14)*acd31(43)
      acd31(44)=acd31(25)*acd31(35)
      acd31(46)=acd31(24)*acd31(34)
      acd31(47)=-acd31(33)*acd31(23)
      acd31(45)=acd31(12)*acd31(45)
      acd31(44)=acd31(45)+acd31(47)+acd31(44)+acd31(46)
      acd31(44)=acd31(11)*acd31(44)
      acd31(45)=acd31(31)*acd31(36)
      acd31(46)=acd31(26)*acd31(38)
      acd31(45)=acd31(45)+acd31(46)
      acd31(45)=acd31(37)*acd31(45)
      acd31(46)=acd31(32)*acd31(36)
      acd31(47)=acd31(28)*acd31(38)
      acd31(46)=acd31(46)+acd31(47)
      acd31(46)=acd31(33)*acd31(46)
      brack=acd31(39)+acd31(40)+acd31(41)+acd31(42)+acd31(43)+acd31(44)+acd31(4&
      &5)+acd31(46)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd31h3
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
      qshift = k6+k5
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
!---#[ subroutine reconstruct_d31:
   subroutine     reconstruct_d31(coeffs)
      use p0_dbaru_epnebbbar_groups, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_31:
      coeffs%coeffs_31%c0 = derivative(czip)
      coeffs%coeffs_31%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_31%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_31%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_31%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_31%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_31%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_31%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_31%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_31%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_31%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_31%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_31%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_31%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_31%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_31:
   end subroutine reconstruct_d31
!---#] subroutine reconstruct_d31:
end module     p0_dbaru_epnebbbar_d31h3l1d
