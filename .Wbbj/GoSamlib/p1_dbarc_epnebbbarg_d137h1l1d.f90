module     p1_dbarc_epnebbbarg_d137h1l1d
   ! file: /home/tramonta/codes/POWHEG/WBBJ/GoSam_POWHEG/Virtual/p1_dbarc_epneb &
   ! &bbarg/helicity1d137h1l1d.f90
   ! generator: buildfortran_d.py
   use p1_dbarc_epnebbbarg_config, only: ki
   use p1_dbarc_epnebbbarg_util, only: cond, d => metric_tensor
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
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd137h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(24) :: acd137
      complex(ki) :: brack
      acd137(1)=dotproduct(k2,qshift)
      acd137(2)=dotproduct(e7,qshift)
      acd137(3)=abb137(59)
      acd137(4)=abb137(12)
      acd137(5)=dotproduct(k7,qshift)
      acd137(6)=abb137(38)
      acd137(7)=dotproduct(qshift,spvak7k2)
      acd137(8)=abb137(11)
      acd137(9)=abb137(17)
      acd137(10)=dotproduct(qshift,qshift)
      acd137(11)=abb137(14)
      acd137(12)=abb137(13)
      acd137(13)=dotproduct(qshift,spvak2k7)
      acd137(14)=abb137(15)
      acd137(15)=dotproduct(qshift,spvae7k2)
      acd137(16)=abb137(10)
      acd137(17)=abb137(33)
      acd137(18)=acd137(3)*acd137(1)
      acd137(19)=acd137(8)*acd137(7)
      acd137(18)=-acd137(9)+acd137(19)+acd137(18)
      acd137(18)=acd137(2)*acd137(18)
      acd137(19)=-acd137(4)*acd137(1)
      acd137(20)=-acd137(6)*acd137(5)
      acd137(21)=acd137(11)*acd137(10)
      acd137(22)=-acd137(12)*acd137(7)
      acd137(23)=-acd137(14)*acd137(13)
      acd137(24)=-acd137(16)*acd137(15)
      brack=acd137(17)+acd137(18)+acd137(19)+acd137(20)+acd137(21)+acd137(22)+a&
      &cd137(23)+acd137(24)
   end function brack_1
!---#] function brack_1:
!---#[ function brack_2:
   pure function brack_2(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd137h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(26) :: acd137
      complex(ki) :: brack
      acd137(1)=k2(iv1)
      acd137(2)=dotproduct(e7,qshift)
      acd137(3)=abb137(59)
      acd137(4)=abb137(12)
      acd137(5)=k7(iv1)
      acd137(6)=abb137(38)
      acd137(7)=e7(iv1)
      acd137(8)=dotproduct(k2,qshift)
      acd137(9)=dotproduct(qshift,spvak7k2)
      acd137(10)=abb137(11)
      acd137(11)=abb137(17)
      acd137(12)=qshift(iv1)
      acd137(13)=abb137(14)
      acd137(14)=spvak7k2(iv1)
      acd137(15)=abb137(13)
      acd137(16)=spvak2k7(iv1)
      acd137(17)=abb137(15)
      acd137(18)=spvae7k2(iv1)
      acd137(19)=abb137(10)
      acd137(20)=acd137(8)*acd137(3)
      acd137(21)=acd137(9)*acd137(10)
      acd137(20)=-acd137(11)+acd137(21)+acd137(20)
      acd137(20)=acd137(7)*acd137(20)
      acd137(21)=acd137(3)*acd137(2)
      acd137(21)=-acd137(4)+acd137(21)
      acd137(21)=acd137(1)*acd137(21)
      acd137(22)=acd137(10)*acd137(2)
      acd137(22)=-acd137(15)+acd137(22)
      acd137(22)=acd137(14)*acd137(22)
      acd137(23)=-acd137(6)*acd137(5)
      acd137(24)=acd137(13)*acd137(12)
      acd137(25)=-acd137(17)*acd137(16)
      acd137(26)=-acd137(19)*acd137(18)
      brack=acd137(20)+acd137(21)+acd137(22)+acd137(23)+2.0_ki*acd137(24)+acd13&
      &7(25)+acd137(26)
   end function brack_2
!---#] function brack_2:
!---#[ function brack_3:
   pure function brack_3(Q, mu2) result(brack)
      use p1_dbarc_epnebbbarg_model
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_color
      use p1_dbarc_epnebbbarg_abbrevd137h1
      implicit none
      complex(ki), dimension(4), intent(in) :: Q
      complex(ki), intent(in) :: mu2
      complex(ki), dimension(13) :: acd137
      complex(ki) :: brack
      acd137(1)=d(iv1,iv2)
      acd137(2)=abb137(14)
      acd137(3)=k2(iv1)
      acd137(4)=e7(iv2)
      acd137(5)=abb137(59)
      acd137(6)=k2(iv2)
      acd137(7)=e7(iv1)
      acd137(8)=spvak7k2(iv2)
      acd137(9)=abb137(11)
      acd137(10)=spvak7k2(iv1)
      acd137(11)=acd137(3)*acd137(4)
      acd137(12)=acd137(6)*acd137(7)
      acd137(11)=acd137(12)+acd137(11)
      acd137(11)=acd137(5)*acd137(11)
      acd137(12)=acd137(8)*acd137(7)
      acd137(13)=acd137(10)*acd137(4)
      acd137(12)=acd137(13)+acd137(12)
      acd137(12)=acd137(9)*acd137(12)
      acd137(13)=acd137(2)*acd137(1)
      brack=acd137(11)+acd137(12)+2.0_ki*acd137(13)
   end function brack_3
!---#] function brack_3:
!---#[ function derivative:
   function derivative(mu2,i1,i2) result(numerator)
      use p1_dbarc_epnebbbarg_globalsl1, only: epspow
      use p1_dbarc_epnebbbarg_kinematics
      use p1_dbarc_epnebbbarg_abbrevd137h1
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
      use p1_dbarc_epnebbbarg_groups, only: tensrec_info_group15
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
end module     p1_dbarc_epnebbbarg_d137h1l1d
