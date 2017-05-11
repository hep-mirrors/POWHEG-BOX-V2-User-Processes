module p1_dg_hhd_d4h1l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p1_dg_hhd/helicity1d4h1l1d.f90
   ! generator: buildfortran_d.py
   use p1_dg_hhd_config_qp, only: ki
   use p1_dg_hhd_util_qp, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   integer, private :: iv4
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d4
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd4h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd4
      complex(ki) :: brack
      acd4(1)=abb4(22)
      brack=acd4(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd4h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd4
      complex(ki) :: brack
      acd4(1)=k1(iv1)
      acd4(2)=abb4(36)
      acd4(3)=k2(iv1)
      acd4(4)=abb4(28)
      acd4(5)=l4(iv1)
      acd4(6)=abb4(18)
      acd4(7)=spvak1k2(iv1)
      acd4(8)=abb4(17)
      acd4(9)=spvak1l3(iv1)
      acd4(10)=abb4(44)
      acd4(11)=spvak1l4(iv1)
      acd4(12)=abb4(50)
      acd4(13)=spval3k1(iv1)
      acd4(14)=abb4(15)
      acd4(15)=spval3k2(iv1)
      acd4(16)=abb4(42)
      acd4(17)=spval4k1(iv1)
      acd4(18)=abb4(48)
      acd4(19)=spval4k2(iv1)
      acd4(20)=abb4(45)
      acd4(21)=spvak5k1(iv1)
      acd4(22)=abb4(43)
      acd4(23)=spvak5k2(iv1)
      acd4(24)=abb4(23)
      acd4(25)=spvak5l3(iv1)
      acd4(26)=abb4(37)
      acd4(27)=spvak5l4(iv1)
      acd4(28)=abb4(38)
      acd4(29)=acd4(2)*acd4(1)
      acd4(30)=acd4(4)*acd4(3)
      acd4(31)=acd4(6)*acd4(5)
      acd4(32)=acd4(8)*acd4(7)
      acd4(33)=acd4(10)*acd4(9)
      acd4(34)=acd4(12)*acd4(11)
      acd4(35)=acd4(14)*acd4(13)
      acd4(36)=acd4(16)*acd4(15)
      acd4(37)=acd4(18)*acd4(17)
      acd4(38)=acd4(20)*acd4(19)
      acd4(39)=acd4(22)*acd4(21)
      acd4(40)=acd4(24)*acd4(23)
      acd4(41)=acd4(26)*acd4(25)
      acd4(42)=acd4(28)*acd4(27)
      brack=acd4(29)+acd4(30)+acd4(31)+acd4(32)+acd4(33)+acd4(34)+acd4(35)+acd4&
      &(36)+acd4(37)+acd4(38)+acd4(39)+acd4(40)+acd4(41)+acd4(42)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd4h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(56) :: acd4
      complex(ki) :: brack
      acd4(1)=d(iv1,iv2)
      acd4(2)=abb4(16)
      acd4(3)=k2(iv1)
      acd4(4)=k2(iv2)
      acd4(5)=abb4(32)
      acd4(6)=spvak1k2(iv2)
      acd4(7)=abb4(13)
      acd4(8)=spvak1l3(iv2)
      acd4(9)=abb4(53)
      acd4(10)=spval3k1(iv2)
      acd4(11)=abb4(34)
      acd4(12)=spval3k2(iv2)
      acd4(13)=abb4(51)
      acd4(14)=spvak5k1(iv2)
      acd4(15)=abb4(10)
      acd4(16)=spvak5k2(iv2)
      acd4(17)=abb4(27)
      acd4(18)=spvak5l3(iv2)
      acd4(19)=abb4(39)
      acd4(20)=spvak1k2(iv1)
      acd4(21)=spvak1l3(iv1)
      acd4(22)=spval3k1(iv1)
      acd4(23)=spval3k2(iv1)
      acd4(24)=spvak5k1(iv1)
      acd4(25)=spvak5k2(iv1)
      acd4(26)=spvak5l3(iv1)
      acd4(27)=abb4(40)
      acd4(28)=abb4(49)
      acd4(29)=abb4(24)
      acd4(30)=abb4(9)
      acd4(31)=spvak2l3(iv2)
      acd4(32)=abb4(19)
      acd4(33)=spvak2l4(iv2)
      acd4(34)=abb4(26)
      acd4(35)=spval3l4(iv2)
      acd4(36)=abb4(25)
      acd4(37)=spval4k2(iv2)
      acd4(38)=abb4(41)
      acd4(39)=spval4l3(iv2)
      acd4(40)=abb4(33)
      acd4(41)=spvak2l3(iv1)
      acd4(42)=spvak2l4(iv1)
      acd4(43)=spval3l4(iv1)
      acd4(44)=spval4k2(iv1)
      acd4(45)=spval4l3(iv1)
      acd4(46)=acd4(40)*acd4(39)
      acd4(47)=acd4(38)*acd4(37)
      acd4(48)=acd4(36)*acd4(35)
      acd4(49)=acd4(34)*acd4(33)
      acd4(50)=acd4(32)*acd4(31)
      acd4(51)=acd4(18)*acd4(30)
      acd4(52)=acd4(14)*acd4(29)
      acd4(53)=acd4(12)*acd4(28)
      acd4(54)=acd4(10)*acd4(27)
      acd4(55)=acd4(4)*acd4(7)
      acd4(46)=acd4(55)+acd4(54)+acd4(53)+acd4(52)+acd4(51)+acd4(50)+acd4(49)+a&
      &cd4(48)+acd4(46)+acd4(47)
      acd4(46)=acd4(20)*acd4(46)
      acd4(47)=acd4(40)*acd4(45)
      acd4(48)=acd4(38)*acd4(44)
      acd4(49)=acd4(36)*acd4(43)
      acd4(50)=acd4(34)*acd4(42)
      acd4(51)=acd4(32)*acd4(41)
      acd4(52)=acd4(26)*acd4(30)
      acd4(53)=acd4(24)*acd4(29)
      acd4(54)=acd4(23)*acd4(28)
      acd4(55)=acd4(22)*acd4(27)
      acd4(56)=acd4(3)*acd4(7)
      acd4(47)=acd4(56)+acd4(55)+acd4(54)+acd4(53)+acd4(52)+acd4(51)+acd4(50)+a&
      &cd4(49)+acd4(47)+acd4(48)
      acd4(47)=acd4(6)*acd4(47)
      acd4(48)=acd4(18)*acd4(19)
      acd4(49)=acd4(17)*acd4(16)
      acd4(50)=acd4(14)*acd4(15)
      acd4(51)=acd4(12)*acd4(13)
      acd4(52)=acd4(10)*acd4(11)
      acd4(53)=-acd4(9)*acd4(8)
      acd4(54)=acd4(4)*acd4(5)
      acd4(48)=2.0_ki*acd4(54)+acd4(53)+acd4(52)+acd4(51)+acd4(50)+acd4(48)+acd&
      &4(49)
      acd4(48)=acd4(3)*acd4(48)
      acd4(49)=acd4(19)*acd4(26)
      acd4(50)=acd4(17)*acd4(25)
      acd4(51)=acd4(15)*acd4(24)
      acd4(52)=acd4(13)*acd4(23)
      acd4(53)=acd4(11)*acd4(22)
      acd4(54)=-acd4(9)*acd4(21)
      acd4(49)=acd4(54)+acd4(53)+acd4(52)+acd4(51)+acd4(49)+acd4(50)
      acd4(49)=acd4(4)*acd4(49)
      acd4(50)=acd4(1)*acd4(2)
      brack=acd4(46)+acd4(47)+acd4(48)+acd4(49)+2.0_ki*acd4(50)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd4h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(58) :: acd4
      complex(ki) :: brack
      acd4(1)=d(iv1,iv2)
      acd4(2)=k1(iv3)
      acd4(3)=abb4(35)
      acd4(4)=k2(iv3)
      acd4(5)=abb4(29)
      acd4(6)=l3(iv3)
      acd4(7)=abb4(11)
      acd4(8)=l4(iv3)
      acd4(9)=spvak1k2(iv3)
      acd4(10)=abb4(20)
      acd4(11)=spvak1l3(iv3)
      acd4(12)=abb4(54)
      acd4(13)=spvak1l4(iv3)
      acd4(14)=abb4(52)
      acd4(15)=spval3k2(iv3)
      acd4(16)=abb4(46)
      acd4(17)=spval4k2(iv3)
      acd4(18)=abb4(47)
      acd4(19)=spvak5k1(iv3)
      acd4(20)=abb4(21)
      acd4(21)=spvak5k2(iv3)
      acd4(22)=abb4(14)
      acd4(23)=d(iv1,iv3)
      acd4(24)=k1(iv2)
      acd4(25)=k2(iv2)
      acd4(26)=l3(iv2)
      acd4(27)=l4(iv2)
      acd4(28)=spvak1k2(iv2)
      acd4(29)=spvak1l3(iv2)
      acd4(30)=spvak1l4(iv2)
      acd4(31)=spval3k2(iv2)
      acd4(32)=spval4k2(iv2)
      acd4(33)=spvak5k1(iv2)
      acd4(34)=spvak5k2(iv2)
      acd4(35)=d(iv2,iv3)
      acd4(36)=k1(iv1)
      acd4(37)=k2(iv1)
      acd4(38)=l3(iv1)
      acd4(39)=l4(iv1)
      acd4(40)=spvak1k2(iv1)
      acd4(41)=spvak1l3(iv1)
      acd4(42)=spvak1l4(iv1)
      acd4(43)=spval3k2(iv1)
      acd4(44)=spval4k2(iv1)
      acd4(45)=spvak5k1(iv1)
      acd4(46)=spvak5k2(iv1)
      acd4(47)=acd4(22)*acd4(46)
      acd4(48)=acd4(20)*acd4(45)
      acd4(49)=acd4(18)*acd4(44)
      acd4(50)=acd4(16)*acd4(43)
      acd4(51)=acd4(14)*acd4(42)
      acd4(52)=acd4(12)*acd4(41)
      acd4(53)=acd4(10)*acd4(40)
      acd4(54)=acd4(5)*acd4(37)
      acd4(55)=acd4(3)*acd4(36)
      acd4(56)=-acd4(39)+acd4(38)
      acd4(56)=acd4(7)*acd4(56)
      acd4(47)=acd4(56)+acd4(55)+acd4(54)+acd4(53)+acd4(52)+acd4(51)+acd4(50)+a&
      &cd4(49)+acd4(47)+acd4(48)
      acd4(47)=acd4(35)*acd4(47)
      acd4(48)=acd4(22)*acd4(34)
      acd4(49)=acd4(20)*acd4(33)
      acd4(50)=acd4(18)*acd4(32)
      acd4(51)=acd4(16)*acd4(31)
      acd4(52)=acd4(14)*acd4(30)
      acd4(53)=acd4(12)*acd4(29)
      acd4(54)=acd4(10)*acd4(28)
      acd4(55)=acd4(5)*acd4(25)
      acd4(56)=acd4(3)*acd4(24)
      acd4(57)=-acd4(27)+acd4(26)
      acd4(57)=acd4(7)*acd4(57)
      acd4(48)=acd4(57)+acd4(56)+acd4(55)+acd4(54)+acd4(53)+acd4(52)+acd4(51)+a&
      &cd4(50)+acd4(48)+acd4(49)
      acd4(48)=acd4(23)*acd4(48)
      acd4(49)=acd4(22)*acd4(21)
      acd4(50)=acd4(20)*acd4(19)
      acd4(51)=acd4(18)*acd4(17)
      acd4(52)=acd4(16)*acd4(15)
      acd4(53)=acd4(14)*acd4(13)
      acd4(54)=acd4(12)*acd4(11)
      acd4(55)=acd4(10)*acd4(9)
      acd4(56)=acd4(5)*acd4(4)
      acd4(57)=acd4(3)*acd4(2)
      acd4(58)=-acd4(8)+acd4(6)
      acd4(58)=acd4(7)*acd4(58)
      acd4(49)=acd4(58)+acd4(57)+acd4(56)+acd4(55)+acd4(54)+acd4(53)+acd4(52)+a&
      &cd4(51)+acd4(49)+acd4(50)
      acd4(49)=acd4(1)*acd4(49)
      acd4(47)=acd4(49)+acd4(47)+acd4(48)
      brack=2.0_ki*acd4(47)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p1_dg_hhd_model_qp
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_color_qp
      use p1_dg_hhd_abbrevd4h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(10) :: acd4
      complex(ki) :: brack
      acd4(1)=d(iv1,iv2)
      acd4(2)=d(iv3,iv4)
      acd4(3)=abb4(11)
      acd4(4)=d(iv1,iv3)
      acd4(5)=d(iv2,iv4)
      acd4(6)=d(iv1,iv4)
      acd4(7)=d(iv2,iv3)
      acd4(8)=-acd4(2)*acd4(1)
      acd4(9)=-acd4(5)*acd4(4)
      acd4(10)=-acd4(7)*acd4(6)
      acd4(8)=acd4(10)+acd4(8)+acd4(9)
      brack=8.0_ki*acd4(8)*acd4(3)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p1_dg_hhd_globalsl1_qp, only: epspow
      use p1_dg_hhd_kinematics_qp
      use p1_dg_hhd_abbrevd4h1_qp
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
!---#[ subroutine reconstruct_d4:
   subroutine     reconstruct_d4(coeffs)
      use p1_dg_hhd_groups_qp, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_4:
      coeffs%coeffs_4%c0 = derivative(czip)
      coeffs%coeffs_4%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_4%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_4%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_4%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_4%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_4%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_4%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_4%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_4%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_4%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_4%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_4%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_4%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_4%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_4%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_4%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_4%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_4%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_4%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_4%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_4%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_4%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_4%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_4%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_4%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_4%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_4%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_4%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_4%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_4%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_4%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_4%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_4%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_4%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_4%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_4%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_4%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_4%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_4%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_4%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_4%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_4%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_4%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_4%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_4%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_4%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_4%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_4%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_4%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_4%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_4%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_4%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_4%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_4%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_4%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_4%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_4%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_4%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_4%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_4%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_4%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_4%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_4%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_4%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_4%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_4%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_4%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_4%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_4%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_4:
   end subroutine reconstruct_d4
!---#] subroutine reconstruct_d4:
end module p1_dg_hhd_d4h1l1d_qp
