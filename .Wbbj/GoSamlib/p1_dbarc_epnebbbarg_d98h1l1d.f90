module     p1_dbarc_epnebbbarg_d98h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d98h1l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d98
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd98h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd98
      complex(ki) :: brack
      acd98(1)=abb98(22)
      brack=acd98(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd98h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(39) :: acd98
      complex(ki) :: brack
      acd98(1)=k2(iv1)
      acd98(2)=abb98(28)
      acd98(3)=l5(iv1)
      acd98(4)=abb98(18)
      acd98(5)=k7(iv1)
      acd98(6)=abb98(16)
      acd98(7)=spvak1k2(iv1)
      acd98(8)=abb98(25)
      acd98(9)=spvak4k2(iv1)
      acd98(10)=abb98(21)
      acd98(11)=spval5k2(iv1)
      acd98(12)=abb98(17)
      acd98(13)=spval5k7(iv1)
      acd98(14)=abb98(19)
      acd98(15)=spval6k2(iv1)
      acd98(16)=abb98(32)
      acd98(17)=spvak7k2(iv1)
      acd98(18)=abb98(24)
      acd98(19)=spvak7l5(iv1)
      acd98(20)=abb98(15)
      acd98(21)=spvae7k2(iv1)
      acd98(22)=abb98(40)
      acd98(23)=spval5e7(iv1)
      acd98(24)=abb98(11)
      acd98(25)=spvak7e7(iv1)
      acd98(26)=abb98(38)
      acd98(27)=acd98(2)*acd98(1)
      acd98(28)=acd98(4)*acd98(3)
      acd98(29)=acd98(6)*acd98(5)
      acd98(30)=acd98(8)*acd98(7)
      acd98(31)=acd98(10)*acd98(9)
      acd98(32)=acd98(12)*acd98(11)
      acd98(33)=acd98(14)*acd98(13)
      acd98(34)=acd98(16)*acd98(15)
      acd98(35)=acd98(18)*acd98(17)
      acd98(36)=acd98(20)*acd98(19)
      acd98(37)=acd98(22)*acd98(21)
      acd98(38)=acd98(24)*acd98(23)
      acd98(39)=acd98(26)*acd98(25)
      brack=acd98(27)+acd98(28)+acd98(29)+acd98(30)+acd98(31)+acd98(32)+acd98(3&
      &3)+acd98(34)+acd98(35)+acd98(36)+acd98(37)+acd98(38)+acd98(39)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd98h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd98
      complex(ki) :: brack
      acd98(1)=spvak1k2(iv1)
      acd98(2)=spval5k2(iv2)
      acd98(3)=abb98(14)
      acd98(4)=spval6l5(iv2)
      acd98(5)=abb98(30)
      acd98(6)=spval6k7(iv2)
      acd98(7)=abb98(31)
      acd98(8)=spvak7k2(iv2)
      acd98(9)=abb98(9)
      acd98(10)=spvae7k2(iv2)
      acd98(11)=abb98(10)
      acd98(12)=spval6e7(iv2)
      acd98(13)=abb98(33)
      acd98(14)=spvak1k2(iv2)
      acd98(15)=spval5k2(iv1)
      acd98(16)=spval6l5(iv1)
      acd98(17)=spval6k7(iv1)
      acd98(18)=spvak7k2(iv1)
      acd98(19)=spvae7k2(iv1)
      acd98(20)=spval6e7(iv1)
      acd98(21)=spvak4k2(iv2)
      acd98(22)=abb98(29)
      acd98(23)=spvak4k2(iv1)
      acd98(24)=abb98(26)
      acd98(25)=abb98(23)
      acd98(26)=abb98(12)
      acd98(27)=abb98(13)
      acd98(28)=abb98(43)
      acd98(29)=spvak1l5(iv1)
      acd98(30)=spval6k2(iv2)
      acd98(31)=spvak1l5(iv2)
      acd98(32)=spval6k2(iv1)
      acd98(33)=spvak1k7(iv2)
      acd98(34)=spvak4l5(iv2)
      acd98(35)=spvak4k7(iv2)
      acd98(36)=spvak1e7(iv2)
      acd98(37)=spvak4e7(iv2)
      acd98(38)=spvak1k7(iv1)
      acd98(39)=spvak4l5(iv1)
      acd98(40)=spvak4k7(iv1)
      acd98(41)=spvak1e7(iv1)
      acd98(42)=spvak4e7(iv1)
      acd98(43)=acd98(28)*acd98(37)
      acd98(44)=acd98(25)*acd98(35)
      acd98(45)=-acd98(24)*acd98(34)
      acd98(46)=acd98(13)*acd98(36)
      acd98(47)=acd98(7)*acd98(33)
      acd98(48)=-acd98(5)*acd98(31)
      acd98(43)=acd98(48)+acd98(47)+acd98(46)+acd98(45)+acd98(43)+acd98(44)
      acd98(43)=acd98(32)*acd98(43)
      acd98(44)=acd98(28)*acd98(42)
      acd98(45)=acd98(25)*acd98(40)
      acd98(46)=-acd98(24)*acd98(39)
      acd98(47)=acd98(13)*acd98(41)
      acd98(48)=acd98(7)*acd98(38)
      acd98(49)=-acd98(5)*acd98(29)
      acd98(44)=acd98(49)+acd98(48)+acd98(47)+acd98(46)+acd98(44)+acd98(45)
      acd98(44)=acd98(30)*acd98(44)
      acd98(45)=acd98(10)*acd98(27)
      acd98(46)=acd98(8)*acd98(26)
      acd98(47)=acd98(2)*acd98(22)
      acd98(48)=-acd98(28)*acd98(12)
      acd98(49)=-acd98(25)*acd98(6)
      acd98(50)=acd98(24)*acd98(4)
      acd98(45)=acd98(50)+acd98(49)+acd98(48)+acd98(47)+acd98(45)+acd98(46)
      acd98(45)=acd98(23)*acd98(45)
      acd98(46)=acd98(19)*acd98(27)
      acd98(47)=acd98(18)*acd98(26)
      acd98(48)=acd98(15)*acd98(22)
      acd98(49)=-acd98(28)*acd98(20)
      acd98(50)=-acd98(25)*acd98(17)
      acd98(51)=acd98(24)*acd98(16)
      acd98(46)=acd98(51)+acd98(50)+acd98(49)+acd98(48)+acd98(46)+acd98(47)
      acd98(46)=acd98(21)*acd98(46)
      acd98(47)=acd98(11)*acd98(19)
      acd98(48)=acd98(9)*acd98(18)
      acd98(49)=acd98(3)*acd98(15)
      acd98(50)=-acd98(13)*acd98(20)
      acd98(51)=-acd98(7)*acd98(17)
      acd98(52)=acd98(5)*acd98(16)
      acd98(47)=acd98(52)+acd98(51)+acd98(50)+acd98(49)+acd98(47)+acd98(48)
      acd98(47)=acd98(14)*acd98(47)
      acd98(48)=acd98(10)*acd98(11)
      acd98(49)=acd98(8)*acd98(9)
      acd98(50)=acd98(2)*acd98(3)
      acd98(51)=-acd98(13)*acd98(12)
      acd98(52)=-acd98(7)*acd98(6)
      acd98(53)=acd98(5)*acd98(4)
      acd98(48)=acd98(53)+acd98(52)+acd98(51)+acd98(50)+acd98(48)+acd98(49)
      acd98(48)=acd98(1)*acd98(48)
      brack=acd98(43)+acd98(44)+acd98(45)+acd98(46)+acd98(47)+acd98(48)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd98h1
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
!---#[ subroutine reconstruct_d98:
   subroutine     reconstruct_d98(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_98:
      coeffs%coeffs_98%c0 = derivative(czip)
      coeffs%coeffs_98%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_98%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_98%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_98%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_98%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_98%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_98%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_98%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_98%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_98%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_98%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_98%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_98%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_98%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_98:
   end subroutine reconstruct_d98
!---#] subroutine reconstruct_d98:
end module     p1_dbarc_epnebbbarg_d98h1l1d
