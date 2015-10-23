CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C                tens_red5 = 5-point tensors
C    (Dieter Zeppenfeld and Giuseppe Bozzi - November 2006)
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      subroutine tens_red5(psq, qsq, lsq, tsq,
     #                     pq, pl, pt, ql, qt, lt, 
     #                     D0_2345,D0_1345,D0_1245,D0_1235,D0_1234,
     #                     Dij_2345,Dij_1345,Dij_1245,Dij_1235,Dij_1234,
     #                     E0, 
     #                     Eij)
      implicit none
      double precision psq, qsq, lsq, tsq,
     #     pq, pl, pt, ql, qt, lt
      double complex D0_2345,D0_1345,D0_1245,D0_1235,D0_1234
      double complex Dij_2345(3,13),Dij_1345(3,13),Dij_1245(3,13),
     #     Dij_1235(3,13),Dij_1234(3,13)
      double complex E0, Eij(4,46), Eijp(4,46), Eijpp(4,46), Eijo(4,46)
c
c  Determine the Passarino-Veltman(PV) tensor decomposition for the four-point
c  tensor integrals.
c  Denner-Dittmaier(DD) reduction formalism (hep-ph/0509141), overcoming the
c  problem of small Gram determinants, has been used.
c  Step 1) express DD D-coefficients in function of PV D-coefficients
c          (this is done in d2pvtodd subroutine) 
c  Step 2) use DD reduction formalism to obtain the E-coefficients
c          (this is done in this subroutine)
c  Step 3) go back from DD E-coefficients to PV E-coefficients
c          (this is done in this subroutine)
c                                                             d^4k
c   E0; E_mu; E_mu,nu; E_mu,nu,rho; E_mu,nu,rho_sig  =  Int -------
c                                                           (2pi)^4
c
c   1; k_mu; k_mu k_nu; k_mu k_nu k_rho; k_mu k_nu k_rho k_sig
c --------------------------------------------------------------------------
c   k^2  (k+p)^2  (k+p+q)^2  (k+p+q+l)^2  (k+p+q+l+t)^2
c
c  with
c
c   E_mu = p_mu E11  +  q_mu E12  +  l_mu E13  +  t_mu E14
c
c   E_munu = p_mu p_nu E21 + q_mu q_nu E22 + ...
c
c
C INPUT:  psq, pq,...                     kinematics invariants
c         D0_1345 = D00(p+q,l,t)          scalar 4-point functions
c         D0_1245 = D00(p,q+l,t)          in the PV notation
c         D0_1234 = D00(p,q,l)
c         D0_1235 = D00(p,q,l+t)      
c         D0_2345 = D00(q,l,t)

C         Dij_1235(n,m) = D_nm(1,2,3,5) ....    higher D_nm form factors
C                                               as in tens_red3 and tens_red4
c         E0 = E0(p,q,l,t)                      scalar five point function
c
c OUTPUT: Eij(n,m) = E_nm                    form factors in the tensor 
c                                            integrals a la PV
c         nm = 11, 12, 13, 14                ff"s for E_mu
c         nm = 21, 22, 23, ..., 211    ff"s for E_munu
c         nm = 31, 32, 33, ..., 323, 324     ff"s for E_mu,nu,rho
c         nm = 41, 42, 43, ..., 445, 446
c
      double complex R(1:4),res(1:4)

      double precision s02,s03,s12,s13,s14,s23,s24,s34,  s01,s04,
     1       detx4,detx01t,detx02t,detx03t,detx04t,detx00t
      double precision x4(0:4,0:4), x4t(0:4,0:4), x4tt(0:4,0:4,0:4,0:4)
      double complex dd1(4,0:4), dd1n(4,0:4), ed2(4,4), dd2(4,4,0:4), 
     1           ed3(4,4,4), xed3(4,4,4), dd300(4,0:4), ed300(4),
     1           dd3(4,4,4,0:4), dd400(4,4,0:4), dd40000(0:4),
     1           xed4(4,4,4,4), ed4(4,4,4,4), ed400(4,4), ed40000,
     1           xed400(4,4), yed400(4,4)
      double complex zz(4,3)
      integer i,j,k,l
      logical debug, lwr
      parameter (debug=.false.,lwr=.false.)
      character*20 text

c Quantities defined in Section 2 of DD paper

c p1 = p          with p.p = 0
c p2 = p+q
c p3 = p+q+l
c p4 = p+q+l+t    with p4.p4=0
      if(psq.ne.0d0) then
         print*," psq must be zero. Here psq = ",psq
      endif
      s04 = psq+qsq+lsq+tsq+2*(pq+pl+pt+ql+qt+lt)
c      if (lwr) print*," p4.p4 = s04 =",s04
c s02:=p2.p2;    
      s02=2*pq+psq+qsq
c s03:=p3.p3;
      s03=lsq+2*pl+2*pq+psq+2*ql+qsq
c s12:=(p2-p1).(p2-p1);
      s12=qsq
c s13:=(p3-p1).(p3-p1);
      s13=lsq+2*ql+qsq
c s14:=(p4-p1).(p4-p1);
      s14=lsq+2*lt+2*ql+qsq+2*qt+tsq
c s23:=(p2-p3).(p2-p3);
      s23=lsq
c s24:=(p2-p4).(p2-p4);
      s24=lsq+2*lt+tsq
c s34:=(p3-p4).(p3-p4);
      s34=tsq
c detx4:=det(x5);
      detx4=2*s14*(s02**2*s13*s34-s02*s03*s12*s34-s02*s03*s13*s24+
     . s02*s03*s14*s23+s03**2*s12*s24)
c detx01t:= -det(xt1);
      detx01t=s02**2*s13*s34+s02**2*s14*s34-s02**2*s34**2-s02*s03*s12
     . *s34-s02*s03*s13*s24+2*s02*s03*s14*s23-s02*s03*s14*s24-s02*
     . s03*s14*s34+2*s02*s03*s24*s34+s02*s12*s34**2-s02*s13*s24*s34
     . -s02*s14*s23*s34+s03**2*s12*s24+s03**2*s14*s24-s03**2*s24**2-
     . s03*s12*s24*s34+s03*s13*s24**2-s03*s14*s23*s24
c detx02t:= det(xt2);
      detx02t=s14*(-s02*s03*s13+s02*s03*s14-s02*s03*s34+2*s02*s13*
     . s34+s03**2*s12-s03**2*s14+s03**2*s24-s03*s12*s34-s03*s13*s24+
     . s03*s14*s23)
c detx03t:= -det(xt3);
      detx03t=s14*(s02**2*s13-s02**2*s14+s02**2*s34-s02*s03*s12+s02*
     . s03*s14-s02*s03*s24-s02*s12*s34-s02*s13*s24+s02*s14*s23+2*
     . s03*s12*s24)
