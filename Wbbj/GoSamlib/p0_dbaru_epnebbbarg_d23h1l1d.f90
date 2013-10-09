module     p0_dbaru_epnebbbarg_d23h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p0_dbaru_epneb &
   ! &bbarg/helicity1d23h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d23
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd23h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(70) :: acd23
      complex(ki) :: brack
      acd23(1)=dotproduct(k1,qshift)
      acd23(2)=dotproduct(qshift,spvak4k3)
      acd23(3)=abb23(17)
      acd23(4)=dotproduct(k2,qshift)
      acd23(5)=abb23(16)
      acd23(6)=dotproduct(k3,qshift)
      acd23(7)=abb23(105)
      acd23(8)=abb23(43)
      acd23(9)=dotproduct(k4,qshift)
      acd23(10)=dotproduct(l5,qshift)
      acd23(11)=abb23(98)
      acd23(12)=dotproduct(l6,qshift)
      acd23(13)=dotproduct(k7,qshift)
      acd23(14)=abb23(62)
      acd23(15)=dotproduct(e7,qshift)
      acd23(16)=abb23(26)
      acd23(17)=dotproduct(qshift,qshift)
      acd23(18)=abb23(82)
      acd23(19)=dotproduct(qshift,spvak1k3)
      acd23(20)=abb23(27)
      acd23(21)=dotproduct(qshift,spvak1k4)
      acd23(22)=abb23(36)
      acd23(23)=dotproduct(qshift,spvak2l5)
      acd23(24)=abb23(30)
      acd23(25)=dotproduct(qshift,spvak2l6)
      acd23(26)=abb23(25)
      acd23(27)=dotproduct(qshift,spvak2k7)
      acd23(28)=abb23(24)
      acd23(29)=dotproduct(qshift,spval5k2)
      acd23(30)=abb23(22)
      acd23(31)=dotproduct(qshift,spval6k2)
      acd23(32)=abb23(21)
      acd23(33)=dotproduct(qshift,spval6l5)
      acd23(34)=abb23(20)
      acd23(35)=dotproduct(qshift,spval6k7)
      acd23(36)=abb23(37)
      acd23(37)=dotproduct(qshift,spvak7k2)
      acd23(38)=abb23(29)
      acd23(39)=dotproduct(qshift,spvak7l5)
      acd23(40)=abb23(23)
      acd23(41)=dotproduct(qshift,spvak2e7)
      acd23(42)=abb23(19)
      acd23(43)=dotproduct(qshift,spvae7k2)
      acd23(44)=abb23(15)
      acd23(45)=dotproduct(qshift,spvae7l5)
      acd23(46)=abb23(40)
      acd23(47)=dotproduct(qshift,spval6e7)
      acd23(48)=abb23(56)
      acd23(49)=abb23(14)
      acd23(50)=abb23(18)
      acd23(51)=acd23(12)+acd23(10)
      acd23(51)=acd23(51)*acd23(11)
      acd23(52)=acd23(3)*acd23(1)
      acd23(53)=acd23(5)*acd23(4)
      acd23(54)=acd23(14)*acd23(13)
      acd23(55)=acd23(16)*acd23(15)
      acd23(56)=acd23(20)*acd23(19)
      acd23(57)=acd23(22)*acd23(21)
      acd23(58)=acd23(24)*acd23(23)
      acd23(59)=acd23(26)*acd23(25)
      acd23(60)=acd23(28)*acd23(27)
      acd23(61)=acd23(30)*acd23(29)
      acd23(62)=acd23(32)*acd23(31)
      acd23(63)=acd23(34)*acd23(33)
      acd23(64)=acd23(36)*acd23(35)
      acd23(65)=acd23(38)*acd23(37)
      acd23(66)=acd23(40)*acd23(39)
      acd23(67)=acd23(42)*acd23(41)
      acd23(68)=acd23(44)*acd23(43)
      acd23(69)=acd23(46)*acd23(45)
      acd23(70)=acd23(48)*acd23(47)
      acd23(51)=acd23(51)-acd23(49)+acd23(70)+acd23(69)+acd23(68)+acd23(67)+acd&
      &23(66)+acd23(65)+acd23(64)+acd23(63)+acd23(62)+acd23(61)+acd23(60)+acd23&
      &(59)+acd23(58)+acd23(57)+acd23(56)+acd23(55)+acd23(54)+acd23(53)+acd23(5&
      &2)
      acd23(51)=acd23(2)*acd23(51)
      acd23(52)=acd23(9)+acd23(6)
      acd23(53)=acd23(7)*acd23(2)
      acd23(53)=acd23(53)+acd23(8)
      acd23(52)=acd23(53)*acd23(52)
      acd23(53)=acd23(18)*acd23(17)
      acd23(54)=-acd23(50)*acd23(19)
      brack=acd23(51)+acd23(52)+acd23(53)+acd23(54)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd23h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(95) :: acd23
      complex(ki) :: brack
      acd23(1)=k1(iv1)
      acd23(2)=dotproduct(qshift,spvak4k3)
      acd23(3)=abb23(17)
      acd23(4)=k2(iv1)
      acd23(5)=abb23(16)
      acd23(6)=k3(iv1)
      acd23(7)=abb23(105)
      acd23(8)=abb23(43)
      acd23(9)=k4(iv1)
      acd23(10)=l5(iv1)
      acd23(11)=abb23(98)
      acd23(12)=l6(iv1)
      acd23(13)=k7(iv1)
      acd23(14)=abb23(62)
      acd23(15)=e7(iv1)
      acd23(16)=abb23(26)
      acd23(17)=qshift(iv1)
      acd23(18)=abb23(82)
      acd23(19)=spvak4k3(iv1)
      acd23(20)=dotproduct(k1,qshift)
      acd23(21)=dotproduct(k2,qshift)
      acd23(22)=dotproduct(k3,qshift)
      acd23(23)=dotproduct(k4,qshift)
      acd23(24)=dotproduct(l5,qshift)
      acd23(25)=dotproduct(l6,qshift)
      acd23(26)=dotproduct(k7,qshift)
      acd23(27)=dotproduct(e7,qshift)
      acd23(28)=dotproduct(qshift,spvak1k3)
      acd23(29)=abb23(27)
      acd23(30)=dotproduct(qshift,spvak1k4)
      acd23(31)=abb23(36)
      acd23(32)=dotproduct(qshift,spvak2l5)
      acd23(33)=abb23(30)
      acd23(34)=dotproduct(qshift,spvak2l6)
      acd23(35)=abb23(25)
      acd23(36)=dotproduct(qshift,spvak2k7)
      acd23(37)=abb23(24)
      acd23(38)=dotproduct(qshift,spval5k2)
      acd23(39)=abb23(22)
      acd23(40)=dotproduct(qshift,spval6k2)
      acd23(41)=abb23(21)
      acd23(42)=dotproduct(qshift,spval6l5)
      acd23(43)=abb23(20)
      acd23(44)=dotproduct(qshift,spval6k7)
      acd23(45)=abb23(37)
      acd23(46)=dotproduct(qshift,spvak7k2)
      acd23(47)=abb23(29)
      acd23(48)=dotproduct(qshift,spvak7l5)
      acd23(49)=abb23(23)
      acd23(50)=dotproduct(qshift,spvak2e7)
      acd23(51)=abb23(19)
      acd23(52)=dotproduct(qshift,spvae7k2)
      acd23(53)=abb23(15)
      acd23(54)=dotproduct(qshift,spvae7l5)
      acd23(55)=abb23(40)
      acd23(56)=dotproduct(qshift,spval6e7)
      acd23(57)=abb23(56)
      acd23(58)=abb23(14)
      acd23(59)=spvak1k3(iv1)
      acd23(60)=abb23(18)
      acd23(61)=spvak1k4(iv1)
      acd23(62)=spvak2l5(iv1)
      acd23(63)=spvak2l6(iv1)
      acd23(64)=spvak2k7(iv1)
      acd23(65)=spval5k2(iv1)
      acd23(66)=spval6k2(iv1)
      acd23(67)=spval6l5(iv1)
      acd23(68)=spval6k7(iv1)
      acd23(69)=spvak7k2(iv1)
      acd23(70)=spvak7l5(iv1)
      acd23(71)=spvak2e7(iv1)
      acd23(72)=spvae7k2(iv1)
      acd23(73)=spvae7l5(iv1)
      acd23(74)=spval6e7(iv1)
      acd23(75)=-acd23(25)-acd23(24)
      acd23(75)=acd23(75)*acd23(11)
      acd23(76)=-acd23(23)-acd23(22)
      acd23(76)=acd23(76)*acd23(7)
      acd23(77)=-acd23(20)*acd23(3)
      acd23(78)=-acd23(21)*acd23(5)
      acd23(79)=-acd23(26)*acd23(14)
      acd23(80)=-acd23(27)*acd23(16)
      acd23(81)=-acd23(28)*acd23(29)
      acd23(82)=-acd23(30)*acd23(31)
      acd23(83)=-acd23(32)*acd23(33)
      acd23(84)=-acd23(34)*acd23(35)
      acd23(85)=-acd23(36)*acd23(37)
      acd23(86)=-acd23(38)*acd23(39)
      acd23(87)=-acd23(40)*acd23(41)
      acd23(88)=-acd23(42)*acd23(43)
      acd23(89)=-acd23(44)*acd23(45)
      acd23(90)=-acd23(46)*acd23(47)
      acd23(91)=-acd23(48)*acd23(49)
      acd23(92)=-acd23(50)*acd23(51)
      acd23(93)=-acd23(52)*acd23(53)
      acd23(94)=-acd23(54)*acd23(55)
      acd23(95)=-acd23(56)*acd23(57)
      acd23(75)=acd23(76)+acd23(75)+acd23(58)+acd23(95)+acd23(94)+acd23(93)+acd&
      &23(92)+acd23(91)+acd23(90)+acd23(89)+acd23(88)+acd23(87)+acd23(86)+acd23&
      &(85)+acd23(84)+acd23(83)+acd23(82)+acd23(81)+acd23(80)+acd23(79)+acd23(7&
      &8)+acd23(77)
      acd23(75)=acd23(19)*acd23(75)
      acd23(76)=-acd23(12)-acd23(10)
      acd23(76)=acd23(76)*acd23(11)
      acd23(77)=-acd23(59)*acd23(29)
      acd23(78)=-acd23(1)*acd23(3)
      acd23(79)=-acd23(4)*acd23(5)
      acd23(80)=-acd23(13)*acd23(14)
      acd23(81)=-acd23(15)*acd23(16)
      acd23(82)=-acd23(61)*acd23(31)
      acd23(83)=-acd23(62)*acd23(33)
      acd23(84)=-acd23(63)*acd23(35)
      acd23(85)=-acd23(64)*acd23(37)
      acd23(86)=-acd23(65)*acd23(39)
      acd23(87)=-acd23(66)*acd23(41)
      acd23(88)=-acd23(67)*acd23(43)
      acd23(89)=-acd23(68)*acd23(45)
      acd23(90)=-acd23(69)*acd23(47)
      acd23(91)=-acd23(70)*acd23(49)
      acd23(92)=-acd23(71)*acd23(51)
      acd23(93)=-acd23(72)*acd23(53)
      acd23(94)=-acd23(73)*acd23(55)
      acd23(95)=-acd23(74)*acd23(57)
      acd23(76)=acd23(76)+acd23(95)+acd23(94)+acd23(93)+acd23(92)+acd23(91)+acd&
      &23(90)+acd23(89)+acd23(88)+acd23(87)+acd23(86)+acd23(85)+acd23(84)+acd23&
      &(83)+acd23(82)+acd23(81)+acd23(80)+acd23(79)+acd23(78)+acd23(77)
      acd23(76)=acd23(2)*acd23(76)
      acd23(77)=-acd23(9)-acd23(6)
      acd23(78)=acd23(7)*acd23(2)
      acd23(78)=acd23(78)+acd23(8)
      acd23(77)=acd23(78)*acd23(77)
      acd23(78)=acd23(18)*acd23(17)
      acd23(79)=acd23(60)*acd23(59)
      brack=acd23(75)+acd23(76)+acd23(77)-2.0_ki*acd23(78)+acd23(79)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd23h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(93) :: acd23
      complex(ki) :: brack
      acd23(1)=d(iv1,iv2)
      acd23(2)=abb23(82)
      acd23(3)=k1(iv1)
      acd23(4)=spvak4k3(iv2)
      acd23(5)=abb23(17)
      acd23(6)=k1(iv2)
      acd23(7)=spvak4k3(iv1)
      acd23(8)=k2(iv1)
      acd23(9)=abb23(16)
      acd23(10)=k2(iv2)
      acd23(11)=k3(iv1)
      acd23(12)=abb23(105)
      acd23(13)=k3(iv2)
      acd23(14)=k4(iv1)
      acd23(15)=k4(iv2)
      acd23(16)=l5(iv1)
      acd23(17)=abb23(98)
      acd23(18)=l5(iv2)
      acd23(19)=l6(iv1)
      acd23(20)=l6(iv2)
      acd23(21)=k7(iv1)
      acd23(22)=abb23(62)
      acd23(23)=k7(iv2)
      acd23(24)=e7(iv1)
      acd23(25)=abb23(26)
      acd23(26)=e7(iv2)
      acd23(27)=spvak1k3(iv2)
      acd23(28)=abb23(27)
      acd23(29)=spvak1k4(iv2)
      acd23(30)=abb23(36)
      acd23(31)=spvak2l5(iv2)
      acd23(32)=abb23(30)
      acd23(33)=spvak2l6(iv2)
      acd23(34)=abb23(25)
      acd23(35)=spvak2k7(iv2)
      acd23(36)=abb23(24)
      acd23(37)=spval5k2(iv2)
      acd23(38)=abb23(22)
      acd23(39)=spval6k2(iv2)
      acd23(40)=abb23(21)
      acd23(41)=spval6l5(iv2)
      acd23(42)=abb23(20)
      acd23(43)=spval6k7(iv2)
      acd23(44)=abb23(37)
      acd23(45)=spvak7k2(iv2)
      acd23(46)=abb23(29)
      acd23(47)=spvak7l5(iv2)
      acd23(48)=abb23(23)
      acd23(49)=spvak2e7(iv2)
      acd23(50)=abb23(19)
      acd23(51)=spvae7k2(iv2)
      acd23(52)=abb23(15)
      acd23(53)=spvae7l5(iv2)
      acd23(54)=abb23(40)
      acd23(55)=spval6e7(iv2)
      acd23(56)=abb23(56)
      acd23(57)=spvak1k3(iv1)
      acd23(58)=spvak1k4(iv1)
      acd23(59)=spvak2l5(iv1)
      acd23(60)=spvak2l6(iv1)
      acd23(61)=spvak2k7(iv1)
      acd23(62)=spval5k2(iv1)
      acd23(63)=spval6k2(iv1)
      acd23(64)=spval6l5(iv1)
      acd23(65)=spval6k7(iv1)
      acd23(66)=spvak7k2(iv1)
      acd23(67)=spvak7l5(iv1)
      acd23(68)=spvak2e7(iv1)
      acd23(69)=spvae7k2(iv1)
      acd23(70)=spvae7l5(iv1)
      acd23(71)=spval6e7(iv1)
      acd23(72)=acd23(19)+acd23(16)
      acd23(72)=acd23(72)*acd23(17)
      acd23(73)=acd23(14)+acd23(11)
      acd23(73)=acd23(73)*acd23(12)
      acd23(74)=acd23(3)*acd23(5)
      acd23(75)=acd23(8)*acd23(9)
      acd23(76)=acd23(21)*acd23(22)
      acd23(77)=acd23(24)*acd23(25)
      acd23(78)=acd23(57)*acd23(28)
      acd23(79)=acd23(58)*acd23(30)
      acd23(80)=acd23(59)*acd23(32)
      acd23(81)=acd23(60)*acd23(34)
      acd23(82)=acd23(61)*acd23(36)
      acd23(83)=acd23(62)*acd23(38)
      acd23(84)=acd23(63)*acd23(40)
      acd23(85)=acd23(64)*acd23(42)
      acd23(86)=acd23(65)*acd23(44)
      acd23(87)=acd23(66)*acd23(46)
      acd23(88)=acd23(67)*acd23(48)
      acd23(89)=acd23(68)*acd23(50)
      acd23(90)=acd23(69)*acd23(52)
      acd23(91)=acd23(70)*acd23(54)
      acd23(92)=acd23(71)*acd23(56)
      acd23(72)=acd23(73)+acd23(72)+acd23(92)+acd23(91)+acd23(90)+acd23(89)+acd&
      &23(88)+acd23(87)+acd23(86)+acd23(85)+acd23(84)+acd23(83)+acd23(82)+acd23&
      &(81)+acd23(80)+acd23(79)+acd23(78)+acd23(77)+acd23(76)+acd23(75)+acd23(7&
      &4)
      acd23(72)=acd23(4)*acd23(72)
      acd23(73)=acd23(20)+acd23(18)
      acd23(73)=acd23(73)*acd23(17)
      acd23(74)=acd23(15)+acd23(13)
      acd23(74)=acd23(74)*acd23(12)
      acd23(75)=acd23(6)*acd23(5)
      acd23(76)=acd23(10)*acd23(9)
      acd23(77)=acd23(23)*acd23(22)
      acd23(78)=acd23(26)*acd23(25)
      acd23(79)=acd23(27)*acd23(28)
      acd23(80)=acd23(29)*acd23(30)
      acd23(81)=acd23(31)*acd23(32)
      acd23(82)=acd23(33)*acd23(34)
      acd23(83)=acd23(35)*acd23(36)
      acd23(84)=acd23(37)*acd23(38)
      acd23(85)=acd23(39)*acd23(40)
      acd23(86)=acd23(41)*acd23(42)
      acd23(87)=acd23(43)*acd23(44)
      acd23(88)=acd23(45)*acd23(46)
      acd23(89)=acd23(47)*acd23(48)
      acd23(90)=acd23(49)*acd23(50)
      acd23(91)=acd23(51)*acd23(52)
      acd23(92)=acd23(53)*acd23(54)
      acd23(93)=acd23(55)*acd23(56)
      acd23(73)=acd23(74)+acd23(73)+acd23(93)+acd23(92)+acd23(91)+acd23(90)+acd&
      &23(89)+acd23(88)+acd23(87)+acd23(86)+acd23(85)+acd23(84)+acd23(83)+acd23&
      &(82)+acd23(81)+acd23(80)+acd23(79)+acd23(78)+acd23(77)+acd23(76)+acd23(7&
      &5)
      acd23(73)=acd23(7)*acd23(73)
      acd23(74)=acd23(2)*acd23(1)
      brack=acd23(72)+acd23(73)+2.0_ki*acd23(74)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd23h1
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
      qshift = -k3+k2-k4
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
!---#[ subroutine reconstruct_d23:
   subroutine     reconstruct_d23(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_23:
      coeffs%coeffs_23%c0 = derivative(czip)
      coeffs%coeffs_23%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_23%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_23%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_23%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_23%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_23%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_23%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_23%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_23%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_23%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_23%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_23%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_23%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_23%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_23:
   end subroutine reconstruct_d23
!---#] subroutine reconstruct_d23:
end module     p0_dbaru_epnebbbarg_d23h1l1d
