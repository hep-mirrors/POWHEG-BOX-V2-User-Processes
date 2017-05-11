module     pb_gg_hh_d10h1l1d
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG_born/pb_gg_hh/helicity1d10h1l1d.f90
   ! generator: buildfortran_d.py
   use pb_gg_hh_config, only: ki
   use pb_gg_hh_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d10
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd10
      complex(ki) :: brack
      acd10(1)=dotproduct(k1,qshift)
      acd10(2)=dotproduct(qshift,spvak2k1)
      acd10(3)=abb10(13)
      acd10(4)=abb10(14)
      acd10(5)=dotproduct(qshift,qshift)
      acd10(6)=abb10(10)
      acd10(7)=dotproduct(qshift,spvak2l3)
      acd10(8)=abb10(18)
      acd10(9)=dotproduct(qshift,spvak2l4)
      acd10(10)=abb10(19)
      acd10(11)=dotproduct(qshift,spval3k1)
      acd10(12)=abb10(8)
      acd10(13)=dotproduct(qshift,spval3l4)
      acd10(14)=abb10(11)
      acd10(15)=dotproduct(qshift,spval4l3)
      acd10(16)=abb10(9)
      acd10(17)=abb10(12)
      acd10(18)=abb10(16)
      acd10(19)=acd10(15)*acd10(16)
      acd10(20)=acd10(13)*acd10(14)
      acd10(21)=acd10(11)*acd10(12)
      acd10(22)=acd10(9)*acd10(10)
      acd10(23)=acd10(7)*acd10(8)
      acd10(24)=acd10(1)*acd10(3)
      acd10(25)=acd10(2)*acd10(6)
      acd10(19)=acd10(25)+acd10(24)+acd10(23)+acd10(22)+acd10(21)+acd10(20)-acd&
      &10(17)+acd10(19)
      acd10(19)=acd10(2)*acd10(19)
      acd10(20)=acd10(1)+acd10(5)
      acd10(20)=acd10(4)*acd10(20)
      brack=acd10(18)+acd10(19)+acd10(20)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd10
      complex(ki) :: brack
      acd10(1)=k1(iv1)
      acd10(2)=dotproduct(qshift,spvak2k1)
      acd10(3)=abb10(13)
      acd10(4)=abb10(14)
      acd10(5)=qshift(iv1)
      acd10(6)=spvak2k1(iv1)
      acd10(7)=dotproduct(k1,qshift)
      acd10(8)=abb10(10)
      acd10(9)=dotproduct(qshift,spvak2l3)
      acd10(10)=abb10(18)
      acd10(11)=dotproduct(qshift,spvak2l4)
      acd10(12)=abb10(19)
      acd10(13)=dotproduct(qshift,spval3k1)
      acd10(14)=abb10(8)
      acd10(15)=dotproduct(qshift,spval3l4)
      acd10(16)=abb10(11)
      acd10(17)=dotproduct(qshift,spval4l3)
      acd10(18)=abb10(9)
      acd10(19)=abb10(12)
      acd10(20)=spvak2l3(iv1)
      acd10(21)=spvak2l4(iv1)
      acd10(22)=spval3k1(iv1)
      acd10(23)=spval3l4(iv1)
      acd10(24)=spval4l3(iv1)
      acd10(25)=acd10(7)*acd10(3)
      acd10(26)=acd10(8)*acd10(2)
      acd10(27)=acd10(9)*acd10(10)
      acd10(28)=acd10(11)*acd10(12)
      acd10(29)=acd10(13)*acd10(14)
      acd10(30)=acd10(15)*acd10(16)
      acd10(31)=acd10(17)*acd10(18)
      acd10(25)=-acd10(19)+acd10(31)+acd10(30)+acd10(29)+acd10(28)+acd10(27)+2.&
      &0_ki*acd10(26)+acd10(25)
      acd10(25)=acd10(6)*acd10(25)
      acd10(26)=acd10(3)*acd10(1)
      acd10(27)=acd10(20)*acd10(10)
      acd10(28)=acd10(21)*acd10(12)
      acd10(29)=acd10(22)*acd10(14)
      acd10(30)=acd10(23)*acd10(16)
      acd10(31)=acd10(24)*acd10(18)
      acd10(26)=acd10(31)+acd10(30)+acd10(29)+acd10(28)+acd10(27)+acd10(26)
      acd10(26)=acd10(2)*acd10(26)
      acd10(27)=2.0_ki*acd10(5)+acd10(1)
      acd10(27)=acd10(4)*acd10(27)
      brack=acd10(25)+acd10(26)+acd10(27)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(30) :: acd10
      complex(ki) :: brack
      acd10(1)=d(iv1,iv2)
      acd10(2)=abb10(14)
      acd10(3)=k1(iv1)
      acd10(4)=spvak2k1(iv2)
      acd10(5)=abb10(13)
      acd10(6)=k1(iv2)
      acd10(7)=spvak2k1(iv1)
      acd10(8)=abb10(10)
      acd10(9)=spvak2l3(iv2)
      acd10(10)=abb10(18)
      acd10(11)=spvak2l4(iv2)
      acd10(12)=abb10(19)
      acd10(13)=spval3k1(iv2)
      acd10(14)=abb10(8)
      acd10(15)=spval3l4(iv2)
      acd10(16)=abb10(11)
      acd10(17)=spval4l3(iv2)
      acd10(18)=abb10(9)
      acd10(19)=spvak2l3(iv1)
      acd10(20)=spvak2l4(iv1)
      acd10(21)=spval3k1(iv1)
      acd10(22)=spval3l4(iv1)
      acd10(23)=spval4l3(iv1)
      acd10(24)=acd10(6)*acd10(5)
      acd10(25)=acd10(8)*acd10(4)
      acd10(26)=acd10(9)*acd10(10)
      acd10(27)=acd10(11)*acd10(12)
      acd10(28)=acd10(13)*acd10(14)
      acd10(29)=acd10(15)*acd10(16)
      acd10(30)=acd10(17)*acd10(18)
      acd10(24)=acd10(30)+acd10(29)+acd10(28)+acd10(27)+acd10(26)+2.0_ki*acd10(&
      &25)+acd10(24)
      acd10(24)=acd10(7)*acd10(24)
      acd10(25)=acd10(3)*acd10(5)
      acd10(26)=acd10(19)*acd10(10)
      acd10(27)=acd10(20)*acd10(12)
      acd10(28)=acd10(21)*acd10(14)
      acd10(29)=acd10(22)*acd10(16)
      acd10(30)=acd10(23)*acd10(18)
      acd10(25)=acd10(30)+acd10(29)+acd10(28)+acd10(27)+acd10(26)+acd10(25)
      acd10(25)=acd10(4)*acd10(25)
      acd10(26)=acd10(2)*acd10(1)
      brack=acd10(24)+acd10(25)+2.0_ki*acd10(26)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd10
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use pb_gg_hh_model
      use pb_gg_hh_kinematics
      use pb_gg_hh_color
      use pb_gg_hh_abbrevd10h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd10
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use pb_gg_hh_globalsl1, only: epspow
      use pb_gg_hh_kinematics
      use pb_gg_hh_abbrevd10h1
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
      qshift = -k3
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
!---#[ subroutine reconstruct_d10:
   subroutine     reconstruct_d10(coeffs)
      use pb_gg_hh_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_10:
      coeffs%coeffs_10%c0 = derivative(czip)
      coeffs%coeffs_10%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_10%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_10%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_10%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_10%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_10%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_10%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_10%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_10%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_10%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_10%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_10%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_10%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_10%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_10%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_10%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_10%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_10%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_10%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_10%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_10%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_10%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_10%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_10%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_10%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_10%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_10%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_10%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_10%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_10%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_10%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_10%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_10%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_10%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_10%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_10%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_10%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_10%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_10%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_10%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_10%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_10%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_10%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_10%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_10%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_10%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_10%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_10%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_10%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_10%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_10%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_10%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_10%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_10%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_10%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_10%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_10%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_10%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_10%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_10%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_10%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_10%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_10%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_10%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_10%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_10%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_10%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_10%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_10%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_10:
   end subroutine reconstruct_d10
!---#] subroutine reconstruct_d10:
end module     pb_gg_hh_d10h1l1d