c detx04t:= det(xt4);
      detx04t=-s02**2*s13**2+s02**2*s13*s14+s02**2*s13*s34+2*s02*
     . s03*s12*s13-s02*s03*s12*s14-s02*s03*s12*s34-s02*s03*s13*s14-
     . s02*s03*s13*s24+2*s02*s03*s14*s23-s02*s12*s13*s34+s02*s13**2
     . *s24-s02*s13*s14*s23-s03**2*s12**2+s03**2*s12*s14+s03**2*s12*
     . s24+s03*s12**2*s34-s03*s12*s13*s24-s03*s12*s14*s23

      detx00t=s02**2*s13**2-2*s02**2*s13*s14-2*s02**2*s13*s34+s02
     . **2*s14**2-2*s02**2*s14*s34+s02**2*s34**2-2*s02*s03*s12*
     . s13+2*s02*s03*s12*s14+2*s02*s03*s12*s34+2*s02*s03*s13*
     . s14+2*s02*s03*s13*s24-2*s02*s03*s14**2-4*s02*s03*s14*s23
     . +2*s02*s03*s14*s24+2*s02*s03*s14*s34-2*s02*s03*s24*s34+
     . 2*s02*s12*s13*s34+2*s02*s12*s14*s34-2*s02*s12*s34**2-2
     . *s02*s13**2*s24+2*s02*s13*s14*s23+2*s02*s13*s14*s24-4*
     . s02*s13*s14*s34+2*s02*s13*s24*s34-2*s02*s14**2*s23+2*s02
     . *s14*s23*s34+s03**2*s12**2-2*s03**2*s12*s14-2*s03**2*s12*
     . s24+s03**2*s14**2-2*s03**2*s14*s24+s03**2*s24**2-2*s03*s12
     . **2*s34+2*s03*s12*s13*s24+2*s03*s12*s14*s23-4*s03*s12*
     . s14*s24+2*s03*s12*s14*s34+2*s03*s12*s24*s34+2*s03*s13*
     . s14*s24-2*s03*s13*s24**2-2*s03*s14**2*s23+2*s03*s14*s23*
     . s24+s12**2*s34**2-2*s12*s13*s24*s34-2*s12*s14*s23*s34+s13
     . **2*s24**2-2*s13*s14*s23*s24+s14**2*s23**2
c
      x4t(0,0)=detx00t
      x4t(0,1)=detx01t
      x4t(0,2)=detx02t
      x4t(0,3)=detx03t
      x4t(0,4)=detx04t
      x4t(1,1)=s02**2*s34**2-2*s02*s03*s24*s34+s03**2*s24**2
      x4t(1,2)=s03*s14*(s02*s34-s03*s24)
      x4t(1,3)=s02*s14*(-s02*s34+s03*s24)
      x4t(1,4)=-s02**2*s13*s34+s02*s03*s12*s34+s02*s03*s13*s24-
     &       2*s02*s03*s14*s23-s03**2*s12*s24
      x4t(2,2)=s03**2*s14**2
      x4t(2,3)=-s02*s03*s14**2
      x4t(2,4)=s03*s14*(s02*s13-s03*s12)
      x4t(3,3)=s02**2*s14**2
      x4t(3,4)=s02*s14*(-s02*s13+s03*s12)
      x4t(4,4)=s02**2*s13**2-2*s02*s03*s12*s13+s03**2*s12**2

      do i = 0,3
         do j = i+1,4
            x4t(j,i) = x4t(i,j)
         enddo
      enddo
      do i = 1,4
         do j = 1,4
            x4tt(0,i,0,j) = -(x4t(0,0)*x4t(i,j)-x4t(i,0)*x4t(0,j))/detx4
            do k = 1,4
               x4tt(0,i,j,k) = (x4t(0,k)*x4t(i,j)-x4t(i,k)*x4t(0,j))
     &                         /detx4
               x4tt(j,k,0,i) = x4tt(0,i,j,k)
            enddo
         enddo
      enddo

c  Rank-1

      if(lwr) then
         print*,"--------------------------------------------"
         print*," enter tensor redux Eij "
      endif

      do i = 1,4
         r(i) = (x4t(i,1)*(d0_1345-d0_2345) +
     &           x4t(i,2)*(d0_1245-d0_2345) +
     &           x4t(i,3)*(d0_1235-d0_2345) +
     &           x4t(i,4)*(d0_1234-d0_2345) - 
     &           x4t(i,0)*d0_2345)/detx4
      enddo

      eij(1,4) = r(4)
      do i = 3,1,-1
         eij(1,i) = eij(1,i+1)+r(i)
      enddo

c  Rank-2

      Eij(2,11) = (detx01t*(dij_1345(2,7)-dij_2345(2,7)) +
     &              detx02t*(dij_1245(2,7)-dij_2345(2,7)) +
     &              detx03t*(dij_1235(2,7)-dij_2345(2,7)) +
     &              detx04t*(dij_1234(2,7)-dij_2345(2,7)) )/detx4

      call d2pvtodd(4,d0_1234,dij_1234,dd1,dd2,dd3,dd300,dd400,dd40000)
      call d2pvtodd(3,d0_1235,dij_1235,dd1,dd2,dd3,dd300,dd400,dd40000)
      call d2pvtodd(2,d0_1245,dij_1245,dd1,dd2,dd3,dd300,dd400,dd40000)
      call d2pvtodd(1,d0_1345,dij_1345,dd1,dd2,dd3,dd300,dd400,dd40000)
      call d2pvtodd(0,d0_2345,dij_2345,dd1,dd2,dd3,dd300,dd400,dd40000)

      do i = 1,4
         do j = 1,4
            ed2(i,j) = x4t(i,1)*(dd1(j,1)-dd1(j,0)) +
     &                 x4t(i,2)*(dd1(j,2)-dd1(j,0)) +
     &                 x4t(i,3)*(dd1(j,3)-dd1(j,0)) +
     &                 x4t(i,4)*(dd1(j,4)-dd1(j,0)) -
     &                 x4t(i,0)*dd1(j,0) 
            ed2(i,j) = ed2(i,j) - 2*(
     &        x4tt(i,1,0,j)*(dij_1345(2,7)-dij_2345(2,7)) +
     &        x4tt(i,2,0,j)*(dij_1245(2,7)-dij_2345(2,7)) +
     &        x4tt(i,3,0,j)*(dij_1235(2,7)-dij_2345(2,7)) +
     &        x4tt(i,4,0,j)*(dij_1234(2,7)-dij_2345(2,7)) )
         enddo
      enddo
      do i = 1,4
         do j = i,4
            ed2(i,j) = (ed2(i,j)+ed2(j,i))/(2*detx4)
         enddo
      enddo

      eij(2,4) = ed2(4,4)
      eij(2,10) = ed2(4,4) + ed2(3,4)
      eij(2,9) = eij(2,10)+ ed2(2,4)
      eij(2,7) = eij(2,9) + ed2(1,4)
      eij(2,3) = ed2(4,4) + 2*ed2(3,4) + ed2(3,3)
      eij(2,8) = eij(2,3) + ed2(2,4) + ed2(2,3)
      eij(2,6) = eij(2,8) + ed2(1,4) + ed2(1,3)
      eij(2,2) = eij(2,8) + ed2(2,4) + ed2(2,3) + ed2(2,2)
      eij(2,5) = eij(2,2) + ed2(1,4) + ed2(1,3) + ed2(1,2)
      eij(2,1) = eij(2,5) + ed2(1,4) + ed2(1,3) + ed2(1,2) + ed2(1,1)

