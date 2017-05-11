!****h* src/integrals/four_point/generic_function_4p
!
!~ changed 13.5.10 to include globally defined scale mu2_scale_par
! 
!~ 24.6.2010: uses Andre van Hameren's OneLOop for finite D0
!
! NAME 
!
!  Module generic_function_4p
!
! USAGE
!
!  use golem_generic_function_4p_qp
!
! DESCRIPTION
!
!  This module contains the generic routines to compute the
!  four point functions in n+2 and n+4 dimensions. It can compute
!  the zero mass, one mass, two mass adjacent, two mass opposite, three mass
!  and four mass four point functions with massless internal lines
!  It can also calculate the IR divergent boxes with massive internal lines, but
!  ONLY in the scalar case. 
!  For the latter, the (4-2*eps)-dim expressions are implemented
!
!
! OUTPUT
!
!  It exports three public routines:
!  * f4p -- a function to compute the four point function in n dimensions 
!           (used donly if internal masses are present)
!  * f4p_np2 -- a function to compute the four point function in n+2 dimensions
!  * f4p_np4 -- a function to compute the four point function in n+4 dimensions
!
! USES
!
!  * precision (src/module/precision_golem.f90)
!  * matrice_s (src/kinematic/matrice_s.f90) ( only : dim_s, set_ref )
!  * s_matrix_type (src/module/s_matrix_type.f90)
!  * array (src/module/array.f90)
!  * tri_croissant (src/module/tri.f90)
!  * constante (src/module/constante.f90)
!  * function_4p1m (src/integrals/four_point/function_4p1m.f90)
!  * function_4p2m_opp (src/integrals/four_point/function_4p2m_opp.f90)
!  * function_4p2m_adj (src/integrals/four_point/function_4p2m_adj.f90)
!  * function_4p3m (src/integrals/four_point/function_4p3m.f90)
!  * function_4p4m (src/integrals/four_point/function_4p4m.f90)
!  * cache (src/module/cache.f90)
!  * sortie_erreur (src/module/sortie_erreur.f90)
!  * generic_function_3p (src/integrals/generic_function_3p.f90)
!  * parametre (src/module/parametre.f90), only : coupure_3p2m,coupure_3p3m,coupure_4p1m,
!                        coupure_4p2m_opp,coupure_4p2m_adj,coupure_4p3m,coupure_4p4m
!  * equal (src/module/equal.f90)
!

!*****
module golem_generic_function_4p_qp
  !
  use golem_precision_golem_qp, only: ki
  use golem_matrice_s_qp
  use golem_s_matrix_type_qp
  use golem_array_qp
  use golem_tri_croissant_qp
  use golem_constante_qp
  use golem_function_4p1m_qp
  use golem_function_4p2m_opp_qp
  use golem_function_4p2m_adj_qp
  use golem_function_4p3m_qp
  use golem_function_4p4m_qp
  use golem_function_4p2m_3mi_onshell_qp
  use golem_function_4p_ql6_qp
  use golem_function_4p_ql7_qp
  use golem_function_4p_ql8_qp
  use golem_function_4p_ql9_qp
  use golem_function_4p_ql10_qp
  use golem_function_4p_ql11_qp
  use golem_function_4p_ql12_qp
  use golem_function_4p_ql13_qp
  use golem_function_4p_ql14_qp
  use golem_function_4p_ql15_qp
  use golem_function_4p_ql16_qp
  use golem_form_factor_type_qp
  use golem_cache_qp
  use golem_sortie_erreur_qp, only : tab_erreur_par,catch_exception
  use golem_generic_function_3p_qp
  use golem_parametre_qp , only : coupure_4p1m,coupure_4p2m_opp,&
       coupure_4p2m_adj,coupure_4p3m,coupure_4p4m,&
       mu2_scale_par,olo,withlt
  use golem_equal_qp

  !---#[ avh_olo:
  use golem_avh_olo_qp, only: olo_d0, olo_scale, olo_onshell
  !---#] avh_olo:
  implicit none
  !
  private
  !
  integer, dimension(2) :: set_tot
  !
  interface f4p_sca
     !
     module procedure f4p_sca_p
     module procedure f4p_sca_r, f4p_sca_c
     !
  end interface
  !
  public ::  f4p, f4p_np2, f4p_np4 !!! These functions return complex arrays
  !
  ! added to include LT option, Jan2011
!AC!      interface
!AC!         function D0(p1, p2, p3, p4, p1p2, p2p3, m1, m2, m3, m4)
!AC!            use golem_precision_golem_qp, only: ki_lt
!AC!            implicit none
!AC!            real(ki_lt), intent(in) :: p1, p2, p3, p4, p1p2, p2p3
!AC!           real(ki_lt), intent(in) :: m1, m2, m3, m4
!AC!            complex(ki_lt) :: D0
!AC!         end function D0
!AC!      end interface
  !
