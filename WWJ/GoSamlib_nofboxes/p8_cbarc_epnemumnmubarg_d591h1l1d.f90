module     p8_cbarc_epnemumnmubarg_d591h1l1d
   ! file: /mnt/users/pmonni/Programs/POWHEG-BOX-V2/WWJ_nobox/GoSam_POWHEG/Virt &
   ! &ual/p8_cbarc_epnemumnmubarg/helicity1d591h1l1d.f90
   ! generator: buildfortran_d.py
   use p8_cbarc_epnemumnmubarg_config, only: ki
   use p8_cbarc_epnemumnmubarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d591
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd591h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd591
      complex(ki) :: brack
      brack=0.0_ki
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd591h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd591
      complex(ki) :: brack
      acd591(1)=spvak1k3(iv1)
      acd591(2)=abb591(20)
      acd591(3)=spvak1k4(iv1)
      acd591(4)=abb591(29)
      acd591(5)=spvak1k7(iv1)
      acd591(6)=abb591(22)
      acd591(7)=spvak3k2(iv1)
      acd591(8)=abb591(8)
      acd591(9)=spvak4k2(iv1)
      acd591(10)=abb591(24)
      acd591(11)=spvak5k3(iv1)
      acd591(12)=abb591(31)
      acd591(13)=spvak5k4(iv1)
      acd591(14)=abb591(30)
      acd591(15)=spvak5k7(iv1)
      acd591(16)=abb591(23)
      acd591(17)=acd591(2)*acd591(1)
      acd591(18)=acd591(4)*acd591(3)
      acd591(19)=acd591(6)*acd591(5)
      acd591(20)=acd591(8)*acd591(7)
      acd591(21)=acd591(10)*acd591(9)
      acd591(22)=acd591(12)*acd591(11)
      acd591(23)=acd591(14)*acd591(13)
      acd591(24)=acd591(16)*acd591(15)
      brack=acd591(17)+acd591(18)+acd591(19)+acd591(20)+acd591(21)+acd591(22)+a&
      &cd591(23)+acd591(24)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd591h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd591
      complex(ki) :: brack
      acd591(1)=d(iv1,iv2)
      acd591(2)=abb591(14)
      acd591(3)=k2(iv1)
      acd591(4)=k3(iv2)
      acd591(5)=abb591(11)
      acd591(6)=k4(iv2)
      acd591(7)=spvak4k3(iv2)
      acd591(8)=abb591(9)
      acd591(9)=k2(iv2)
      acd591(10)=k3(iv1)
      acd591(11)=k4(iv1)
      acd591(12)=spvak4k3(iv1)
      acd591(13)=spvak1k7(iv2)
      acd591(14)=abb591(21)
      acd591(15)=spvak4k2(iv2)
      acd591(16)=abb591(18)
      acd591(17)=spvak5k7(iv2)
      acd591(18)=abb591(25)
      acd591(19)=spvak1k7(iv1)
      acd591(20)=spvak4k2(iv1)
      acd591(21)=spvak5k7(iv1)
      acd591(22)=abb591(12)
      acd591(23)=abb591(17)
      acd591(24)=abb591(13)
      acd591(25)=spvak1k3(iv2)
      acd591(26)=abb591(33)
      acd591(27)=spvak1k4(iv2)
      acd591(28)=abb591(35)
      acd591(29)=spvak5k3(iv2)
      acd591(30)=abb591(32)
      acd591(31)=spvak3k2(iv2)
      acd591(32)=spvak5k4(iv2)
      acd591(33)=abb591(34)
      acd591(34)=spvak1k3(iv1)
      acd591(35)=spvak1k4(iv1)
      acd591(36)=spvak5k3(iv1)
      acd591(37)=spvak3k2(iv1)
      acd591(38)=spvak5k4(iv1)
      acd591(39)=spvak2k7(iv2)
      acd591(40)=abb591(10)
      acd591(41)=spvak2k7(iv1)
      acd591(42)=abb591(15)
      acd591(43)=acd591(34)*acd591(26)
      acd591(44)=acd591(36)*acd591(30)
      acd591(45)=acd591(35)*acd591(28)
      acd591(46)=-acd591(37)*acd591(16)
      acd591(47)=acd591(38)*acd591(33)
      acd591(43)=acd591(47)+acd591(46)+acd591(45)+acd591(44)+acd591(43)
      acd591(43)=acd591(7)*acd591(43)
      acd591(44)=acd591(26)*acd591(25)
      acd591(45)=acd591(30)*acd591(29)
      acd591(46)=acd591(27)*acd591(28)
      acd591(47)=-acd591(31)*acd591(16)
      acd591(48)=acd591(32)*acd591(33)
      acd591(44)=acd591(48)+acd591(47)+acd591(46)+acd591(45)+acd591(44)
      acd591(44)=acd591(12)*acd591(44)
      acd591(45)=-acd591(9)*acd591(5)
      acd591(46)=-acd591(13)*acd591(14)
      acd591(47)=acd591(15)*acd591(16)
      acd591(48)=acd591(17)*acd591(18)
      acd591(45)=acd591(47)+acd591(45)+acd591(48)+acd591(46)
      acd591(46)=acd591(11)+acd591(10)
      acd591(45)=acd591(46)*acd591(45)
      acd591(46)=-acd591(3)*acd591(5)
      acd591(47)=-acd591(19)*acd591(14)
      acd591(48)=acd591(20)*acd591(16)
      acd591(49)=acd591(21)*acd591(18)
      acd591(46)=acd591(48)+acd591(46)+acd591(49)+acd591(47)
      acd591(47)=acd591(6)+acd591(4)
      acd591(46)=acd591(47)*acd591(46)
      acd591(47)=acd591(39)*acd591(34)
      acd591(48)=acd591(41)*acd591(25)
      acd591(47)=acd591(48)+acd591(47)
      acd591(47)=acd591(40)*acd591(47)
      acd591(48)=acd591(3)*acd591(7)
      acd591(49)=acd591(9)*acd591(12)
      acd591(48)=acd591(48)+acd591(49)
      acd591(48)=acd591(8)*acd591(48)
      acd591(49)=acd591(13)*acd591(12)
      acd591(50)=acd591(19)*acd591(7)
      acd591(49)=acd591(49)+acd591(50)
      acd591(49)=acd591(22)*acd591(49)
      acd591(50)=acd591(15)*acd591(12)
      acd591(51)=acd591(20)*acd591(7)
      acd591(50)=acd591(50)+acd591(51)
      acd591(50)=acd591(23)*acd591(50)
      acd591(51)=acd591(17)*acd591(12)
      acd591(52)=acd591(21)*acd591(7)
      acd591(51)=acd591(51)+acd591(52)
      acd591(51)=acd591(24)*acd591(51)
      acd591(52)=acd591(39)*acd591(36)
      acd591(53)=acd591(41)*acd591(29)
      acd591(52)=acd591(52)+acd591(53)
      acd591(52)=acd591(42)*acd591(52)
      acd591(53)=acd591(2)*acd591(1)
      brack=acd591(43)+acd591(44)+acd591(45)+acd591(46)+acd591(47)+acd591(48)+a&
      &cd591(49)+acd591(50)+acd591(51)+acd591(52)+2.0_ki*acd591(53)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p8_cbarc_epnemumnmubarg_model
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_color
      use p8_cbarc_epnemumnmubarg_abbrevd591h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd591
      complex(ki) :: brack
      acd591(1)=d(iv1,iv2)
      acd591(2)=k2(iv3)
      acd591(3)=abb591(19)
      acd591(4)=spvak1k7(iv3)
      acd591(5)=abb591(27)
      acd591(6)=spvak2k7(iv3)
      acd591(7)=abb591(7)
      acd591(8)=spvak4k2(iv3)
      acd591(9)=abb591(37)
      acd591(10)=spvak5k7(iv3)
      acd591(11)=abb591(28)
      acd591(12)=d(iv1,iv3)
      acd591(13)=k2(iv2)
      acd591(14)=spvak1k7(iv2)
      acd591(15)=spvak2k7(iv2)
      acd591(16)=spvak4k2(iv2)
      acd591(17)=spvak5k7(iv2)
      acd591(18)=d(iv2,iv3)
      acd591(19)=k2(iv1)
      acd591(20)=spvak1k7(iv1)
      acd591(21)=spvak2k7(iv1)
      acd591(22)=spvak4k2(iv1)
      acd591(23)=spvak5k7(iv1)
      acd591(24)=spvak1k2(iv2)
      acd591(25)=spvak4k3(iv3)
      acd591(26)=abb591(16)
      acd591(27)=spvak1k2(iv3)
      acd591(28)=spvak4k3(iv2)
      acd591(29)=spvak5k2(iv3)
      acd591(30)=abb591(26)
      acd591(31)=spvak5k2(iv2)
      acd591(32)=spvak1k2(iv1)
      acd591(33)=spvak4k3(iv1)
      acd591(34)=spvak5k2(iv1)
      acd591(35)=acd591(25)*acd591(21)
      acd591(36)=acd591(33)*acd591(6)
      acd591(35)=acd591(35)+acd591(36)
      acd591(36)=acd591(24)*acd591(35)
      acd591(37)=acd591(28)*acd591(21)
      acd591(38)=acd591(33)*acd591(15)
      acd591(37)=acd591(37)+acd591(38)
      acd591(38)=acd591(27)*acd591(37)
      acd591(39)=acd591(25)*acd591(15)
      acd591(40)=acd591(28)*acd591(6)
      acd591(39)=acd591(39)+acd591(40)
      acd591(40)=acd591(32)*acd591(39)
      acd591(36)=acd591(40)+acd591(38)+acd591(36)
      acd591(36)=acd591(26)*acd591(36)
      acd591(37)=-acd591(29)*acd591(37)
      acd591(35)=-acd591(31)*acd591(35)
      acd591(38)=-acd591(34)*acd591(39)
      acd591(35)=acd591(38)+acd591(35)+acd591(37)
      acd591(35)=acd591(30)*acd591(35)
      acd591(37)=acd591(19)*acd591(3)
      acd591(38)=acd591(20)*acd591(5)
      acd591(39)=acd591(22)*acd591(9)
      acd591(40)=acd591(23)*acd591(11)
      acd591(37)=acd591(40)+acd591(39)+acd591(38)+acd591(37)
      acd591(38)=2.0_ki*acd591(18)
      acd591(37)=acd591(38)*acd591(37)
      acd591(38)=acd591(13)*acd591(3)
      acd591(39)=acd591(14)*acd591(5)
      acd591(40)=acd591(16)*acd591(9)
      acd591(41)=acd591(17)*acd591(11)
      acd591(38)=acd591(41)+acd591(40)+acd591(39)+acd591(38)
      acd591(39)=2.0_ki*acd591(12)
      acd591(38)=acd591(39)*acd591(38)
      acd591(39)=acd591(2)*acd591(3)
      acd591(40)=acd591(4)*acd591(5)
      acd591(41)=acd591(8)*acd591(9)
      acd591(42)=acd591(10)*acd591(11)
      acd591(39)=acd591(42)+acd591(41)+acd591(40)+acd591(39)
      acd591(40)=2.0_ki*acd591(1)
      acd591(39)=acd591(40)*acd591(39)
      acd591(40)=acd591(6)*acd591(1)
      acd591(41)=acd591(15)*acd591(12)
      acd591(42)=acd591(21)*acd591(18)
      acd591(40)=acd591(42)+acd591(40)+acd591(41)
      acd591(40)=acd591(7)*acd591(40)
      brack=acd591(35)+acd591(36)+acd591(37)+acd591(38)+acd591(39)+2.0_ki*acd59&
      &1(40)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p8_cbarc_epnemumnmubarg_globalsl1, only: epspow
      use p8_cbarc_epnemumnmubarg_kinematics
      use p8_cbarc_epnemumnmubarg_abbrevd591h1
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
!---#[ subroutine reconstruct_d591:
   subroutine     reconstruct_d591(coeffs)
      use p8_cbarc_epnemumnmubarg_groups, only: tensrec_info_group2
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group2), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_591:
      coeffs%coeffs_591%c0 = derivative(czip)
      coeffs%coeffs_591%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_591%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_591%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_591%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_591%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_591%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_591%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_591%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_591%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_591%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_591%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_591%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_591%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_591%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_591%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_591%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_591%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_591%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_591%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_591%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_591%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_591%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_591%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_591%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_591%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_591%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_591%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_591%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_591%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_591%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_591%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_591%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_591%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_591%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_591:
   end subroutine reconstruct_d591
!---#] subroutine reconstruct_d591:
end module     p8_cbarc_epnemumnmubarg_d591h1l1d
