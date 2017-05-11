module p0_gg_hhg_d23h1l1d_qp
   ! file: /home/luisonig/Documents/Lavoro/GoSamPowheg/POWHEG-BOX-V2/ggHH/GoSam &
   ! &_POWHEG/Virtual/p0_gg_hhg/helicity1d23h1l1d.f90
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
   public :: derivative , reconstruct_d23
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd23
      complex(ki) :: brack
      acd23(1)=abb23(21)
      brack=acd23(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(12) :: acd23
      complex(ki) :: brack
      acd23(1)=k2(iv1)
      acd23(2)=abb23(16)
      acd23(3)=spvak2k1(iv1)
      acd23(4)=abb23(14)
      acd23(5)=spvak2l3(iv1)
      acd23(6)=abb23(19)
      acd23(7)=spvak2k5(iv1)
      acd23(8)=abb23(24)
      acd23(9)=-acd23(2)*acd23(1)
      acd23(10)=-acd23(4)*acd23(3)
      acd23(11)=-acd23(6)*acd23(5)
      acd23(12)=-acd23(8)*acd23(7)
      brack=acd23(9)+acd23(10)+acd23(11)+acd23(12)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(46) :: acd23
      complex(ki) :: brack
      acd23(1)=d(iv1,iv2)
      acd23(2)=abb23(16)
      acd23(3)=k2(iv1)
      acd23(4)=spvak2k5(iv2)
      acd23(5)=abb23(34)
      acd23(6)=k2(iv2)
      acd23(7)=spvak2k5(iv1)
      acd23(8)=l3(iv1)
      acd23(9)=abb23(22)
      acd23(10)=l3(iv2)
      acd23(11)=l4(iv1)
      acd23(12)=abb23(32)
      acd23(13)=l4(iv2)
      acd23(14)=abb23(31)
      acd23(15)=spvak2k1(iv2)
      acd23(16)=abb23(18)
      acd23(17)=spvak2l3(iv2)
      acd23(18)=abb23(25)
      acd23(19)=spvak2l4(iv2)
      acd23(20)=abb23(27)
      acd23(21)=spval3k1(iv2)
      acd23(22)=abb23(13)
      acd23(23)=spval3k5(iv2)
      acd23(24)=abb23(39)
      acd23(25)=spval4k1(iv2)
      acd23(26)=abb23(36)
      acd23(27)=spval4k5(iv2)
      acd23(28)=abb23(28)
      acd23(29)=spvak2k1(iv1)
      acd23(30)=spvak2l3(iv1)
      acd23(31)=spvak2l4(iv1)
      acd23(32)=spval3k1(iv1)
      acd23(33)=spval3k5(iv1)
      acd23(34)=spval4k1(iv1)
      acd23(35)=spval4k5(iv1)
      acd23(36)=acd23(6)*acd23(5)
      acd23(37)=acd23(10)*acd23(9)
      acd23(38)=acd23(13)*acd23(12)
      acd23(39)=acd23(14)*acd23(4)
      acd23(40)=acd23(15)*acd23(16)
      acd23(41)=acd23(17)*acd23(18)
      acd23(42)=acd23(19)*acd23(20)
      acd23(43)=acd23(21)*acd23(22)
      acd23(44)=acd23(23)*acd23(24)
      acd23(45)=acd23(25)*acd23(26)
      acd23(46)=acd23(27)*acd23(28)
      acd23(36)=acd23(46)+acd23(45)+acd23(44)+acd23(43)+acd23(42)+acd23(41)+acd&
      &23(40)+2.0_ki*acd23(39)+acd23(38)+acd23(37)+acd23(36)
      acd23(36)=acd23(7)*acd23(36)
      acd23(37)=acd23(3)*acd23(5)
      acd23(38)=acd23(8)*acd23(9)
      acd23(39)=acd23(11)*acd23(12)
      acd23(40)=acd23(29)*acd23(16)
      acd23(41)=acd23(30)*acd23(18)
      acd23(42)=acd23(31)*acd23(20)
      acd23(43)=acd23(32)*acd23(22)
      acd23(44)=acd23(33)*acd23(24)
      acd23(45)=acd23(34)*acd23(26)
      acd23(46)=acd23(35)*acd23(28)
      acd23(37)=acd23(46)+acd23(45)+acd23(44)+acd23(43)+acd23(42)+acd23(41)+acd&
      &23(40)+acd23(39)+acd23(38)+acd23(37)
      acd23(37)=acd23(4)*acd23(37)
      acd23(38)=acd23(2)*acd23(1)
      brack=acd23(36)+acd23(37)+2.0_ki*acd23(38)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd23
      complex(ki) :: brack
      acd23(1)=d(iv1,iv2)
      acd23(2)=spvak2k1(iv3)
      acd23(3)=abb23(12)
      acd23(4)=spvak2l3(iv3)
      acd23(5)=abb23(15)
      acd23(6)=spvak2k5(iv3)
      acd23(7)=abb23(23)
      acd23(8)=d(iv1,iv3)
      acd23(9)=spvak2k1(iv2)
      acd23(10)=spvak2l3(iv2)
      acd23(11)=spvak2k5(iv2)
      acd23(12)=d(iv2,iv3)
      acd23(13)=spvak2k1(iv1)
      acd23(14)=spvak2l3(iv1)
      acd23(15)=spvak2k5(iv1)
      acd23(16)=k2(iv1)
      acd23(17)=abb23(20)
      acd23(18)=abb23(43)
      acd23(19)=k2(iv2)
      acd23(20)=k2(iv3)
      acd23(21)=l4(iv1)
      acd23(22)=abb23(17)
      acd23(23)=abb23(42)
      acd23(24)=l4(iv2)
      acd23(25)=l4(iv3)
      acd23(26)=-acd23(3)*acd23(2)
      acd23(27)=-acd23(7)*acd23(6)
      acd23(26)=acd23(26)+acd23(27)
      acd23(26)=acd23(1)*acd23(26)
      acd23(27)=-acd23(3)*acd23(9)
      acd23(28)=-acd23(7)*acd23(11)
      acd23(27)=acd23(27)+acd23(28)
      acd23(27)=acd23(8)*acd23(27)
      acd23(28)=-acd23(3)*acd23(13)
      acd23(29)=-acd23(7)*acd23(15)
      acd23(28)=acd23(28)+acd23(29)
      acd23(28)=acd23(12)*acd23(28)
      acd23(26)=acd23(28)+acd23(27)+acd23(26)
      acd23(27)=-acd23(16)*acd23(17)
      acd23(28)=acd23(21)*acd23(22)
      acd23(27)=acd23(28)+acd23(27)
      acd23(28)=acd23(2)*acd23(11)
      acd23(29)=acd23(9)*acd23(6)
      acd23(28)=acd23(28)+acd23(29)
      acd23(27)=acd23(28)*acd23(27)
      acd23(28)=acd23(4)*acd23(1)
      acd23(29)=acd23(10)*acd23(8)
      acd23(30)=acd23(14)*acd23(12)
      acd23(28)=acd23(30)+acd23(29)+acd23(28)
      acd23(29)=2.0_ki*acd23(5)
      acd23(28)=acd23(29)*acd23(28)
      acd23(29)=acd23(2)*acd23(15)
      acd23(30)=acd23(13)*acd23(6)
      acd23(29)=acd23(29)+acd23(30)
      acd23(30)=acd23(22)*acd23(29)
      acd23(31)=acd23(23)*acd23(6)
      acd23(32)=2.0_ki*acd23(15)
      acd23(33)=-acd23(32)*acd23(31)
      acd23(30)=acd23(33)+acd23(30)
      acd23(30)=acd23(24)*acd23(30)
      acd23(33)=-acd23(16)*acd23(18)*acd23(6)
      acd23(31)=-acd23(21)*acd23(31)
      acd23(31)=acd23(31)+acd23(33)
      acd23(33)=2.0_ki*acd23(11)
      acd23(31)=acd23(33)*acd23(31)
      acd23(29)=-acd23(17)*acd23(29)
      acd23(33)=acd23(32)*acd23(18)
      acd23(34)=-acd23(6)*acd23(33)
      acd23(29)=acd23(34)+acd23(29)
      acd23(29)=acd23(19)*acd23(29)
      acd23(34)=acd23(9)*acd23(15)
      acd23(35)=acd23(13)*acd23(11)
      acd23(34)=acd23(34)+acd23(35)
      acd23(35)=-acd23(17)*acd23(34)
      acd23(33)=-acd23(11)*acd23(33)
      acd23(33)=acd23(33)+acd23(35)
      acd23(33)=acd23(20)*acd23(33)
      acd23(34)=acd23(22)*acd23(34)
      acd23(32)=-acd23(32)*acd23(23)*acd23(11)
      acd23(32)=acd23(32)+acd23(34)
      acd23(32)=acd23(25)*acd23(32)
      brack=2.0_ki*acd23(26)+acd23(27)+acd23(28)+acd23(29)+acd23(30)+acd23(31)+&
      &acd23(32)+acd23(33)
   end function brack_4
!---#] function brack_4:
!---#[ function brack_5:
   pure function brack_5(Q, mu2) result(brack)
      use p0_gg_hhg_model_qp
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_color_qp
      use p0_gg_hhg_abbrevd23h1_qp
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd23
      complex(ki) :: brack
      acd23(1)=d(iv1,iv2)
      acd23(2)=spvak2k1(iv3)
      acd23(3)=spvak2k5(iv4)
      acd23(4)=abb23(11)
      acd23(5)=spvak2k1(iv4)
      acd23(6)=spvak2k5(iv3)
      acd23(7)=abb23(30)
      acd23(8)=d(iv1,iv3)
      acd23(9)=spvak2k1(iv2)
      acd23(10)=spvak2k5(iv2)
      acd23(11)=d(iv1,iv4)
      acd23(12)=d(iv2,iv3)
      acd23(13)=spvak2k1(iv1)
      acd23(14)=spvak2k5(iv1)
      acd23(15)=d(iv2,iv4)
      acd23(16)=d(iv3,iv4)
      acd23(17)=2.0_ki*acd23(7)
      acd23(18)=acd23(17)*acd23(6)
      acd23(19)=acd23(2)*acd23(4)
      acd23(18)=acd23(18)+acd23(19)
      acd23(18)=acd23(1)*acd23(18)
      acd23(20)=acd23(9)*acd23(4)
      acd23(21)=acd23(8)*acd23(20)
      acd23(22)=acd23(13)*acd23(4)
      acd23(23)=acd23(12)*acd23(22)
      acd23(18)=acd23(23)+acd23(21)+acd23(18)
      acd23(18)=acd23(3)*acd23(18)
      acd23(21)=acd23(17)*acd23(10)
      acd23(23)=acd23(3)*acd23(21)
      acd23(24)=acd23(5)*acd23(4)
      acd23(25)=acd23(10)*acd23(24)
      acd23(23)=acd23(23)+acd23(25)
      acd23(23)=acd23(8)*acd23(23)
      acd23(21)=acd23(20)+acd23(21)
      acd23(21)=acd23(6)*acd23(21)
      acd23(25)=acd23(10)*acd23(19)
      acd23(21)=acd23(25)+acd23(21)
      acd23(21)=acd23(11)*acd23(21)
      acd23(17)=acd23(17)*acd23(14)
      acd23(25)=acd23(3)*acd23(17)
      acd23(26)=acd23(14)*acd23(24)
      acd23(25)=acd23(25)+acd23(26)
      acd23(25)=acd23(12)*acd23(25)
      acd23(17)=acd23(17)+acd23(22)
      acd23(22)=acd23(6)*acd23(17)
      acd23(19)=acd23(14)*acd23(19)
      acd23(19)=acd23(19)+acd23(22)
      acd23(19)=acd23(15)*acd23(19)
      acd23(17)=acd23(10)*acd23(17)
      acd23(20)=acd23(14)*acd23(20)
      acd23(17)=acd23(20)+acd23(17)
      acd23(17)=acd23(16)*acd23(17)
      acd23(20)=acd23(24)*acd23(1)*acd23(6)
      acd23(17)=acd23(17)+acd23(19)+acd23(25)+acd23(21)+acd23(23)+acd23(20)+acd&
      &23(18)
      brack=2.0_ki*acd23(17)
   end function brack_5
!---#] function brack_5:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3,i4) result(numerator)
      use p0_gg_hhg_globalsl1_qp, only: epspow
      use p0_gg_hhg_kinematics_qp
      use p0_gg_hhg_abbrevd23h1_qp
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
!---#[ subroutine reconstruct_d23:
   subroutine     reconstruct_d23(coeffs)
      use p0_gg_hhg_groups_qp, only: tensrec_info_group6
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group6), intent(out) :: coeffs
      ! rank 4 case :
      !---[# reconstruct coeffs%coeffs_23:
      coeffs%coeffs_23%c0 = derivative(czip)
      coeffs%coeffs_23%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_23%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_23%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_23%c1(1,4) = derivative(czip,1,1,1,1)/24.0_ki
      coeffs%coeffs_23%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_23%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_23%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_23%c1(2,4) = derivative(czip,2,2,2,2)/24.0_ki
      coeffs%coeffs_23%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_23%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_23%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_23%c1(3,4) = derivative(czip,3,3,3,3)/24.0_ki
      coeffs%coeffs_23%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_23%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_23%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_23%c1(4,4) = derivative(czip,4,4,4,4)/24.0_ki
      coeffs%coeffs_23%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_23%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_23%c2(1,3) = -derivative(czip,1,2,2,2)/6.0_ki
      coeffs%coeffs_23%c2(1,4) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_23%c2(1,5) = derivative(czip,1,1,2,2)/4.0_ki
      coeffs%coeffs_23%c2(1,6) = -derivative(czip,1,1,1,2)/6.0_ki
      coeffs%coeffs_23%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_23%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_23%c2(2,3) = -derivative(czip,1,3,3,3)/6.0_ki
      coeffs%coeffs_23%c2(2,4) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_23%c2(2,5) = derivative(czip,1,1,3,3)/4.0_ki
      coeffs%coeffs_23%c2(2,6) = -derivative(czip,1,1,1,3)/6.0_ki
      coeffs%coeffs_23%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_23%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_23%c2(3,3) = -derivative(czip,1,4,4,4)/6.0_ki
      coeffs%coeffs_23%c2(3,4) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_23%c2(3,5) = derivative(czip,1,1,4,4)/4.0_ki
      coeffs%coeffs_23%c2(3,6) = -derivative(czip,1,1,1,4)/6.0_ki
      coeffs%coeffs_23%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_23%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_23%c2(4,3) = derivative(czip,2,3,3,3)/6.0_ki
      coeffs%coeffs_23%c2(4,4) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_23%c2(4,5) = derivative(czip,2,2,3,3)/4.0_ki
      coeffs%coeffs_23%c2(4,6) = derivative(czip,2,2,2,3)/6.0_ki
      coeffs%coeffs_23%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_23%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_23%c2(5,3) = derivative(czip,2,4,4,4)/6.0_ki
      coeffs%coeffs_23%c2(5,4) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_23%c2(5,5) = derivative(czip,2,2,4,4)/4.0_ki
      coeffs%coeffs_23%c2(5,6) = derivative(czip,2,2,2,4)/6.0_ki
      coeffs%coeffs_23%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_23%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_23%c2(6,3) = derivative(czip,3,4,4,4)/6.0_ki
      coeffs%coeffs_23%c2(6,4) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_23%c2(6,5) = derivative(czip,3,3,4,4)/4.0_ki
      coeffs%coeffs_23%c2(6,6) = derivative(czip,3,3,3,4)/6.0_ki
      coeffs%coeffs_23%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_23%c3(1,2) = -derivative(czip,1,2,3,3)/2.0_ki
      coeffs%coeffs_23%c3(1,3) = -derivative(czip,1,2,2,3)/2.0_ki
      coeffs%coeffs_23%c3(1,4) = derivative(czip,1,1,2,3)/2.0_ki
      coeffs%coeffs_23%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_23%c3(2,2) = -derivative(czip,1,2,4,4)/2.0_ki
      coeffs%coeffs_23%c3(2,3) = -derivative(czip,1,2,2,4)/2.0_ki
      coeffs%coeffs_23%c3(2,4) = derivative(czip,1,1,2,4)/2.0_ki
      coeffs%coeffs_23%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_23%c3(3,2) = -derivative(czip,1,3,4,4)/2.0_ki
      coeffs%coeffs_23%c3(3,3) = -derivative(czip,1,3,3,4)/2.0_ki
      coeffs%coeffs_23%c3(3,4) = derivative(czip,1,1,3,4)/2.0_ki
      coeffs%coeffs_23%c3(4,1) = -derivative(czip,2,3,4)
      coeffs%coeffs_23%c3(4,2) = derivative(czip,2,3,4,4)/2.0_ki
      coeffs%coeffs_23%c3(4,3) = derivative(czip,2,3,3,4)/2.0_ki
      coeffs%coeffs_23%c3(4,4) = derivative(czip,2,2,3,4)/2.0_ki
      coeffs%coeffs_23%c4(1,1) = -derivative(czip,1,2,3,4)
      !---#] reconstruct coeffs%coeffs_23:
   end subroutine reconstruct_d23
!---#] subroutine reconstruct_d23:
end module p0_gg_hhg_d23h1l1d_qp
