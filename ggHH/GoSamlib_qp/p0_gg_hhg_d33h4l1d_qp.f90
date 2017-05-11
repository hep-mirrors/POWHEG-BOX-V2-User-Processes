module p0_gg_hhg_d33h4l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d33h4l1d.f90
   ! generator: buildfortran_d.py
   use p0_gg_hhg_config_qp, only: ki
   use p0_gg_hhg_util_qp, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d33
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd33h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd33
      complex(ki) :: brack
      acd33(1)=dotproduct(k2,qshift)
      acd33(2)=dotproduct(qshift,spvak1k2)
      acd33(3)=abb33(10)
      acd33(4)=dotproduct(qshift,qshift)
      acd33(5)=abb33(9)
      acd33(6)=dotproduct(qshift,spvak5k2)
      acd33(7)=abb33(16)
      acd33(8)=abb33(13)
      acd33(9)=dotproduct(qshift,spvak2k5)
      acd33(10)=abb33(6)
      acd33(11)=abb33(8)
      acd33(12)=abb33(11)
      acd33(13)=abb33(7)
      acd33(14)=abb33(14)
      acd33(15)=acd33(3)*acd33(1)
      acd33(16)=-acd33(5)*acd33(4)
      acd33(17)=-acd33(10)*acd33(9)*acd33(6)
      acd33(15)=-acd33(11)+acd33(17)+acd33(15)+acd33(16)
      acd33(15)=acd33(2)*acd33(15)
      acd33(16)=-acd33(7)*acd33(4)
      acd33(16)=-acd33(12)+acd33(16)
      acd33(16)=acd33(6)*acd33(16)
      acd33(17)=acd33(8)*acd33(4)
      acd33(18)=-acd33(13)*acd33(9)
      brack=acd33(14)+acd33(15)+acd33(16)+acd33(17)+acd33(18)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd33h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd33
      complex(ki) :: brack
      acd33(1)=k2(iv1)
      acd33(2)=dotproduct(qshift,spvak1k2)
      acd33(3)=abb33(10)
      acd33(4)=qshift(iv1)
      acd33(5)=abb33(9)
      acd33(6)=dotproduct(qshift,spvak5k2)
      acd33(7)=abb33(16)
      acd33(8)=abb33(13)
      acd33(9)=spvak1k2(iv1)
      acd33(10)=dotproduct(k2,qshift)
      acd33(11)=dotproduct(qshift,qshift)
      acd33(12)=dotproduct(qshift,spvak2k5)
      acd33(13)=abb33(6)
      acd33(14)=abb33(8)
      acd33(15)=spvak5k2(iv1)
      acd33(16)=abb33(11)
      acd33(17)=spvak2k5(iv1)
      acd33(18)=abb33(7)
      acd33(19)=acd33(3)*acd33(1)
      acd33(20)=-acd33(15)*acd33(13)*acd33(12)
      acd33(21)=acd33(6)*acd33(13)
      acd33(22)=-acd33(17)*acd33(21)
      acd33(23)=2.0_ki*acd33(4)
      acd33(24)=-acd33(5)*acd33(23)
      acd33(19)=acd33(24)+acd33(22)+acd33(19)+acd33(20)
      acd33(19)=acd33(2)*acd33(19)
      acd33(20)=-acd33(5)*acd33(11)
      acd33(22)=acd33(3)*acd33(10)
      acd33(21)=-acd33(12)*acd33(21)
      acd33(20)=acd33(21)+acd33(22)-acd33(14)+acd33(20)
      acd33(20)=acd33(9)*acd33(20)
      acd33(21)=-acd33(6)*acd33(7)
      acd33(21)=acd33(8)+acd33(21)
      acd33(21)=acd33(21)*acd33(23)
      acd33(22)=-acd33(17)*acd33(18)
      acd33(23)=-acd33(7)*acd33(11)
      acd33(23)=-acd33(16)+acd33(23)
      acd33(23)=acd33(15)*acd33(23)
      brack=acd33(19)+acd33(20)+acd33(21)+acd33(22)+acd33(23)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd33h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd33
      complex(ki) :: brack
      acd33(1)=d(iv1,iv2)
      acd33(2)=dotproduct(qshift,spvak1k2)
      acd33(3)=abb33(9)
      acd33(4)=dotproduct(qshift,spvak5k2)
      acd33(5)=abb33(16)
      acd33(6)=abb33(13)
      acd33(7)=k2(iv1)
      acd33(8)=spvak1k2(iv2)
      acd33(9)=abb33(10)
      acd33(10)=k2(iv2)
      acd33(11)=spvak1k2(iv1)
      acd33(12)=qshift(iv1)
      acd33(13)=spvak5k2(iv2)
      acd33(14)=qshift(iv2)
      acd33(15)=spvak5k2(iv1)
      acd33(16)=dotproduct(qshift,spvak2k5)
      acd33(17)=abb33(6)
      acd33(18)=spvak2k5(iv2)
      acd33(19)=spvak2k5(iv1)
      acd33(20)=-acd33(15)*acd33(18)
      acd33(21)=-acd33(13)*acd33(19)
      acd33(20)=acd33(20)+acd33(21)
      acd33(20)=acd33(2)*acd33(20)
      acd33(21)=-acd33(13)*acd33(16)
      acd33(22)=-acd33(4)*acd33(18)
      acd33(21)=acd33(21)+acd33(22)
      acd33(21)=acd33(11)*acd33(21)
      acd33(22)=-acd33(15)*acd33(16)
      acd33(23)=-acd33(4)*acd33(19)
      acd33(22)=acd33(22)+acd33(23)
      acd33(22)=acd33(8)*acd33(22)
      acd33(20)=acd33(22)+acd33(20)+acd33(21)
      acd33(20)=acd33(17)*acd33(20)
      acd33(21)=-acd33(15)*acd33(14)
      acd33(22)=-acd33(13)*acd33(12)
      acd33(21)=acd33(21)+acd33(22)
      acd33(21)=acd33(5)*acd33(21)
      acd33(22)=-acd33(4)*acd33(5)
      acd33(23)=-acd33(2)*acd33(3)
      acd33(22)=acd33(23)+acd33(6)+acd33(22)
      acd33(22)=acd33(1)*acd33(22)
      acd33(21)=acd33(21)+acd33(22)
      acd33(22)=acd33(9)*acd33(10)
      acd33(23)=2.0_ki*acd33(3)
      acd33(24)=-acd33(14)*acd33(23)
      acd33(22)=acd33(22)+acd33(24)
      acd33(22)=acd33(11)*acd33(22)
      acd33(24)=acd33(9)*acd33(7)
      acd33(23)=-acd33(12)*acd33(23)
      acd33(23)=acd33(24)+acd33(23)
      acd33(23)=acd33(8)*acd33(23)
      brack=acd33(20)+2.0_ki*acd33(21)+acd33(22)+acd33(23)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd33h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(20) :: acd33
      complex(ki) :: brack
      acd33(1)=d(iv1,iv2)
      acd33(2)=spvak1k2(iv3)
      acd33(3)=abb33(9)
      acd33(4)=spvak5k2(iv3)
      acd33(5)=abb33(16)
      acd33(6)=d(iv1,iv3)
      acd33(7)=spvak1k2(iv2)
      acd33(8)=spvak5k2(iv2)
      acd33(9)=d(iv2,iv3)
      acd33(10)=spvak1k2(iv1)
      acd33(11)=spvak5k2(iv1)
      acd33(12)=spvak2k5(iv3)
      acd33(13)=abb33(6)
      acd33(14)=spvak2k5(iv2)
      acd33(15)=spvak2k5(iv1)
      acd33(16)=-acd33(11)*acd33(9)
      acd33(17)=-acd33(8)*acd33(6)
      acd33(18)=-acd33(4)*acd33(1)
      acd33(16)=acd33(18)+acd33(16)+acd33(17)
      acd33(16)=acd33(5)*acd33(16)
      acd33(17)=-acd33(10)*acd33(9)
      acd33(18)=-acd33(7)*acd33(6)
      acd33(19)=-acd33(2)*acd33(1)
      acd33(17)=acd33(19)+acd33(17)+acd33(18)
      acd33(17)=acd33(3)*acd33(17)
      acd33(16)=acd33(17)+acd33(16)
      acd33(17)=-acd33(8)*acd33(10)
      acd33(18)=-acd33(7)*acd33(11)
      acd33(17)=acd33(17)+acd33(18)
      acd33(17)=acd33(12)*acd33(17)
      acd33(18)=-acd33(10)*acd33(14)
      acd33(19)=-acd33(7)*acd33(15)
      acd33(18)=acd33(18)+acd33(19)
      acd33(18)=acd33(4)*acd33(18)
      acd33(19)=-acd33(11)*acd33(14)
      acd33(20)=-acd33(8)*acd33(15)
      acd33(19)=acd33(19)+acd33(20)
      acd33(19)=acd33(2)*acd33(19)
      acd33(17)=acd33(19)+acd33(18)+acd33(17)
      acd33(17)=acd33(13)*acd33(17)
      brack=2.0_ki*acd33(16)+acd33(17)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd33h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd33
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd33h4_qp
      implicit none
      complex(ki), intent(in) :: mu2
      integer, intent(in), optional :: i1
      integer, intent(in), optional :: i2
      integer, intent(in), optional :: i3
      integer, intent(in), optional :: i4
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
      if(present(i4)) then
          iv4=i4
          deg=4
      else
          iv4=1
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
      if(deg.eq.4) then
         numerator = cond(epspow.eq.t1,brack_5,Q,mu2)
         return
      end if
   end function derivative
!---#] function derivative:
!---#[ subroutine reconstruct_d33:
   subroutine     reconstruct_d33(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group10
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group10), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_33:
      coeffs%coeffs_33%c0 = derivative(czip)
      coeffs%coeffs_33%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_33%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_33%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_33%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_33%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_33%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_33%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_33%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_33%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_33%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_33%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_33%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_33%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_33%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_33%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_33%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_33%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_33%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_33%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_33%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_33%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_33%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_33%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_33%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_33%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_33%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_33%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_33%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_33%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_33%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_33%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_33%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_33%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_33%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_33%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_33%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_33%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_33%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_33%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_33%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_33%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_33%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_33%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_33%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_33%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_33%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_33%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_33%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_33%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_33%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_33%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_33%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_33%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_33%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_33%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_33%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_33%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_33%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_33%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_33%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_33%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_33%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_33%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_33%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_33%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_33%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_33%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_33%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_33%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_33:
   end subroutine reconstruct_d33
!---#] subroutine reconstruct_d33:
end module p0_gg_hhg_d33h4l1d_qp
