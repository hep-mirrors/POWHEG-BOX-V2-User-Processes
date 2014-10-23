module     p0_dbaru_epnebbbarg_d308h5l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbbj_tmp/ &
   ! &GoSam_POWHEG/Virtual/p0_dbaru_epnebbbarg/helicity5d308h5l1d.f90
   ! generator: buildfortran_d.py
   use p0_dbaru_epnebbbarg_config, only: ki
   use p0_dbaru_epnebbbarg_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   integer, private :: iv3
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d308
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd308h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(27) :: acd308
      complex(ki) :: brack
      acd308(1)=dotproduct(k2,qshift)
      acd308(2)=dotproduct(qshift,spval6k2)
      acd308(3)=abb308(26)
      acd308(4)=dotproduct(qshift,spvak7k2)
      acd308(5)=abb308(21)
      acd308(6)=abb308(20)
      acd308(7)=dotproduct(l6,qshift)
      acd308(8)=abb308(22)
      acd308(9)=dotproduct(k7,qshift)
      acd308(10)=dotproduct(qshift,qshift)
      acd308(11)=abb308(10)
      acd308(12)=abb308(11)
      acd308(13)=abb308(14)
      acd308(14)=abb308(8)
      acd308(15)=abb308(18)
      acd308(16)=dotproduct(qshift,spvak1k2)
      acd308(17)=dotproduct(qshift,spval6l5)
      acd308(18)=abb308(12)
      acd308(19)=dotproduct(qshift,spvak4k2)
      acd308(20)=abb308(9)
      acd308(21)=abb308(17)
      acd308(22)=abb308(19)
      acd308(23)=-acd308(18)*acd308(16)
      acd308(24)=-acd308(20)*acd308(19)
      acd308(23)=acd308(24)+acd308(23)
      acd308(23)=acd308(23)*acd308(17)
      acd308(24)=acd308(1)-acd308(9)
      acd308(24)=acd308(5)*acd308(24)
      acd308(25)=acd308(8)*acd308(7)
      acd308(26)=-acd308(12)*acd308(10)
      acd308(27)=acd308(14)*acd308(2)
      acd308(23)=acd308(24)+acd308(23)-acd308(21)+acd308(27)+acd308(26)+acd308(&
      &25)
      acd308(23)=acd308(4)*acd308(23)
      acd308(24)=-acd308(3)*acd308(2)
      acd308(24)=acd308(6)+acd308(24)
      acd308(25)=acd308(9)+acd308(1)
      acd308(24)=acd308(25)*acd308(24)
      acd308(25)=acd308(11)*acd308(2)
      acd308(25)=-acd308(13)+acd308(25)
      acd308(25)=acd308(10)*acd308(25)
      acd308(26)=-acd308(15)*acd308(2)
      brack=acd308(22)+acd308(23)+acd308(24)+acd308(25)+acd308(26)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd308h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(38) :: acd308
      complex(ki) :: brack
      acd308(1)=k2(iv1)
      acd308(2)=dotproduct(qshift,spval6k2)
      acd308(3)=abb308(26)
      acd308(4)=dotproduct(qshift,spvak7k2)
      acd308(5)=abb308(21)
      acd308(6)=abb308(20)
      acd308(7)=l6(iv1)
      acd308(8)=abb308(22)
      acd308(9)=k7(iv1)
      acd308(10)=qshift(iv1)
      acd308(11)=abb308(10)
      acd308(12)=abb308(11)
      acd308(13)=abb308(14)
      acd308(14)=spval6k2(iv1)
      acd308(15)=dotproduct(k2,qshift)
      acd308(16)=dotproduct(k7,qshift)
      acd308(17)=dotproduct(qshift,qshift)
      acd308(18)=abb308(8)
      acd308(19)=abb308(18)
      acd308(20)=spvak7k2(iv1)
      acd308(21)=dotproduct(l6,qshift)
      acd308(22)=dotproduct(qshift,spvak1k2)
      acd308(23)=dotproduct(qshift,spval6l5)
      acd308(24)=abb308(12)
      acd308(25)=dotproduct(qshift,spvak4k2)
      acd308(26)=abb308(9)
      acd308(27)=abb308(17)
      acd308(28)=spvak1k2(iv1)
      acd308(29)=spval6l5(iv1)
      acd308(30)=spvak4k2(iv1)
      acd308(31)=acd308(26)*acd308(25)
      acd308(32)=acd308(24)*acd308(22)
      acd308(31)=acd308(31)+acd308(32)
      acd308(32)=-acd308(29)*acd308(31)
      acd308(33)=-acd308(26)*acd308(30)
      acd308(34)=-acd308(24)*acd308(28)
      acd308(33)=acd308(33)+acd308(34)
      acd308(33)=acd308(23)*acd308(33)
      acd308(34)=acd308(8)*acd308(7)
      acd308(35)=2.0_ki*acd308(10)
      acd308(36)=-acd308(12)*acd308(35)
      acd308(37)=-acd308(9)+acd308(1)
      acd308(37)=acd308(5)*acd308(37)
      acd308(38)=acd308(14)*acd308(18)
      acd308(32)=acd308(38)+acd308(37)+acd308(33)+acd308(36)+acd308(34)+acd308(&
      &32)
      acd308(32)=acd308(4)*acd308(32)
      acd308(31)=-acd308(23)*acd308(31)
      acd308(33)=-acd308(12)*acd308(17)
      acd308(34)=acd308(8)*acd308(21)
      acd308(36)=-acd308(16)+acd308(15)
      acd308(36)=acd308(5)*acd308(36)
      acd308(37)=acd308(2)*acd308(18)
      acd308(31)=acd308(37)+acd308(36)+acd308(31)+acd308(34)-acd308(27)+acd308(&
      &33)
      acd308(31)=acd308(20)*acd308(31)
      acd308(33)=acd308(11)*acd308(35)
      acd308(34)=acd308(1)+acd308(9)
      acd308(36)=-acd308(3)*acd308(34)
      acd308(33)=acd308(33)+acd308(36)
      acd308(33)=acd308(2)*acd308(33)
      acd308(36)=acd308(11)*acd308(17)
      acd308(37)=-acd308(16)-acd308(15)
      acd308(37)=acd308(3)*acd308(37)
      acd308(36)=acd308(37)-acd308(19)+acd308(36)
      acd308(36)=acd308(14)*acd308(36)
      acd308(34)=acd308(6)*acd308(34)
      acd308(35)=-acd308(13)*acd308(35)
      brack=acd308(31)+acd308(32)+acd308(33)+acd308(34)+acd308(35)+acd308(36)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd308h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(41) :: acd308
      complex(ki) :: brack
      acd308(1)=d(iv1,iv2)
      acd308(2)=dotproduct(qshift,spval6k2)
      acd308(3)=abb308(10)
      acd308(4)=dotproduct(qshift,spvak7k2)
      acd308(5)=abb308(11)
      acd308(6)=abb308(14)
      acd308(7)=k2(iv1)
      acd308(8)=spval6k2(iv2)
      acd308(9)=abb308(26)
      acd308(10)=spvak7k2(iv2)
      acd308(11)=abb308(21)
      acd308(12)=k2(iv2)
      acd308(13)=spval6k2(iv1)
      acd308(14)=spvak7k2(iv1)
      acd308(15)=l6(iv1)
      acd308(16)=abb308(22)
      acd308(17)=l6(iv2)
      acd308(18)=k7(iv1)
      acd308(19)=k7(iv2)
      acd308(20)=qshift(iv1)
      acd308(21)=qshift(iv2)
      acd308(22)=abb308(8)
      acd308(23)=spvak1k2(iv2)
      acd308(24)=dotproduct(qshift,spval6l5)
      acd308(25)=abb308(12)
      acd308(26)=spval6l5(iv2)
      acd308(27)=dotproduct(qshift,spvak1k2)
      acd308(28)=dotproduct(qshift,spvak4k2)
      acd308(29)=abb308(9)
      acd308(30)=spvak4k2(iv2)
      acd308(31)=spvak1k2(iv1)
      acd308(32)=spval6l5(iv1)
      acd308(33)=spvak4k2(iv1)
      acd308(34)=-acd308(26)*acd308(28)
      acd308(35)=-acd308(24)*acd308(30)
      acd308(34)=acd308(34)+acd308(35)
      acd308(34)=acd308(29)*acd308(34)
      acd308(35)=-acd308(26)*acd308(27)
      acd308(36)=-acd308(24)*acd308(23)
      acd308(35)=acd308(35)+acd308(36)
      acd308(35)=acd308(25)*acd308(35)
      acd308(36)=acd308(16)*acd308(17)
      acd308(37)=2.0_ki*acd308(5)
      acd308(38)=-acd308(21)*acd308(37)
      acd308(39)=-acd308(19)+acd308(12)
      acd308(39)=acd308(11)*acd308(39)
      acd308(40)=acd308(8)*acd308(22)
      acd308(34)=acd308(35)+acd308(34)+acd308(40)+acd308(39)+acd308(36)+acd308(&
      &38)
      acd308(34)=acd308(14)*acd308(34)
      acd308(35)=-acd308(32)*acd308(28)
      acd308(36)=-acd308(24)*acd308(33)
      acd308(35)=acd308(35)+acd308(36)
      acd308(35)=acd308(29)*acd308(35)
      acd308(36)=-acd308(32)*acd308(27)
      acd308(38)=-acd308(24)*acd308(31)
      acd308(36)=acd308(36)+acd308(38)
      acd308(36)=acd308(25)*acd308(36)
      acd308(38)=acd308(16)*acd308(15)
      acd308(39)=-acd308(20)*acd308(37)
      acd308(40)=acd308(13)*acd308(22)
      acd308(41)=-acd308(18)+acd308(7)
      acd308(41)=acd308(11)*acd308(41)
      acd308(35)=acd308(36)+acd308(35)+acd308(41)+acd308(40)+acd308(38)+acd308(&
      &39)
      acd308(35)=acd308(10)*acd308(35)
      acd308(36)=-acd308(32)*acd308(30)
      acd308(38)=-acd308(26)*acd308(33)
      acd308(36)=acd308(36)+acd308(38)
      acd308(36)=acd308(29)*acd308(36)
      acd308(38)=-acd308(32)*acd308(23)
      acd308(39)=-acd308(26)*acd308(31)
      acd308(38)=acd308(38)+acd308(39)
      acd308(38)=acd308(25)*acd308(38)
      acd308(37)=-acd308(1)*acd308(37)
      acd308(36)=acd308(38)+acd308(36)+acd308(37)
      acd308(36)=acd308(4)*acd308(36)
      acd308(37)=acd308(3)*acd308(2)
      acd308(37)=-acd308(6)+acd308(37)
      acd308(37)=acd308(1)*acd308(37)
      acd308(38)=acd308(13)*acd308(3)*acd308(21)
      acd308(37)=acd308(37)+acd308(38)
      acd308(38)=2.0_ki*acd308(20)
      acd308(38)=acd308(3)*acd308(38)
      acd308(39)=-acd308(18)-acd308(7)
      acd308(39)=acd308(9)*acd308(39)
      acd308(38)=acd308(38)+acd308(39)
      acd308(38)=acd308(8)*acd308(38)
      acd308(39)=-acd308(19)-acd308(12)
      acd308(39)=acd308(9)*acd308(13)*acd308(39)
      brack=acd308(34)+acd308(35)+acd308(36)+2.0_ki*acd308(37)+acd308(38)+acd30&
      &8(39)
   end function brack_3
