module     p9_csbar_epnebbbarg_d12h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d12h2l1d.f90
   ! generator: buildfortran_d.py
   use p9_csbar_epnebbbarg_config, only: ki
   use p9_csbar_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d12
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd12h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(1) :: acd12
      complex(ki) :: brack
      acd12(1)=abb12(11)
      brack=acd12(1)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd12h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd12
      complex(ki) :: brack
      acd12(1)=k1(iv1)
      acd12(2)=abb12(56)
      acd12(3)=k2(iv1)
      acd12(4)=abb12(15)
      acd12(5)=k3(iv1)
      acd12(6)=abb12(87)
      acd12(7)=k4(iv1)
      acd12(8)=k7(iv1)
      acd12(9)=e7(iv1)
      acd12(10)=abb12(45)
      acd12(11)=spvak2k3(iv1)
      acd12(12)=abb12(21)
      acd12(13)=spvak4k3(iv1)
      acd12(14)=abb12(17)
      acd12(15)=spval5l6(iv1)
      acd12(16)=abb12(8)
      acd12(17)=spvae7k1(iv1)
      acd12(18)=abb12(34)
      acd12(19)=acd12(8)-acd12(1)
      acd12(19)=acd12(2)*acd12(19)
      acd12(20)=acd12(7)+acd12(5)
      acd12(20)=acd12(6)*acd12(20)
      acd12(21)=acd12(4)*acd12(3)
      acd12(22)=acd12(10)*acd12(9)
      acd12(23)=acd12(12)*acd12(11)
      acd12(24)=acd12(14)*acd12(13)
      acd12(25)=acd12(16)*acd12(15)
      acd12(26)=acd12(18)*acd12(17)
      brack=acd12(19)+acd12(20)+acd12(21)+acd12(22)+acd12(23)+acd12(24)+acd12(2&
      &5)+acd12(26)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd12h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(61) :: acd12
      complex(ki) :: brack
      acd12(1)=d(iv1,iv2)
      acd12(2)=abb12(20)
      acd12(3)=k1(iv1)
      acd12(4)=k2(iv2)
      acd12(5)=abb12(33)
      acd12(6)=k3(iv2)
      acd12(7)=abb12(97)
      acd12(8)=k4(iv2)
      acd12(9)=spvak4k3(iv2)
      acd12(10)=abb12(40)
      acd12(11)=spval5l6(iv2)
      acd12(12)=abb12(53)
      acd12(13)=k1(iv2)
      acd12(14)=k2(iv1)
      acd12(15)=k3(iv1)
      acd12(16)=k4(iv1)
      acd12(17)=spvak4k3(iv1)
      acd12(18)=spval5l6(iv1)
      acd12(19)=abb12(47)
      acd12(20)=k7(iv2)
      acd12(21)=e7(iv2)
      acd12(22)=abb12(27)
      acd12(23)=abb12(42)
      acd12(24)=abb12(52)
      acd12(25)=spvak2k3(iv2)
      acd12(26)=abb12(13)
      acd12(27)=spvae7k1(iv2)
      acd12(28)=abb12(38)
      acd12(29)=k7(iv1)
      acd12(30)=e7(iv1)
      acd12(31)=spvak2k3(iv1)
      acd12(32)=spvae7k1(iv1)
      acd12(33)=abb12(93)
      acd12(34)=abb12(29)
      acd12(35)=abb12(44)
      acd12(36)=abb12(7)
      acd12(37)=abb12(35)
      acd12(38)=abb12(12)
      acd12(39)=abb12(14)
      acd12(40)=abb12(10)
      acd12(41)=spvak2k4(iv2)
      acd12(42)=abb12(30)
      acd12(43)=spvak2l6(iv2)
      acd12(44)=abb12(22)
      acd12(45)=spvak2k4(iv1)
      acd12(46)=spvak2l6(iv1)
      acd12(47)=abb12(26)
      acd12(48)=abb12(23)
      acd12(49)=acd12(13)-acd12(20)
      acd12(50)=-acd12(10)*acd12(49)
      acd12(51)=acd12(44)*acd12(43)
      acd12(52)=-acd12(42)*acd12(41)
      acd12(53)=acd12(27)*acd12(40)
      acd12(54)=acd12(25)*acd12(39)
      acd12(55)=acd12(21)*acd12(36)
      acd12(56)=acd12(11)*acd12(38)
      acd12(57)=acd12(4)*acd12(23)
      acd12(50)=acd12(57)+acd12(56)+acd12(55)+acd12(54)+acd12(53)+acd12(51)+acd&
      &12(52)+acd12(50)
      acd12(50)=acd12(17)*acd12(50)
      acd12(51)=acd12(3)-acd12(29)
      acd12(52)=-acd12(10)*acd12(51)
      acd12(53)=acd12(44)*acd12(46)
      acd12(54)=-acd12(42)*acd12(45)
      acd12(55)=acd12(32)*acd12(40)
      acd12(56)=acd12(31)*acd12(39)
      acd12(57)=acd12(30)*acd12(36)
      acd12(58)=acd12(18)*acd12(38)
      acd12(59)=acd12(14)*acd12(23)
      acd12(52)=acd12(59)+acd12(58)+acd12(57)+acd12(56)+acd12(55)+acd12(53)+acd&
      &12(54)+acd12(52)
      acd12(52)=acd12(9)*acd12(52)
      acd12(53)=-acd12(5)*acd12(51)
      acd12(54)=acd12(32)*acd12(28)
      acd12(55)=acd12(31)*acd12(26)
      acd12(56)=acd12(30)*acd12(22)
      acd12(57)=acd12(18)*acd12(24)
      acd12(58)=acd12(14)*acd12(19)
      acd12(53)=2.0_ki*acd12(58)+acd12(57)+acd12(56)+acd12(54)+acd12(55)+acd12(&
      &53)
      acd12(53)=acd12(4)*acd12(53)
      acd12(54)=-acd12(5)*acd12(49)
      acd12(55)=acd12(27)*acd12(28)
      acd12(56)=acd12(25)*acd12(26)
      acd12(57)=acd12(21)*acd12(22)
      acd12(58)=acd12(11)*acd12(24)
      acd12(54)=acd12(58)+acd12(57)+acd12(55)+acd12(56)+acd12(54)
      acd12(54)=acd12(14)*acd12(54)
      acd12(55)=acd12(12)*acd12(49)
      acd12(56)=acd12(27)*acd12(48)
      acd12(57)=acd12(25)*acd12(47)
      acd12(58)=acd12(21)*acd12(37)
      acd12(55)=acd12(58)+acd12(56)+acd12(57)+acd12(55)
      acd12(55)=acd12(18)*acd12(55)
      acd12(56)=acd12(12)*acd12(51)
      acd12(57)=acd12(32)*acd12(48)
      acd12(58)=acd12(31)*acd12(47)
      acd12(59)=acd12(30)*acd12(37)
      acd12(56)=acd12(59)+acd12(57)+acd12(58)+acd12(56)
      acd12(56)=acd12(11)*acd12(56)
      acd12(57)=acd12(27)*acd12(35)
      acd12(58)=acd12(25)*acd12(34)
      acd12(59)=acd12(21)*acd12(33)
      acd12(57)=-acd12(59)+acd12(57)+acd12(58)
      acd12(58)=acd12(15)+acd12(16)
      acd12(57)=acd12(57)*acd12(58)
      acd12(59)=acd12(32)*acd12(35)
      acd12(60)=acd12(31)*acd12(34)
      acd12(61)=acd12(30)*acd12(33)
      acd12(59)=-acd12(61)+acd12(59)+acd12(60)
      acd12(60)=acd12(6)+acd12(8)
      acd12(59)=acd12(59)*acd12(60)
      acd12(51)=acd12(60)*acd12(51)
      acd12(49)=acd12(58)*acd12(49)
      acd12(49)=acd12(49)+acd12(51)
      acd12(49)=acd12(7)*acd12(49)
      acd12(51)=acd12(1)*acd12(2)
      brack=acd12(49)+acd12(50)+2.0_ki*acd12(51)+acd12(52)+acd12(53)+acd12(54)+&
      &acd12(55)+acd12(56)+acd12(57)+acd12(59)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd12h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(63) :: acd12
      complex(ki) :: brack
      acd12(1)=d(iv1,iv2)
      acd12(2)=k1(iv3)
      acd12(3)=abb12(67)
      acd12(4)=k7(iv3)
      acd12(5)=e7(iv3)
      acd12(6)=abb12(57)
      acd12(7)=spvak2k3(iv3)
      acd12(8)=abb12(30)
      acd12(9)=spvak4k3(iv3)
      acd12(10)=abb12(32)
      acd12(11)=spvae7k1(iv3)
      acd12(12)=abb12(43)
      acd12(13)=d(iv1,iv3)
      acd12(14)=k1(iv2)
      acd12(15)=k7(iv2)
      acd12(16)=e7(iv2)
      acd12(17)=spvak2k3(iv2)
      acd12(18)=spvak4k3(iv2)
      acd12(19)=spvae7k1(iv2)
      acd12(20)=d(iv2,iv3)
      acd12(21)=k1(iv1)
      acd12(22)=k7(iv1)
      acd12(23)=e7(iv1)
      acd12(24)=spvak2k3(iv1)
      acd12(25)=spvak4k3(iv1)
      acd12(26)=spvae7k1(iv1)
      acd12(27)=k2(iv2)
      acd12(28)=abb12(55)
      acd12(29)=k2(iv3)
      acd12(30)=spval5l6(iv3)
      acd12(31)=abb12(46)
      acd12(32)=spval5l6(iv2)
      acd12(33)=k2(iv1)
      acd12(34)=spval5l6(iv1)
      acd12(35)=abb12(41)
      acd12(36)=abb12(9)
      acd12(37)=spvak2k1(iv3)
      acd12(38)=abb12(25)
      acd12(39)=spvak2k7(iv3)
      acd12(40)=abb12(16)
      acd12(41)=spvak2k1(iv2)
      acd12(42)=spvak2k7(iv2)
      acd12(43)=spvak2k1(iv1)
      acd12(44)=spvak2k7(iv1)
      acd12(45)=abb12(18)
      acd12(46)=abb12(54)
      acd12(47)=abb12(24)
      acd12(48)=abb12(19)
      acd12(49)=acd12(48)*acd12(39)
      acd12(50)=acd12(47)*acd12(37)
      acd12(51)=acd12(46)*acd12(11)
      acd12(52)=acd12(45)*acd12(5)
      acd12(53)=acd12(2)-acd12(4)
      acd12(54)=acd12(53)*acd12(31)
      acd12(49)=acd12(54)-acd12(49)-acd12(50)+acd12(51)-acd12(52)
      acd12(50)=-acd12(32)*acd12(49)
      acd12(51)=acd12(40)*acd12(42)
      acd12(52)=acd12(38)*acd12(41)
      acd12(54)=acd12(14)-acd12(15)
      acd12(55)=acd12(54)*acd12(28)
      acd12(56)=acd12(36)*acd12(19)
      acd12(57)=acd12(35)*acd12(16)
      acd12(51)=acd12(55)+acd12(52)+acd12(51)+acd12(56)+acd12(57)
      acd12(52)=acd12(29)*acd12(51)
      acd12(55)=acd12(48)*acd12(42)
      acd12(56)=acd12(47)*acd12(41)
      acd12(57)=acd12(46)*acd12(19)
      acd12(58)=acd12(45)*acd12(16)
      acd12(55)=-acd12(55)-acd12(56)+acd12(57)-acd12(58)
      acd12(56)=-acd12(31)*acd12(54)
      acd12(56)=acd12(56)-acd12(55)
      acd12(56)=acd12(30)*acd12(56)
      acd12(57)=acd12(40)*acd12(39)
      acd12(58)=acd12(38)*acd12(37)
      acd12(59)=acd12(36)*acd12(11)
      acd12(60)=acd12(35)*acd12(5)
      acd12(57)=acd12(58)+acd12(57)+acd12(59)+acd12(60)
      acd12(58)=acd12(28)*acd12(53)
      acd12(58)=acd12(58)+acd12(57)
      acd12(58)=acd12(27)*acd12(58)
      acd12(59)=2.0_ki*acd12(10)
      acd12(60)=acd12(20)*acd12(59)
      acd12(50)=acd12(58)+acd12(56)+acd12(60)+acd12(52)+acd12(50)
      acd12(50)=acd12(25)*acd12(50)
      acd12(49)=-acd12(34)*acd12(49)
      acd12(52)=acd12(33)*acd12(57)
      acd12(56)=acd12(48)*acd12(44)
      acd12(57)=acd12(47)*acd12(43)
      acd12(58)=acd12(46)*acd12(26)
      acd12(60)=acd12(45)*acd12(23)
      acd12(56)=-acd12(56)-acd12(57)+acd12(58)-acd12(60)
      acd12(57)=acd12(21)-acd12(22)
      acd12(58)=-acd12(31)*acd12(57)
      acd12(58)=acd12(58)-acd12(56)
      acd12(58)=acd12(30)*acd12(58)
      acd12(60)=acd12(40)*acd12(44)
      acd12(61)=acd12(38)*acd12(43)
      acd12(62)=acd12(36)*acd12(26)
      acd12(63)=acd12(35)*acd12(23)
      acd12(60)=acd12(61)+acd12(60)+acd12(62)+acd12(63)
      acd12(61)=acd12(29)*acd12(60)
      acd12(62)=acd12(33)*acd12(53)
      acd12(63)=acd12(29)*acd12(57)
      acd12(62)=acd12(62)+acd12(63)
      acd12(62)=acd12(28)*acd12(62)
      acd12(63)=acd12(13)*acd12(59)
      acd12(49)=acd12(62)+acd12(61)+acd12(58)+acd12(52)+acd12(63)+acd12(49)
      acd12(49)=acd12(18)*acd12(49)
      acd12(51)=acd12(33)*acd12(51)
      acd12(52)=-acd12(34)*acd12(55)
      acd12(55)=-acd12(32)*acd12(56)
      acd12(56)=acd12(28)*acd12(57)
      acd12(56)=acd12(56)+acd12(60)
      acd12(56)=acd12(27)*acd12(56)
      acd12(58)=-acd12(34)*acd12(54)
      acd12(60)=-acd12(32)*acd12(57)
      acd12(58)=acd12(58)+acd12(60)
      acd12(58)=acd12(31)*acd12(58)
      acd12(59)=acd12(1)*acd12(59)
      acd12(51)=acd12(56)+acd12(58)+acd12(55)+acd12(59)+acd12(52)+acd12(51)
      acd12(51)=acd12(9)*acd12(51)
      acd12(52)=acd12(8)*acd12(7)
      acd12(55)=acd12(11)*acd12(12)
      acd12(56)=acd12(5)*acd12(6)
      acd12(53)=acd12(3)*acd12(53)
      acd12(52)=acd12(53)+acd12(56)+acd12(52)+acd12(55)
      acd12(52)=acd12(1)*acd12(52)
      acd12(53)=acd12(8)*acd12(24)
      acd12(55)=acd12(26)*acd12(12)
      acd12(56)=acd12(23)*acd12(6)
      acd12(53)=acd12(56)+acd12(53)+acd12(55)
      acd12(53)=acd12(20)*acd12(53)
      acd12(55)=acd12(8)*acd12(17)
      acd12(56)=acd12(19)*acd12(12)
      acd12(58)=acd12(16)*acd12(6)
      acd12(55)=acd12(58)+acd12(55)+acd12(56)
      acd12(55)=acd12(13)*acd12(55)
      acd12(56)=acd12(20)*acd12(57)
      acd12(54)=acd12(13)*acd12(54)
      acd12(54)=acd12(56)+acd12(54)
      acd12(54)=acd12(3)*acd12(54)
      acd12(52)=acd12(52)+acd12(54)+acd12(53)+acd12(55)
      brack=acd12(49)+acd12(50)+acd12(51)+2.0_ki*acd12(52)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd12h2
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
!---#[ subroutine reconstruct_d12:
   subroutine     reconstruct_d12(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_12:
      coeffs%coeffs_12%c0 = derivative(czip)
      coeffs%coeffs_12%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_12%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_12%c1(1,3) = derivative(czip,1,1,1)/ 6.0_ki
      coeffs%coeffs_12%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_12%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_12%c1(2,3) = -derivative(czip,2,2,2)/ 6.0_ki
      coeffs%coeffs_12%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_12%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_12%c1(3,3) = -derivative(czip,3,3,3)/ 6.0_ki
      coeffs%coeffs_12%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_12%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_12%c1(4,3) = -derivative(czip,4,4,4)/ 6.0_ki
      coeffs%coeffs_12%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_12%c2(1,2) = derivative(czip,1,2,2)/ 2.0_ki
      coeffs%coeffs_12%c2(1,3) = -derivative(czip,1,1,2)/ 2.0_ki
      coeffs%coeffs_12%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_12%c2(2,2) = derivative(czip,1,3,3)/ 2.0_ki
      coeffs%coeffs_12%c2(2,3) = -derivative(czip,1,1,3)/ 2.0_ki
      coeffs%coeffs_12%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_12%c2(3,2) = derivative(czip,1,4,4)/ 2.0_ki
      coeffs%coeffs_12%c2(3,3) = -derivative(czip,1,1,4)/ 2.0_ki
      coeffs%coeffs_12%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_12%c2(4,2) = -derivative(czip,2,3,3)/ 2.0_ki
      coeffs%coeffs_12%c2(4,3) = -derivative(czip,2,2,3)/ 2.0_ki
      coeffs%coeffs_12%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_12%c2(5,2) = -derivative(czip,2,4,4)/ 2.0_ki
      coeffs%coeffs_12%c2(5,3) = -derivative(czip,2,2,4)/ 2.0_ki
      coeffs%coeffs_12%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_12%c2(6,2) = -derivative(czip,3,4,4)/ 2.0_ki
      coeffs%coeffs_12%c2(6,3) = -derivative(czip,3,3,4)/ 2.0_ki
      coeffs%coeffs_12%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_12%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_12%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_12%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_12:
   end subroutine reconstruct_d12
!---#] subroutine reconstruct_d12:
end module     p9_csbar_epnebbbarg_d12h2l1d
