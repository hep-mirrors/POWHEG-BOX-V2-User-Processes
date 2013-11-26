module     p9_csbar_epnebbbarg_d21h3l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity3d21h3l1d.f90
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
   public :: derivative , reconstruct_d21
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd21h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd21
      complex(ki) :: brack
      acd21(1)=dotproduct(k1,qshift)
      acd21(2)=dotproduct(qshift,spvak2l5)
      acd21(3)=abb21(33)
      acd21(4)=dotproduct(qshift,spvak2l6)
      acd21(5)=abb21(30)
      acd21(6)=abb21(34)
      acd21(7)=dotproduct(k2,qshift)
      acd21(8)=abb21(47)
      acd21(9)=dotproduct(l5,qshift)
      acd21(10)=abb21(42)
      acd21(11)=dotproduct(l6,qshift)
      acd21(12)=abb21(41)
      acd21(13)=dotproduct(qshift,qshift)
      acd21(14)=abb21(18)
      acd21(15)=dotproduct(qshift,spvak2k1)
      acd21(16)=abb21(11)
      acd21(17)=dotproduct(qshift,spval5k1)
      acd21(18)=abb21(20)
      acd21(19)=dotproduct(qshift,spval6k1)
      acd21(20)=abb21(40)
      acd21(21)=abb21(13)
      acd21(22)=abb21(17)
      acd21(23)=abb21(22)
      acd21(24)=abb21(55)
      acd21(25)=abb21(29)
      acd21(26)=dotproduct(qshift,spvak1l5)
      acd21(27)=abb21(19)
      acd21(28)=dotproduct(qshift,spvak1l6)
      acd21(29)=abb21(12)
      acd21(30)=abb21(16)
      acd21(31)=abb21(14)
      acd21(32)=abb21(15)
      acd21(33)=dotproduct(qshift,spval5l6)
      acd21(34)=abb21(27)
      acd21(35)=dotproduct(qshift,spval6l5)
      acd21(36)=abb21(45)
      acd21(37)=abb21(31)
      acd21(38)=acd21(3)*acd21(1)
      acd21(39)=acd21(16)*acd21(15)
      acd21(40)=acd21(18)*acd21(17)
      acd21(41)=acd21(20)*acd21(19)
      acd21(38)=-acd21(21)+acd21(41)+acd21(40)+acd21(39)+acd21(38)
      acd21(38)=acd21(2)*acd21(38)
      acd21(39)=acd21(5)*acd21(1)
      acd21(40)=acd21(22)*acd21(15)
      acd21(41)=acd21(23)*acd21(17)
      acd21(42)=acd21(24)*acd21(19)
      acd21(39)=-acd21(25)+acd21(42)+acd21(41)+acd21(40)+acd21(39)
      acd21(39)=acd21(4)*acd21(39)
      acd21(40)=-acd21(6)*acd21(1)
      acd21(41)=-acd21(8)*acd21(7)
      acd21(42)=-acd21(10)*acd21(9)
      acd21(43)=-acd21(12)*acd21(11)
      acd21(44)=acd21(14)*acd21(13)
      acd21(45)=-acd21(27)*acd21(26)
      acd21(46)=-acd21(29)*acd21(28)
      acd21(47)=-acd21(30)*acd21(15)
      acd21(48)=-acd21(31)*acd21(17)
      acd21(49)=-acd21(32)*acd21(19)
      acd21(50)=-acd21(34)*acd21(33)
      acd21(51)=-acd21(36)*acd21(35)
      brack=acd21(37)+acd21(38)+acd21(39)+acd21(40)+acd21(41)+acd21(42)+acd21(4&
      &3)+acd21(44)+acd21(45)+acd21(46)+acd21(47)+acd21(48)+acd21(49)+acd21(50)&
      &+acd21(51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd21h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(58) :: acd21
      complex(ki) :: brack
      acd21(1)=k1(iv1)
      acd21(2)=dotproduct(qshift,spvak2l5)
      acd21(3)=abb21(33)
      acd21(4)=dotproduct(qshift,spvak2l6)
      acd21(5)=abb21(30)
      acd21(6)=abb21(34)
      acd21(7)=k2(iv1)
      acd21(8)=abb21(47)
      acd21(9)=l5(iv1)
      acd21(10)=abb21(42)
      acd21(11)=l6(iv1)
      acd21(12)=abb21(41)
      acd21(13)=qshift(iv1)
      acd21(14)=abb21(18)
      acd21(15)=spvak2l5(iv1)
      acd21(16)=dotproduct(k1,qshift)
      acd21(17)=dotproduct(qshift,spvak2k1)
      acd21(18)=abb21(11)
      acd21(19)=dotproduct(qshift,spval5k1)
      acd21(20)=abb21(20)
      acd21(21)=dotproduct(qshift,spval6k1)
      acd21(22)=abb21(40)
      acd21(23)=abb21(13)
      acd21(24)=spvak2l6(iv1)
      acd21(25)=abb21(17)
      acd21(26)=abb21(22)
      acd21(27)=abb21(55)
      acd21(28)=abb21(29)
      acd21(29)=spvak1l5(iv1)
      acd21(30)=abb21(19)
      acd21(31)=spvak1l6(iv1)
      acd21(32)=abb21(12)
      acd21(33)=spvak2k1(iv1)
      acd21(34)=abb21(16)
      acd21(35)=spval5k1(iv1)
      acd21(36)=abb21(14)
      acd21(37)=spval6k1(iv1)
      acd21(38)=abb21(15)
      acd21(39)=spval5l6(iv1)
      acd21(40)=abb21(27)
      acd21(41)=spval6l5(iv1)
      acd21(42)=abb21(45)
      acd21(43)=acd21(37)*acd21(27)
      acd21(44)=acd21(35)*acd21(26)
      acd21(45)=acd21(33)*acd21(25)
      acd21(46)=acd21(1)*acd21(5)
      acd21(43)=acd21(46)+acd21(45)+acd21(43)+acd21(44)
      acd21(43)=acd21(4)*acd21(43)
      acd21(44)=acd21(37)*acd21(22)
      acd21(45)=acd21(35)*acd21(20)
      acd21(46)=acd21(33)*acd21(18)
      acd21(47)=acd21(1)*acd21(3)
      acd21(44)=acd21(47)+acd21(46)+acd21(44)+acd21(45)
      acd21(44)=acd21(2)*acd21(44)
      acd21(45)=acd21(21)*acd21(27)
      acd21(46)=acd21(19)*acd21(26)
      acd21(47)=acd21(17)*acd21(25)
      acd21(48)=acd21(5)*acd21(16)
      acd21(45)=acd21(48)+acd21(47)+acd21(46)-acd21(28)+acd21(45)
      acd21(45)=acd21(24)*acd21(45)
      acd21(46)=acd21(21)*acd21(22)
      acd21(47)=acd21(19)*acd21(20)
      acd21(48)=acd21(17)*acd21(18)
      acd21(49)=acd21(3)*acd21(16)
      acd21(46)=acd21(49)+acd21(48)+acd21(47)-acd21(23)+acd21(46)
      acd21(46)=acd21(15)*acd21(46)
      acd21(47)=-acd21(41)*acd21(42)
      acd21(48)=-acd21(39)*acd21(40)
      acd21(49)=-acd21(31)*acd21(32)
      acd21(50)=-acd21(29)*acd21(30)
      acd21(51)=acd21(13)*acd21(14)
      acd21(52)=-acd21(11)*acd21(12)
      acd21(53)=-acd21(9)*acd21(10)
      acd21(54)=-acd21(7)*acd21(8)
      acd21(55)=-acd21(37)*acd21(38)
      acd21(56)=-acd21(35)*acd21(36)
      acd21(57)=-acd21(33)*acd21(34)
      acd21(58)=-acd21(1)*acd21(6)
      brack=acd21(43)+acd21(44)+acd21(45)+acd21(46)+acd21(47)+acd21(48)+acd21(4&
      &9)+acd21(50)+2.0_ki*acd21(51)+acd21(52)+acd21(53)+acd21(54)+acd21(55)+ac&
      &d21(56)+acd21(57)+acd21(58)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd21h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(29) :: acd21
      complex(ki) :: brack
      acd21(1)=d(iv1,iv2)
      acd21(2)=abb21(18)
      acd21(3)=k1(iv1)
      acd21(4)=spvak2l5(iv2)
      acd21(5)=abb21(33)
      acd21(6)=spvak2l6(iv2)
      acd21(7)=abb21(30)
      acd21(8)=k1(iv2)
      acd21(9)=spvak2l5(iv1)
      acd21(10)=spvak2l6(iv1)
      acd21(11)=spvak2k1(iv2)
      acd21(12)=abb21(11)
      acd21(13)=spval5k1(iv2)
      acd21(14)=abb21(20)
      acd21(15)=spval6k1(iv2)
      acd21(16)=abb21(40)
      acd21(17)=spvak2k1(iv1)
      acd21(18)=spval5k1(iv1)
      acd21(19)=spval6k1(iv1)
      acd21(20)=abb21(17)
      acd21(21)=abb21(22)
      acd21(22)=abb21(55)
      acd21(23)=acd21(15)*acd21(22)
      acd21(24)=acd21(13)*acd21(21)
      acd21(25)=acd21(11)*acd21(20)
      acd21(26)=acd21(7)*acd21(8)
      acd21(23)=acd21(26)+acd21(25)+acd21(23)+acd21(24)
      acd21(23)=acd21(10)*acd21(23)
      acd21(24)=acd21(15)*acd21(16)
      acd21(25)=acd21(13)*acd21(14)
      acd21(26)=acd21(11)*acd21(12)
      acd21(27)=acd21(5)*acd21(8)
      acd21(24)=acd21(27)+acd21(26)+acd21(24)+acd21(25)
      acd21(24)=acd21(9)*acd21(24)
      acd21(25)=acd21(19)*acd21(22)
      acd21(26)=acd21(18)*acd21(21)
      acd21(27)=acd21(17)*acd21(20)
      acd21(28)=acd21(3)*acd21(7)
      acd21(25)=acd21(28)+acd21(27)+acd21(25)+acd21(26)
      acd21(25)=acd21(6)*acd21(25)
      acd21(26)=acd21(16)*acd21(19)
      acd21(27)=acd21(14)*acd21(18)
      acd21(28)=acd21(12)*acd21(17)
      acd21(29)=acd21(3)*acd21(5)
      acd21(26)=acd21(29)+acd21(28)+acd21(26)+acd21(27)
      acd21(26)=acd21(4)*acd21(26)
      acd21(27)=acd21(1)*acd21(2)
      brack=acd21(23)+acd21(24)+acd21(25)+acd21(26)+2.0_ki*acd21(27)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd21h3
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
      qshift = -k6-k5
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
!---#[ subroutine reconstruct_d21:
   subroutine     reconstruct_d21(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group15
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group15), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_21:
      coeffs%coeffs_21%c0 = derivative(czip)
      coeffs%coeffs_21%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_21%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_21%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_21%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_21%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_21%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_21%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_21%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_21%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_21%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_21%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_21%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_21%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_21%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_21:
   end subroutine reconstruct_d21
!---#] subroutine reconstruct_d21:
end module     p9_csbar_epnebbbarg_d21h3l1d
