module     p9_csbar_epnebbbarg_d137h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d137h3l1d.f90
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
   public :: derivative , reconstruct_d137
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd137h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(54) :: acd137
      complex(ki) :: brack
      acd137(1)=dotproduct(k1,qshift)
      acd137(2)=dotproduct(e7,qshift)
      acd137(3)=abb137(14)
      acd137(4)=abb137(83)
      acd137(5)=dotproduct(k2,qshift)
      acd137(6)=abb137(52)
      acd137(7)=abb137(15)
      acd137(8)=dotproduct(k3,qshift)
      acd137(9)=abb137(81)
      acd137(10)=abb137(90)
      acd137(11)=dotproduct(k4,qshift)
      acd137(12)=dotproduct(l5,qshift)
      acd137(13)=abb137(79)
      acd137(14)=abb137(88)
      acd137(15)=dotproduct(l6,qshift)
      acd137(16)=dotproduct(k7,qshift)
      acd137(17)=abb137(38)
      acd137(18)=abb137(18)
      acd137(19)=dotproduct(qshift,spvak2k1)
      acd137(20)=abb137(20)
      acd137(21)=dotproduct(qshift,spvak2l5)
      acd137(22)=abb137(17)
      acd137(23)=dotproduct(qshift,spvak2l6)
      acd137(24)=abb137(23)
      acd137(25)=dotproduct(qshift,spvak2k7)
      acd137(26)=abb137(13)
      acd137(27)=dotproduct(qshift,spvak4k1)
      acd137(28)=abb137(11)
      acd137(29)=dotproduct(qshift,spvak4k3)
      acd137(30)=abb137(12)
      acd137(31)=abb137(30)
      acd137(32)=dotproduct(qshift,qshift)
      acd137(33)=abb137(21)
      acd137(34)=abb137(16)
      acd137(35)=abb137(25)
      acd137(36)=abb137(19)
      acd137(37)=abb137(31)
      acd137(38)=abb137(35)
      acd137(39)=dotproduct(qshift,spvak2e7)
      acd137(40)=abb137(33)
      acd137(41)=abb137(28)
      acd137(42)=acd137(3)*acd137(1)
      acd137(43)=acd137(6)*acd137(5)
      acd137(44)=acd137(17)*acd137(16)
      acd137(45)=acd137(20)*acd137(19)
      acd137(46)=acd137(22)*acd137(21)
      acd137(47)=acd137(24)*acd137(23)
      acd137(48)=acd137(26)*acd137(25)
      acd137(49)=acd137(28)*acd137(27)
      acd137(50)=acd137(30)*acd137(29)
      acd137(42)=-acd137(31)+acd137(50)+acd137(49)+acd137(48)+acd137(47)+acd137&
      &(46)+acd137(45)+acd137(44)+acd137(43)+acd137(42)
      acd137(42)=acd137(2)*acd137(42)
      acd137(43)=acd137(11)+acd137(8)
      acd137(44)=acd137(9)*acd137(2)
      acd137(44)=acd137(44)-acd137(10)
      acd137(43)=acd137(44)*acd137(43)
      acd137(44)=-acd137(15)-acd137(12)
      acd137(45)=acd137(13)*acd137(2)
      acd137(45)=acd137(45)-acd137(14)
      acd137(44)=acd137(45)*acd137(44)
      acd137(45)=-acd137(4)*acd137(1)
      acd137(46)=-acd137(7)*acd137(5)
      acd137(47)=-acd137(18)*acd137(16)
      acd137(48)=acd137(33)*acd137(32)
      acd137(49)=-acd137(34)*acd137(19)
      acd137(50)=-acd137(35)*acd137(21)
      acd137(51)=-acd137(36)*acd137(23)
      acd137(52)=-acd137(37)*acd137(27)
      acd137(53)=-acd137(38)*acd137(29)
      acd137(54)=-acd137(40)*acd137(39)
      brack=acd137(41)+acd137(42)+acd137(43)+acd137(44)+acd137(45)+acd137(46)+a&
      &cd137(47)+acd137(48)+acd137(49)+acd137(50)+acd137(51)+acd137(52)+acd137(&
      &53)+acd137(54)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd137h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(68) :: acd137
      complex(ki) :: brack
      acd137(1)=k1(iv1)
      acd137(2)=dotproduct(e7,qshift)
      acd137(3)=abb137(14)
      acd137(4)=abb137(83)
      acd137(5)=k2(iv1)
      acd137(6)=abb137(52)
      acd137(7)=abb137(15)
      acd137(8)=k3(iv1)
      acd137(9)=abb137(81)
      acd137(10)=abb137(90)
      acd137(11)=k4(iv1)
      acd137(12)=l5(iv1)
      acd137(13)=abb137(79)
      acd137(14)=abb137(88)
      acd137(15)=l6(iv1)
      acd137(16)=k7(iv1)
      acd137(17)=abb137(38)
      acd137(18)=abb137(18)
      acd137(19)=e7(iv1)
      acd137(20)=dotproduct(k1,qshift)
      acd137(21)=dotproduct(k2,qshift)
      acd137(22)=dotproduct(k3,qshift)
      acd137(23)=dotproduct(k4,qshift)
      acd137(24)=dotproduct(l5,qshift)
      acd137(25)=dotproduct(l6,qshift)
      acd137(26)=dotproduct(k7,qshift)
      acd137(27)=dotproduct(qshift,spvak2k1)
      acd137(28)=abb137(20)
      acd137(29)=dotproduct(qshift,spvak2l5)
      acd137(30)=abb137(17)
      acd137(31)=dotproduct(qshift,spvak2l6)
      acd137(32)=abb137(23)
      acd137(33)=dotproduct(qshift,spvak2k7)
      acd137(34)=abb137(13)
      acd137(35)=dotproduct(qshift,spvak4k1)
      acd137(36)=abb137(11)
      acd137(37)=dotproduct(qshift,spvak4k3)
      acd137(38)=abb137(12)
      acd137(39)=abb137(30)
      acd137(40)=qshift(iv1)
      acd137(41)=abb137(21)
      acd137(42)=spvak2k1(iv1)
      acd137(43)=abb137(16)
      acd137(44)=spvak2l5(iv1)
      acd137(45)=abb137(25)
      acd137(46)=spvak2l6(iv1)
      acd137(47)=abb137(19)
      acd137(48)=spvak2k7(iv1)
      acd137(49)=spvak4k1(iv1)
      acd137(50)=abb137(31)
      acd137(51)=spvak4k3(iv1)
      acd137(52)=abb137(35)
      acd137(53)=spvak2e7(iv1)
      acd137(54)=abb137(33)
      acd137(55)=-acd137(25)-acd137(24)
      acd137(55)=acd137(55)*acd137(13)
      acd137(56)=acd137(23)+acd137(22)
      acd137(56)=acd137(56)*acd137(9)
      acd137(57)=acd137(20)*acd137(3)
      acd137(58)=acd137(21)*acd137(6)
      acd137(59)=acd137(26)*acd137(17)
      acd137(60)=acd137(27)*acd137(28)
      acd137(61)=acd137(29)*acd137(30)
      acd137(62)=acd137(31)*acd137(32)
      acd137(63)=acd137(33)*acd137(34)
      acd137(64)=acd137(35)*acd137(36)
      acd137(65)=acd137(37)*acd137(38)
      acd137(55)=acd137(56)+acd137(55)-acd137(39)+acd137(65)+acd137(64)+acd137(&
      &63)+acd137(62)+acd137(61)+acd137(60)+acd137(59)+acd137(58)+acd137(57)
      acd137(55)=acd137(19)*acd137(55)
      acd137(56)=acd137(3)*acd137(1)
      acd137(57)=acd137(6)*acd137(5)
      acd137(58)=acd137(17)*acd137(16)
      acd137(59)=acd137(42)*acd137(28)
      acd137(60)=acd137(44)*acd137(30)
      acd137(61)=acd137(46)*acd137(32)
      acd137(62)=acd137(49)*acd137(36)
      acd137(63)=acd137(51)*acd137(38)
      acd137(64)=acd137(48)*acd137(34)
      acd137(56)=acd137(64)+acd137(63)+acd137(62)+acd137(61)+acd137(60)+acd137(&
      &59)+acd137(58)+acd137(56)+acd137(57)
      acd137(56)=acd137(2)*acd137(56)
      acd137(57)=acd137(11)+acd137(8)
      acd137(58)=acd137(9)*acd137(2)
      acd137(58)=acd137(58)-acd137(10)
      acd137(57)=acd137(58)*acd137(57)
      acd137(58)=-acd137(15)-acd137(12)
      acd137(59)=acd137(13)*acd137(2)
      acd137(59)=acd137(59)-acd137(14)
      acd137(58)=acd137(59)*acd137(58)
      acd137(59)=-acd137(4)*acd137(1)
      acd137(60)=-acd137(7)*acd137(5)
      acd137(61)=-acd137(18)*acd137(16)
      acd137(62)=acd137(41)*acd137(40)
      acd137(63)=-acd137(43)*acd137(42)
      acd137(64)=-acd137(45)*acd137(44)
      acd137(65)=-acd137(47)*acd137(46)
      acd137(66)=-acd137(50)*acd137(49)
      acd137(67)=-acd137(52)*acd137(51)
      acd137(68)=-acd137(54)*acd137(53)
      brack=acd137(55)+acd137(56)+acd137(57)+acd137(58)+acd137(59)+acd137(60)+a&
      &cd137(61)+2.0_ki*acd137(62)+acd137(63)+acd137(64)+acd137(65)+acd137(66)+&
      &acd137(67)+acd137(68)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd137h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd137
      complex(ki) :: brack
      acd137(1)=d(iv1,iv2)
      acd137(2)=abb137(21)
      acd137(3)=k1(iv1)
      acd137(4)=e7(iv2)
      acd137(5)=abb137(14)
      acd137(6)=k1(iv2)
      acd137(7)=e7(iv1)
      acd137(8)=k2(iv1)
      acd137(9)=abb137(52)
      acd137(10)=k2(iv2)
      acd137(11)=k3(iv1)
      acd137(12)=abb137(81)
      acd137(13)=k3(iv2)
      acd137(14)=k4(iv1)
      acd137(15)=k4(iv2)
      acd137(16)=l5(iv1)
      acd137(17)=abb137(79)
      acd137(18)=l5(iv2)
      acd137(19)=l6(iv1)
      acd137(20)=l6(iv2)
      acd137(21)=k7(iv1)
      acd137(22)=abb137(38)
      acd137(23)=k7(iv2)
      acd137(24)=spvak2k1(iv2)
      acd137(25)=abb137(20)
      acd137(26)=spvak2l5(iv2)
      acd137(27)=abb137(17)
      acd137(28)=spvak2l6(iv2)
      acd137(29)=abb137(23)
      acd137(30)=spvak2k7(iv2)
      acd137(31)=abb137(13)
      acd137(32)=spvak4k1(iv2)
      acd137(33)=abb137(11)
      acd137(34)=spvak4k3(iv2)
      acd137(35)=abb137(12)
      acd137(36)=spvak2k1(iv1)
      acd137(37)=spvak2l5(iv1)
      acd137(38)=spvak2l6(iv1)
      acd137(39)=spvak2k7(iv1)
      acd137(40)=spvak4k1(iv1)
      acd137(41)=spvak4k3(iv1)
      acd137(42)=-acd137(19)-acd137(16)
      acd137(42)=acd137(42)*acd137(17)
      acd137(43)=acd137(14)+acd137(11)
      acd137(43)=acd137(43)*acd137(12)
      acd137(44)=acd137(3)*acd137(5)
      acd137(45)=acd137(8)*acd137(9)
      acd137(46)=acd137(21)*acd137(22)
      acd137(47)=acd137(36)*acd137(25)
      acd137(48)=acd137(37)*acd137(27)
      acd137(49)=acd137(38)*acd137(29)
      acd137(50)=acd137(39)*acd137(31)
      acd137(51)=acd137(40)*acd137(33)
      acd137(52)=acd137(41)*acd137(35)
      acd137(42)=acd137(43)+acd137(42)+acd137(52)+acd137(51)+acd137(50)+acd137(&
      &49)+acd137(48)+acd137(47)+acd137(46)+acd137(45)+acd137(44)
      acd137(42)=acd137(4)*acd137(42)
      acd137(43)=-acd137(20)-acd137(18)
      acd137(43)=acd137(43)*acd137(17)
      acd137(44)=acd137(15)+acd137(13)
      acd137(44)=acd137(44)*acd137(12)
      acd137(45)=acd137(6)*acd137(5)
      acd137(46)=acd137(10)*acd137(9)
      acd137(47)=acd137(23)*acd137(22)
      acd137(48)=acd137(24)*acd137(25)
      acd137(49)=acd137(26)*acd137(27)
      acd137(50)=acd137(28)*acd137(29)
      acd137(51)=acd137(30)*acd137(31)
      acd137(52)=acd137(32)*acd137(33)
      acd137(53)=acd137(34)*acd137(35)
      acd137(43)=acd137(44)+acd137(43)+acd137(53)+acd137(52)+acd137(51)+acd137(&
      &50)+acd137(49)+acd137(48)+acd137(47)+acd137(46)+acd137(45)
      acd137(43)=acd137(7)*acd137(43)
      acd137(44)=acd137(2)*acd137(1)
      brack=acd137(42)+acd137(43)+2.0_ki*acd137(44)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd137h3
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
      qshift = -k2
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
!---#[ subroutine reconstruct_d137:
   subroutine     reconstruct_d137(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_137:
      coeffs%coeffs_137%c0 = derivative(czip)
      coeffs%coeffs_137%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_137%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_137%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_137%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_137%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_137%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_137%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_137%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_137%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_137%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_137%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_137%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_137%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_137%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_137:
   end subroutine reconstruct_d137
!---#] subroutine reconstruct_d137:
end module     p9_csbar_epnebbbarg_d137h3l1d
