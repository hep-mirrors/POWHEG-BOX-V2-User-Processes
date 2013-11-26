module     p9_csbar_epnebbbarg_d18h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity1d18h1l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d18
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd18h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd18
      complex(ki) :: brack
      acd18(1)=abb18(110)
      brack=acd18(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd18h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(35) :: acd18
      complex(ki) :: brack
      acd18(1)=k1(iv1)
      acd18(2)=abb18(22)
      acd18(3)=k2(iv1)
      acd18(4)=abb18(25)
      acd18(5)=k3(iv1)
      acd18(6)=abb18(36)
      acd18(7)=k4(iv1)
      acd18(8)=l5(iv1)
      acd18(9)=abb18(19)
      acd18(10)=l6(iv1)
      acd18(11)=k7(iv1)
      acd18(12)=abb18(162)
      acd18(13)=e7(iv1)
      acd18(14)=abb18(126)
      acd18(15)=spvak2l5(iv1)
      acd18(16)=abb18(13)
      acd18(17)=spvak4k1(iv1)
      acd18(18)=abb18(18)
      acd18(19)=spvak4k3(iv1)
      acd18(20)=abb18(52)
      acd18(21)=spval6l5(iv1)
      acd18(22)=abb18(20)
      acd18(23)=spvae7k1(iv1)
      acd18(24)=abb18(49)
      acd18(25)=acd18(7)+acd18(5)
      acd18(25)=acd18(6)*acd18(25)
      acd18(26)=-acd18(10)-acd18(8)
      acd18(26)=acd18(9)*acd18(26)
      acd18(27)=acd18(2)*acd18(1)
      acd18(28)=acd18(4)*acd18(3)
      acd18(29)=acd18(12)*acd18(11)
      acd18(30)=acd18(14)*acd18(13)
      acd18(31)=acd18(16)*acd18(15)
      acd18(32)=acd18(18)*acd18(17)
      acd18(33)=acd18(20)*acd18(19)
      acd18(34)=acd18(22)*acd18(21)
      acd18(35)=acd18(24)*acd18(23)
      brack=acd18(25)+acd18(26)+acd18(27)+acd18(28)+acd18(29)+acd18(30)+acd18(3&
      &1)+acd18(32)+acd18(33)+acd18(34)+acd18(35)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd18h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd18
      complex(ki) :: brack
      acd18(1)=d(iv1,iv2)
      acd18(2)=abb18(37)
      acd18(3)=k1(iv1)
      acd18(4)=k2(iv2)
      acd18(5)=abb18(29)
      acd18(6)=spval6l5(iv2)
      acd18(7)=abb18(41)
      acd18(8)=k1(iv2)
      acd18(9)=k2(iv1)
      acd18(10)=spval6l5(iv1)
      acd18(11)=abb18(21)
      acd18(12)=k3(iv2)
      acd18(13)=abb18(137)
      acd18(14)=k4(iv2)
      acd18(15)=l5(iv2)
      acd18(16)=abb18(108)
      acd18(17)=l6(iv2)
      acd18(18)=k7(iv2)
      acd18(19)=abb18(101)
      acd18(20)=e7(iv2)
      acd18(21)=abb18(58)
      acd18(22)=abb18(12)
      acd18(23)=spvak2l5(iv2)
      acd18(24)=abb18(14)
      acd18(25)=spvak2l6(iv2)
      acd18(26)=abb18(30)
      acd18(27)=spvak4k1(iv2)
      acd18(28)=abb18(16)
      acd18(29)=spvak4k3(iv2)
      acd18(30)=abb18(51)
      acd18(31)=spvae7k1(iv2)
      acd18(32)=abb18(48)
      acd18(33)=k3(iv1)
      acd18(34)=k4(iv1)
      acd18(35)=l5(iv1)
      acd18(36)=l6(iv1)
      acd18(37)=k7(iv1)
      acd18(38)=e7(iv1)
      acd18(39)=spvak2l5(iv1)
      acd18(40)=spvak2l6(iv1)
      acd18(41)=spvak4k1(iv1)
      acd18(42)=spvak4k3(iv1)
      acd18(43)=spvae7k1(iv1)
      acd18(44)=abb18(72)
      acd18(45)=abb18(32)
      acd18(46)=abb18(62)
      acd18(47)=abb18(39)
      acd18(48)=abb18(15)
      acd18(49)=abb18(45)
      acd18(50)=abb18(11)
      acd18(51)=abb18(17)
      acd18(52)=abb18(26)
      acd18(53)=acd18(32)*acd18(43)
      acd18(54)=acd18(30)*acd18(42)
      acd18(55)=acd18(28)*acd18(41)
      acd18(56)=acd18(26)*acd18(40)
      acd18(57)=acd18(24)*acd18(39)
      acd18(58)=acd18(21)*acd18(38)
      acd18(59)=acd18(19)*acd18(37)
      acd18(60)=acd18(3)*acd18(5)
      acd18(61)=acd18(35)+acd18(36)
      acd18(62)=acd18(16)*acd18(61)
      acd18(63)=acd18(33)+acd18(34)
      acd18(64)=acd18(13)*acd18(63)
      acd18(65)=acd18(10)*acd18(22)
      acd18(66)=acd18(9)*acd18(11)
      acd18(53)=2.0_ki*acd18(66)+acd18(65)+acd18(64)+acd18(62)+acd18(60)+acd18(&
      &59)+acd18(58)+acd18(57)+acd18(56)+acd18(55)+acd18(53)+acd18(54)
      acd18(53)=acd18(4)*acd18(53)
      acd18(54)=acd18(31)*acd18(32)
      acd18(55)=acd18(29)*acd18(30)
      acd18(56)=acd18(27)*acd18(28)
      acd18(57)=acd18(25)*acd18(26)
      acd18(58)=acd18(23)*acd18(24)
      acd18(59)=acd18(20)*acd18(21)
      acd18(60)=acd18(18)*acd18(19)
      acd18(62)=acd18(5)*acd18(8)
      acd18(64)=acd18(15)+acd18(17)
      acd18(65)=acd18(16)*acd18(64)
      acd18(66)=acd18(12)+acd18(14)
      acd18(67)=acd18(13)*acd18(66)
      acd18(68)=acd18(6)*acd18(22)
      acd18(54)=acd18(68)+acd18(67)+acd18(65)+acd18(62)+acd18(60)+acd18(59)+acd&
      &18(58)+acd18(57)+acd18(56)+acd18(54)+acd18(55)
      acd18(54)=acd18(9)*acd18(54)
      acd18(55)=acd18(31)*acd18(52)
      acd18(56)=acd18(29)*acd18(51)
      acd18(57)=acd18(27)*acd18(50)
      acd18(58)=acd18(25)*acd18(49)
      acd18(59)=acd18(23)*acd18(48)
      acd18(60)=acd18(20)*acd18(47)
      acd18(62)=acd18(18)*acd18(46)
      acd18(65)=acd18(7)*acd18(8)
      acd18(64)=acd18(45)*acd18(64)
      acd18(66)=acd18(44)*acd18(66)
      acd18(55)=acd18(66)+acd18(64)+acd18(65)+acd18(62)+acd18(60)+acd18(59)+acd&
      &18(58)+acd18(57)+acd18(55)+acd18(56)
      acd18(55)=acd18(10)*acd18(55)
      acd18(56)=acd18(43)*acd18(52)
      acd18(57)=acd18(42)*acd18(51)
      acd18(58)=acd18(41)*acd18(50)
      acd18(59)=acd18(40)*acd18(49)
      acd18(60)=acd18(39)*acd18(48)
      acd18(62)=acd18(38)*acd18(47)
      acd18(64)=acd18(37)*acd18(46)
      acd18(65)=acd18(3)*acd18(7)
      acd18(61)=acd18(45)*acd18(61)
      acd18(63)=acd18(44)*acd18(63)
      acd18(56)=acd18(63)+acd18(61)+acd18(65)+acd18(64)+acd18(62)+acd18(60)+acd&
      &18(59)+acd18(58)+acd18(56)+acd18(57)
      acd18(56)=acd18(6)*acd18(56)
      acd18(57)=acd18(1)*acd18(2)
      brack=acd18(53)+acd18(54)+acd18(55)+acd18(56)+2.0_ki*acd18(57)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd18h1
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
!---#[ subroutine reconstruct_d18:
   subroutine     reconstruct_d18(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_18:
      coeffs%coeffs_18%c0 = derivative(czip)
      coeffs%coeffs_18%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_18%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_18%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_18%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_18%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_18%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_18%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_18%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_18%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_18%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_18%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_18%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_18%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_18%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_18:
   end subroutine reconstruct_d18
!---#] subroutine reconstruct_d18:
end module     p9_csbar_epnebbbarg_d18h1l1d
