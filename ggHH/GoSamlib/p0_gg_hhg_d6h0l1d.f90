module     p0_gg_hhg_d6h0l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity0d6h0l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config, only: ki
   use p0_gg_hhg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d6
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd6
      complex(ki) :: brack
      acd6(1)=dotproduct(k1,qshift)
      acd6(2)=dotproduct(qshift,spvak2k5)
      acd6(3)=abb6(10)
      acd6(4)=dotproduct(k5,qshift)
      acd6(5)=abb6(16)
      acd6(6)=dotproduct(qshift,qshift)
      acd6(7)=abb6(14)
      acd6(8)=abb6(19)
      acd6(9)=dotproduct(qshift,spvak1k2)
      acd6(10)=abb6(8)
      acd6(11)=abb6(18)
      acd6(12)=dotproduct(qshift,spvak1k5)
      acd6(13)=abb6(9)
      acd6(14)=abb6(11)
      acd6(15)=acd6(9)*acd6(10)
      acd6(16)=acd6(1)+acd6(4)
      acd6(16)=acd6(3)*acd6(16)
      acd6(17)=acd6(2)*acd6(8)
      acd6(15)=acd6(17)+acd6(16)-acd6(11)+acd6(15)
      acd6(15)=acd6(2)*acd6(15)
      acd6(16)=-acd6(12)*acd6(13)
      acd6(17)=acd6(6)*acd6(7)
      acd6(18)=-acd6(4)*acd6(5)
      brack=acd6(14)+acd6(15)+acd6(16)+acd6(17)+acd6(18)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(22) :: acd6
      complex(ki) :: brack
      acd6(1)=k1(iv1)
      acd6(2)=dotproduct(qshift,spvak2k5)
      acd6(3)=abb6(10)
      acd6(4)=k5(iv1)
      acd6(5)=abb6(16)
      acd6(6)=qshift(iv1)
      acd6(7)=abb6(14)
      acd6(8)=spvak2k5(iv1)
      acd6(9)=dotproduct(k1,qshift)
      acd6(10)=dotproduct(k5,qshift)
      acd6(11)=abb6(19)
      acd6(12)=dotproduct(qshift,spvak1k2)
      acd6(13)=abb6(8)
      acd6(14)=abb6(18)
      acd6(15)=spvak1k2(iv1)
      acd6(16)=spvak1k5(iv1)
      acd6(17)=abb6(9)
      acd6(18)=acd6(13)*acd6(12)
      acd6(19)=acd6(10)+acd6(9)
      acd6(19)=acd6(3)*acd6(19)
      acd6(20)=acd6(2)*acd6(11)
      acd6(18)=2.0_ki*acd6(20)+acd6(19)-acd6(14)+acd6(18)
      acd6(18)=acd6(8)*acd6(18)
      acd6(19)=acd6(13)*acd6(15)
      acd6(20)=acd6(1)+acd6(4)
      acd6(20)=acd6(3)*acd6(20)
      acd6(19)=acd6(19)+acd6(20)
      acd6(19)=acd6(2)*acd6(19)
      acd6(20)=-acd6(16)*acd6(17)
      acd6(21)=acd6(6)*acd6(7)
      acd6(22)=-acd6(4)*acd6(5)
      brack=acd6(18)+acd6(19)+acd6(20)+2.0_ki*acd6(21)+acd6(22)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(17) :: acd6
      complex(ki) :: brack
      acd6(1)=d(iv1,iv2)
      acd6(2)=abb6(14)
      acd6(3)=k1(iv1)
      acd6(4)=spvak2k5(iv2)
      acd6(5)=abb6(10)
      acd6(6)=k1(iv2)
      acd6(7)=spvak2k5(iv1)
      acd6(8)=k5(iv1)
      acd6(9)=k5(iv2)
      acd6(10)=abb6(19)
      acd6(11)=spvak1k2(iv2)
      acd6(12)=abb6(8)
      acd6(13)=spvak1k2(iv1)
      acd6(14)=acd6(9)+acd6(6)
      acd6(14)=acd6(14)*acd6(7)
      acd6(15)=acd6(8)+acd6(3)
      acd6(15)=acd6(15)*acd6(4)
      acd6(14)=acd6(15)+acd6(14)
      acd6(14)=acd6(5)*acd6(14)
      acd6(15)=acd6(2)*acd6(1)
      acd6(16)=acd6(10)*acd6(7)*acd6(4)
      acd6(15)=acd6(15)+acd6(16)
      acd6(16)=acd6(11)*acd6(7)
      acd6(17)=acd6(13)*acd6(4)
      acd6(16)=acd6(17)+acd6(16)
      acd6(16)=acd6(12)*acd6(16)
      brack=acd6(14)+2.0_ki*acd6(15)+acd6(16)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_color
      use p0_gg_hhg_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd6
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_gg_hhg_globalsl1, only: epspow
      use p0_gg_hhg_kinematics
      use p0_gg_hhg_abbrevd6h0
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
      qshift = -k2
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
!---#[ subroutine reconstruct_d6:
   subroutine     reconstruct_d6(coeffs)
      use p0_gg_hhg_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_6:
      coeffs%coeffs_6%c0 = derivative(czip)
      coeffs%coeffs_6%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_6%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_6%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_6%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_6%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_6%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_6%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_6%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_6%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_6%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_6%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_6%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_6%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_6%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_6%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_6%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_6%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_6%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_6%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_6%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_6%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_6%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_6%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_6%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_6%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_6%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_6%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_6%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_6%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_6%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_6%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_6%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_6%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_6%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_6:
   end subroutine reconstruct_d6
!---#] subroutine reconstruct_d6:
end module     p0_gg_hhg_d6h0l1d
