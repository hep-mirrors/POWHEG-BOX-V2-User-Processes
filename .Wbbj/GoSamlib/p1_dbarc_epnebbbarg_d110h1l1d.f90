module     p1_dbarc_epnebbbarg_d110h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d110h1l1d.f90
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
   public :: derivative , reconstruct_d110
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd110h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd110
      complex(ki) :: brack
      acd110(1)=dotproduct(k2,qshift)
      acd110(2)=dotproduct(qshift,spval6l5)
      acd110(3)=abb110(15)
      acd110(4)=dotproduct(qshift,spvae7l5)
      acd110(5)=abb110(41)
      acd110(6)=abb110(24)
      acd110(7)=dotproduct(k7,qshift)
      acd110(8)=dotproduct(qshift,spvae7k2)
      acd110(9)=abb110(34)
      acd110(10)=abb110(42)
      acd110(11)=dotproduct(e7,qshift)
      acd110(12)=abb110(14)
      acd110(13)=dotproduct(qshift,spvak7k2)
      acd110(14)=abb110(31)
      acd110(15)=dotproduct(qshift,spvak7l5)
      acd110(16)=abb110(36)
      acd110(17)=abb110(21)
      acd110(18)=dotproduct(qshift,qshift)
      acd110(19)=abb110(33)
      acd110(20)=abb110(17)
      acd110(21)=abb110(16)
      acd110(22)=abb110(9)
      acd110(23)=dotproduct(qshift,spvak2l5)
      acd110(24)=abb110(22)
      acd110(25)=abb110(25)
      acd110(26)=dotproduct(qshift,spvak1k2)
      acd110(27)=abb110(13)
      acd110(28)=dotproduct(qshift,spvak2k7)
      acd110(29)=abb110(12)
      acd110(30)=dotproduct(qshift,spvak4k2)
      acd110(31)=abb110(10)
      acd110(32)=dotproduct(qshift,spval6k2)
      acd110(33)=abb110(19)
      acd110(34)=dotproduct(qshift,spval6k7)
      acd110(35)=abb110(11)
      acd110(36)=abb110(18)
      acd110(37)=acd110(9)*acd110(7)
      acd110(38)=acd110(20)*acd110(2)
      acd110(39)=acd110(21)*acd110(13)
      acd110(40)=acd110(22)*acd110(15)
      acd110(41)=acd110(24)*acd110(23)
      acd110(37)=-acd110(25)+acd110(41)+acd110(40)+acd110(39)+acd110(38)+acd110&
      &(37)
      acd110(37)=acd110(8)*acd110(37)
      acd110(38)=acd110(12)*acd110(2)
      acd110(39)=acd110(14)*acd110(13)
      acd110(40)=acd110(16)*acd110(15)
      acd110(38)=-acd110(17)+acd110(40)+acd110(39)+acd110(38)
      acd110(38)=acd110(11)*acd110(38)
      acd110(39)=-acd110(3)*acd110(2)
      acd110(40)=acd110(5)*acd110(4)
      acd110(39)=acd110(39)+acd110(40)
      acd110(40)=acd110(1)-acd110(7)
      acd110(39)=acd110(40)*acd110(39)
      acd110(40)=-acd110(6)*acd110(1)
      acd110(41)=-acd110(10)*acd110(7)
      acd110(42)=acd110(19)*acd110(18)
      acd110(43)=-acd110(27)*acd110(26)
      acd110(44)=-acd110(29)*acd110(28)
      acd110(45)=-acd110(31)*acd110(30)
      acd110(46)=-acd110(33)*acd110(32)
      acd110(47)=-acd110(35)*acd110(34)
      brack=acd110(36)+acd110(37)+acd110(38)+acd110(39)+acd110(40)+acd110(41)+a&
      &cd110(42)+acd110(43)+acd110(44)+acd110(45)+acd110(46)+acd110(47)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd110h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd110
      complex(ki) :: brack
      acd110(1)=k2(iv1)
      acd110(2)=dotproduct(qshift,spval6l5)
      acd110(3)=abb110(15)
      acd110(4)=dotproduct(qshift,spvae7l5)
      acd110(5)=abb110(41)
      acd110(6)=abb110(24)
      acd110(7)=k7(iv1)
      acd110(8)=dotproduct(qshift,spvae7k2)
      acd110(9)=abb110(34)
      acd110(10)=abb110(42)
      acd110(11)=e7(iv1)
      acd110(12)=abb110(14)
      acd110(13)=dotproduct(qshift,spvak7k2)
      acd110(14)=abb110(31)
      acd110(15)=dotproduct(qshift,spvak7l5)
      acd110(16)=abb110(36)
      acd110(17)=abb110(21)
      acd110(18)=qshift(iv1)
      acd110(19)=abb110(33)
      acd110(20)=spval6l5(iv1)
      acd110(21)=dotproduct(k2,qshift)
      acd110(22)=dotproduct(k7,qshift)
      acd110(23)=dotproduct(e7,qshift)
      acd110(24)=abb110(17)
      acd110(25)=spvae7l5(iv1)
      acd110(26)=spvae7k2(iv1)
      acd110(27)=abb110(16)
      acd110(28)=abb110(9)
      acd110(29)=dotproduct(qshift,spvak2l5)
      acd110(30)=abb110(22)
      acd110(31)=abb110(25)
      acd110(32)=spvak7k2(iv1)
      acd110(33)=spvak7l5(iv1)
      acd110(34)=spvak1k2(iv1)
      acd110(35)=abb110(13)
      acd110(36)=spvak2l5(iv1)
      acd110(37)=spvak2k7(iv1)
      acd110(38)=abb110(12)
      acd110(39)=spvak4k2(iv1)
      acd110(40)=abb110(10)
      acd110(41)=spval6k2(iv1)
      acd110(42)=abb110(19)
      acd110(43)=spval6k7(iv1)
      acd110(44)=abb110(11)
      acd110(45)=-acd110(30)*acd110(36)
      acd110(46)=-acd110(28)*acd110(33)
      acd110(47)=-acd110(27)*acd110(32)
      acd110(48)=-acd110(20)*acd110(24)
      acd110(49)=-acd110(7)*acd110(9)
      acd110(45)=acd110(49)+acd110(48)+acd110(47)+acd110(45)+acd110(46)
      acd110(45)=acd110(8)*acd110(45)
      acd110(46)=-acd110(30)*acd110(29)
      acd110(47)=-acd110(15)*acd110(28)
      acd110(48)=-acd110(13)*acd110(27)
      acd110(49)=-acd110(22)*acd110(9)
      acd110(50)=-acd110(2)*acd110(24)
      acd110(46)=acd110(50)+acd110(49)+acd110(48)+acd110(47)+acd110(31)+acd110(&
      &46)
      acd110(46)=acd110(26)*acd110(46)
      acd110(47)=-acd110(23)*acd110(12)
      acd110(48)=acd110(22)-acd110(21)
      acd110(49)=-acd110(3)*acd110(48)
      acd110(47)=acd110(49)+acd110(47)
      acd110(47)=acd110(20)*acd110(47)
      acd110(49)=-acd110(16)*acd110(33)
      acd110(50)=-acd110(14)*acd110(32)
      acd110(49)=acd110(49)+acd110(50)
      acd110(49)=acd110(23)*acd110(49)
      acd110(50)=-acd110(15)*acd110(16)
      acd110(51)=-acd110(13)*acd110(14)
      acd110(50)=acd110(51)+acd110(17)+acd110(50)
      acd110(50)=acd110(11)*acd110(50)
      acd110(48)=acd110(25)*acd110(48)
      acd110(51)=acd110(7)-acd110(1)
      acd110(52)=acd110(4)*acd110(51)
      acd110(48)=acd110(52)+acd110(48)
      acd110(48)=acd110(5)*acd110(48)
      acd110(52)=-acd110(11)*acd110(12)
      acd110(51)=-acd110(3)*acd110(51)
      acd110(51)=acd110(52)+acd110(51)
      acd110(51)=acd110(2)*acd110(51)
      acd110(52)=acd110(43)*acd110(44)
      acd110(53)=acd110(41)*acd110(42)
      acd110(54)=acd110(39)*acd110(40)
      acd110(55)=acd110(37)*acd110(38)
      acd110(56)=acd110(34)*acd110(35)
      acd110(57)=acd110(18)*acd110(19)
      acd110(58)=acd110(1)*acd110(6)
      acd110(59)=acd110(7)*acd110(10)
      brack=acd110(45)+acd110(46)+acd110(47)+acd110(48)+acd110(49)+acd110(50)+a&
      &cd110(51)+acd110(52)+acd110(53)+acd110(54)+acd110(55)+acd110(56)-2.0_ki*&
      &acd110(57)+acd110(58)+acd110(59)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd110h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd110
      complex(ki) :: brack
      acd110(1)=d(iv1,iv2)
      acd110(2)=abb110(33)
      acd110(3)=k2(iv1)
      acd110(4)=spval6l5(iv2)
      acd110(5)=abb110(15)
      acd110(6)=spvae7l5(iv2)
      acd110(7)=abb110(41)
      acd110(8)=k2(iv2)
      acd110(9)=spval6l5(iv1)
      acd110(10)=spvae7l5(iv1)
      acd110(11)=k7(iv1)
      acd110(12)=spvae7k2(iv2)
      acd110(13)=abb110(34)
      acd110(14)=k7(iv2)
      acd110(15)=spvae7k2(iv1)
      acd110(16)=e7(iv1)
      acd110(17)=abb110(14)
      acd110(18)=spvak7k2(iv2)
      acd110(19)=abb110(31)
      acd110(20)=spvak7l5(iv2)
      acd110(21)=abb110(36)
      acd110(22)=e7(iv2)
      acd110(23)=spvak7k2(iv1)
      acd110(24)=spvak7l5(iv1)
      acd110(25)=abb110(17)
      acd110(26)=abb110(16)
      acd110(27)=abb110(9)
      acd110(28)=spvak2l5(iv2)
      acd110(29)=abb110(22)
      acd110(30)=spvak2l5(iv1)
      acd110(31)=acd110(29)*acd110(28)
      acd110(32)=acd110(20)*acd110(27)
      acd110(33)=acd110(18)*acd110(26)
      acd110(34)=acd110(14)*acd110(13)
      acd110(35)=acd110(4)*acd110(25)
      acd110(31)=acd110(35)+acd110(34)+acd110(33)+acd110(31)+acd110(32)
      acd110(31)=acd110(15)*acd110(31)
      acd110(32)=acd110(29)*acd110(30)
      acd110(33)=acd110(24)*acd110(27)
      acd110(34)=acd110(23)*acd110(26)
      acd110(35)=acd110(11)*acd110(13)
      acd110(36)=acd110(9)*acd110(25)
      acd110(32)=acd110(36)+acd110(35)+acd110(34)+acd110(32)+acd110(33)
      acd110(32)=acd110(12)*acd110(32)
      acd110(33)=acd110(22)*acd110(17)
      acd110(34)=acd110(14)-acd110(8)
      acd110(35)=acd110(5)*acd110(34)
      acd110(33)=acd110(35)+acd110(33)
      acd110(33)=acd110(9)*acd110(33)
      acd110(35)=acd110(21)*acd110(24)
      acd110(36)=acd110(19)*acd110(23)
      acd110(35)=acd110(35)+acd110(36)
      acd110(35)=acd110(22)*acd110(35)
      acd110(36)=acd110(20)*acd110(21)
      acd110(37)=acd110(18)*acd110(19)
      acd110(36)=acd110(36)+acd110(37)
      acd110(36)=acd110(16)*acd110(36)
      acd110(34)=-acd110(10)*acd110(34)
      acd110(37)=acd110(11)-acd110(3)
      acd110(38)=-acd110(6)*acd110(37)
      acd110(34)=acd110(38)+acd110(34)
      acd110(34)=acd110(7)*acd110(34)
      acd110(38)=acd110(16)*acd110(17)
      acd110(37)=acd110(5)*acd110(37)
      acd110(37)=acd110(38)+acd110(37)
      acd110(37)=acd110(4)*acd110(37)
      acd110(38)=acd110(1)*acd110(2)
      brack=acd110(31)+acd110(32)+acd110(33)+acd110(34)+acd110(35)+acd110(36)+a&
      &cd110(37)+2.0_ki*acd110(38)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd110h1
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
      qshift = k6
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
!---#[ subroutine reconstruct_d110:
   subroutine     reconstruct_d110(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_110:
      coeffs%coeffs_110%c0 = derivative(czip)
      coeffs%coeffs_110%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_110%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_110%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_110%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_110%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_110%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_110%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_110%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_110%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_110%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_110%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_110%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_110%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_110%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_110:
   end subroutine reconstruct_d110
!---#] subroutine reconstruct_d110:
end module     p1_dbarc_epnebbbarg_d110h1l1d