c  Rank-3

      do i = 1,4
         ED300(i) = (2*(x4t(1,0)*(dd300(i,1)-dd300(i,0)) +
     &                  x4t(2,0)*(dd300(i,2)-dd300(i,0)) +
     &                  x4t(3,0)*(dd300(i,3)-dd300(i,0)) +
     &                  x4t(4,0)*(dd300(i,4)-dd300(i,0)) ) +
     &         x4t(i,1)*(dij_1345(2,7)-dij_2345(2,7)) +
     &         x4t(i,2)*(dij_1245(2,7)-dij_2345(2,7)) +
     &         x4t(i,3)*(dij_1235(2,7)-dij_2345(2,7)) +
     &         x4t(i,4)*(dij_1234(2,7)-dij_2345(2,7)) -
     &               x4t(i,0)*dij_2345(2,7))/(3*detx4)
         do j = 1,4
            do k = 1,4
               xed3(i,j,k) =
     &                       x4t(i,1)*(dd2(j,k,1)-dd2(j,k,0)) +
     &                       x4t(i,2)*(dd2(j,k,2)-dd2(j,k,0)) +
     &                       x4t(i,3)*(dd2(j,k,3)-dd2(j,k,0)) +
     &                       x4t(i,4)*(dd2(j,k,4)-dd2(j,k,0)) 
     &               - x4t(i,0)*dd2(j,k,0) 
     &        - 2*( x4tt(i,1,0,j)*(dd300(k,1)-dd300(k,0)) + 
     &              x4tt(i,2,0,j)*(dd300(k,2)-dd300(k,0)) +
     &              x4tt(i,3,0,j)*(dd300(k,3)-dd300(k,0)) +
     &              x4tt(i,4,0,j)*(dd300(k,4)-dd300(k,0)) +
     &              x4tt(i,1,0,k)*(dd300(j,1)-dd300(j,0)) + 
     &              x4tt(i,2,0,k)*(dd300(j,2)-dd300(j,0)) +
     &              x4tt(i,3,0,k)*(dd300(j,3)-dd300(j,0)) +
     &              x4tt(i,4,0,k)*(dd300(j,4)-dd300(j,0)) )
            enddo
         enddo
      enddo
      do i = 1,4
         do j = i,4
            do k = j,4
         ed3(i,j,k) = (xed3(i,j,k)+xed3(j,i,k)+xed3(k,i,j))/(3*detx4)
            enddo
         enddo
      enddo

      eij(3,1) = ed3(4,4,4) + 3*ed3(3,4,4) + 3*ed3(3,3,4) + ed3(3,3,3) + 
     &         3*ed3(2,4,4) + 6*ed3(2,3,4) + 3*ed3(2,3,3) +3*ed3(2,2,4)+
     &         3*ed3(2,2,3) + ed3(2,2,2) + 3*ed3(1,4,4) + 6*ed3(1,3,4) + 
     &         3*ed3(1,3,3) + 6*ed3(1,2,4) + 6*ed3(1,2,3)+3*ed3(1,2,2) + 
     &         3*ed3(1,1,4) + 3*ed3(1,1,3) + 3*ed3(1,1,2) + ed3(1,1,1)
      eij(3,2) = ed3(4,4,4) + 3*ed3(3,4,4) + 3*ed3(3,3,4) + ed3(3,3,3) + 
     &     3*ed3(2,4,4) + 6*ed3(2,3,4) + 3*ed3(2,3,3) + 3*ed3(2,2,4) + 
     &     3*ed3(2,2,3) + ed3(2,2,2)
      eij(3,3) = ed3(4,4,4) + 3*ed3(3,4,4) + 3*ed3(3,3,4) + ed3(3,3,3)
      eij(3,4) = ed3(4,4,4)
      eij(3,5) = ed3(4,4,4) + 3*ed3(3,4,4) + 3*ed3(3,3,4) + ed3(3,3,3) + 
     &         3*ed3(2,4,4) + 6*ed3(2,3,4) + 3*ed3(2,3,3) +3*ed3(2,2,4)+ 
     &         3*ed3(2,2,3) + ed3(2,2,2) + 2*ed3(1,4,4) + 4*ed3(1,3,4) + 
     &         2*ed3(1,3,3) + 4*ed3(1,2,4) + 4*ed3(1,2,3)+2*ed3(1,2,2) + 
     &           ed3(1,1,4) + ed3(1,1,3) + ed3(1,1,2)
      eij(3,6) = ed3(4,4,4) + 3*ed3(3,4,4) + 3*ed3(3,3,4) + ed3(3,3,3) + 
     &         2*ed3(2,4,4) + 4*ed3(2,3,4) + 2*ed3(2,3,3) + ed3(2,2,4) + 
     &           ed3(2,2,3) + 2*ed3(1,4,4) + 4*ed3(1,3,4) +2*ed3(1,3,3)+ 
     &         2*ed3(1,2,4) + 2*ed3(1,2,3) + ed3(1,1,4) + ed3(1,1,3)
      eij(3,7) = ed3(4,4,4) + 2*ed3(3,4,4) + ed3(3,3,4) + 2*ed3(2,4,4) + 
     &         2*ed3(2,3,4) + ed3(2,2,4) + 2*ed3(1,4,4) + 2*ed3(1,3,4) + 
     &         2*ed3(1,2,4) + ed3(1,1,4) 
      eij(3,8) = ed3(4,4,4) + 3*ed3(3,4,4) + 3*ed3(3,3,4) + ed3(3,3,3) + 
     &     3*ed3(2,4,4) + 6*ed3(2,3,4) + 3*ed3(2,3,3) + 3*ed3(2,2,4) + 
     &     3*ed3(2,2,3) + ed3(2,2,2) + ed3(1,4,4) + 2*ed3(1,3,4) + 
     &       ed3(1,3,3) + 2*ed3(1,2,4) + 2*ed3(1,2,3) + ed3(1,2,2)
      eij(3,9) = ed3(4,4,4) + 3*ed3(3,4,4) + 3*ed3(3,3,4) + ed3(3,3,3) + 
     &     2*ed3(2,4,4) + 4*ed3(2,3,4) + 2*ed3(2,3,3) + ed3(2,2,4) + 
     &       ed3(2,2,3)
      eij(3,10) = ed3(4,4,4) + 2*ed3(3,4,4) + ed3(3,3,4) + 2*ed3(2,4,4)+ 
     &          2*ed3(2,3,4) + ed3(2,2,4)
      eij(3,11) = ed3(4,4,4) + 3*ed3(3,4,4) + 3*ed3(3,3,4) + ed3(3,3,3)+ 
     &     ed3(2,4,4)+ 2*ed3(2,3,4) + ed3(2,3,3) + ed3(1,4,4) + 
     &   2*ed3(1,3,4) + ed3(1,3,3)
      eij(3,12) = ed3(4,4,4) + 3*ed3(3,4,4) + 3*ed3(3,3,4) + ed3(3,3,3)+ 
     &            ed3(2,4,4) + 2*ed3(2,3,4) + ed3(2,3,3)
      eij(3,13) = ed3(4,4,4) + 2*ed3(3,4,4) + ed3(3,3,4)
      eij(3,14) = ed3(4,4,4) + ed3(3,4,4) + ed3(2,4,4) + ed3(1,4,4)
      eij(3,15) = ed3(4,4,4) + ed3(3,4,4) + ed3(2,4,4)
      eij(3,16) = ed3(4,4,4) + ed3(3,4,4)
      eij(3,17) = ed3(4,4,4) + 3*ed3(3,4,4) + 3*ed3(3,3,4) + ed3(3,3,3)+ 
     &     2*ed3(2,4,4) + 4*ed3(2,3,4) + 2*ed3(2,3,3) + ed3(2,2,4) + 
     &       ed3(2,2,3) + ed3(1,4,4) + 2*ed3(1,3,4) + ed3(1,3,3) + 
     &       ed3(1,2,4) + ed3(1,2,3)
      eij(3,18) = ed3(4,4,4) + 2*ed3(3,4,4) + ed3(3,3,4) + 2*ed3(2,4,4)+ 
     &  2*ed3(2,3,4) + ed3(2,2,4) + ed3(1,4,4) + ed3(1,3,4) + ed3(1,2,4)
      eij(3,19) = ed3(4,4,4) + 2*ed3(3,4,4) + ed3(3,3,4) + ed3(2,4,4) + 
     &     ed3(2,3,4) + ed3(1,4,4) + ed3(1,3,4)
      eij(3,20) = ed3(4,4,4) + 2*ed3(3,4,4) + ed3(3,3,4) + ed3(2,4,4) + 
     &            ed3(2,3,4)

      eij(3,24) = ed300(4)
      eij(3,23) = eij(3,24)+ed300(3)
      eij(3,22) = eij(3,23)+ed300(2)
      eij(3,21) = eij(3,22)+ed300(1)

