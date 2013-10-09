module     p9_csbar_epnebbbarg_d333h2l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p9_csbar_epneb &
   ! &bbarg/helicity2d333h2l1d.f90
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
   public :: derivative , reconstruct_d333
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd333h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(51) :: acd333
      complex(ki) :: brack
      acd333(1)=dotproduct(k2,qshift)
      acd333(2)=dotproduct(e7,qshift)
      acd333(3)=abb333(38)
      acd333(4)=dotproduct(l6,qshift)
      acd333(5)=abb333(32)
      acd333(6)=dotproduct(k7,qshift)
      acd333(7)=abb333(20)
      acd333(8)=dotproduct(qshift,spvak2k1)
      acd333(9)=abb333(22)
      acd333(10)=dotproduct(qshift,spvak2k3)
      acd333(11)=abb333(15)
      acd333(12)=dotproduct(qshift,spvak2l6)
      acd333(13)=abb333(14)
      acd333(14)=dotproduct(qshift,spvak2k7)
      acd333(15)=abb333(18)
      acd333(16)=dotproduct(qshift,spvak4l6)
      acd333(17)=abb333(30)
      acd333(18)=dotproduct(qshift,spvak7l6)
      acd333(19)=abb333(16)
      acd333(20)=abb333(17)
      acd333(21)=dotproduct(qshift,qshift)
      acd333(22)=abb333(39)
      acd333(23)=abb333(13)
      acd333(24)=abb333(12)
      acd333(25)=dotproduct(qshift,spvak4k7)
      acd333(26)=abb333(27)
      acd333(27)=dotproduct(qshift,spval6k7)
      acd333(28)=abb333(26)
      acd333(29)=dotproduct(qshift,spvak7k1)
      acd333(30)=abb333(21)
      acd333(31)=dotproduct(qshift,spvak7k2)
      acd333(32)=abb333(19)
      acd333(33)=dotproduct(qshift,spvak7k3)
      acd333(34)=abb333(11)
      acd333(35)=dotproduct(qshift,spvak2e7)
      acd333(36)=abb333(29)
      acd333(37)=dotproduct(qshift,spvae7l6)
      acd333(38)=abb333(31)
      acd333(39)=abb333(25)
      acd333(40)=acd333(3)*acd333(1)
      acd333(41)=acd333(5)*acd333(4)
      acd333(42)=acd333(9)*acd333(8)
      acd333(43)=acd333(11)*acd333(10)
      acd333(44)=acd333(13)*acd333(12)
      acd333(45)=acd333(15)*acd333(14)
      acd333(46)=acd333(17)*acd333(16)
      acd333(47)=acd333(19)*acd333(18)
      acd333(40)=-acd333(20)+acd333(47)+acd333(46)+acd333(45)+acd333(44)+acd333&
      &(43)+acd333(42)+acd333(40)+acd333(41)
      acd333(40)=acd333(2)*acd333(40)
      acd333(41)=-acd333(7)*acd333(6)
      acd333(42)=acd333(22)*acd333(21)
      acd333(43)=-acd333(23)*acd333(14)
      acd333(44)=-acd333(24)*acd333(18)
      acd333(45)=-acd333(26)*acd333(25)
      acd333(46)=-acd333(28)*acd333(27)
      acd333(47)=-acd333(30)*acd333(29)
      acd333(48)=-acd333(32)*acd333(31)
      acd333(49)=-acd333(34)*acd333(33)
      acd333(50)=-acd333(36)*acd333(35)
      acd333(51)=-acd333(38)*acd333(37)
      brack=acd333(39)+acd333(40)+acd333(41)+acd333(42)+acd333(43)+acd333(44)+a&
      &cd333(45)+acd333(46)+acd333(47)+acd333(48)+acd333(49)+acd333(50)+acd333(&
      &51)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd333h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(60) :: acd333
      complex(ki) :: brack
      acd333(1)=k2(iv1)
      acd333(2)=dotproduct(e7,qshift)
      acd333(3)=abb333(38)
      acd333(4)=l6(iv1)
      acd333(5)=abb333(32)
      acd333(6)=k7(iv1)
      acd333(7)=abb333(20)
      acd333(8)=e7(iv1)
      acd333(9)=dotproduct(k2,qshift)
      acd333(10)=dotproduct(l6,qshift)
      acd333(11)=dotproduct(qshift,spvak2k1)
      acd333(12)=abb333(22)
      acd333(13)=dotproduct(qshift,spvak2k3)
      acd333(14)=abb333(15)
      acd333(15)=dotproduct(qshift,spvak2l6)
      acd333(16)=abb333(14)
      acd333(17)=dotproduct(qshift,spvak2k7)
      acd333(18)=abb333(18)
      acd333(19)=dotproduct(qshift,spvak4l6)
      acd333(20)=abb333(30)
      acd333(21)=dotproduct(qshift,spvak7l6)
      acd333(22)=abb333(16)
      acd333(23)=abb333(17)
      acd333(24)=qshift(iv1)
      acd333(25)=abb333(39)
      acd333(26)=spvak2k1(iv1)
      acd333(27)=spvak2k3(iv1)
      acd333(28)=spvak2l6(iv1)
      acd333(29)=spvak2k7(iv1)
      acd333(30)=abb333(13)
      acd333(31)=spvak4l6(iv1)
      acd333(32)=spvak7l6(iv1)
      acd333(33)=abb333(12)
      acd333(34)=spvak4k7(iv1)
      acd333(35)=abb333(27)
      acd333(36)=spval6k7(iv1)
      acd333(37)=abb333(26)
      acd333(38)=spvak7k1(iv1)
      acd333(39)=abb333(21)
      acd333(40)=spvak7k2(iv1)
      acd333(41)=abb333(19)
      acd333(42)=spvak7k3(iv1)
      acd333(43)=abb333(11)
      acd333(44)=spvak2e7(iv1)
      acd333(45)=abb333(29)
      acd333(46)=spvae7l6(iv1)
      acd333(47)=abb333(31)
      acd333(48)=-acd333(29)*acd333(18)
      acd333(49)=-acd333(32)*acd333(22)
      acd333(50)=-acd333(1)*acd333(3)
      acd333(51)=-acd333(4)*acd333(5)
      acd333(52)=-acd333(26)*acd333(12)
      acd333(53)=-acd333(27)*acd333(14)
      acd333(54)=-acd333(28)*acd333(16)
      acd333(55)=-acd333(31)*acd333(20)
      acd333(48)=acd333(55)+acd333(54)+acd333(53)+acd333(52)+acd333(51)+acd333(&
      &50)+acd333(48)+acd333(49)
      acd333(48)=acd333(2)*acd333(48)
      acd333(49)=-acd333(9)*acd333(3)
      acd333(50)=-acd333(10)*acd333(5)
      acd333(51)=-acd333(11)*acd333(12)
      acd333(52)=-acd333(13)*acd333(14)
      acd333(53)=-acd333(15)*acd333(16)
      acd333(54)=-acd333(17)*acd333(18)
      acd333(55)=-acd333(19)*acd333(20)
      acd333(56)=-acd333(21)*acd333(22)
      acd333(49)=acd333(23)+acd333(56)+acd333(55)+acd333(54)+acd333(53)+acd333(&
      &52)+acd333(51)+acd333(50)+acd333(49)
      acd333(49)=acd333(8)*acd333(49)
      acd333(50)=acd333(7)*acd333(6)
      acd333(51)=acd333(25)*acd333(24)
      acd333(52)=acd333(30)*acd333(29)
      acd333(53)=acd333(33)*acd333(32)
      acd333(54)=acd333(35)*acd333(34)
      acd333(55)=acd333(37)*acd333(36)
      acd333(56)=acd333(39)*acd333(38)
      acd333(57)=acd333(41)*acd333(40)
      acd333(58)=acd333(43)*acd333(42)
      acd333(59)=acd333(45)*acd333(44)
      acd333(60)=acd333(47)*acd333(46)
      brack=acd333(48)+acd333(49)+acd333(50)-2.0_ki*acd333(51)+acd333(52)+acd33&
      &3(53)+acd333(54)+acd333(55)+acd333(56)+acd333(57)+acd333(58)+acd333(59)+&
      &acd333(60)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p9_csbar_epnebbbarg_model
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_color
      use p9_csbar_epnebbbarg_abbrevd333h2
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd333
      complex(ki) :: brack
      acd333(1)=d(iv1,iv2)
      acd333(2)=abb333(39)
      acd333(3)=k2(iv1)
      acd333(4)=e7(iv2)
      acd333(5)=abb333(38)
      acd333(6)=k2(iv2)
      acd333(7)=e7(iv1)
      acd333(8)=l6(iv1)
      acd333(9)=abb333(32)
      acd333(10)=l6(iv2)
      acd333(11)=spvak2k1(iv2)
      acd333(12)=abb333(22)
      acd333(13)=spvak2k3(iv2)
      acd333(14)=abb333(15)
      acd333(15)=spvak2l6(iv2)
      acd333(16)=abb333(14)
      acd333(17)=spvak2k7(iv2)
      acd333(18)=abb333(18)
      acd333(19)=spvak4l6(iv2)
      acd333(20)=abb333(30)
      acd333(21)=spvak7l6(iv2)
      acd333(22)=abb333(16)
      acd333(23)=spvak2k1(iv1)
      acd333(24)=spvak2k3(iv1)
      acd333(25)=spvak2l6(iv1)
      acd333(26)=spvak2k7(iv1)
      acd333(27)=spvak4l6(iv1)
      acd333(28)=spvak7l6(iv1)
      acd333(29)=acd333(3)*acd333(5)
      acd333(30)=acd333(8)*acd333(9)
      acd333(31)=acd333(23)*acd333(12)
      acd333(32)=acd333(24)*acd333(14)
      acd333(33)=acd333(25)*acd333(16)
      acd333(34)=acd333(26)*acd333(18)
      acd333(35)=acd333(27)*acd333(20)
      acd333(36)=acd333(28)*acd333(22)
      acd333(29)=acd333(36)+acd333(35)+acd333(34)+acd333(33)+acd333(32)+acd333(&
      &31)+acd333(30)+acd333(29)
      acd333(29)=acd333(4)*acd333(29)
      acd333(30)=acd333(6)*acd333(5)
      acd333(31)=acd333(10)*acd333(9)
      acd333(32)=acd333(11)*acd333(12)
      acd333(33)=acd333(13)*acd333(14)
      acd333(34)=acd333(15)*acd333(16)
      acd333(35)=acd333(17)*acd333(18)
      acd333(36)=acd333(19)*acd333(20)
      acd333(37)=acd333(21)*acd333(22)
      acd333(30)=acd333(37)+acd333(36)+acd333(35)+acd333(34)+acd333(33)+acd333(&
      &32)+acd333(31)+acd333(30)
      acd333(30)=acd333(7)*acd333(30)
      acd333(31)=acd333(2)*acd333(1)
      brack=acd333(29)+acd333(30)+2.0_ki*acd333(31)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p9_csbar_epnebbbarg_globalsl1, only: epspow
      use p9_csbar_epnebbbarg_kinematics
      use p9_csbar_epnebbbarg_abbrevd333h2
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
      qshift = k6
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
!---#[ subroutine reconstruct_d333:
   subroutine     reconstruct_d333(coeffs)
      use p9_csbar_epnebbbarg_groups, only: tensrec_info_group18
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group18), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_333:
      coeffs%coeffs_333%c0 = derivative(czip)
      coeffs%coeffs_333%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_333%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_333%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_333%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_333%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_333%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_333%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_333%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_333%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_333%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_333%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_333%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_333%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_333%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_333:
   end subroutine reconstruct_d333
!---#] subroutine reconstruct_d333:
end module     p9_csbar_epnebbbarg_d333h2l1d
