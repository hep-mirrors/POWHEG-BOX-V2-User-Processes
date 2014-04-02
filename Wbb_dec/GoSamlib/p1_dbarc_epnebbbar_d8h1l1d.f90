module     p1_dbarc_epnebbbar_d8h1l1d
   ! file: /home/pcl305a/luisonig/Documents/GoSamPowheg/POWHEG-BOX-V2/Wbb/GoSam &
   ! &_POWHEG/Virtual/p1_dbarc_epnebbbar/helicity1d8h1l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbar_config, only: ki
   use p1_dbarc_epnebbbar_util, only: cond, d => metric_tensor
   implicit none
   private
   complex(ki), parameter :: i_ = (0.0_ki, 1.0_ki)
   integer, private :: iv0
   integer, private :: iv1
   integer, private :: iv2
   real(ki), dimension(4), private :: qshift
   public :: derivative , reconstruct_d8
contains
!---#[ function brack_1:
   pure function brack_1(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd8h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(25) :: acd8
      complex(ki) :: brack
      acd8(1)=dotproduct(k2,qshift)
      acd8(2)=dotproduct(qshift,spvak4k3)
      acd8(3)=abb8(15)
      acd8(4)=dotproduct(qshift,qshift)
      acd8(5)=abb8(8)
      acd8(6)=dotproduct(qshift,spvak1k2)
      acd8(7)=abb8(9)
      acd8(8)=dotproduct(qshift,spval5k2)
      acd8(9)=abb8(11)
      acd8(10)=dotproduct(qshift,spval6k2)
      acd8(11)=abb8(25)
      acd8(12)=dotproduct(qshift,spvak1k3)
      acd8(13)=abb8(14)
      acd8(14)=dotproduct(qshift,spvak2k3)
      acd8(15)=abb8(13)
      acd8(16)=dotproduct(qshift,spval5k3)
      acd8(17)=abb8(24)
      acd8(18)=dotproduct(qshift,spval6k3)
      acd8(19)=abb8(21)
      acd8(20)=acd8(10)*acd8(11)
      acd8(21)=acd8(8)*acd8(9)
      acd8(22)=acd8(6)*acd8(7)
      acd8(23)=acd8(1)*acd8(3)
      acd8(20)=acd8(23)+acd8(22)+acd8(20)+acd8(21)
      acd8(20)=acd8(2)*acd8(20)
      acd8(21)=-acd8(18)*acd8(19)
      acd8(22)=-acd8(16)*acd8(17)
      acd8(23)=-acd8(14)*acd8(15)
      acd8(24)=-acd8(12)*acd8(13)
      acd8(25)=acd8(4)*acd8(5)
      brack=acd8(20)+acd8(21)+acd8(22)+acd8(23)+acd8(24)+acd8(25)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd8h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(31) :: acd8
      complex(ki) :: brack
      acd8(1)=k2(iv1)
      acd8(2)=dotproduct(qshift,spvak4k3)
      acd8(3)=abb8(15)
      acd8(4)=qshift(iv1)
      acd8(5)=abb8(8)
      acd8(6)=spvak4k3(iv1)
      acd8(7)=dotproduct(k2,qshift)
      acd8(8)=dotproduct(qshift,spvak1k2)
      acd8(9)=abb8(9)
      acd8(10)=dotproduct(qshift,spval5k2)
      acd8(11)=abb8(11)
      acd8(12)=dotproduct(qshift,spval6k2)
      acd8(13)=abb8(25)
      acd8(14)=spvak1k2(iv1)
      acd8(15)=spvak1k3(iv1)
      acd8(16)=abb8(14)
      acd8(17)=spvak2k3(iv1)
      acd8(18)=abb8(13)
      acd8(19)=spval5k2(iv1)
      acd8(20)=spval6k2(iv1)
      acd8(21)=spval5k3(iv1)
      acd8(22)=abb8(24)
      acd8(23)=spval6k3(iv1)
      acd8(24)=abb8(21)
      acd8(25)=acd8(13)*acd8(12)
      acd8(26)=acd8(11)*acd8(10)
      acd8(27)=acd8(9)*acd8(8)
      acd8(28)=acd8(3)*acd8(7)
      acd8(25)=acd8(28)+acd8(27)+acd8(25)+acd8(26)
      acd8(25)=acd8(6)*acd8(25)
      acd8(26)=acd8(13)*acd8(20)
      acd8(27)=acd8(11)*acd8(19)
      acd8(28)=acd8(9)*acd8(14)
      acd8(29)=acd8(3)*acd8(1)
      acd8(26)=acd8(29)+acd8(28)+acd8(26)+acd8(27)
      acd8(26)=acd8(2)*acd8(26)
      acd8(27)=-acd8(23)*acd8(24)
      acd8(28)=-acd8(21)*acd8(22)
      acd8(29)=-acd8(17)*acd8(18)
      acd8(30)=-acd8(15)*acd8(16)
      acd8(31)=acd8(4)*acd8(5)
      brack=acd8(25)+acd8(26)+acd8(27)+acd8(28)+acd8(29)+acd8(30)+2.0_ki*acd8(3&
      &1)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbar_model
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_color
      use p1_dbarc_epnebbbar_abbrevd8h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(21) :: acd8
      complex(ki) :: brack
      acd8(1)=d(iv1,iv2)
      acd8(2)=abb8(8)
      acd8(3)=k2(iv1)
      acd8(4)=spvak4k3(iv2)
      acd8(5)=abb8(15)
      acd8(6)=k2(iv2)
      acd8(7)=spvak4k3(iv1)
      acd8(8)=spvak1k2(iv2)
      acd8(9)=abb8(9)
      acd8(10)=spval5k2(iv2)
      acd8(11)=abb8(11)
      acd8(12)=spval6k2(iv2)
      acd8(13)=abb8(25)
      acd8(14)=spvak1k2(iv1)
      acd8(15)=spval5k2(iv1)
      acd8(16)=spval6k2(iv1)
      acd8(17)=acd8(13)*acd8(12)
      acd8(18)=acd8(11)*acd8(10)
      acd8(19)=acd8(9)*acd8(8)
      acd8(20)=acd8(5)*acd8(6)
      acd8(17)=acd8(20)+acd8(19)+acd8(17)+acd8(18)
      acd8(17)=acd8(7)*acd8(17)
      acd8(18)=acd8(13)*acd8(16)
      acd8(19)=acd8(11)*acd8(15)
      acd8(20)=acd8(9)*acd8(14)
      acd8(21)=acd8(5)*acd8(3)
      acd8(18)=acd8(21)+acd8(20)+acd8(18)+acd8(19)
      acd8(18)=acd8(4)*acd8(18)
      acd8(19)=acd8(1)*acd8(2)
      brack=acd8(17)+acd8(18)+2.0_ki*acd8(19)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbar_globalsl1, only: epspow
      use p1_dbarc_epnebbbar_kinematics
      use p1_dbarc_epnebbbar_abbrevd8h1
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
!---#[ subroutine reconstruct_d8:
   subroutine     reconstruct_d8(coeffs)
      use p1_dbarc_epnebbbar_groups, only: tensrec_info_group4
      implicit none
      complex(ki), parameter :: czip = (0.0_ki, 0.0_ki)
      complex(ki), parameter :: cone = (1.0_ki, 0.0_ki)
      type(tensrec_info_group4), intent(out) :: coeffs
      ! rank 2 case :
      !---[# reconstruct coeffs%coeffs_8:
      coeffs%coeffs_8%c0 = derivative(czip)
      coeffs%coeffs_8%c1(1,1) = derivative(czip,1)
      coeffs%coeffs_8%c1(1,2) = derivative(czip,1,1)/ 2.0_ki
      coeffs%coeffs_8%c1(2,1) = -derivative(czip,2)
      coeffs%coeffs_8%c1(2,2) = derivative(czip,2,2)/ 2.0_ki
      coeffs%coeffs_8%c1(3,1) = -derivative(czip,3)
      coeffs%coeffs_8%c1(3,2) = derivative(czip,3,3)/ 2.0_ki
      coeffs%coeffs_8%c1(4,1) = -derivative(czip,4)
      coeffs%coeffs_8%c1(4,2) = derivative(czip,4,4)/ 2.0_ki
      coeffs%coeffs_8%c2(1,1) = -derivative(czip,1,2)
      coeffs%coeffs_8%c2(2,1) = -derivative(czip,1,3)
      coeffs%coeffs_8%c2(3,1) = -derivative(czip,1,4)
      coeffs%coeffs_8%c2(4,1) = derivative(czip,2,3)
      coeffs%coeffs_8%c2(5,1) = derivative(czip,2,4)
      coeffs%coeffs_8%c2(6,1) = derivative(czip,3,4)
      !---#] reconstruct coeffs%coeffs_8:
   end subroutine reconstruct_d8
!---#] subroutine reconstruct_d8:
end module     p1_dbarc_epnebbbar_d8h1l1d
