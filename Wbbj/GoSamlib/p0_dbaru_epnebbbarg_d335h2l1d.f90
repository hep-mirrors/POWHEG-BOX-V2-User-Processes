module     p0_dbaru_epnebbbarg_d335h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity2d335h2l1d.f90
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
   public :: derivative , reconstruct_d335
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd335h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(46) :: acd335
      complex(ki) :: brack
      acd335(1)=dotproduct(k2,qshift)
      acd335(2)=dotproduct(qshift,spvak2k7)
      acd335(3)=abb335(14)
      acd335(4)=dotproduct(l5,qshift)
      acd335(5)=abb335(17)
      acd335(6)=dotproduct(k7,qshift)
      acd335(7)=abb335(24)
      acd335(8)=abb335(33)
      acd335(9)=dotproduct(qshift,qshift)
      acd335(10)=abb335(71)
      acd335(11)=dotproduct(qshift,spvak1k2)
      acd335(12)=abb335(19)
      acd335(13)=dotproduct(qshift,spvak1k3)
      acd335(14)=abb335(16)
      acd335(15)=dotproduct(qshift,spvak1l6)
      acd335(16)=abb335(13)
      acd335(17)=dotproduct(qshift,spvak2k3)
      acd335(18)=abb335(36)
      acd335(19)=dotproduct(qshift,spvak4k2)
      acd335(20)=abb335(20)
      acd335(21)=dotproduct(qshift,spvak4l6)
      acd335(22)=abb335(21)
      acd335(23)=dotproduct(qshift,spval5k2)
      acd335(24)=abb335(18)
      acd335(25)=dotproduct(qshift,spval5k3)
      acd335(26)=abb335(31)
      acd335(27)=dotproduct(qshift,spval5k7)
      acd335(28)=abb335(26)
      acd335(29)=dotproduct(qshift,spvak7k2)
      acd335(30)=abb335(22)
      acd335(31)=abb335(15)
      acd335(32)=abb335(59)
      acd335(33)=abb335(28)
      acd335(34)=acd335(3)*acd335(1)
      acd335(35)=acd335(5)*acd335(4)
      acd335(36)=acd335(7)*acd335(6)
      acd335(37)=acd335(12)*acd335(11)
      acd335(38)=acd335(14)*acd335(13)
      acd335(39)=acd335(16)*acd335(15)
      acd335(40)=acd335(18)*acd335(17)
      acd335(41)=acd335(20)*acd335(19)
      acd335(42)=acd335(22)*acd335(21)
      acd335(43)=acd335(24)*acd335(23)
      acd335(44)=acd335(26)*acd335(25)
      acd335(45)=acd335(28)*acd335(27)
      acd335(46)=acd335(30)*acd335(29)
      acd335(34)=-acd335(31)+acd335(46)+acd335(45)+acd335(44)+acd335(43)+acd335&
      &(42)+acd335(41)+acd335(40)+acd335(39)+acd335(38)+acd335(37)+acd335(36)+a&
      &cd335(34)+acd335(35)
      acd335(34)=acd335(2)*acd335(34)
      acd335(35)=-acd335(8)*acd335(6)
      acd335(36)=acd335(10)*acd335(9)
      acd335(37)=-acd335(32)*acd335(27)
      brack=acd335(33)+acd335(34)+acd335(35)+acd335(36)+acd335(37)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd335h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd335
      complex(ki) :: brack
      acd335(1)=k2(iv1)
      acd335(2)=dotproduct(qshift,spvak2k7)
      acd335(3)=abb335(14)
      acd335(4)=l5(iv1)
      acd335(5)=abb335(17)
      acd335(6)=k7(iv1)
      acd335(7)=abb335(24)
      acd335(8)=abb335(33)
      acd335(9)=qshift(iv1)
      acd335(10)=abb335(71)
      acd335(11)=spvak2k7(iv1)
      acd335(12)=dotproduct(k2,qshift)
      acd335(13)=dotproduct(l5,qshift)
      acd335(14)=dotproduct(k7,qshift)
      acd335(15)=dotproduct(qshift,spvak1k2)
      acd335(16)=abb335(19)
      acd335(17)=dotproduct(qshift,spvak1k3)
      acd335(18)=abb335(16)
      acd335(19)=dotproduct(qshift,spvak1l6)
      acd335(20)=abb335(13)
      acd335(21)=dotproduct(qshift,spvak2k3)
      acd335(22)=abb335(36)
      acd335(23)=dotproduct(qshift,spvak4k2)
      acd335(24)=abb335(20)
      acd335(25)=dotproduct(qshift,spvak4l6)
      acd335(26)=abb335(21)
      acd335(27)=dotproduct(qshift,spval5k2)
      acd335(28)=abb335(18)
      acd335(29)=dotproduct(qshift,spval5k3)
      acd335(30)=abb335(31)
      acd335(31)=dotproduct(qshift,spval5k7)
      acd335(32)=abb335(26)
      acd335(33)=dotproduct(qshift,spvak7k2)
      acd335(34)=abb335(22)
      acd335(35)=abb335(15)
      acd335(36)=spvak1k2(iv1)
      acd335(37)=spvak1k3(iv1)
      acd335(38)=spvak1l6(iv1)
      acd335(39)=spvak2k3(iv1)
      acd335(40)=spvak4k2(iv1)
      acd335(41)=spvak4l6(iv1)
      acd335(42)=spval5k2(iv1)
      acd335(43)=spval5k3(iv1)
      acd335(44)=spval5k7(iv1)
      acd335(45)=abb335(59)
      acd335(46)=spvak7k2(iv1)
      acd335(47)=acd335(7)*acd335(6)
      acd335(48)=acd335(44)*acd335(32)
      acd335(49)=acd335(1)*acd335(3)
      acd335(50)=acd335(4)*acd335(5)
      acd335(51)=acd335(36)*acd335(16)
      acd335(52)=acd335(37)*acd335(18)
      acd335(53)=acd335(38)*acd335(20)
      acd335(54)=acd335(39)*acd335(22)
      acd335(55)=acd335(40)*acd335(24)
      acd335(56)=acd335(41)*acd335(26)
      acd335(57)=acd335(42)*acd335(28)
      acd335(58)=acd335(43)*acd335(30)
      acd335(59)=acd335(46)*acd335(34)
      acd335(47)=acd335(59)+acd335(58)+acd335(57)+acd335(56)+acd335(55)+acd335(&
      &54)+acd335(53)+acd335(52)+acd335(51)+acd335(50)+acd335(49)+acd335(47)+ac&
      &d335(48)
      acd335(47)=acd335(2)*acd335(47)
      acd335(48)=acd335(12)*acd335(3)
      acd335(49)=acd335(13)*acd335(5)
      acd335(50)=acd335(14)*acd335(7)
      acd335(51)=acd335(15)*acd335(16)
      acd335(52)=acd335(17)*acd335(18)
      acd335(53)=acd335(19)*acd335(20)
      acd335(54)=acd335(21)*acd335(22)
      acd335(55)=acd335(23)*acd335(24)
      acd335(56)=acd335(25)*acd335(26)
      acd335(57)=acd335(27)*acd335(28)
      acd335(58)=acd335(29)*acd335(30)
      acd335(59)=acd335(31)*acd335(32)
      acd335(60)=acd335(33)*acd335(34)
      acd335(48)=-acd335(35)+acd335(60)+acd335(59)+acd335(58)+acd335(57)+acd335&
      &(56)+acd335(55)+acd335(54)+acd335(53)+acd335(52)+acd335(51)+acd335(50)+a&
      &cd335(49)+acd335(48)
      acd335(48)=acd335(11)*acd335(48)
      acd335(49)=-acd335(8)*acd335(6)
      acd335(50)=acd335(10)*acd335(9)
      acd335(51)=-acd335(45)*acd335(44)
      brack=acd335(47)+acd335(48)+acd335(49)+2.0_ki*acd335(50)+acd335(51)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd335h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(57) :: acd335
      complex(ki) :: brack
      acd335(1)=d(iv1,iv2)
      acd335(2)=abb335(71)
      acd335(3)=k2(iv1)
      acd335(4)=spvak2k7(iv2)
      acd335(5)=abb335(14)
      acd335(6)=k2(iv2)
      acd335(7)=spvak2k7(iv1)
      acd335(8)=l5(iv1)
      acd335(9)=abb335(17)
      acd335(10)=l5(iv2)
      acd335(11)=k7(iv1)
      acd335(12)=abb335(24)
      acd335(13)=k7(iv2)
      acd335(14)=spvak1k2(iv2)
      acd335(15)=abb335(19)
      acd335(16)=spvak1k3(iv2)
      acd335(17)=abb335(16)
      acd335(18)=spvak1l6(iv2)
      acd335(19)=abb335(13)
      acd335(20)=spvak2k3(iv2)
      acd335(21)=abb335(36)
      acd335(22)=spvak4k2(iv2)
      acd335(23)=abb335(20)
      acd335(24)=spvak4l6(iv2)
      acd335(25)=abb335(21)
      acd335(26)=spval5k2(iv2)
      acd335(27)=abb335(18)
      acd335(28)=spval5k3(iv2)
      acd335(29)=abb335(31)
      acd335(30)=spval5k7(iv2)
      acd335(31)=abb335(26)
      acd335(32)=spvak7k2(iv2)
      acd335(33)=abb335(22)
      acd335(34)=spvak1k2(iv1)
      acd335(35)=spvak1k3(iv1)
      acd335(36)=spvak1l6(iv1)
      acd335(37)=spvak2k3(iv1)
      acd335(38)=spvak4k2(iv1)
      acd335(39)=spvak4l6(iv1)
      acd335(40)=spval5k2(iv1)
      acd335(41)=spval5k3(iv1)
      acd335(42)=spval5k7(iv1)
      acd335(43)=spvak7k2(iv1)
      acd335(44)=acd335(3)*acd335(5)
      acd335(45)=acd335(8)*acd335(9)
      acd335(46)=acd335(11)*acd335(12)
      acd335(47)=acd335(34)*acd335(15)
      acd335(48)=acd335(35)*acd335(17)
      acd335(49)=acd335(36)*acd335(19)
      acd335(50)=acd335(37)*acd335(21)
      acd335(51)=acd335(38)*acd335(23)
      acd335(52)=acd335(39)*acd335(25)
      acd335(53)=acd335(40)*acd335(27)
      acd335(54)=acd335(41)*acd335(29)
      acd335(55)=acd335(42)*acd335(31)
      acd335(56)=acd335(43)*acd335(33)
      acd335(44)=acd335(56)+acd335(55)+acd335(54)+acd335(53)+acd335(52)+acd335(&
      &51)+acd335(50)+acd335(49)+acd335(48)+acd335(47)+acd335(46)+acd335(45)+ac&
      &d335(44)
      acd335(44)=acd335(4)*acd335(44)
      acd335(45)=acd335(6)*acd335(5)
      acd335(46)=acd335(10)*acd335(9)
      acd335(47)=acd335(13)*acd335(12)
      acd335(48)=acd335(14)*acd335(15)
      acd335(49)=acd335(16)*acd335(17)
      acd335(50)=acd335(18)*acd335(19)
      acd335(51)=acd335(20)*acd335(21)
      acd335(52)=acd335(22)*acd335(23)
      acd335(53)=acd335(24)*acd335(25)
      acd335(54)=acd335(26)*acd335(27)
      acd335(55)=acd335(28)*acd335(29)
      acd335(56)=acd335(30)*acd335(31)
      acd335(57)=acd335(32)*acd335(33)
      acd335(45)=acd335(57)+acd335(56)+acd335(55)+acd335(54)+acd335(53)+acd335(&
      &52)+acd335(51)+acd335(50)+acd335(49)+acd335(48)+acd335(47)+acd335(46)+ac&
      &d335(45)
      acd335(45)=acd335(7)*acd335(45)
      acd335(46)=acd335(2)*acd335(1)
      brack=acd335(44)+acd335(45)+2.0_ki*acd335(46)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd335h2
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
      qshift = -k7-k6
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
!---#[ subroutine reconstruct_d335:
   subroutine     reconstruct_d335(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_335:
      coeffs%coeffs_335%c0 = derivative(czip)
      coeffs%coeffs_335%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_335%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_335%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_335%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_335%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_335%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_335%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_335%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_335%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_335%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_335%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_335%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_335%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_335%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_335:
   end subroutine reconstruct_d335
!---#] subroutine reconstruct_d335:
end module     p0_dbaru_epnebbbarg_d335h2l1d