!---#] function brack_3:
!---#[ function brack_4:
   pure function brack_4(Q, mu2) result(brack)
      use p0_dbaru_epnebbbarg_model
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_color
      use p0_dbaru_epnebbbarg_abbrevd308h5
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(28) :: acd308
      complex(ki) :: brack
      acd308(1)=d(iv1,iv2)
      acd308(2)=spval6k2(iv3)
      acd308(3)=abb308(10)
      acd308(4)=spvak7k2(iv3)
      acd308(5)=abb308(11)
      acd308(6)=d(iv1,iv3)
      acd308(7)=spval6k2(iv2)
      acd308(8)=spvak7k2(iv2)
      acd308(9)=d(iv2,iv3)
      acd308(10)=spval6k2(iv1)
      acd308(11)=spvak7k2(iv1)
      acd308(12)=spvak1k2(iv2)
      acd308(13)=spval6l5(iv3)
      acd308(14)=abb308(12)
      acd308(15)=spvak1k2(iv3)
      acd308(16)=spval6l5(iv2)
      acd308(17)=spvak4k2(iv3)
      acd308(18)=abb308(9)
      acd308(19)=spvak4k2(iv2)
      acd308(20)=spvak1k2(iv1)
      acd308(21)=spval6l5(iv1)
      acd308(22)=spvak4k2(iv1)
      acd308(23)=acd308(13)*acd308(11)
      acd308(24)=acd308(21)*acd308(4)
      acd308(23)=acd308(23)+acd308(24)
      acd308(24)=-acd308(12)*acd308(23)
      acd308(25)=acd308(16)*acd308(11)
      acd308(26)=acd308(21)*acd308(8)
      acd308(25)=acd308(25)+acd308(26)
      acd308(26)=-acd308(15)*acd308(25)
      acd308(27)=acd308(13)*acd308(8)
      acd308(28)=acd308(16)*acd308(4)
      acd308(27)=acd308(27)+acd308(28)
      acd308(28)=-acd308(20)*acd308(27)
      acd308(24)=acd308(28)+acd308(26)+acd308(24)
      acd308(24)=acd308(14)*acd308(24)
      acd308(25)=-acd308(17)*acd308(25)
      acd308(23)=-acd308(19)*acd308(23)
      acd308(26)=-acd308(22)*acd308(27)
      acd308(23)=acd308(26)+acd308(23)+acd308(25)
      acd308(23)=acd308(18)*acd308(23)
      acd308(25)=acd308(2)*acd308(1)
      acd308(26)=acd308(7)*acd308(6)
      acd308(27)=acd308(10)*acd308(9)
      acd308(25)=acd308(27)+acd308(26)+acd308(25)
      acd308(26)=2.0_ki*acd308(3)
      acd308(25)=acd308(26)*acd308(25)
      acd308(26)=-acd308(1)*acd308(4)
      acd308(27)=-acd308(6)*acd308(8)
      acd308(28)=-acd308(9)*acd308(11)
      acd308(26)=acd308(28)+acd308(26)+acd308(27)
      acd308(26)=acd308(5)*acd308(26)
      brack=acd308(23)+acd308(24)+acd308(25)+2.0_ki*acd308(26)
   end function brack_4
