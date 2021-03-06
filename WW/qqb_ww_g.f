      subroutine qqb_ww_g(P,msq)
c---Matrix element squared averaged over initial colors and spins
c     q(-p1)+qbar(-p2) -->  f'(p5)+bar{f'}(p6) + n(p3)+ebar(p4)+ g(p7)
c   for the moment --- radiation only from initial line
      implicit none 
      include 'qcdcouple.f'
      include 'constants.f'
      include 'sprods_com.f'
      include 'zprods_decl.f'
      include 'zcouple.f'
      include 'wcouple.f'
      include 'ewcharge.f'
      include 'anomcoup.f'
      include 'pwhg_st.h'
      include 'vvsettings.f'

      integer j,k,jk,tjk,polg,polq,minus,mplus,jp,kp,jtype
      double precision P(mxpart,4),qdks(mxpart,4),oqdks(mxpart,4),msq,
     .     s127,fac,fac1,offsh,xfac,realave
      double complex ct(2,2),cs_z(2,2),cs_g(2,2),
     . cgamz(2,2),cz(2,2)
      double complex u_ub(5,2,2),d_db(5,2,2),ub_u(5,2,2),db_d(5,2,2),
     .               u_g(5,2,2), d_g(5,2,2), g_ub(5,2,2),g_db(5,2,2),
     .               ub_g(5,2,2),db_g(5,2,2),g_u(5,2,2),g_d(5,2,2),
     .               amp(5),prop12,A(2,2)
      save oqdks,ct,cs_z,cs_g,
     .     cgamz,cz, u_ub,d_db,ub_u,db_d,
     .     u_g, d_g, g_ub,g_db,
     .     ub_g,db_g,g_u,g_d,
     .     amp,prop12,s127
      common/xanomcoup/xdelg1_z,xdelg1_g,xlambda_g,xlambda_z,
     . xdelk_g,xdelk_z
c      common/pchoice/j,k
      data minus,mplus/1,2/
      logical recalc
      double complex cpropfac
      external cpropfac

      msq=0d0
      
      fac=gw**4
      fac1=two*gsq*cf

C----Change the momenta to DKS notation 
c   We have --- f(p1) + f'(p2)-->mu^-(p5)+nubar(p6)+e^+(p4)+nu(p3)+g(p7)
c   DKS have--- ubar(q1)+u(q2)-->mu^-(q3)+nubar(q4)+e^+(q5)+nu(q6)+g(p7)
      do j=1,4
         qdks(1,j)=p(1,j)
         qdks(2,j)=p(2,j)
         qdks(3,j)=p(5,j)
         qdks(4,j)=p(6,j)
         qdks(5,j)=p(4,j)
         qdks(6,j)=p(3,j)
         qdks(7,j)=p(7,j)
      enddo


      recalc = .false.
      do j=1,4
         do k=1,7
            if(qdks(k,j).ne.oqdks(k,j)) then
               recalc=.true.
            endif
         enddo
      enddo
      if(recalc) oqdks = qdks

      if(recalc) then
c--   s returned from sprodx (common block) is 2*dot product
         call spinoru(7,qdks,za,zb)

c--   calculate propagators
         s127=s(1,2)+s(1,7)+s(2,7)
c      prop12=s127/dcmplx(s127-zmass**2,zmass*zwidth)  
         prop12=cpropfac(s127,zmass,zwidth)

c-- couplings according to 3.4 and 3.6
         do j=1,2
            ct(minus,j)=1d0
            ct(mplus,j)=0d0
            cs_z(minus,j)=+mp(j)*l(j)*sin2w*prop12
            cs_z(mplus,j)=-mp(j)*2d0*Q(j)*xw*prop12
            cs_g(minus,j)=+mp(j)*2d0*Q(j)*xw
            cs_g(mplus,j)=+mp(j)*2d0*Q(j)*xw
            cz(minus,j)=0d0
            cz(mplus,j)=0d0
            cgamz(minus,j)=0d0
            cgamz(mplus,j)=0d0
c--   couplings with or without photon pole
            if (zerowidth .neqv. .true.) then
               cz(minus,j)=two*xw*ln*L(j)*prop12
               cz(mplus,j)=two*xw*ln*R(j)*prop12
               cgamz(minus,j)=two*xw*(-Q(j)+le*L(j)*prop12)
               cgamz(mplus,j)=two*xw*(-Q(j)+le*R(j)*prop12)
               
               
            endif
         enddo

c-- 
c      l(j)=(tau(j)-two*Q(j)*xw)/sin2w ; r(j)=(-two*Q(j)*xw)/sin2w
c      le=(-1d0-two*(-1d0)*xw)/sin2w ; re=(-two*(-1d0)*xw)/sin2w
c      ln=(+1d0-two*(+0d0)*xw)/sin2w ; rn=0d0
c---

