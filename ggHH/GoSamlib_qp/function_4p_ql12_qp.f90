! 
!****h* src/integrals/four_point/function_4p_ql12
! NAME
!
!  Module function_4p_ql12
!
! USAGE
!
!  use golem_function_4p_ql12_qp
!
! DESCRIPTION
!
!  This module computes the n-dimensional four point function
!  corresponding to QCDLoop box number 12
!  implemented only without Feynman parameters in the numerator!
!
! OUTPUT
!
!  This module exports the functions f4p_ql12, f4p_ql12_c 
!  all the other subroutines/functions of this module are private
!
! USES
!
!  * precision (src/module/precision_golem.f90)
!  * numerical_evaluation (src/numerical/mod_numeric.f90)
!  * dilogarithme (src/module/zdilog.f90)
!  * logarithme (src/module/z_log.f90)
!  * constante (src/module/constante.f90)
!  * parametre (src/module/parametre.f90)
!  * array (src/module/array.f90)
!  * sortie_erreur (src/module/sortie_erreur.f90)
!  * generic_function_3p (src/integrals/three_point/generic_function_3p.f90)
!  * translate (src/module/translate.f90)
!  * more_integ_info (src/module/more_integ_info.f90)
!
!*****
module golem_function_4p_ql12_qp
  !
  use golem_precision_golem_qp
  use golem_numerical_evaluation_qp
  use golem_dilogarithme_qp
  use golem_logarithme_qp
  use golem_constante_qp
  use golem_parametre_qp
  use golem_array_qp
  use golem_sortie_erreur_qp
  use golem_generic_function_3p_qp
  use golem_translate_qp
  !~ use more_integ_info
  use golem_equal_qp
  use golem_dilogarithme_qp
  implicit none
  !
  private 
  !
  real(ki) :: s23_glob,s24_glob,s34_glob,s13_glob
  real(ki) :: eps_glob
  integer :: par1_glob,par2_glob,par3_glob,par4_glob
  character (len=1) :: dim_glob
  !
  real(ki), dimension(4) :: b
  real(ki) :: sumb
  real(ki), dimension(4,4) :: invs,s_mat
  integer, dimension(4) :: par
  integer, dimension(4) :: s = (/1,2,3,4/)
  real(ki) :: lamb
  !
  logical, dimension(:), allocatable :: deja_calcule
  real(ki),dimension(:,:), allocatable :: resultat
  logical, dimension(:,:), allocatable :: deja_calcule3
  real(ki),dimension(:,:,:), allocatable :: resultat3
  logical, dimension(:,:), allocatable :: deja_calcule3_np2
  real(ki),dimension(:,:,:), allocatable :: resultat3_np2
  logical, dimension(:,:,:), allocatable :: deja_calcule33
  real(ki),dimension(:,:,:,:), allocatable :: resultat33
  !
  !
  public :: f4p_ql12,f4p_ql12_c
  !
  contains
    !
    !****f* src/integrals/four_point/function_4p_ql12/f4p_ql12
    ! NAME
    !
    !  Function f4p_ql12
    !
    ! USAGE
    !
    !  real_dim_4 = f4p_ql12(dim,s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,par1,par2,par3,par4,mu2)
    !
    ! DESCRIPTION
    !
   !  computes the n-dimensional four point function
   !  with 1 internal mass and two massive on-shell legs, 
   !  corresponding to QCDLoop box number 6
    !
    ! INPUTS
    !
    !  * dim -- a character , dim="n" (4-2*eps) - dimensional 
    !  * s12 -- a real (type ki), the S matrix element 2,4 +m1s+m2s
    !  * s23 -- a real (type ki), the S matrix element 2,3 +m2s+m3s
    !  * s1 -- a real (type ki), the S matrix element 1,4
    !  * s2 -- a real (type ki), the S matrix element 2,1
    !  * s3 -- a real (type ki), the S matrix element 3,2
    !  * s4 -- a real (type ki), the S matrix element 4,3
    !  * m1s -- a real (type ki), -1/2*the S matrix element 1,1
    !  * m2s -- a real (type ki), -1/2*the S matrix element 2,2
    !  * m3s -- a real (type ki), -1/2*the S matrix element 3,3
    !  * m4s -- a real (type ki), -1/2*the S matrix element 4,4
    !  * par1 -- an integer, the label of the fourth Feynman parameter, if none, put 0
    !  * par2 -- an integer, the label of the third Feynman parameter, if none, put 0
    !  * par3 -- an integer, the label of the second Feynman parameter, if none, put 0
    !  * par4 -- an integer, the label of the first Feynman parameter, if none, put 0
    !
    !  Be careful that, in this function, the arguments par1, par2, par3 and par4
    !  are mandatory, otherwise use the generic four point function f4p_np2 (f4p_np4).
    !  
    !
    ! SIDE EFFECTS
    !
    !  No side effects
    !
    ! RETURN VALUE
    !
    !  this function returns an array of four reals (type ki) corresponding to the 
    !  real imaginary part of 1/epsilon coefficient, real, imaginary part of the 
    !  finite part (as epsilon --> 0)
    !
    ! EXAMPLE
    !
    !
    !*****
    function f4p_ql12(dim,s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,par1,par2,par3,par4,mu2)
      !
      character (len=1), intent (in) :: dim
      real(ki), intent (in) :: s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,mu2
      integer, intent (in) :: par1,par2,par3,par4 
      real(ki), dimension(6) :: f4p_ql12
      !
      integer :: nb_par
      real(ki) :: norma,coupure_4p_ql12
      !real(ki) :: plus_grand
      !complex(ki) :: resto,abserro
      !
      par = (/par1,par2,par3,par4/)
      !
      s_mat(1,:) = (/-m1s*2._ki,s2-m1s-m2s,s23-m1s-m3s,s1-m1s-m4s/)
      s_mat(2,:) = (/s2-m1s-m2s,-m2s*2._ki,s3-m2s-m3s,s12-m2s-m4s/)
      s_mat(3,:) = (/s23-m1s-m3s,s3-m2s-m3s,-m3s*2._ki,s4-m3s-m4s/)
      s_mat(4,:) = (/s1-m1s-m4s,s12-m2s-m4s,s4-m3s-m4s,-m4s*2._ki/)
      ! on redefinit la matrice S de telle facon a ce que ses elements
      ! soient entre -1 et 1
    !  plus_grand = maxval(array=abs(s_mat))
    !  s_mat = s_mat/plus_grand
      !
      b(1) = (s_mat(1,3)*s_mat(2,4)-s_mat(1,3)*s_mat(2,3)&
            &-s_mat(1,3)*s_mat(3,4)+2._ki*s_mat(2,3)*s_mat(3,4))&
            &/(s_mat(1,3)**2*s_mat(2,4))
      b(2) = (s_mat(1,3)-s_mat(3,4))/(s_mat(1,3)*s_mat(2,4))
      b(3) = 1._ki/s_mat(1,3)
      b(4) = (s_mat(1,3)-s_mat(2,3))/(s_mat(1,3)*s_mat(2,4))
      !
      sumb = 2._ki*(s_mat(1,3)**2-s_mat(1,3)*s_mat(2,3)&
            &-s_mat(1,3)*s_mat(3,4)+s_mat(1,3)*s_mat(2,4)&
            &+s_mat(2,3)*s_mat(3,4))/(s_mat(1,3)**2*s_mat(2,4))
    !
      !
      invs(1,1) = 2._ki*s_mat(2,3)/s_mat(2,4)*s_mat(3,4)/s_mat(1,3)**2
      invs(1,2) = -1._ki/s_mat(1,3)/s_mat(2,4)*s_mat(3,4)
      invs(1,3) = 1._ki/s_mat(1,3)
      invs(1,4) = -1._ki/s_mat(1,3)*s_mat(2,3)/s_mat(2,4)
      invs(2,1) = -1._ki/s_mat(1,3)/s_mat(2,4)*s_mat(3,4)
      invs(2,2) = 0._ki
      invs(2,3) = 0._ki
      invs(2,4) = 1._ki/s_mat(2,4)
      invs(3,1) = 1._ki/s_mat(1,3)
      invs(3,2) = 0._ki
      invs(3,3) = 0._ki
      invs(3,4) = 0._ki
      invs(4,1) = -1._ki/s_mat(1,3)*s_mat(2,3)/s_mat(2,4)
      invs(4,2) = 1._ki/s_mat(2,4)
      invs(4,3) = 0._ki
      invs(4,4) = 0._ki
      !
      lamb = s_mat(1,3)**2-s_mat(1,3)*s_mat(2,3)&
            &-s_mat(1,3)*s_mat(3,4)+s_mat(1,3)*s_mat(2,4)&
            &+s_mat(2,3)*s_mat(3,4)
      !
      nb_par = count(mask=par/=0)
      !
      if (nb_par == 0) then
        norma = 1._ki/6._ki
      else if (nb_par == 1) then
        norma = 1._ki/24._ki
      else
        norma = 0._ki
      end if
      !
      ! memory allocation to save time in the recursion
      !
      allocate(deja_calcule(5))
      allocate(resultat(5,2))
      allocate(deja_calcule3(4,5))
      allocate(resultat3(4,5,6))
      allocate(deja_calcule3_np2(4,5))
      allocate(resultat3_np2(4,5,4))
      allocate(deja_calcule33(4,5,5))
      allocate(resultat33(4,5,5,6))
      !
      ! initialisation
      !
      deja_calcule = .false.
      resultat = 0._ki
      deja_calcule3 = .false.
      resultat3 = 0._ki
      deja_calcule3_np2 = .false.
      resultat3_np2 = 0._ki
      deja_calcule33 = .false.
      resultat33 = 0._ki
      !
      f4p_ql12 = 0._ki
      coupure_4p_ql12 = 0._ki
      !
      if ( (rat_or_tot_par%rat_selected) .and. (abs(lamb) <= coupure_4p_ql12) ) then
        tab_erreur_par(1)%a_imprimer = .true.
        tab_erreur_par(1)%chaine = 'In function f4p_ql12 (in file f4p_ql12.f90): &
        &the flag rat to compute the rational part is on &
        &and the program reachs a region of phase space in &
        &which det(G) = 0  Becareful that the rational part &
        &is not well behaved in this region&
        &Nevertheless if the user wants to  go on, he has to &
        &reduce the value of the parameter coupure_4p_ql12'
        call catch_exception(0)
      end if
      !
      if (abs(sumb) > coupure_4p_ql12) then
        !
        ! analytic computation
        !
        if (dim == "n") then
          !
	  ! a4p_ql12_n is n-dim, not (n+2)-dim !!!
	  ! 
         f4p_ql12= a4p_ql12_n(s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,par1,par2,par3,par4,mu2)
          !
        else 
	  !
	  !~ call print_error('In function f4p_ql12: box called with wrong dimension')
          tab_erreur_par(1)%a_imprimer = .true.
          tab_erreur_par(1)%chaine = 'In function f4p_ql12: box called with wrong dimension'
          call catch_exception(0)
          !
        end if
        !
      else
        !
        !~ call print_error('numerical calculation of f4p_ql12 not implemented')
        tab_erreur_par(1)%a_imprimer = .true.
        tab_erreur_par(1)%chaine = 'numerical calculation of f4p_ql12 not implemented'
        call catch_exception(0)
        !
      end if
      !
      ! on libere la memoire
      !
      deallocate(deja_calcule)
      deallocate(resultat)
      deallocate(deja_calcule3)
      deallocate(resultat3)
      deallocate(deja_calcule3_np2)
      deallocate(resultat3_np2)
      deallocate(deja_calcule33)
      deallocate(resultat33)
      !
    end function f4p_ql12
    !
    !****f* src/integrals/four_point/function_4p_ql12/f4p_ql12_c
    ! NAME
    !
    !  Function f4p_ql12_c
    !
    ! USAGE
    !
    !  complex_dim_4 = f4p_ql12_c(dim,s24,s13,s23,s34,par1,par2,par3,par4,mu2)
    !
    ! DESCRIPTION
    !
    !  This function also computes  the function f4p_ql12
    !
    ! INPUTS
    !
    !  * dim -- a character, dim="n" 
    !  * s12 -- a real (type ki), the S matrix element 2,4 +m1s+m2s
    !  * s23 -- a real (type ki), the S matrix element 2,3 +m2s+m3s
    !  * s1 -- a real (type ki), the S matrix element 1,4
    !  * s2 -- a real (type ki), the S matrix element 2,1
    !  * s3 -- a real (type ki), the S matrix element 3,2
    !  * s4 -- a real (type ki), the S matrix element 4,3
    !  * m1s -- a real (type ki), -1/2*the S matrix element 1,1
    !  * m2s -- a real (type ki), -1/2*the S matrix element 2,2
    !  * m3s -- a real (type ki), -1/2*the S matrix element 3,3
    !  * m4s -- a real (type ki), -1/2*the S matrix element 4,4
    !  * par1 -- an integer, the label of the fourth Feynman parameter, if none, put 0
    !  * par2 -- an integer, the label of the third Feynman parameter, if none, put 0
    !  * par3 -- an integer, the label of the second Feynman parameter, if none, put 0
    !  * par4 -- an integer, the label of the first Feynman parameter, if none, put 0
    !  
    !
    ! SIDE EFFECTS
    !
    !  No side effects
    !
    ! RETURN VALUE
    !
    !  this function returns an array of two complexs (type ki) corresponding to the 
    !   1/epsilon coefficient and the finite part (as epsilon --> 0)
    !
    ! EXAMPLE
    !
    !  see function f4p_ql12
    !
    !*****
    function f4p_ql12_c(dim,s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,par1,par2,par3,par4,mu2)
      !
      character (len=1), intent (in) :: dim
      real(ki), intent (in) :: s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,mu2
      integer, intent (in) :: par1,par2,par3,par4
      complex(ki), dimension(6) :: f4p_ql12_c
      !
      real(ki), dimension(6) :: res4
      !
      res4 = f4p_ql12(dim,s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,par1,par2,par3,par4,mu2)
      call to_complex(res4,f4p_ql12_c)
      !
    end function f4p_ql12_c
    !
    !****if* src/integrals/four_point/function_4p_ql12/a4p_ql12_n
    ! NAME
    !
    !  recursive function a4p_ql12_n
    !
    ! USAGE
    !
    !  real_dim_4 = a4p_ql12_n(s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,par1,par2,par3,par4,mu2)
    !
    ! DESCRIPTION
    !
    !  This function is the core for the analytic computation of the (4-2*eps)-dimensional
    !  four point function corresponding to box 6 of QCDLoop
    !
    !
    ! INPUTS
    !
    !  * s12 -- a real (type ki), the S matrix element 2,4 +m1s+m2s
    !  * s23 -- a real (type ki), the S matrix element 2,3 +m2s+m3s
    !  * s1 -- a real (type ki), the S matrix element 1,4
    !  * s2 -- a real (type ki), the S matrix element 2,1
    !  * s3 -- a real (type ki), the S matrix element 3,2
    !  * s4 -- a real (type ki), the S matrix element 4,3
    !  * m1s -- a real (type ki), -1/2*the S matrix element 1,1
    !  * m2s -- a real (type ki), -1/2*the S matrix element 2,2
    !  * m3s -- a real (type ki), -1/2*the S matrix element 3,3
    !  * m4s -- a real (type ki), -1/2*the S matrix element 4,4
    !  * par1 -- an integer, the label of the fourth Feynman parameter, if none, put 0
    !  * par2 -- an integer, the label of the third Feynman parameter, if none, put 0
    !  * par3 -- an integer, the label of the second Feynman parameter, if none, put 0
    !  * par4 -- an integer, the label of the first Feynman parameter, if none, put 0
    !  
    !
    ! SIDE EFFECTS
    !
    !  No side effects
    !
    ! RETURN VALUE
    !
    !  this function returns an array of four reals (type ki) corresponding to the 
    !  real and imaginary parts of the 1/eps part and finite part 
    !
    ! EXAMPLE
    !
    !
    !
    !*****
    recursive function a4p_ql12_n(s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,&
     & par1,par2,par3,par4,mu2) result(res_4p_ql12_n)
      !
      real(ki), intent (in) :: s1,s2,s3,s4,s12,s23,m1s,m2s,m3s,m4s,mu2
      integer, intent (in) :: par1,par2,par3,par4
      real(ki), dimension(6) :: res_4p_ql12_n
      !
      !integer, dimension(3) :: smj,sm1
      !integer :: j
      integer :: nb_par_loc
      integer, dimension(4) :: par_loc,par_plus
      real(ki) :: del,m3sq,m4sq,deno,m3mu,s3cut
      complex(ki) :: ds12,ds23,dp3,dp4,dm3,dm4,logm3,logm4
      complex(ki) :: logmu3,logmu4
      !complex(ki) :: logsmu, logsm, test1,test2,test3,test4,test0
      complex(ki) :: eta1,eta2,anacon1,anacon2,eta3,anacon3
      complex(ki) :: gaplus43,gaplus34,gaminus43,gaminus34,m34,m43