!---#] function brack_4:
!---#[ function derivative:
   function derivative(mu2,i1,i2,i3) result(numerator)
      use p0_dbaru_epnebbbarg_globalsl1, only: epspow
      use p0_dbaru_epnebbbarg_kinematics
      use p0_dbaru_epnebbbarg_abbrevd308h5
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
      qshift = -k7
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
!---#[ subroutine reconstruct_d308:
   subroutine     reconstruct_d308(coeffs)
      use p0_dbaru_epnebbbarg_groups, only: tensrec_info_group20
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      complex(ki), parameter :: ctwo = (2.0_ki, 0.0_ki)
      type(tensrec_info_group20), intent(out) :: coeffs
      ! rank 3 case :
      !---[# reconstruct coeffs%coeffs_308:
      coeffs%coeffs_308%c0 = derivative(czip)
      coeffs%coeffs_308%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_308%c1(1,2) = derivative(czip,1,1)/2.0_ki
      coeffs%coeffs_308%c1(1,3) = derivative(czip,1,1,1)/6.0_ki
      coeffs%coeffs_308%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_308%c1(2,2) = derivative(czip,2,2)/2.0_ki
      coeffs%coeffs_308%c1(2,3) = -derivative(czip,2,2,2)/6.0_ki
      coeffs%coeffs_308%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_308%c1(3,2) = derivative(czip,3,3)/2.0_ki
      coeffs%coeffs_308%c1(3,3) = -derivative(czip,3,3,3)/6.0_ki
      coeffs%coeffs_308%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_308%c1(4,2) = derivative(czip,4,4)/2.0_ki
      coeffs%coeffs_308%c1(4,3) = -derivative(czip,4,4,4)/6.0_ki
      coeffs%coeffs_308%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_308%c2(1,2) = derivative(czip,1,2,2)/2.0_ki
      coeffs%coeffs_308%c2(1,3) = -derivative(czip,1,1,2)/2.0_ki
      coeffs%coeffs_308%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_308%c2(2,2) = derivative(czip,1,3,3)/2.0_ki
      coeffs%coeffs_308%c2(2,3) = -derivative(czip,1,1,3)/2.0_ki
      coeffs%coeffs_308%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_308%c2(3,2) = derivative(czip,1,4,4)/2.0_ki
      coeffs%coeffs_308%c2(3,3) = -derivative(czip,1,1,4)/2.0_ki
      coeffs%coeffs_308%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_308%c2(4,2) = -derivative(czip,2,3,3)/2.0_ki
      coeffs%coeffs_308%c2(4,3) = -derivative(czip,2,2,3)/2.0_ki
      coeffs%coeffs_308%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_308%c2(5,2) = -derivative(czip,2,4,4)/2.0_ki
      coeffs%coeffs_308%c2(5,3) = -derivative(czip,2,2,4)/2.0_ki
      coeffs%coeffs_308%c2(6,1) = derivative(czip,3,4)
      coeffs%coeffs_308%c2(6,2) = -derivative(czip,3,4,4)/2.0_ki
      coeffs%coeffs_308%c2(6,3) = -derivative(czip,3,3,4)/2.0_ki
      coeffs%coeffs_308%c3(1,1) = derivative(czip,1,2,3)
      coeffs%coeffs_308%c3(2,1) = derivative(czip,1,2,4)
      coeffs%coeffs_308%c3(3,1) = derivative(czip,1,3,4)
      coeffs%coeffs_308%c3(4,1) = -derivative(czip,2,3,4)
      !---#] reconstruct coeffs%coeffs_308:
   end subroutine reconstruct_d308
!---#] subroutine reconstruct_d308:
end module     p0_dbaru_epnebbbarg_d308h5l1d