c  Rank-4 (giuseppe)

      ed40000=(
     &     x4t(1,0)*(dd40000(1)-dd40000(0))+
     &     x4t(2,0)*(dd40000(2)-dd40000(0))+
     &     x4t(3,0)*(dd40000(3)-dd40000(0))+
     &     x4t(4,0)*(dd40000(4)-dd40000(0))
     &     )/detx4

      do i = 1,4
         do j = 1,4
            xed400(i,j) = 2*(
     &           x4t(1,0)*(dd400(i,j,1)-dd400(i,j,0)) +
     &           x4t(2,0)*(dd400(i,j,2)-dd400(i,j,0)) +
     &           x4t(3,0)*(dd400(i,j,3)-dd400(i,j,0)) +
     &           x4t(4,0)*(dd400(i,j,4)-dd400(i,j,0)) )
            yed400(i,j) =
     &           x4t(i,1)*(dd300(j,1)-dd300(j,0)) +
     &           x4t(i,2)*(dd300(j,2)-dd300(j,0)) +
     &           x4t(i,3)*(dd300(j,3)-dd300(j,0)) +
     &           x4t(i,4)*(dd300(j,4)-dd300(j,0)) -
     &           x4t(i,0)*dd300(j,0) -
     &           2*(
     &           x4tt(i,1,0,j)*(dd40000(1)-dd40000(0)) +
     &           x4tt(i,2,0,j)*(dd40000(2)-dd40000(0)) +
     &           x4tt(i,3,0,j)*(dd40000(3)-dd40000(0)) +
     &           x4tt(i,4,0,j)*(dd40000(4)-dd40000(0)) )
            do k = 1,4
               do l = 1,4
                  xed4(i,j,k,l) =
     &                 x4t(i,1)*(dd3(j,k,l,1)-dd3(j,k,l,0)) +
     &                 x4t(i,2)*(dd3(j,k,l,2)-dd3(j,k,l,0)) +
     &                 x4t(i,3)*(dd3(j,k,l,3)-dd3(j,k,l,0)) +
     &                 x4t(i,4)*(dd3(j,k,l,4)-dd3(j,k,l,0)) - 
     &                 x4t(i,0)*dd3(j,k,l,0) -
     &                 2*(
     &                 x4tt(i,1,0,j)*(dd400(k,l,1)-dd400(k,l,0)) + 
     &                 x4tt(i,2,0,j)*(dd400(k,l,2)-dd400(k,l,0)) +
     &                 x4tt(i,3,0,j)*(dd400(k,l,3)-dd400(k,l,0)) +
     &                 x4tt(i,4,0,j)*(dd400(k,l,4)-dd400(k,l,0)) +
     &                 x4tt(i,1,0,k)*(dd400(j,l,1)-dd400(j,l,0)) + 
     &                 x4tt(i,2,0,k)*(dd400(j,l,2)-dd400(j,l,0)) +
     &                 x4tt(i,3,0,k)*(dd400(j,l,3)-dd400(j,l,0)) +
     &                 x4tt(i,4,0,k)*(dd400(j,l,4)-dd400(j,l,0)) +
     &                 x4tt(i,1,0,l)*(dd400(j,k,1)-dd400(j,k,0)) + 
     &                 x4tt(i,2,0,l)*(dd400(j,k,2)-dd400(j,k,0)) +
     &                 x4tt(i,3,0,l)*(dd400(j,k,3)-dd400(j,k,0)) +
     &                 x4tt(i,4,0,l)*(dd400(j,k,4)-dd400(j,k,0)) )
               enddo
            enddo
         enddo
      enddo
      do i = 1,4
         do j = i,4
            yed400(i,j)=yed400(i,j)+yed400(j,i)
            do k = j,4
               do l = k,4
                  ed4(i,j,k,l) = (xed4(i,j,k,l)+xed4(j,i,k,l)+
     &                            xed4(k,j,i,l)+xed4(l,j,k,i))/(4*detx4)
               enddo
            enddo
         enddo
      enddo

      do i=1,4
         do j=1,4
            ed400(i,j)=(xed400(i,j)+yed400(i,j))/(4*detx4)
         enddo
      enddo
      
         eij(4,1) = 
     /      ed4(1,1,1,1) + 4*ed4(1,1,1,2) + 4*ed4(1,1,1,3) + 
     /      4*ed4(1,1,1,4) + 6*ed4(1,1,2,2) + 12*ed4(1,1,2,3) + 
     /      12*ed4(1,1,2,4) + 6*ed4(1,1,3,3) + 12*ed4(1,1,3,4) + 
     /      6*ed4(1,1,4,4) + 4*ed4(1,2,2,2) + 12*ed4(1,2,2,3) + 
     /      12*ed4(1,2,2,4) + 12*ed4(1,2,3,3) + 24*ed4(1,2,3,4) + 
     /      12*ed4(1,2,4,4) + 4*ed4(1,3,3,3) + 12*ed4(1,3,3,4) + 
     /      12*ed4(1,3,4,4) + 4*ed4(1,4,4,4) + ed4(2,2,2,2) + 
     /      4*ed4(2,2,2,3) + 4*ed4(2,2,2,4) + 6*ed4(2,2,3,3) + 
     /      12*ed4(2,2,3,4) + 6*ed4(2,2,4,4) + 4*ed4(2,3,3,3) + 
     /      12*ed4(2,3,3,4) + 12*ed4(2,3,4,4) + 4*ed4(2,4,4,4) + 
     /      ed4(3,3,3,3) + 4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 
     /      4*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,5) = 
     /      ed4(1,1,1,2) + ed4(1,1,1,3) + 
     /      ed4(1,1,1,4) + 3*ed4(1,1,2,2) + 6*ed4(1,1,2,3) + 
     /      6*ed4(1,1,2,4) + 3*ed4(1,1,3,3) + 6*ed4(1,1,3,4) + 
     /      3*ed4(1,1,4,4) + 3*ed4(1,2,2,2) + 9*ed4(1,2,2,3) + 
     /      9*ed4(1,2,2,4) + 9*ed4(1,2,3,3) + 18*ed4(1,2,3,4) + 
     /      9*ed4(1,2,4,4) + 3*ed4(1,3,3,3) + 9*ed4(1,3,3,4) + 
     /      9*ed4(1,3,4,4) + 3*ed4(1,4,4,4) + ed4(2,2,2,2) + 
     /      4*ed4(2,2,2,3) + 4*ed4(2,2,2,4) + 6*ed4(2,2,3,3) + 
     /      12*ed4(2,2,3,4) + 6*ed4(2,2,4,4) + 4*ed4(2,3,3,3) + 
     /      12*ed4(2,3,3,4) + 12*ed4(2,3,4,4) + 4*ed4(2,4,4,4) + 
     /      ed4(3,3,3,3) + 4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 
     /      4*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,6) = 
     /      ed4(1,1,1,3) + ed4(1,1,1,4) + 
     /      3*ed4(1,1,2,3) + 3*ed4(1,1,2,4) + 3*ed4(1,1,3,3) + 
     /      6*ed4(1,1,3,4) + 3*ed4(1,1,4,4) + 3*ed4(1,2,2,3) + 
     /      3*ed4(1,2,2,4) + 6*ed4(1,2,3,3) + 12*ed4(1,2,3,4) + 
     /      6*ed4(1,2,4,4) + 3*ed4(1,3,3,3) + 9*ed4(1,3,3,4) + 
     /      9*ed4(1,3,4,4) + 3*ed4(1,4,4,4) + ed4(2,2,2,3) + 
     /      ed4(2,2,2,4) + 3*ed4(2,2,3,3) + 6*ed4(2,2,3,4) + 
     /      3*ed4(2,2,4,4) + 3*ed4(2,3,3,3) + 9*ed4(2,3,3,4) + 
     /      9*ed4(2,3,4,4) + 3*ed4(2,4,4,4) + ed4(3,3,3,3) + 
     /      4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 4*ed4(3,4,4,4) + 
     /      ed4(4,4,4,4)
         eij(4,17) = 
     /      ed4(1,1,2,2) + 2*ed4(1,1,2,3) + 2*ed4(1,1,2,4) + 
     /      ed4(1,1,3,3) + 2*ed4(1,1,3,4) + ed4(1,1,4,4) + 
     /      2*ed4(1,2,2,2) + 6*ed4(1,2,2,3) + 6*ed4(1,2,2,4) + 
     /      6*ed4(1,2,3,3) + 12*ed4(1,2,3,4) + 6*ed4(1,2,4,4) + 
     /      2*ed4(1,3,3,3) + 6*ed4(1,3,3,4) + 6*ed4(1,3,4,4) + 
     /      2*ed4(1,4,4,4) + ed4(2,2,2,2) + 4*ed4(2,2,2,3) + 
     /      4*ed4(2,2,2,4) + 6*ed4(2,2,3,3) + 12*ed4(2,2,3,4) + 
     /      6*ed4(2,2,4,4) + 4*ed4(2,3,3,3) + 12*ed4(2,3,3,4) + 
     /      12*ed4(2,3,4,4) + 4*ed4(2,4,4,4) + ed4(3,3,3,3) + 
     /      4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 4*ed4(3,4,4,4) + 
     /      ed4(4,4,4,4)
         eij(4,23) = 
     /      ed4(1,1,2,3) + ed4(1,1,2,4) + ed4(1,1,3,3) + 
     /      2*ed4(1,1,3,4) + ed4(1,1,4,4) + 2*ed4(1,2,2,3) + 
     /      2*ed4(1,2,2,4) + 4*ed4(1,2,3,3) + 8*ed4(1,2,3,4) + 
     /      4*ed4(1,2,4,4) + 2*ed4(1,3,3,3) + 6*ed4(1,3,3,4) + 
     /      6*ed4(1,3,4,4) + 2*ed4(1,4,4,4) + ed4(2,2,2,3) + 
     /      ed4(2,2,2,4) + 3*ed4(2,2,3,3) + 6*ed4(2,2,3,4) + 
     /      3*ed4(2,2,4,4) + 3*ed4(2,3,3,3) + 9*ed4(2,3,3,4) + 
     /      9*ed4(2,3,4,4) + 3*ed4(2,4,4,4) + ed4(3,3,3,3) + 
     /      4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 4*ed4(3,4,4,4) + 
     /      ed4(4,4,4,4)
         eij(4,18) = 
     /      ed4(1,1,3,3) + 2*ed4(1,1,3,4) + ed4(1,1,4,4) + 
     /      2*ed4(1,2,3,3) + 4*ed4(1,2,3,4) + 2*ed4(1,2,4,4) + 
     /      2*ed4(1,3,3,3) + 6*ed4(1,3,3,4) + 6*ed4(1,3,4,4) + 
     /      2*ed4(1,4,4,4) + ed4(2,2,3,3) + 2*ed4(2,2,3,4) + 
     /      ed4(2,2,4,4) + 2*ed4(2,3,3,3) + 6*ed4(2,3,3,4) + 
     /      6*ed4(2,3,4,4) + 2*ed4(2,4,4,4) + ed4(3,3,3,3) + 
     /      4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 4*ed4(3,4,4,4) + 
     /      ed4(4,4,4,4)
         eij(4,8) = 
     /      ed4(1,2,2,2) + 3*ed4(1,2,2,3) + 3*ed4(1,2,2,4) + 
     /      3*ed4(1,2,3,3) + 6*ed4(1,2,3,4) + 3*ed4(1,2,4,4) + 
     /      ed4(1,3,3,3) + 3*ed4(1,3,3,4) + 3*ed4(1,3,4,4) + 
     /      ed4(1,4,4,4) + ed4(2,2,2,2) + 4*ed4(2,2,2,3) + 
     /      4*ed4(2,2,2,4) + 6*ed4(2,2,3,3) + 12*ed4(2,2,3,4) + 
     /      6*ed4(2,2,4,4) + 4*ed4(2,3,3,3) + 12*ed4(2,3,3,4) + 
     /      12*ed4(2,3,4,4) + 4*ed4(2,4,4,4) + ed4(3,3,3,3) + 
     /      4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 4*ed4(3,4,4,4) + 
     /      ed4(4,4,4,4)
         eij(4,26) = 
     /     ed4(1,2,2,3) + ed4(1,2,2,4) + 2*ed4(1,2,3,3) + 
     /      4*ed4(1,2,3,4) + 2*ed4(1,2,4,4) + ed4(1,3,3,3) + 
     /      3*ed4(1,3,3,4) + 3*ed4(1,3,4,4) + ed4(1,4,4,4) + 
     /      ed4(2,2,2,3) + ed4(2,2,2,4) + 3*ed4(2,2,3,3) + 
     /      6*ed4(2,2,3,4) + 3*ed4(2,2,4,4) + 3*ed4(2,3,3,3) + 
     /      9*ed4(2,3,3,4) + 9*ed4(2,3,4,4) + 3*ed4(2,4,4,4) + 
     /      ed4(3,3,3,3) + 4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 
     /      4*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,29) = 
     /      ed4(1,2,3,3) + 2*ed4(1,2,3,4) + 
     /      ed4(1,2,4,4) + ed4(1,3,3,3) + 3*ed4(1,3,3,4) + 
     /      3*ed4(1,3,4,4) + ed4(1,4,4,4) + ed4(2,2,3,3) + 
     /      2*ed4(2,2,3,4) + ed4(2,2,4,4) + 2*ed4(2,3,3,3) + 
     /      6*ed4(2,3,3,4) + 6*ed4(2,3,4,4) + 2*ed4(2,4,4,4) + 
     /      ed4(3,3,3,3) + 4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 
     /      4*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,11) = 
     /      ed4(1,3,3,3) + 3*ed4(1,3,3,4) + 
     /      3*ed4(1,3,4,4) + ed4(1,4,4,4) + ed4(2,3,3,3) + 
     /      3*ed4(2,3,3,4) + 3*ed4(2,3,4,4) + ed4(2,4,4,4) + 
     /      ed4(3,3,3,3) + 4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 
     /      4*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,2) = 
     /      ed4(2,2,2,2) + 4*ed4(2,2,2,3) + 
     /      4*ed4(2,2,2,4) + 6*ed4(2,2,3,3) + 12*ed4(2,2,3,4) + 
     /      6*ed4(2,2,4,4) + 4*ed4(2,3,3,3) + 12*ed4(2,3,3,4) + 
     /      12*ed4(2,3,4,4) + 4*ed4(2,4,4,4) + ed4(3,3,3,3) + 
     /      4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 4*ed4(3,4,4,4) + 
     /      ed4(4,4,4,4)
         eij(4,9) = 
     /     ed4(2,2,2,3) + ed4(2,2,2,4) + 3*ed4(2,2,3,3) + 
     /      6*ed4(2,2,3,4) + 3*ed4(2,2,4,4) + 3*ed4(2,3,3,3) + 
     /      9*ed4(2,3,3,4) + 9*ed4(2,3,4,4) + 3*ed4(2,4,4,4) + 
     /      ed4(3,3,3,3) + 4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 
     /      4*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,20) = 
     /      ed4(2,2,3,3) + 2*ed4(2,2,3,4) + 
     /      ed4(2,2,4,4) + 2*ed4(2,3,3,3) + 6*ed4(2,3,3,4) + 
     /      6*ed4(2,3,4,4) + 2*ed4(2,4,4,4) + ed4(3,3,3,3) + 
     /      4*ed4(3,3,3,4) + 6*ed4(3,3,4,4) + 4*ed4(3,4,4,4) + 
     /      ed4(4,4,4,4)
         eij(4,12) = 
     /      ed4(2,3,3,3) + 3*ed4(2,3,3,4) + 3*ed4(2,3,4,4) + 
     /      ed4(2,4,4,4) + ed4(3,3,3,3) + 4*ed4(3,3,3,4) + 
     /      6*ed4(3,3,4,4) + 4*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,3) = 
     /      ed4(3,3,3,3) + 4*ed4(3,3,3,4) + 
     /      6*ed4(3,3,4,4) + 4*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,7) = 
     /      ed4(1,1,1,4) + 3*ed4(1,1,2,4) + 
     /      3*ed4(1,1,3,4) + 3*ed4(1,1,4,4) + 3*ed4(1,2,2,4) + 
     /      6*ed4(1,2,3,4) + 6*ed4(1,2,4,4) + 3*ed4(1,3,3,4) + 
     /      6*ed4(1,3,4,4) + 3*ed4(1,4,4,4) + ed4(2,2,2,4) + 
     /      3*ed4(2,2,3,4) + 3*ed4(2,2,4,4) + 3*ed4(2,3,3,4) + 
     /      6*ed4(2,3,4,4) + 3*ed4(2,4,4,4) + ed4(3,3,3,4) + 
     /      3*ed4(3,3,4,4) + 3*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,24) = 
     /      ed4(1,1,2,4) + ed4(1,1,3,4) + 
     /      ed4(1,1,4,4) + 2*ed4(1,2,2,4) + 4*ed4(1,2,3,4) + 
     /      4*ed4(1,2,4,4) + 2*ed4(1,3,3,4) + 4*ed4(1,3,4,4) + 
     /      2*ed4(1,4,4,4) + ed4(2,2,2,4) + 3*ed4(2,2,3,4) + 
     /      3*ed4(2,2,4,4) + 3*ed4(2,3,3,4) + 6*ed4(2,3,4,4) + 
     /      3*ed4(2,4,4,4) + ed4(3,3,3,4) + 3*ed4(3,3,4,4) + 
     /      3*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,25) = 
     /      ed4(1,1,3,4) + ed4(1,1,4,4) + 
     /      2*ed4(1,2,3,4) + 2*ed4(1,2,4,4) + 2*ed4(1,3,3,4) + 
     /      4*ed4(1,3,4,4) + 2*ed4(1,4,4,4) + ed4(2,2,3,4) + 
     /      ed4(2,2,4,4) + 2*ed4(2,3,3,4) + 4*ed4(2,3,4,4) + 
     /      2*ed4(2,4,4,4) + ed4(3,3,3,4) + 3*ed4(3,3,4,4) + 
     /      3*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,19) = 
     /      ed4(1,1,4,4) + 2*ed4(1,2,4,4) + 
     /      2*ed4(1,3,4,4) + 2*ed4(1,4,4,4) + ed4(2,2,4,4) + 
     /      2*ed4(2,3,4,4) + 2*ed4(2,4,4,4) + ed4(3,3,4,4) + 
     /      2*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,27) = 
     /      ed4(1,2,2,4) + 2*ed4(1,2,3,4) + 
     /      2*ed4(1,2,4,4) + ed4(1,3,3,4) + 2*ed4(1,3,4,4) + 
     /      ed4(1,4,4,4) + ed4(2,2,2,4) + 3*ed4(2,2,3,4) + 
     /      3*ed4(2,2,4,4) + 3*ed4(2,3,3,4) + 6*ed4(2,3,4,4) + 
     /      3*ed4(2,4,4,4) + ed4(3,3,3,4) + 3*ed4(3,3,4,4) + 
     /      3*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,35) = 
     /      ed4(1,2,3,4) + ed4(1,2,4,4) + 
     /      ed4(1,3,3,4) + 2*ed4(1,3,4,4) + ed4(1,4,4,4) + 
     /      ed4(2,2,3,4) + ed4(2,2,4,4) + 2*ed4(2,3,3,4) + 
     /      4*ed4(2,3,4,4) + 2*ed4(2,4,4,4) + ed4(3,3,3,4) + 
     /      3*ed4(3,3,4,4) + 3*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,32) = 
     /      ed4(1,2,4,4) + ed4(1,3,4,4) + 
     /      ed4(1,4,4,4) + ed4(2,2,4,4) + 2*ed4(2,3,4,4) + 
     /      2*ed4(2,4,4,4) + ed4(3,3,4,4) + 2*ed4(3,4,4,4) + 
     /      ed4(4,4,4,4)
         eij(4,30) = 
     /     ed4(1,3,3,4) + 2*ed4(1,3,4,4) + ed4(1,4,4,4) + 
     /      ed4(2,3,3,4) + 2*ed4(2,3,4,4) + ed4(2,4,4,4) + 
     /      ed4(3,3,3,4) + 3*ed4(3,3,4,4) + 3*ed4(3,4,4,4) + 
     /      ed4(4,4,4,4)
         eij(4,33) = 
     /      ed4(1,3,4,4) + ed4(1,4,4,4) + ed4(2,3,4,4) + ed4(2,4,4,4) +
     /      ed4(3,3,4,4) + 2*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,14) = 
     /      ed4(1,4,4,4) + ed4(2,4,4,4) + 
     /      ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,10) = 
     /      ed4(2,2,2,4) + 3*ed4(2,2,3,4) + 
     /      3*ed4(2,2,4,4) + 3*ed4(2,3,3,4) + 6*ed4(2,3,4,4) + 
     /      3*ed4(2,4,4,4) + ed4(3,3,3,4) + 3*ed4(3,3,4,4) + 
     /      3*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,28) = 
     /      ed4(2,2,3,4) + ed4(2,2,4,4) + 
     /      2*ed4(2,3,3,4) + 4*ed4(2,3,4,4) + 2*ed4(2,4,4,4) + 
     /      ed4(3,3,3,4) + 3*ed4(3,3,4,4) + 3*ed4(3,4,4,4) + 
     /      ed4(4,4,4,4)
         eij(4,21) = 
     /      ed4(2,2,4,4) + 2*ed4(2,3,4,4) + 2*ed4(2,4,4,4) + 
     /      ed4(3,3,4,4) + 2*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,31) = 
     /      ed4(2,3,3,4) + 2*ed4(2,3,4,4) + 
     /      ed4(2,4,4,4) + ed4(3,3,3,4) + 3*ed4(3,3,4,4) + 
     /      3*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,34) = 
     /      ed4(2,3,4,4) + ed4(2,4,4,4) + 
     /      ed4(3,3,4,4) + 2*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,15) = 
     /      ed4(2,4,4,4) + ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,13) = 
     /      ed4(3,3,3,4) + 3*ed4(3,3,4,4) + 
     /      3*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,22) = 
     /      ed4(3,3,4,4) + 2*ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,16) = 
     /      ed4(3,4,4,4) + ed4(4,4,4,4)
         eij(4,4) = 
     /      ed4(4,4,4,4)
         eij(4,36) = 
     /      ed400(1,1) + 2*ed400(1,2) + 
     /      2*ed400(1,3) + 2*ed400(1,4) + ed400(2,2) + 
     /      2*ed400(2,3) + 2*ed400(2,4) + ed400(3,3) + 
     /      2*ed400(3,4) + ed400(4,4)
         eij(4,40) = 
     /      ed400(1,2) + ed400(1,3) + 
     /      ed400(1,4) + ed400(2,2) + 2*ed400(2,3) + 
     /      2*ed400(2,4) + ed400(3,3) + 2*ed400(3,4) + 
     /      ed400(4,4)
	 eij(4,41) = 
     /     ed400(1,3) + ed400(1,4) + ed400(2,3) + ed400(2,4) + 
     /      ed400(3,3) + 2*ed400(3,4) + ed400(4,4)
         eij(4,42) = 
     /      ed400(1,4) + ed400(2,4) + 
     /      ed400(3,4) + ed400(4,4)
         eij(4,37) = 
     /      ed400(2,2) + 2*ed400(2,3) + 
     /      2*ed400(2,4) + ed400(3,3) + 2*ed400(3,4) + 
     /      ed400(4,4)
	 eij(4,43) = 
     /     ed400(2,3) + ed400(2,4) + ed400(3,3) + 
     /      2*ed400(3,4) + ed400(4,4)
         eij(4,44) = 
     /      ed400(2,4) + ed400(3,4) + ed400(4,4)
         eij(4,38) = 
     /      ed400(3,3) + ed400(4,4) + 2*ed400(3,4)
         eij(4,45) = 
     /      ed400(3,4) + ed400(4,4)
         eij(4,39) = 
     /      ed400(4,4)
         eij(4,46) = 
     /      ed40000

