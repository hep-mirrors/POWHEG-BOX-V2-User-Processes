module     p0_dbaru_epnebbbarg_d139h5l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d139h5l1d.f90
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
   public :: derivative , reconstruct_d139
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd139h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd139
      complex(ki) :: brack
      acd139(1)=dotproduct(k1,qshift)
      acd139(2)=dotproduct(qshift,spvak7k2)
      acd139(3)=abb139(30)
      acd139(4)=abb139(25)
      acd139(5)=dotproduct(k2,qshift)
      acd139(6)=abb139(23)
      acd139(7)=abb139(91)
      acd139(8)=dotproduct(k3,qshift)
      acd139(9)=abb139(35)
      acd139(10)=abb139(107)
      acd139(11)=dotproduct(k4,qshift)
      acd139(12)=dotproduct(l5,qshift)
      acd139(13)=abb139(41)
      acd139(14)=abb139(81)
      acd139(15)=dotproduct(l6,qshift)
      acd139(16)=dotproduct(k7,qshift)
      acd139(17)=abb139(32)
      acd139(18)=abb139(13)
      acd139(19)=dotproduct(qshift,qshift)
      acd139(20)=abb139(26)
      acd139(21)=dotproduct(qshift,spvak1k7)
      acd139(22)=abb139(18)
      acd139(23)=dotproduct(qshift,spvak4k2)
      acd139(24)=abb139(17)
      acd139(25)=dotproduct(qshift,spvak4k3)
      acd139(26)=abb139(15)
      acd139(27)=dotproduct(qshift,spval6k2)
      acd139(28)=abb139(19)
      acd139(29)=dotproduct(qshift,spval6l5)
      acd139(30)=abb139(37)
      acd139(31)=abb139(14)
      acd139(32)=abb139(16)
      acd139(33)=abb139(24)
      acd139(34)=abb139(47)
      acd139(35)=abb139(40)
      acd139(36)=abb139(12)
      acd139(37)=acd139(3)*acd139(1)
      acd139(38)=acd139(6)*acd139(5)
      acd139(39)=acd139(17)*acd139(16)
      acd139(40)=acd139(22)*acd139(21)
      acd139(41)=acd139(24)*acd139(23)
      acd139(42)=acd139(26)*acd139(25)
      acd139(43)=acd139(28)*acd139(27)
      acd139(44)=acd139(30)*acd139(29)
      acd139(37)=-acd139(31)+acd139(44)+acd139(43)+acd139(42)+acd139(41)+acd139&
      &(40)+acd139(39)+acd139(38)+acd139(37)
      acd139(37)=acd139(2)*acd139(37)
      acd139(38)=acd139(11)+acd139(8)
      acd139(39)=acd139(9)*acd139(2)
      acd139(39)=acd139(39)-acd139(10)
      acd139(38)=acd139(39)*acd139(38)
      acd139(39)=acd139(15)+acd139(12)
      acd139(40)=acd139(13)*acd139(2)
      acd139(40)=acd139(40)-acd139(14)
      acd139(39)=acd139(40)*acd139(39)
      acd139(40)=-acd139(4)*acd139(1)
      acd139(41)=-acd139(7)*acd139(5)
      acd139(42)=-acd139(18)*acd139(16)
      acd139(43)=acd139(20)*acd139(19)
      acd139(44)=-acd139(32)*acd139(23)
      acd139(45)=-acd139(33)*acd139(25)
      acd139(46)=-acd139(34)*acd139(27)
      acd139(47)=-acd139(35)*acd139(29)
      brack=acd139(36)+acd139(37)+acd139(38)+acd139(39)+acd139(40)+acd139(41)+a&
      &cd139(42)+acd139(43)+acd139(44)+acd139(45)+acd139(46)+acd139(47)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd139h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd139
      complex(ki) :: brack
      acd139(1)=k1(iv1)
      acd139(2)=dotproduct(qshift,spvak7k2)
      acd139(3)=abb139(30)
      acd139(4)=abb139(25)
      acd139(5)=k2(iv1)
      acd139(6)=abb139(23)
      acd139(7)=abb139(91)
      acd139(8)=k3(iv1)
      acd139(9)=abb139(35)
      acd139(10)=abb139(107)
      acd139(11)=k4(iv1)
      acd139(12)=l5(iv1)
      acd139(13)=abb139(41)
      acd139(14)=abb139(81)
      acd139(15)=l6(iv1)
      acd139(16)=k7(iv1)
      acd139(17)=abb139(32)
      acd139(18)=abb139(13)
      acd139(19)=qshift(iv1)
      acd139(20)=abb139(26)
      acd139(21)=spvak7k2(iv1)
      acd139(22)=dotproduct(k1,qshift)
      acd139(23)=dotproduct(k2,qshift)
      acd139(24)=dotproduct(k3,qshift)
      acd139(25)=dotproduct(k4,qshift)
      acd139(26)=dotproduct(l5,qshift)
      acd139(27)=dotproduct(l6,qshift)
      acd139(28)=dotproduct(k7,qshift)
      acd139(29)=dotproduct(qshift,spvak1k7)
      acd139(30)=abb139(18)
      acd139(31)=dotproduct(qshift,spvak4k2)
      acd139(32)=abb139(17)
      acd139(33)=dotproduct(qshift,spvak4k3)
      acd139(34)=abb139(15)
      acd139(35)=dotproduct(qshift,spval6k2)
      acd139(36)=abb139(19)
      acd139(37)=dotproduct(qshift,spval6l5)
      acd139(38)=abb139(37)
      acd139(39)=abb139(14)
      acd139(40)=spvak1k7(iv1)
      acd139(41)=spvak4k2(iv1)
      acd139(42)=abb139(16)
      acd139(43)=spvak4k3(iv1)
      acd139(44)=abb139(24)
      acd139(45)=spval6k2(iv1)
      acd139(46)=abb139(47)
      acd139(47)=spval6l5(iv1)
      acd139(48)=abb139(40)
      acd139(49)=-acd139(27)-acd139(26)
      acd139(49)=acd139(49)*acd139(13)
      acd139(50)=-acd139(25)-acd139(24)
      acd139(50)=acd139(50)*acd139(9)
      acd139(51)=-acd139(22)*acd139(3)
      acd139(52)=-acd139(23)*acd139(6)
      acd139(53)=-acd139(28)*acd139(17)
      acd139(54)=-acd139(29)*acd139(30)
      acd139(55)=-acd139(31)*acd139(32)
      acd139(56)=-acd139(33)*acd139(34)
      acd139(57)=-acd139(35)*acd139(36)
      acd139(58)=-acd139(37)*acd139(38)
      acd139(49)=acd139(50)+acd139(49)+acd139(39)+acd139(58)+acd139(57)+acd139(&
      &56)+acd139(55)+acd139(54)+acd139(53)+acd139(52)+acd139(51)
      acd139(49)=acd139(21)*acd139(49)
      acd139(50)=-acd139(3)*acd139(1)
      acd139(51)=-acd139(6)*acd139(5)
      acd139(52)=-acd139(17)*acd139(16)
      acd139(53)=-acd139(41)*acd139(32)
      acd139(54)=-acd139(43)*acd139(34)
      acd139(55)=-acd139(45)*acd139(36)
      acd139(56)=-acd139(47)*acd139(38)
      acd139(57)=-acd139(40)*acd139(30)
      acd139(50)=acd139(57)+acd139(56)+acd139(55)+acd139(54)+acd139(53)+acd139(&
      &52)+acd139(50)+acd139(51)
      acd139(50)=acd139(2)*acd139(50)
      acd139(51)=-acd139(11)-acd139(8)
      acd139(52)=acd139(9)*acd139(2)
      acd139(52)=acd139(52)-acd139(10)
      acd139(51)=acd139(52)*acd139(51)
      acd139(52)=-acd139(15)-acd139(12)
      acd139(53)=acd139(13)*acd139(2)
      acd139(53)=acd139(53)-acd139(14)
      acd139(52)=acd139(53)*acd139(52)
      acd139(53)=acd139(4)*acd139(1)
      acd139(54)=acd139(7)*acd139(5)
      acd139(55)=acd139(18)*acd139(16)
      acd139(56)=acd139(20)*acd139(19)
      acd139(57)=acd139(42)*acd139(41)
      acd139(58)=acd139(44)*acd139(43)
      acd139(59)=acd139(46)*acd139(45)
      acd139(60)=acd139(48)*acd139(47)
      brack=acd139(49)+acd139(50)+acd139(51)+acd139(52)+acd139(53)+acd139(54)+a&
      &cd139(55)-2.0_ki*acd139(56)+acd139(57)+acd139(58)+acd139(59)+acd139(60)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd139h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(49) :: acd139
      complex(ki) :: brack
      acd139(1)=d(iv1,iv2)
      acd139(2)=abb139(26)
      acd139(3)=k1(iv1)
      acd139(4)=spvak7k2(iv2)
      acd139(5)=abb139(30)
      acd139(6)=k1(iv2)
      acd139(7)=spvak7k2(iv1)
      acd139(8)=k2(iv1)
      acd139(9)=abb139(23)
      acd139(10)=k2(iv2)
      acd139(11)=k3(iv1)
      acd139(12)=abb139(35)
      acd139(13)=k3(iv2)
      acd139(14)=k4(iv1)
      acd139(15)=k4(iv2)
      acd139(16)=l5(iv1)
      acd139(17)=abb139(41)
      acd139(18)=l5(iv2)
      acd139(19)=l6(iv1)
      acd139(20)=l6(iv2)
      acd139(21)=k7(iv1)
      acd139(22)=abb139(32)
      acd139(23)=k7(iv2)
      acd139(24)=spvak1k7(iv2)
      acd139(25)=abb139(18)
      acd139(26)=spvak4k2(iv2)
      acd139(27)=abb139(17)
      acd139(28)=spvak4k3(iv2)
      acd139(29)=abb139(15)
      acd139(30)=spval6k2(iv2)
      acd139(31)=abb139(19)
      acd139(32)=spval6l5(iv2)
      acd139(33)=abb139(37)
      acd139(34)=spvak1k7(iv1)
      acd139(35)=spvak4k2(iv1)
      acd139(36)=spvak4k3(iv1)
      acd139(37)=spval6k2(iv1)
      acd139(38)=spval6l5(iv1)
      acd139(39)=acd139(19)+acd139(16)
      acd139(39)=acd139(39)*acd139(17)
      acd139(40)=acd139(14)+acd139(11)
      acd139(40)=acd139(40)*acd139(12)
      acd139(41)=acd139(3)*acd139(5)
      acd139(42)=acd139(8)*acd139(9)
      acd139(43)=acd139(21)*acd139(22)
      acd139(44)=acd139(34)*acd139(25)
      acd139(45)=acd139(35)*acd139(27)
      acd139(46)=acd139(36)*acd139(29)
      acd139(47)=acd139(37)*acd139(31)
      acd139(48)=acd139(38)*acd139(33)
      acd139(39)=acd139(40)+acd139(39)+acd139(48)+acd139(47)+acd139(46)+acd139(&
      &45)+acd139(44)+acd139(43)+acd139(42)+acd139(41)
      acd139(39)=acd139(4)*acd139(39)
      acd139(40)=acd139(20)+acd139(18)
      acd139(40)=acd139(40)*acd139(17)
      acd139(41)=acd139(15)+acd139(13)
      acd139(41)=acd139(41)*acd139(12)
      acd139(42)=acd139(6)*acd139(5)
      acd139(43)=acd139(10)*acd139(9)
      acd139(44)=acd139(23)*acd139(22)
      acd139(45)=acd139(24)*acd139(25)
      acd139(46)=acd139(26)*acd139(27)
      acd139(47)=acd139(28)*acd139(29)
      acd139(48)=acd139(30)*acd139(31)
      acd139(49)=acd139(32)*acd139(33)
      acd139(40)=acd139(41)+acd139(40)+acd139(49)+acd139(48)+acd139(47)+acd139(&
      &46)+acd139(45)+acd139(44)+acd139(43)+acd139(42)
      acd139(40)=acd139(7)*acd139(40)
      acd139(41)=acd139(2)*acd139(1)
      brack=acd139(39)+acd139(40)+2.0_ki*acd139(41)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd139h5
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
      qshift = -k3+k2-k7-k4
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
!---#[ subroutine reconstruct_d139:
   subroutine     reconstruct_d139(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_139:
      coeffs%coeffs_139%c0 = derivative(czip)
      coeffs%coeffs_139%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_139%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_139%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_139%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_139%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_139%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_139%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_139%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_139%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_139%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_139%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_139%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_139%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_139%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_139:
   end subroutine reconstruct_d139
!---#] subroutine reconstruct_d139:
end module     p0_dbaru_epnebbbarg_d139h5l1d
