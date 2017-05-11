module     p1_dg_hhd_d6h0l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p1_dg_hhd/helicity0d6h0l1d.f90
   ! generator: buildfortran_d.py
   use p1_dg_hhd_config, only: ki
   use p1_dg_hhd_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d6
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd6
      complex(ki) :: brack
      acd6(1)=abb6(19)
      brack=acd6(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd6
      complex(ki) :: brack
      acd6(1)=k2(iv1)
      acd6(2)=abb6(15)
      acd6(3)=l3(iv1)
      acd6(4)=abb6(27)
      acd6(5)=l4(iv1)
      acd6(6)=abb6(18)
      acd6(7)=spvak2k1(iv1)
      acd6(8)=abb6(30)
      acd6(9)=spval4k1(iv1)
      acd6(10)=abb6(29)
      acd6(11)=spvak5k1(iv1)
      acd6(12)=abb6(26)
      acd6(13)=-acd6(2)*acd6(1)
      acd6(14)=-acd6(4)*acd6(3)
      acd6(15)=-acd6(6)*acd6(5)
      acd6(16)=-acd6(8)*acd6(7)
      acd6(17)=-acd6(10)*acd6(9)
      acd6(18)=-acd6(12)*acd6(11)
      brack=acd6(13)+acd6(14)+acd6(15)+acd6(16)+acd6(17)+acd6(18)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd6
      complex(ki) :: brack
      acd6(1)=d(iv1,iv2)
      acd6(2)=abb6(9)
      acd6(3)=k2(iv1)
      acd6(4)=spvak2k1(iv2)
      acd6(5)=abb6(10)
      acd6(6)=k2(iv2)
      acd6(7)=spvak2k1(iv1)
      acd6(8)=l3(iv1)
      acd6(9)=abb6(39)
      acd6(10)=l3(iv2)
      acd6(11)=l4(iv1)
      acd6(12)=abb6(36)
      acd6(13)=l4(iv2)
      acd6(14)=abb6(12)
      acd6(15)=spval3k1(iv2)
      acd6(16)=abb6(14)
      acd6(17)=spval4k1(iv2)
      acd6(18)=abb6(32)
      acd6(19)=spvak5k1(iv2)
      acd6(20)=abb6(20)
      acd6(21)=spvak5k2(iv2)
      acd6(22)=abb6(11)
      acd6(23)=spvak5l3(iv2)
      acd6(24)=abb6(13)
      acd6(25)=spvak5l4(iv2)
      acd6(26)=abb6(21)
      acd6(27)=spval3k1(iv1)
      acd6(28)=spval4k1(iv1)
      acd6(29)=spvak5k1(iv1)
      acd6(30)=spvak5k2(iv1)
      acd6(31)=spvak5l3(iv1)
      acd6(32)=spvak5l4(iv1)
      acd6(33)=acd6(6)*acd6(5)
      acd6(34)=acd6(10)*acd6(9)
      acd6(35)=acd6(13)*acd6(12)
      acd6(36)=acd6(14)*acd6(4)
      acd6(37)=acd6(15)*acd6(16)
      acd6(38)=acd6(17)*acd6(18)
      acd6(39)=acd6(19)*acd6(20)
      acd6(40)=acd6(21)*acd6(22)
      acd6(41)=acd6(23)*acd6(24)
      acd6(42)=acd6(25)*acd6(26)
      acd6(33)=acd6(42)+acd6(41)+acd6(40)+acd6(39)+acd6(38)+acd6(37)+2.0_ki*acd&
      &6(36)+acd6(35)+acd6(34)+acd6(33)
      acd6(33)=acd6(7)*acd6(33)
      acd6(34)=acd6(3)*acd6(5)
      acd6(35)=acd6(8)*acd6(9)
      acd6(36)=acd6(11)*acd6(12)
      acd6(37)=acd6(27)*acd6(16)
      acd6(38)=acd6(28)*acd6(18)
      acd6(39)=acd6(29)*acd6(20)
      acd6(40)=acd6(30)*acd6(22)
      acd6(41)=acd6(31)*acd6(24)
      acd6(42)=acd6(32)*acd6(26)
      acd6(34)=acd6(42)+acd6(41)+acd6(40)+acd6(39)+acd6(38)+acd6(37)+acd6(36)+a&
      &cd6(35)+acd6(34)
      acd6(34)=acd6(4)*acd6(34)
      acd6(35)=acd6(2)*acd6(1)
      brack=acd6(33)+acd6(34)+2.0_ki*acd6(35)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd6
      complex(ki) :: brack
      acd6(1)=d(iv1,iv2)
      acd6(2)=spvak2k1(iv3)
      acd6(3)=abb6(31)
      acd6(4)=spval4k1(iv3)
      acd6(5)=abb6(23)
      acd6(6)=spvak5k1(iv3)
      acd6(7)=abb6(24)
      acd6(8)=d(iv1,iv3)
      acd6(9)=spvak2k1(iv2)
      acd6(10)=spval4k1(iv2)
      acd6(11)=spvak5k1(iv2)
      acd6(12)=d(iv2,iv3)
      acd6(13)=spvak2k1(iv1)
      acd6(14)=spval4k1(iv1)
      acd6(15)=spvak5k1(iv1)
      acd6(16)=k2(iv1)
      acd6(17)=abb6(25)
      acd6(18)=k2(iv2)
      acd6(19)=k2(iv3)
      acd6(20)=l3(iv1)
      acd6(21)=abb6(22)
      acd6(22)=l3(iv2)
      acd6(23)=l3(iv3)
      acd6(24)=acd6(9)*acd6(6)
      acd6(25)=acd6(11)*acd6(2)
      acd6(24)=acd6(24)+acd6(25)
      acd6(25)=-acd6(16)*acd6(24)
      acd6(26)=acd6(13)*acd6(6)
      acd6(27)=acd6(15)*acd6(2)
      acd6(26)=acd6(26)+acd6(27)
      acd6(27)=-acd6(18)*acd6(26)
      acd6(28)=acd6(13)*acd6(11)
      acd6(29)=acd6(15)*acd6(9)
      acd6(28)=acd6(28)+acd6(29)
      acd6(29)=-acd6(19)*acd6(28)
      acd6(25)=acd6(29)+acd6(27)+acd6(25)
      acd6(25)=acd6(17)*acd6(25)
      acd6(24)=-acd6(20)*acd6(24)
      acd6(26)=-acd6(22)*acd6(26)
      acd6(27)=-acd6(23)*acd6(28)
      acd6(24)=acd6(27)+acd6(26)+acd6(24)
      acd6(24)=acd6(21)*acd6(24)
      acd6(26)=-acd6(3)*acd6(2)
      acd6(27)=-acd6(7)*acd6(6)
      acd6(26)=acd6(26)+acd6(27)
      acd6(26)=acd6(1)*acd6(26)
      acd6(27)=-acd6(3)*acd6(9)
      acd6(28)=-acd6(7)*acd6(11)
      acd6(27)=acd6(27)+acd6(28)
      acd6(27)=acd6(8)*acd6(27)
      acd6(28)=-acd6(3)*acd6(13)
      acd6(29)=-acd6(7)*acd6(15)
      acd6(28)=acd6(28)+acd6(29)
      acd6(28)=acd6(12)*acd6(28)
      acd6(26)=acd6(28)+acd6(27)+acd6(26)
      acd6(27)=-acd6(4)*acd6(1)
      acd6(28)=-acd6(10)*acd6(8)
      acd6(29)=-acd6(14)*acd6(12)
      acd6(27)=acd6(29)+acd6(28)+acd6(27)
      acd6(28)=2.0_ki*acd6(5)
      acd6(27)=acd6(28)*acd6(27)
      brack=acd6(24)+acd6(25)+2.0_ki*acd6(26)+acd6(27)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd6h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd6
      complex(ki) :: brack
      acd6(1)=d(iv1,iv2)
      acd6(2)=spvak2k1(iv3)
      acd6(3)=spvak5k1(iv4)
      acd6(4)=abb6(17)
      acd6(5)=spvak2k1(iv4)
      acd6(6)=spvak5k1(iv3)
      acd6(7)=d(iv1,iv3)
      acd6(8)=spvak2k1(iv2)
      acd6(9)=spvak5k1(iv2)
      acd6(10)=d(iv1,iv4)
      acd6(11)=d(iv2,iv3)
      acd6(12)=spvak2k1(iv1)
      acd6(13)=spvak5k1(iv1)
      acd6(14)=d(iv2,iv4)
      acd6(15)=d(iv3,iv4)
      acd6(16)=acd6(13)*acd6(11)
      acd6(17)=acd6(9)*acd6(7)
      acd6(18)=acd6(6)*acd6(1)
      acd6(16)=acd6(18)+acd6(16)+acd6(17)
      acd6(16)=acd6(5)*acd6(16)
      acd6(17)=acd6(13)*acd6(14)
      acd6(18)=acd6(9)*acd6(10)
      acd6(19)=acd6(3)*acd6(1)
      acd6(17)=acd6(19)+acd6(17)+acd6(18)
      acd6(17)=acd6(2)*acd6(17)
      acd6(18)=acd6(9)*acd6(12)
      acd6(19)=acd6(8)*acd6(13)
      acd6(18)=acd6(18)+acd6(19)
      acd6(18)=acd6(15)*acd6(18)
      acd6(19)=acd6(12)*acd6(14)
      acd6(20)=acd6(8)*acd6(10)
      acd6(19)=acd6(19)+acd6(20)
      acd6(19)=acd6(6)*acd6(19)
      acd6(20)=acd6(12)*acd6(11)
      acd6(21)=acd6(8)*acd6(7)
      acd6(20)=acd6(20)+acd6(21)
      acd6(20)=acd6(3)*acd6(20)
      acd6(16)=acd6(17)+acd6(20)+acd6(16)+acd6(19)+acd6(18)
      brack=2.0_ki*acd6(16)*acd6(4)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p1_dg_hhd_globalsl1, only: epspow
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_abbrevd6h0
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
!---#[ subroutine reconstruct_d6:
   subroutine     reconstruct_d6(coeffs)
      use p1_dg_hhd_groups, only: tensrec_info_group1
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group1), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_6:
      coeffs%coeffs_6%c0 = derivative(czip)
      coeffs%coeffs_6%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_6%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_6%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_6%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_6%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_6%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_6%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_6%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_6%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_6%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_6%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_6%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_6%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_6%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_6%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_6%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_6%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_6%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_6%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_6%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_6%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_6%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_6%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_6%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_6%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_6%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_6%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_6%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_6%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_6%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_6%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_6%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_6%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_6%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_6%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_6%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_6%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_6%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_6%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_6%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_6%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_6%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_6%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_6%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_6%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_6%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_6%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_6%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_6%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_6%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_6%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_6%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_6%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_6%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_6%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_6%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_6%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_6%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_6%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_6%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_6%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_6%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_6%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_6%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_6%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_6%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_6%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_6%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_6%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_6:
   end subroutine reconstruct_d6
!---#] subroutine reconstruct_d6:
end module     p1_dg_hhd_d6h0l1d
