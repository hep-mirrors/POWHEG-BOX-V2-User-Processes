module     p1_dbarc_epnebbbarg_d100h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity3d100h3l1d.f90
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
   public :: derivative , reconstruct_d100
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd100h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd100
      complex(ki) :: brack
      acd100(1)=abb100(20)
      brack=acd100(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd100h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(66) :: acd100
      complex(ki) :: brack
      acd100(1)=k2(iv1)
      acd100(2)=abb100(34)
      acd100(3)=l6(iv1)
      acd100(4)=abb100(39)
      acd100(5)=k7(iv1)
      acd100(6)=abb100(42)
      acd100(7)=e7(iv1)
      acd100(8)=abb100(41)
      acd100(9)=spvak1k2(iv1)
      acd100(10)=abb100(12)
      acd100(11)=spvak1l6(iv1)
      acd100(12)=abb100(18)
      acd100(13)=spvak1k7(iv1)
      acd100(14)=abb100(74)
      acd100(15)=spvak4k2(iv1)
      acd100(16)=abb100(69)
      acd100(17)=spvak4l6(iv1)
      acd100(18)=abb100(14)
      acd100(19)=spvak4k7(iv1)
      acd100(20)=abb100(47)
      acd100(21)=spval6k2(iv1)
      acd100(22)=abb100(44)
      acd100(23)=spval6k7(iv1)
      acd100(24)=abb100(37)
      acd100(25)=spvak7k2(iv1)
      acd100(26)=abb100(10)
      acd100(27)=spvak7l6(iv1)
      acd100(28)=abb100(35)
      acd100(29)=spvak1e7(iv1)
      acd100(30)=abb100(53)
      acd100(31)=spvak2e7(iv1)
      acd100(32)=abb100(38)
      acd100(33)=spvae7k2(iv1)
      acd100(34)=abb100(57)
      acd100(35)=spvak4e7(iv1)
      acd100(36)=abb100(62)
      acd100(37)=spval6e7(iv1)
      acd100(38)=abb100(54)
      acd100(39)=spvae7l6(iv1)
      acd100(40)=abb100(25)
      acd100(41)=spvak7e7(iv1)
      acd100(42)=abb100(60)
      acd100(43)=spvae7k7(iv1)
      acd100(44)=abb100(48)
      acd100(45)=acd100(2)*acd100(1)
      acd100(46)=acd100(4)*acd100(3)
      acd100(47)=acd100(6)*acd100(5)
      acd100(48)=acd100(8)*acd100(7)
      acd100(49)=acd100(10)*acd100(9)
      acd100(50)=acd100(12)*acd100(11)
      acd100(51)=acd100(14)*acd100(13)
      acd100(52)=acd100(16)*acd100(15)
      acd100(53)=acd100(18)*acd100(17)
      acd100(54)=acd100(20)*acd100(19)
      acd100(55)=acd100(22)*acd100(21)
      acd100(56)=acd100(24)*acd100(23)
      acd100(57)=acd100(26)*acd100(25)
      acd100(58)=acd100(28)*acd100(27)
      acd100(59)=acd100(30)*acd100(29)
      acd100(60)=acd100(32)*acd100(31)
      acd100(61)=acd100(34)*acd100(33)
      acd100(62)=acd100(36)*acd100(35)
      acd100(63)=acd100(38)*acd100(37)
      acd100(64)=acd100(40)*acd100(39)
      acd100(65)=acd100(42)*acd100(41)
      acd100(66)=acd100(44)*acd100(43)
      brack=acd100(45)+acd100(46)+acd100(47)+acd100(48)+acd100(49)+acd100(50)+a&
      &cd100(51)+acd100(52)+acd100(53)+acd100(54)+acd100(55)+acd100(56)+acd100(&
      &57)+acd100(58)+acd100(59)+acd100(60)+acd100(61)+acd100(62)+acd100(63)+ac&
      &d100(64)+acd100(65)+acd100(66)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd100h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(82) :: acd100
      complex(ki) :: brack
      acd100(1)=d(iv1,iv2)
      acd100(2)=abb100(40)
      acd100(3)=k2(iv1)
      acd100(4)=e7(iv2)
      acd100(5)=abb100(59)
      acd100(6)=spvak1k2(iv2)
      acd100(7)=abb100(36)
      acd100(8)=spvak4k2(iv2)
      acd100(9)=abb100(66)
      acd100(10)=spvak1e7(iv2)
      acd100(11)=abb100(21)
      acd100(12)=spvae7k2(iv2)
      acd100(13)=abb100(28)
      acd100(14)=spvak4e7(iv2)
      acd100(15)=abb100(13)
      acd100(16)=spvae7l6(iv2)
      acd100(17)=abb100(43)
      acd100(18)=k2(iv2)
      acd100(19)=e7(iv1)
      acd100(20)=spvak1k2(iv1)
      acd100(21)=spvak4k2(iv1)
      acd100(22)=spvak1e7(iv1)
      acd100(23)=spvae7k2(iv1)
      acd100(24)=spvak4e7(iv1)
      acd100(25)=spvae7l6(iv1)
      acd100(26)=l6(iv1)
      acd100(27)=abb100(23)
      acd100(28)=abb100(71)
      acd100(29)=abb100(61)
      acd100(30)=abb100(68)
      acd100(31)=abb100(64)
      acd100(32)=l6(iv2)
      acd100(33)=k7(iv1)
      acd100(34)=k7(iv2)
      acd100(35)=abb100(16)
      acd100(36)=abb100(30)
      acd100(37)=spvak1l6(iv2)
      acd100(38)=abb100(27)
      acd100(39)=spvak1k7(iv2)
      acd100(40)=abb100(49)
      acd100(41)=spvak4l6(iv2)
      acd100(42)=abb100(24)
      acd100(43)=spvak4k7(iv2)
      acd100(44)=abb100(50)
      acd100(45)=spvak7k2(iv2)
      acd100(46)=abb100(33)
      acd100(47)=spvak1l6(iv1)
      acd100(48)=spvak1k7(iv1)
      acd100(49)=spvak4l6(iv1)
      acd100(50)=spvak4k7(iv1)
      acd100(51)=spvak7k2(iv1)
      acd100(52)=abb100(11)
      acd100(53)=spvak2e7(iv2)
      acd100(54)=abb100(9)
      acd100(55)=spvak2e7(iv1)
      acd100(56)=abb100(19)
      acd100(57)=abb100(15)
      acd100(58)=abb100(17)
      acd100(59)=abb100(45)
      acd100(60)=abb100(22)
      acd100(61)=abb100(26)
      acd100(62)=spval6k2(iv2)
      acd100(63)=abb100(29)
      acd100(64)=spval6k2(iv1)
      acd100(65)=abb100(31)
      acd100(66)=abb100(46)
      acd100(67)=abb100(32)
      acd100(68)=abb100(55)
      acd100(69)=acd100(45)*acd100(46)
      acd100(70)=acd100(43)*acd100(44)
      acd100(71)=acd100(41)*acd100(42)
      acd100(72)=acd100(39)*acd100(40)
      acd100(73)=acd100(37)*acd100(38)
      acd100(74)=acd100(8)*acd100(36)
      acd100(75)=acd100(6)*acd100(35)
      acd100(76)=acd100(18)*acd100(5)
      acd100(69)=acd100(76)+acd100(75)+acd100(74)+acd100(73)+acd100(72)+acd100(&
      &71)+acd100(69)+acd100(70)
      acd100(69)=acd100(19)*acd100(69)
      acd100(70)=acd100(46)*acd100(51)
      acd100(71)=acd100(44)*acd100(50)
      acd100(72)=acd100(42)*acd100(49)
      acd100(73)=acd100(40)*acd100(48)
      acd100(74)=acd100(38)*acd100(47)
      acd100(75)=acd100(21)*acd100(36)
      acd100(76)=acd100(20)*acd100(35)
      acd100(77)=acd100(3)*acd100(5)
      acd100(70)=acd100(77)+acd100(76)+acd100(75)+acd100(74)+acd100(73)+acd100(&
      &72)+acd100(70)+acd100(71)
      acd100(70)=acd100(4)*acd100(70)
      acd100(71)=acd100(43)*acd100(68)
      acd100(72)=acd100(41)*acd100(67)
      acd100(73)=acd100(39)*acd100(66)
      acd100(74)=acd100(37)*acd100(65)
      acd100(75)=acd100(12)*acd100(59)
      acd100(76)=acd100(8)*acd100(57)
      acd100(77)=acd100(6)*acd100(54)
      acd100(71)=acd100(77)+acd100(76)+acd100(75)+acd100(74)+acd100(73)+acd100(&
      &71)+acd100(72)
      acd100(71)=acd100(55)*acd100(71)
      acd100(72)=acd100(50)*acd100(68)
      acd100(73)=acd100(49)*acd100(67)
      acd100(74)=acd100(48)*acd100(66)
      acd100(75)=acd100(47)*acd100(65)
      acd100(76)=acd100(23)*acd100(59)
      acd100(77)=acd100(21)*acd100(57)
      acd100(78)=acd100(20)*acd100(54)
      acd100(72)=acd100(78)+acd100(77)+acd100(76)+acd100(75)+acd100(74)+acd100(&
      &72)+acd100(73)
      acd100(72)=acd100(53)*acd100(72)
      acd100(73)=acd100(63)*acd100(62)
      acd100(74)=acd100(45)*acd100(61)
      acd100(75)=acd100(14)*acd100(60)
      acd100(76)=acd100(10)*acd100(58)
      acd100(77)=acd100(8)*acd100(56)
      acd100(78)=acd100(6)*acd100(52)
      acd100(73)=acd100(78)+acd100(77)+acd100(76)+acd100(75)+acd100(73)+acd100(&
      &74)
      acd100(73)=acd100(25)*acd100(73)
      acd100(74)=acd100(24)*acd100(15)
      acd100(75)=acd100(23)*acd100(13)
      acd100(76)=acd100(22)*acd100(11)
      acd100(77)=acd100(21)*acd100(9)
      acd100(78)=acd100(20)*acd100(7)
      acd100(79)=acd100(25)*acd100(17)
      acd100(74)=acd100(79)+acd100(78)+acd100(77)+acd100(76)+acd100(74)+acd100(&
      &75)
      acd100(74)=acd100(18)*acd100(74)
      acd100(75)=acd100(63)*acd100(64)
      acd100(76)=acd100(51)*acd100(61)
      acd100(77)=acd100(24)*acd100(60)
      acd100(78)=acd100(22)*acd100(58)
      acd100(79)=acd100(21)*acd100(56)
      acd100(80)=acd100(20)*acd100(52)
      acd100(75)=acd100(80)+acd100(79)+acd100(78)+acd100(77)+acd100(75)+acd100(&
      &76)
      acd100(75)=acd100(16)*acd100(75)
      acd100(76)=acd100(14)*acd100(15)
      acd100(77)=acd100(12)*acd100(13)
      acd100(78)=acd100(10)*acd100(11)
      acd100(79)=acd100(8)*acd100(9)
      acd100(80)=acd100(6)*acd100(7)
      acd100(81)=acd100(16)*acd100(17)
      acd100(76)=acd100(81)+acd100(80)+acd100(79)+acd100(78)+acd100(76)+acd100(&
      &77)
      acd100(76)=acd100(3)*acd100(76)
      acd100(77)=acd100(14)*acd100(31)
      acd100(78)=acd100(12)*acd100(30)
      acd100(79)=acd100(10)*acd100(29)
      acd100(80)=-acd100(8)*acd100(28)
      acd100(81)=-acd100(6)*acd100(27)
      acd100(77)=acd100(81)+acd100(80)-acd100(79)-acd100(77)+acd100(78)
      acd100(78)=acd100(26)+acd100(33)
      acd100(77)=acd100(78)*acd100(77)
      acd100(78)=acd100(24)*acd100(31)
      acd100(79)=acd100(23)*acd100(30)
      acd100(80)=acd100(22)*acd100(29)
      acd100(81)=-acd100(21)*acd100(28)
      acd100(82)=-acd100(20)*acd100(27)
      acd100(78)=acd100(82)+acd100(81)-acd100(80)-acd100(78)+acd100(79)
      acd100(79)=acd100(32)+acd100(34)
      acd100(78)=acd100(79)*acd100(78)
      acd100(79)=acd100(1)*acd100(2)
      brack=acd100(69)+acd100(70)+acd100(71)+acd100(72)+acd100(73)+acd100(74)+a&
      &cd100(75)+acd100(76)+acd100(77)+acd100(78)+2.0_ki*acd100(79)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd100h3
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
!---#[ subroutine reconstruct_d100:
   subroutine     reconstruct_d100(coeffs)
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_100:
      coeffs%coeffs_100%c0 = derivative(czip)
      coeffs%coeffs_100%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_100%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_100%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_100%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_100%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_100%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_100%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_100%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_100%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_100%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_100%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_100%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_100%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_100%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_100:
   end subroutine reconstruct_d100
!---#] subroutine reconstruct_d100:
end module     p1_dbarc_epnebbbarg_d100h3l1d
