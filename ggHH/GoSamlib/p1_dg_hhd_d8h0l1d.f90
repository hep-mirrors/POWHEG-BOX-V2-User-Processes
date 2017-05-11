module     p1_dg_hhd_d8h0l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p1_dg_hhd/helicity0d8h0l1d.f90
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
   public :: derivative , reconstruct_d8
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd8
      complex(ki) :: brack
      acd8(1)=abb8(19)
      brack=acd8(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(18) :: acd8
      complex(ki) :: brack
      acd8(1)=k2(iv1)
      acd8(2)=abb8(15)
      acd8(3)=l3(iv1)
      acd8(4)=abb8(18)
      acd8(5)=l4(iv1)
      acd8(6)=abb8(28)
      acd8(7)=spvak2k1(iv1)
      acd8(8)=abb8(30)
      acd8(9)=spval3k1(iv1)
      acd8(10)=abb8(29)
      acd8(11)=spvak5k1(iv1)
      acd8(12)=abb8(26)
      acd8(13)=-acd8(2)*acd8(1)
      acd8(14)=-acd8(4)*acd8(3)
      acd8(15)=-acd8(6)*acd8(5)
      acd8(16)=-acd8(8)*acd8(7)
      acd8(17)=-acd8(10)*acd8(9)
      acd8(18)=-acd8(12)*acd8(11)
      brack=acd8(13)+acd8(14)+acd8(15)+acd8(16)+acd8(17)+acd8(18)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd8
      complex(ki) :: brack
      acd8(1)=d(iv1,iv2)
      acd8(2)=abb8(9)
      acd8(3)=k2(iv1)
      acd8(4)=spvak2k1(iv2)
      acd8(5)=abb8(10)
      acd8(6)=k2(iv2)
      acd8(7)=spvak2k1(iv1)
      acd8(8)=l3(iv1)
      acd8(9)=abb8(40)
      acd8(10)=l3(iv2)
      acd8(11)=l4(iv1)
      acd8(12)=abb8(35)
      acd8(13)=l4(iv2)
      acd8(14)=abb8(12)
      acd8(15)=spval3k1(iv2)
      acd8(16)=abb8(14)
      acd8(17)=spval4k1(iv2)
      acd8(18)=abb8(27)
      acd8(19)=spvak5k1(iv2)
      acd8(20)=abb8(20)
      acd8(21)=spvak5k2(iv2)
      acd8(22)=abb8(11)
      acd8(23)=spvak5l3(iv2)
      acd8(24)=abb8(17)
      acd8(25)=spvak5l4(iv2)
      acd8(26)=abb8(13)
      acd8(27)=spval3k1(iv1)
      acd8(28)=spval4k1(iv1)
      acd8(29)=spvak5k1(iv1)
      acd8(30)=spvak5k2(iv1)
      acd8(31)=spvak5l3(iv1)
      acd8(32)=spvak5l4(iv1)
      acd8(33)=acd8(6)*acd8(5)
      acd8(34)=acd8(10)*acd8(9)
      acd8(35)=acd8(13)*acd8(12)
      acd8(36)=acd8(14)*acd8(4)
      acd8(37)=acd8(15)*acd8(16)
      acd8(38)=acd8(17)*acd8(18)
      acd8(39)=acd8(19)*acd8(20)
      acd8(40)=acd8(21)*acd8(22)
      acd8(41)=acd8(23)*acd8(24)
      acd8(42)=acd8(25)*acd8(26)
      acd8(33)=acd8(42)+acd8(41)+acd8(40)+acd8(39)+acd8(38)+acd8(37)+2.0_ki*acd&
      &8(36)+acd8(35)+acd8(34)+acd8(33)
      acd8(33)=acd8(7)*acd8(33)
      acd8(34)=acd8(3)*acd8(5)
      acd8(35)=acd8(8)*acd8(9)
      acd8(36)=acd8(11)*acd8(12)
      acd8(37)=acd8(27)*acd8(16)
      acd8(38)=acd8(28)*acd8(18)
      acd8(39)=acd8(29)*acd8(20)
      acd8(40)=acd8(30)*acd8(22)
      acd8(41)=acd8(31)*acd8(24)
      acd8(42)=acd8(32)*acd8(26)
      acd8(34)=acd8(42)+acd8(41)+acd8(40)+acd8(39)+acd8(38)+acd8(37)+acd8(36)+a&
      &cd8(35)+acd8(34)
      acd8(34)=acd8(4)*acd8(34)
      acd8(35)=acd8(2)*acd8(1)
      brack=acd8(33)+acd8(34)+2.0_ki*acd8(35)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd8
      complex(ki) :: brack
      acd8(1)=d(iv1,iv2)
      acd8(2)=spvak2k1(iv3)
      acd8(3)=abb8(31)
      acd8(4)=spval3k1(iv3)
      acd8(5)=abb8(23)
      acd8(6)=spvak5k1(iv3)
      acd8(7)=abb8(24)
      acd8(8)=d(iv1,iv3)
      acd8(9)=spvak2k1(iv2)
      acd8(10)=spval3k1(iv2)
      acd8(11)=spvak5k1(iv2)
      acd8(12)=d(iv2,iv3)
      acd8(13)=spvak2k1(iv1)
      acd8(14)=spval3k1(iv1)
      acd8(15)=spvak5k1(iv1)
      acd8(16)=k2(iv1)
      acd8(17)=abb8(25)
      acd8(18)=k2(iv2)
      acd8(19)=k2(iv3)
      acd8(20)=l4(iv1)
      acd8(21)=abb8(22)
      acd8(22)=l4(iv2)
      acd8(23)=l4(iv3)
      acd8(24)=acd8(9)*acd8(6)
      acd8(25)=acd8(11)*acd8(2)
      acd8(24)=acd8(24)+acd8(25)
      acd8(25)=-acd8(16)*acd8(24)
      acd8(26)=acd8(13)*acd8(6)
      acd8(27)=acd8(15)*acd8(2)
      acd8(26)=acd8(26)+acd8(27)
      acd8(27)=-acd8(18)*acd8(26)
      acd8(28)=acd8(13)*acd8(11)
      acd8(29)=acd8(15)*acd8(9)
      acd8(28)=acd8(28)+acd8(29)
      acd8(29)=-acd8(19)*acd8(28)
      acd8(25)=acd8(29)+acd8(27)+acd8(25)
      acd8(25)=acd8(17)*acd8(25)
      acd8(24)=-acd8(20)*acd8(24)
      acd8(26)=-acd8(22)*acd8(26)
      acd8(27)=-acd8(23)*acd8(28)
      acd8(24)=acd8(27)+acd8(26)+acd8(24)
      acd8(24)=acd8(21)*acd8(24)
      acd8(26)=-acd8(3)*acd8(2)
      acd8(27)=-acd8(7)*acd8(6)
      acd8(26)=acd8(26)+acd8(27)
      acd8(26)=acd8(1)*acd8(26)
      acd8(27)=-acd8(3)*acd8(9)
      acd8(28)=-acd8(7)*acd8(11)
      acd8(27)=acd8(27)+acd8(28)
      acd8(27)=acd8(8)*acd8(27)
      acd8(28)=-acd8(3)*acd8(13)
      acd8(29)=-acd8(7)*acd8(15)
      acd8(28)=acd8(28)+acd8(29)
      acd8(28)=acd8(12)*acd8(28)
      acd8(26)=acd8(28)+acd8(27)+acd8(26)
      acd8(27)=-acd8(4)*acd8(1)
      acd8(28)=-acd8(10)*acd8(8)
      acd8(29)=-acd8(14)*acd8(12)
      acd8(27)=acd8(29)+acd8(28)+acd8(27)
      acd8(28)=2.0_ki*acd8(5)
      acd8(27)=acd8(28)*acd8(27)
      brack=acd8(24)+acd8(25)+2.0_ki*acd8(26)+acd8(27)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p1_dg_hhd_model
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_color
      use p1_dg_hhd_abbrevd8h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd8
      complex(ki) :: brack
      acd8(1)=d(iv1,iv2)
      acd8(2)=spvak2k1(iv3)
      acd8(3)=spvak5k1(iv4)
      acd8(4)=abb8(21)
      acd8(5)=spvak2k1(iv4)
      acd8(6)=spvak5k1(iv3)
      acd8(7)=d(iv1,iv3)
      acd8(8)=spvak2k1(iv2)
      acd8(9)=spvak5k1(iv2)
      acd8(10)=d(iv1,iv4)
      acd8(11)=d(iv2,iv3)
      acd8(12)=spvak2k1(iv1)
      acd8(13)=spvak5k1(iv1)
      acd8(14)=d(iv2,iv4)
      acd8(15)=d(iv3,iv4)
      acd8(16)=acd8(13)*acd8(11)
      acd8(17)=acd8(9)*acd8(7)
      acd8(18)=acd8(6)*acd8(1)
      acd8(16)=acd8(18)+acd8(16)+acd8(17)
      acd8(16)=acd8(5)*acd8(16)
      acd8(17)=acd8(13)*acd8(14)
      acd8(18)=acd8(9)*acd8(10)
      acd8(19)=acd8(3)*acd8(1)
      acd8(17)=acd8(19)+acd8(17)+acd8(18)
      acd8(17)=acd8(2)*acd8(17)
      acd8(18)=acd8(9)*acd8(12)
      acd8(19)=acd8(8)*acd8(13)
      acd8(18)=acd8(18)+acd8(19)
      acd8(18)=acd8(15)*acd8(18)
      acd8(19)=acd8(12)*acd8(14)
      acd8(20)=acd8(8)*acd8(10)
      acd8(19)=acd8(19)+acd8(20)
      acd8(19)=acd8(6)*acd8(19)
      acd8(20)=acd8(12)*acd8(11)
      acd8(21)=acd8(8)*acd8(7)
      acd8(20)=acd8(20)+acd8(21)
      acd8(20)=acd8(3)*acd8(20)
      acd8(16)=acd8(17)+acd8(20)+acd8(16)+acd8(19)+acd8(18)
      brack=2.0_ki*acd8(16)*acd8(4)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p1_dg_hhd_globalsl1, only: epspow
      use p1_dg_hhd_kinematics
      use p1_dg_hhd_abbrevd8h0
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
!---#[ subroutine reconstruct_d8:
   subroutine     reconstruct_d8(coeffs)
      use p1_dg_hhd_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_8:
      coeffs%coeffs_8%c0 = derivative(czip)
      coeffs%coeffs_8%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_8%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_8%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_8%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_8%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_8%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_8%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_8%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_8%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_8%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_8%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_8%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_8%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_8%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_8%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_8%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_8%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_8%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_8%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_8%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_8%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_8%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_8%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_8%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_8%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_8%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_8%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_8%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_8%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_8%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_8%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_8%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_8%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_8%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_8%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_8%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_8%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_8%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_8%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_8%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_8%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_8%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_8%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_8%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_8%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_8%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_8%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_8%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_8%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_8%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_8%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_8%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_8%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_8%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_8%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_8%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_8%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_8%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_8%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_8%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_8%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_8%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_8%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_8%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_8%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_8%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_8%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_8%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_8%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_8:
   end subroutine reconstruct_d8
!---#] subroutine reconstruct_d8:
end module     p1_dg_hhd_d8h0l1d
