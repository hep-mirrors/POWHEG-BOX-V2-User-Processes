module p0_gg_hhg_d19h4l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity4d19h4l1d.f90
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
   public :: derivative , reconstruct_d19
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd19h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd19
      complex(ki) :: brack
      acd19(1)=abb19(23)
      brack=acd19(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd19h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd19
      complex(ki) :: brack
      acd19(1)=k2(iv1)
      acd19(2)=abb19(21)
      acd19(3)=l4(iv1)
      acd19(4)=abb19(44)
      acd19(5)=k5(iv1)
      acd19(6)=abb19(43)
      acd19(7)=spvak1k2(iv1)
      acd19(8)=abb19(16)
      acd19(9)=spvak1l3(iv1)
      acd19(10)=abb19(34)
      acd19(11)=spvak1l4(iv1)
      acd19(12)=abb19(39)
      acd19(13)=spvak1k5(iv1)
      acd19(14)=abb19(38)
      acd19(15)=spvak2l3(iv1)
      acd19(16)=abb19(32)
      acd19(17)=spvak2l4(iv1)
      acd19(18)=abb19(12)
      acd19(19)=spvak2k5(iv1)
      acd19(20)=abb19(27)
      acd19(21)=spval3k2(iv1)
      acd19(22)=abb19(29)
      acd19(23)=spval3k5(iv1)
      acd19(24)=abb19(64)
      acd19(25)=spval4k2(iv1)
      acd19(26)=abb19(63)
      acd19(27)=spval4k5(iv1)
      acd19(28)=abb19(60)
      acd19(29)=spvak5k2(iv1)
      acd19(30)=abb19(40)
      acd19(31)=spvak5l3(iv1)
      acd19(32)=abb19(51)
      acd19(33)=spvak5l4(iv1)
      acd19(34)=abb19(47)
      acd19(35)=acd19(2)*acd19(1)
      acd19(36)=acd19(4)*acd19(3)
      acd19(37)=acd19(6)*acd19(5)
      acd19(38)=acd19(8)*acd19(7)
      acd19(39)=acd19(10)*acd19(9)
      acd19(40)=acd19(12)*acd19(11)
      acd19(41)=acd19(14)*acd19(13)
      acd19(42)=acd19(16)*acd19(15)
      acd19(43)=acd19(18)*acd19(17)
      acd19(44)=acd19(20)*acd19(19)
      acd19(45)=acd19(22)*acd19(21)
      acd19(46)=acd19(24)*acd19(23)
      acd19(47)=acd19(26)*acd19(25)
      acd19(48)=acd19(28)*acd19(27)
      acd19(49)=acd19(30)*acd19(29)
      acd19(50)=acd19(32)*acd19(31)
      acd19(51)=acd19(34)*acd19(33)
      brack=acd19(35)+acd19(36)+acd19(37)+acd19(38)+acd19(39)+acd19(40)+acd19(4&
      &1)+acd19(42)+acd19(43)+acd19(44)+acd19(45)+acd19(46)+acd19(47)+acd19(48)&
      &+acd19(49)+acd19(50)+acd19(51)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd19h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(49) :: acd19
      complex(ki) :: brack
      acd19(1)=d(iv1,iv2)
      acd19(2)=abb19(14)
      acd19(3)=k2(iv1)
      acd19(4)=k2(iv2)
      acd19(5)=abb19(36)
      acd19(6)=spvak1k2(iv2)
      acd19(7)=abb19(17)
      acd19(8)=spvak1l3(iv2)
      acd19(9)=abb19(41)
      acd19(10)=spvak2l3(iv2)
      acd19(11)=abb19(24)
      acd19(12)=spval3k2(iv2)
      acd19(13)=abb19(68)
      acd19(14)=spval3k5(iv2)
      acd19(15)=abb19(66)
      acd19(16)=spvak5k2(iv2)
      acd19(17)=abb19(18)
      acd19(18)=spvak5l3(iv2)
      acd19(19)=abb19(53)
      acd19(20)=spvak1k2(iv1)
      acd19(21)=spvak1l3(iv1)
      acd19(22)=spvak2l3(iv1)
      acd19(23)=spval3k2(iv1)
      acd19(24)=spval3k5(iv1)
      acd19(25)=spvak5k2(iv1)
      acd19(26)=spvak5l3(iv1)
      acd19(27)=spvak2k5(iv2)
      acd19(28)=abb19(10)
      acd19(29)=spvak2k5(iv1)
      acd19(30)=abb19(11)
      acd19(31)=abb19(26)
      acd19(32)=spval3l4(iv2)
      acd19(33)=abb19(28)
      acd19(34)=spval4k2(iv2)
      acd19(35)=abb19(15)
      acd19(36)=spval4l3(iv2)
      acd19(37)=abb19(33)
      acd19(38)=spval3l4(iv1)
      acd19(39)=spval4k2(iv1)
      acd19(40)=spval4l3(iv1)
      acd19(41)=acd19(19)*acd19(18)
      acd19(42)=acd19(16)*acd19(17)
      acd19(43)=acd19(15)*acd19(14)
      acd19(44)=acd19(12)*acd19(13)
      acd19(45)=acd19(11)*acd19(10)
      acd19(46)=acd19(9)*acd19(8)
      acd19(47)=acd19(6)*acd19(7)
      acd19(48)=acd19(4)*acd19(5)
      acd19(41)=2.0_ki*acd19(48)+acd19(47)+acd19(46)+acd19(45)+acd19(44)+acd19(&
      &43)+acd19(41)+acd19(42)
      acd19(41)=acd19(3)*acd19(41)
      acd19(42)=acd19(19)*acd19(26)
      acd19(43)=acd19(17)*acd19(25)
      acd19(44)=acd19(15)*acd19(24)
      acd19(45)=acd19(13)*acd19(23)
      acd19(46)=acd19(11)*acd19(22)
      acd19(47)=acd19(9)*acd19(21)
      acd19(48)=acd19(7)*acd19(20)
      acd19(42)=acd19(48)+acd19(47)+acd19(46)+acd19(45)+acd19(44)+acd19(42)+acd&
      &19(43)
      acd19(42)=acd19(4)*acd19(42)
      acd19(43)=acd19(37)*acd19(36)
      acd19(44)=acd19(35)*acd19(34)
      acd19(45)=acd19(33)*acd19(32)
      acd19(46)=acd19(16)*acd19(31)
      acd19(47)=acd19(12)*acd19(30)
      acd19(48)=acd19(6)*acd19(28)
      acd19(43)=acd19(48)+acd19(47)+acd19(46)+acd19(45)+acd19(43)+acd19(44)
      acd19(43)=acd19(29)*acd19(43)
      acd19(44)=acd19(37)*acd19(40)
      acd19(45)=acd19(35)*acd19(39)
      acd19(46)=acd19(33)*acd19(38)
      acd19(47)=acd19(25)*acd19(31)
      acd19(48)=acd19(23)*acd19(30)
      acd19(49)=acd19(20)*acd19(28)
      acd19(44)=acd19(49)+acd19(48)+acd19(47)+acd19(46)+acd19(44)+acd19(45)
      acd19(44)=acd19(27)*acd19(44)
      acd19(45)=acd19(1)*acd19(2)
      brack=acd19(41)+acd19(42)+acd19(43)+acd19(44)+2.0_ki*acd19(45)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd19h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(58) :: acd19
      complex(ki) :: brack
      acd19(1)=d(iv1,iv2)
      acd19(2)=k2(iv3)
      acd19(3)=abb19(20)
      acd19(4)=l3(iv3)
      acd19(5)=abb19(35)
      acd19(6)=l4(iv3)
      acd19(7)=k5(iv3)
      acd19(8)=abb19(31)
      acd19(9)=spvak1k2(iv3)
      acd19(10)=abb19(42)
      acd19(11)=spvak1k5(iv3)
      acd19(12)=abb19(25)
      acd19(13)=spvak2l3(iv3)
      acd19(14)=abb19(30)
      acd19(15)=spvak2l4(iv3)
      acd19(16)=abb19(22)
      acd19(17)=spval3k5(iv3)
      acd19(18)=abb19(67)
      acd19(19)=spval4k5(iv3)
      acd19(20)=abb19(13)
      acd19(21)=spvak5k2(iv3)
      acd19(22)=abb19(57)
      acd19(23)=d(iv1,iv3)
      acd19(24)=k2(iv2)
      acd19(25)=l3(iv2)
      acd19(26)=l4(iv2)
      acd19(27)=k5(iv2)
      acd19(28)=spvak1k2(iv2)
      acd19(29)=spvak1k5(iv2)
      acd19(30)=spvak2l3(iv2)
      acd19(31)=spvak2l4(iv2)
      acd19(32)=spval3k5(iv2)
      acd19(33)=spval4k5(iv2)
      acd19(34)=spvak5k2(iv2)
      acd19(35)=d(iv2,iv3)
      acd19(36)=k2(iv1)
      acd19(37)=l3(iv1)
      acd19(38)=l4(iv1)
      acd19(39)=k5(iv1)
      acd19(40)=spvak1k2(iv1)
      acd19(41)=spvak1k5(iv1)
      acd19(42)=spvak2l3(iv1)
      acd19(43)=spvak2l4(iv1)
      acd19(44)=spval3k5(iv1)
      acd19(45)=spval4k5(iv1)
      acd19(46)=spvak5k2(iv1)
      acd19(47)=acd19(22)*acd19(46)
      acd19(48)=acd19(20)*acd19(45)
      acd19(49)=acd19(18)*acd19(44)
      acd19(50)=acd19(16)*acd19(43)
      acd19(51)=acd19(14)*acd19(42)
      acd19(52)=acd19(12)*acd19(41)
      acd19(53)=acd19(10)*acd19(40)
      acd19(54)=acd19(8)*acd19(39)
      acd19(55)=acd19(3)*acd19(36)
      acd19(56)=acd19(38)-acd19(37)
      acd19(56)=acd19(5)*acd19(56)
      acd19(47)=acd19(56)+acd19(55)+acd19(54)+acd19(53)+acd19(52)+acd19(51)+acd&
      &19(50)+acd19(49)+acd19(47)+acd19(48)
      acd19(47)=acd19(35)*acd19(47)
      acd19(48)=acd19(22)*acd19(34)
      acd19(49)=acd19(20)*acd19(33)
      acd19(50)=acd19(18)*acd19(32)
      acd19(51)=acd19(16)*acd19(31)
      acd19(52)=acd19(14)*acd19(30)
      acd19(53)=acd19(12)*acd19(29)
      acd19(54)=acd19(10)*acd19(28)
      acd19(55)=acd19(8)*acd19(27)
      acd19(56)=acd19(3)*acd19(24)
      acd19(57)=acd19(26)-acd19(25)
      acd19(57)=acd19(5)*acd19(57)
      acd19(48)=acd19(57)+acd19(56)+acd19(55)+acd19(54)+acd19(53)+acd19(52)+acd&
      &19(51)+acd19(50)+acd19(48)+acd19(49)
      acd19(48)=acd19(23)*acd19(48)
      acd19(49)=acd19(22)*acd19(21)
      acd19(50)=acd19(20)*acd19(19)
      acd19(51)=acd19(18)*acd19(17)
      acd19(52)=acd19(16)*acd19(15)
      acd19(53)=acd19(14)*acd19(13)
      acd19(54)=acd19(12)*acd19(11)
      acd19(55)=acd19(10)*acd19(9)
      acd19(56)=acd19(8)*acd19(7)
      acd19(57)=acd19(3)*acd19(2)
      acd19(58)=acd19(6)-acd19(4)
      acd19(58)=acd19(5)*acd19(58)
      acd19(49)=acd19(58)+acd19(57)+acd19(56)+acd19(55)+acd19(54)+acd19(53)+acd&
      &19(52)+acd19(51)+acd19(49)+acd19(50)
      acd19(49)=acd19(1)*acd19(49)
      acd19(47)=acd19(49)+acd19(47)+acd19(48)
      brack=2.0_ki*acd19(47)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd19h4_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(10) :: acd19
      complex(ki) :: brack
      acd19(1)=d(iv1,iv2)
      acd19(2)=d(iv3,iv4)
      acd19(3)=abb19(35)
      acd19(4)=d(iv1,iv3)
      acd19(5)=d(iv2,iv4)
      acd19(6)=d(iv1,iv4)
      acd19(7)=d(iv2,iv3)
      acd19(8)=acd19(2)*acd19(1)
      acd19(9)=acd19(5)*acd19(4)
      acd19(10)=acd19(7)*acd19(6)
      acd19(8)=acd19(10)+acd19(8)+acd19(9)
      brack=8.0_ki*acd19(8)*acd19(3)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd19h4_qp
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
!---#[ subroutine reconstruct_d19:
   subroutine     reconstruct_d19(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group3
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group3), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_19:
      coeffs%coeffs_19%c0 = derivative(czip)
      coeffs%coeffs_19%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_19%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_19%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_19%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_19%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_19%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_19%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_19%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_19%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_19%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_19%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_19%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_19%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_19%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_19%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_19%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_19%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_19%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_19%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_19%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_19%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_19%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_19%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_19%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_19%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_19%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_19%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_19%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_19%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_19%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_19%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_19%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_19%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_19%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_19%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_19%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_19%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_19%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_19%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_19%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_19%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_19%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_19%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_19%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_19%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_19%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_19%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_19%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_19%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_19%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_19%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_19%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_19%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_19%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_19%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_19%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_19%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_19%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_19%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_19%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_19%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_19%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_19%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_19%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_19%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_19%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_19%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_19%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_19%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_19:
   end subroutine reconstruct_d19
!---#] subroutine reconstruct_d19:
end module p0_gg_hhg_d19h4l1d_qp
