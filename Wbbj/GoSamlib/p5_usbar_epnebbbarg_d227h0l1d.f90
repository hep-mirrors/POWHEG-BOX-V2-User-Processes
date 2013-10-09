module     p5_usbar_epnebbbarg_d227h0l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p5_usbar_epneb &
   ! &bbarg/helicity0d227h0l1d.f90
   ! generator: buildfortran_d.py
   use p5_usbar_epnebbbarg_config, only: ki
   use p5_usbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d227
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd227h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd227
      complex(ki) :: brack
      acd227(1)=dotproduct(k1,qshift)
      acd227(2)=dotproduct(e7,qshift)
      acd227(3)=abb227(55)
      acd227(4)=abb227(52)
      acd227(5)=dotproduct(k2,qshift)
      acd227(6)=abb227(14)
      acd227(7)=abb227(10)
      acd227(8)=dotproduct(k3,qshift)
      acd227(9)=abb227(58)
      acd227(10)=dotproduct(k4,qshift)
      acd227(11)=dotproduct(l5,qshift)
      acd227(12)=dotproduct(l6,qshift)
      acd227(13)=dotproduct(k7,qshift)
      acd227(14)=abb227(45)
      acd227(15)=dotproduct(qshift,spvak2k1)
      acd227(16)=abb227(29)
      acd227(17)=dotproduct(qshift,spvak2l5)
      acd227(18)=abb227(18)
      acd227(19)=dotproduct(qshift,spvak2l6)
      acd227(20)=abb227(27)
      acd227(21)=dotproduct(qshift,spvak4k1)
      acd227(22)=abb227(25)
      acd227(23)=dotproduct(qshift,spvak4k2)
      acd227(24)=abb227(24)
      acd227(25)=dotproduct(qshift,spvak4l5)
      acd227(26)=abb227(23)
      acd227(27)=dotproduct(qshift,spvak4l6)
      acd227(28)=abb227(21)
      acd227(29)=dotproduct(qshift,spval5k1)
      acd227(30)=abb227(12)
      acd227(31)=dotproduct(qshift,spval5k2)
      acd227(32)=abb227(20)
      acd227(33)=dotproduct(qshift,spval6k1)
      acd227(34)=abb227(26)
      acd227(35)=dotproduct(qshift,spval6k2)
      acd227(36)=abb227(28)
      acd227(37)=abb227(49)
      acd227(38)=dotproduct(qshift,qshift)
      acd227(39)=abb227(15)
      acd227(40)=abb227(11)
      acd227(41)=abb227(13)
      acd227(42)=abb227(22)
      acd227(43)=abb227(19)
      acd227(44)=dotproduct(qshift,spvak2e7)
      acd227(45)=abb227(17)
      acd227(46)=dotproduct(qshift,spvak4e7)
      acd227(47)=abb227(16)
      acd227(48)=abb227(57)
      acd227(49)=acd227(6)*acd227(5)
      acd227(50)=acd227(16)*acd227(15)
      acd227(51)=acd227(18)*acd227(17)
      acd227(52)=acd227(20)*acd227(19)
      acd227(53)=acd227(22)*acd227(21)
      acd227(54)=acd227(24)*acd227(23)
      acd227(55)=acd227(26)*acd227(25)
      acd227(56)=acd227(28)*acd227(27)
      acd227(57)=acd227(30)*acd227(29)
      acd227(58)=acd227(32)*acd227(31)
      acd227(59)=acd227(34)*acd227(33)
      acd227(60)=acd227(36)*acd227(35)
      acd227(49)=-acd227(37)+acd227(60)+acd227(59)+acd227(58)+acd227(57)+acd227&
      &(56)+acd227(55)+acd227(54)+acd227(53)+acd227(52)+acd227(51)+acd227(50)+a&
      &cd227(49)
      acd227(49)=acd227(2)*acd227(49)
      acd227(50)=acd227(12)-acd227(1)+acd227(11)
      acd227(51)=acd227(3)*acd227(2)
      acd227(51)=acd227(51)-acd227(4)
      acd227(50)=acd227(51)*acd227(50)
      acd227(51)=acd227(10)+acd227(8)
      acd227(51)=acd227(9)*acd227(51)
      acd227(52)=-acd227(7)*acd227(5)
      acd227(53)=-acd227(14)*acd227(13)
      acd227(54)=acd227(39)*acd227(38)
      acd227(55)=-acd227(40)*acd227(29)
      acd227(56)=-acd227(41)*acd227(31)
      acd227(57)=-acd227(42)*acd227(33)
      acd227(58)=-acd227(43)*acd227(35)
      acd227(59)=-acd227(45)*acd227(44)
      acd227(60)=-acd227(47)*acd227(46)
      brack=acd227(48)+acd227(49)+acd227(50)+acd227(51)+acd227(52)+acd227(53)+a&
      &cd227(54)+acd227(55)+acd227(56)+acd227(57)+acd227(58)+acd227(59)+acd227(&
      &60)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd227h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(76) :: acd227
      complex(ki) :: brack
      acd227(1)=k1(iv1)
      acd227(2)=dotproduct(e7,qshift)
      acd227(3)=abb227(55)
      acd227(4)=abb227(52)
      acd227(5)=k2(iv1)
      acd227(6)=abb227(14)
      acd227(7)=abb227(10)
      acd227(8)=k3(iv1)
      acd227(9)=abb227(58)
      acd227(10)=k4(iv1)
      acd227(11)=l5(iv1)
      acd227(12)=l6(iv1)
      acd227(13)=k7(iv1)
      acd227(14)=abb227(45)
      acd227(15)=e7(iv1)
      acd227(16)=dotproduct(k1,qshift)
      acd227(17)=dotproduct(k2,qshift)
      acd227(18)=dotproduct(l5,qshift)
      acd227(19)=dotproduct(l6,qshift)
      acd227(20)=dotproduct(qshift,spvak2k1)
      acd227(21)=abb227(29)
      acd227(22)=dotproduct(qshift,spvak2l5)
      acd227(23)=abb227(18)
      acd227(24)=dotproduct(qshift,spvak2l6)
      acd227(25)=abb227(27)
      acd227(26)=dotproduct(qshift,spvak4k1)
      acd227(27)=abb227(25)
      acd227(28)=dotproduct(qshift,spvak4k2)
      acd227(29)=abb227(24)
      acd227(30)=dotproduct(qshift,spvak4l5)
      acd227(31)=abb227(23)
      acd227(32)=dotproduct(qshift,spvak4l6)
      acd227(33)=abb227(21)
      acd227(34)=dotproduct(qshift,spval5k1)
      acd227(35)=abb227(12)
      acd227(36)=dotproduct(qshift,spval5k2)
      acd227(37)=abb227(20)
      acd227(38)=dotproduct(qshift,spval6k1)
      acd227(39)=abb227(26)
      acd227(40)=dotproduct(qshift,spval6k2)
      acd227(41)=abb227(28)
      acd227(42)=abb227(49)
      acd227(43)=qshift(iv1)
      acd227(44)=abb227(15)
      acd227(45)=spvak2k1(iv1)
      acd227(46)=spvak2l5(iv1)
      acd227(47)=spvak2l6(iv1)
      acd227(48)=spvak4k1(iv1)
      acd227(49)=spvak4k2(iv1)
      acd227(50)=spvak4l5(iv1)
      acd227(51)=spvak4l6(iv1)
      acd227(52)=spval5k1(iv1)
      acd227(53)=abb227(11)
      acd227(54)=spval5k2(iv1)
      acd227(55)=abb227(13)
      acd227(56)=spval6k1(iv1)
      acd227(57)=abb227(22)
      acd227(58)=spval6k2(iv1)
      acd227(59)=abb227(19)
      acd227(60)=spvak2e7(iv1)
      acd227(61)=abb227(17)
      acd227(62)=spvak4e7(iv1)
      acd227(63)=abb227(16)
      acd227(64)=-acd227(19)-acd227(18)+acd227(16)
      acd227(64)=acd227(64)*acd227(3)
      acd227(65)=-acd227(17)*acd227(6)
      acd227(66)=-acd227(20)*acd227(21)
      acd227(67)=-acd227(22)*acd227(23)
      acd227(68)=-acd227(24)*acd227(25)
      acd227(69)=-acd227(26)*acd227(27)
      acd227(70)=-acd227(28)*acd227(29)
      acd227(71)=-acd227(30)*acd227(31)
      acd227(72)=-acd227(32)*acd227(33)
      acd227(73)=-acd227(34)*acd227(35)
      acd227(74)=-acd227(36)*acd227(37)
      acd227(75)=-acd227(38)*acd227(39)
      acd227(76)=-acd227(40)*acd227(41)
      acd227(64)=acd227(64)+acd227(42)+acd227(76)+acd227(75)+acd227(74)+acd227(&
      &73)+acd227(72)+acd227(71)+acd227(70)+acd227(69)+acd227(68)+acd227(67)+ac&
      &d227(66)+acd227(65)
      acd227(64)=acd227(15)*acd227(64)
      acd227(65)=-acd227(6)*acd227(5)
      acd227(66)=-acd227(52)*acd227(35)
      acd227(67)=-acd227(54)*acd227(37)
      acd227(68)=-acd227(56)*acd227(39)
      acd227(69)=-acd227(58)*acd227(41)
      acd227(70)=-acd227(45)*acd227(21)
      acd227(71)=-acd227(46)*acd227(23)
      acd227(72)=-acd227(47)*acd227(25)
      acd227(73)=-acd227(48)*acd227(27)
      acd227(74)=-acd227(49)*acd227(29)
      acd227(75)=-acd227(50)*acd227(31)
      acd227(76)=-acd227(51)*acd227(33)
      acd227(65)=acd227(76)+acd227(75)+acd227(74)+acd227(73)+acd227(72)+acd227(&
      &71)+acd227(70)+acd227(69)+acd227(68)+acd227(67)+acd227(66)+acd227(65)
      acd227(65)=acd227(2)*acd227(65)
      acd227(66)=-acd227(12)-acd227(11)+acd227(1)
      acd227(67)=acd227(3)*acd227(2)
      acd227(67)=acd227(67)-acd227(4)
      acd227(66)=acd227(67)*acd227(66)
      acd227(67)=-acd227(10)-acd227(8)
      acd227(67)=acd227(9)*acd227(67)
      acd227(68)=acd227(7)*acd227(5)
      acd227(69)=acd227(14)*acd227(13)
      acd227(70)=acd227(44)*acd227(43)
      acd227(71)=acd227(53)*acd227(52)
      acd227(72)=acd227(55)*acd227(54)
      acd227(73)=acd227(57)*acd227(56)
      acd227(74)=acd227(59)*acd227(58)
      acd227(75)=acd227(61)*acd227(60)
      acd227(76)=acd227(63)*acd227(62)
      brack=acd227(64)+acd227(65)+acd227(66)+acd227(67)+acd227(68)+acd227(69)-2&
      &.0_ki*acd227(70)+acd227(71)+acd227(72)+acd227(73)+acd227(74)+acd227(75)+&
      &acd227(76)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p5_usbar_epnebbbarg_model
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_color
      use p5_usbar_epnebbbarg_abbrevd227h0
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(61) :: acd227
      complex(ki) :: brack
      acd227(1)=d(iv1,iv2)
      acd227(2)=abb227(15)
      acd227(3)=k1(iv1)
      acd227(4)=e7(iv2)
      acd227(5)=abb227(55)
      acd227(6)=k1(iv2)
      acd227(7)=e7(iv1)
      acd227(8)=k2(iv1)
      acd227(9)=abb227(14)
      acd227(10)=k2(iv2)
      acd227(11)=l5(iv1)
      acd227(12)=l5(iv2)
      acd227(13)=l6(iv1)
      acd227(14)=l6(iv2)
      acd227(15)=spvak2k1(iv2)
      acd227(16)=abb227(29)
      acd227(17)=spvak2l5(iv2)
      acd227(18)=abb227(18)
      acd227(19)=spvak2l6(iv2)
      acd227(20)=abb227(27)
      acd227(21)=spvak4k1(iv2)
      acd227(22)=abb227(25)
      acd227(23)=spvak4k2(iv2)
      acd227(24)=abb227(24)
      acd227(25)=spvak4l5(iv2)
      acd227(26)=abb227(23)
      acd227(27)=spvak4l6(iv2)
      acd227(28)=abb227(21)
      acd227(29)=spval5k1(iv2)
      acd227(30)=abb227(12)
      acd227(31)=spval5k2(iv2)
      acd227(32)=abb227(20)
      acd227(33)=spval6k1(iv2)
      acd227(34)=abb227(26)
      acd227(35)=spval6k2(iv2)
      acd227(36)=abb227(28)
      acd227(37)=spvak2k1(iv1)
      acd227(38)=spvak2l5(iv1)
      acd227(39)=spvak2l6(iv1)
      acd227(40)=spvak4k1(iv1)
      acd227(41)=spvak4k2(iv1)
      acd227(42)=spvak4l5(iv1)
      acd227(43)=spvak4l6(iv1)
      acd227(44)=spval5k1(iv1)
      acd227(45)=spval5k2(iv1)
      acd227(46)=spval6k1(iv1)
      acd227(47)=spval6k2(iv1)
      acd227(48)=acd227(36)*acd227(35)
      acd227(49)=acd227(34)*acd227(33)
      acd227(50)=acd227(32)*acd227(31)
      acd227(51)=acd227(30)*acd227(29)
      acd227(52)=acd227(28)*acd227(27)
      acd227(53)=acd227(26)*acd227(25)
      acd227(54)=acd227(24)*acd227(23)
      acd227(55)=acd227(22)*acd227(21)
      acd227(56)=acd227(20)*acd227(19)
      acd227(57)=acd227(18)*acd227(17)
      acd227(58)=acd227(16)*acd227(15)
      acd227(59)=acd227(9)*acd227(10)
      acd227(60)=-acd227(6)+acd227(14)+acd227(12)
      acd227(60)=acd227(5)*acd227(60)
      acd227(48)=acd227(60)+acd227(59)+acd227(58)+acd227(57)+acd227(56)+acd227(&
      &55)+acd227(54)+acd227(53)+acd227(52)+acd227(51)+acd227(50)+acd227(48)+ac&
      &d227(49)
      acd227(48)=acd227(7)*acd227(48)
      acd227(49)=acd227(36)*acd227(47)
      acd227(50)=acd227(34)*acd227(46)
      acd227(51)=acd227(32)*acd227(45)
      acd227(52)=acd227(30)*acd227(44)
      acd227(53)=acd227(28)*acd227(43)
      acd227(54)=acd227(26)*acd227(42)
      acd227(55)=acd227(24)*acd227(41)
      acd227(56)=acd227(22)*acd227(40)
      acd227(57)=acd227(20)*acd227(39)
      acd227(58)=acd227(18)*acd227(38)
      acd227(59)=acd227(16)*acd227(37)
      acd227(60)=acd227(9)*acd227(8)
      acd227(61)=-acd227(3)+acd227(13)+acd227(11)
      acd227(61)=acd227(5)*acd227(61)
      acd227(49)=acd227(61)+acd227(60)+acd227(59)+acd227(58)+acd227(57)+acd227(&
      &56)+acd227(55)+acd227(54)+acd227(53)+acd227(52)+acd227(51)+acd227(49)+ac&
      &d227(50)
      acd227(49)=acd227(4)*acd227(49)
      acd227(50)=acd227(1)*acd227(2)
      brack=acd227(48)+acd227(49)+2.0_ki*acd227(50)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p5_usbar_epnebbbarg_globalsl1, only: epspow
      use p5_usbar_epnebbbarg_kinematics
      use p5_usbar_epnebbbarg_abbrevd227h0
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
!---#[ subroutine reconstruct_d227:
   subroutine     reconstruct_d227(coeffs)
      use p5_usbar_epnebbbarg_groups, only: tensrec_info_group13
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group13), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_227:
      coeffs%coeffs_227%c0 = derivative(czip)
      coeffs%coeffs_227%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_227%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_227%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_227%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_227%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_227%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_227%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_227%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_227%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_227%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_227%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_227%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_227%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_227%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_227:
   end subroutine reconstruct_d227
!---#] subroutine reconstruct_d227:
end module     p5_usbar_epnebbbarg_d227h0l1d
