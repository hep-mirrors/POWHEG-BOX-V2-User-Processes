module     p5_csbar_epnebbbar_d25h2l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p5_csbar_epnebbbar/helicity2d25h2l1d.f90
   ! generator: buildfortran_d.py
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d25
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd25h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd25
      complex(ki) :: brack
      acd25(1)=abb25(9)
      brack=acd25(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd25h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd25
      complex(ki) :: brack
      acd25(1)=k1(iv1)
      acd25(2)=abb25(11)
      acd25(3)=k2(iv1)
      acd25(4)=abb25(14)
      acd25(5)=l5(iv1)
      acd25(6)=l6(iv1)
      acd25(7)=spvak2k1(iv1)
      acd25(8)=abb25(10)
      acd25(9)=spvak2l5(iv1)
      acd25(10)=abb25(19)
      acd25(11)=spvak2l6(iv1)
      acd25(12)=abb25(24)
      acd25(13)=spvak4k1(iv1)
      acd25(14)=abb25(17)
      acd25(15)=spvak4k2(iv1)
      acd25(16)=abb25(22)
      acd25(17)=spvak4l5(iv1)
      acd25(18)=abb25(25)
      acd25(19)=spvak4l6(iv1)
      acd25(20)=abb25(18)
      acd25(21)=spval5k1(iv1)
      acd25(22)=abb25(15)
      acd25(23)=spval5l6(iv1)
      acd25(24)=abb25(16)
      acd25(25)=acd25(23)*acd25(24)
      acd25(26)=acd25(21)*acd25(22)
      acd25(27)=acd25(19)*acd25(20)
      acd25(28)=acd25(17)*acd25(18)
      acd25(29)=acd25(15)*acd25(16)
      acd25(30)=acd25(13)*acd25(14)
      acd25(31)=acd25(11)*acd25(12)
      acd25(32)=acd25(9)*acd25(10)
      acd25(33)=acd25(7)*acd25(8)
      acd25(34)=acd25(3)*acd25(4)
      acd25(35)=-acd25(1)+acd25(6)+acd25(5)
      acd25(35)=acd25(2)*acd25(35)
      brack=acd25(25)+acd25(26)+acd25(27)+acd25(28)+acd25(29)+acd25(30)+acd25(3&
      &1)+acd25(32)+acd25(33)+acd25(34)+acd25(35)
   end function brack_2
!---#] function brack_2:
!---#[ function derivative:
   function derivative(mu2,i1) result(numerator)
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd25h2
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
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
!---#[ subroutine reconstruct_d25:
   subroutine     reconstruct_d25(coeffs)
      use p5_csbar_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 1 case :
      !---[# reconstruct coeffs%coeffs_25:
      coeffs%coeffs_25%c0 = derivative(czip)
      coeffs%coeffs_25%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_25%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_25%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_25%c1(4,1) = -derivative(czip,4)
      !---#] reconstruct coeffs%coeffs_25:
   end subroutine reconstruct_d25
!---#] subroutine reconstruct_d25:
end module     p5_csbar_epnebbbar_d25h2l1d