c      if(lwr) then
c         call test_tensor_pent(psq, qsq, lsq, tsq,
c     #                     pq, pl, pt, ql, qt, lt, 
c     #                     D0_2345,D0_1345,D0_1245,D0_1235,D0_1234,
c     #                     Dij_2345,Dij_1345,Dij_1245,Dij_1235,Dij_1234,
c     #                     E0, 
c     #                     Eij)
c         read(*,"(a)") text
c      endif
      end


      subroutine prod_mat_col4(M,col,res)
      implicit none
      real * 8 M(1:4,1:4)
      complex * 16 col(1:4), res(1:4)
      integer i,j
      do i=1,4 
         res(i) = 0d0
      enddo
      do i=1,4
         do j=1,4
            res(i) = res(i) + M(i,j)*col(j)
         enddo
      enddo
      end

      subroutine d2pvtodd(n,d0,dij,dd1,dd2,dd3,dd300,dd400,dd40000)
      implicit none
      double complex d0,dij(3,13) 
      double complex dd1(4,0:4),dd2(4,4,0:4),dd3(4,4,4,0:4)
      double complex dd300(4,0:4),dd400(4,4,0:4),dd40000(0:4)
      integer i,j,n,irn(3)

c  Initialization

      if (n.gt.0) then
         do i = 1,4
            DD1(i,n) = 0d0      !!!!!!!!!!!!!! ADDED
            DD2(i,n,n) = 0
            DD2(n,i,n) = 0
            do j = 1,4
               DD3(i,j,n,n) = 0
               DD3(i,n,j,n) = 0
               DD3(n,i,j,n) = 0
            enddo
            DD400(i,n,n)=0
            DD400(n,i,n)=0
         enddo
         DD300(n,n) = 0
      endif
      do i = 1,n-1
         irn(i)=i
      enddo
      do i = max(1,n),3
         irn(i)=i+1
      enddo

c D functions up to rank 3 (giuseppe)
c WARNING: Previously unused Dij(1,7-13) variables are used
c to define D00ij and D0000 functions! (See tensor_redux_Dij.f)
      DD3(irn(1),irn(1),irn(1),n) = dij(3,1)-dij(3,2)
     \     +3*dij(3,6)-3*dij(3,4)
      DD3(irn(1),irn(1),irn(2),n) = dij(3,4)+dij(3,2)-dij(3,8)
     \     -dij(3,5)+2*dij(3,10)-2*dij(3,6)
      DD3(irn(1),irn(1),irn(3),n) = dij(3,5)+dij(3,8)-2*dij(3,10)
      DD3(irn(1),irn(2),irn(2),n) = dij(3,6)+dij(3,7)-dij(3,2)
     \     -dij(3,9)+2*dij(3,8)-2*dij(3,10)
      DD3(irn(1),irn(2),irn(3),n) = dij(3,10)+dij(3,9)-dij(3,7)-dij(3,8)
      DD3(irn(2),irn(2),irn(2),n) = dij(3,2)-dij(3,3)
     \     -3*dij(3,8)+3*dij(3,9)
      DD3(irn(2),irn(2),irn(3),n) = dij(3,8)+dij(3,3)-2*dij(3,9)
      DD3(irn(1),irn(3),irn(3),n) = dij(3,7)-dij(3,9)
      DD3(irn(2),irn(3),irn(3),n) = dij(3,9)-dij(3,3)
      DD3(irn(3),irn(3),irn(3),n) = dij(3,3)

      DD3(irn(1),irn(2),irn(1),n) = DD3(irn(1),irn(1),irn(2),n)
      DD3(irn(2),irn(1),irn(1),n) = DD3(irn(1),irn(1),irn(2),n)
      DD3(irn(1),irn(3),irn(1),n) = DD3(irn(1),irn(1),irn(3),n)
      DD3(irn(3),irn(1),irn(1),n) = DD3(irn(1),irn(1),irn(3),n)
      DD3(irn(2),irn(1),irn(2),n) = DD3(irn(1),irn(2),irn(2),n)
      DD3(irn(2),irn(2),irn(1),n) = DD3(irn(1),irn(2),irn(2),n)
      DD3(irn(1),irn(3),irn(2),n) = DD3(irn(1),irn(2),irn(3),n)
      DD3(irn(2),irn(1),irn(3),n) = DD3(irn(1),irn(2),irn(3),n)
      DD3(irn(2),irn(3),irn(1),n) = DD3(irn(1),irn(2),irn(3),n)
      DD3(irn(3),irn(1),irn(2),n) = DD3(irn(1),irn(2),irn(3),n)
      DD3(irn(3),irn(2),irn(1),n) = DD3(irn(1),irn(2),irn(3),n)
      DD3(irn(3),irn(1),irn(3),n) = DD3(irn(1),irn(3),irn(3),n)
      DD3(irn(3),irn(3),irn(1),n) = DD3(irn(1),irn(3),irn(3),n)
      DD3(irn(2),irn(3),irn(2),n) = DD3(irn(2),irn(2),irn(3),n)
      DD3(irn(3),irn(2),irn(2),n) = DD3(irn(2),irn(2),irn(3),n)
      DD3(irn(3),irn(2),irn(3),n) = DD3(irn(2),irn(3),irn(3),n)
      DD3(irn(3),irn(3),irn(2),n) = DD3(irn(2),irn(3),irn(3),n)

      DD400(irn(3),irn(3),n) = dij(1,9)
      DD400(irn(2),irn(3),n) = dij(1,12)-dij(1,9)
      DD400(irn(1),irn(3),n) = dij(1,11)-dij(1,12)
      DD400(irn(2),irn(2),n) = dij(1,8)+dij(1,9)-2*dij(1,12)
      DD400(irn(1),irn(2),n) = dij(1,10)+dij(1,12)-dij(1,11)-dij(1,8)
      DD400(irn(1),irn(1),n) = dij(1,7)+dij(1,8)-2*dij(1,10)

      DD400(irn(3),irn(2),n) = DD400(irn(2),irn(3),n)
      DD400(irn(3),irn(1),n) = DD400(irn(1),irn(3),n)
      DD400(irn(2),irn(1),n) = DD400(irn(1),irn(2),n)

      DD40000(n) = dij(1,13)

      DD2(irn(1),irn(1),n) = dij(2,1)+dij(2,2)-2*dij(2,4)
      DD2(irn(1),irn(2),n) = dij(2,4)+dij(2,6)-dij(2,2)-dij(2,5)
      DD2(irn(1),irn(3),n) = dij(2,5)-dij(2,6)
      DD2(irn(2),irn(2),n) = dij(2,2)+dij(2,3)-2*dij(2,6)
      DD2(irn(2),irn(3),n) = dij(2,6)-dij(2,3)
      DD2(irn(3),irn(3),n) = dij(2,3)

      DD2(irn(2),irn(1),n) = DD2(irn(1),irn(2),n)
      DD2(irn(3),irn(1),n) = DD2(irn(1),irn(3),n)
      DD2(irn(3),irn(2),n) = DD2(irn(2),irn(3),n)

      DD300(irn(3),n) = dij(3,13)
      DD300(irn(2),n) = dij(3,12)-dij(3,13)
      DD300(irn(1),n) = dij(3,11)-dij(3,12)

      DD1(irn(3),n) = dij(1,3)
      DD1(irn(2),n) = dij(1,2)-dij(1,3)
      DD1(irn(1),n) = dij(1,1)-dij(1,2)

      if (n.eq.0) then
         DD1(1,0) = -d0 - dij(1,1)
         DD300(1,0) = - dij(3,11) - dij(2,7)
         DD40000(0) = dij(1,13)
         do i = 2,4
            DD2(1,i,0) = - DD2(2,i,0) - DD2(3,i,0) - DD2(4,i,0) 
     &                   - DD1(i,0) 
            DD2(i,1,0) = DD2(1,i,0)
            DD400(1,i,0) = - DD400(2,i,0) - DD400(3,i,0)
     &                     - DD400(4,i,0) - DD300(i,0)
            DD400(i,1,0) = DD400(1,i,0)
            do j = i,4
               DD3(1,i,j,0) = - DD3(2,i,j,0) - DD3(3,i,j,0)
     &                        - DD3(4,i,j,0) - DD2(i,j,0)
               DD3(1,j,i,0) = DD3(1,i,j,0)
               DD3(i,1,j,0) = DD3(1,i,j,0)
               DD3(j,1,i,0) = DD3(1,i,j,0)
               DD3(i,j,1,0) = DD3(1,i,j,0)
               DD3(j,i,1,0) = DD3(1,i,j,0)
            enddo
         enddo
         DD2(1,1,0) = - DD2(2,1,0) - DD2(3,1,0) - DD2(4,1,0) 
     &                - DD1(1,0) 
         DD400(1,1,0) = - DD400(2,1,0) - DD400(3,1,0)
     &                  - DD400(4,1,0) - DD300(1,0)         

         DD3(1,1,4,0) = - DD3(2,1,4,0) - DD3(3,1,4,0)
     &                  - DD3(4,1,4,0) - DD2(1,4,0)
         DD3(1,4,1,0) = DD3(1,1,4,0)
         DD3(4,1,1,0) = DD3(1,1,4,0)

         DD3(1,1,3,0) = - DD3(2,1,3,0) - DD3(3,1,3,0)
     &                  - DD3(4,1,3,0) - DD2(1,3,0)
         DD3(1,3,1,0) = DD3(1,1,3,0)
         DD3(3,1,1,0) = DD3(1,1,3,0)

         DD3(1,1,2,0) = - DD3(2,1,2,0) - DD3(3,1,2,0)
     &                  - DD3(4,1,2,0) - DD2(1,2,0)
         DD3(1,2,1,0) = DD3(1,1,2,0)
         DD3(2,1,1,0) = DD3(1,1,2,0)

         DD3(1,1,1,0) = - DD3(2,1,1,0) - DD3(3,1,1,0)
     &                  - DD3(4,1,1,0) - DD2(1,1,0)
      endif    

      end

