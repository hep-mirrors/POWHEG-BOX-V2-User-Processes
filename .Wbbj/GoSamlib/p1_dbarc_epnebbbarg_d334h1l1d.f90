module     p1_dbarc_epnebbbarg_d334h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d334h1l1d.f90
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
   public :: derivative , reconstruct_d334
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd334h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(42) :: acd334
      complex(ki) :: brack
      acd334(1)=dotproduct(k2,qshift)
      acd334(2)=dotproduct(e7,qshift)
      acd334(3)=abb334(32)
      acd334(4)=abb334(10)
      acd334(5)=dotproduct(l6,qshift)
      acd334(6)=abb334(23)
      acd334(7)=abb334(14)
      acd334(8)=dotproduct(k7,qshift)
      acd334(9)=abb334(90)
      acd334(10)=dotproduct(qshift,spvak1k2)
      acd334(11)=abb334(21)
      acd334(12)=dotproduct(qshift,spvak4k2)
      acd334(13)=abb334(26)
      acd334(14)=dotproduct(qshift,spval6k2)
      acd334(15)=abb334(17)
      acd334(16)=dotproduct(qshift,spval6k3)
      acd334(17)=abb334(25)
      acd334(18)=dotproduct(qshift,spval6k7)
      acd334(19)=abb334(15)
      acd334(20)=dotproduct(qshift,spvak7k2)
      acd334(21)=abb334(12)
      acd334(22)=abb334(64)
      acd334(23)=dotproduct(qshift,qshift)
      acd334(24)=abb334(24)
      acd334(25)=abb334(13)
      acd334(26)=abb334(11)
      acd334(27)=abb334(20)
      acd334(28)=dotproduct(qshift,spvae7k2)
      acd334(29)=abb334(19)
      acd334(30)=dotproduct(qshift,spval6e7)
      acd334(31)=abb334(18)
      acd334(32)=abb334(16)
      acd334(33)=acd334(3)*acd334(1)
      acd334(34)=acd334(6)*acd334(5)
      acd334(35)=acd334(11)*acd334(10)
      acd334(36)=acd334(13)*acd334(12)
      acd334(37)=acd334(15)*acd334(14)
      acd334(38)=acd334(17)*acd334(16)
      acd334(39)=acd334(19)*acd334(18)
      acd334(40)=acd334(21)*acd334(20)
      acd334(33)=-acd334(22)+acd334(40)+acd334(39)+acd334(38)+acd334(37)+acd334&
      &(36)+acd334(35)+acd334(34)+acd334(33)
      acd334(33)=acd334(2)*acd334(33)
      acd334(34)=-acd334(4)*acd334(1)
      acd334(35)=-acd334(7)*acd334(5)
      acd334(36)=-acd334(9)*acd334(8)
      acd334(37)=acd334(24)*acd334(23)
      acd334(38)=-acd334(25)*acd334(14)
      acd334(39)=-acd334(26)*acd334(18)
      acd334(40)=-acd334(27)*acd334(20)
      acd334(41)=-acd334(29)*acd334(28)
      acd334(42)=-acd334(31)*acd334(30)
      brack=acd334(32)+acd334(33)+acd334(34)+acd334(35)+acd334(36)+acd334(37)+a&
      &cd334(38)+acd334(39)+acd334(40)+acd334(41)+acd334(42)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd334h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd334
      complex(ki) :: brack
      acd334(1)=k2(iv1)
      acd334(2)=dotproduct(e7,qshift)
      acd334(3)=abb334(32)
      acd334(4)=abb334(10)
      acd334(5)=l6(iv1)
      acd334(6)=abb334(23)
      acd334(7)=abb334(14)
      acd334(8)=k7(iv1)
      acd334(9)=abb334(90)
      acd334(10)=e7(iv1)
      acd334(11)=dotproduct(k2,qshift)
      acd334(12)=dotproduct(l6,qshift)
      acd334(13)=dotproduct(qshift,spvak1k2)
      acd334(14)=abb334(21)
      acd334(15)=dotproduct(qshift,spvak4k2)
      acd334(16)=abb334(26)
      acd334(17)=dotproduct(qshift,spval6k2)
      acd334(18)=abb334(17)
      acd334(19)=dotproduct(qshift,spval6k3)
      acd334(20)=abb334(25)
      acd334(21)=dotproduct(qshift,spval6k7)
      acd334(22)=abb334(15)
      acd334(23)=dotproduct(qshift,spvak7k2)
      acd334(24)=abb334(12)
      acd334(25)=abb334(64)
      acd334(26)=qshift(iv1)
      acd334(27)=abb334(24)
      acd334(28)=spvak1k2(iv1)
      acd334(29)=spvak4k2(iv1)
      acd334(30)=spval6k2(iv1)
      acd334(31)=abb334(13)
      acd334(32)=spval6k3(iv1)
      acd334(33)=spval6k7(iv1)
      acd334(34)=abb334(11)
      acd334(35)=spvak7k2(iv1)
      acd334(36)=abb334(20)
      acd334(37)=spvae7k2(iv1)
      acd334(38)=abb334(19)
      acd334(39)=spval6e7(iv1)
      acd334(40)=abb334(18)
      acd334(41)=acd334(3)*acd334(1)
      acd334(42)=acd334(6)*acd334(5)
      acd334(43)=acd334(30)*acd334(18)
      acd334(44)=acd334(33)*acd334(22)
      acd334(45)=acd334(35)*acd334(24)
      acd334(46)=acd334(28)*acd334(14)
      acd334(47)=acd334(29)*acd334(16)
      acd334(48)=acd334(32)*acd334(20)
      acd334(41)=acd334(48)+acd334(47)+acd334(46)+acd334(45)+acd334(44)+acd334(&
      &43)+acd334(41)+acd334(42)
      acd334(41)=acd334(2)*acd334(41)
      acd334(42)=acd334(11)*acd334(3)
      acd334(43)=acd334(12)*acd334(6)
      acd334(44)=acd334(13)*acd334(14)
      acd334(45)=acd334(15)*acd334(16)
      acd334(46)=acd334(17)*acd334(18)
      acd334(47)=acd334(19)*acd334(20)
      acd334(48)=acd334(21)*acd334(22)
      acd334(49)=acd334(23)*acd334(24)
      acd334(42)=-acd334(25)+acd334(49)+acd334(48)+acd334(47)+acd334(46)+acd334&
      &(45)+acd334(44)+acd334(43)+acd334(42)
      acd334(42)=acd334(10)*acd334(42)
      acd334(43)=-acd334(4)*acd334(1)
      acd334(44)=-acd334(7)*acd334(5)
      acd334(45)=-acd334(9)*acd334(8)
      acd334(46)=acd334(27)*acd334(26)
      acd334(47)=-acd334(31)*acd334(30)
      acd334(48)=-acd334(34)*acd334(33)
      acd334(49)=-acd334(36)*acd334(35)
      acd334(50)=-acd334(38)*acd334(37)
      acd334(51)=-acd334(40)*acd334(39)
      brack=acd334(41)+acd334(42)+acd334(43)+acd334(44)+acd334(45)+2.0_ki*acd33&
      &4(46)+acd334(47)+acd334(48)+acd334(49)+acd334(50)+acd334(51)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd334h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd334
      complex(ki) :: brack
      acd334(1)=d(iv1,iv2)
      acd334(2)=abb334(24)
      acd334(3)=k2(iv1)
      acd334(4)=e7(iv2)
      acd334(5)=abb334(32)
      acd334(6)=k2(iv2)
      acd334(7)=e7(iv1)
      acd334(8)=l6(iv1)
      acd334(9)=abb334(23)
      acd334(10)=l6(iv2)
      acd334(11)=spvak1k2(iv2)
      acd334(12)=abb334(21)
      acd334(13)=spvak4k2(iv2)
      acd334(14)=abb334(26)
      acd334(15)=spval6k2(iv2)
      acd334(16)=abb334(17)
      acd334(17)=spval6k3(iv2)
      acd334(18)=abb334(25)
      acd334(19)=spval6k7(iv2)
      acd334(20)=abb334(15)
      acd334(21)=spvak7k2(iv2)
      acd334(22)=abb334(12)
      acd334(23)=spvak1k2(iv1)
      acd334(24)=spvak4k2(iv1)
      acd334(25)=spval6k2(iv1)
      acd334(26)=spval6k3(iv1)
      acd334(27)=spval6k7(iv1)
      acd334(28)=spvak7k2(iv1)
      acd334(29)=acd334(3)*acd334(5)
      acd334(30)=acd334(8)*acd334(9)
      acd334(31)=acd334(23)*acd334(12)
      acd334(32)=acd334(24)*acd334(14)
      acd334(33)=acd334(25)*acd334(16)
      acd334(34)=acd334(26)*acd334(18)
      acd334(35)=acd334(27)*acd334(20)
      acd334(36)=acd334(28)*acd334(22)
      acd334(29)=acd334(36)+acd334(35)+acd334(34)+acd334(33)+acd334(32)+acd334(&
      &31)+acd334(30)+acd334(29)
      acd334(29)=acd334(4)*acd334(29)
      acd334(30)=acd334(6)*acd334(5)
      acd334(31)=acd334(10)*acd334(9)
      acd334(32)=acd334(11)*acd334(12)
      acd334(33)=acd334(13)*acd334(14)
      acd334(34)=acd334(15)*acd334(16)
      acd334(35)=acd334(17)*acd334(18)
      acd334(36)=acd334(19)*acd334(20)
      acd334(37)=acd334(21)*acd334(22)
      acd334(30)=acd334(37)+acd334(36)+acd334(35)+acd334(34)+acd334(33)+acd334(&
      &32)+acd334(31)+acd334(30)
      acd334(30)=acd334(7)*acd334(30)
      acd334(31)=acd334(2)*acd334(1)
      brack=acd334(29)+acd334(30)+2.0_ki*acd334(31)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd334h1
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
      qshift = -k7
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
!---#[ subroutine reconstruct_d334:
   subroutine     reconstruct_d334(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group20
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group20), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_334:
      coeffs%coeffs_334%c0 = derivative(czip)
      coeffs%coeffs_334%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_334%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_334%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_334%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_334%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_334%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_334%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_334%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_334%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_334%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_334%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_334%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_334%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_334%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_334:
   end subroutine reconstruct_d334
!---#] subroutine reconstruct_d334:
end module     p1_dbarc_epnebbbarg_d334h1l1d
