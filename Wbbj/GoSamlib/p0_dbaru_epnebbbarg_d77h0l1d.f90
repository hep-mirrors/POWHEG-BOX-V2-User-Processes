module     p0_dbaru_epnebbbarg_d77h0l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity0d77h0l1d.f90
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
   public :: derivative , reconstruct_d77
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd77h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd77
      complex(ki) :: brack
      acd77(1)=dotproduct(k2,qshift)
      acd77(2)=dotproduct(qshift,spvak4k2)
      acd77(3)=abb77(26)
      acd77(4)=dotproduct(qshift,spval6k2)
      acd77(5)=abb77(15)
      acd77(6)=abb77(29)
      acd77(7)=dotproduct(l6,qshift)
      acd77(8)=abb77(22)
      acd77(9)=abb77(13)
      acd77(10)=dotproduct(qshift,spvak1k2)
      acd77(11)=abb77(16)
      acd77(12)=abb77(28)
      acd77(13)=dotproduct(qshift,qshift)
      acd77(14)=abb77(21)
      acd77(15)=abb77(18)
      acd77(16)=abb77(37)
      acd77(17)=dotproduct(qshift,spvak4k3)
      acd77(18)=abb77(14)
      acd77(19)=abb77(17)
      acd77(20)=abb77(50)
      acd77(21)=abb77(12)
      acd77(22)=dotproduct(qshift,spval6k3)
      acd77(23)=abb77(11)
      acd77(24)=abb77(51)
      acd77(25)=dotproduct(qshift,spval6k1)
      acd77(26)=abb77(20)
      acd77(27)=dotproduct(qshift,spval6l5)
      acd77(28)=abb77(44)
      acd77(29)=dotproduct(qshift,spval6k7)
      acd77(30)=abb77(41)
      acd77(31)=abb77(24)
      acd77(32)=acd77(8)*acd77(2)
      acd77(33)=acd77(9)*acd77(4)
      acd77(34)=acd77(11)*acd77(10)
      acd77(32)=-acd77(12)+acd77(34)+acd77(33)+acd77(32)
      acd77(32)=acd77(7)*acd77(32)
      acd77(33)=-acd77(18)*acd77(10)
      acd77(33)=acd77(20)+acd77(33)
      acd77(33)=acd77(33)*acd77(17)
      acd77(34)=acd77(19)*acd77(10)
      acd77(33)=-acd77(21)+acd77(34)+acd77(33)
      acd77(33)=acd77(4)*acd77(33)
      acd77(34)=acd77(3)*acd77(2)
      acd77(35)=acd77(5)*acd77(4)
      acd77(34)=-acd77(6)+acd77(34)+acd77(35)
      acd77(34)=acd77(1)*acd77(34)
      acd77(35)=-acd77(14)*acd77(2)
      acd77(36)=-acd77(15)*acd77(4)
      acd77(35)=acd77(16)+acd77(36)+acd77(35)
      acd77(35)=acd77(13)*acd77(35)
      acd77(36)=acd77(23)*acd77(10)
      acd77(36)=-acd77(24)+acd77(36)
      acd77(36)=acd77(22)*acd77(36)
      acd77(37)=-acd77(26)*acd77(25)
      acd77(38)=-acd77(28)*acd77(27)
      acd77(39)=-acd77(30)*acd77(29)
      brack=acd77(31)+acd77(32)+acd77(33)+acd77(34)+acd77(35)+acd77(36)+acd77(3&
      &7)+acd77(38)+acd77(39)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd77h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(50) :: acd77
      complex(ki) :: brack
      acd77(1)=k2(iv1)
      acd77(2)=dotproduct(qshift,spvak4k2)
      acd77(3)=abb77(26)
      acd77(4)=dotproduct(qshift,spval6k2)
      acd77(5)=abb77(15)
      acd77(6)=abb77(29)
      acd77(7)=l6(iv1)
      acd77(8)=abb77(22)
      acd77(9)=abb77(13)
      acd77(10)=dotproduct(qshift,spvak1k2)
      acd77(11)=abb77(16)
      acd77(12)=abb77(28)
      acd77(13)=qshift(iv1)
      acd77(14)=abb77(21)
      acd77(15)=abb77(18)
      acd77(16)=abb77(37)
      acd77(17)=spvak4k2(iv1)
      acd77(18)=dotproduct(k2,qshift)
      acd77(19)=dotproduct(l6,qshift)
      acd77(20)=dotproduct(qshift,qshift)
      acd77(21)=spval6k2(iv1)
      acd77(22)=dotproduct(qshift,spvak4k3)
      acd77(23)=abb77(14)
      acd77(24)=abb77(17)
      acd77(25)=abb77(50)
      acd77(26)=abb77(12)
      acd77(27)=spvak1k2(iv1)
      acd77(28)=dotproduct(qshift,spval6k3)
      acd77(29)=abb77(11)
      acd77(30)=spvak4k3(iv1)
      acd77(31)=spval6k3(iv1)
      acd77(32)=abb77(51)
      acd77(33)=spval6k1(iv1)
      acd77(34)=abb77(20)
      acd77(35)=spval6l5(iv1)
      acd77(36)=abb77(44)
      acd77(37)=spval6k7(iv1)
      acd77(38)=abb77(41)
      acd77(39)=acd77(15)*acd77(20)
      acd77(40)=-acd77(5)*acd77(18)
      acd77(41)=-acd77(22)*acd77(25)
      acd77(42)=-acd77(19)*acd77(9)
      acd77(43)=acd77(22)*acd77(23)
      acd77(43)=acd77(43)-acd77(24)
      acd77(44)=acd77(10)*acd77(43)
      acd77(39)=acd77(44)+acd77(42)+acd77(41)+acd77(40)+acd77(26)+acd77(39)
      acd77(39)=acd77(21)*acd77(39)
      acd77(40)=acd77(10)*acd77(23)
      acd77(40)=acd77(40)-acd77(25)
      acd77(40)=acd77(30)*acd77(40)
      acd77(41)=2.0_ki*acd77(13)
      acd77(42)=acd77(15)*acd77(41)
      acd77(44)=-acd77(1)*acd77(5)
      acd77(43)=acd77(27)*acd77(43)
      acd77(45)=-acd77(7)*acd77(9)
      acd77(40)=acd77(45)+acd77(43)+acd77(44)+acd77(42)+acd77(40)
      acd77(40)=acd77(4)*acd77(40)
      acd77(42)=acd77(14)*acd77(20)
      acd77(43)=-acd77(3)*acd77(18)
      acd77(44)=-acd77(19)*acd77(8)
      acd77(42)=acd77(44)+acd77(42)+acd77(43)
      acd77(42)=acd77(17)*acd77(42)
      acd77(43)=acd77(2)*acd77(14)
      acd77(43)=acd77(43)-acd77(16)
      acd77(41)=acd77(41)*acd77(43)
      acd77(43)=-acd77(29)*acd77(28)
      acd77(44)=-acd77(19)*acd77(11)
      acd77(43)=acd77(43)+acd77(44)
      acd77(43)=acd77(27)*acd77(43)
      acd77(44)=-acd77(29)*acd77(31)
      acd77(45)=-acd77(7)*acd77(11)
      acd77(44)=acd77(44)+acd77(45)
      acd77(44)=acd77(10)*acd77(44)
      acd77(45)=acd77(37)*acd77(38)
      acd77(46)=acd77(35)*acd77(36)
      acd77(47)=acd77(33)*acd77(34)
      acd77(48)=acd77(31)*acd77(32)
      acd77(49)=-acd77(2)*acd77(3)
      acd77(49)=acd77(6)+acd77(49)
      acd77(49)=acd77(1)*acd77(49)
      acd77(50)=-acd77(2)*acd77(8)
      acd77(50)=acd77(12)+acd77(50)
      acd77(50)=acd77(7)*acd77(50)
      brack=acd77(39)+acd77(40)+acd77(41)+acd77(42)+acd77(43)+acd77(44)+acd77(4&
      &5)+acd77(46)+acd77(47)+acd77(48)+acd77(49)+acd77(50)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd77h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd77
      complex(ki) :: brack
      acd77(1)=d(iv1,iv2)
      acd77(2)=dotproduct(qshift,spvak4k2)
      acd77(3)=abb77(21)
      acd77(4)=dotproduct(qshift,spval6k2)
      acd77(5)=abb77(18)
      acd77(6)=abb77(37)
      acd77(7)=k2(iv1)
      acd77(8)=spvak4k2(iv2)
      acd77(9)=abb77(26)
      acd77(10)=spval6k2(iv2)
      acd77(11)=abb77(15)
      acd77(12)=k2(iv2)
      acd77(13)=spvak4k2(iv1)
      acd77(14)=spval6k2(iv1)
      acd77(15)=l6(iv1)
      acd77(16)=abb77(22)
      acd77(17)=abb77(13)
      acd77(18)=spvak1k2(iv2)
      acd77(19)=abb77(16)
      acd77(20)=l6(iv2)
      acd77(21)=spvak1k2(iv1)
      acd77(22)=qshift(iv1)
      acd77(23)=qshift(iv2)
      acd77(24)=dotproduct(qshift,spvak4k3)
      acd77(25)=abb77(14)
      acd77(26)=abb77(17)
      acd77(27)=spvak4k3(iv2)
      acd77(28)=dotproduct(qshift,spvak1k2)
      acd77(29)=abb77(50)
      acd77(30)=spvak4k3(iv1)
      acd77(31)=spval6k3(iv2)
      acd77(32)=abb77(11)
      acd77(33)=spval6k3(iv1)
      acd77(34)=-acd77(27)*acd77(28)
      acd77(35)=-acd77(18)*acd77(24)
      acd77(34)=acd77(34)+acd77(35)
      acd77(34)=acd77(25)*acd77(34)
      acd77(35)=acd77(11)*acd77(12)
      acd77(36)=acd77(27)*acd77(29)
      acd77(37)=acd77(20)*acd77(17)
      acd77(38)=2.0_ki*acd77(5)
      acd77(39)=-acd77(23)*acd77(38)
      acd77(40)=acd77(18)*acd77(26)
      acd77(34)=acd77(34)+acd77(40)+acd77(39)+acd77(37)+acd77(35)+acd77(36)
      acd77(34)=acd77(14)*acd77(34)
      acd77(35)=-acd77(30)*acd77(28)
      acd77(36)=-acd77(21)*acd77(24)
      acd77(35)=acd77(35)+acd77(36)
      acd77(35)=acd77(25)*acd77(35)
      acd77(36)=acd77(7)*acd77(11)
      acd77(37)=acd77(30)*acd77(29)
      acd77(39)=acd77(15)*acd77(17)
      acd77(38)=-acd77(22)*acd77(38)
      acd77(40)=acd77(21)*acd77(26)
      acd77(35)=acd77(35)+acd77(40)+acd77(38)+acd77(39)+acd77(36)+acd77(37)
      acd77(35)=acd77(10)*acd77(35)
      acd77(36)=-acd77(13)*acd77(23)
      acd77(37)=-acd77(8)*acd77(22)
      acd77(36)=acd77(36)+acd77(37)
      acd77(36)=acd77(3)*acd77(36)
      acd77(37)=-acd77(4)*acd77(5)
      acd77(38)=-acd77(3)*acd77(2)
      acd77(37)=acd77(38)+acd77(6)+acd77(37)
      acd77(37)=acd77(1)*acd77(37)
      acd77(36)=acd77(36)+acd77(37)
      acd77(37)=acd77(9)*acd77(12)
      acd77(38)=acd77(20)*acd77(16)
      acd77(37)=acd77(37)+acd77(38)
      acd77(37)=acd77(13)*acd77(37)
      acd77(38)=acd77(7)*acd77(9)
      acd77(39)=acd77(15)*acd77(16)
      acd77(38)=acd77(38)+acd77(39)
      acd77(38)=acd77(8)*acd77(38)
      acd77(39)=acd77(32)*acd77(31)
      acd77(40)=acd77(20)*acd77(19)
      acd77(39)=acd77(39)+acd77(40)
      acd77(39)=acd77(21)*acd77(39)
      acd77(40)=acd77(32)*acd77(33)
      acd77(41)=acd77(15)*acd77(19)
      acd77(40)=acd77(40)+acd77(41)
      acd77(40)=acd77(18)*acd77(40)
      acd77(41)=-acd77(21)*acd77(27)
      acd77(42)=-acd77(18)*acd77(30)
      acd77(41)=acd77(41)+acd77(42)
      acd77(41)=acd77(25)*acd77(4)*acd77(41)
      brack=acd77(34)+acd77(35)+2.0_ki*acd77(36)+acd77(37)+acd77(38)+acd77(39)+&
      &acd77(40)+acd77(41)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd77h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(23) :: acd77
      complex(ki) :: brack
      acd77(1)=d(iv1,iv2)
      acd77(2)=spvak4k2(iv3)
      acd77(3)=abb77(21)
      acd77(4)=spval6k2(iv3)
      acd77(5)=abb77(18)
      acd77(6)=d(iv1,iv3)
      acd77(7)=spvak4k2(iv2)
      acd77(8)=spval6k2(iv2)
      acd77(9)=d(iv2,iv3)
      acd77(10)=spvak4k2(iv1)
      acd77(11)=spval6k2(iv1)
      acd77(12)=spvak1k2(iv2)
      acd77(13)=spvak4k3(iv3)
      acd77(14)=abb77(14)
      acd77(15)=spvak1k2(iv3)
      acd77(16)=spvak4k3(iv2)
      acd77(17)=spvak1k2(iv1)
      acd77(18)=spvak4k3(iv1)
      acd77(19)=acd77(11)*acd77(9)
      acd77(20)=acd77(8)*acd77(6)
      acd77(21)=acd77(4)*acd77(1)
      acd77(19)=acd77(21)+acd77(19)+acd77(20)
      acd77(19)=acd77(5)*acd77(19)
      acd77(20)=acd77(9)*acd77(10)
      acd77(21)=acd77(6)*acd77(7)
      acd77(22)=acd77(1)*acd77(2)
      acd77(20)=acd77(22)+acd77(20)+acd77(21)
      acd77(20)=acd77(3)*acd77(20)
      acd77(19)=acd77(20)+acd77(19)
      acd77(20)=acd77(15)*acd77(16)
      acd77(21)=acd77(12)*acd77(13)
      acd77(20)=acd77(20)+acd77(21)
      acd77(20)=acd77(11)*acd77(20)
      acd77(21)=acd77(15)*acd77(18)
      acd77(22)=acd77(13)*acd77(17)
      acd77(21)=acd77(21)+acd77(22)
      acd77(21)=acd77(8)*acd77(21)
      acd77(22)=acd77(16)*acd77(17)
      acd77(23)=acd77(12)*acd77(18)
      acd77(22)=acd77(22)+acd77(23)
      acd77(22)=acd77(4)*acd77(22)
      acd77(20)=acd77(22)+acd77(20)+acd77(21)
      acd77(20)=acd77(14)*acd77(20)
      brack=2.0_ki*acd77(19)+acd77(20)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd77h0
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
      qshift = k6
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
!---#[ subroutine reconstruct_d77:
   subroutine     reconstruct_d77(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group16
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group16), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_77:
      coeffs%coeffs_77%c0 = derivative(czip)
      coeffs%coeffs_77%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_77%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_77%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_77%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_77%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_77%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_77%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_77%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_77%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_77%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_77%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_77%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_77%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_77%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_77%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_77%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_77%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_77%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_77%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_77%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_77%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_77%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_77%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_77%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_77%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_77%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_77%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_77%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_77%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_77%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_77%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_77%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_77%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_77%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_77:
   end subroutine reconstruct_d77
!---#] subroutine reconstruct_d77:
end module     p0_dbaru_epnebbbarg_d77h0l1d