c--- apply a dipole form factor to anomalous couplings
         xfac=1d0/(1d0+s127/(tevscale*1d3)**2)**2
         xdelg1_z=xfac*delg1_z
         xdelg1_g=xfac*delg1_g
         xdelk_z=xfac*delk_z
         xdelk_g=xfac*delk_g
         xlambda_z=xfac*lambda_z
         xlambda_g=xfac*lambda_g
      
c---remember ub-u is the basic process.
c---case ubar-u
         call wwamps(1,2,3,4,5,6,7,za,zb,ub_u)
c---  case ubar-g
         call wwamps(1,7,3,4,5,6,2,za,zb,ub_g)
c---  case g-ubar
         call wwamps(2,7,3,4,5,6,1,za,zb,g_ub)
         
c---  case u-ubar
         call wwamps(2,1,3,4,5,6,7,za,zb,u_ub)
c---  case u-g
         call wwamps(7,1,3,4,5,6,2,za,zb,u_g)
c---  case g-u
         call wwamps(7,2,3,4,5,6,1,za,zb,g_u)
         
c---  case dbar-d
         call wwamps(1,2,6,5,4,3,7,za,zb,db_d)
c---  case dbar-g
         call wwamps(1,7,6,5,4,3,2,za,zb,db_g)
c---  case g-dbar
         call wwamps(2,7,6,5,4,3,1,za,zb,g_db)
         
c---  case d-dbar
         call wwamps(2,1,6,5,4,3,7,za,zb,d_db)
c---  case d-g
         call wwamps(7,1,6,5,4,3,2,za,zb,d_g)
c---  case g-d
         call wwamps(7,2,6,5,4,3,1,za,zb,g_d)
      endif

      j=idpart1
      k=idpart2

      jk=max(j,k)
      realave=xn*aveqq
      if (j .eq. 0 .or. k .eq. 0) then
          jk=j+k
          realave=xn*aveqg
      endif
      do polg=1,2
      do polq=1,2
c---sum is over diagram type t,s(Z),e,n,s(photon)
      do jtype=1,5
          if    (j .lt. 0 .and. tau(jk) .eq. -1d0 .and. k .ne. 0) then
            amp(jtype)=db_d(jtype,polg,polq)
          elseif(j .lt. 0 .and. tau(jk) .eq.  1d0 .and. k .ne. 0) then
            amp(jtype)=ub_u(jtype,polg,polq)
          elseif(j .gt. 0 .and. tau(jk) .eq. -1d0 .and. k .ne. 0) then
            amp(jtype)=d_db(jtype,polg,polq)
          elseif(j .gt. 0 .and. tau(jk) .eq.  1d0 .and. k .ne. 0) then
            amp(jtype)=u_ub(jtype,polg,polq)
          elseif(j .eq. 0 .and. tau(jk) .eq.  1d0 .and. jk .gt. 0) then
            amp(jtype)=g_u(jtype,polg,polq)
          elseif(j .eq. 0 .and. tau(jk) .eq. -1d0 .and. jk .gt. 0) then
            amp(jtype)=g_d(jtype,polg,polq)
          elseif(j .eq. 0 .and. tau(jk) .eq. -1d0 .and. jk .lt. 0) then
            amp(jtype)=g_ub(jtype,polg,polq)
          elseif(j .eq. 0 .and. tau(jk) .eq.  1d0 .and. jk .lt. 0) then
            amp(jtype)=g_db(jtype,polg,polq)
          elseif(k .eq. 0 .and. tau(jk) .eq.  1d0 .and. jk .gt. 0) then
            amp(jtype)=u_g(jtype,polg,polq)
          elseif(k .eq. 0 .and. tau(jk) .eq. -1d0 .and. jk .gt. 0) then
            amp(jtype)=d_g(jtype,polg,polq)
          elseif(k .eq. 0 .and. tau(jk) .eq. -1d0 .and. jk .lt. 0) then
            amp(jtype)=ub_g(jtype,polg,polq)
          elseif(k .eq. 0 .and. tau(jk) .eq.  1d0 .and. jk .lt. 0) then 
            amp(jtype)=db_g(jtype,polg,polq)
        endif
      enddo

C---tjk is equal to 2 (u,c) or 1 (d,s,b)
        tjk=2-mod(abs(jk),2)

      A(polg,polq)=dcmplx(fac)
     . *(ct(polq,tjk)*amp(1)+cs_z(polq,tjk)*amp(2)+cs_g(polq,tjk)*amp(5)
     .  +cz(polq,tjk)*amp(3)+cgamz(polq,tjk)*amp(4))

      enddo
      enddo



      msq=fac1*realave*
     . (cdabs(A(mplus,minus))**2+cdabs(A(minus,minus))**2
     . +cdabs(A(mplus,mplus))**2+cdabs(A(minus,mplus))**2)
      

      return

      end

      
      




