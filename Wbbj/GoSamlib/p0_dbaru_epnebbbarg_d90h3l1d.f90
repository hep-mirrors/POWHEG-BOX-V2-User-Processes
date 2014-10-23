module     p0_dbaru_epnebbbarg_d90h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity3d90h3l1d.f90
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
   public :: derivative , reconstruct_d90
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd90h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd90
      complex(ki) :: brack
      acd90(1)=abb90(25)
      brack=acd90(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd90h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd90
      complex(ki) :: brack
      acd90(1)=k2(iv1)
      acd90(2)=abb90(14)
      acd90(3)=l5(iv1)
      acd90(4)=abb90(36)
      acd90(5)=spvak2l5(iv1)
      acd90(6)=abb90(13)
      acd90(7)=spval5k2(iv1)
      acd90(8)=abb90(30)
      acd90(9)=spval6k2(iv1)
      acd90(10)=abb90(40)
      acd90(11)=spval6l5(iv1)
      acd90(12)=abb90(33)
      acd90(13)=-acd90(2)*acd90(1)
      acd90(14)=-acd90(4)*acd90(3)
      acd90(15)=-acd90(6)*acd90(5)
      acd90(16)=-acd90(8)*acd90(7)
      acd90(17)=-acd90(10)*acd90(9)
      acd90(18)=-acd90(12)*acd90(11)
      brack=acd90(13)+acd90(14)+acd90(15)+acd90(16)+acd90(17)+acd90(18)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd90h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd90
      complex(ki) :: brack
      acd90(1)=k2(iv1)
      acd90(2)=l5(iv2)
      acd90(3)=abb90(29)
      acd90(4)=spvak2l6(iv2)
      acd90(5)=abb90(16)
      acd90(6)=spval6l5(iv2)
      acd90(7)=abb90(35)
      acd90(8)=k2(iv2)
      acd90(9)=l5(iv1)
      acd90(10)=spvak2l6(iv1)
      acd90(11)=spval6l5(iv1)
      acd90(12)=spval5k2(iv2)
      acd90(13)=abb90(18)
      acd90(14)=spval6k2(iv2)
      acd90(15)=abb90(17)
      acd90(16)=spval5k2(iv1)
      acd90(17)=spval6k2(iv1)
      acd90(18)=spvak2l5(iv1)
      acd90(19)=abb90(19)
      acd90(20)=abb90(15)
      acd90(21)=spvak2l5(iv2)
      acd90(22)=acd90(7)*acd90(11)
      acd90(23)=acd90(3)*acd90(9)
      acd90(24)=acd90(10)*acd90(5)
      acd90(22)=acd90(24)+acd90(22)+acd90(23)
      acd90(22)=acd90(8)*acd90(22)
      acd90(23)=acd90(7)*acd90(6)
      acd90(24)=acd90(3)*acd90(2)
      acd90(25)=acd90(4)*acd90(5)
      acd90(23)=acd90(25)+acd90(23)+acd90(24)
      acd90(23)=acd90(1)*acd90(23)
      acd90(24)=acd90(17)*acd90(20)
      acd90(25)=acd90(16)*acd90(19)
      acd90(24)=acd90(24)+acd90(25)
      acd90(24)=acd90(21)*acd90(24)
      acd90(25)=acd90(14)*acd90(20)
      acd90(26)=acd90(12)*acd90(19)
      acd90(25)=acd90(26)+acd90(25)
      acd90(25)=acd90(18)*acd90(25)
      acd90(26)=acd90(14)*acd90(15)
      acd90(27)=acd90(12)*acd90(13)
      acd90(26)=acd90(26)+acd90(27)
      acd90(26)=acd90(10)*acd90(26)
      acd90(27)=acd90(15)*acd90(17)
      acd90(28)=acd90(13)*acd90(16)
      acd90(27)=acd90(27)+acd90(28)
      acd90(27)=acd90(4)*acd90(27)
      brack=acd90(22)+acd90(23)+acd90(24)+acd90(25)+acd90(26)+acd90(27)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd90h3
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
      qshift = 0
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
!---#[ subroutine reconstruct_d90:
   subroutine     reconstruct_d90(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_90:
      coeffs%coeffs_90%c0 = derivative(czip)
      coeffs%coeffs_90%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_90%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_90%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_90%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_90%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_90%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_90%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_90%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_90%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_90%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_90%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_90%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_90%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_90%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_90:
   end subroutine reconstruct_d90
!---#] subroutine reconstruct_d90:
end module     p0_dbaru_epnebbbarg_d90h3l1d