!
      par_loc = (/par1,par2,par3,par4/)
      par_plus = par_loc+1
      nb_par_loc = count(mask=par_loc/=0)
      !
      ! only the scalar box  is implemented
      !
      if (nb_par_loc == 0) then
	!
      del=10*epsilon(1._ki)
      s3cut=1.e-8_ki
      !
      ! relabel to QCDL conventions
      m3sq=m2s
      m4sq=m3s
      dm3=m2s-i_*del
      dm4=m3s-i_*del
      !
      ds12=s12+i_*del
      ds23=s23+i_*del
      dp3= s3 +i_*del;
      dp4= s4 +i_*del;
!
      logm3=log((dm3-ds12)/dm3) 
      logm4=log((dm4-ds23)/dm3) 
      logmu3=log(dm3/mu2) 
      logmu4=log(dm4/mu2) 
      m3mu=sqrt(m3sq*mu2)
!
      deno=(s12-m3sq)*(s23-m4sq)
      m34=1._ki-(dm3-dm4)/dp3
      m43=1._ki-(dm4-dm3)/dp3
      gaplus34=(m34+Sqrt(m34**2-4*dm4/dp3))/2._ki
      gaminus34=(m34-Sqrt(m34**2-4*dm4/dp3))/2._ki
      gaplus43=(m43+Sqrt(m43**2-4*dm3/dp3))/2._ki
      gaminus43=(m43-Sqrt(m43**2-4*dm3/dp3))/2._ki
 !  
      eta1=log( (dm4-dp4)/(dm3-ds12)*gaplus43/(gaplus43-1._ki) ) &
     &   - log( (dm4-dp4)/(dm3-ds12) ) - log( gaplus43/(gaplus43-1._ki) )
      eta2=log( (dm4-dp4)/(dm3-ds12)*gaminus43/(gaminus43-1._ki) ) &
     &   - log( (dm4-dp4)/(dm3-ds12) ) - log( gaminus43/(gaminus43-1._ki) )
      eta3=log( (dm4-dp4)/(dm3-ds12)*dm3/dm4 ) &
     &   - log( (dm4-dp4)/(dm3-ds12) ) - log( dm3/dm4 )
      anacon1=cdilog(1._ki-(dm4-dp4)/(dm3-ds12)*gaplus43/(gaplus43-1._ki))+ &
     &        eta1*log(1._ki-(dm4-dp4)/(dm3-ds12)*gaplus43/(gaplus43-1._ki))
      anacon2=cdilog(1._ki-(dm4-dp4)/(dm3-ds12)*gaminus43/(gaminus43-1._ki))+ &
     &        eta2*log(1._ki-(dm4-dp4)/(dm3-ds12)*gaminus43/(gaminus43-1._ki))
      anacon3=cdilog(1._ki-(dm4-dp4)/(dm3-ds12)*dm3/dm4)+ &
     &        eta3*log(1._ki-(dm4-dp4)/(dm3-ds12)*dm3/dm4)
 !
      ! case p3^2 > delta
    if (abs(s3) > s3cut) then
      !
      res_4p_ql12_n(1) = 1._ki/2._ki/deno
      res_4p_ql12_n(2) = 0._ki
      res_4p_ql12_n(3) = real( -(logm3+log((dm4-ds23)/(dm4-dp4))+logmu3/2._ki )/deno )
      res_4p_ql12_n(4) = aimag( -(logm3+log((dm4-ds23)/(dm4-dp4))+logmu3/2._ki )/deno )
      res_4p_ql12_n(5) = real( (2*log((dm4-ds23)/m3mu)*log((dm3-ds12)/m3mu)  &
     & -(log((dm4-dp4)/m3mu))**2 - Pi**2/12 &
     & +log((dm4-dp4)/(dm3-ds12))*log(dm4/dm3)  &
     &  -log(gaplus34/(gaplus34-1._ki))**2/2._ki  &
     &  -log(gaminus34/(gaminus34-1._ki))**2/2._ki &
     & -2*cdilog(1._ki-(dm4-dp4)/(dm4-ds23))-anacon1-anacon2)/deno )
      res_4p_ql12_n(6) = aimag( (2*log((dm4-ds23)/m3mu)*log((dm3-ds12)/m3mu)  &
     & -(log((dm4-dp4)/m3mu))**2  &
     & +log((dm4-dp4)/(dm3-ds12))*log(dm4/dm3)  &
     &  -log(gaplus34/(gaplus34-1._ki))**2/2._ki  &
     &  -log(gaminus34/(gaminus34-1._ki))**2/2._ki &
     & -2*cdilog(1._ki-(dm4-dp4)/(dm4-ds23))-anacon1-anacon2)/deno )
      !
      else ! limit p3^2 -> 0
      !
      res_4p_ql12_n(1) = 1._ki/2._ki/deno
      res_4p_ql12_n(2) = 0._ki
      res_4p_ql12_n(3) = real( -(logm3+log((dm4-ds23)/(dm4-dp4))+logmu3/2._ki )/deno )
      res_4p_ql12_n(4) = aimag( -(logm3+log((dm4-ds23)/(dm4-dp4))+logmu3/2._ki )/deno )
      res_4p_ql12_n(5) = real( (2*log((dm4-ds23)/m3mu)*log((dm3-ds12)/m3mu)  &
     & -(log((dm4-dp4)/m3mu))**2 - Pi**2/12 &
     & +log((dm4-dp4)/(dm3-ds12))*log(dm4/dm3)  &
     &  -log(dm4/dm3)**2/2._ki  &
     & -2*cdilog(1._ki-(dm4-dp4)/(dm4-ds23)) & 
     & -   cdilog(1._ki-(dm4-dp4)/(dm3-ds12)) &
     & -   cdilog(1._ki-(dm4-dp4)/(dm3-ds12)*dm3/dm4) )/deno )
      res_4p_ql12_n(6) = aimag( (2*log((dm4-ds23)/m3mu)*log((dm3-ds12)/m3mu)  &
     & -(log((dm4-dp4)/m3mu))**2  &
     & +log((dm4-dp4)/(dm3-ds12))*log(dm4/dm3)  &
     &  -log(dm4/dm3)**2/2._ki  &
     &  -2*cdilog(1._ki-(dm4-dp4)/(dm4-ds23)) & 
     &  -   cdilog(1._ki-(dm4-dp4)/(dm3-ds12)) &
     &  -   anacon3 )/deno )
      !
      end if  ! end p3^2 > s3cut
      !
      else 
    ! 
      	  !~ call print_error('In function f4p_ql12: only scalar case available for this box')
        tab_erreur_par(1)%a_imprimer = .true.
        tab_erreur_par(1)%chaine = 'In function f4p_ql12: only scalar case available for this box'
        call catch_exception(0)
   !
      end if
      !
    end function a4p_ql12_n
    !
    !
end module golem_function_4p_ql12_qp
!