!AC!      interface
!AC!         function D0C(p1, p2, p3, p4, p1p2, p2p3, m1, m2, m3, m4)
!AC!            use golem_precision_golem_qp, only: ki_lt
!AC!            implicit none
!AC!            real(ki_lt), intent(in) :: p1, p2, p3, p4, p1p2, p2p3
!AC!            complex(ki_lt), intent(in) :: m1, m2, m3, m4
!AC!            complex(ki_lt) :: D0C
!AC!         end function D0C
!AC!      end interface
  !
 contains
  !
  !****f* src/integrals/four_point/generic_function_4p/f4p_np2
  ! NAME
  !
  !  Function f4p_np2
  !
  ! USAGE
  !
  !  complex = f4p_np2(s_mat,b_pro,b_pin,parf1,parf2,parf3,parf4)
  !
  ! DESCRIPTION
  !
  !  This function computes recursively the generic four point function in n+2 dimensions, 
  !  with or without Feynman parameters in the numerator using the formula of 
  !  JHEP 10 (2005) 015.
  !
  ! INPUTS
  !
  !  * s_mat_p -- a derived type (s_matrix_poly), giving the S matrix
  !  * b_pro -- an integer which represents the set of the four unpinched
  !    propagators
  !  * b_pin -- an integer which represents the set of the pinched propagators
  !  * parf1 -- an integer (optional), the label of the first Feynman parameter
  !  * parf2 -- an integer (optional), the label of the second Feynman parameter
  !  * parf3 -- an integer (optional), the label of the third Feynman parameter
  !  * parf4 -- an integer (optional), the label of the forth Feynman parameter
  !
  ! SIDE EFFECTS
  !
  !  No side effect
  !
  ! RETURN VALUE
  !
  !  It returns a complex (type ki) number
  !
  ! NOTE
  !
  ! This function has been changed! It accepts only a s_matrix_poly-type as input 
  ! and returns a complex number instead of a real array!
  !
  !*****
  !  
  recursive function f4p_np2(s_mat_p,b_pro,b_pin,parf1,parf2,parf3,parf4,test_numeric) result(res_4p_np2)
    !
    type(s_matrix_poly), intent (in) :: s_mat_p
    integer, intent (in) :: b_pro,b_pin
    integer, intent (in), optional :: parf1,parf2,parf3,parf4
    logical, intent (in), optional :: test_numeric
    complex(ki) :: res_4p_np2
    !
    integer :: par1,par2,par3,par4 
    integer :: parn1,parn2,parn3,parn4 
    integer, dimension(4) :: z_param_ini,z_param_out
    integer :: taille
    integer :: nb_par
    real(ki) :: arg3,arg4,arg5,arg6
    real(ki) :: m1s,m2s,m3s,m4s,s1,s2,s3,s4
    complex(ki) :: temp0
    complex(ki), dimension(3) :: temp1,temp2,temp3,temp4
    integer :: j,m1,m2,m3,m4
    integer, dimension(4) :: s
    integer :: ib,b_pro_mj,pro_dim
    logical :: not_numeric
    !
    par1 = 0
    par2 = 0
    par3 = 0
    par4 = 0
    !
    if ( present(parf1) )  par1 = parf1
    if ( present(parf2) )  par2 = parf2
    if ( present(parf3) )  par3 = parf3
    if ( present(parf4) )  par4 = parf4
    !   
    !
    sortie :  if ( (par1 == -1) .or. (par2 == -1) .or. (par3 == -1) &
         .or. (par4 == -1) ) then
       !
       res_4p_np2 = czero
       !
       tab_erreur_par(1)%a_imprimer = .true.
       tab_erreur_par(1)%chaine = 'something wrong with par1,..,par4'
       call catch_exception(0)
       !
    else sortie
       !
       !
       !
       ! symetrie: la place de z1,z2,z3,z4 n'a pas d'importance, on les met 
       ! dans l'ordre croissant
       !
       z_param_ini = (/par1,par2,par3,par4/)
       !
       nb_par = count(mask=z_param_ini/=0)
       !
       if (b_pro < 256) then
          s = bit_sets(b_pro*8:b_pro*8+3)
       else
          s = unpackb(b_pro,4)
       end if
       !
       !
       ! test for switch to numerical evaluation needs to be performed only once
       !
       switch_to_numerics: if (present(test_numeric) ) then
          !
          not_numeric = test_numeric !this should always be true...
          !
       else switch_to_numerics
          !
          !  make sure numerical branch is never entered for cases where it is not implemented
          
          ! NB: This order of the statements
          ! reduces the number of comparisons required.
          !
          ! numerical branch not implemented for complex masses yet:
          if (iand(s_mat_p%b_cmplx, b_pro) .ne. 0 ) then
             !
             not_numeric = .true.
             !
          else if (iand(s_mat_p%b_zero, b_pro) .ne. b_pro ) then !case internal masses
             !
             not_numeric = .true.
             !
          else 
             !
             m1 = s(1)
             m2 = s(2)
             m3 = s(3)
             m4 = s(4)
             !
             ! To get the s1..s4, only the real parts of the arguments are needed!
             !
             arg3 = s_mat_p%pt_real(m1,m4)
             arg4 = s_mat_p%pt_real(m1,m2)
             arg5 = s_mat_p%pt_real(m2,m3)
             arg6 = s_mat_p%pt_real(m3,m4)
             !
             m1s = -s_mat_p%pt_real(m1,m1)/2._ki
             m2s = -s_mat_p%pt_real(m2,m2)/2._ki
             m3s = -s_mat_p%pt_real(m3,m3)/2._ki
             m4s = -s_mat_p%pt_real(m4,m4)/2._ki
             !
             !
             s1=arg3+m1s+m4s
             s2=arg4+m1s+m2s
             s3=arg5+m2s+m3s
             s4=arg6+m3s+m4s
             !
             ! case 4 non-light-like legs
             if ( .not.(equal_real(s1,zero)) .and. &
                  &  .not.(equal_real(s2,zero)) .and. &
                  &  .not.(equal_real(s3,zero)) .and. &
                  &  .not.(equal_real(s4,zero))) then 
                not_numeric = .true.
             else
                not_numeric=.not. ( abs(norma_sumb(b_pin)) < coupure(s_mat_p,s) )
             end if
             !
          end if
          !
       end if switch_to_numerics
       !
       !
       taille = dim_s - size(s)
       !
       select case(taille)
          !
       case(0)
          !
          set_tot = 0
          !
       case(1)
          set_tot(1) = 0

          if (b_pin < 256) then
             set_tot(2) = bit_sets(b_pin*8)
          else
             set_tot(2:2) = unpackb(b_pin,1)
          end if
          !
          !
       case(2)
          if (b_pin < 256) then
             set_tot(:) = bit_sets(b_pin*8:b_pin*8+1)
          else
             set_tot(:) = unpackb(b_pin,2)
          end if
       end select
       !
       call tri_int4(z_param_ini,z_param_out)
       par1 = z_param_out(1)
       par2 = z_param_out(2)
       par3 = z_param_out(3)
       par4 = z_param_out(4)
       !
       cache : if ( computed_f4p_np2(set_tot(1),set_tot(2),&
            &par2,par3,par4) ) then
          !
          res_4p_np2 = results_f4p_np2(set_tot(1),set_tot(2),&
               &par2,par3,par4)
          !
       else cache
          !
          numeric : if ( not_numeric ) then
             !
             ! cas avec trois parametres de feynman au numerateur
             !
             if (nb_par == 3) then
                !
                temp0 =  b(par4,b_pin)*f4p_np2(s_mat_p,b_pro,b_pin,parf1=par2,parf2=par3,test_numeric = not_numeric) &
                       + b(par3,b_pin)*f4p_np2(s_mat_p,b_pro,b_pin,parf1=par2,parf2=par4,test_numeric = not_numeric) &
                       + b(par2,b_pin)*f4p_np2(s_mat_p,b_pro,b_pin,parf1=par3,parf2=par4,test_numeric = not_numeric) &
                       - ( inv_s(par2,par3,b_pin)*f4p_np2(s_mat_p,b_pro,b_pin,parf1=par4,test_numeric = not_numeric) &
                         + inv_s(par2,par4,b_pin)*f4p_np2(s_mat_p,b_pro,b_pin,parf1=par3,test_numeric = not_numeric) &
                         + inv_s(par3,par4,b_pin)*f4p_np2(s_mat_p,b_pro,b_pin,parf1=par2,test_numeric = not_numeric)  )/3._ki
                !
                temp1(:) = czero
                temp2(:) = czero
                temp3(:) = czero
                temp4(:) = czero
                !
                ib = b_pro
                j = 0
                !
                first_pinch: do while (ib /= 0)
                   !
                   if (modulo(ib,2) == 1)  then
                      !
                      b_pro_mj = ibclr(b_pro,j)
                      !
                      if ( (j /= par2) .and. (j /= par3) .and. (j /= par4) ) then
                         !
                         temp4 = temp4 - b(j,b_pin)*f3p(s_mat_p,b_pro_mj,par2, &
                              &par3,par4)/2._ki
                         !
                      end if
                      !
                      if ( (j /= par2) .and. (j /= par3) ) then
                         !
                         temp1 = temp1 + inv_s(j,par4,b_pin)*f3p(s_mat_p,b_pro_mj,par2,par3)/6._ki
                         !
                      end if
                      !
                      if ( (j /= par2) .and. (j /= par4) ) then
                         !
                         temp2 = temp2 + inv_s(j,par3,b_pin)*f3p(s_mat_p,b_pro_mj,par2,par4)/6._ki
                         !
                      end if
                      !
                      if ( (j /= par3) .and. (j /= par4) ) then
                         !
                         temp3 = temp3 + inv_s(j,par2,b_pin)*f3p(s_mat_p,b_pro_mj,par3,par4)/6._ki
                         !
                      end if
                      !
                   end if
                   !
                   j = j+1
                   ib= ishft(ib,-1)
                   !
                end do first_pinch
                !
                res_4p_np2 = ( temp0 + temp1(3) + temp2(3) + temp3(3) &
                     & + temp4(3) )/2._ki/sumb(b_pin)
                !
                ! cas avec deux parametres de feynman au numerateur
                !
             else if (nb_par == 2) then
                !
                temp0 =  b(par3,b_pin)*f4p_np2(s_mat_p,b_pro,b_pin,parf4=par4,test_numeric = not_numeric) &
                     &+ b(par4,b_pin)*f4p_np2(s_mat_p,b_pro,b_pin,parf4=par3,test_numeric = not_numeric) &
                     &- inv_s(par3,par4,b_pin)*f4p_np2(s_mat_p,b_pro,b_pin,test_numeric = not_numeric)/2._ki
                !
                temp1(:) = czero
                temp2(:) = czero
                temp3(:) = czero
                !
                ib = b_pro
                j = 0
                !
                do while (ib /= 0)
                   !
                   if (modulo(ib,2) == 1)  then
                      !
                      b_pro_mj = ibclr(b_pro,j)
                      !
                      if ( (j /= par3) .and. (j /= par4) ) then
                         !
                         temp3 = temp3 - b(j,b_pin)*f3p(s_mat_p,b_pro_mj,par3,par4)/2._ki
                         !
                      end if
                      !
                      if (j /= par3) then
                         !
                         temp1 = temp1 + inv_s(j,par4,b_pin)*f3p(s_mat_p,b_pro_mj,par3)/4._ki
                         !
                      end if
                      !
                      if (j /= par4) then
                         !
                         temp2 = temp2 + inv_s(j,par3,b_pin)*f3p(s_mat_p,b_pro_mj,par4)/4._ki
                         !
                      end if
                      !
                   end if
                   !
                   j = j+1
                   ib= ishft(ib,-1)
                   !
                end do
                !
                res_4p_np2 = (temp0 + temp1(3) + temp2(3) + temp3(3)) &
                     &*2._ki/3._ki/sumb(b_pin)
                !
                ! cas avec un parametre de feynman au numerateur
                !
             else if (nb_par == 1) then
                !
                temp0 = b(par4,b_pin)*f4p_np2(s_mat_p,b_pro,b_pin,test_numeric = not_numeric)
                temp1(:) = czero
                temp2(:) = czero
                !
                ib = b_pro
                j = 0
                !
                do while (ib /= 0)
                   !
                   if (modulo(ib,2) == 1)  then
                      !
                      b_pro_mj = ibclr(b_pro,j)
                      !
                      if (j /= par4) then
                         !
                         temp2 = temp2 - b(j,b_pin)*f3p(s_mat_p,b_pro_mj,par4)/2._ki
                         !
                      end if
                      !
                      temp1 = temp1 + inv_s(j,par4,b_pin)*f3p(s_mat_p,b_pro_mj)/2._ki
                      !
                   end if
                   !
                   j = j+1
                   ib= ishft(ib,-1)
                   !
                end do
                !
                res_4p_np2 = (temp0 + temp1(3) + temp2(3))/sumb(b_pin)
                !
                ! cas sans parametre de feynman au numerateur
                !
             else
                !
                res_4p_np2 = f4p_np2_sca(s_mat_p,b_pro,b_pin)
                !
             end if
             !
          else numeric
             !
             where (z_param_out /= 0)
                !
                z_param_out = locateb(z_param_out,b_pro)
                !
             elsewhere
                !
                z_param_out = 0
                !
             end where
             !
             parn1 = z_param_out(1)
             parn2 = z_param_out(2)
             parn3 = z_param_out(3)
             parn4 = z_param_out(4)
             !
             res_4p_np2 = f4p_np2_numeric(s_mat_p,b_pro,parn1,parn2,parn3,parn4)
             !
          end if numeric
          !
          computed_f4p_np2(set_tot(1),set_tot(2),&
               &par2,par3,par4) = .true.
          results_f4p_np2(set_tot(1),set_tot(2),&
               &par2,par3,par4) = res_4p_np2
          !
       end if cache
       !
    end if sortie
    !
  end function f4p_np2
  !
  !****f* src/integrals/four_point/generic_function_4p/f4p_np2_sca
  ! NAME
  !
  !  Function f4p_np2_sca
  !
  ! USAGE
  !
  !  complex = f4p_np2_sca(s_mat_p,b_pro,b_pin)
  !
  ! DESCRIPTION
  !
  !  This function computes the generic four point function in n+2 dimensions, 
  !  without Feynman parameters in the numerator
  !
  ! INPUTS
  !
  !  * s_mat_p -- a type s_matrix_poly object, the S matrix
  !  * b_pro -- an integer which represents the set of the four unpinched
  !    propagators
  !
  ! SIDE EFFECTS
  !
  !  No side effect
  !
  ! RETURN VALUE
  !
  !  It returns a complex (type ki) number!
  !
  ! NOTE
  !
  ! This function now returns a complex number instaed of a real array!
  !
  !*****
  !
  function f4p_np2_sca(s_mat_p,b_pro,b_pin)
    !
    type(s_matrix_poly), intent(in) :: s_mat_p
    integer, intent (in) :: b_pro,b_pin
    complex(ki) :: f4p_np2_sca
    !
    if (iand(s_mat_p%b_zero,b_pro) .eq. b_pro) then !!! no internal masses
       !
       f4p_np2_sca = f4p_np2_sca_massless(s_mat_p%pt_real, b_pro, b_pin)
       !
    else    
       ! 
       f4p_np2_sca = f4p_np2_sca_massive(s_mat_p, b_pro, b_pin)
       !
    end if
    !
  end function f4p_np2_sca
  !
  function f4p_np2_sca_massless(s_mat_r,b_pro,b_pin)
    !
    real(ki), intent (in), dimension(:,:) :: s_mat_r
    integer, intent (in) :: b_pro,b_pin
    complex(ki) :: f4p_np2_sca_massless
    !
    integer :: par1,par2,par3,par4
    real(ki), dimension(4) :: temp
    complex(ki), dimension(2) :: temp_cmplx
    !
    integer :: m1,m2,m3,m4
    real(ki) :: arg1,arg2,arg3,arg4,arg5,arg6
    logical, dimension(3:6) :: argz
    integer, dimension(4) :: s
    integer :: dim_pro
    !
    if (b_pro < 256) then
       dim_pro = bit_count(b_pro)
       s = bit_sets(b_pro*8:b_pro*8+dim_pro-1)
    else
       dim_pro = countb(b_pro)
       s = unpackb(b_pro,dim_pro)
    end if
    !
    m1 = s(1)
    m2 = s(2)
    m3 = s(3)
    m4 = s(4)
    !
    arg1 = s_mat_r(m2,m4)
    arg2 = s_mat_r(m1,m3)
    arg3 = s_mat_r(m1,m4)  
    arg4 = s_mat_r(m1,m2)  
    arg5 = s_mat_r(m2,m3)  
    arg6 = s_mat_r(m3,m4)  
    !
    par1 = 0
    par2 = 0
    par3 = 0
    par4 = 0
    !
    argz(3) = equal_real(arg3,zero)
    argz(4) = equal_real(arg4,zero)
    argz(5) = equal_real(arg5,zero)
    argz(6) = equal_real(arg6,zero)
    !
    ! only case with no internal masses:
    !
    if ( all(argz) ) then
       !
       temp = f4p1m("n+2",arg1,arg2,0._ki,par1,par2,par3,par4)
       !
       ! one external mass  
       !
    else if ( argz(4) .and. argz(5) .and. argz(6) ) then
       !
       temp = f4p1m("n+2",arg2,arg1,arg3,par1,par2,par3,par4)
       !
    else if ( argz(3) .and. argz(5) .and. argz(6) ) then
       !
       temp = f4p1m("n+2",arg1,arg2,arg4,par1,par2,par3,par4)
       !
    else if ( argz(3) .and. argz(4) .and. argz(6) ) then
       !
       temp = f4p1m("n+2",arg2,arg1,arg5,par1,par2,par3,par4)
       !
    else if ( argz(3) .and. argz(4) .and. argz(5) ) then
       !
       temp = f4p1m("n+2",arg1,arg2,arg6,par1,par2,par3,par4)
       !
       ! two adjacent external masses  
       !
    else if ( argz(3) .and. argz(6) ) then
       !
       temp = f4p2m_adj("n+2",arg2,arg1,arg4,arg5,par1,par2,par3,par4)
       !
    else if ( argz(4) .and. argz(5) ) then
       !
       temp = f4p2m_adj("n+2",arg2,arg1,arg6,arg3,par1,par2,par3,par4)
       !
    else if ( argz(5) .and. argz(6) ) then
       !
       temp = f4p2m_adj("n+2",arg1,arg2,arg3,arg4,par1,par2,par3,par4)
       !
    else if ( argz(3) .and. argz(4) ) then
       !
       temp = f4p2m_adj("n+2",arg1,arg2,arg5,arg6,par1,par2,par3,par4)
       !
       ! two opposite external masses  
       !
    else if ( argz(4) .and. argz(6) ) then
       !
       temp = f4p2m_opp("n+2",arg2,arg1,arg5,arg3,par1,par2,par3,par4)
       !
    else if ( argz(3) .and. argz(5) ) then
       !
       temp = f4p2m_opp("n+2",arg1,arg2,arg4,arg6,par1,par2,par3,par4)
       !
       ! three external masses  
       !
    else if ( argz(3) ) then
       !
       temp = f4p3m("n+2",arg1,arg2,arg4,arg5,arg6,par1,par2,par3,par4)
       !
    else if ( argz(4) ) then
       !
       temp = f4p3m("n+2",arg2,arg1,arg5,arg6,arg3,par1,par2,par3,par4)
       !
    else if ( argz(5) ) then
       !
       temp = f4p3m("n+2",arg1,arg2,arg6,arg3,arg4,par1,par2,par3,par4)
       !
    else if ( argz(6) ) then
       !
       temp = f4p3m("n+2",arg2,arg1,arg3,arg4,arg5,par1,par2,par3,par4)
       !
       ! four external masses  
       !
    else 
       !
       temp = f4p4m("n+2",arg1,arg2,arg3,arg4,arg5,arg6,par1,par2,par3,par4)
       !
    end if   ! end massless case
    !
    temp_cmplx(1) = temp(1) + i_ * temp(2)
    temp_cmplx(2) = temp(3) + i_ * temp(4)
    !
    !
    f4p_np2_sca_massless = temp_cmplx(2)
    !
    !
  end function f4p_np2_sca_massless
  !
  !
  function f4p_np2_sca_massive(s_mat_p,b_pro,b_pin)
    !
    type(s_matrix_poly), intent (in) :: s_mat_p
    integer, intent (in) :: b_pro,b_pin
    complex(ki) :: f4p_np2_sca_massive
    !
    integer :: j,ib,b_pro_mj
    complex(ki), dimension(3) :: trisum,temp0
    complex(ki) :: bsum
    !
    ! there is no case with zero internal masses!
    ! this function is only called if there is at least one internal mass
    !
    !
    ! ********************************************************
    ! ********** massive case (internal masses): see f4p **************
    !
    trisum(:) = czero
    bsum = czero
    !
    ib = b_pro
    j = 0
    !
    do while (ib /= 0)
       !
       if (modulo(ib,2) == 1)  then
          !
          b_pro_mj = ibclr(b_pro,j)
          !
          trisum = trisum + b(j,b_pin)*f3p(s_mat_p,b_pro_mj)
          bsum = bsum + b(j,b_pin)
          !
       end if
       !
       j = j+1
       ib= ishft(ib,-1)
       !
    end do
    !
    temp0 = ( f4p(s_mat_p,b_pro) - trisum )/bsum
    !
    f4p_np2_sca_massive = temp0(3)
    !
  end function f4p_np2_sca_massive
  !
  !****f* src/integrals/four_point/generic_function_4p/f4p_np4
  ! NAME
  !
  !  Function f4p_np4
  !
  ! USAGE
  !
  !  complex_dim2 = f4p_np4(s_mat_p,b_pro,b_pin,parf1,parf2,parf3,parf4)
  !
  ! DESCRIPTION
  !
  !  This function computes recursively the generic four point function in n+4 dimensions, 
  !  with or without Feynman parameters in the numerator
  !
  ! INPUTS
  !
  !  * s_mat_p -- a type s_matrix_poly object, the S matrix
  !  * b_pro -- an integer which represents the set of the four unpinched
  !    propagators
  !  * b_pin -- an integer which represents the set of the pinched propagators
  !  * parf1 -- an integer (optional), the label of the one Feynman parameter
  !  * parf2 -- an integer (optional), the label of the second Feynman parameter
  !  * parf3 -- an integer (optional), the label of the third Feynman parameter
  !  * parf4 -- an integer (optional), the label of the forth Feynman parameter
  !
  ! SIDE EFFECTS
  !
  !  No side effect
  !
  ! RETURN VALUE
  !
  !  It returns a complex (type ki) array of rank 1 and shape 2.
  !
  ! NOTES
  !
  ! This function has been changed! It only accepts a s_matrix_poly type object as input.
  ! It returns a complex instead of a real array!
  !
  !*****
  !
  ! this function returns a complex array now!
  !
  recursive function f4p_np4(s_mat_p,b_pro,b_pin,parf1,parf2,parf3,parf4,test_numeric) result(res_4p_np4)
    !
    type(s_matrix_poly) :: s_mat_p
    integer, intent (in) :: b_pro,b_pin
    integer, intent (in), optional :: parf1,parf2,parf3,parf4
    logical, intent (in), optional :: test_numeric
    complex(ki), dimension(2) :: res_4p_np4
    !
    integer :: par1,par2,par3,par4 
    integer :: parn1,parn2,parn3,parn4 
    integer, dimension(4) :: z_param_ini,z_param_out
    integer :: taille
    integer :: nb_par
    real(ki) :: arg1,arg2,arg3,arg4,arg5,arg6
    real(ki) :: m1s,m2s,m3s,m4s,s1,s2,s3,s4
    complex(ki) :: temp0
    complex(ki), dimension(2) :: temp1,temp2,temp3
    integer :: j,m1,m2,m3,m4
    integer, dimension(4) :: s
    integer, dimension(2) :: set
    integer :: ib,b_pro_mj,dim_pin
    real(ki) :: norma
    logical :: not_numeric
    !
    !
    par1 = 0
    par2 = 0
    par3 = 0
    par4 = 0
    !
    if ( present(parf1) )  par1 = parf1
    if ( present(parf2) )  par2 = parf2
    if ( present(parf3) )  par3 = parf3
    if ( present(parf4) )  par4 = parf4
    !  

    sortie :  if ( (par1 == -1) .or. (par2 == -1).or. (par3 == -1) &
         .or. (par4 == -1) ) then
       !
       res_4p_np4(:) = czero
       !
    else sortie
       !
       ! symetrie: la place de z1,z2,z3,z4 n'a pas d'importance, on les met 
       ! dans l'ordre croissant
       !
       z_param_ini = (/par1,par2,par3,par4/)
       !
       nb_par = count(mask=z_param_ini/=0)
       !
       if (b_pro < 256) then
          s = bit_sets(b_pro*8:b_pro*8+3)
       else
          s = unpackb(b_pro,4)
       end if
       !
       ! test for switch to numerical evaluation needs to be performed only once
       !
       switch_to_numerics: if (present(test_numeric) ) then
          !
          not_numeric = test_numeric !this should always be true...
          !
       else switch_to_numerics
          !
          !  make sure numerical branch is never entered for cases where it is not implemented
          
          ! NB: This order of the statements
          ! reduces the number of comparisons required.
          !
          ! numerical branch not implemented for complex masses yet:
          if (iand(s_mat_p%b_cmplx, b_pro) .ne. 0 ) then
             !
             not_numeric = .true.
             !
          else if (iand(s_mat_p%b_zero, b_pro) .ne. b_pro ) then !case internal masses
             !
             not_numeric = .true.
             !
          else 
             !
             m1 = s(1)
             m2 = s(2)
             m3 = s(3)
             m4 = s(4)
             !
             arg1 = s_mat_p%pt_real(m2,m4)
             arg2 = s_mat_p%pt_real(m1,m3)
             arg3 = s_mat_p%pt_real(m1,m4)
             arg4 = s_mat_p%pt_real(m1,m2)
             arg5 = s_mat_p%pt_real(m2,m3)
             arg6 = s_mat_p%pt_real(m3,m4)
             !
             m1s = -s_mat_p%pt_real(m1,m1)/2._ki
             m2s = -s_mat_p%pt_real(m2,m2)/2._ki
             m3s = -s_mat_p%pt_real(m3,m3)/2._ki
             m4s = -s_mat_p%pt_real(m4,m4)/2._ki
             !
             !            end if
             !
             s1=arg3+m1s+m4s
             s2=arg4+m1s+m2s
             s3=arg5+m2s+m3s
             s4=arg6+m3s+m4s
             !
             !             else
             ! case 4 non-light-like legs
             if ( .not.(equal_real(s1,zero)) .and. &
                  &  .not.(equal_real(s2,zero)) .and. &
                  &  .not.(equal_real(s3,zero)) .and. &
                  &  .not.(equal_real(s4,zero))) then 
                not_numeric = .true.
             else
                not_numeric=.not. ( abs(norma_sumb(b_pin)) < coupure(s_mat_p,s) )
             end if
             !
          end if
          !
       end if switch_to_numerics
       !
       if (nb_par == 0) then
          !
          norma = 1._ki/6._ki
          !
       else if (nb_par == 1) then
          !
          norma = 1._ki/24._ki
          !
       else
          !
          norma = 0._ki
          !
       end if
       !
       taille = dim_s - size(s)
       !
       select case(taille)
          !
       case(0)
          !
          set_tot = 0
          !
       case(1)
          !
          if (b_pin < 256) then
             set(1:1) = bit_sets(b_pin*8:b_pin*8)
          else
             set(1:1) = unpackb(b_pin,1)
          end if
          set_tot(1) = 0
          set_tot(2) = set(1)
          !
       case(2)
          !
          if (b_pin < 256) then
             set = bit_sets(b_pin*8:b_pin*8+1)
          else
             set = unpackb(b_pin,2)
          end if
          !
          set_tot(1:2) = set(1:2)
          !
       end select
       !
       call tri_int4(z_param_ini,z_param_out)
       par1 = z_param_out(1)
       par2 = z_param_out(2)
       par3 = z_param_out(3)
       par4 = z_param_out(4)
       !
       cache : if ( computed_f4p_np4(set_tot(1),set_tot(2),par4) ) then
          !
          res_4p_np4 = results_f4p_np4(set_tot(1),set_tot(2),par4,:)
          !
       else cache
          !
          !  before:        numeric : if ( not_numeric .and. &
          !                 & (abs(norma_sumb(b_pin)) >= coupure(s_mat_p,s) )) then
          numeric : if ( not_numeric ) then
             !
             ! cas avec un parametre de feynman au numerateur
             !
             if (nb_par == 1) then
                !
                temp0 = f4p_np2(s_mat_p,b_pro,b_pin, parf4 = par4, test_numeric = not_numeric)/3._ki
                temp1 = b(par4,b_pin)*f4p_np4(s_mat_p,b_pro,b_pin, test_numeric = not_numeric)
                temp2(:) = czero
                temp3(:) = czero
                !
                ib = b_pro
                j = 0
                !
                do while (ib /= 0)
                   !
                   if (modulo(ib,2) == 1)  then
                      !
                      b_pro_mj = ibclr(b_pro,j)
                      !
                      temp2 = temp2 + inv_s(j,par4,b_pin)*f3p_np2(s_mat_p,b_pro_mj)/6._ki
                      !
                      if (j /= par4) then
                         !
                         temp3 = temp3 - b(j,b_pin)*f3p_np2(s_mat_p,b_pro_mj,par4)/2._ki
                         !
                      end if
                      !
                   end if
                   !
                   j = j+1
                   ib= ishft(ib,-1)
                   !
                end do
                !
                res_4p_np4(1) = ( temp1(1)+temp2(1)+temp3(1) )/(2._ki*sumb(b_pin))
                res_4p_np4(2) = ( temp1(2)+temp1(1)/6._ki+temp2(2)+temp2(1)/2._ki &
                     +temp3(2)+temp3(1)/2._ki+temp0 )/(2._ki*sumb(b_pin))
                !
                ! cas sans parametre de feynman au numerateur
                !
             else if (nb_par == 0) then
                !
                temp0 = f4p_np2(s_mat_p,b_pro,b_pin,test_numeric = not_numeric)
                !
                temp1(:) = czero
                !
                ib = b_pro
                j = 0
                !
                do while (ib /= 0)
                   !
                   if (modulo(ib,2) == 1)  then
                      !
                      b_pro_mj = ibclr(b_pro,j)
                      !
                      temp1 = temp1 + b(j,b_pin)*f3p_np2(s_mat_p,b_pro_mj)
                      !
                   end if
                   !
                   j = j+1
                   ib= ishft(ib,-1)
                   !
                end do
                !
                res_4p_np4(1) = ( -temp1(1) )/(3._ki*sumb(b_pin))
                res_4p_np4(2) = (temp0 - temp1(2) - 2._ki/3._ki*temp1(1) )/(3._ki*sumb(b_pin) )
                !
                ! cas avec plus de un parametre de feynman au numerateur
                !
             else
                !
                tab_erreur_par(1)%a_imprimer = .true.
                tab_erreur_par(1)%chaine = 'In function f4p_np4:'
                tab_erreur_par(2)%a_imprimer = .true.
                tab_erreur_par(2)%chaine = 'no need of four-point integrals in n+4 dimension &
                     &with more than one Feynman parameter in the numerator'
                tab_erreur_par(3)%a_imprimer = .true.
                tab_erreur_par(3)%chaine = 'The value of Feynman parameters in argument: %d1'
                tab_erreur_par(3)%arg_int_tab = (/packb((/par1,par2,par3,par4/)),4/)
                call catch_exception(0)
                !
             end if
             !
          else numeric
             !
             where (z_param_out /= 0)
                !
                z_param_out = locateb(z_param_out,b_pro)
                !
             elsewhere
                !
                z_param_out = 0
                !
             end where
             !
             parn1 = z_param_out(1)
             parn2 = z_param_out(2)
             parn3 = z_param_out(3)
             parn4 = z_param_out(4)
             !
             res_4p_np4 = f4p_np4_numeric(s_mat_p,b_pro,parn1,parn2,parn3,parn4)
             !
          end if numeric
          !
          computed_f4p_np4(set_tot(1),set_tot(2),par4) = .true.
          results_f4p_np4(set_tot(1),set_tot(2),par4,:) = res_4p_np4
          !
       end if cache
       !
    end if sortie
    !
  end function f4p_np4
  !
  !
  !****f* src/integrals/four_point/generic_function_4p/f4p_np2_numeric
  ! NAME
  !
  !  Function f4p_np2_numeric
  !
  ! USAGE
  !
  !  complex = f4p_np2_numeric(s_mat_p,b_pro,parf1,parf2,parf3,parf4)
  !
  ! DESCRIPTION
  !
  !  This function computes numerically the generic four point function in n+2 dimensions, 
  !  with or without Feynman parameters in the numerator
  !
  ! INPUTS
  !
  !  * s_mat_p -- a derived type s_matrix_poly, the S matrix
  !  * b_pro -- an integer which represents the set of the four unpinched
  !    propagators
  !  * par1 -- an integer, the label of the one Feynman parameter
  !  * par2 -- an integer, the label of the second Feynman parameter
  !  * par3 -- an integer, the label of the third Feynman parameter
  !  * par4 -- an integer, the label of the forth Feynman parameter
  !
  ! SIDE EFFECTS
  !
  !  No side effect
  !
  ! RETURN VALUE
  !
  !  It returns a complex number!
  !
  ! NOTES
  !
  ! This function has been changed! It only accepts a s_matrix_poly type object!
  ! It returns a complex number!
  !
  !*****
  !
  ! returns a complex number now!
  !
  function f4p_np2_numeric(s_mat_p,b_pro,parf1,parf2,parf3,parf4)
    !
    type(s_matrix_poly) :: s_mat_p
    integer, intent (in) :: b_pro
    integer, intent (in) :: parf1,parf2,parf3,parf4
    complex(ki) :: f4p_np2_numeric        
    !
    integer :: par1,par2,par3,par4
    integer, dimension(4) :: z_param_ini,z_param_out
    real(ki), dimension(4) :: temp
    integer :: m1,m2,m3,m4
    real(ki) :: arg1,arg2,arg3,arg4,arg5,arg6
    integer, dimension(4) :: s
    integer :: dim_pro
    logical, dimension(3:6) :: argz
    !
    sortie :  if ( (parf1 == -1) .or. (parf2 == -1).or. (parf3 == -1) &
         .or. (parf4 == -1) ) then
       !
       f4p_np2_numeric = czero
       !
    else sortie
       !
       ! symetrie: la place de z1,z2,z3,z4 n'a pas d'importance, on les met 
       ! dans l'ordre croissant
       !
       z_param_ini(1) = parf1
       z_param_ini(2) = parf2
       z_param_ini(3) = parf3
       z_param_ini(4) = parf4
       !
       if (b_pro < 256) then
          dim_pro = bit_count(b_pro)
          s = bit_sets(b_pro*8:b_pro*8+dim_pro)
       else
          dim_pro = countb(b_pro)
          s = unpackb(b_pro,dim_pro)
       end if
       !
       m1 = s(1)
       m2 = s(2)
       m3 = s(3)
       m4 = s(4)
       !
       ! arg1 = s, arg2 = t et les autres arguments sont les masses externes
       !
       ! only massless case is considered here, relevant piece of s_matrix is necessarily real
       !
       arg1 = s_mat_p%pt_real(m2,m4)
       arg2 = s_mat_p%pt_real(m1,m3)
       arg3 = s_mat_p%pt_real(m1,m4)
       arg4 = s_mat_p%pt_real(m1,m2)
       arg5 = s_mat_p%pt_real(m2,m3)
       arg6 = s_mat_p%pt_real(m3,m4)
       !
       argz(3) = equal_real(arg3,zero)
       argz(4) = equal_real(arg4,zero)
       argz(5) = equal_real(arg5,zero)
       argz(6) = equal_real(arg6,zero)
       !
       ! no external mass
       !
       if ( (argz(3)) .and. (argz(4)) .and. (argz(5)) &
            .and. (argz(6)) ) then
          !
          call tri_int4(z_param_ini,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p1m("n+2",arg1,arg2,0._ki,par1,par2,par3,par4)
          !
          ! one external mass  
          !
       else if ( ( (argz(4)) .and. (argz(5)) .and. (argz(6)) ) ) then
          !
          call shift_param(z_param_ini,3,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p1m("n+2",arg2,arg1,arg3,par1,par2,par3,par4)
          !
       else if ( ( (argz(3)) .and. (argz(5)) .and. (argz(6)) ) ) then
          !
          call shift_param(z_param_ini,2,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p1m("n+2",arg1,arg2,arg4,par1,par2,par3,par4)
          !
       else if ( ( (argz(3)) .and. (argz(4)) .and. (argz(6)) ) ) then
          !
          call shift_param(z_param_ini,1,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p1m("n+2",arg2,arg1,arg5,par1,par2,par3,par4)
          !
       else if ( ( (argz(3)) .and. (argz(4)) .and. (argz(5)) ) ) then
          !
          call tri_int4(z_param_ini,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p1m("n+2",arg1,arg2,arg6,par1,par2,par3,par4)
          !
          ! two adjacent external masses  
          !
       else if ( ( (argz(3)) .and. (argz(6)) ) ) then
          !
          call shift_param(z_param_ini,1,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p2m_adj("n+2",arg2,arg1,arg4,arg5,par1,par2,par3,par4)
          !
       else if ( ( (argz(4)) .and. (argz(5)) ) ) then
          !
          call shift_param(z_param_ini,3,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p2m_adj("n+2",arg2,arg1,arg6,arg3,par1,par2,par3,par4)
          !
       else if ( ( (argz(5)) .and. (argz(6)) ) ) then
          !
          call shift_param(z_param_ini,2,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p2m_adj("n+2",arg1,arg2,arg3,arg4,par1,par2,par3,par4)
          !
       else if ( ( (argz(3)) .and. (argz(4)) ) ) then
          !
          call tri_int4(z_param_ini,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p2m_adj("n+2",arg1,arg2,arg5,arg6,par1,par2,par3,par4)
          !
          ! two opposite external masses  
          !
       else if ( ( (argz(4)) .and. (argz(6)) ) ) then
          !
          call shift_param(z_param_ini,3,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p2m_opp("n+2",arg2,arg1,arg5,arg3,par1,par2,par3,par4)
          !
       else if ( ( (argz(3)) .and. (argz(5)) ) ) then
          !
          call tri_int4(z_param_ini,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          temp = f4p2m_opp("n+2",arg1,arg2,arg4,arg6,par1,par2,par3,par4)
          !
          ! three external masses  
          !
       else if (argz(3)) then
          !
          call tri_int4(z_param_ini,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p3m("n+2",arg1,arg2,arg4,arg5,arg6,par1,par2,par3,par4)
          !
       else if (argz(4)) then
          !
          call shift_param(z_param_ini,3,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p3m("n+2",arg2,arg1,arg5,arg6,arg3,par1,par2,par3,par4)
          !
       else if (argz(5)) then
          !
          call shift_param(z_param_ini,2,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p3m("n+2",arg1,arg2,arg6,arg3,arg4,par1,par2,par3,par4)
          !
       else if (argz(6)) then
          !
          call shift_param(z_param_ini,1,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p3m("n+2",arg2,arg1,arg3,arg4,arg5,par1,par2,par3,par4)
          !
          ! four external masses  
          !
       else 
          !
          tab_erreur_par(1)%a_imprimer = .true.
          tab_erreur_par(1)%chaine = 'In function f4p_np2_numeric:'
          tab_erreur_par(2)%a_imprimer = .true.
          tab_erreur_par(2)%chaine = 'four external mass four point integral not yet implemented'
          call catch_exception(0)
          !
       end if
       !
       f4p_np2_numeric = temp(3) + i_ * temp(4)
       !
    end if sortie
    !
  end function f4p_np2_numeric
  !
  !****f* src/integrals/four_point/generic_function_4p/f4p_np4_numeric
  ! NAME
  !
  !  Function f4p_np4_numeric
  !
  ! USAGE
  !
  !  complex_dim2 = f4p_np4_numeric(s_mat_p,b_pro,parf1,parf2,parf3,parf4)
  !
  ! DESCRIPTION
  !
  !  This function computes numerically the generic four point function in n+4 dimensions, 
  !  with or without Feynman parameters in the numerator
  !
  ! INPUTS
  !
  !  * s_mat_p -- a derived type s_matrix_poly, the S matrix
  !  * b_pro -- an integer which represents the set of the four unpinched
  !    propagators
  !  * parf1 -- an integer (optional), the label of the one Feynman parameter
  !  * parf2 -- an integer (optional), the label of the second Feynman parameter
  !  * parf3 -- an integer (optional), the label of the third Feynman parameter
  !  * parf4 -- an integer (optional), the label of the forth Feynman parameter
  !
  ! SIDE EFFECTS
  !
  !  No side effect
  !
  ! RETURN VALUE
  !
  !  It returns a complex (type ki) array of rank 1 and shape 2.
  !
  ! NOTES
  !
  ! This function has been changed! It only accepts a s_matrix_poly type object!
  ! It returns a complex array!
  !
  !
  !
  !*****
  !
  function f4p_np4_numeric(s_mat_p,b_pro,parf1,parf2,parf3,parf4)
    !
    type(s_matrix_poly) :: s_mat_p
    integer, intent (in) :: b_pro
    integer, intent (in), optional :: parf1,parf2,parf3,parf4
    complex(ki), dimension(2) :: f4p_np4_numeric        
    !
    real(ki), dimension(4) :: temp
    integer :: par1,par2,par3,par4 
    integer, dimension(4) :: z_param_ini,z_param_out
    integer :: m1,m2,m3,m4
    real(ki) :: arg1,arg2,arg3,arg4,arg5,arg6
    integer, dimension(4) :: s
    integer :: pro_dim
    logical, dimension(3:6) :: argz
    !
    !
    par1 = 0
    par2 = 0
    par3 = 0
    par4 = 0
    !
    if ( present(parf1) )  par1 = parf1
    if ( present(parf2) )  par2 = parf2
    if ( present(parf3) )  par3 = parf3
    if ( present(parf4) )  par4 = parf4
    !  
    sortie :  if ( (par1 == -1) .or. (par2 == -1).or. (par3 == -1) &
         .or. (par4 == -1) ) then
       !
       f4p_np4_numeric(:) = czero
       !
    else sortie
       !
       ! symetrie: la place de z1,z2,z3,z4 n'a pas d'importance, on les met 
       ! dans l'ordre croissant
       !
       z_param_ini(1) = par1
       z_param_ini(2) = par2
       z_param_ini(3) = par3
       z_param_ini(4) = par4
       !
       if (b_pro < 256) then
          pro_dim = bit_count(b_pro)
          s = bit_sets(b_pro*8:b_pro*8+pro_dim)
       else
          pro_dim = countb(b_pro)
          s = unpackb(b_pro,pro_dim)
       end if
       !
       m1 = s(1)
       m2 = s(2)
       m3 = s(3)
       m4 = s(4)
       !
       ! arg1 = s, arg2 = t et les autres arguments sont les masses externes
       !
       ! only massless case is considered here, relevant piece of s_matrix is necessarily real
       !
       arg1 = s_mat_p%pt_real(m2,m4)
       arg2 = s_mat_p%pt_real(m1,m3)
       arg3 = s_mat_p%pt_real(m1,m4)
       arg4 = s_mat_p%pt_real(m1,m2)
       arg5 = s_mat_p%pt_real(m2,m3)
       arg6 = s_mat_p%pt_real(m3,m4)
       !
       argz(3) = equal_real(arg3,zero)
       argz(4) = equal_real(arg4,zero)
       argz(5) = equal_real(arg5,zero)
       argz(6) = equal_real(arg6,zero)
       !
       ! no external mass
       !      
       if ( (argz(3)) .and. (argz(4)) .and. (argz(5)) .and. (argz(6)) ) then
          !      
          call tri_int4(z_param_ini,z_param_out)
          !      
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !      
          temp = f4p1m("n+4",arg1,arg2,0._ki,par1,par2,par3,par4)
          !      
          ! one external mass  
          !      
       else if ( ( (argz(4)) .and. (argz(5)) .and. (argz(6)) ) ) then
          !      
          call shift_param(z_param_ini,3,4,z_param_out)
          !      
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !      
          temp = f4p1m("n+4",arg2,arg1,arg3,par1,par2,par3,par4)
          !      
       else if ( ( (argz(3)) .and. (argz(5)) .and. (argz(6)) ) ) then
          !      
          call shift_param(z_param_ini,2,4,z_param_out)
          !      
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !      
          temp = f4p1m("n+4",arg1,arg2,arg4,par1,par2,par3,par4)
          !      
       else if ( ( (argz(3)) .and. (argz(4)) .and. (argz(6)) ) ) then
          !      
          call shift_param(z_param_ini,1,4,z_param_out)
          !      
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !      
          temp = f4p1m("n+4",arg2,arg1,arg5,par1,par2,par3,par4)
          !      
       else if ( ( (argz(3)) .and. (argz(4)) .and. (argz(5)) ) ) then
          !      
          call tri_int4(z_param_ini,z_param_out)
          !      
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !      
          temp = f4p1m("n+4",arg1,arg2,arg6,par1,par2,par3,par4)
          !      
          ! two adjacent external masses  
          !      
       else if ( ( (argz(3)) .and. (argz(6)) ) ) then
          !      
          call shift_param(z_param_ini,1,4,z_param_out)
          !      
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !      
          temp = f4p2m_adj("n+4",arg2,arg1,arg4,arg5,par1,par2,par3,par4)
          !      
       else if ( ( (argz(4)) .and. (argz(5)) ) ) then
          !
          call shift_param(z_param_ini,3,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p2m_adj("n+4",arg2,arg1,arg6,arg3,par1,par2,par3,par4)
          !
       else if ( ( (argz(5)) .and. (argz(6)) ) ) then
          !
          call shift_param(z_param_ini,2,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p2m_adj("n+4",arg1,arg2,arg3,arg4,par1,par2,par3,par4)
          !
       else if ( ( (argz(3)) .and. (argz(4)) ) ) then
          !
          call tri_int4(z_param_ini,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p2m_adj("n+4",arg1,arg2,arg5,arg6,par1,par2,par3,par4)
          !
          ! two opposite external masses  
          !
       else if ( ( (argz(4)) .and. (argz(6)) ) ) then
          !
          call shift_param(z_param_ini,3,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p2m_opp("n+4",arg2,arg1,arg5,arg3,par1,par2,par3,par4)
          !
       else if ( ( (argz(3)) .and. (argz(5)) ) ) then
          !
          call tri_int4(z_param_ini,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p2m_opp("n+4",arg1,arg2,arg4,arg6,par1,par2,par3,par4)
          !
          ! three external masses  
          !
       else if (argz(3)) then
          !
          call tri_int4(z_param_ini,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p3m("n+4",arg1,arg2,arg4,arg5,arg6,par1,par2,par3,par4)
          !
       else if (argz(4)) then
          !
          call shift_param(z_param_ini,3,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p3m("n+4",arg2,arg1,arg5,arg6,arg3,par1,par2,par3,par4)
          !
       else if (argz(5)) then
          !
          call shift_param(z_param_ini,2,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p3m("n+4",arg1,arg2,arg6,arg3,arg4,par1,par2,par3,par4)
          !
       else if (argz(6)) then
          !
          call shift_param(z_param_ini,1,4,z_param_out)
          !
          par1 = z_param_out(1)
          par2 = z_param_out(2)
          par3 = z_param_out(3)
          par4 = z_param_out(4)
          !
          temp = f4p3m("n+4",arg2,arg1,arg3,arg4,arg5,par1,par2,par3,par4)
          !
          ! four external masses  
          !
       else 
          !
          tab_erreur_par(1)%a_imprimer = .true.
          tab_erreur_par(1)%chaine = 'In function f4p_np4_numeric:'
          tab_erreur_par(2)%a_imprimer = .true.
          tab_erreur_par(2)%chaine = 'four external mass four point integral not yet implemented'
          call catch_exception(0)
          !
       end if
       !
       f4p_np4_numeric(1) = temp(1) + i_ * temp(2)
       f4p_np4_numeric(2) = temp(3) + i_ * temp(4)
       !
    end if sortie
    !
  end function f4p_np4_numeric
  !
  !****if* src/integrals/four_point/generic_function_4p/coupure
  ! NAME
  !
  !  Function coupure
  !
  ! USAGE
  !
  !  real = coupure(s_mat_p,s)
  !
  ! DESCRIPTION
  !
  !  Depending on the set s and the S matrix (s_mat), this function returns
  !  the value of the cut to switch from analytic to numeric
  !
  ! INPUTS
  !
  !  * s_mat_p -- a derived type s_matrix_poly object. The S matrix.
  !  * s -- an integer array of rank 1 and shape 4, the set of the four unpinched
  !    propagators
  !
  ! SIDE EFFECTS
  !
  !  No side effect
  !
  ! RETURN VALUE
  !
  !  It returns a real (type ki)
  !
  ! EXAMPLE
  !
  !
  !
  !*****
  function coupure(s_mat_p,s)
    !
    type(s_matrix_poly) :: s_mat_p
    integer, intent (in), dimension(4) :: s
    real(ki) :: coupure
    !
    integer :: m1,m2,m3,m4
    real(ki) :: arg3,arg4,arg5,arg6
    real(ki), dimension(4) :: table_arg
    integer :: count_mass
    !
    m1 = s(1)
    m2 = s(2)
    m3 = s(3)
    m4 = s(4)
    !
    ! arg1 = s, arg2 = t et les autres arguments sont les masses externes
    !
    ! function coupure only defined for massless matrices so far. if masses are involved, the args do not
    ! reflect the invariant masses of the external legs (or s and t)
    !
    !
    arg3 = s_mat_p%pt_real(m1,m4)
    arg4 = s_mat_p%pt_real(m1,m2)
    arg5 = s_mat_p%pt_real(m2,m3)
    arg6 = s_mat_p%pt_real(m3,m4)
    !
    !
    table_arg = (/arg3,arg4,arg5,arg6/)
    count_mass = count(mask=table_arg/=zero)
    !
    select case(count_mass)
       !
    case(0,1)
       !
       coupure = coupure_4p1m
       !
    case(2)
       !
       if ( (equal_real(arg3*arg5,0._ki)) .and. (equal_real(arg4*arg6,0._ki)) ) then
          !
          coupure = coupure_4p2m_adj
          !
       else
          !
          coupure = coupure_4p2m_opp
          !
       end if
       !
    case(3)
       !
       coupure = coupure_4p3m
       !
    case(4)
       !
       coupure = coupure_4p4m
       !
    case default
       !
       tab_erreur_par(1)%a_imprimer = .true.
       tab_erreur_par(1)%chaine = 'In function coupure:'
       tab_erreur_par(2)%a_imprimer = .true.
       tab_erreur_par(2)%chaine = 'the case required for four point integral not yet &
            &implemented'
       call catch_exception(0)
       !
    end select
    !
  end function coupure
  !
  ! *********************************************************************
  ! added for massive case 
  ! ***********************************************************************
  !****f* src/integrals/four_point/generic_function_4p/f4p
  ! NAME
  !
  !  Function f4p
  !
  ! USAGE
  !
  !  cmplx_dim3 = f4p(s_mat,b_pro,b_pin,parf1,parf2,parf3,parf4)
  !
  ! DESCRIPTION
  !
  !  This function computes the generic four point function in n dimensions
  ! only scalar case is implemented!!!
  !
  ! INPUTS
  !
  !  * s_mat_p -- a derived type s_matrix_poly, the S matrix
  !  * b_pro -- an integer which represents the set of the four unpinched
  !    propagators
  !  * b_pin -- an integer which represents the set of the pinched propagators
  !  * parf1 -- an integer (optional), the label of the one Feynman parameter
  !  * parf2 -- an integer (optional), the label of the second Feynman parameter
  !  * parf3 -- an integer (optional), the label of the third Feynman parameter
  !  * parf4 -- an integer (optional), the label of the forth Feynman parameter
  !
  ! SIDE EFFECTS
  !
  !  No side effect
  !
  ! RETURN VALUE
  !
  !  It returns a complex (type ki) array of rank 1 and shape 3
  !
  ! EXAMPLE
  !
  !
  !
  !*****
  function f4p(s_mat_p,b_pro,b_pin,parf1,parf2,parf3,parf4)
    !
    type(s_matrix_poly) :: s_mat_p
    integer, intent (in) :: b_pro
    integer, intent (in), optional :: b_pin, parf1,parf2,parf3,parf4
    complex(ki), dimension(3) :: f4p
    real(ki), dimension(6) :: f4p_real
    !
    f4p_real = f4p_ra(s_mat_p,b_pro,b_pin=b_pin,parf1=parf1,parf2=parf2,parf3=parf3,parf4=parf4)
    !
    f4p(1) = f4p_real(1) + i_ * f4p_real(2)
    f4p(2) = f4p_real(3) + i_ * f4p_real(4)
    f4p(3) = f4p_real(5) + i_ * f4p_real(6)
    !
  end function f4p
  !
  function f4p_ra(s_mat_p,b_pro,b_pin,parf1,parf2,parf3,parf4) result(res_4p)
    !
    type(s_matrix_poly), intent (in) :: s_mat_p
    integer, intent (in) :: b_pro
    integer, intent (in), optional :: b_pin, parf1,parf2,parf3,parf4
    real(ki), dimension(6) :: res_4p
    !
    integer :: par1,par2,par3,par4 
    !
    !
    par1 = 0
    par2 = 0
    par3 = 0
    par4 = 0
    !
    if ( present(parf1) )  par1 = parf1
    if ( present(parf2) )  par2 = parf2
    if ( present(parf3) )  par3 = parf3
    if ( present(parf4) )  par4 = parf4
    !
    sortie :  if ( (par1 == -1) .or. (par2 == -1) .or. (par3 == -1) &
         .or. (par4 == -1) ) then
       !
       res_4p(:) = 0._ki
       !
    else if ( (par1+par2+par3+par4) /= 0 ) then
       !
       tab_erreur_par(1)%a_imprimer = .true.
       tab_erreur_par(1)%chaine = 'In f4p_ra: called with non-zero Feynman parameters!'
       tab_erreur_par(2)%a_imprimer = .true.     
       tab_erreur_par(2)%chaine = 'The 4-dim box is only implemented for the scalar case!'
       !
       call catch_exception(0)
       !       
    else sortie
       !
       res_4p = f4p_sca(s_mat_p,b_pro)
       !
    end if sortie
    !
    !
  end function f4p_ra
  !
  !
  !****f* src/integrals/four_point/generic_function_4p/f4p_sca
  ! NAME
  !
  !  Function f4p_sca
  !
  ! USAGE
  !
  !  real_dim6 = f4p_sca(s_mat_p,b_pro)
  !
  ! DESCRIPTION
  !
  !  This function computes the generic four point function in n  dimensions, 
  !  without Feynman parameters in the numerator
  !
  ! INPUTS
  !
  !  * s_mat_p -- a s_matrix_poly type, the S matrix
  !  * b_pro -- an integer which represents the set of the four unpinched
  !    propagators
  !
  ! SIDE EFFECTS
  !
  !  No side effect
  !
  ! RETURN VALUE
  !
  !  It returns a real (type ki) array of rank 1 and shape 6
  !
  ! EXAMPLE
  !
  !
  !
  !*****
  function f4p_sca_p(s_mat_p,b_pro)
    !
    type(s_matrix_poly), intent(in) :: s_mat_p
    integer, intent (in) :: b_pro
    !
    real(ki), dimension(6) :: f4p_sca_p
    !
    if (iand(s_mat_p%b_cmplx, b_pro) .eq. 0 ) then
       !
       f4p_sca_p = f4p_sca_r(s_mat_p%pt_real, b_pro)
       !
    else    
       ! 
       f4p_sca_p = f4p_sca_c(s_mat_p%pt_cmplx, b_pro)
       !
    end if
    !
  end function f4p_sca_p
  !
  function f4p_sca_r(s_mat_r,b_pro)
    !
    real(ki), intent (in), dimension(:,:) :: s_mat_r
    integer, intent (in) :: b_pro
    real(ki), dimension(6) :: f4p_sca_r,temp
    integer :: par1,par2,par3,par4
    integer :: m1,m2,m3,m4
    real(ki) :: arg1,arg2,arg3,arg4,arg5,arg6
    real(ki) :: m1s,m2s,m3s,m4s,s12,s23,s1,s2,s3,s4
    complex(ki_avh) :: D0res
    complex(ki_avh), dimension(0:2) :: D0olo
    integer, dimension(4) :: s
    integer :: pro_dim
    logical, dimension(4) :: msz, ssz
    logical, dimension(4,4) :: meqs
    !
    ! mu2_scale_par is defined globally: 
    ! default mu2_scale_par=1 is set in paramtere.f90, 
    ! unless defined otherwise by user in his main program      
    !
    if (b_pro < 256) then
       pro_dim = bit_count(b_pro)
       s = bit_sets(b_pro*8:b_pro*8+pro_dim-1)
    else
       pro_dim = countb(b_pro)
       s = unpackb(b_pro,pro_dim)
    end if
    !
    m1 = s(1)
    m2 = s(2)
    m3 = s(3)
    m4 = s(4)
    !
    !
    arg1 = s_mat_r(m2,m4)
    arg2 = s_mat_r(m1,m3)
    arg3 = s_mat_r(m1,m4)  
    arg4 = s_mat_r(m1,m2)  
    arg5 = s_mat_r(m2,m3)  
    arg6 = s_mat_r(m3,m4)  
    !
    m1s = -s_mat_r(m1,m1)/2._ki
    m2s = -s_mat_r(m2,m2)/2._ki
    m3s = -s_mat_r(m3,m3)/2._ki
    m4s = -s_mat_r(m4,m4)/2._ki
    !
    msz(1) = equal_real(m1s,zero)
    msz(2) = equal_real(m2s,zero)
    msz(3) = equal_real(m3s,zero)
    msz(4) = equal_real(m4s,zero)
    ! 
    s1=arg3+m1s+m4s
    s2=arg4+m1s+m2s
    s3=arg5+m2s+m3s
    s4=arg6+m3s+m4s
    !
    call cut_s(s1,m1s,m4s)
    call cut_s(s2,m1s,m2s)
    call cut_s(s3,m2s,m3s)
    call cut_s(s4,m3s,m4s)
    !
    ssz(1) = equal_real(s1,zero)
    ssz(2) = equal_real(s2,zero)
    ssz(3) = equal_real(s3,zero)
    ssz(4) = equal_real(s4,zero)
    !
    meqs(1,1) = equal_real(m1s,s1)
    meqs(1,2) = equal_real(m1s,s2)
    meqs(1,3) = equal_real(m1s,s3)
    meqs(1,4) = equal_real(m1s,s4)
    meqs(2,1) = equal_real(m2s,s1)
    meqs(2,2) = equal_real(m2s,s2)
    meqs(2,3) = equal_real(m2s,s3)
    meqs(2,4) = equal_real(m2s,s4)
    meqs(3,1) = equal_real(m3s,s1)
    meqs(3,2) = equal_real(m3s,s2)
    meqs(3,3) = equal_real(m3s,s3)
    meqs(3,4) = equal_real(m3s,s4)
    meqs(4,1) = equal_real(m4s,s1)
    meqs(4,2) = equal_real(m4s,s2)
    meqs(4,3) = equal_real(m4s,s3)
    meqs(4,4) = equal_real(m4s,s4)
    !
    !
    s12 = arg1+m4s+m2s
    s23 = arg2+m1s+m3s
    !
    call cut_s(s12,m4s,m2s)
    call cut_s(s23,m1s,m3s)
    !
    par1 = 0
    par2 = 0
    par3 = 0
    par4 = 0
    !
    temp(:) = 0._ki
    !
    ! case no internal masses:
    !
    if  ( (msz(1)) .and. (msz(2)) .and. (msz(3)) &
         .and. (msz(4)) ) then
       !
       tab_erreur_par(1)%a_imprimer = .true.
       tab_erreur_par(1)%chaine = 'use dim=n+2 for boxes with no internal masses !'
       call catch_exception(0)
       !
    else  ! at least one internal mass nonzero
       !
       ! ********************************************************
       ! ********** massive case (internal masses) **************
       !
       ! case two massive on-shell legs, three internal masses, all masses equal
       if  ( .not.(msz(1)) .and..not.(msz(2)) .and.(msz(3)) &
            &     .and..not.(msz(4)) .and. (equal_real(m1s,m2s)) .and. (equal_real(m2s,m4s)) & 
            &     .and.(meqs(2,3)) .and.(meqs(4,4)) ) then
          !
          temp = f4p2m_3mi_onshell("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          ! 
          ! permute the massless internal line
          !
       else if  ( .not.(msz(2)) .and..not.(msz(3)) .and.(msz(4)) &
            &     .and..not.(msz(1)) .and. (equal_real(m2s,m3s)) .and. (equal_real(m3s,m1s)) & 
            &     .and.(meqs(3,4)) .and.(meqs(1,1)) ) then
          !
          temp = f4p2m_3mi_onshell("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          ! 
          !
       else if  ( .not.(msz(3)) .and..not.(msz(4)) .and.(msz(1)) &
            &     .and..not.(msz(2)) .and. (equal_real(m3s,m4s)) .and. (equal_real(m4s,m2s)) & 
            &     .and.(meqs(4,1)) .and.(meqs(2,2)) ) then
          !
          temp = f4p2m_3mi_onshell("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          ! 
       else if  ( .not.(msz(4)) .and..not.(msz(1)) .and.(msz(2)) &
            &     .and..not.(msz(3)) .and. (equal_real(m4s,m1s)) .and. (equal_real(m1s,m3s)) & 
            &     .and.(meqs(1,2)) .and.(meqs(3,3)) ) then
          !
          temp = f4p2m_3mi_onshell("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          ! 
          ! *********** case QCDLoop box 6 *****************
          ! QCDL m4 is golem m3
          !   
       else  if  ( (msz(1)) .and.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1)) .and. (ssz(2)) & 
            &     .and.(equal_real(s3,s4)) .and.(meqs(3,4)) ) then
          !
          temp = f4p_ql6("n",s1,s2,m3s,m3s,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
          ! permute the massive internal line
          !
       else  if  ( (msz(2)) .and.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) .and. (ssz(3)) & 
            &     .and.(equal_real(s4,s1)) .and.(meqs(4,1)) ) then
          !
          temp = f4p_ql6("n",s2,s3,m4s,m4s,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(3)) .and.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) .and. (ssz(4)) & 
            &     .and.(equal_real(s1,s2)) .and.(meqs(1,2)) ) then
          !
          temp = f4p_ql6("n",s3,s4,m1s,m1s,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( (msz(4)) .and.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) .and. (ssz(1)) & 
            &     .and.(equal_real(s2,s3)) .and.(meqs(2,3)) ) then
          !
          temp = f4p_ql6("n",s4,s1,m2s,m2s,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
          ! *********** case QCDLoop box 7 *****************
          ! QCDL m_i is golem m_{i-1}
          !
          !
       else  if  ( (msz(1)) .and.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1)) .and. (ssz(2)) & 
            &     .and. (meqs(3,3)) ) then
          !
          temp = f4p_ql7("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
          ! permute the massive internal line
          !
       else  if  ( (msz(2)) .and.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) .and. (ssz(3)) & 
            &     .and. (meqs(4,4)) ) then
          !
          temp = f4p_ql7("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(3)) .and.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) .and. (ssz(4)) & 
            &     .and. (meqs(1,1)) ) then
          !
          temp = f4p_ql7("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( (msz(4)) .and.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) .and. (ssz(1)) & 
            &     .and.(meqs(2,2)) ) then
          !
          temp = f4p_ql7("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
           ! *********** case QCDLoop box 7b *****************
          !~ p4^2=m3^2 instead of p3^2=m3^2 (in golem labelling) is also possible!
       else  if  ( (msz(1)) .and.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1)) .and. (ssz(2)) & 
            &     .and. (meqs(3,4)) ) then
          !
          temp = f4p_ql7("n",s1,s2,s4,s3,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
          ! permute the massive internal line
          !
       else  if  ( (msz(2)) .and.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) .and. (ssz(3)) & 
            &     .and. (meqs(4,1)) ) then
          !
          temp = f4p_ql7("n",s2,s3,s1,s4,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(3)) .and.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) .and. (ssz(4)) & 
            &     .and. (meqs(1,2)) ) then
          !
          temp = f4p_ql7("n",s3,s4,s2,s1,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( (msz(4)) .and.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) .and. (ssz(1)) & 
            &     .and.(meqs(2,3)) ) then
          !
          temp = f4p_ql7("n",s4,s1,s3,s2,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !
         ! *********** case QCDLoop box 8 *****************
          !   
          ! limits s3,s4->0 are harmless, so do not require s3,s4 to be nonzero
          !
       else  if  ( (msz(1)) .and.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1)) .and. (ssz(2))  ) then
          !
          temp = f4p_ql8("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !    
          ! permute the massive internal line
          !
       else  if  ( (msz(2)) .and.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) .and. (ssz(3))   ) then
          !
          temp = f4p_ql8("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(3)) .and.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) .and. (ssz(4))  ) then
          !
          temp = f4p_ql8("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( (msz(4)) .and.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) .and. (ssz(1))   ) then
          !
          temp = f4p_ql8("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
          ! *********** case QCDLoop box 9 *****************
          !   
       else  if  ( (msz(1)) .and.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1)) .and..not.(ssz(2)) & 
            &     .and.(meqs(3,4)) ) then
          !
          temp = f4p_ql9("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
          ! permute the massive internal line
          !
       else  if  ( (msz(2)) .and.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) .and..not.(ssz(3)) & 
            &     .and.(meqs(4,1)) ) then
          !
          temp = f4p_ql9("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(3)) .and.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) .and..not.(ssz(4)) & 
            &     .and.(meqs(1,2)) ) then
          !
          temp = f4p_ql9("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( (msz(4)) .and.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) .and..not.(ssz(1)) & 
            &     .and.(meqs(2,3)) ) then
          !
          temp = f4p_ql9("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
         ! *********** case QCDLoop box 9b *****************
          !~ m2^2 nonzero instead of m3^2 (in golem labelling) is also possible!
          !   
       else  if  ( (msz(1)) .and..not.(msz(2)) .and.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1)) .and..not.(ssz(4)) .and.(meqs(2,2)) ) then
          !
             temp = f4p_ql9("n",s1,s4,s3,s2,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
             !  
          ! permute the massive internal line (permu1)
          !
       else  if  ( (msz(2)) .and..not.(msz(3)) .and.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) .and..not.(ssz(1)) .and.(meqs(3,3)) ) then
          !
             temp = f4p_ql9("n",s2,s1,s4,s3,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
             !     
          ! permute the massive internal line (permu2)
          !
       else  if  ( (msz(3)) .and..not.(msz(4)) .and.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) .and..not.(ssz(2)) .and.(meqs(4,4)) ) then
          !
             temp = f4p_ql9("n",s3,s2,s1,s4,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
             !     
          ! permute the massive internal line (permu3)
          !
       else if  ( (msz(4)) .and..not.(msz(1)) .and.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) .and..not.(ssz(3)) .and.(meqs(1,1)) ) then
          !
             temp = f4p_ql9("n",s4,s3,s2,s1,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
          ! *********** case QCDLoop box 10 *****************
          !   
          !  note that limits s3,s4->0 are harmless, so do not require s3,s4 to be nonzero
          !
       else  if  ( (msz(1)) .and.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1)) .and..not.(ssz(2))  ) then
          !
          if  (ssz(4).and.meqs(3,2).and.meqs(3,3)) then 
             !   use function where limit is implemented analytically    
             temp = f4p_ql10a("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
             !
          else 
             !
             temp = f4p_ql10("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
             !     
          endif  ! end test for limit box 10a
          !   
          ! permute the massive internal line
          !
       else  if  ( (msz(2)) .and.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) .and..not.(ssz(3))  ) then
          !
          if  (ssz(1).and.meqs(4,3).and.meqs(4,4)) then 
             !   use function where limit is implemented analytically    
             temp = f4p_ql10a("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
             !
          else 
             !
             temp = f4p_ql10("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
             !     
          endif  ! end test for limit box 10a
          !   
       else  if  ( (msz(3)) .and.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) .and..not.(ssz(4))  ) then
          !
          if  (ssz(2).and.meqs(1,4).and.meqs(1,1)) then 
             !   use function where limit is implemented analytically    
             temp = f4p_ql10a("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
             !
          else 
             !
             temp = f4p_ql10("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
             !     
          endif  ! end test for limit box 10a
          !   
       else if  ( (msz(4)) .and.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) .and..not.(ssz(1))  ) then
          !
          if  (ssz(3).and.meqs(2,1).and.meqs(2,2)) then 
             !   use function where limit is implemented analytically    
             temp = f4p_ql10a("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
             !
          else 
             !
             temp = f4p_ql10("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
             !     
          endif  ! end test for limit box 10a
          !   
          ! *********** case QCDLoop box 10b *****************
          !~ m2^2 nonzero instead of m3^2 (in golem labelling) is also possible!
          !   
       else  if  ( (msz(1)) .and..not.(msz(2)) .and.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1)) .and..not.(ssz(4))  ) then
          !
          if  (ssz(2).and.meqs(2,3).and.meqs(2,4)) then 
             !   use function where limit is implemented analytically    
             temp = f4p_ql10a("n",s1,s4,s3,s2,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
             !
          else 
             !
             temp = f4p_ql10("n",s1,s4,s3,s2,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
             !  
          endif ! end test for limit box 10a
          !   
          ! permute the massive internal line (permu1)
          !
       else  if  ( (msz(2)) .and..not.(msz(3)) .and.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) .and..not.(ssz(1))  ) then
          !
          if  (ssz(3).and.meqs(3,4).and.meqs(3,1)) then 
             !   use function where limit is implemented analytically    
             temp = f4p_ql10a("n",s2,s1,s4,s3,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
             !
          else 
             !
             temp = f4p_ql10("n",s2,s1,s4,s3,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
             !     
          endif ! end test for limit box 10a
          !   
          ! permute the massive internal line (permu2)
          !
       else  if  ( (msz(3)) .and..not.(msz(4)) .and.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) .and..not.(ssz(2))  ) then
          !
          if  (ssz(4).and.meqs(4,1).and.meqs(4,2)) then 
             !   use function where limit is implemented analytically    
             temp = f4p_ql10a("n",s3,s2,s1,s4,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
             !        
          else 
             !
             temp = f4p_ql10("n",s3,s2,s1,s4,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
             !     
          endif ! end test for limit box 10a
          !   
          ! permute the massive internal line (permu3)
          !
       else if  ( (msz(4)) .and..not.(msz(1)) .and.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) .and..not.(ssz(3))  ) then
          !
          if  (ssz(1).and.meqs(1,2).and.meqs(1,3)) then 
             !   use function where limit is implemented analytically    
             temp = f4p_ql10a("n",s4,s3,s2,s1,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
             !        
          else 
             !
             temp = f4p_ql10("n",s4,s3,s2,s1,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
             !     
          endif ! end test for limit box 10a
          !   
          ! *********** case QCDLoop box 11 *****************
          !   
       else  if  ( (msz(1)) .and..not.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1)) .and.(meqs(2,2)) & 
            &     .and.(meqs(3,4)) ) then
          !
          temp = f4p_ql11("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(2)) .and..not.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) .and.(meqs(3,3)) & 
            &     .and.(meqs(4,1)) ) then
          !
          temp = f4p_ql11("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(3)) .and..not.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) .and.(meqs(4,4)) & 
            &     .and.(meqs(1,2)) ) then
          !
          temp = f4p_ql11("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( (msz(4)) .and..not.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) .and.(meqs(1,1)) & 
            &     .and.(meqs(2,3)) ) then
          !
          temp = f4p_ql11("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
          ! *********** case QCDLoop box 12 *****************
          !   
          ! limit p3^2 -> 0 is finite, taken care of in function_4p_ql12.f90
          ! limit p4^2 -> 0 is harmless, so do not restrict s4 to nonzero value
          !
       else  if  ( (msz(1)) .and..not.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1)) .and.(meqs(2,2))  ) then
          !
          temp = f4p_ql12("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(2)) .and..not.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) .and.(meqs(3,3))  ) then
          !
          temp = f4p_ql12("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(3)) .and..not.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) .and.(meqs(4,4)) ) then
          !
          temp = f4p_ql12("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( (msz(4)) .and..not.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) .and.(meqs(1,1))  ) then
          !
          temp = f4p_ql12("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
          ! *********** case QCDLoop box 12b *****************
          !~ TAKE INTO ACCOUNT MIRROR SYMMETRY, corrected 16.8.2011
             !~ mass ordering corrected 13.9.2011
          !   
      else  if  ( (msz(1)) .and..not.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1)) .and.(meqs(3,4))  ) then
          !
          temp = f4p_ql12("n",s1,s4,s3,s2,s23,s12,m1s,m3s,m2s,m4s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(2)) .and..not.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) .and.(meqs(4,1))  ) then
          !
          temp = f4p_ql12("n",s2,s1,s4,s3,s12,s23,m2s,m4s,m3s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(3)) .and..not.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) .and.(meqs(1,2)) ) then
          !
          temp = f4p_ql12("n",s3,s2,s1,s4,s23,s12,m3s,m1s,m4s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( (msz(4)) .and..not.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) .and.(meqs(2,3))  ) then
          !
          temp = f4p_ql12("n",s4,s3,s2,s1,s12,s23,m4s,m2s,m1s,m3s,0,0,0,0,mu2_scale_par)
          !     
          ! *********** case QCDLoop box 13 *****************
          !   
          ! limit p3^2 -> 0 is finite, taken care of in function_4p_ql13.f90
          ! limits p4^2,p2^2 -> 0 are harmless, so do not restrict s4,s2 to nonzero value
          !
       else  if  ( (msz(1)) .and..not.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1))  ) then
          !
          temp = f4p_ql13("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(2)) .and..not.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) ) then
          !
          temp = f4p_ql13("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(3)) .and..not.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) ) then
          !
          temp = f4p_ql13("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( (msz(4)) .and..not.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) ) then
          !
          temp = f4p_ql13("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
          ! *********** case QCDLoop box 14 *****************
          !   
       else  if  ( .not.(msz(1)) .and.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (meqs(1,1)) .and.(meqs(1,2)) & 
            &     .and.(meqs(3,3)) .and.(meqs(3,4)) ) then
          !
          temp = f4p_ql14("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( .not.(msz(2)) .and.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (meqs(2,2)) .and.(meqs(2,3)) & 
            &     .and.(meqs(4,4)) .and.(meqs(4,1)) ) then
          !
          temp = f4p_ql14("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( .not.(msz(3)) .and.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (meqs(3,3)) .and.(meqs(3,4)) & 
            &     .and.(meqs(1,1)) .and.(meqs(1,2)) ) then
          !
          temp = f4p_ql14("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( .not.(msz(4)) .and.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (meqs(4,4)) .and.(meqs(4,1)) & 
            &     .and.(meqs(2,2)) .and.(meqs(2,3)) ) then
          !
          temp = f4p_ql14("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
          ! *********** case QCDLoop box 15 *****************
          ! limit s2,s3->0 is finite, so do not impose condition on s2,s3
          !
       else  if  ( .not.(msz(1)) .and.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (meqs(1,1))  & 
            &     .and.(meqs(3,4)) ) then
          !
          temp = f4p_ql15("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( .not.(msz(2)) .and.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (meqs(2,2)) &
            &     .and.(meqs(4,1)) ) then
          !
          temp = f4p_ql15("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( .not.(msz(3)) .and.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (meqs(3,3)) & 
            &     .and.(meqs(1,2)) ) then
          !
          temp = f4p_ql15("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( .not.(msz(4)) .and.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (meqs(4,4))  & 
            &     .and.(meqs(2,3)) ) then
          !
          temp = f4p_ql15("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
          ! *********** case QCDLoop box 16 *****************
          !
          ! note that limits s2->0 and s3->0 are nonsingular, so do not require s2,s3 not=0
          !   
       else  if  ( .not.(msz(1)) .and..not.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (meqs(1,1))  & 
            &     .and.(meqs(3,4)) ) then
          !
          temp = f4p_ql16("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( .not.(msz(2)) .and..not.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (meqs(2,2))  & 
            &     .and.(meqs(4,1)) ) then
          !
          temp = f4p_ql16("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( .not.(msz(3)) .and..not.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (meqs(3,3))  & 
            &     .and.(meqs(1,2)) ) then
          !
          temp = f4p_ql16("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( .not.(msz(4)) .and..not.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (meqs(4,4))  & 
            &     .and.(meqs(2,3)) ) then
          !
          temp = f4p_ql16("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
       else 
          !
          ! changed to include LT option Jan2011
          ! use golem_avh_olo_qp or LT
!AC!           if (withlt) then
           !
!AC!           D0res = D0(real(s1,ki_lt),real(s2,ki_lt),real(s3,ki_lt),real(s4,ki_lt),&
!AC!                &    !AC!real(s12,ki_lt),real(s23,ki_lt),real(m4s,ki_lt),real(m1s,ki_lt),&
!AC!                &    real(m2s,ki_lt),real(m3s,ki_lt))
           !
!AC!          else ! use avholo
          !
             if (.not. olo) then
!             call avh_olo_onshell_qp(100._ki*epsilon(1._ki))
               call olo_onshell(real(1.e-10_ki, ki_avh))
               call olo_scale(real(sqrt(mu2_scale_par), ki_avh))
               olo=.true.
             end if
          !
            call olo_d0(D0olo,real(s1,ki_avh),real(s2,ki_avh),real(s3,ki_avh),real(s4,ki_avh),&
               &    real(s12,ki_avh),real(s23,ki_avh),real(m4s,ki_avh),real(m1s,ki_avh),&
               &    real(m2s,ki_avh),real(m3s,ki_avh))
            D0res = D0olo(0)
          !
!AC!  end if ! end if with lt
          !
          temp(5)= real(D0res)
          temp(6)= aimag(D0res)
          !
       end if ! end distuinguish different cases of internal masses
       !
    end if ! end test if internal masses are present
    !
    f4p_sca_r = temp
    !
    !
  end function f4p_sca_r
  !    
  !
  function f4p_sca_c(s_mat_c,b_pro)
    !
    complex(ki), intent (in), dimension(:,:) :: s_mat_c
    integer, intent (in) :: b_pro
    real(ki), dimension(6) :: f4p_sca_c,temp
    integer :: par1,par2,par3,par4
    integer :: m1,m2,m3,m4
    complex(ki) :: arg1,arg2,arg3,arg4,arg5,arg6
    complex(ki) :: m1s, m2s, m3s, m4s
    real(ki) :: s12,s23,s1,s2,s3,s4
    complex(ki_avh) :: D0res
    complex(ki_avh), dimension(0:2) :: D0olo
    complex(ki_avh) :: cp1,cp2,cp3,cp4,cp12,cp23,cm1,cm2,cm3,cm4
    integer, dimension(4) :: s
    integer :: pro_dim
    integer :: nb_cm
    logical, dimension(4) :: msz, ssz, msc
    logical, dimension(4,4) :: meqs
    logical :: avh_olo_div
    !
    ! mu2_scale_par is defined globally: 
    ! default mu2_scale_par=1 is set in paramtere.f90, 
    ! unless defined otherwise by user in his main program      
    !
    if (b_pro < 256) then
       pro_dim = bit_count(b_pro)
       s = bit_sets(b_pro*8:b_pro*8+pro_dim-1)
    else
       pro_dim = countb(b_pro)
       s = unpackb(b_pro,pro_dim)
    end if
    !
    m1 = s(1)
    m2 = s(2)
    m3 = s(3)
    m4 = s(4)
    !
    !
    arg1 = s_mat_c(m2,m4)
    arg2 = s_mat_c(m1,m3)
    arg3 = s_mat_c(m1,m4)  
    arg4 = s_mat_c(m1,m2)  
    arg5 = s_mat_c(m2,m3)  
    arg6 = s_mat_c(m3,m4)  
    !
    m1s = -s_mat_c(m1,m1)/2._ki
    m2s = -s_mat_c(m2,m2)/2._ki
    m3s = -s_mat_c(m3,m3)/2._ki
    m4s = -s_mat_c(m4,m4)/2._ki
    !
    msc(1) = (.not. equal_real(aimag(m1s),zero) )
    msc(2) = (.not. equal_real(aimag(m2s),zero) )
    msc(3) = (.not. equal_real(aimag(m3s),zero) )
    msc(4) = (.not. equal_real(aimag(m4s),zero) )
    !
    nb_cm = count(mask=msc .eqv. .true.)
    !
    where (msc) 
       !
       msz = .false.
       !
    elsewhere
       !
       msz = equal_real(real( (/ m1s,m2s,m3s,m4s /)  , ki), zero)
       !
    end where
    ! 
    s1 = real(arg3+m1s+m4s,ki)
    s2 = real(arg4+m1s+m2s,ki)
    s3 = real(arg5+m2s+m3s,ki)
    s4 = real(arg6+m3s+m4s,ki)
    !
    call cut_s(s1,m1s,m4s)
    call cut_s(s2,m1s,m2s)
    call cut_s(s3,m2s,m3s)
    call cut_s(s4,m3s,m4s)
    !    
    ssz(1) = equal_real(s1,zero)
    ssz(2) = equal_real(s2,zero)
    ssz(3) = equal_real(s3,zero)
    ssz(4) = equal_real(s4,zero)
    !
    !
    s12 = arg1+m4s+m2s
    s23 = arg2+m1s+m3s
    !
    call cut_s(s12,m4s,m2s)
    call cut_s(s23,m1s,m3s)
    !
    par1 = 0
    par2 = 0
    par3 = 0
    par4 = 0
    !
    temp(:) = 0._ki
    !
    meqs(:,:) = .false.
    !
    avh_olo_div = .false.
    !
    number_complex_masses: select case (nb_cm) 
       !
    case (0)
       !
       tab_erreur_par(1)%a_imprimer = .true.
       tab_erreur_par(1)%chaine = 'In f4p_sca_c call with zero complex masses!'
       call catch_exception(0)
       !
    case (1)  ! cases with one complex mass! only the following cases need to be considered! 
       !
    if ( msc(1) ) then
       !
       meqs(2,3) = equal_real(real(m2s,ki),s3)
       meqs(4,4) = equal_real(real(m4s,ki),s4)
       !
    else if ( msc(2) ) then
       !
       meqs(1,1) = equal_real(real(m1s,ki),s1)
       meqs(3,4) = equal_real(real(m3s,ki),s4)
       !
    else if (msc(3) ) then
       !
       meqs(2,2) = equal_real(real(m2s,ki),s2)
       meqs(4,1) = equal_real(real(m4s,ki),s1)
       !
    else if ( msc(4) ) then
       !
       meqs(1,2) = equal_real(real(m1s,ki),s2)
       meqs(3,3) = equal_real(real(m3s,ki),s3)
       !
    end if
    !
    ! ************************************************
    !  The following Integrals are not implemented
    !  for complex masses yet. A call to avh_olo is
    !  made instead!
    !     
    ! *********** case QCDLoop box 8 *****************
    !   
    ! limits s3,s4->0 are harmless, so do not require s3,s4 to be nonzero
    !
    if  ( (msz(1)) .and. (msz(2)) .and. .not.(msz(3)) &
         &     .and.(msz(4)) .and. (ssz(1)) .and. (ssz(2))  ) then
       !
       avh_olo_div = .true.       
       !temp = f4p_ql8("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
       !    
       ! permute the massive internal line
       !
    else  if  ( (msz(2)) .and.(msz(3)) .and..not.(msz(4)) &
         &     .and.(msz(1)) .and. (ssz(2)) .and. (ssz(3))   ) then
       !
       avh_olo_div = .true.        
       !temp = f4p_ql8("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
       !     
    else  if  ( (msz(3)) .and.(msz(4)) .and..not.(msz(1)) &
         &     .and.(msz(2)) .and. (ssz(3)) .and. (ssz(4))  ) then
       !
       avh_olo_div = .true. 
       !temp = f4p_ql8("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
       !     
    else if  ( (msz(4)) .and.(msz(1)) .and..not.(msz(2)) &
         &     .and.(msz(3)) .and. (ssz(4)) .and. (ssz(1))   ) then
       !
       avh_olo_div = .true. 
       !temp = f4p_ql8("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
       !
       !     
       ! *********** case QCDLoop box 10 *****************
       !   
       !  note that limits s3,s4->0 are harmless, so do not require s3,s4 to be nonzero
       !
    else  if  ( (msz(1)) .and.(msz(2)) .and..not.(msz(3)) &
         &     .and.(msz(4)) .and. (ssz(1)) .and..not.(ssz(2))  ) then
       !
       avh_olo_div = .true.
       !       
       !   !
       !   temp = f4p_ql10("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
       !   !     
       !   
       ! permute the massive internal line
       !
    else  if  ( (msz(2)) .and.(msz(3)) .and..not.(msz(4)) &
         &     .and.(msz(1)) .and. (ssz(2)) .and..not.(ssz(3))  ) then
       !
       avh_olo_div = .true. 
       !
       !   !
       !   temp = f4p_ql10("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
       !   !     
       !   
    else  if  ( (msz(3)) .and.(msz(4)) .and..not.(msz(1)) &
         &     .and.(msz(2)) .and. (ssz(3)) .and..not.(ssz(4))  ) then
       !
       avh_olo_div = .true. 
       !
       !   !
       !   temp = f4p_ql10("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
       !   !     
       !   
    else if  ( (msz(4)) .and.(msz(1)) .and..not.(msz(2)) &
         &     .and.(msz(3)) .and. (ssz(4)) .and..not.(ssz(1))  ) then
       !
       avh_olo_div = .true. 
       !
       !   !
       !   temp = f4p_ql10("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
       !   !     
       !   
       ! *********** case QCDLoop box 10b *****************
       !~ m2^2 nonzero instead of m3^2 (in golem labelling) is also possible!
       !   
    else  if  ( (msz(1)) .and..not.(msz(2)) .and.(msz(3)) &
         &     .and.(msz(4)) .and. (ssz(1)) .and..not.(ssz(4))  ) then
       !
       avh_olo_div = .true. 
       !
       !   !
       !   temp = f4p_ql10("n",s1,s4,s3,s2,s23,s12,m1s,m3s,m2s,m4s,0,0,0,0,mu2_scale_par)
       !   !  
       !   
       ! permute the massive internal line (permu1)
       !
    else  if  ( (msz(2)) .and..not.(msz(3)) .and.(msz(4)) &
         &     .and.(msz(1)) .and. (ssz(2)) .and..not.(ssz(1))  ) then
       !
       avh_olo_div = .true. 
       !
       !   !
       !   temp = f4p_ql10("n",s2,s1,s4,s3,s12,s23,m2s,m4s,m3s,m1s,0,0,0,0,mu2_scale_par)
       !   !     
       !   
       ! permute the massive internal line (permu2)
       !
    else  if  ( (msz(3)) .and..not.(msz(4)) .and.(msz(1)) &
         &     .and.(msz(2)) .and. (ssz(3)) .and..not.(ssz(2))  ) then
       !
       avh_olo_div = .true. 
       !
       !   !
       !   temp = f4p_ql10("n",s3,s2,s1,s4,s23,s12,m3s,m1s,m4s,m2s,0,0,0,0,mu2_scale_par)
       !   !     
       !   
       ! permute the massive internal line (permu3)
       !
    else if  ( (msz(4)) .and..not.(msz(1)) .and.(msz(2)) &
         &     .and.(msz(3)) .and. (ssz(4)) .and..not.(ssz(3))  ) then
       !
       avh_olo_div = .true. 
       !
       !   !
       !   temp = f4p_ql10("n",s4,s3,s2,s1,s12,s23,m4s,m2s,m1s,m3s,0,0,0,0,mu2_scale_par)
       !   !     
       !   
       !     
       ! *********** case QCDLoop box 12 *****************
       !   
       ! limit p3^2 -> 0 is finite, taken care of in function_4p_ql12.f90
       ! limit p4^2 -> 0 is harmless, so do not restrict s4 to nonzero value
       !
       else  if  ( (msz(1)) .and..not.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1)) .and.(meqs(2,2))  ) then
          !
          avh_olo_div = .true.                
          !
          ! temp = f4p_ql12("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(2)) .and..not.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) .and.(meqs(3,3))  ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql12("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(3)) .and..not.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) .and.(meqs(4,4)) ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql12("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( (msz(4)) .and..not.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) .and.(meqs(1,1))  ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql12("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
          ! *********** case QCDLoop box 13 *****************
          !   
          ! limit p3^2 -> 0 is finite, taken care of in function_4p_ql13.f90
          ! limits p4^2,p2^2 -> 0 are harmless, so do not restrict s4,s2 to nonzero value
          !
       else  if  ( (msz(1)) .and..not.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1))  ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql13("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(2)) .and..not.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql13("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(3)) .and..not.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql13("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( (msz(4)) .and..not.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql13("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
          !     
          ! *********** case QCDLoop box 16 *****************
          !
          ! note that limits s2->0 and s3->0 are nonsingular, so do not require s2,s3 not=0
          !   
       else  if  ( .not.(msz(1)) .and..not.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (meqs(1,1))  & 
            &     .and.(meqs(3,4)) ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql16("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( .not.(msz(2)) .and..not.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (meqs(2,2))  & 
            &     .and.(meqs(4,1)) ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql16("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( .not.(msz(3)) .and..not.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (meqs(3,3))  & 
            &     .and.(meqs(1,2)) ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql16("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( .not.(msz(4)) .and..not.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (meqs(4,4))  & 
            &     .and.(meqs(2,3)) ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql16("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !     
       end if
       !
    case (2) ! only one divergent box integral in this case!
       !     !  no meqs required!
       !
       ! *********** case QCDLoop box 13 *****************
       !   
       ! limit p3^2 -> 0 is finite, taken care of in function_4p_ql13.f90
       ! limits p4^2,p2^2 -> 0 are harmless, so do not restrict s4,s2 to nonzero value
       !
       if  ( (msz(1)) .and..not.(msz(2)) .and..not.(msz(3)) &
            &     .and.(msz(4)) .and. (ssz(1))  ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql13("n",s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(2)) .and..not.(msz(3)) .and..not.(msz(4)) &
            &     .and.(msz(1)) .and. (ssz(2)) ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql13("n",s2,s3,s4,s1,s23,s12,m2s,m3s,m4s,m1s,0,0,0,0,mu2_scale_par)
          !     
       else  if  ( (msz(3)) .and..not.(msz(4)) .and..not.(msz(1)) &
            &     .and.(msz(2)) .and. (ssz(3)) ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql13("n",s3,s4,s1,s2,s12,s23,m3s,m4s,m1s,m2s,0,0,0,0,mu2_scale_par)
          !     
       else if  ( (msz(4)) .and..not.(msz(1)) .and..not.(msz(2)) &
            &     .and.(msz(3)) .and. (ssz(4)) ) then
          !
          avh_olo_div = .true. 
          !
          ! temp = f4p_ql13("n",s4,s1,s2,s3,s23,s12,m4s,m1s,m2s,m3s,0,0,0,0,mu2_scale_par)
          !  
       end if
       !
    case default
       !
       avh_olo_div = .false.
       !
    end select number_complex_masses
    !
          ! changed to include LT option Jan2011
          ! use golem_avh_olo_qp or LT in finite case
!AC!           if (withlt.and..not.avh_olo_div) then
           !
!AC!           D0res = D0C(real(s1,ki_lt),real(s2,ki_lt),real(s3,ki_lt),real(s4,ki_lt),&
!AC!                &    real(s12,ki_lt),real(s23,ki_lt),m4s,m1s,m2s,m3s)
           !
!AC!     temp(5)= real(D0res,ki)
!AC!     temp(6)= aimag(D0res)
       !
!AC!          else 
    ! use golem_avh_olo_qp
    !
    if (.not. olo) then
!       call avh_olo_onshell_qp(100._ki*epsilon(1._ki))
       call avh_olo_onshell_qp(1.e-10_ki)
       call avh_olo_mu_set_qp(sqrt(mu2_scale_par))
       olo=.true.
    end if
    !
    cp1 = cmplx(s1,0._ki_avh,ki_avh)
    cp2 = cmplx(s2,0._ki_avh,ki_avh)
    cp3 = cmplx(s3,0._ki_avh,ki_avh)
    cp4 = cmplx(s4,0._ki_avh,ki_avh)
    cp12 = cmplx(s12,0._ki_avh,ki_avh)
    cp23 = cmplx(s23,0._ki_avh,ki_avh)
    !
    cm1 = cmplx(m1s,kind=ki_avh)
    cm2 = cmplx(m2s,kind=ki_avh)
    cm3 = cmplx(m3s,kind=ki_avh)
    cm4 = cmplx(m4s,kind=ki_avh)
    !    
      call olo_d0(D0olo,cp1,cp2,cp3,cp4,cp12,cp23,cm4,cm1,cm2,cm3)
    !
    !
      if (avh_olo_div) then
       !
       temp(1) = real(D0olo(2),ki)
       temp(2) = aimag(D0olo(2) )
       temp(3) = real(D0olo(1),ki)
       temp(4) = aimag(D0olo(1) )
       temp(5) = real(D0olo(0),ki)
       temp(6) = aimag(D0olo(0) )
       !
      else
       !
       D0res = D0olo(0)
          !
       temp(5)= real(D0res,ki)
       temp(6)= aimag(D0res)
       !
       !
       ! 
      end if !  ends if (avh_olo_div)
!AC!  end if ! When using LT, this ends  if (withlt.and..not.avh_olo_div)

    !
    f4p_sca_c = real(temp,ki)
    !
  end function f4p_sca_c
  !    
  !~********************************************************************
  !
  !
end module golem_generic_function_4p_qp

