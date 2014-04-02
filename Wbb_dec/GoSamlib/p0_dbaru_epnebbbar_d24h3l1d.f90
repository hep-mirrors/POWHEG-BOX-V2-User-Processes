module     p0_dbaru_epnebbbar_d24h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity3d24h3l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d24
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd24h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd24
      complex(ki) :: brack
      acd24(1)=dotproduct(k2,qshift)
      acd24(2)=abb24(15)
      acd24(3)=dotproduct(l5,qshift)
      acd24(4)=abb24(14)
      acd24(5)=dotproduct(l6,qshift)
      acd24(6)=dotproduct(qshift,spvak1l5)
      acd24(7)=abb24(8)
      acd24(8)=dotproduct(qshift,spvak1l6)
      acd24(9)=abb24(12)
      acd24(10)=dotproduct(qshift,spvak2l5)
      acd24(11)=abb24(10)
      acd24(12)=dotproduct(qshift,spvak2l6)
      acd24(13)=abb24(13)
      acd24(14)=dotproduct(qshift,spvak4l5)
      acd24(15)=abb24(9)
      acd24(16)=dotproduct(qshift,spvak4l6)
      acd24(17)=abb24(18)
      acd24(18)=abb24(7)
      acd24(19)=-acd24(16)*acd24(17)
      acd24(20)=-acd24(14)*acd24(15)
      acd24(21)=-acd24(12)*acd24(13)
      acd24(22)=-acd24(10)*acd24(11)
      acd24(23)=-acd24(8)*acd24(9)
      acd24(24)=-acd24(6)*acd24(7)
      acd24(25)=-acd24(1)*acd24(2)
      acd24(26)=-acd24(5)-acd24(3)
      acd24(26)=acd24(4)*acd24(26)
      brack=acd24(18)+acd24(19)+acd24(20)+acd24(21)+acd24(22)+acd24(23)+acd24(2&
      &4)+acd24(25)+acd24(26)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd24h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd24
      complex(ki) :: brack
      acd24(1)=k2(iv1)
      acd24(2)=abb24(15)
      acd24(3)=l5(iv1)
      acd24(4)=abb24(14)
      acd24(5)=l6(iv1)
      acd24(6)=spvak1l5(iv1)
      acd24(7)=abb24(8)
      acd24(8)=spvak1l6(iv1)
      acd24(9)=abb24(12)
      acd24(10)=spvak2l5(iv1)
      acd24(11)=abb24(10)
      acd24(12)=spvak2l6(iv1)
      acd24(13)=abb24(13)
      acd24(14)=spvak4l5(iv1)
      acd24(15)=abb24(9)
      acd24(16)=spvak4l6(iv1)
      acd24(17)=abb24(18)
      acd24(18)=acd24(16)*acd24(17)
      acd24(19)=acd24(14)*acd24(15)
      acd24(20)=acd24(12)*acd24(13)
      acd24(21)=acd24(10)*acd24(11)
      acd24(22)=acd24(8)*acd24(9)
      acd24(23)=acd24(6)*acd24(7)
      acd24(24)=acd24(1)*acd24(2)
      acd24(25)=acd24(5)+acd24(3)
      acd24(25)=acd24(4)*acd24(25)
      brack=acd24(18)+acd24(19)+acd24(20)+acd24(21)+acd24(22)+acd24(23)+acd24(2&
      &4)+acd24(25)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd24h3
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
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
      t1 = 0
      if(deg.eq.0) then
         numerator = cond(epspow.eq.t1,brack_1,Q,mu2)
         return
      end if
      if(deg.eq.1) then
         numerator = cond(epspow.eq.t1,brack_2,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d24:
   subroutine     reconstruct_d24(coeffs)
      use p0_dbaru_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_24:
      coeffs%coeffs_24%c0 = derivative(czip)
      coeffs%coeffs_24%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_24%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_24%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_24%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_24:
   end subroutine reconstruct_d24
!---#] subroutine reconstruct_d24:
end module     p0_dbaru_epnebbbar_d24h3l1d
