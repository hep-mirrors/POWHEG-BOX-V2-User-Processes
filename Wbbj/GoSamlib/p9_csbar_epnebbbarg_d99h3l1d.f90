module     p9_csbar_epnebbbarg_d99h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d99h3l1d.f90
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
   public :: derivative , reconstruct_d99
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd99h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(87) :: acd99
      complex(ki) :: brack
      acd99(1)=dotproduct(k2,qshift)
      acd99(2)=dotproduct(qshift,spvak4k1)
      acd99(3)=abb99(35)
      acd99(4)=abb99(13)
      acd99(5)=dotproduct(l5,qshift)
      acd99(6)=abb99(33)
      acd99(7)=dotproduct(k7,qshift)
      acd99(8)=abb99(31)
      acd99(9)=dotproduct(qshift,spval5l6)
      acd99(10)=abb99(43)
      acd99(11)=dotproduct(qshift,spvak7l6)
      acd99(12)=abb99(44)
      acd99(13)=dotproduct(qshift,spvae7l6)
      acd99(14)=abb99(38)
      acd99(15)=dotproduct(qshift,spvak2l5)
      acd99(16)=abb99(23)
      acd99(17)=dotproduct(qshift,spvak2k7)
      acd99(18)=abb99(49)
      acd99(19)=dotproduct(qshift,spvak2e7)
      acd99(20)=abb99(29)
      acd99(21)=abb99(20)
      acd99(22)=dotproduct(qshift,spvak2k1)
      acd99(23)=dotproduct(qshift,spvak4k2)
      acd99(24)=abb99(17)
      acd99(25)=dotproduct(qshift,spvak4l5)
      acd99(26)=dotproduct(qshift,spvak4k7)
      acd99(27)=abb99(19)
      acd99(28)=abb99(14)
      acd99(29)=dotproduct(qshift,spvak4e7)
      acd99(30)=abb99(12)
      acd99(31)=abb99(10)
      acd99(32)=abb99(27)
      acd99(33)=abb99(16)
      acd99(34)=abb99(18)
      acd99(35)=abb99(50)
      acd99(36)=abb99(46)
      acd99(37)=abb99(48)
      acd99(38)=abb99(9)
      acd99(39)=dotproduct(qshift,spval5k1)
      acd99(40)=abb99(15)
      acd99(41)=dotproduct(qshift,spval5k2)
      acd99(42)=abb99(26)
      acd99(43)=dotproduct(qshift,spval5k7)
      acd99(44)=abb99(37)
      acd99(45)=dotproduct(qshift,spvak7k1)
      acd99(46)=abb99(22)
      acd99(47)=dotproduct(qshift,spvak7k2)
      acd99(48)=abb99(28)
      acd99(49)=dotproduct(qshift,spvak7l5)
      acd99(50)=abb99(32)
      acd99(51)=dotproduct(qshift,spvae7k1)
      acd99(52)=abb99(11)
      acd99(53)=dotproduct(qshift,spvae7k2)
      acd99(54)=abb99(30)
      acd99(55)=dotproduct(qshift,spval5e7)
      acd99(56)=abb99(45)
      acd99(57)=dotproduct(qshift,spvae7l5)
      acd99(58)=abb99(42)
      acd99(59)=dotproduct(qshift,spvak7e7)
      acd99(60)=abb99(24)
      acd99(61)=dotproduct(qshift,spvae7k7)
      acd99(62)=abb99(39)
      acd99(63)=abb99(25)
      acd99(64)=acd99(16)*acd99(15)
      acd99(65)=-acd99(18)*acd99(17)
      acd99(66)=-acd99(20)*acd99(19)
      acd99(67)=acd99(3)*acd99(1)
      acd99(68)=acd99(10)*acd99(9)
      acd99(69)=acd99(12)*acd99(11)
      acd99(70)=acd99(14)*acd99(13)
      acd99(64)=-acd99(21)+acd99(70)+acd99(69)+acd99(68)+acd99(67)+acd99(66)+ac&
      &d99(64)+acd99(65)
      acd99(64)=acd99(2)*acd99(64)
      acd99(65)=-acd99(25)*acd99(16)
      acd99(66)=acd99(26)*acd99(18)
      acd99(67)=acd99(29)*acd99(20)
      acd99(68)=acd99(24)*acd99(23)
      acd99(69)=acd99(27)*acd99(9)
      acd99(70)=acd99(28)*acd99(11)
      acd99(71)=acd99(30)*acd99(13)
      acd99(65)=-acd99(31)+acd99(71)+acd99(70)+acd99(69)+acd99(68)+acd99(67)+ac&
      &d99(66)+acd99(65)
      acd99(65)=acd99(22)*acd99(65)
      acd99(66)=-acd99(4)*acd99(1)
      acd99(67)=-acd99(6)*acd99(5)
      acd99(68)=-acd99(8)*acd99(7)
      acd99(69)=-acd99(32)*acd99(23)
      acd99(70)=-acd99(33)*acd99(25)
      acd99(71)=-acd99(34)*acd99(26)
      acd99(72)=-acd99(35)*acd99(29)
      acd99(73)=-acd99(36)*acd99(15)
      acd99(74)=-acd99(37)*acd99(17)
      acd99(75)=-acd99(38)*acd99(19)
      acd99(76)=-acd99(40)*acd99(39)
      acd99(77)=-acd99(42)*acd99(41)
      acd99(78)=-acd99(44)*acd99(43)
      acd99(79)=-acd99(46)*acd99(45)
      acd99(80)=-acd99(48)*acd99(47)
      acd99(81)=-acd99(50)*acd99(49)
      acd99(82)=-acd99(52)*acd99(51)
      acd99(83)=-acd99(54)*acd99(53)
      acd99(84)=-acd99(56)*acd99(55)
      acd99(85)=-acd99(58)*acd99(57)
      acd99(86)=-acd99(60)*acd99(59)
      acd99(87)=-acd99(62)*acd99(61)
      brack=acd99(63)+acd99(64)+acd99(65)+acd99(66)+acd99(67)+acd99(68)+acd99(6&
      &9)+acd99(70)+acd99(71)+acd99(72)+acd99(73)+acd99(74)+acd99(75)+acd99(76)&
      &+acd99(77)+acd99(78)+acd99(79)+acd99(80)+acd99(81)+acd99(82)+acd99(83)+a&
      &cd99(84)+acd99(85)+acd99(86)+acd99(87)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd99h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(101) :: acd99
      complex(ki) :: brack
      acd99(1)=k2(iv1)
      acd99(2)=dotproduct(qshift,spvak4k1)
      acd99(3)=abb99(35)
      acd99(4)=abb99(13)
      acd99(5)=l5(iv1)
      acd99(6)=abb99(33)
      acd99(7)=k7(iv1)
      acd99(8)=abb99(31)
      acd99(9)=spvak4k1(iv1)
      acd99(10)=dotproduct(k2,qshift)
      acd99(11)=dotproduct(qshift,spval5l6)
      acd99(12)=abb99(43)
      acd99(13)=dotproduct(qshift,spvak7l6)
      acd99(14)=abb99(44)
      acd99(15)=dotproduct(qshift,spvae7l6)
      acd99(16)=abb99(38)
      acd99(17)=dotproduct(qshift,spvak2l5)
      acd99(18)=abb99(23)
      acd99(19)=dotproduct(qshift,spvak2k7)
      acd99(20)=abb99(49)
      acd99(21)=dotproduct(qshift,spvak2e7)
      acd99(22)=abb99(29)
      acd99(23)=abb99(20)
      acd99(24)=spvak2k1(iv1)
      acd99(25)=dotproduct(qshift,spvak4k2)
      acd99(26)=abb99(17)
      acd99(27)=dotproduct(qshift,spvak4l5)
      acd99(28)=dotproduct(qshift,spvak4k7)
      acd99(29)=abb99(19)
      acd99(30)=abb99(14)
      acd99(31)=dotproduct(qshift,spvak4e7)
      acd99(32)=abb99(12)
      acd99(33)=abb99(10)
      acd99(34)=spvak4k2(iv1)
      acd99(35)=dotproduct(qshift,spvak2k1)
      acd99(36)=abb99(27)
      acd99(37)=spvak4l5(iv1)
      acd99(38)=abb99(16)
      acd99(39)=spvak4k7(iv1)
      acd99(40)=abb99(18)
      acd99(41)=spval5l6(iv1)
      acd99(42)=spvak7l6(iv1)
      acd99(43)=spvak4e7(iv1)
      acd99(44)=abb99(50)
      acd99(45)=spvae7l6(iv1)
      acd99(46)=spvak2l5(iv1)
      acd99(47)=abb99(46)
      acd99(48)=spvak2k7(iv1)
      acd99(49)=abb99(48)
      acd99(50)=spvak2e7(iv1)
      acd99(51)=abb99(9)
      acd99(52)=spval5k1(iv1)
      acd99(53)=abb99(15)
      acd99(54)=spval5k2(iv1)
      acd99(55)=abb99(26)
      acd99(56)=spval5k7(iv1)
      acd99(57)=abb99(37)
      acd99(58)=spvak7k1(iv1)
      acd99(59)=abb99(22)
      acd99(60)=spvak7k2(iv1)
      acd99(61)=abb99(28)
      acd99(62)=spvak7l5(iv1)
      acd99(63)=abb99(32)
      acd99(64)=spvae7k1(iv1)
      acd99(65)=abb99(11)
      acd99(66)=spvae7k2(iv1)
      acd99(67)=abb99(30)
      acd99(68)=spval5e7(iv1)
      acd99(69)=abb99(45)
      acd99(70)=spvae7l5(iv1)
      acd99(71)=abb99(42)
      acd99(72)=spvak7e7(iv1)
      acd99(73)=abb99(24)
      acd99(74)=spvae7k7(iv1)
      acd99(75)=abb99(39)
      acd99(76)=acd99(32)*acd99(45)
      acd99(77)=acd99(30)*acd99(42)
      acd99(78)=acd99(29)*acd99(41)
      acd99(79)=acd99(26)*acd99(34)
      acd99(80)=acd99(22)*acd99(43)
      acd99(81)=acd99(20)*acd99(39)
      acd99(82)=-acd99(18)*acd99(37)
      acd99(76)=acd99(82)+acd99(81)+acd99(80)+acd99(79)+acd99(78)+acd99(76)+acd&
      &99(77)
      acd99(76)=acd99(35)*acd99(76)
      acd99(77)=acd99(16)*acd99(45)
      acd99(78)=acd99(14)*acd99(42)
      acd99(79)=acd99(12)*acd99(41)
      acd99(80)=acd99(1)*acd99(3)
      acd99(81)=-acd99(22)*acd99(50)
      acd99(82)=-acd99(20)*acd99(48)
      acd99(83)=acd99(18)*acd99(46)
      acd99(77)=acd99(83)+acd99(82)+acd99(81)+acd99(80)+acd99(79)+acd99(77)+acd&
      &99(78)
      acd99(77)=acd99(2)*acd99(77)
      acd99(78)=acd99(26)*acd99(25)
      acd99(79)=acd99(15)*acd99(32)
      acd99(80)=acd99(13)*acd99(30)
      acd99(81)=acd99(11)*acd99(29)
      acd99(82)=acd99(22)*acd99(31)
      acd99(83)=acd99(20)*acd99(28)
      acd99(84)=-acd99(18)*acd99(27)
      acd99(78)=acd99(84)+acd99(83)+acd99(82)+acd99(81)+acd99(80)+acd99(79)-acd&
      &99(33)+acd99(78)
      acd99(78)=acd99(24)*acd99(78)
      acd99(79)=acd99(15)*acd99(16)
      acd99(80)=acd99(13)*acd99(14)
      acd99(81)=acd99(11)*acd99(12)
      acd99(82)=acd99(3)*acd99(10)
      acd99(83)=-acd99(22)*acd99(21)
      acd99(84)=-acd99(20)*acd99(19)
      acd99(85)=acd99(18)*acd99(17)
      acd99(79)=acd99(85)+acd99(84)+acd99(83)+acd99(82)+acd99(81)+acd99(80)-acd&
      &99(23)+acd99(79)
      acd99(79)=acd99(9)*acd99(79)
      acd99(80)=-acd99(74)*acd99(75)
      acd99(81)=-acd99(72)*acd99(73)
      acd99(82)=-acd99(70)*acd99(71)
      acd99(83)=-acd99(68)*acd99(69)
      acd99(84)=-acd99(66)*acd99(67)
      acd99(85)=-acd99(64)*acd99(65)
      acd99(86)=-acd99(62)*acd99(63)
      acd99(87)=-acd99(60)*acd99(61)
      acd99(88)=-acd99(58)*acd99(59)
      acd99(89)=-acd99(56)*acd99(57)
      acd99(90)=-acd99(54)*acd99(55)
      acd99(91)=-acd99(52)*acd99(53)
      acd99(92)=-acd99(7)*acd99(8)
      acd99(93)=-acd99(5)*acd99(6)
      acd99(94)=-acd99(50)*acd99(51)
      acd99(95)=-acd99(48)*acd99(49)
      acd99(96)=-acd99(46)*acd99(47)
      acd99(97)=-acd99(43)*acd99(44)
      acd99(98)=-acd99(39)*acd99(40)
      acd99(99)=-acd99(37)*acd99(38)
      acd99(100)=-acd99(34)*acd99(36)
      acd99(101)=-acd99(1)*acd99(4)
      brack=acd99(76)+acd99(77)+acd99(78)+acd99(79)+acd99(80)+acd99(81)+acd99(8&
      &2)+acd99(83)+acd99(84)+acd99(85)+acd99(86)+acd99(87)+acd99(88)+acd99(89)&
      &+acd99(90)+acd99(91)+acd99(92)+acd99(93)+acd99(94)+acd99(95)+acd99(96)+a&
      &cd99(97)+acd99(98)+acd99(99)+acd99(100)+acd99(101)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd99h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(47) :: acd99
      complex(ki) :: brack
      acd99(1)=k2(iv1)
      acd99(2)=spvak4k1(iv2)
      acd99(3)=abb99(35)
      acd99(4)=k2(iv2)
      acd99(5)=spvak4k1(iv1)
      acd99(6)=spval5l6(iv2)
      acd99(7)=abb99(43)
      acd99(8)=spvak7l6(iv2)
      acd99(9)=abb99(44)
      acd99(10)=spvae7l6(iv2)
      acd99(11)=abb99(38)
      acd99(12)=spvak2l5(iv2)
      acd99(13)=abb99(23)
      acd99(14)=spvak2k7(iv2)
      acd99(15)=abb99(49)
      acd99(16)=spvak2e7(iv2)
      acd99(17)=abb99(29)
      acd99(18)=spval5l6(iv1)
      acd99(19)=spvak7l6(iv1)
      acd99(20)=spvae7l6(iv1)
      acd99(21)=spvak2l5(iv1)
      acd99(22)=spvak2k7(iv1)
      acd99(23)=spvak2e7(iv1)
      acd99(24)=spvak2k1(iv1)
      acd99(25)=spvak4k2(iv2)
      acd99(26)=abb99(17)
      acd99(27)=spvak4l5(iv2)
      acd99(28)=spvak4k7(iv2)
      acd99(29)=abb99(19)
      acd99(30)=abb99(14)
      acd99(31)=spvak4e7(iv2)
      acd99(32)=abb99(12)
      acd99(33)=spvak2k1(iv2)
      acd99(34)=spvak4k2(iv1)
      acd99(35)=spvak4l5(iv1)
      acd99(36)=spvak4k7(iv1)
      acd99(37)=spvak4e7(iv1)
      acd99(38)=acd99(26)*acd99(34)
      acd99(39)=acd99(20)*acd99(32)
      acd99(40)=acd99(19)*acd99(30)
      acd99(41)=acd99(18)*acd99(29)
      acd99(42)=acd99(17)*acd99(37)
      acd99(43)=acd99(15)*acd99(36)
      acd99(44)=-acd99(13)*acd99(35)
      acd99(38)=acd99(44)+acd99(43)+acd99(42)+acd99(41)+acd99(40)+acd99(38)+acd&
      &99(39)
      acd99(38)=acd99(33)*acd99(38)
      acd99(39)=acd99(26)*acd99(25)
      acd99(40)=acd99(10)*acd99(32)
      acd99(41)=acd99(8)*acd99(30)
      acd99(42)=acd99(6)*acd99(29)
      acd99(43)=acd99(17)*acd99(31)
      acd99(44)=acd99(15)*acd99(28)
      acd99(45)=-acd99(13)*acd99(27)
      acd99(39)=acd99(45)+acd99(44)+acd99(43)+acd99(42)+acd99(41)+acd99(39)+acd&
      &99(40)
      acd99(39)=acd99(24)*acd99(39)
      acd99(40)=acd99(10)*acd99(11)
      acd99(41)=acd99(8)*acd99(9)
      acd99(42)=acd99(6)*acd99(7)
      acd99(43)=acd99(3)*acd99(4)
      acd99(44)=-acd99(17)*acd99(16)
      acd99(45)=-acd99(15)*acd99(14)
      acd99(46)=acd99(13)*acd99(12)
      acd99(40)=acd99(46)+acd99(45)+acd99(44)+acd99(43)+acd99(42)+acd99(40)+acd&
      &99(41)
      acd99(40)=acd99(5)*acd99(40)
      acd99(41)=acd99(11)*acd99(20)
      acd99(42)=acd99(9)*acd99(19)
      acd99(43)=acd99(7)*acd99(18)
      acd99(44)=acd99(3)*acd99(1)
      acd99(45)=-acd99(17)*acd99(23)
      acd99(46)=-acd99(15)*acd99(22)
      acd99(47)=acd99(13)*acd99(21)
      acd99(41)=acd99(47)+acd99(46)+acd99(45)+acd99(44)+acd99(43)+acd99(41)+acd&
      &99(42)
      acd99(41)=acd99(2)*acd99(41)
      brack=acd99(38)+acd99(39)+acd99(40)+acd99(41)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd99h3
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
      qshift = -k7-k6-k5
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
!---#[ subroutine reconstruct_d99:
   subroutine     reconstruct_d99(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_99:
      coeffs%coeffs_99%c0 = derivative(czip)
      coeffs%coeffs_99%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_99%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_99%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_99%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_99%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_99%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_99%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_99%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_99%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_99%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_99%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_99%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_99%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_99%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_99:
   end subroutine reconstruct_d99
!---#] subroutine reconstruct_d99:
end module     p9_csbar_epnebbbarg_d99h3l1d
