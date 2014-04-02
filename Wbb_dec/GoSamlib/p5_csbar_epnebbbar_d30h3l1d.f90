module     p5_csbar_epnebbbar_d30h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p5_csbar_epnebbbar/helicity3d30h3l1d.f90
   ! generator: buildfortran_d.py
   use p5_csbar_epnebbbar_config, only: ki
   use p5_csbar_epnebbbar_util, only: cond, d => metric_tensor
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
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd30h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(23) :: acd30
      complex(ki) :: brack
      acd30(1)=dotproduct(k2,qshift)
      acd30(2)=abb30(22)
      acd30(3)=dotproduct(l5,qshift)
      acd30(4)=abb30(27)
      acd30(5)=dotproduct(qshift,spvak2k1)
      acd30(6)=dotproduct(qshift,spvak2l6)
      acd30(7)=abb30(8)
      acd30(8)=dotproduct(qshift,spvak4l5)
      acd30(9)=abb30(30)
      acd30(10)=abb30(10)
      acd30(11)=dotproduct(qshift,spvak4k1)
      acd30(12)=abb30(23)
      acd30(13)=abb30(26)
      acd30(14)=dotproduct(qshift,spvak2l5)
      acd30(15)=abb30(18)
      acd30(16)=abb30(14)
      acd30(17)=abb30(21)
      acd30(18)=acd30(9)*acd30(14)
      acd30(19)=acd30(6)*acd30(12)
      acd30(18)=acd30(19)-acd30(16)+acd30(18)
      acd30(18)=acd30(11)*acd30(18)
      acd30(19)=-acd30(8)*acd30(9)
      acd30(20)=acd30(6)*acd30(7)
      acd30(19)=acd30(20)-acd30(10)+acd30(19)
      acd30(19)=acd30(5)*acd30(19)
      acd30(20)=-acd30(3)*acd30(4)
      acd30(21)=-acd30(1)*acd30(2)
      acd30(22)=-acd30(14)*acd30(15)
      acd30(23)=-acd30(8)*acd30(13)
      brack=acd30(17)+acd30(18)+acd30(19)+acd30(20)+acd30(21)+acd30(22)+acd30(2&
      &3)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd30h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd30
      complex(ki) :: brack
      acd30(1)=k2(iv1)
      acd30(2)=abb30(22)
      acd30(3)=l5(iv1)
      acd30(4)=abb30(27)
      acd30(5)=spvak2k1(iv1)
      acd30(6)=dotproduct(qshift,spvak2l6)
      acd30(7)=abb30(8)
      acd30(8)=dotproduct(qshift,spvak4l5)
      acd30(9)=abb30(30)
      acd30(10)=abb30(10)
      acd30(11)=spvak2l6(iv1)
      acd30(12)=dotproduct(qshift,spvak2k1)
      acd30(13)=dotproduct(qshift,spvak4k1)
      acd30(14)=abb30(23)
      acd30(15)=spvak4l5(iv1)
      acd30(16)=abb30(26)
      acd30(17)=spvak2l5(iv1)
      acd30(18)=abb30(18)
      acd30(19)=spvak4k1(iv1)
      acd30(20)=dotproduct(qshift,spvak2l5)
      acd30(21)=abb30(14)
      acd30(22)=-acd30(13)*acd30(17)
      acd30(23)=acd30(12)*acd30(15)
      acd30(24)=-acd30(19)*acd30(20)
      acd30(25)=acd30(5)*acd30(8)
      acd30(22)=acd30(25)+acd30(24)+acd30(22)+acd30(23)
      acd30(22)=acd30(9)*acd30(22)
      acd30(23)=-acd30(13)*acd30(14)
      acd30(24)=-acd30(7)*acd30(12)
      acd30(23)=acd30(24)+acd30(23)
      acd30(23)=acd30(11)*acd30(23)
      acd30(24)=acd30(3)*acd30(4)
      acd30(25)=acd30(1)*acd30(2)
      acd30(26)=acd30(17)*acd30(18)
      acd30(27)=acd30(15)*acd30(16)
      acd30(28)=-acd30(6)*acd30(14)
      acd30(28)=acd30(21)+acd30(28)
      acd30(28)=acd30(19)*acd30(28)
      acd30(29)=-acd30(6)*acd30(7)
      acd30(29)=acd30(10)+acd30(29)
      acd30(29)=acd30(5)*acd30(29)
      brack=acd30(22)+acd30(23)+acd30(24)+acd30(25)+acd30(26)+acd30(27)+acd30(2&
      &8)+acd30(29)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_csbar_epnebbbar_model
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_color
      use p5_csbar_epnebbbar_abbrevd30h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(17) :: acd30
      complex(ki) :: brack
      acd30(1)=spvak2k1(iv1)
      acd30(2)=spvak2l6(iv2)
      acd30(3)=abb30(8)
      acd30(4)=spvak4l5(iv2)
      acd30(5)=abb30(30)
      acd30(6)=spvak2k1(iv2)
      acd30(7)=spvak2l6(iv1)
      acd30(8)=spvak4l5(iv1)
      acd30(9)=spvak4k1(iv2)
      acd30(10)=abb30(23)
      acd30(11)=spvak4k1(iv1)
      acd30(12)=spvak2l5(iv1)
      acd30(13)=spvak2l5(iv2)
      acd30(14)=acd30(11)*acd30(13)
      acd30(15)=acd30(9)*acd30(12)
      acd30(16)=-acd30(6)*acd30(8)
      acd30(17)=-acd30(1)*acd30(4)
      acd30(14)=acd30(17)+acd30(16)+acd30(14)+acd30(15)
      acd30(14)=acd30(5)*acd30(14)
      acd30(15)=acd30(9)*acd30(10)
      acd30(16)=acd30(3)*acd30(6)
      acd30(15)=acd30(15)+acd30(16)
      acd30(15)=acd30(7)*acd30(15)
      acd30(16)=acd30(10)*acd30(11)
      acd30(17)=acd30(1)*acd30(3)
      acd30(16)=acd30(17)+acd30(16)
      acd30(16)=acd30(2)*acd30(16)
      brack=acd30(14)+acd30(15)+acd30(16)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_csbar_epnebbbar_globalsl1, only: epspow
      use p5_csbar_epnebbbar_kinematics
      use p5_csbar_epnebbbar_abbrevd30h3
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
      use p5_csbar_epnebbbar_groups, only: tensrec_info_group4
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
end module     p5_csbar_epnebbbar_d30h3l1d
