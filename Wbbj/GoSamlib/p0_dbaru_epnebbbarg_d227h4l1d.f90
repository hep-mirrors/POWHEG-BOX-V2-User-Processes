module     p0_dbaru_epnebbbarg_d227h4l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity4d227h4l1d.f90
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
   public :: derivative , reconstruct_d227
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd227h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd227
      complex(ki) :: brack
      acd227(1)=dotproduct(k2,qshift)
      acd227(2)=dotproduct(qshift,spvak7k2)
      acd227(3)=abb227(44)
      acd227(4)=abb227(29)
      acd227(5)=dotproduct(k3,qshift)
      acd227(6)=dotproduct(k4,qshift)
      acd227(7)=dotproduct(k7,qshift)
      acd227(8)=abb227(16)
      acd227(9)=dotproduct(qshift,qshift)
      acd227(10)=abb227(14)
      acd227(11)=dotproduct(qshift,spvak1k2)
      acd227(12)=abb227(18)
      acd227(13)=dotproduct(qshift,spvak1k3)
      acd227(14)=abb227(15)
      acd227(15)=dotproduct(qshift,spvak4k2)
      acd227(16)=abb227(12)
      acd227(17)=dotproduct(qshift,spvak4k3)
      acd227(18)=abb227(13)
      acd227(19)=dotproduct(qshift,spval5k2)
      acd227(20)=abb227(40)
      acd227(21)=dotproduct(qshift,spval5k3)
      acd227(22)=abb227(33)
      acd227(23)=dotproduct(qshift,spval6k2)
      acd227(24)=abb227(53)
      acd227(25)=dotproduct(qshift,spval6k3)
      acd227(26)=abb227(26)
      acd227(27)=abb227(20)
      acd227(28)=abb227(11)
      acd227(29)=abb227(25)
      acd227(30)=abb227(10)
      acd227(31)=acd227(12)*acd227(11)
      acd227(32)=acd227(14)*acd227(13)
      acd227(33)=acd227(16)*acd227(15)
      acd227(34)=acd227(18)*acd227(17)
      acd227(35)=acd227(20)*acd227(19)
      acd227(36)=acd227(22)*acd227(21)
      acd227(37)=acd227(24)*acd227(23)
      acd227(38)=acd227(26)*acd227(25)
      acd227(31)=-acd227(27)+acd227(38)+acd227(37)+acd227(36)+acd227(35)+acd227&
      &(34)+acd227(33)+acd227(32)+acd227(31)
      acd227(31)=acd227(2)*acd227(31)
      acd227(32)=acd227(6)-acd227(1)+acd227(5)
      acd227(33)=acd227(3)*acd227(2)
      acd227(33)=acd227(33)-acd227(4)
      acd227(32)=acd227(33)*acd227(32)
      acd227(33)=-acd227(8)*acd227(7)
      acd227(34)=acd227(10)*acd227(9)
      acd227(35)=-acd227(28)*acd227(15)
      acd227(36)=-acd227(29)*acd227(17)
      brack=acd227(30)+acd227(31)+acd227(32)+acd227(33)+acd227(34)+acd227(35)+a&
      &cd227(36)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd227h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(50) :: acd227
      complex(ki) :: brack
      acd227(1)=k2(iv1)
      acd227(2)=dotproduct(qshift,spvak7k2)
      acd227(3)=abb227(44)
      acd227(4)=abb227(29)
      acd227(5)=k3(iv1)
      acd227(6)=k4(iv1)
      acd227(7)=k7(iv1)
      acd227(8)=abb227(16)
      acd227(9)=qshift(iv1)
      acd227(10)=abb227(14)
      acd227(11)=spvak7k2(iv1)
      acd227(12)=dotproduct(k2,qshift)
      acd227(13)=dotproduct(k3,qshift)
      acd227(14)=dotproduct(k4,qshift)
      acd227(15)=dotproduct(qshift,spvak1k2)
      acd227(16)=abb227(18)
      acd227(17)=dotproduct(qshift,spvak1k3)
      acd227(18)=abb227(15)
      acd227(19)=dotproduct(qshift,spvak4k2)
      acd227(20)=abb227(12)
      acd227(21)=dotproduct(qshift,spvak4k3)
      acd227(22)=abb227(13)
      acd227(23)=dotproduct(qshift,spval5k2)
      acd227(24)=abb227(40)
      acd227(25)=dotproduct(qshift,spval5k3)
      acd227(26)=abb227(33)
      acd227(27)=dotproduct(qshift,spval6k2)
      acd227(28)=abb227(53)
      acd227(29)=dotproduct(qshift,spval6k3)
      acd227(30)=abb227(26)
      acd227(31)=abb227(20)
      acd227(32)=spvak1k2(iv1)
      acd227(33)=spvak1k3(iv1)
      acd227(34)=spvak4k2(iv1)
      acd227(35)=abb227(11)
      acd227(36)=spvak4k3(iv1)
      acd227(37)=abb227(25)
      acd227(38)=spval5k2(iv1)
      acd227(39)=spval5k3(iv1)
      acd227(40)=spval6k2(iv1)
      acd227(41)=spval6k3(iv1)
      acd227(42)=-acd227(14)-acd227(13)+acd227(12)
      acd227(42)=acd227(42)*acd227(3)
      acd227(43)=-acd227(15)*acd227(16)
      acd227(44)=-acd227(17)*acd227(18)
      acd227(45)=-acd227(19)*acd227(20)
      acd227(46)=-acd227(21)*acd227(22)
      acd227(47)=-acd227(23)*acd227(24)
      acd227(48)=-acd227(25)*acd227(26)
      acd227(49)=-acd227(27)*acd227(28)
      acd227(50)=-acd227(29)*acd227(30)
      acd227(42)=acd227(42)+acd227(31)+acd227(50)+acd227(49)+acd227(48)+acd227(&
      &47)+acd227(46)+acd227(45)+acd227(44)+acd227(43)
      acd227(42)=acd227(11)*acd227(42)
      acd227(43)=-acd227(34)*acd227(20)
      acd227(44)=-acd227(36)*acd227(22)
      acd227(45)=-acd227(32)*acd227(16)
      acd227(46)=-acd227(33)*acd227(18)
      acd227(47)=-acd227(38)*acd227(24)
      acd227(48)=-acd227(39)*acd227(26)
      acd227(49)=-acd227(40)*acd227(28)
      acd227(50)=-acd227(41)*acd227(30)
      acd227(43)=acd227(50)+acd227(49)+acd227(48)+acd227(47)+acd227(46)+acd227(&
      &45)+acd227(44)+acd227(43)
      acd227(43)=acd227(2)*acd227(43)
      acd227(44)=-acd227(6)+acd227(1)-acd227(5)
      acd227(45)=acd227(3)*acd227(2)
      acd227(45)=acd227(45)-acd227(4)
      acd227(44)=acd227(45)*acd227(44)
      acd227(45)=acd227(8)*acd227(7)
      acd227(46)=acd227(10)*acd227(9)
      acd227(47)=acd227(35)*acd227(34)
      acd227(48)=acd227(37)*acd227(36)
      brack=acd227(42)+acd227(43)+acd227(44)+acd227(45)-2.0_ki*acd227(46)+acd22&
      &7(47)+acd227(48)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd227h4
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(45) :: acd227
      complex(ki) :: brack
      acd227(1)=d(iv1,iv2)
      acd227(2)=abb227(14)
      acd227(3)=k2(iv1)
      acd227(4)=spvak7k2(iv2)
      acd227(5)=abb227(44)
      acd227(6)=k2(iv2)
      acd227(7)=spvak7k2(iv1)
      acd227(8)=k3(iv1)
      acd227(9)=k3(iv2)
      acd227(10)=k4(iv1)
      acd227(11)=k4(iv2)
      acd227(12)=spvak1k2(iv2)
      acd227(13)=abb227(18)
      acd227(14)=spvak1k3(iv2)
      acd227(15)=abb227(15)
      acd227(16)=spvak4k2(iv2)
      acd227(17)=abb227(12)
      acd227(18)=spvak4k3(iv2)
      acd227(19)=abb227(13)
      acd227(20)=spval5k2(iv2)
      acd227(21)=abb227(40)
      acd227(22)=spval5k3(iv2)
      acd227(23)=abb227(33)
      acd227(24)=spval6k2(iv2)
      acd227(25)=abb227(53)
      acd227(26)=spval6k3(iv2)
      acd227(27)=abb227(26)
      acd227(28)=spvak1k2(iv1)
      acd227(29)=spvak1k3(iv1)
      acd227(30)=spvak4k2(iv1)
      acd227(31)=spvak4k3(iv1)
      acd227(32)=spval5k2(iv1)
      acd227(33)=spval5k3(iv1)
      acd227(34)=spval6k2(iv1)
      acd227(35)=spval6k3(iv1)
      acd227(36)=acd227(27)*acd227(26)
      acd227(37)=acd227(25)*acd227(24)
      acd227(38)=acd227(23)*acd227(22)
      acd227(39)=acd227(21)*acd227(20)
      acd227(40)=acd227(19)*acd227(18)
      acd227(41)=acd227(17)*acd227(16)
      acd227(42)=acd227(15)*acd227(14)
      acd227(43)=acd227(13)*acd227(12)
      acd227(44)=-acd227(6)+acd227(11)+acd227(9)
      acd227(44)=acd227(5)*acd227(44)
      acd227(36)=acd227(44)+acd227(43)+acd227(42)+acd227(41)+acd227(40)+acd227(&
      &39)+acd227(38)+acd227(36)+acd227(37)
      acd227(36)=acd227(7)*acd227(36)
      acd227(37)=acd227(27)*acd227(35)
      acd227(38)=acd227(25)*acd227(34)
      acd227(39)=acd227(23)*acd227(33)
      acd227(40)=acd227(21)*acd227(32)
      acd227(41)=acd227(19)*acd227(31)
      acd227(42)=acd227(17)*acd227(30)
      acd227(43)=acd227(15)*acd227(29)
      acd227(44)=acd227(13)*acd227(28)
      acd227(45)=-acd227(3)+acd227(10)+acd227(8)
      acd227(45)=acd227(5)*acd227(45)
      acd227(37)=acd227(45)+acd227(44)+acd227(43)+acd227(42)+acd227(41)+acd227(&
      &40)+acd227(39)+acd227(37)+acd227(38)
      acd227(37)=acd227(4)*acd227(37)
      acd227(38)=acd227(1)*acd227(2)
      brack=acd227(36)+acd227(37)+2.0_ki*acd227(38)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd227h4
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
      qshift = -k3+k2-k4
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
!---#[ subroutine reconstruct_d227:
   subroutine     reconstruct_d227(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_227:
      coeffs%coeffs_227%c0 = derivative(czip)
      coeffs%coeffs_227%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_227%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_227%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_227%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_227%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_227%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_227%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_227%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_227%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_227%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_227%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_227%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_227%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_227%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_227:
   end subroutine reconstruct_d227
!---#] subroutine reconstruct_d227:
end module     p0_dbaru_epnebbbarg_d227h4l1d
