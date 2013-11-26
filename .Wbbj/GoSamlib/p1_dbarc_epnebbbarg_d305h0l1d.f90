module     p1_dbarc_epnebbbarg_d305h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity0d305h0l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d305
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd305h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(32) :: acd305
      complex(ki) :: brack
      acd305(1)=dotproduct(k7,qshift)
      acd305(2)=dotproduct(qshift,spval5k2)
      acd305(3)=abb305(17)
      acd305(4)=dotproduct(e7,qshift)
      acd305(5)=dotproduct(qshift,spvak1k2)
      acd305(6)=abb305(7)
      acd305(7)=dotproduct(qshift,spvak4k2)
      acd305(8)=abb305(15)
      acd305(9)=abb305(8)
      acd305(10)=dotproduct(qshift,qshift)
      acd305(11)=abb305(9)
      acd305(12)=dotproduct(qshift,spvak7k2)
      acd305(13)=abb305(19)
      acd305(14)=dotproduct(qshift,spvak1e7)
      acd305(15)=abb305(18)
      acd305(16)=dotproduct(qshift,spvae7k2)
      acd305(17)=abb305(21)
      acd305(18)=dotproduct(qshift,spvak4e7)
      acd305(19)=abb305(16)
      acd305(20)=abb305(13)
      acd305(21)=abb305(10)
      acd305(22)=abb305(12)
      acd305(23)=dotproduct(qshift,spval5e7)
      acd305(24)=abb305(11)
      acd305(25)=abb305(14)
      acd305(26)=-acd305(6)*acd305(5)
      acd305(27)=-acd305(8)*acd305(7)
      acd305(26)=acd305(9)+acd305(27)+acd305(26)
      acd305(26)=acd305(26)*acd305(4)
      acd305(27)=acd305(3)*acd305(1)
      acd305(28)=-acd305(11)*acd305(10)
      acd305(29)=acd305(13)*acd305(12)
      acd305(30)=acd305(15)*acd305(14)
      acd305(31)=acd305(17)*acd305(16)
      acd305(32)=acd305(19)*acd305(18)
      acd305(26)=acd305(26)-acd305(20)+acd305(32)+acd305(31)+acd305(30)+acd305(&
      &29)+acd305(28)+acd305(27)
      acd305(26)=acd305(2)*acd305(26)
      acd305(27)=-acd305(21)*acd305(12)
      acd305(28)=-acd305(22)*acd305(16)
      acd305(29)=-acd305(24)*acd305(23)
      brack=acd305(25)+acd305(26)+acd305(27)+acd305(28)+acd305(29)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd305h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(43) :: acd305
      complex(ki) :: brack
      acd305(1)=k7(iv1)
      acd305(2)=dotproduct(qshift,spval5k2)
      acd305(3)=abb305(17)
      acd305(4)=e7(iv1)
      acd305(5)=dotproduct(qshift,spvak1k2)
      acd305(6)=abb305(7)
      acd305(7)=dotproduct(qshift,spvak4k2)
      acd305(8)=abb305(15)
      acd305(9)=abb305(8)
      acd305(10)=qshift(iv1)
      acd305(11)=abb305(9)
      acd305(12)=spval5k2(iv1)
      acd305(13)=dotproduct(k7,qshift)
      acd305(14)=dotproduct(e7,qshift)
      acd305(15)=dotproduct(qshift,qshift)
      acd305(16)=dotproduct(qshift,spvak7k2)
      acd305(17)=abb305(19)
      acd305(18)=dotproduct(qshift,spvak1e7)
      acd305(19)=abb305(18)
      acd305(20)=dotproduct(qshift,spvae7k2)
      acd305(21)=abb305(21)
      acd305(22)=dotproduct(qshift,spvak4e7)
      acd305(23)=abb305(16)
      acd305(24)=abb305(13)
      acd305(25)=spvak1k2(iv1)
      acd305(26)=spvak4k2(iv1)
      acd305(27)=spvak7k2(iv1)
      acd305(28)=abb305(10)
      acd305(29)=spvak1e7(iv1)
      acd305(30)=spvae7k2(iv1)
      acd305(31)=abb305(12)
      acd305(32)=spvak4e7(iv1)
      acd305(33)=spval5e7(iv1)
      acd305(34)=abb305(11)
      acd305(35)=acd305(8)*acd305(7)
      acd305(36)=acd305(6)*acd305(5)
      acd305(35)=-acd305(9)+acd305(35)+acd305(36)
      acd305(36)=acd305(4)*acd305(35)
      acd305(37)=acd305(8)*acd305(26)
      acd305(38)=acd305(6)*acd305(25)
      acd305(37)=acd305(37)+acd305(38)
      acd305(37)=acd305(14)*acd305(37)
      acd305(38)=-acd305(23)*acd305(32)
      acd305(39)=-acd305(21)*acd305(30)
      acd305(40)=-acd305(19)*acd305(29)
      acd305(41)=-acd305(17)*acd305(27)
      acd305(42)=acd305(11)*acd305(10)
      acd305(43)=-acd305(3)*acd305(1)
      acd305(36)=acd305(37)+acd305(36)+acd305(43)+2.0_ki*acd305(42)+acd305(41)+&
      &acd305(40)+acd305(38)+acd305(39)
      acd305(36)=acd305(2)*acd305(36)
      acd305(35)=acd305(14)*acd305(35)
      acd305(37)=-acd305(23)*acd305(22)
      acd305(38)=-acd305(21)*acd305(20)
      acd305(39)=-acd305(19)*acd305(18)
      acd305(40)=-acd305(17)*acd305(16)
      acd305(41)=acd305(11)*acd305(15)
      acd305(42)=-acd305(3)*acd305(13)
      acd305(35)=acd305(35)+acd305(42)+acd305(41)+acd305(40)+acd305(39)+acd305(&
      &38)+acd305(24)+acd305(37)
      acd305(35)=acd305(12)*acd305(35)
      acd305(37)=acd305(33)*acd305(34)
      acd305(38)=acd305(30)*acd305(31)
      acd305(39)=acd305(27)*acd305(28)
      brack=acd305(35)+acd305(36)+acd305(37)+acd305(38)+acd305(39)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd305h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(44) :: acd305
      complex(ki) :: brack
      acd305(1)=d(iv1,iv2)
      acd305(2)=dotproduct(qshift,spval5k2)
      acd305(3)=abb305(9)
      acd305(4)=k7(iv1)
      acd305(5)=spval5k2(iv2)
      acd305(6)=abb305(17)
      acd305(7)=k7(iv2)
      acd305(8)=spval5k2(iv1)
      acd305(9)=e7(iv1)
      acd305(10)=dotproduct(qshift,spvak1k2)
      acd305(11)=abb305(7)
      acd305(12)=dotproduct(qshift,spvak4k2)
      acd305(13)=abb305(15)
      acd305(14)=abb305(8)
      acd305(15)=spvak1k2(iv2)
      acd305(16)=spvak4k2(iv2)
      acd305(17)=e7(iv2)
      acd305(18)=spvak1k2(iv1)
      acd305(19)=spvak4k2(iv1)
      acd305(20)=qshift(iv1)
      acd305(21)=qshift(iv2)
      acd305(22)=dotproduct(e7,qshift)
      acd305(23)=spvak7k2(iv2)
      acd305(24)=abb305(19)
      acd305(25)=spvak1e7(iv2)
      acd305(26)=abb305(18)
      acd305(27)=spvae7k2(iv2)
      acd305(28)=abb305(21)
      acd305(29)=spvak4e7(iv2)
      acd305(30)=abb305(16)
      acd305(31)=spvak7k2(iv1)
      acd305(32)=spvak1e7(iv1)
      acd305(33)=spvae7k2(iv1)
      acd305(34)=spvak4e7(iv1)
      acd305(35)=acd305(4)*acd305(6)
      acd305(36)=2.0_ki*acd305(3)
      acd305(37)=-acd305(20)*acd305(36)
      acd305(38)=acd305(31)*acd305(24)
      acd305(39)=acd305(32)*acd305(26)
      acd305(40)=acd305(33)*acd305(28)
      acd305(41)=acd305(34)*acd305(30)
      acd305(35)=acd305(41)+acd305(40)+acd305(39)+acd305(38)+acd305(37)+acd305(&
      &35)
      acd305(35)=acd305(5)*acd305(35)
      acd305(37)=acd305(7)*acd305(6)
      acd305(38)=-acd305(21)*acd305(36)
      acd305(39)=acd305(23)*acd305(24)
      acd305(40)=acd305(25)*acd305(26)
      acd305(41)=acd305(27)*acd305(28)
      acd305(42)=acd305(29)*acd305(30)
      acd305(37)=acd305(42)+acd305(41)+acd305(40)+acd305(39)+acd305(38)+acd305(&
      &37)
      acd305(37)=acd305(8)*acd305(37)
      acd305(38)=-acd305(10)*acd305(11)
      acd305(39)=-acd305(12)*acd305(13)
      acd305(38)=acd305(14)+acd305(38)+acd305(39)
      acd305(39)=acd305(9)*acd305(5)
      acd305(40)=acd305(17)*acd305(8)
      acd305(39)=acd305(39)+acd305(40)
      acd305(38)=acd305(39)*acd305(38)
      acd305(39)=acd305(9)*acd305(2)
      acd305(40)=-acd305(11)*acd305(39)
      acd305(41)=acd305(22)*acd305(11)
      acd305(42)=-acd305(8)*acd305(41)
      acd305(40)=acd305(40)+acd305(42)
      acd305(40)=acd305(15)*acd305(40)
      acd305(39)=-acd305(13)*acd305(39)
      acd305(42)=acd305(22)*acd305(13)
      acd305(43)=-acd305(8)*acd305(42)
      acd305(39)=acd305(39)+acd305(43)
      acd305(39)=acd305(16)*acd305(39)
      acd305(43)=acd305(17)*acd305(2)
      acd305(44)=-acd305(11)*acd305(43)
      acd305(41)=-acd305(5)*acd305(41)
      acd305(41)=acd305(44)+acd305(41)
      acd305(41)=acd305(18)*acd305(41)
      acd305(43)=-acd305(13)*acd305(43)
      acd305(42)=-acd305(5)*acd305(42)
      acd305(42)=acd305(43)+acd305(42)
      acd305(42)=acd305(19)*acd305(42)
      acd305(36)=-acd305(1)*acd305(2)*acd305(36)
      brack=acd305(35)+acd305(36)+acd305(37)+acd305(38)+acd305(39)+acd305(40)+a&
      &cd305(41)+acd305(42)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd305h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd305
      complex(ki) :: brack
      acd305(1)=d(iv1,iv2)
      acd305(2)=spval5k2(iv3)
      acd305(3)=abb305(9)
      acd305(4)=d(iv1,iv3)
      acd305(5)=spval5k2(iv2)
      acd305(6)=d(iv2,iv3)
      acd305(7)=spval5k2(iv1)
      acd305(8)=e7(iv1)
      acd305(9)=spvak1k2(iv3)
      acd305(10)=abb305(7)
      acd305(11)=spvak4k2(iv3)
      acd305(12)=abb305(15)
      acd305(13)=spvak1k2(iv2)
      acd305(14)=spvak4k2(iv2)
      acd305(15)=e7(iv2)
      acd305(16)=spvak1k2(iv1)
      acd305(17)=spvak4k2(iv1)
      acd305(18)=e7(iv3)
      acd305(19)=acd305(8)*acd305(5)
      acd305(20)=acd305(15)*acd305(7)
      acd305(19)=acd305(19)+acd305(20)
      acd305(20)=acd305(9)*acd305(19)
      acd305(21)=acd305(8)*acd305(2)
      acd305(22)=acd305(18)*acd305(7)
      acd305(21)=acd305(21)+acd305(22)
      acd305(22)=acd305(13)*acd305(21)
      acd305(23)=acd305(15)*acd305(2)
      acd305(24)=acd305(18)*acd305(5)
      acd305(23)=acd305(23)+acd305(24)
      acd305(24)=acd305(16)*acd305(23)
      acd305(20)=acd305(24)+acd305(22)+acd305(20)
      acd305(20)=acd305(10)*acd305(20)
      acd305(19)=acd305(11)*acd305(19)
      acd305(21)=acd305(14)*acd305(21)
      acd305(22)=acd305(17)*acd305(23)
      acd305(19)=acd305(22)+acd305(21)+acd305(19)
      acd305(19)=acd305(12)*acd305(19)
      acd305(21)=acd305(1)*acd305(2)
      acd305(22)=acd305(4)*acd305(5)
      acd305(23)=acd305(6)*acd305(7)
      acd305(21)=acd305(23)+acd305(22)+acd305(21)
      acd305(22)=2.0_ki*acd305(3)
      acd305(21)=acd305(22)*acd305(21)
      brack=acd305(19)+acd305(20)+acd305(21)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd305h0
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
      qshift = k5
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
!---#[ subroutine reconstruct_d305:
   subroutine     reconstruct_d305(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group14
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group14), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_305:
      coeffs%coeffs_305%c0 = derivative(czip)
      coeffs%coeffs_305%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_305%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_305%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_305%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_305%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_305%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_305%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_305%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_305%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_305%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_305%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_305%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_305%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_305%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_305%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_305%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_305%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_305%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_305%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_305%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_305%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_305%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_305%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_305%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_305%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_305%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_305%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_305%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_305%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_305%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_305%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_305%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_305%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_305%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_305:
   end subroutine reconstruct_d305
!---#] subroutine reconstruct_d305:
end module     p1_dbarc_epnebbbarg_d305h0l1d
