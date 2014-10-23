module     p0_dbaru_epnebbbarg_d99h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d99h4l1d.f90
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
   public :: derivative , reconstruct_d99
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd99h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(49) :: acd99
      complex(ki) :: brack
      acd99(1)=dotproduct(k2,qshift)
      acd99(2)=dotproduct(qshift,spval6k2)
      acd99(3)=abb99(38)
      acd99(4)=abb99(29)
      acd99(5)=dotproduct(k3,qshift)
      acd99(6)=dotproduct(qshift,spvak4k2)
      acd99(7)=abb99(34)
      acd99(8)=abb99(51)
      acd99(9)=dotproduct(k4,qshift)
      acd99(10)=dotproduct(qshift,qshift)
      acd99(11)=abb99(19)
      acd99(12)=abb99(16)
      acd99(13)=dotproduct(qshift,spvak4k3)
      acd99(14)=abb99(27)
      acd99(15)=abb99(26)
      acd99(16)=abb99(11)
      acd99(17)=abb99(17)
      acd99(18)=abb99(12)
      acd99(19)=dotproduct(qshift,spvak1k2)
      acd99(20)=abb99(18)
      acd99(21)=dotproduct(qshift,spvak1k3)
      acd99(22)=abb99(20)
      acd99(23)=dotproduct(qshift,spvak3k2)
      acd99(24)=abb99(13)
      acd99(25)=abb99(14)
      acd99(26)=dotproduct(qshift,spval5k2)
      acd99(27)=abb99(40)
      acd99(28)=dotproduct(qshift,spval6k3)
      acd99(29)=abb99(25)
      acd99(30)=dotproduct(qshift,spval6l5)
      acd99(31)=abb99(15)
      acd99(32)=dotproduct(qshift,spval6k7)
      acd99(33)=abb99(37)
      acd99(34)=dotproduct(qshift,spvak7k2)
      acd99(35)=abb99(31)
      acd99(36)=abb99(21)
      acd99(37)=acd99(5)+acd99(9)
      acd99(38)=-acd99(7)*acd99(37)
      acd99(39)=acd99(13)*acd99(17)
      acd99(40)=acd99(6)*acd99(16)
      acd99(38)=acd99(40)+acd99(39)-acd99(18)+acd99(38)
      acd99(38)=acd99(6)*acd99(38)
      acd99(39)=-acd99(1)+acd99(37)
      acd99(39)=acd99(3)*acd99(39)
      acd99(40)=acd99(13)*acd99(14)
      acd99(41)=acd99(6)*acd99(12)
      acd99(39)=acd99(41)+acd99(40)-acd99(15)+acd99(39)
      acd99(39)=acd99(2)*acd99(39)
      acd99(37)=acd99(8)*acd99(37)
      acd99(40)=-acd99(34)*acd99(35)
      acd99(41)=-acd99(32)*acd99(33)
      acd99(42)=-acd99(30)*acd99(31)
      acd99(43)=-acd99(28)*acd99(29)
      acd99(44)=-acd99(26)*acd99(27)
      acd99(45)=-acd99(21)*acd99(22)
      acd99(46)=-acd99(19)*acd99(20)
      acd99(47)=acd99(10)*acd99(11)
      acd99(48)=-acd99(1)*acd99(4)
      acd99(49)=acd99(23)*acd99(24)
      acd99(49)=-acd99(25)+acd99(49)
      acd99(49)=acd99(13)*acd99(49)
      brack=acd99(36)+acd99(37)+acd99(38)+acd99(39)+acd99(40)+acd99(41)+acd99(4&
      &2)+acd99(43)+acd99(44)+acd99(45)+acd99(46)+acd99(47)+acd99(48)+acd99(49)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd99h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(58) :: acd99
      complex(ki) :: brack
      acd99(1)=k2(iv1)
      acd99(2)=dotproduct(qshift,spval6k2)
      acd99(3)=abb99(38)
      acd99(4)=abb99(29)
      acd99(5)=k3(iv1)
      acd99(6)=dotproduct(qshift,spvak4k2)
      acd99(7)=abb99(34)
      acd99(8)=abb99(51)
      acd99(9)=k4(iv1)
      acd99(10)=qshift(iv1)
      acd99(11)=abb99(19)
      acd99(12)=spval6k2(iv1)
      acd99(13)=dotproduct(k2,qshift)
      acd99(14)=dotproduct(k3,qshift)
      acd99(15)=dotproduct(k4,qshift)
      acd99(16)=abb99(16)
      acd99(17)=dotproduct(qshift,spvak4k3)
      acd99(18)=abb99(27)
      acd99(19)=abb99(26)
      acd99(20)=spvak4k2(iv1)
      acd99(21)=abb99(11)
      acd99(22)=abb99(17)
      acd99(23)=abb99(12)
      acd99(24)=spvak1k2(iv1)
      acd99(25)=abb99(18)
      acd99(26)=spvak1k3(iv1)
      acd99(27)=abb99(20)
      acd99(28)=spvak3k2(iv1)
      acd99(29)=abb99(13)
      acd99(30)=spvak4k3(iv1)
      acd99(31)=dotproduct(qshift,spvak3k2)
      acd99(32)=abb99(14)
      acd99(33)=spval5k2(iv1)
      acd99(34)=abb99(40)
      acd99(35)=spval6k3(iv1)
      acd99(36)=abb99(25)
      acd99(37)=spval6l5(iv1)
      acd99(38)=abb99(15)
      acd99(39)=spval6k7(iv1)
      acd99(40)=abb99(37)
      acd99(41)=spvak7k2(iv1)
      acd99(42)=abb99(31)
      acd99(43)=acd99(17)*acd99(22)
      acd99(44)=acd99(14)+acd99(15)
      acd99(45)=-acd99(7)*acd99(44)
      acd99(46)=acd99(6)*acd99(21)
      acd99(47)=acd99(2)*acd99(16)
      acd99(43)=acd99(47)+2.0_ki*acd99(46)+acd99(45)-acd99(23)+acd99(43)
      acd99(43)=acd99(20)*acd99(43)
      acd99(45)=acd99(29)*acd99(31)
      acd99(46)=acd99(2)*acd99(18)
      acd99(45)=acd99(46)-acd99(32)+acd99(45)
      acd99(45)=acd99(30)*acd99(45)
      acd99(46)=acd99(30)*acd99(22)
      acd99(47)=acd99(5)+acd99(9)
      acd99(48)=-acd99(7)*acd99(47)
      acd99(46)=acd99(46)+acd99(48)
      acd99(46)=acd99(6)*acd99(46)
      acd99(48)=acd99(17)*acd99(18)
      acd99(49)=acd99(6)*acd99(16)
      acd99(48)=acd99(49)-acd99(19)+acd99(48)
      acd99(48)=acd99(12)*acd99(48)
      acd99(49)=-acd99(1)+acd99(47)
      acd99(49)=acd99(2)*acd99(49)
      acd99(44)=-acd99(13)+acd99(44)
      acd99(44)=acd99(12)*acd99(44)
      acd99(44)=acd99(49)+acd99(44)
      acd99(44)=acd99(3)*acd99(44)
      acd99(47)=acd99(8)*acd99(47)
      acd99(49)=-acd99(41)*acd99(42)
      acd99(50)=-acd99(39)*acd99(40)
      acd99(51)=-acd99(37)*acd99(38)
      acd99(52)=-acd99(35)*acd99(36)
      acd99(53)=-acd99(33)*acd99(34)
      acd99(54)=-acd99(26)*acd99(27)
      acd99(55)=-acd99(24)*acd99(25)
      acd99(56)=acd99(10)*acd99(11)
      acd99(57)=-acd99(1)*acd99(4)
      acd99(58)=acd99(17)*acd99(29)*acd99(28)
      brack=acd99(43)+acd99(44)+acd99(45)+acd99(46)+acd99(47)+acd99(48)+acd99(4&
      &9)+acd99(50)+acd99(51)+acd99(52)+acd99(53)+acd99(54)+acd99(55)+2.0_ki*ac&
      &d99(56)+acd99(57)+acd99(58)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd99h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd99
      complex(ki) :: brack
      acd99(1)=d(iv1,iv2)
      acd99(2)=abb99(19)
      acd99(3)=k2(iv1)
      acd99(4)=spval6k2(iv2)
      acd99(5)=abb99(38)
      acd99(6)=k2(iv2)
      acd99(7)=spval6k2(iv1)
      acd99(8)=k3(iv1)
      acd99(9)=spvak4k2(iv2)
      acd99(10)=abb99(34)
      acd99(11)=k3(iv2)
      acd99(12)=spvak4k2(iv1)
      acd99(13)=k4(iv1)
      acd99(14)=k4(iv2)
      acd99(15)=abb99(16)
      acd99(16)=spvak4k3(iv2)
      acd99(17)=abb99(27)
      acd99(18)=spvak4k3(iv1)
      acd99(19)=abb99(11)
      acd99(20)=abb99(17)
      acd99(21)=spvak3k2(iv1)
      acd99(22)=abb99(13)
      acd99(23)=spvak3k2(iv2)
      acd99(24)=acd99(18)*acd99(20)
      acd99(25)=acd99(8)+acd99(13)
      acd99(26)=-acd99(10)*acd99(25)
      acd99(27)=acd99(12)*acd99(19)
      acd99(24)=2.0_ki*acd99(27)+acd99(24)+acd99(26)
      acd99(24)=acd99(9)*acd99(24)
      acd99(26)=acd99(18)*acd99(23)
      acd99(27)=acd99(16)*acd99(21)
      acd99(26)=acd99(27)+acd99(26)
      acd99(26)=acd99(22)*acd99(26)
      acd99(27)=acd99(16)*acd99(20)
      acd99(28)=acd99(11)+acd99(14)
      acd99(29)=-acd99(10)*acd99(28)
      acd99(27)=acd99(27)+acd99(29)
      acd99(27)=acd99(12)*acd99(27)
      acd99(29)=acd99(16)*acd99(17)
      acd99(30)=acd99(9)*acd99(15)
      acd99(29)=acd99(29)+acd99(30)
      acd99(29)=acd99(7)*acd99(29)
      acd99(30)=acd99(18)*acd99(17)
      acd99(31)=acd99(12)*acd99(15)
      acd99(30)=acd99(30)+acd99(31)
      acd99(30)=acd99(4)*acd99(30)
      acd99(28)=-acd99(6)+acd99(28)
      acd99(28)=acd99(7)*acd99(28)
      acd99(25)=-acd99(3)+acd99(25)
      acd99(25)=acd99(4)*acd99(25)
      acd99(25)=acd99(28)+acd99(25)
      acd99(25)=acd99(5)*acd99(25)
      acd99(28)=acd99(1)*acd99(2)
      brack=acd99(24)+acd99(25)+acd99(26)+acd99(27)+2.0_ki*acd99(28)+acd99(29)+&
      &acd99(30)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd99h4
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
      qshift = -k7-k6-k5
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
!---#[ subroutine reconstruct_d99:
   subroutine     reconstruct_d99(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_99:
      coeffs%coeffs_99%c0 = derivative(czip)
      coeffs%coeffs_99%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_99%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_99%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_99%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_99%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_99%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_99%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_99%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_99%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_99%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_99%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_99%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_99%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_99%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_99:
   end subroutine reconstruct_d99
!---#] subroutine reconstruct_d99:
end module     p0_dbaru_epnebbbarg_d99h4l1d
