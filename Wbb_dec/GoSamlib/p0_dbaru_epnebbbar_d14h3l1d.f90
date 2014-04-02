module     p0_dbaru_epnebbbar_d14h3l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p0_dbaru_epnebbbar/helicity3d14h3l1d.f90
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
   public :: derivative , reconstruct_d14
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd14h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(53) :: acd14
      complex(ki) :: brack
      acd14(1)=dotproduct(k2,qshift)
      acd14(2)=abb14(26)
      acd14(3)=dotproduct(l5,qshift)
      acd14(4)=abb14(15)
      acd14(5)=dotproduct(l6,qshift)
      acd14(6)=dotproduct(qshift,qshift)
      acd14(7)=abb14(36)
      acd14(8)=dotproduct(qshift,spvak1k2)
      acd14(9)=dotproduct(qshift,spvak2l5)
      acd14(10)=abb14(19)
      acd14(11)=dotproduct(qshift,spvak2l6)
      acd14(12)=abb14(18)
      acd14(13)=dotproduct(qshift,spvak1k3)
      acd14(14)=abb14(24)
      acd14(15)=dotproduct(qshift,spvak4k2)
      acd14(16)=abb14(20)
      acd14(17)=abb14(11)
      acd14(18)=abb14(29)
      acd14(19)=abb14(41)
      acd14(20)=abb14(25)
      acd14(21)=dotproduct(qshift,spvak1l5)
      acd14(22)=abb14(13)
      acd14(23)=dotproduct(qshift,spvak1l6)
      acd14(24)=abb14(22)
      acd14(25)=dotproduct(qshift,spvak2k3)
      acd14(26)=abb14(16)
      acd14(27)=dotproduct(qshift,spvak4l5)
      acd14(28)=abb14(21)
      acd14(29)=dotproduct(qshift,spvak4l6)
      acd14(30)=abb14(27)
      acd14(31)=dotproduct(qshift,spval5k2)
      acd14(32)=abb14(17)
      acd14(33)=dotproduct(qshift,spval5k3)
      acd14(34)=abb14(28)
      acd14(35)=dotproduct(qshift,spval6k2)
      acd14(36)=abb14(14)
      acd14(37)=dotproduct(qshift,spval6k3)
      acd14(38)=abb14(31)
      acd14(39)=abb14(38)
      acd14(40)=acd14(15)*acd14(19)
      acd14(41)=acd14(13)*acd14(18)
      acd14(42)=acd14(8)*acd14(12)
      acd14(40)=acd14(42)+acd14(41)-acd14(20)+acd14(40)
      acd14(40)=acd14(11)*acd14(40)
      acd14(41)=acd14(15)*acd14(16)
      acd14(42)=acd14(13)*acd14(14)
      acd14(43)=acd14(8)*acd14(10)
      acd14(41)=acd14(43)+acd14(42)-acd14(17)+acd14(41)
      acd14(41)=acd14(9)*acd14(41)
      acd14(42)=-acd14(37)*acd14(38)
      acd14(43)=-acd14(35)*acd14(36)
      acd14(44)=-acd14(33)*acd14(34)
      acd14(45)=-acd14(31)*acd14(32)
      acd14(46)=-acd14(29)*acd14(30)
      acd14(47)=-acd14(27)*acd14(28)
      acd14(48)=-acd14(25)*acd14(26)
      acd14(49)=-acd14(23)*acd14(24)
      acd14(50)=-acd14(21)*acd14(22)
      acd14(51)=acd14(6)*acd14(7)
      acd14(52)=-acd14(1)*acd14(2)
      acd14(53)=-acd14(5)-acd14(3)
      acd14(53)=acd14(4)*acd14(53)
      brack=acd14(39)+acd14(40)+acd14(41)+acd14(42)+acd14(43)+acd14(44)+acd14(4&
      &5)+acd14(46)+acd14(47)+acd14(48)+acd14(49)+acd14(50)+acd14(51)+acd14(52)&
      &+acd14(53)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd14h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(59) :: acd14
      complex(ki) :: brack
      acd14(1)=k2(iv1)
      acd14(2)=abb14(26)
      acd14(3)=l5(iv1)
      acd14(4)=abb14(15)
      acd14(5)=l6(iv1)
      acd14(6)=qshift(iv1)
      acd14(7)=abb14(36)
      acd14(8)=spvak1k2(iv1)
      acd14(9)=dotproduct(qshift,spvak2l5)
      acd14(10)=abb14(19)
      acd14(11)=dotproduct(qshift,spvak2l6)
      acd14(12)=abb14(18)
      acd14(13)=spvak2l5(iv1)
      acd14(14)=dotproduct(qshift,spvak1k2)
      acd14(15)=dotproduct(qshift,spvak1k3)
      acd14(16)=abb14(24)
      acd14(17)=dotproduct(qshift,spvak4k2)
      acd14(18)=abb14(20)
      acd14(19)=abb14(11)
      acd14(20)=spvak2l6(iv1)
      acd14(21)=abb14(29)
      acd14(22)=abb14(41)
      acd14(23)=abb14(25)
      acd14(24)=spvak1k3(iv1)
      acd14(25)=spvak1l5(iv1)
      acd14(26)=abb14(13)
      acd14(27)=spvak1l6(iv1)
      acd14(28)=abb14(22)
      acd14(29)=spvak2k3(iv1)
      acd14(30)=abb14(16)
      acd14(31)=spvak4k2(iv1)
      acd14(32)=spvak4l5(iv1)
      acd14(33)=abb14(21)
      acd14(34)=spvak4l6(iv1)
      acd14(35)=abb14(27)
      acd14(36)=spval5k2(iv1)
      acd14(37)=abb14(17)
      acd14(38)=spval5k3(iv1)
      acd14(39)=abb14(28)
      acd14(40)=spval6k2(iv1)
      acd14(41)=abb14(14)
      acd14(42)=spval6k3(iv1)
      acd14(43)=abb14(31)
      acd14(44)=acd14(22)*acd14(31)
      acd14(45)=acd14(21)*acd14(24)
      acd14(46)=acd14(8)*acd14(12)
      acd14(44)=acd14(46)+acd14(44)+acd14(45)
      acd14(44)=acd14(11)*acd14(44)
      acd14(45)=acd14(18)*acd14(31)
      acd14(46)=acd14(16)*acd14(24)
      acd14(47)=acd14(8)*acd14(10)
      acd14(45)=acd14(47)+acd14(45)+acd14(46)
      acd14(45)=acd14(9)*acd14(45)
      acd14(46)=acd14(17)*acd14(22)
      acd14(47)=acd14(15)*acd14(21)
      acd14(48)=acd14(12)*acd14(14)
      acd14(46)=acd14(48)+acd14(47)-acd14(23)+acd14(46)
      acd14(46)=acd14(20)*acd14(46)
      acd14(47)=acd14(17)*acd14(18)
      acd14(48)=acd14(15)*acd14(16)
      acd14(49)=acd14(10)*acd14(14)
      acd14(47)=acd14(49)+acd14(48)-acd14(19)+acd14(47)
      acd14(47)=acd14(13)*acd14(47)
      acd14(48)=-acd14(42)*acd14(43)
      acd14(49)=-acd14(40)*acd14(41)
      acd14(50)=-acd14(38)*acd14(39)
      acd14(51)=-acd14(36)*acd14(37)
      acd14(52)=-acd14(34)*acd14(35)
      acd14(53)=-acd14(32)*acd14(33)
      acd14(54)=-acd14(29)*acd14(30)
      acd14(55)=-acd14(27)*acd14(28)
      acd14(56)=-acd14(25)*acd14(26)
      acd14(57)=acd14(6)*acd14(7)
      acd14(58)=-acd14(1)*acd14(2)
      acd14(59)=-acd14(5)-acd14(3)
      acd14(59)=acd14(4)*acd14(59)
      brack=acd14(44)+acd14(45)+acd14(46)+acd14(47)+acd14(48)+acd14(49)+acd14(5&
      &0)+acd14(51)+acd14(52)+acd14(53)+acd14(54)+acd14(55)+acd14(56)+2.0_ki*ac&
      &d14(57)+acd14(58)+acd14(59)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbar_model
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_color
      use p0_dbaru_epnebbbar_abbrevd14h3
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd14
      complex(ki) :: brack
      acd14(1)=d(iv1,iv2)
      acd14(2)=abb14(36)
      acd14(3)=spvak1k2(iv1)
      acd14(4)=spvak2l5(iv2)
      acd14(5)=abb14(19)
      acd14(6)=spvak2l6(iv2)
      acd14(7)=abb14(18)
      acd14(8)=spvak1k2(iv2)
      acd14(9)=spvak2l5(iv1)
      acd14(10)=spvak2l6(iv1)
      acd14(11)=spvak1k3(iv2)
      acd14(12)=abb14(24)
      acd14(13)=spvak4k2(iv2)
      acd14(14)=abb14(20)
      acd14(15)=spvak1k3(iv1)
      acd14(16)=spvak4k2(iv1)
      acd14(17)=abb14(29)
      acd14(18)=abb14(41)
      acd14(19)=acd14(13)*acd14(18)
      acd14(20)=acd14(11)*acd14(17)
      acd14(21)=acd14(7)*acd14(8)
      acd14(19)=acd14(21)+acd14(19)+acd14(20)
      acd14(19)=acd14(10)*acd14(19)
      acd14(20)=acd14(13)*acd14(14)
      acd14(21)=acd14(11)*acd14(12)
      acd14(22)=acd14(5)*acd14(8)
      acd14(20)=acd14(22)+acd14(20)+acd14(21)
      acd14(20)=acd14(9)*acd14(20)
      acd14(21)=acd14(16)*acd14(18)
      acd14(22)=acd14(15)*acd14(17)
      acd14(23)=acd14(3)*acd14(7)
      acd14(21)=acd14(23)+acd14(21)+acd14(22)
      acd14(21)=acd14(6)*acd14(21)
      acd14(22)=acd14(14)*acd14(16)
      acd14(23)=acd14(12)*acd14(15)
      acd14(24)=acd14(3)*acd14(5)
      acd14(22)=acd14(24)+acd14(22)+acd14(23)
      acd14(22)=acd14(4)*acd14(22)
      acd14(23)=acd14(1)*acd14(2)
      brack=acd14(19)+acd14(20)+acd14(21)+acd14(22)+2.0_ki*acd14(23)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p0_dbaru_epnebbbar_globalsl1, only: epspow
      use p0_dbaru_epnebbbar_kinematics
      use p0_dbaru_epnebbbar_abbrevd14h3
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
!---#[ subroutine reconstruct_d14:
   subroutine     reconstruct_d14(coeffs)
      use p0_dbaru_epnebbbar_groups, only: tensrec_info_group0
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group0), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_14:
      coeffs%coeffs_14%c0 = derivative(czip)
      coeffs%coeffs_14%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_14%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_14%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_14%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_14%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_14%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_14%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_14%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_14%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_14%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_14%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_14%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_14%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_14%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_14:
   end subroutine reconstruct_d14
!---#] subroutine reconstruct_d14:
end module     p0_dbaru_epnebbbar_d14h3l1d
