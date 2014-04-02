module     p0_dbaru_epnebbbar_d30h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity1d30h1l1d.f90
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
   public :: derivative , reconstruct_d30
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd30h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd30
      complex(ki) :: brack
      acd30(1)=dotproduct(k2,qshift)
      acd30(2)=dotproduct(qshift,spvak4l5)
      acd30(3)=abb30(35)
      acd30(4)=dotproduct(qshift,spval6l5)
      acd30(5)=abb30(41)
      acd30(6)=abb30(11)
      acd30(7)=dotproduct(k3,qshift)
      acd30(8)=dotproduct(qshift,spvak4k2)
      acd30(9)=abb30(22)
      acd30(10)=abb30(39)
      acd30(11)=dotproduct(k4,qshift)
      acd30(12)=dotproduct(qshift,qshift)
      acd30(13)=abb30(18)
      acd30(14)=abb30(19)
      acd30(15)=dotproduct(qshift,spvak4k3)
      acd30(16)=abb30(20)
      acd30(17)=abb30(23)
      acd30(18)=abb30(17)
      acd30(19)=abb30(37)
      acd30(20)=abb30(10)
      acd30(21)=dotproduct(qshift,spvak2l5)
      acd30(22)=abb30(25)
      acd30(23)=abb30(21)
      acd30(24)=abb30(8)
      acd30(25)=dotproduct(qshift,spvak1k2)
      acd30(26)=abb30(14)
      acd30(27)=dotproduct(qshift,spvak1k3)
      acd30(28)=abb30(9)
      acd30(29)=dotproduct(qshift,spvak3k2)
      acd30(30)=abb30(29)
      acd30(31)=dotproduct(qshift,spvak3l5)
      acd30(32)=abb30(13)
      acd30(33)=dotproduct(qshift,spval5k2)
      acd30(34)=abb30(27)
      acd30(35)=dotproduct(qshift,spval6k2)
      acd30(36)=abb30(16)
      acd30(37)=dotproduct(qshift,spval6k3)
      acd30(38)=abb30(36)
      acd30(39)=abb30(12)
      acd30(40)=acd30(7)+acd30(11)
      acd30(41)=-acd30(9)*acd30(40)
      acd30(42)=-acd30(22)*acd30(21)
      acd30(43)=acd30(2)*acd30(14)
      acd30(44)=acd30(15)*acd30(23)
      acd30(45)=acd30(4)*acd30(17)
      acd30(46)=acd30(8)*acd30(20)
      acd30(41)=acd30(46)+acd30(45)+acd30(44)+acd30(43)-acd30(24)+acd30(42)+acd&
      &30(41)
      acd30(41)=acd30(8)*acd30(41)
      acd30(42)=acd30(29)*acd30(30)
      acd30(43)=acd30(22)*acd30(31)
      acd30(44)=acd30(2)*acd30(16)
      acd30(42)=acd30(44)+acd30(43)-acd30(32)+acd30(42)
      acd30(42)=acd30(15)*acd30(42)
      acd30(43)=acd30(40)-acd30(1)
      acd30(44)=acd30(5)*acd30(43)
      acd30(45)=acd30(15)*acd30(18)
      acd30(44)=acd30(45)-acd30(19)+acd30(44)
      acd30(44)=acd30(4)*acd30(44)
      acd30(40)=-acd30(10)*acd30(40)
      acd30(45)=-acd30(37)*acd30(38)
      acd30(46)=-acd30(35)*acd30(36)
      acd30(47)=-acd30(33)*acd30(34)
      acd30(48)=-acd30(27)*acd30(28)
      acd30(49)=-acd30(25)*acd30(26)
      acd30(50)=acd30(12)*acd30(13)
      acd30(51)=-acd30(1)*acd30(6)
      acd30(43)=-acd30(2)*acd30(3)*acd30(43)
      brack=acd30(39)+acd30(40)+acd30(41)+acd30(42)+acd30(43)+acd30(44)+acd30(4&
      &5)+acd30(46)+acd30(47)+acd30(48)+acd30(49)+acd30(50)+acd30(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd30h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(63) :: acd30
      complex(ki) :: brack
      acd30(1)=k2(iv1)
      acd30(2)=dotproduct(qshift,spvak4l5)
      acd30(3)=abb30(35)
      acd30(4)=dotproduct(qshift,spval6l5)
      acd30(5)=abb30(41)
      acd30(6)=abb30(11)
      acd30(7)=k3(iv1)
      acd30(8)=dotproduct(qshift,spvak4k2)
      acd30(9)=abb30(22)
      acd30(10)=abb30(39)
      acd30(11)=k4(iv1)
      acd30(12)=qshift(iv1)
      acd30(13)=abb30(18)
      acd30(14)=spvak4l5(iv1)
      acd30(15)=dotproduct(k2,qshift)
      acd30(16)=dotproduct(k3,qshift)
      acd30(17)=dotproduct(k4,qshift)
      acd30(18)=abb30(19)
      acd30(19)=dotproduct(qshift,spvak4k3)
      acd30(20)=abb30(20)
      acd30(21)=spval6l5(iv1)
      acd30(22)=abb30(23)
      acd30(23)=abb30(17)
      acd30(24)=abb30(37)
      acd30(25)=spvak4k2(iv1)
      acd30(26)=abb30(10)
      acd30(27)=dotproduct(qshift,spvak2l5)
      acd30(28)=abb30(25)
      acd30(29)=abb30(21)
      acd30(30)=abb30(8)
      acd30(31)=spvak1k2(iv1)
      acd30(32)=abb30(14)
      acd30(33)=spvak1k3(iv1)
      acd30(34)=abb30(9)
      acd30(35)=spvak2l5(iv1)
      acd30(36)=spvak3k2(iv1)
      acd30(37)=abb30(29)
      acd30(38)=spvak4k3(iv1)
      acd30(39)=dotproduct(qshift,spvak3k2)
      acd30(40)=dotproduct(qshift,spvak3l5)
      acd30(41)=abb30(13)
      acd30(42)=spvak3l5(iv1)
      acd30(43)=spval5k2(iv1)
      acd30(44)=abb30(27)
      acd30(45)=spval6k2(iv1)
      acd30(46)=abb30(16)
      acd30(47)=spval6k3(iv1)
      acd30(48)=abb30(36)
      acd30(49)=acd30(28)*acd30(27)
      acd30(50)=acd30(16)+acd30(17)
      acd30(51)=acd30(9)*acd30(50)
      acd30(52)=-acd30(19)*acd30(29)
      acd30(53)=-acd30(4)*acd30(22)
      acd30(54)=-acd30(2)*acd30(18)
      acd30(55)=acd30(8)*acd30(26)
      acd30(49)=-2.0_ki*acd30(55)+acd30(54)+acd30(53)+acd30(52)+acd30(51)+acd30&
      &(30)+acd30(49)
      acd30(49)=acd30(25)*acd30(49)
      acd30(51)=acd30(7)+acd30(11)
      acd30(52)=acd30(9)*acd30(51)
      acd30(53)=acd30(28)*acd30(35)
      acd30(54)=-acd30(14)*acd30(18)
      acd30(55)=-acd30(38)*acd30(29)
      acd30(56)=-acd30(21)*acd30(22)
      acd30(52)=acd30(56)+acd30(55)+acd30(54)+acd30(53)+acd30(52)
      acd30(52)=acd30(8)*acd30(52)
      acd30(53)=-acd30(37)*acd30(39)
      acd30(54)=-acd30(28)*acd30(40)
      acd30(55)=-acd30(4)*acd30(23)
      acd30(56)=-acd30(2)*acd30(20)
      acd30(53)=acd30(56)+acd30(55)+acd30(54)+acd30(41)+acd30(53)
      acd30(53)=acd30(38)*acd30(53)
      acd30(54)=-acd30(37)*acd30(36)
      acd30(55)=-acd30(28)*acd30(42)
      acd30(56)=-acd30(14)*acd30(20)
      acd30(54)=acd30(56)+acd30(54)+acd30(55)
      acd30(54)=acd30(19)*acd30(54)
      acd30(55)=acd30(51)-acd30(1)
      acd30(56)=-acd30(4)*acd30(55)
      acd30(50)=acd30(50)-acd30(15)
      acd30(57)=-acd30(21)*acd30(50)
      acd30(56)=acd30(56)+acd30(57)
      acd30(56)=acd30(5)*acd30(56)
      acd30(50)=acd30(14)*acd30(50)
      acd30(55)=acd30(2)*acd30(55)
      acd30(50)=acd30(50)+acd30(55)
      acd30(50)=acd30(3)*acd30(50)
      acd30(51)=acd30(10)*acd30(51)
      acd30(55)=acd30(47)*acd30(48)
      acd30(57)=acd30(45)*acd30(46)
      acd30(58)=acd30(43)*acd30(44)
      acd30(59)=acd30(33)*acd30(34)
      acd30(60)=acd30(31)*acd30(32)
      acd30(61)=acd30(12)*acd30(13)
      acd30(62)=acd30(1)*acd30(6)
      acd30(63)=-acd30(19)*acd30(23)
      acd30(63)=acd30(24)+acd30(63)
      acd30(63)=acd30(21)*acd30(63)
      brack=acd30(49)+acd30(50)+acd30(51)+acd30(52)+acd30(53)+acd30(54)+acd30(5&
      &5)+acd30(56)+acd30(57)+acd30(58)+acd30(59)+acd30(60)-2.0_ki*acd30(61)+ac&
      &d30(62)+acd30(63)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd30h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd30
      complex(ki) :: brack
      acd30(1)=d(iv1,iv2)
      acd30(2)=abb30(18)
      acd30(3)=k2(iv1)
      acd30(4)=spvak4l5(iv2)
      acd30(5)=abb30(35)
      acd30(6)=spval6l5(iv2)
      acd30(7)=abb30(41)
      acd30(8)=k2(iv2)
      acd30(9)=spvak4l5(iv1)
      acd30(10)=spval6l5(iv1)
      acd30(11)=k3(iv1)
      acd30(12)=spvak4k2(iv2)
      acd30(13)=abb30(22)
      acd30(14)=k3(iv2)
      acd30(15)=spvak4k2(iv1)
      acd30(16)=k4(iv1)
      acd30(17)=k4(iv2)
      acd30(18)=abb30(19)
      acd30(19)=spvak4k3(iv2)
      acd30(20)=abb30(20)
      acd30(21)=spvak4k3(iv1)
      acd30(22)=abb30(23)
      acd30(23)=abb30(17)
      acd30(24)=abb30(10)
      acd30(25)=spvak2l5(iv2)
      acd30(26)=abb30(25)
      acd30(27)=abb30(21)
      acd30(28)=spvak2l5(iv1)
      acd30(29)=spvak3k2(iv1)
      acd30(30)=abb30(29)
      acd30(31)=spvak3k2(iv2)
      acd30(32)=spvak3l5(iv2)
      acd30(33)=spvak3l5(iv1)
      acd30(34)=-acd30(26)*acd30(28)
      acd30(35)=acd30(11)+acd30(16)
      acd30(36)=-acd30(13)*acd30(35)
      acd30(37)=acd30(21)*acd30(27)
      acd30(38)=acd30(10)*acd30(22)
      acd30(39)=acd30(9)*acd30(18)
      acd30(40)=acd30(15)*acd30(24)
      acd30(34)=2.0_ki*acd30(40)+acd30(39)+acd30(38)+acd30(37)+acd30(34)+acd30(&
      &36)
      acd30(34)=acd30(12)*acd30(34)
      acd30(36)=-acd30(26)*acd30(25)
      acd30(37)=acd30(14)+acd30(17)
      acd30(38)=-acd30(13)*acd30(37)
      acd30(39)=acd30(19)*acd30(27)
      acd30(40)=acd30(6)*acd30(22)
      acd30(41)=acd30(4)*acd30(18)
      acd30(36)=acd30(41)+acd30(40)+acd30(39)+acd30(36)+acd30(38)
      acd30(36)=acd30(15)*acd30(36)
      acd30(38)=acd30(30)*acd30(31)
      acd30(39)=acd30(26)*acd30(32)
      acd30(40)=acd30(6)*acd30(23)
      acd30(41)=acd30(4)*acd30(20)
      acd30(38)=acd30(41)+acd30(40)+acd30(38)+acd30(39)
      acd30(38)=acd30(21)*acd30(38)
      acd30(39)=acd30(30)*acd30(29)
      acd30(40)=acd30(26)*acd30(33)
      acd30(41)=acd30(10)*acd30(23)
      acd30(42)=acd30(9)*acd30(20)
      acd30(39)=acd30(42)+acd30(41)+acd30(39)+acd30(40)
      acd30(39)=acd30(19)*acd30(39)
      acd30(37)=acd30(37)-acd30(8)
      acd30(40)=acd30(10)*acd30(37)
      acd30(35)=acd30(35)-acd30(3)
      acd30(41)=acd30(6)*acd30(35)
      acd30(40)=acd30(40)+acd30(41)
      acd30(40)=acd30(7)*acd30(40)
      acd30(37)=-acd30(9)*acd30(37)
      acd30(35)=-acd30(4)*acd30(35)
      acd30(35)=acd30(37)+acd30(35)
      acd30(35)=acd30(5)*acd30(35)
      acd30(37)=acd30(1)*acd30(2)
      brack=acd30(34)+acd30(35)+acd30(36)+2.0_ki*acd30(37)+acd30(38)+acd30(39)+&
      &acd30(40)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd30h1
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
!---#[ subroutine reconstruct_d30:
   subroutine     reconstruct_d30(coeffs)
      use p0_dbaru_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_30:
      coeffs%coeffs_30%c0 = derivative(czip)
      coeffs%coeffs_30%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_30%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_30%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_30%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_30%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_30%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_30%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_30%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_30%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_30%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_30%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_30%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_30%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_30%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_30:
   end subroutine reconstruct_d30
!---#] subroutine reconstruct_d30:
end module     p0_dbaru_epnebbbar_d30h1l1d
