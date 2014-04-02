module     p0_dbaru_epnebbbar_d6h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity1d6h1l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbar_config, only: ki
   use p0_dbaru_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d6
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(44) :: acd6
      complex(ki) :: brack
      acd6(1)=dotproduct(k1,qshift)
      acd6(2)=abb6(32)
      acd6(3)=dotproduct(k2,qshift)
      acd6(4)=abb6(26)
      acd6(5)=dotproduct(k3,qshift)
      acd6(6)=dotproduct(k4,qshift)
      acd6(7)=dotproduct(qshift,spvak1k2)
      acd6(8)=abb6(17)
      acd6(9)=dotproduct(qshift,spvak1k3)
      acd6(10)=abb6(19)
      acd6(11)=dotproduct(qshift,spvak4k2)
      acd6(12)=abb6(11)
      acd6(13)=dotproduct(qshift,spvak4k3)
      acd6(14)=abb6(18)
      acd6(15)=dotproduct(qshift,spval6l5)
      acd6(16)=abb6(25)
      acd6(17)=abb6(13)
      acd6(18)=abb6(48)
      acd6(19)=dotproduct(l5,qshift)
      acd6(20)=abb6(20)
      acd6(21)=dotproduct(l6,qshift)
      acd6(22)=dotproduct(qshift,qshift)
      acd6(23)=abb6(24)
      acd6(24)=abb6(21)
      acd6(25)=abb6(16)
      acd6(26)=abb6(28)
      acd6(27)=abb6(9)
      acd6(28)=abb6(14)
      acd6(29)=abb6(12)
      acd6(30)=abb6(10)
      acd6(31)=abb6(23)
      acd6(32)=dotproduct(qshift,spvak1l5)
      acd6(33)=abb6(15)
      acd6(34)=abb6(39)
      acd6(35)=acd6(5)+acd6(6)
      acd6(36)=acd6(3)-acd6(35)
      acd6(36)=acd6(4)*acd6(36)
      acd6(37)=acd6(9)*acd6(10)
      acd6(38)=acd6(13)*acd6(14)
      acd6(39)=acd6(11)*acd6(12)
      acd6(40)=acd6(7)*acd6(8)
      acd6(41)=-acd6(15)*acd6(16)
      acd6(36)=acd6(41)+acd6(40)+acd6(39)+acd6(38)-acd6(17)+acd6(37)+acd6(36)
      acd6(36)=acd6(3)*acd6(36)
      acd6(37)=acd6(16)*acd6(35)
      acd6(38)=acd6(9)*acd6(26)
      acd6(39)=acd6(13)*acd6(29)
      acd6(40)=acd6(11)*acd6(27)
      acd6(41)=acd6(7)*acd6(24)
      acd6(37)=acd6(41)+acd6(40)+acd6(39)-acd6(31)+acd6(38)+acd6(37)
      acd6(37)=acd6(15)*acd6(37)
      acd6(35)=-acd6(18)*acd6(35)
      acd6(38)=-acd6(32)*acd6(33)
      acd6(39)=acd6(22)*acd6(23)
      acd6(40)=-acd6(1)*acd6(2)
      acd6(41)=-acd6(21)-acd6(19)
      acd6(41)=acd6(20)*acd6(41)
      acd6(42)=-acd6(13)*acd6(30)
      acd6(43)=-acd6(11)*acd6(28)
      acd6(44)=-acd6(7)*acd6(25)
      brack=acd6(34)+acd6(35)+acd6(36)+acd6(37)+acd6(38)+acd6(39)+acd6(40)+acd6&
      &(41)+acd6(42)+acd6(43)+acd6(44)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd6
      complex(ki) :: brack
      acd6(1)=k1(iv1)
      acd6(2)=abb6(32)
      acd6(3)=k2(iv1)
      acd6(4)=dotproduct(k2,qshift)
      acd6(5)=abb6(26)
      acd6(6)=dotproduct(k3,qshift)
      acd6(7)=dotproduct(k4,qshift)
      acd6(8)=dotproduct(qshift,spvak1k2)
      acd6(9)=abb6(17)
      acd6(10)=dotproduct(qshift,spvak1k3)
      acd6(11)=abb6(19)
      acd6(12)=dotproduct(qshift,spvak4k2)
      acd6(13)=abb6(11)
      acd6(14)=dotproduct(qshift,spvak4k3)
      acd6(15)=abb6(18)
      acd6(16)=dotproduct(qshift,spval6l5)
      acd6(17)=abb6(25)
      acd6(18)=abb6(13)
      acd6(19)=k3(iv1)
      acd6(20)=abb6(48)
      acd6(21)=k4(iv1)
      acd6(22)=l5(iv1)
      acd6(23)=abb6(20)
      acd6(24)=l6(iv1)
      acd6(25)=qshift(iv1)
      acd6(26)=abb6(24)
      acd6(27)=spvak1k2(iv1)
      acd6(28)=abb6(21)
      acd6(29)=abb6(16)
      acd6(30)=spvak1k3(iv1)
      acd6(31)=abb6(28)
      acd6(32)=spvak4k2(iv1)
      acd6(33)=abb6(9)
      acd6(34)=abb6(14)
      acd6(35)=spvak4k3(iv1)
      acd6(36)=abb6(12)
      acd6(37)=abb6(10)
      acd6(38)=spval6l5(iv1)
      acd6(39)=abb6(23)
      acd6(40)=spvak1l5(iv1)
      acd6(41)=abb6(15)
      acd6(42)=acd6(11)*acd6(30)
      acd6(43)=acd6(35)*acd6(15)
      acd6(44)=acd6(32)*acd6(13)
      acd6(45)=acd6(27)*acd6(9)
      acd6(46)=acd6(19)+acd6(21)
      acd6(47)=-acd6(5)*acd6(46)
      acd6(48)=-acd6(38)*acd6(17)
      acd6(42)=acd6(48)+acd6(47)+acd6(45)+acd6(44)+acd6(42)+acd6(43)
      acd6(42)=acd6(4)*acd6(42)
      acd6(43)=acd6(6)+acd6(7)
      acd6(44)=2.0_ki*acd6(4)-acd6(43)
      acd6(44)=acd6(5)*acd6(44)
      acd6(45)=acd6(14)*acd6(15)
      acd6(47)=acd6(12)*acd6(13)
      acd6(48)=acd6(10)*acd6(11)
      acd6(49)=acd6(8)*acd6(9)
      acd6(50)=-acd6(16)*acd6(17)
      acd6(44)=acd6(50)+acd6(49)+acd6(48)+acd6(47)-acd6(18)+acd6(45)+acd6(44)
      acd6(44)=acd6(3)*acd6(44)
      acd6(45)=acd6(30)*acd6(31)
      acd6(47)=acd6(35)*acd6(36)
      acd6(48)=acd6(32)*acd6(33)
      acd6(49)=acd6(27)*acd6(28)
      acd6(50)=acd6(17)*acd6(46)
      acd6(45)=acd6(50)+acd6(49)+acd6(48)+acd6(45)+acd6(47)
      acd6(45)=acd6(16)*acd6(45)
      acd6(47)=acd6(14)*acd6(36)
      acd6(48)=acd6(12)*acd6(33)
      acd6(49)=acd6(10)*acd6(31)
      acd6(50)=acd6(8)*acd6(28)
      acd6(43)=acd6(17)*acd6(43)
      acd6(43)=acd6(43)+acd6(50)+acd6(49)+acd6(48)-acd6(39)+acd6(47)
      acd6(43)=acd6(38)*acd6(43)
      acd6(46)=-acd6(20)*acd6(46)
      acd6(47)=-acd6(40)*acd6(41)
      acd6(48)=acd6(25)*acd6(26)
      acd6(49)=-acd6(1)*acd6(2)
      acd6(50)=-acd6(24)-acd6(22)
      acd6(50)=acd6(23)*acd6(50)
      acd6(51)=-acd6(35)*acd6(37)
      acd6(52)=-acd6(32)*acd6(34)
      acd6(53)=-acd6(27)*acd6(29)
      brack=acd6(42)+acd6(43)+acd6(44)+acd6(45)+acd6(46)+acd6(47)+2.0_ki*acd6(4&
      &8)+acd6(49)+acd6(50)+acd6(51)+acd6(52)+acd6(53)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd6h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(37) :: acd6
      complex(ki) :: brack
      acd6(1)=d(iv1,iv2)
      acd6(2)=abb6(24)
      acd6(3)=k2(iv1)
      acd6(4)=k2(iv2)
      acd6(5)=abb6(26)
      acd6(6)=k3(iv2)
      acd6(7)=k4(iv2)
      acd6(8)=spvak1k2(iv2)
      acd6(9)=abb6(17)
      acd6(10)=spvak1k3(iv2)
      acd6(11)=abb6(19)
      acd6(12)=spvak4k2(iv2)
      acd6(13)=abb6(11)
      acd6(14)=spvak4k3(iv2)
      acd6(15)=abb6(18)
      acd6(16)=spval6l5(iv2)
      acd6(17)=abb6(25)
      acd6(18)=k3(iv1)
      acd6(19)=k4(iv1)
      acd6(20)=spvak1k2(iv1)
      acd6(21)=spvak1k3(iv1)
      acd6(22)=spvak4k2(iv1)
      acd6(23)=spvak4k3(iv1)
      acd6(24)=spval6l5(iv1)
      acd6(25)=abb6(21)
      acd6(26)=abb6(28)
      acd6(27)=abb6(9)
      acd6(28)=abb6(12)
      acd6(29)=acd6(15)*acd6(23)
      acd6(30)=acd6(13)*acd6(22)
      acd6(31)=acd6(11)*acd6(21)
      acd6(32)=acd6(9)*acd6(20)
      acd6(33)=acd6(18)+acd6(19)
      acd6(34)=-acd6(5)*acd6(33)
      acd6(35)=-acd6(24)*acd6(17)
      acd6(29)=acd6(35)+acd6(34)+acd6(32)+acd6(31)+acd6(29)+acd6(30)
      acd6(29)=acd6(4)*acd6(29)
      acd6(30)=acd6(6)+acd6(7)
      acd6(31)=2.0_ki*acd6(4)-acd6(30)
      acd6(31)=acd6(5)*acd6(31)
      acd6(32)=acd6(14)*acd6(15)
      acd6(34)=acd6(12)*acd6(13)
      acd6(35)=acd6(10)*acd6(11)
      acd6(36)=acd6(8)*acd6(9)
      acd6(37)=-acd6(16)*acd6(17)
      acd6(31)=acd6(37)+acd6(36)+acd6(35)+acd6(32)+acd6(34)+acd6(31)
      acd6(31)=acd6(3)*acd6(31)
      acd6(32)=acd6(14)*acd6(28)
      acd6(34)=acd6(12)*acd6(27)
      acd6(35)=acd6(10)*acd6(26)
      acd6(36)=acd6(8)*acd6(25)
      acd6(30)=acd6(17)*acd6(30)
      acd6(30)=acd6(30)+acd6(36)+acd6(35)+acd6(32)+acd6(34)
      acd6(30)=acd6(24)*acd6(30)
      acd6(32)=acd6(23)*acd6(28)
      acd6(34)=acd6(22)*acd6(27)
      acd6(35)=acd6(21)*acd6(26)
      acd6(36)=acd6(20)*acd6(25)
      acd6(33)=acd6(17)*acd6(33)
      acd6(32)=acd6(33)+acd6(36)+acd6(35)+acd6(32)+acd6(34)
      acd6(32)=acd6(16)*acd6(32)
      acd6(33)=acd6(1)*acd6(2)
      brack=acd6(29)+acd6(30)+acd6(31)+acd6(32)+2.0_ki*acd6(33)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd6h1
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
!---#[ subroutine reconstruct_d6:
   subroutine     reconstruct_d6(coeffs)
      use p0_dbaru_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_6:
      coeffs%coeffs_6%c0 = derivative(czip)
      coeffs%coeffs_6%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_6%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_6%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_6%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_6%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_6%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_6%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_6%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_6%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_6%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_6%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_6%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_6%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_6%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_6:
   end subroutine reconstruct_d6
!---#] subroutine reconstruct_d6:
end module     p0_dbaru_epnebbbar_d6h1l1d
