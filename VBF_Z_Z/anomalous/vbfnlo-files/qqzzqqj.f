
      subroutine qqzzqqj(pbar,sign,qbar,gsign, bos,k,ans)
      implicit none
c
c	Last modified for POWHEG:  Nov. 2012
C
C  QQZZQQJ calculates the matrix elements**2 for electroweak
c  weak boson pair production by quark quark scattering
C
C        q1 q3    ---->   q2 q4 g ZZ,   Z ---> f5-bar f6, Z ---> f7-bar f8
C
c  with ZZ -> e+e- mu+mu- (bos = 22) or  ZZ -> e+e-vm vm~ (bos = 21);	
c
C  and crossing related processes. Pauli interference terms for
c  identical fermions are neglected. In particular, only the
c  t-channel exchange of elctroweak bosons is considered. s-channel
c  production of 3 weak bosons is NOT implemented.
c
C  This code includes only real emission contributions, i.e.
c
c      return uucc = |M_real|^2   etc.
c
c	fpials is attached only in the end of the code
c
c index j = 2:3 indicates, whether g is emitted from 
c		upper (12) line (j=2) or lower (34) line (j=3)
c	l is the gluon polarization in the kartesian basis (l=1,2)
c         l=0 stands for building blocks without gluon emission
c	k is the process ID (1:uucc,2:uuss,3:ddcc;4:ddss;5:udsc;6:ducs)
c	isig1/isig3 are the helicities of parton1/3 
c       h encodes the combination of lepton helicities
c
c---------------------------------------------------------------------
c
      real * 8 pi,pi2
      parameter (pi=3.141592653589793238462643383279502884197D0,
     1           pi2=pi**2)
      include 'pwhg_st.h'
      include 'global.inc'
      include 'tensor_zz.inc'
      include 'higgs_graphs.h'
c
c electroweak couplings are taken from KOPPLN
c
      double precision  clr, xm2, xmg, b, v, a
      COMMON /BKOPOU/   CLR(4,5,-1:1),XM2(6),XMG(6),B(6,6,6),
     1                  V(4,5),A(4,5)
c
c alfas, scales etc
      include 'scales.inc'
c
c variables for the main part of the program
c
      real*8 fpials(2:3), fpi
      parameter (fpi=4d0*pi)

      double precision  pbar(0:3,4+nv),qbar(0:4),musq
      double precision  res(6,2:3)
      double precision ans(3)
      integer kl,h
      double precision  p(0:3,4+nv),q(0:4), p21(0:4,2:3), p43(0:4,2:3),
     1                  pq(0:4,4),pez(0:4),puz(0:4),pzz(0:4),
     2			qee(0:4,2:3),quu(0:4,2:3)!,
      integer  sign(4+nv),gsign, mu, i, j,jj, k, kk, id,
     1         isig, isig1, isig3,is,ka,kb,kf,il,ib,ll,bos
      integer  ifl(4,6), js1, js3, is1, is3
      integer  l   ! gluon polariz. (l=0:no g, l=1,2:g in kartesian basis)
      integer jmin, jmax
      logical jlog2,jlog3
      double complex prop21(4,2:3), prop43(4,2:3),
     1		     prop_ee(4,2:3),prop_uu(4,2:3)
      double complex mat(6,-1:1,-1:1,hmin_global:hmax_global,2:3,0:2,9)
      integer id1,id2,id3
      double complex m5e(3,2,2,2:3,2),m5u(3,2,2,2:3,2),
     1 	             m1p(6,2,2,2:3,2),m2p(6,2,2,2:3,2),m3p(6,2,2,2:3,2)
      double complex  m1ae,m1ze,m2ae,m2ze,z1ae,z1ze,z2ae,z2ze,
     1	              m1au,m1zu,m2au,m2zu,z1au,z1zu,z2au,z2zu,
     1		      m3au,m3zu,m4au,m4zu,m3ae,m3ze,m4ae,m4ze,
     1		      z3ae,z3ze,z3zu,z3au,z4ae,z4ze,z4zu,z4au,
     1		      mate12,matu12,mate34,matu34
      double complex mm(6,-1:1,-1:1,hmin_global:hmax_global,2:3,2)
      double complex ga,gb,gc,gd
      double complex maa, maz, mza, mzz, mzz5, mzz6
      double complex  matot,ratot,raz,raa! for checks only
      double precision eps(0:3,2) ! g in kartesian basis 
      double complex psi(2,-1:1,4),jqq(0:5,-1:1,2,-1:1,0:2), 
     1 		     braketg(2,-1:1,4,2), jh1(0:5,-1:1), jh2(0:5,-1:1)
      double complex psize(2,-1:1,hmin_global:hmax_global,4),psiae(2,-1:1,hmin_global:hmax_global,4),
     1 		     psizu(2,-1:1,hmin_global:hmax_global,4),psiau(2,-1:1,hmin_global:hmax_global,4),
     1               jez(0:5,-1:1,hmin_global:hmax_global,-1:1,4,0:2),
     1               jea(0:5,-1:1,hmin_global:hmax_global,-1:1,4,0:2),
     1		     juz(0:5,-1:1,hmin_global:hmax_global,-1:1,4,0:2),
     1               jua(0:5,-1:1,hmin_global:hmax_global,-1:1,4,0:2)
      double precision fqze(0:4,4),fqzu(0:4,4),fqae(0:4,4),fqau(0:4,4),
     1 		       fq(0:4,4),dummy(0:4),bq(0:4,4)
      double complex bkjqq(2,-1:1,-1:1,4,2:3,0:2),
     1		     bkjqqg(2,-1:1,-1:1,4,2:3,0:2),
     1 		     gbkjqq(2,-1:1,-1:1,4,2:3,0:2)
      double complex braketgze(2,-1:1,hmin_global:hmax_global,4,0:2),
     3               braketzeg(2,-1:1,hmin_global:hmax_global,4,0:2),
     3		     braketgzu(2,-1:1,hmin_global:hmax_global,4,0:2),
     3               braketzug(2,-1:1,hmin_global:hmax_global,4,0:2),
     3		     braketgae(2,-1:1,hmin_global:hmax_global,4,0:2),
     3               braketaeg(2,-1:1,hmin_global:hmax_global,4,0:2),
     3		     braketgau(2,-1:1,hmin_global:hmax_global,4,0:2),
     3               braketaug(2,-1:1,hmin_global:hmax_global,4,0:2)      
      double complex braketgA(2,-1:1,hmin_global:hmax_global,0:2,4),
     3               braketAg(2,-1:1,hmin_global:hmax_global,0:2,4),
     3		     braketgZ(2,-1:1,hmin_global:hmax_global,0:2,4),
     3               braketZg(2,-1:1,hmin_global:hmax_global,0:2,4)      
c      double precision  pgze(0:4,hmin_global:hmax_global,4),pgzu(0:4,hmin_global:hmax_global,4),
c     3			pzeg(0:4,hmin_global:hmax_global,4),pzug(0:4,hmin_global:hmax_global,4),
c     3			pgae(0:4,hmin_global:hmax_global,4),pgau(0:4,hmin_global:hmax_global,4),
c     3			paeg(0:4,hmin_global:hmax_global,4),paug(0:4,hmin_global:hmax_global,4)
      double precision  pgze(0:4,4),pgzu(0:4,4),
     3			pzeg(0:4,4),pzug(0:4,4),
     3			pgae(0:4,4),pgau(0:4,4),
     3			paeg(0:4,4),paug(0:4,4)
      double precision  pga(0:4,4),pgz(0:4,4),
     3			pag(0:4,4),pzg(0:4,4)
      double complex psia(2,-1:1,hmin_global:hmax_global,-1:1,4), 
     3		     psiz(2,-1:1,hmin_global:hmax_global,-1:1,4)
      double complex ja(0:5,-1:1,hmin_global:hmax_global,-1:1,4,0:2), 
     &               jz(0:5,-1:1,hmin_global:hmax_global,-1:1,4,0:2),
     1		     jag(0:5,-1:1),jga(0:5,-1:1),jg0(0:5,-1:1),
     1		     jgz(0:5,-1:1),jzg(0:5,-1:1),jgm(0:5,-1:1)
      double complex jaegi(0:5,-1:1),jgaei(0:5,-1:1),jaeg0i(0:5,-1:1),
     1		     jaegii(0:5,-1:1),jgaeii(0:5,-1:1),jaeg0ii(0:5,-1:1),
     1		     jaugi(0:5,-1:1),jgaui(0:5,-1:1),jaug0i(0:5,-1:1),
     1		     jaugii(0:5,-1:1),jgauii(0:5,-1:1),jaug0ii(0:5,-1:1),
     1		     jzegi(0:5,-1:1),jgzei(0:5,-1:1),jzeg0i(0:5,-1:1),
     1		     jzegii(0:5,-1:1),jgzeii(0:5,-1:1),jzeg0ii(0:5,-1:1),
     1		     jzugi(0:5,-1:1),jgzui(0:5,-1:1),jzug0i(0:5,-1:1),
     1		     jzugii(0:5,-1:1),jgzuii(0:5,-1:1),jzug0ii(0:5,-1:1)
      double complex epsaa0(0:3),epsaz0(0:3),epsza0(0:3),epszz0(0:3),
     1		     epsaa(0:3),epsaz(0:3),epsza(0:3),epszz(0:3),
     1               epsaee(0:5,-1:1,hmin_global:hmax_global,3:4,2,2:3,0:2),
     2		     epsauu(0:5,-1:1,hmin_global:hmax_global,3:4,2,2:3,0:2),
     2               epszee(0:5,-1:1,hmin_global:hmax_global,3:4,2,2:3,0:2), 
     2		     epszuu(0:5,-1:1,hmin_global:hmax_global,3:4,2,2:3,0:2),
     3		     epsee0(0:3),epsuu0(0:3),epsee60(0:3),epsuu60(0:3),
     3		     epsee(0:3),epsuu(0:3),epsee6(0:3),epsuu6(0:3),
     1               epsCCee(0:5,-1:1,hmin_global:hmax_global,2,2:3,0:2),
     1               epsCCuu(0:5,-1:1,hmin_global:hmax_global,2,2:3,0:2),
     1               epsCCee6(0:5,-1:1,hmin_global:hmax_global,2,2:3,0:2),
     1               epsCCuu6(0:5,-1:1,hmin_global:hmax_global,2,2:3,0:2)
      double complex qepsCCee(hmin_global:hmax_global,2,2:3,0:2),
     1               qepsCCuu(hmin_global:hmax_global,2,2:3,0:2),
     1	 	     qepsCCee6(hmin_global:hmax_global,2,2:3,0:2),
     1               qepsCCuu6(hmin_global:hmax_global,2,2:3,0:2)
      double complex qepszee(hmin_global:hmax_global,2,3:4,-1:1,2:3,0:2),
     1               qepszuu(hmin_global:hmax_global,2,3:4,-1:1,2:3,0:2)
      double complex jj21au(-1:1,hmin_global:hmax_global,0:2),
     1               jj43au(-1:1,hmin_global:hmax_global,0:2),
     1 		     jj21zu(-1:1,hmin_global:hmax_global,0:2),
     1               jj43zu(-1:1,hmin_global:hmax_global,0:2),
     1 		     jj21ae(-1:1,hmin_global:hmax_global,0:2),
     1               jj43ae(-1:1,hmin_global:hmax_global,0:2),
     1 		     jj21ze(-1:1,hmin_global:hmax_global,0:2),
     1               jj43ze(-1:1,hmin_global:hmax_global,0:2)
      double complex zuu(4:5,2:3),zee(4:5,2:3)
      double complex m1aae,m1aze,m1zae,m1zze,z1aze,z1zze,
     1 		     m2aae,m2aze,m2zae,m2zze,m1e,m2e,
     1		     m1aau,m1azu,m1zau,m1zzu,z1azu,z1zzu,
     1 		     m2aau,m2azu,m2zau,m2zzu,m1u,m2u,
     1		     mz1aae,mz1aze,mz1zae,mz1zze,
     1		     mz2aae,mz2aze,mz2zae,mz2zze,
     1		     mz1aau,mz1azu,mz1zau,mz1zzu,
     1		     mz2aau,mz2azu,mz2zau,mz2zzu,
     1		     m3aae,m3aze,m3zae,m3zze,z3aze,z3zze,
     3 		     m4aae,m4aze,m4zae,m4zze,m3e,m4e,
     3		     m3aau,m3azu,m3zau,m3zzu,z3azu,z3zzu,
     3 		     m4aau,m4azu,m4zau,m4zzu,m3u,m4u,
     3		     mz3aae,mz3aze,mz3zae,mz3zze,
     3		     mz4aae,mz4aze,mz4zae,mz4zze,
     3		     mz3aau,mz3azu,mz3zau,mz3zzu,
     3		     mz4aau,mz4azu,mz4zau,mz4zzu
      double complex mezz(4,-1:1,-1:1,hmin_global:hmax_global,2:3,2),
     #               meza(4,-1:1,-1:1,hmin_global:hmax_global,2:3,2),
     #		     meaz(4,-1:1,-1:1,hmin_global:hmax_global,2:3,2),
     #               meaa(4,-1:1,-1:1,hmin_global:hmax_global,2:3,2),
     # 		     muzz(4,-1:1,-1:1,hmin_global:hmax_global,2:3,2),
     #               muza(4,-1:1,-1:1,hmin_global:hmax_global,2:3,2),
     #		     muaz(4,-1:1,-1:1,hmin_global:hmax_global,2:3,2),
     #               muaa(4,-1:1,-1:1,hmin_global:hmax_global,2:3,2),
     #		     zezz(-1:1,-1:1,hmin_global:hmax_global,2:3,2:3,2),
     #               zeza(-1:1,-1:1,hmin_global:hmax_global,2:3,2:3,2),
     #		     zeaz(-1:1,-1:1,hmin_global:hmax_global,2:3,2:3,2),
     #               zeaa(-1:1,-1:1,hmin_global:hmax_global,2:3,2:3,2),
     # 		     zuzz(-1:1,-1:1,hmin_global:hmax_global,2:3,2:3,2),
     #               zuza(-1:1,-1:1,hmin_global:hmax_global,2:3,2:3,2),
     #		     zuaz(-1:1,-1:1,hmin_global:hmax_global,2:3,2:3,2),
     #               zuaa(-1:1,-1:1,hmin_global:hmax_global,2:3,2:3,2)
      double complex  ma(4,2:3,0:2), mz(4,2:3,0:2)
      double complex propt(-1:1,-1:1,6,2:3,2),
     1		     propbbe(2:3), propbbu(2:3),
     1		     propbbea(6,-1:1,-1:1,2:3), propbbua(6,-1:1,-1:1,2:3),
     1		     propbbez(6,-1:1,-1:1,2:3), propbbuz(6,-1:1,-1:1,2:3)
      double complex  zm2i(2:4)
      double complex contract_Tjj,
     1 		     dotcc, dotrc, dotqj, s1c
      external contract_Tjj, 
     1 	       dotcc, dotrc, dotqj, s1c
      integer lh,hmin,hmax,hstep
      double complex m1hc(-1:1),m1kc(2),m1hh(-1:1),m1kh(2)
      double complex fac
      double complex im
      parameter (im = (0d0,1d0))
c
      logical nc_type,cc_type
c
      logical vvonly,vbonly,v4only,ponly,bbonly,bvonly
      parameter (vvonly=.false.,vbonly=.false.,v4only=.false.)
      parameter (ponly=.false.,bvonly=.false.,bbonly=.false.)

      logical vv_debug,p_debug,bb_debug,bv_debug,v4_debug
      parameter (bv_debug=.false.,v4_debug=.false.)
      parameter (vv_debug=.false.,p_debug=.false.,bb_debug=.false.)
c      parameter (bv_debug=.true.,v4_debug=.true.)
c      parameter (vv_debug=.true.,p_debug=.true.,bb_debug=.true.)

      logical linit
      save linit,ifl,zm2i
      data linit /.true./
c
c  ---------------------------------------------------------------------
c
c initialize & precompute stuff needed below:
c
c fix strong coupling gs**2 for the 2 quark lines:

      fpials(2) = fpi*als(1,1)
      fpials(3) = fpi*als(2,1)
	  
c define flavors of external quarks for the 4 NC and 2 CC subprocesses
c
      if (linit) then
         linit = .false.
         print*,'real-emission amplitudes:'
         if (higgs_only) print*,'H->ZZ graphs only'
         if (vvonly) print*,'VV graphs only'
         if (bvonly) print*,'VB graphs only'
         if (bbonly) print*,'BB graphs only'
         if (v4only) print*,'V->4l graphs only'
         if (ponly)  print*,'P graphs only'
         print*, 'minimum virtuality for t-channel photon exchange'
         print*, 'qsqA_min = ',qsqAmin,'GeV**2'
         print*,'damping factor of 1d-20 below qsqAmin '
c         
         kl = 1                  ! uucc
         ifl(1,kl) = 3
         ifl(2,kl) = 3
         ifl(3,kl) = 3
         ifl(4,kl) = 3
         kl = 2                  ! uuss
         ifl(1,kl) = 3
         ifl(2,kl) = 3
         ifl(3,kl) = 4
         ifl(4,kl) = 4
         kl = 3                  ! ddcc
         ifl(1,kl) = 4
         ifl(2,kl) = 4
         ifl(3,kl) = 3
         ifl(4,kl) = 3
         kl = 4                  ! ddss
         ifl(1,kl) = 4
         ifl(2,kl) = 4
         ifl(3,kl) = 4
         ifl(4,kl) = 4
         kl = 5                  ! udsc
         ifl(1,kl) = 3
         ifl(2,kl) = 4
         ifl(3,kl) = 4
         ifl(4,kl) = 3
         kl =6                   ! ducs
         ifl(1,kl) = 4
         ifl(2,kl) = 3
         ifl(3,kl) = 3
         ifl(4,kl) = 4
	 
         zm2i(2) = 1d0/dcmplx(xm2(2),-xmg(2))
         zm2i(3) = 1d0/dcmplx(xm2(3),-xmg(3))
         zm2i(4) = 1d0/dcmplx(xm2(4),-xmg(4))

      endif !linit

      if (k.le.4) then
         nc_type = .true.
         cc_type = .false.
      else
         cc_type = .true.
         nc_type = .false.
      endif

      if (gsign.eq.1) then	!final state gluon
        jlog2 = .true.		! can couple to upper/lower line
	jlog3 = .true. 
      	jmin = 2
	jmax = 3
      else		       !initial state gluon -> only:
	 if (sign(1).ne.sign(2)) then  !gluon from upper line
	       jlog2 = .true.
	       jlog3 = .false. 
	       jmin = 2
	       jmax = 2
	 else			       !gluon from lower line
	       jlog2 = .false.
	       jlog3 = .true. 
	       jmin = 3
	       jmax = 3
       endif
      endif	
      if(bos.eq.22) then        !lll'l' or llqq decay mode
         hmin=1
         hmax=4
         hstep=1
      elseif(bos.eq.21) then    !llvv decay mode
         hmin=1
         hmax=3
         hstep=2
      endif
                  
      do kl = 1,6
         do h = hmin,hmax,hstep
         do isig1 = -1,1,2
            do isig3 = -1,1,2
	       do j = 2,3
	          do l = 0,2
                     do i = 1,9
                  	mat(kl,isig1,isig3,h,j,l,i)  = 0d0
     		     enddo
		  enddo	!l
               enddo !j
            enddo
         enddo !isig
         enddo !h
      enddo
c
c identify fermion line sign factors (for 1 3 -> 2 4 etc.)
c
c      is1 = sign(1)
c      is3 = sign(3)
c      js1 = (3+sign(1))/2       ! 1 for sign1=-1,2 for sign1=+1
c      js3 = (7+sign(3))/2       ! 3 for sign3=-1,4 for sign3=+1

c fix is1 such that is1 = +1 for   q1 ->  q2 g 
c		    is1 = -1 for  q1b -> q2b g 
c		    is1 =  0 for    g -> q1b q2
c
c      for is3:     is3 = +1 for   q3 ->  q4 g 
c		    is3 = -1 for  q3b -> q4b g 
c		    is3 =  0 for    g -> q3b q4

	is1 = (sign(1)+sign(2))/2  
	is3 = (sign(3)+sign(4))/2
		
c (is1,is3 are fixed here and don't change throughout this run of the program)
c
c define the internal momenta
c
      do mu = 0,3
         do i = 1,4+nv
            p(mu,i) = pbar(mu,i)*sign(i)
         enddo
	 q(mu) = qbar(mu)*gsign
	 
         p21(mu,3) = p(mu,2) - p(mu,1)	! g from 34 line
         p21(mu,2) = p21(mu,3) + q(mu) 	! g from 12 line
         p43(mu,2) = p(mu,4) - p(mu,3)
         p43(mu,3) = p43(mu,2) + q(mu)	 

         if (bos.eq.22) then
	   pez(mu) = p(mu,6) - p(mu,5)
           puz(mu) = p(mu,8) - p(mu,7)
           pzz(mu) = pez(mu) + puz(mu) 
	 elseif (bos.eq.21) then
           pez(mu) =   p(mu,6) - p(mu,5)
           puz(mu) = -(p(mu,8) - p(mu,7))
           pzz(mu) =   pez(mu) + puz(mu)
	 endif
      enddo

      do j= 2,3
        p21(4,j) = p21(0,j)**2 - p21(1,j)**2 - p21(2,j)**2 - p21(3,j)**2
        p43(4,j) = p43(0,j)**2 - p43(1,j)**2 - p43(2,j)**2 - p43(3,j)**2     
      enddo

      q(4)   = 0d0
      pez(4) = pez(0)**2 - pez(1)**2 - pez(2)**2 - pez(3)**2
      puz(4) = puz(0)**2 - puz(1)**2 - puz(2)**2 - puz(3)**2
      pzz(4) = pzz(0)**2 - pzz(1)**2 - pzz(2)**2 - pzz(3)**2
 
c  ---------------------------------------------------------------------
c
c get the vector boson propagator factors
c
c depending on value of j, gluon is attached to respective quark line or not;
c no V is attached here 

      do j = 2,3
       prop21(1,j) = 1/p21(4,j)		!prop21(bos=1:4,j=2:3)
       prop21(2,j) = 1/dcmplx(p21(4,j)-xm2(2),xmg(2))
       prop21(3,j) = 1/dcmplx(p21(4,j)-xm2(3),xmg(3))
       prop21(4,j) = prop21(3,j)

       prop43(1,j) = 1/p43(4,j)
       prop43(2,j) = 1/dcmplx(p43(4,j)-xm2(2),xmg(2))
       prop43(3,j) = 1/dcmplx(p43(4,j)-xm2(3),xmg(3))
       prop43(4,j) = prop43(3,j)
      enddo
c
c  ---------------------------------------------------------------------

c for box-box and BV graphs we need the propagators for t-channel bosons 
c between quark lines:
      
      do j = 2,3 ! g from upper/lower line		
      
      do mu = 0,3
         qee(mu,j) = pez(mu)+p21(mu,j)  ! e+e-  emitted on upper line
         quu(mu,j) = puz(mu)+p21(mu,j)  !mu+mu- emitted on upper line
      enddo
      
      qee(4,j) = qee(0,j)**2-qee(1,j)**2-qee(2,j)**2-qee(3,j)**2
      quu(4,j) = quu(0,j)**2-quu(1,j)**2-quu(2,j)**2-quu(3,j)**2

      prop_ee(1,j) = 1d0/qee(4,j)
      prop_ee(2,j) = 1d0/dcmplx(qee(4,j)-xm2(2),xmg(2))
      prop_ee(3,j) = 1d0/dcmplx(qee(4,j)-xm2(3),xmg(3))
      prop_uu(1,j) = 1d0/quu(4,j)
      prop_uu(2,j) = 1d0/dcmplx(quu(4,j)-xm2(2),xmg(2))
      prop_uu(3,j) = 1d0/dcmplx(quu(4,j)-xm2(3),xmg(3))
      
      prop_ee(4,j) = prop_ee(3,j)
      prop_uu(4,j) = prop_uu(3,j)
      
      enddo

c  ---------------------------------------------------------------------
c
c get the external quark spinors (including factor sqrt(2E) )
c
      call psi0m(4,pbar(0,1),sign(1),psi)

c get the f-fbar currents (with no gluon radiation) 
c	J21^mu=jqq(mu,isig1,1,is1,0), J43^mu=jqq(mu,isig3,2,is3,0) 
c
        call curr6(1,psi(1,-1,2),p(0,2),psi(1,-1,1),p(0,1),
     #						jqq(0,-1,1,is1,0))      
        call curr6(1,psi(1,-1,4),p(0,4),psi(1,-1,3),p(0,3),
     #						jqq(0,-1,2,is3,0))
c
c  Get the gluon polarization vector
      do l = 1,2	! 2 gluon polarizations
         call polvec(qbar,l,eps(0,l))
	 
c for gauge check:
c         if (lgauge) then ! contract amplitude with q rather than eps(q)
c	 do mu = 0,3
c	 	eps(mu,l) = qbar(mu)
c	 enddo		 
c	 endif
	 	 
         do isig = -1,1,2	! fermion helicity 
 
c     NOTE for bras and kets: .true. if psi is a 2-spinor of the chi
c     form as output by psi0m, .false. otherwise:             
            call ket2r(psi(1,isig,1),.true.,p(0,1),isig,q,eps(0,l),
     $           braketg(1,isig,1,l),pq(0,1))      
            call bra2r(psi(1,isig,2),.true.,p(0,2),isig,q,eps(0,l),
     $           braketg(1,isig,2,l),pq(0,2))      
            call ket2r(psi(1,isig,3),.true.,p(0,3),isig,q,eps(0,l),
     $           braketg(1,isig,3,l),pq(0,3))      
            call bra2r(psi(1,isig,4),.true.,p(0,4),isig,q,eps(0,l),
     $           braketg(1,isig,4,l),pq(0,4))      

         enddo !isig
      enddo !l
       
c     Get the f-fbar currents with one gluon radiated from the
c     current line:
c
c	gluon from upper line:
      do l = 1, 2 ! gluon polarizations
         call curr6(1,psi(1,-1,2),p(0,2),braketg(1,-1,1,l),pq(0,1),jh1)	
         call curr6(1,braketg(1,-1,2,l),pq(0,2),psi(1,-1,1),p(0,1),jh2)	
         do isig = -1,1,2 ! fermion helicity
            do mu = 0,5
	       jqq(mu,isig,1,is1,l) = jh1(mu,isig) + jh2(mu,isig)
            enddo
         enddo
         
c	gluon from lower line:
         call curr6(1,psi(1,-1,4),p(0,4),braketg(1,-1,3,l),pq(0,3),jh1)	
         call curr6(1,braketg(1,-1,4,l),pq(0,4),psi(1,-1,3),p(0,3),jh2)	
         do isig = -1,1,2
            do mu = 0,5
               jqq(mu,isig,2,is3,l) = jh1(mu,isig) + jh2(mu,isig)
            enddo
         enddo
      enddo !l
      
      if (ponly.or.bbonly.or.bvonly.or.v4only) goto 111
c
c -----------------------------------------------------------------------
c -----------------------------------------------------------------------
c
c contract with vvtoww tensors to get Vertex-Vertex scattering diagrams
c
c neutral current first:
c
      if (nc_type) then    

      do h = hmin,hmax,hstep

      do l = 1,2	! gluon polarization
        do isig1 = -1,1,2  ! fermion1 helicity
          do isig3 = -1,1,2  ! fermion3 helicity
	 
           if (jlog2) then
	   j = 2 ! g from upper line
	   
	   maa = contract_Tjj(aazz(0,0,j,h),jqq(0,isig1,1,is1,l),
     #	   				    jqq(0,isig3,2,is3,0))
           maz = contract_Tjj(azzz(0,0,j,h),jqq(0,isig1,1,is1,l),
     #	   				    jqq(0,isig3,2,is3,0))
           mza = contract_Tjj(zazz(0,0,j,h),jqq(0,isig3,2,is3,0),
     #	   				    jqq(0,isig1,1,is1,l))

           mzz = contract_Tjj(zzzz(0,0,j,h),jqq(0,isig1,1,is1,l),
     #	   				    jqq(0,isig3,2,is3,0))
 
c           do k = 1,4
              mat(k,isig1,isig3,h,j,l,1) = 
     1    	   maa*clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3)
     2    	 + maz*clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)
     3    	 + mza*clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)
     4    	 + mzz*clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3)
c           enddo

	   endif !jlog
	 
           if (jlog3) then
	   j = 3 ! g from lower line
	   
	   maa = contract_Tjj(aazz(0,0,j,h),jqq(0,isig1,1,is1,0),
     #	   				    jqq(0,isig3,2,is3,l))
           maz = contract_Tjj(azzz(0,0,j,h),jqq(0,isig1,1,is1,0),
     #	   				    jqq(0,isig3,2,is3,l))
           mza = contract_Tjj(zazz(0,0,j,h),jqq(0,isig3,2,is3,l),
     #	   				    jqq(0,isig1,1,is1,0))
           mzz = contract_Tjj(zzzz(0,0,j,h),jqq(0,isig1,1,is1,0),
     #	   				    jqq(0,isig3,2,is3,l))
 
c           do k = 1,4
              mat(k,isig1,isig3,h,j,l,1) = 
     1    	   maa*clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3)
     2    	 + maz*clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)
     3    	 + mza*clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)
     4    	 + mzz*clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3)
c           enddo
	   endif !jlog
c
          enddo !isig
        enddo !isig
      enddo !l

c ----------------------------------------------------------------    
c
c check result for NC against madgraph output:

      if (vv_debug.and.higgs_only) then 
      
          do isig1 = -1,1,2
          do isig3 = -1,1,2

	  do lh = -1,1,2	! gluon pol. in hel. basis
 	    
             m1hc(lh) = 0d0 
 
c compute reference result from individual madgraph diagrams tampr(i,...):

c Higgs graphs only (need sum of t- and s-channel): 
c s-channel:
	    m1hh(lh)=tamprz(2057,isig1,isig3,h,lh,k)
     #             + tamprz(2058,isig1,isig3,h,lh,k) 
     #		   + tamprz(2059,isig1,isig3,h,lh,k)
     #             + tamprz(2060,isig1,isig3,h,lh,k)

c t-channel:
            m1hh(lh) = m1hh(lh)  
     #		   + tamprz(1921,isig1,isig3,h,lh,k)
     #             + tamprz(1923,isig1,isig3,h,lh,k)
     #		   + tamprz(1922,isig1,isig3,h,lh,k)
     #             + tamprz(1924,isig1,isig3,h,lh,k)
     #		   + tamprz(1989,isig1,isig3,h,lh,k)
     #             + tamprz(1991,isig1,isig3,h,lh,k)
     #		   + tamprz(1990,isig1,isig3,h,lh,k)
     #             + tamprz(1992,isig1,isig3,h,lh,k)

            m1hc(lh) = m1hh(lh)
  
	  enddo ! end of lh loop 
	    
	    ! compute m1 in kartesian basis:
	    m1kc(1) =     (m1hc(-1)-m1hc(1))/dsqrt(2d0)
	    m1kc(2) = -im*(m1hc(-1)+m1hc(1))/dsqrt(2d0)
c		  		    
c print results from checks:

         print*, 'check NC for VV:'
         ! have mat(k,isig1,isig3,h,j,l,i=1)
c         print*,'signs:',sign	     
c         print*,'gign:',gsign	
  	  print*,'h = ',h
         print*,' vbf for k=',k,'      '
c	  	  	
	 print*,'m1kc=',m1kc(1),m1kc(2)
	 print*,'mat=',mat(k,isig1,isig3,h,2,1,1)+
     #                 mat(k,isig1,isig3,h,3,1,1),
     #  	       mat(k,isig1,isig3,h,2,2,1)+
     #                 mat(k,isig1,isig3,h,3,2,1)
	 print*,'rat for l=1=',(mat(k,isig1,isig3,h,2,1,1)+
     #                          mat(k,isig1,isig3,h,3,1,1))/m1kc(1)
	 print*,'rat for l=2=',(mat(k,isig1,isig3,h,2,2,1)+
     #                          mat(k,isig1,isig3,h,3,2,1))/m1kc(2)

         enddo !isig3
         enddo !isig1

      endif !vv_debug   

c -----------------------
      
         enddo !h
        
      else !cc_type

      do h = hmin,hmax,hstep
c
c charged current (k=5,6):
c      
      do l = 1,2	! gluon polarization (kart. basis)
      
      if (jlog2) then
      j =  2 ! g from upper line
            
      mzz6 = contract_Tjj(wwzz6(0,0,j,h),jqq(0,-1,2,is3,0),
     #      			         jqq(0,-1,1,is1,l))
      mzz5 = contract_Tjj(wwzz5(0,0,j,h),jqq(0,-1,1,is1,l),
     #					 jqq(0,-1,2,is3,0))
      if (k.eq.5) mat(k,-1,-1,h,j,l,1) = mzz5*clr(3,3,-1)**2
      if (k.eq.6) mat(k,-1,-1,h,j,l,1) = mzz6*clr(3,3,-1)**2
      
      endif !jlog2
  
      if (jlog3) then
      j =  3 ! g from lower line
            
      mzz6 = contract_Tjj(wwzz6(0,0,j,h),jqq(0,-1,2,is3,l),
     #					 jqq(0,-1,1,is1,0))
      mzz5 = contract_Tjj(wwzz5(0,0,j,h),jqq(0,-1,1,is1,0),
     #					 jqq(0,-1,2,is3,l))
      if (k.eq.5) mat(k,-1,-1,h,j,l,1) = mzz5*clr(3,3,-1)**2
      if (k.eq.6) mat(k,-1,-1,h,j,l,1) = mzz6*clr(3,3,-1)**2
     
      endif !jlog3
      enddo ! l-loop

      enddo !h
      endif !nc/cc

c ----------------------------------------------------------------    
c
c check result for CC against madgraph output:

      if (cc_type) then

      if (vv_debug.and.higgs_only) then 

         do h = hmin,hmax,hstep
	  do lh = -1,1,2	! gluon pol. in hel. basis
 	    
             m1hc(lh) = 0 
 
c compute reference result from individual madgraph diagrams tampr(i,...)
! Higgs graphs only: 
	    m1hh(lh)=tamprz(1109,-1,-1,h,lh,k)+tamprz(1110,-1,-1,h,lh,k) 
     #		   + tamprz(1111,-1,-1,h,lh,k)+tamprz(1112,-1,-1,h,lh,k)

            m1hc(lh) = m1hh(lh)

  
	  enddo ! end of lh loop 
	    
	    ! compute m1 in kartesian basis:
	    m1kc(1) =     (m1hc(-1)-m1hc(1))/dsqrt(2d0)
	    m1kc(2) = -im*(m1hc(-1)+m1hc(1))/dsqrt(2d0)
c		  		    
c print results from checks:

c         print*, 'check CC for VV:'
c         print*,'signs:',sign	     
c         print*,'gign:',gsign	
c  	  print*,'h = ',h
c         print*,' vbf for k=',k,'      '
c         
c	 print*,'m1kc=',m1kc(1),m1kc(2)
c	 print*,'mat=',mat(k,-1,-1,h,2,1,1)+mat(k,-1,-1,h,3,1,1),
c     #  	       mat(k,-1,-1,h,2,2,1)+mat(k,-1,-1,h,3,2,1)
	 print*,'rat for l=1=',(mat(k,-1,-1,h,2,1,1)+mat(k,-1,-1,h,3,1,1))/
     &        m1kc(1)
	 print*,'rat for l=2=',(mat(k,-1,-1,h,2,2,1)+mat(k,-1,-1,h,3,2,1))/
     &        m1kc(2)
	  	  	
         enddo !h
	   

         endif 
      endif ! end of debugging block
      
c
c -----------------------------------------------------------------------
c -----------------------------------------------------------------------
c
      if (vvonly) goto 999
      if (higgs_only) goto 999

 111  continue

c -----------------------------------------------------------------------
c
c  prepare box diagrams: attach V to external spinors
c 
      l = 0    ! no gluon 
 
 	do i = 1,3,2  ! fermion ID
		
		if (i.eq.1) then
		   is = is1
		else
		   is = is3   
		endif   
   
         do h = hmin,hmax,hstep     
	 do isig = -1,1,2
	
         call ket2c(psi(1,isig,i),.true.,p(0,i),isig,qe(0),ze(1,h),
     1              psize(1,isig,h,i),fqze(0,i))
         call ket2c(psi(1,isig,i),.true.,p(0,i),isig,qe(0),ae(1,h),
     1              psiae(1,isig,h,i),fqae(0,i))
         call ket2c(psi(1,isig,i),.true.,p(0,i),isig,qu(0),zu(1,h),
     1              psizu(1,isig,h,i),fqzu(0,i))
         call ket2c(psi(1,isig,i),.true.,p(0,i),isig,qu(0),au(1,h),
     1              psiau(1,isig,h,i),fqau(0,i))
        
	 call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,qe(0),ze(1,h),
     1              psize(1,isig,h,i+1),fqze(0,i+1))
         call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,qe(0),ae(1,h),
     1              psiae(1,isig,h,i+1),fqae(0,i+1))
         call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,qu(0),zu(1,h),
     1              psizu(1,isig,h,i+1),fqzu(0,i+1))
         call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,qu(0),au(1,h),
     1              psiau(1,isig,h,i+1),fqau(0,i+1))

	enddo !isig     
	  
         call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1                 psize(1,-1,h,i),fqze(0,i), jez(0,-1,h,is,i,l)   )
         call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1                 psiae(1,-1,h,i),fqae(0,i), jea(0,-1,h,is,i,l)   )
         call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1                 psizu(1,-1,h,i),fqzu(0,i), juz(0,-1,h,is,i,l)   )
         call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1                 psiau(1,-1,h,i),fqau(0,i), jua(0,-1,h,is,i,l)   )

         call curr6(1,psize(1,-1,h,i+1),fqze(0,i+1),
     1                 psi(1,-1,i),p(0,i), jez(0,-1,h,is,i+1,l) )
         call curr6(1,psiae(1,-1,h,i+1),fqae(0,i+1),
     1                 psi(1,-1,i),p(0,i), jea(0,-1,h,is,i+1,l) )
         call curr6(1,psizu(1,-1,h,i+1),fqzu(0,i+1),
     1                 psi(1,-1,i),p(0,i), juz(0,-1,h,is,i+1,l) )
         call curr6(1,psiau(1,-1,h,i+1),fqau(0,i+1),
     1                 psi(1,-1,i),p(0,i), jua(0,-1,h,is,i+1,l) )
     
         enddo !h
      
 	enddo ! i loop 
c
c -----------------------------------------------------------------------
c
c attach A/Z to f1 or f2 / f3 or f4:

 	do i = 1,3,2  ! fermion ID (isigi=-1 or 1)  

		if (i.eq.1) then
		   is = is1
		else
		   is = is3   
		endif   
 
 ! gluon radiation from fermion i / i+1
 	 do l = 1,2

         do h = hmin,hmax,hstep

	 do isig = -1,1,2
            call ket2c(braketg(1,isig,i,l),.false.,pq(0,i),isig,
     $             qe(0),ze(1,h),braketgze(1,isig,h,i,l),pgze(0,i))
            call bra2c(braketg(1,isig,i+1,l),.false.,pq(0,i+1),isig,
     $             qe(0),ze(1,h),braketgze(1,isig,h,i+1,l),pgze(0,i+1))
		
            call ket2r(psize(1,isig,h,i),.false.,fqze(0,i),isig,
     $	    	   q(0),eps(0,l),braketzeg(1,isig,h,i,l),pzeg(0,i))      
            call bra2r(psize(1,isig,h,i+1),.false.,fqze(0,i+1),isig,
     $	    	   q(0),eps(0,l),braketzeg(1,isig,h,i+1,l),pzeg(0,i+1))      
  
            call ket2c(braketg(1,isig,i,l),.false.,pq(0,i),isig,
     $             qu(0),zu(1,h),braketgzu(1,isig,h,i,l),pgzu(0,i))
            call bra2c(braketg(1,isig,i+1,l),.false.,pq(0,i+1),isig,
     $             qu(0),zu(1,h),braketgzu(1,isig,h,i+1,l),pgzu(0,i+1))
		
	    call ket2r(psizu(1,isig,h,i),.false.,fqzu(0,i),isig,
     $	           q(0),eps(0,l),braketzug(1,isig,h,i,l),pzug(0,i))      
            call bra2r(psizu(1,isig,h,i+1),.false.,fqzu(0,i+1),isig,
     $	    	   q(0),eps(0,l),braketzug(1,isig,h,i+1,l),pzug(0,i+1))      

            call ket2c(braketg(1,isig,i,l),.false.,pq(0,i),
     $            isig,qe(0),ae(1,h),braketgae(1,isig,h,i,l),pgae(0,i))
            call bra2c(braketg(1,isig,i+1,l),.false.,pq(0,i+1),
     $        isig,qe(0),ae(1,h),braketgae(1,isig,h,i+1,l),pgae(0,i+1))
		
            call ket2r(psiae(1,isig,h,i),.false.,fqae(0,i),isig,
     $           q(0),eps(0,l),braketaeg(1,isig,h,i,l),paeg(0,i))      
            call bra2r(psiae(1,isig,h,i+1),.false.,fqae(0,i+1),isig,
     $	    	 q(0),eps(0,l),braketaeg(1,isig,h,i+1,l),paeg(0,i+1))      
  
            call ket2c(braketg(1,isig,i,l),.false.,pq(0,i),
     $           isig,qu(0),au(1,h),braketgau(1,isig,h,i,l),pgau(0,i))
            call bra2c(braketg(1,isig,i+1,l),.false.,pq(0,i+1),
     $        isig,qu(0),au(1,h),braketgau(1,isig,h,i+1,l),pgau(0,i+1))
		
            call ket2r(psiau(1,isig,h,i),.false.,fqau(0,i),isig,
     $	    	 q(0),eps(0,l),braketaug(1,isig,h,i,l),paug(0,i))      
            call bra2r(psiau(1,isig,h,i+1),.false.,fqau(0,i+1),isig,
     $	    	 q(0),eps(0,l),braketaug(1,isig,h,i+1,l),paug(0,i+1))      
	 enddo !isig


   	    call curr6(1,psi(1,-1,i+1),p(0,i+1),
     $	    			braketgze(1,-1,h,i,l),pgze(0,i),jzegi)
      	    call curr6(1,braketgze(1,-1,h,i+1,l),pgze(0,i+1),
     $	    			psi(1,-1,i),p(0,i),jzegii)		       
      	    call curr6(1,psi(1,-1,i+1),p(0,i+1),
     $			        braketzeg(1,-1,h,i,l),pzeg(0,i),jgzei)
      	    call curr6(1,braketzeg(1,-1,h,i+1,l),pzeg(0,i+1),	
     $			        psi(1,-1,i),p(0,i),jgzeii)
    	    
	    call curr6(1,psi(1,-1,i+1),p(0,i+1),
     $	    			braketgzu(1,-1,h,i,l),pgzu(0,i),jzugi)
      	    call curr6(1,braketgzu(1,-1,h,i+1,l),pgzu(0,i+1),
     $	    			psi(1,-1,i),p(0,i),jzugii)		       
      	    call curr6(1,psi(1,-1,i+1),p(0,i+1),
     $			        braketzug(1,-1,h,i,l),pzug(0,i),jgzui)
      	    call curr6(1,braketzug(1,-1,h,i+1,l),pzug(0,i+1),	
     $			        psi(1,-1,i),p(0,i),jgzuii)
   
    	    call curr6(1,psi(1,-1,i+1),p(0,i+1),
     $	    			braketgae(1,-1,h,i,l),pgae(0,i),jaegi) 
            call curr6(1,braketgae(1,-1,h,i+1,l),pgae(0,i+1),
     $	    			psi(1,-1,i),p(0,i),jaegii)		       
      	    call curr6(1,psi(1,-1,i+1),p(0,i+1),
     $			        braketaeg(1,-1,h,i,l),paeg(0,i),jgaei)
      	    call curr6(1,braketaeg(1,-1,h,i+1,l),paeg(0,i+1),	
     $			        psi(1,-1,i),p(0,i),jgaeii)
    	    
	    call curr6(1,psi(1,-1,i+1),p(0,i+1),
     $	    			braketgau(1,-1,h,i,l),pgau(0,i),jaugi) 
            call curr6(1,braketgau(1,-1,h,i+1,l),pgau(0,i+1),
     $	    			psi(1,-1,i),p(0,i),jaugii)		       
      	    call curr6(1,psi(1,-1,i+1),p(0,i+1),
     $			        braketaug(1,-1,h,i,l),paug(0,i),jgaui)
      	    call curr6(1,braketaug(1,-1,h,i+1,l),paug(0,i+1),	
     $			        psi(1,-1,i),p(0,i),jgauii)
 
  ! gluon radiation from fermion i+1 / i
     	    call curr6(1,braketg(1,-1,i+1,l),pq(0,i+1),
     $	    			 psize(1,-1,h,i),fqze(0,i),jzeg0i)
     	    call curr6(1,psize(1,-1,h,i+1),fqze(0,i+1),
     $	    			braketg(1,-1,i,l),pq(0,i),jzeg0ii)

    	    call curr6(1,braketg(1,-1,i+1,l),pq(0,i+1),
     $	    			 psizu(1,-1,h,i),fqzu(0,i),jzug0i)
     	    call curr6(1,psizu(1,-1,h,i+1),fqzu(0,i+1),
     $	    			braketg(1,-1,i,l),pq(0,i),jzug0ii)
     	    
	    call curr6(1,braketg(1,-1,i+1,l),pq(0,i+1),
     $	    			 psiae(1,-1,h,i),fqae(0,i),jaeg0i)
     	    call curr6(1,psiae(1,-1,h,i+1),fqae(0,i+1),
     $	    			braketg(1,-1,i,l),pq(0,i),jaeg0ii)

    	    call curr6(1,braketg(1,-1,i+1,l),pq(0,i+1),
     $	    			 psiau(1,-1,h,i),fqau(0,i),jaug0i)
     	    call curr6(1,psiau(1,-1,h,i+1),fqau(0,i+1),
     $	    		 	 braketg(1,-1,i,l),pq(0,i),jaug0ii)
     	 
	    do mu = 0,5
	    do isig = -1,1,2
	    	   
 		   jez(mu,isig,h,is,i,l) = jzegi(mu,isig)+
     $			jgzei(mu,isig)+jzeg0i(mu,isig)  
                                ! Ze & g emission from i/i+1 line 
  		   	
		   jez(mu,isig,h,is,i+1,l) = jzegii(mu,isig)+
     $			jgzeii(mu,isig)+jzeg0ii(mu,isig)   

 		   juz(mu,isig,h,is,i,l) = jzugi(mu,isig)+
     $			jgzui(mu,isig)+jzug0i(mu,isig)   
  		   
		   juz(mu,isig,h,is,i+1,l) = jzugii(mu,isig)+
     $			jgzuii(mu,isig)+jzug0ii(mu,isig)   
	    	    		   
 		   jea(mu,isig,h,is,i,l) = jaegi(mu,isig)+
     $			jgaei(mu,isig)+jaeg0i(mu,isig)    
                                ! Ae & g emission from i/i+1 lin
		   
		   jea(mu,isig,h,is,i+1,l) = jaegii(mu,isig)+
     $			jgaeii(mu,isig)+jaeg0ii(mu,isig)  

 		   jua(mu,isig,h,is,i,l) = jaugi(mu,isig)+
     $			jgaui(mu,isig)+jaug0i(mu,isig)   
  		   
		   jua(mu,isig,h,is,i+1,l) = jaugii(mu,isig)+
     $			jgauii(mu,isig)+jaug0ii(mu,isig)   	    	   
    	    	   
	    enddo !isig
	    enddo  !mu 

            enddo !h
       
       enddo ! l = 1,2
c
       enddo ! i loop
       
      do h = hmin,hmax,hstep
      do l = 0,2
      do isig = -1,1,2
        
	jj21au(isig,h,l) = dotcc(au(1,h),jqq(0,isig,1,is1,l))
	jj21zu(isig,h,l) = dotcc(zu(1,h),jqq(0,isig,1,is1,l))
	jj21ae(isig,h,l) = dotcc(ae(1,h),jqq(0,isig,1,is1,l))
	jj21ze(isig,h,l) = dotcc(ze(1,h),jqq(0,isig,1,is1,l))
    
	jj43au(isig,h,l) = dotcc(au(1,h),jqq(0,isig,2,is3,l))
	jj43zu(isig,h,l) = dotcc(zu(1,h),jqq(0,isig,2,is3,l))
	jj43ae(isig,h,l) = dotcc(ae(1,h),jqq(0,isig,2,is3,l))
	jj43ze(isig,h,l) = dotcc(ze(1,h),jqq(0,isig,2,is3,l))
       
c        if (l.eq.0.and.isig.eq.-1) print*,'jj43=',jj43au(isig,h,l)

       enddo !isig
       enddo ! l	
       enddo !h

       if (v4only) goto 333
       if (bbonly) goto 444
       if (ponly) goto 555

c -----------------------------------------------------------------------
c
c now calculate the Vertex-box diagrams; get t-channel currents first

     	
      do ka = 1,2
         kb = 3-ka
	 
	 if (kb.eq.1) then
	 	is = is1
	 else
	 	is = is3
	 endif	
	 
c ka=1 and kb=2 is for "box correction" to upper line
c ka=2 and kb=1 is for "box correction" to lower line

      do j = 2,3 ! g from upper/lower line

         if (ka.eq.1) then
            zuu(4,j) = -dcmplx(quu(0,j),quu(3,j))
            zuu(5,j) = -dcmplx(quu(1,j),quu(2,j))
            zee(4,j) = -dcmplx(qee(0,j),qee(3,j))
            zee(5,j) = -dcmplx(qee(1,j),qee(2,j))
         else
            zee(4,j) = dcmplx(quu(0,j),quu(3,j))
            zee(5,j) = dcmplx(quu(1,j),quu(2,j))
            zuu(4,j) = dcmplx(qee(0,j),qee(3,j))
            zuu(5,j) = dcmplx(qee(1,j),qee(2,j))
         endif
	 	 
      enddo ! j
	 
      do h = hmin,hmax,hstep
         do isig = -1,1,2

c--------
c
c  VV -> e+e-: (V = A or Z)
	 
	 ! l = 0:
	   
	  if (ka.eq.1) then
	    call contract_T2j(aaee(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsaa0)
	    call contract_T2j(azee(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsaz0)
	    call contract_T2j(zaee(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsza0)
	    call contract_T2j(zzee(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epszz0)
	  else
	    call contract_T1j(aaee(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsaa0)
	    call contract_T1j(azee(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsza0)
	    call contract_T1j(zaee(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsaz0)
	    call contract_T1j(zzee(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epszz0)
	  endif
             	   
	    do mu = 0,3
               epsaee(mu,isig,h,3,ka,1+ka,0) =
     1              epsaa0(mu)*clr(3,1,isig)+epsaz0(mu)*clr(3,2,isig)
               epsaee(mu,isig,h,4,ka,1+ka,0) =
     1              epsaa0(mu)*clr(4,1,isig)+epsaz0(mu)*clr(4,2,isig) 
               epszee(mu,isig,h,3,ka,1+ka,0) =
     1              epsza0(mu)*clr(3,1,isig)+epszz0(mu)*clr(3,2,isig)
               epszee(mu,isig,h,4,ka,1+ka,0) =
     1              epsza0(mu)*clr(4,1,isig)+epszz0(mu)*clr(4,2,isig)
c
            enddo ! mu
	    
	  do l = 1,2
	   
	  if (ka.eq.1) then            
	    call contract_T2j(aaee(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsaa) 
	    call contract_T2j(azee(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsaz) 
	    call contract_T2j(zaee(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsza) 
	    call contract_T2j(zzee(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epszz) 
	  else	  
	    call contract_T1j(aaee(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsaa) 
	    call contract_T1j(azee(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsza) 
	    call contract_T1j(zaee(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsaz) 
	    call contract_T1j(zzee(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epszz) 
	  endif
	    
	
	    do mu = 0,3               
               epsaee(mu,isig,h,3,ka,4-ka,l) =
     1              epsaa(mu)*clr(3,1,isig)+epsaz(mu)*clr(3,2,isig)
               epsaee(mu,isig,h,4,ka,4-ka,l) =
     1              epsaa(mu)*clr(4,1,isig)+epsaz(mu)*clr(4,2,isig)
               epszee(mu,isig,h,3,ka,4-ka,l) =
     1              epsza(mu)*clr(3,1,isig)+epszz(mu)*clr(3,2,isig)
               epszee(mu,isig,h,4,ka,4-ka,l) =
     1              epsza(mu)*clr(4,1,isig)+epszz(mu)*clr(4,2,isig)
            enddo ! mu            

          enddo !l

c--------
c
c VV -> mu+mu-: (V = A or Z)
	 
	 ! l = 0:
	   
	  if (ka.eq.1) then            
	    call contract_T2j(aauu(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsaa0)
	    call contract_T2j(azuu(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsaz0)
	    call contract_T2j(zauu(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsza0)
	    call contract_T2j(zzuu(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epszz0)
 	  else	  
 	    call contract_T1j(aauu(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsaa0)
	    call contract_T1j(azuu(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsza0)
	    call contract_T1j(zauu(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsaz0)
	    call contract_T1j(zzuu(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epszz0)
          endif

	  
	    do mu = 0,3
               epsauu(mu,isig,h,3,ka,1+ka,0) =
     1              epsaa0(mu)*clr(3,1,isig)+epsaz0(mu)*clr(3,2,isig)
               epsauu(mu,isig,h,4,ka,1+ka,0) =
     1              epsaa0(mu)*clr(4,1,isig)+epsaz0(mu)*clr(4,2,isig) 
               epszuu(mu,isig,h,3,ka,1+ka,0) =
     1              epsza0(mu)*clr(3,1,isig)+epszz0(mu)*clr(3,2,isig)
               epszuu(mu,isig,h,4,ka,1+ka,0) =
     1              epsza0(mu)*clr(4,1,isig)+epszz0(mu)*clr(4,2,isig)	
            enddo ! mu
	    
	   do l = 1,2
            
	  if (ka.eq.1) then            
	    call contract_T2j(aauu(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsaa) 
	    call contract_T2j(azuu(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsaz) 
	    call contract_T2j(zauu(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsza) 
	    call contract_T2j(zzuu(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epszz) 
 	  else	  
	    call contract_T1j(aauu(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsaa) 
	    call contract_T1j(azuu(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsza) 
	    call contract_T1j(zauu(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsaz) 
	    call contract_T1j(zzuu(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epszz) 
	  endif
	
	    do mu = 0,3               
               epsauu(mu,isig,h,3,ka,4-ka,l) =
     1              epsaa(mu)*clr(3,1,isig)+epsaz(mu)*clr(3,2,isig)
               epsauu(mu,isig,h,4,ka,4-ka,l) =
     1              epsaa(mu)*clr(4,1,isig)+epsaz(mu)*clr(4,2,isig)
               epszuu(mu,isig,h,3,ka,4-ka,l) =
     1              epsza(mu)*clr(3,1,isig)+epszz(mu)*clr(3,2,isig)
               epszuu(mu,isig,h,4,ka,4-ka,l) =
     1              epsza(mu)*clr(4,1,isig)+epszz(mu)*clr(4,2,isig)	
            enddo ! mu
          enddo !l

 	  do l = 0,2
	    do j = 2,3
	      do mu = 4,5           ! add momentum info to the currents
               epsaee(mu,isig,h,3,ka,j,l) = zuu(mu,j)
               epsaee(mu,isig,h,4,ka,j,l) = zuu(mu,j)
               epszee(mu,isig,h,3,ka,j,l) = zuu(mu,j)
               epszee(mu,isig,h,4,ka,j,l) = zuu(mu,j)
               
	       epsauu(mu,isig,h,3,ka,j,l) = zee(mu,j)
               epsauu(mu,isig,h,4,ka,j,l) = zee(mu,j)
               epszuu(mu,isig,h,3,ka,j,l) = zee(mu,j)
               epszuu(mu,isig,h,4,ka,j,l) = zee(mu,j)
              enddo
	    enddo	
           enddo ! l

c  gauge term for Z propagator:
       do kf= 3,4 !up/down type
       do l = 0,2
       do j = 2,3
          qepszee(h,ka,kf,isig,j,l) = -dotrc(
     &         quu(0,j),epszee(0,isig,h,kf,ka,j,l))*zm2i(2) 
          qepszuu(h,ka,kf,isig,j,l) = -dotrc(
     &         qee(0,j),epszuu(0,isig,h,kf,ka,j,l))*zm2i(2)  
          
       enddo !j
       enddo !l
       enddo !kf

       enddo !isig

       enddo !h
c
c--------
c  do the same for the CC processes (V attached to j43 or j21 current):
	    
         isig = -1

         do h = hmin,hmax,hstep
	
	 ! l = 0:
	   
	 if (ka.eq.1) then
	   call contract_T2j(CCee(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsee0) 
	   call contract_T2j(CCuu(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsuu0) 
           call contract_T1j(CCee6(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsee60)
	   call contract_T1j(CCuu6(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsuu60)
         else
	   call contract_T1j(CCee(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsee0) 
	   call contract_T1j(CCuu(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsuu0) 
           call contract_T2j(CCee6(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsee60) 
	   call contract_T2j(CCuu6(0,0,ka,1+ka,h),jqq(0,isig,kb,is,0),epsuu60) 
	 endif
	
	 do mu = 0,3 
            epsCCee(mu,isig,h,ka,1+ka,0) = epsee0(mu)*clr(3,3,isig)
            epsCCuu(mu,isig,h,ka,1+ka,0) = epsuu0(mu)*clr(3,3,isig)
  
            epsCCee6(mu,isig,h,ka,1+ka,0) = epsee60(mu)*clr(3,3,isig)
            epsCCuu6(mu,isig,h,ka,1+ka,0) = epsuu60(mu)*clr(3,3,isig)
	  enddo ! mu

c extra terms for (q_mu q_nu)-contributions of massive boson propagators: 
	 if (ka.eq.1) then
            qepsCCee(h,ka,1+ka,0)  = -dotrc(quu(0,1+ka),epsee0)*zm2i(3)
            qepsCCuu(h,ka,1+ka,0)  = -dotrc(qee(0,1+ka),epsuu0)*zm2i(3)
            qepsCCee6(h,ka,1+ka,0) = -dotrc(quu(0,1+ka),epsee60)*zm2i(3)
            qepsCCuu6(h,ka,1+ka,0) = -dotrc(qee(0,1+ka),epsuu60)*zm2i(3)
        else
            qepsCCee(h,ka,1+ka,0)  = -dotrc(qee(0,1+ka),epsee0)*zm2i(3)
            qepsCCuu(h,ka,1+ka,0)  = -dotrc(quu(0,1+ka),epsuu0)*zm2i(3)
            qepsCCee6(h,ka,1+ka,0) = -dotrc(qee(0,1+ka),epsee60)*zm2i(3)
            qepsCCuu6(h,ka,1+ka,0) = -dotrc(quu(0,1+ka),epsuu60)*zm2i(3)
        endif !ka
	       
   	 do l = 1,2
	   
	 if (ka.eq.1) then
            call contract_T2j(CCee(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsee) 
            call contract_T2j(CCuu(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsuu) 
            call contract_T1j(CCee6(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsee6) 
            call contract_T1j(CCuu6(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsuu6) 
         else
            call contract_T1j(CCee(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsee) 
            call contract_T1j(CCuu(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsuu) 
            call contract_T2j(CCee6(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsee6) 
            call contract_T2j(CCuu6(0,0,ka,4-ka,h),jqq(0,isig,kb,is,l),epsuu6) 
 	 endif
          	 
	 do mu = 0,3 
            epsCCee(mu,isig,h,ka,4-ka,l) = epsee(mu)*clr(3,3,isig)
            epsCCuu(mu,isig,h,ka,4-ka,l) = epsuu(mu)*clr(3,3,isig)
  
            epsCCee6(mu,isig,h,ka,4-ka,l) = epsee6(mu)*clr(3,3,isig)
            epsCCuu6(mu,isig,h,ka,4-ka,l) = epsuu6(mu)*clr(3,3,isig)
	  enddo ! mu
		 
c extra terms for (q_mu q_nu)-contributions of massive boson propagators:
	 if (ka.eq.1) then
	    qepsCCee(h,ka,4-ka,l)  = -dotrc(quu(0,4-ka),epsee)*zm2i(3)
            qepsCCuu(h,ka,4-ka,l)  = -dotrc(qee(0,4-ka),epsuu)*zm2i(3)
            qepsCCee6(h,ka,4-ka,l) = -dotrc(quu(0,4-ka),epsee6)*zm2i(3)
            qepsCCuu6(h,ka,4-ka,l) = -dotrc(qee(0,4-ka),epsuu6)*zm2i(3)
        else
	    qepsCCee(h,ka,4-ka,l)  = -dotrc(qee(0,4-ka),epsee)*zm2i(3)
            qepsCCuu(h,ka,4-ka,l)  = -dotrc(quu(0,4-ka),epsuu)*zm2i(3)
            qepsCCee6(h,ka,4-ka,l) = -dotrc(qee(0,4-ka),epsee6)*zm2i(3)
            qepsCCuu6(h,ka,4-ka,l) = -dotrc(quu(0,4-ka),epsuu6)*zm2i(3)
        endif !ka
	    
        enddo !l
	    	 	 
 	do l = 0,2
	do j = 2,3
        
	 do mu = 4,5            ! add momentum info to the currents
            epsCCee(mu,isig,h,ka,j,l)  = zuu(mu,j)
            epsCCuu(mu,isig,h,ka,j,l)  = zee(mu,j)
	    
            epsCCee6(mu,isig,h,ka,j,l) = zee(mu,j)
            epsCCuu6(mu,isig,h,ka,j,l) = zuu(mu,j)
         enddo 
 
 	enddo !j   	 
        enddo ! l

        enddo !h		 
	    	 	 
c ------------

      enddo ! ka loop
	
c --------------------------------------------------------------------
c
c now construct the contribution to the amplitude by current contraction
c  
c neutral current first (2 bosons attached to 12 line):     
c      	   
      if (nc_type) then 

      do h = hmin,hmax,hstep

	do isig1 = -1,1,2
	   do isig3 = -1,1,2

           do l = 1,2
c	   do k = 1,4 ! e+e- from upper line, g from upper line:
	   
	   m1aae = dotcc(jea(0,isig1,h,is1,2,l),
     &                   epsauu(0,isig3,h,ifl(3,k),1,2,0))
	   m1aze = dotcc(jea(0,isig1,h,is1,2,l),
     &                   epszuu(0,isig3,h,ifl(3,k),1,2,0))
	   m1zae = dotcc(jez(0,isig1,h,is1,2,l),
     &                   epsauu(0,isig3,h,ifl(3,k),1,2,0))
	   m1zze = dotcc(jez(0,isig1,h,is1,2,l),
     &                   epszuu(0,isig3,h,ifl(3,k),1,2,0))
	   
	   z1aze = qepszuu(h,1,ifl(3,k),isig3,2,0)*jj21ae(isig1,h,l)    
	   z1zze = qepszuu(h,1,ifl(3,k),isig3,2,0)*jj21ze(isig1,h,l)    
	   
	   mz1aae =  m1aae*clr(ifl(1,k),1,isig1)*clr(ifl(2,k),1,isig1)
	   mz1aze = (m1aze+z1aze)*clr(ifl(1,k),2,isig1)*clr(ifl(2,k),1,isig1)
	   mz1zae =  m1zae*clr(ifl(1,k),1,isig1)*clr(ifl(2,k),2,isig1)
	   mz1zze = (m1zze+z1zze)*clr(ifl(1,k),2,isig1)*clr(ifl(2,k),2,isig1)
	   	   
	   m1e = mz1aae+mz1aze+mz1zae+mz1zze
	   	   	   
	   m2aae = dotcc(jea(0,isig1,h,is1,1,l),
     &                   epsauu(0,isig3,h,ifl(3,k),1,2,0))
	   m2aze = dotcc(jea(0,isig1,h,is1,1,l),
     &                   epszuu(0,isig3,h,ifl(3,k),1,2,0))
	   m2zae = dotcc(jez(0,isig1,h,is1,1,l),
     &                   epsauu(0,isig3,h,ifl(3,k),1,2,0))
	   m2zze = dotcc(jez(0,isig1,h,is1,1,l),
     &                   epszuu(0,isig3,h,ifl(3,k),1,2,0))           
	   	   
	   mz2aae =  m2aae*clr(ifl(2,k),1,isig1)*clr(ifl(1,k),1,isig1)
	   mz2aze = (m2aze-z1aze)*clr(ifl(2,k),2,isig1)*clr(ifl(1,k),1,isig1)
	   mz2zae =  m2zae*clr(ifl(2,k),1,isig1)*clr(ifl(1,k),2,isig1)
	   mz2zze = (m2zze-z1zze)*clr(ifl(2,k),2,isig1)*clr(ifl(1,k),2,isig1)
	   	   
	   m2e = mz2aae+mz2aze+mz2zae+mz2zze


	   ! mu+mu- from upper line, g from upper line:
	   
	   m1aau = dotcc(jua(0,isig1,h,is1,2,l),
     &                   epsaee(0,isig3,h,ifl(3,k),1,2,0))
	   m1azu = dotcc(jua(0,isig1,h,is1,2,l),
     &                   epszee(0,isig3,h,ifl(3,k),1,2,0))
	   m1zau = dotcc(juz(0,isig1,h,is1,2,l),
     &                   epsaee(0,isig3,h,ifl(3,k),1,2,0))
	   m1zzu = dotcc(juz(0,isig1,h,is1,2,l),
     &                   epszee(0,isig3,h,ifl(3,k),1,2,0))
	   
	   z1azu = qepszee(h,1,ifl(3,k),isig3,2,0)*jj21au(isig1,h,l)  
	   z1zzu = qepszee(h,1,ifl(3,k),isig3,2,0)*jj21zu(isig1,h,l) 
	   
	   mz1aau =  m1aau*clr(ifl(1,k),1,isig1)*clr(ifl(2,k),1,isig1)
	   mz1azu = (m1azu+z1azu)*clr(ifl(1,k),2,isig1)*clr(ifl(2,k),1,isig1)
	   mz1zau =  m1zau*clr(ifl(1,k),1,isig1)*clr(ifl(2,k),2,isig1)
	   mz1zzu = (m1zzu+z1zzu)*clr(ifl(1,k),2,isig1)*clr(ifl(2,k),2,isig1)
	   	   
	   m1u = mz1aau+mz1azu+mz1zau+mz1zzu
	   	   
	   m2aau = dotcc(jua(0,isig1,h,is1,1,l),
     &                   epsaee(0,isig3,h,ifl(3,k),1,2,0))
	   m2azu = dotcc(jua(0,isig1,h,is1,1,l),
     &                   epszee(0,isig3,h,ifl(3,k),1,2,0))
	   m2zau = dotcc(juz(0,isig1,h,is1,1,l),
     &                   epsaee(0,isig3,h,ifl(3,k),1,2,0))
	   m2zzu = dotcc(juz(0,isig1,h,is1,1,l),
     &                   epszee(0,isig3,h,ifl(3,k),1,2,0))
	   	   
	   mz2aau =  m2aau*clr(ifl(2,k),1,isig1)*clr(ifl(1,k),1,isig1)
	   mz2azu = (m2azu-z1azu)*clr(ifl(2,k),2,isig1)*clr(ifl(1,k),1,isig1)
	   mz2zau =  m2zau*clr(ifl(2,k),1,isig1)*clr(ifl(1,k),2,isig1)
	   mz2zzu = (m2zzu-z1zzu)*clr(ifl(2,k),2,isig1)*clr(ifl(1,k),2,isig1)
	   	   
	   m2u = mz2aau+mz2azu+mz2zau+mz2zzu

	    
	   mat(k,isig1,isig3,h,2,l,2) = m1e+m1u+m2e+m2u 
	   		! ... NC, 2 bosons + g from upper line
	    
	
	  ! e+e- from upper line, g from lower line:   
	
	   m1aae = dotcc(jea(0,isig1,h,is1,2,0),
     &                   epsauu(0,isig3,h,ifl(3,k),1,3,l))
	   m1aze = dotcc(jea(0,isig1,h,is1,2,0),
     &                   epszuu(0,isig3,h,ifl(3,k),1,3,l))
	   m1zae = dotcc(jez(0,isig1,h,is1,2,0),
     &                   epsauu(0,isig3,h,ifl(3,k),1,3,l))
	   m1zze = dotcc(jez(0,isig1,h,is1,2,0),
     &                   epszuu(0,isig3,h,ifl(3,k),1,3,l))
	   
	   z1aze = qepszuu(h,1,ifl(3,k),isig3,3,l)*jj21ae(isig1,h,0)    
	   z1zze = qepszuu(h,1,ifl(3,k),isig3,3,l)*jj21ze(isig1,h,0)    
	   	   
	   mz1aae =  m1aae*clr(ifl(1,k),1,isig1)*clr(ifl(2,k),1,isig1)
	   mz1aze = (m1aze+z1aze)*clr(ifl(1,k),2,isig1)*clr(ifl(2,k),1,isig1)
	   mz1zae =  m1zae*clr(ifl(1,k),1,isig1)*clr(ifl(2,k),2,isig1)
	   mz1zze = (m1zze+z1zze)*clr(ifl(1,k),2,isig1)*clr(ifl(2,k),2,isig1)
	   	   
	   m1e = mz1aae+mz1aze+mz1zae+mz1zze
	   	   	   
	   m2aae = dotcc(jea(0,isig1,h,is1,1,0),
     &                   epsauu(0,isig3,h,ifl(3,k),1,3,l))
	   m2aze = dotcc(jea(0,isig1,h,is1,1,0),
     &                   epszuu(0,isig3,h,ifl(3,k),1,3,l))
	   m2zae = dotcc(jez(0,isig1,h,is1,1,0),
     &                   epsauu(0,isig3,h,ifl(3,k),1,3,l))
	   m2zze = dotcc(jez(0,isig1,h,is1,1,0),
     &                   epszuu(0,isig3,h,ifl(3,k),1,3,l))
	   	   
	   mz2aae =  m2aae*clr(ifl(2,k),1,isig1)*clr(ifl(1,k),1,isig1)
	   mz2aze = (m2aze-z1aze)*clr(ifl(2,k),2,isig1)*clr(ifl(1,k),1,isig1)
	   mz2zae =  m2zae*clr(ifl(2,k),1,isig1)*clr(ifl(1,k),2,isig1)
	   mz2zze = (m2zze-z1zze)*clr(ifl(2,k),2,isig1)*clr(ifl(1,k),2,isig1)
	   	   
	   m2e = mz2aae+mz2aze+mz2zae+mz2zze
	   	   
	   ! mu+mu- from upper line, g from lower line:
	   
	   m1aau = dotcc(jua(0,isig1,h,is1,2,0),
     &                   epsaee(0,isig3,h,ifl(3,k),1,3,l))
	   m1azu = dotcc(jua(0,isig1,h,is1,2,0),
     &                   epszee(0,isig3,h,ifl(3,k),1,3,l))
	   m1zau = dotcc(juz(0,isig1,h,is1,2,0),
     &                   epsaee(0,isig3,h,ifl(3,k),1,3,l))
	   m1zzu = dotcc(juz(0,isig1,h,is1,2,0),
     &                   epszee(0,isig3,h,ifl(3,k),1,3,l))
	   
	   z1azu = qepszee(h,1,ifl(3,k),isig3,3,l)*jj21au(isig1,h,0)  
	   z1zzu = qepszee(h,1,ifl(3,k),isig3,3,l)*jj21zu(isig1,h,0)  
	   	   
	   mz1aau =  m1aau*clr(ifl(1,k),1,isig1)*clr(ifl(2,k),1,isig1)
	   mz1azu = (m1azu+z1azu)*clr(ifl(1,k),2,isig1)*clr(ifl(2,k),1,isig1)
	   mz1zau =  m1zau*clr(ifl(1,k),1,isig1)*clr(ifl(2,k),2,isig1)
	   mz1zzu = (m1zzu+z1zzu)*clr(ifl(1,k),2,isig1)*clr(ifl(2,k),2,isig1)
	   	   
	   m1u = mz1aau+mz1azu+mz1zau+mz1zzu
	   	   
	   m2aau = dotcc(jua(0,isig1,h,is1,1,0),
     &                   epsaee(0,isig3,h,ifl(3,k),1,3,l))
	   m2azu = dotcc(jua(0,isig1,h,is1,1,0),
     &                   epszee(0,isig3,h,ifl(3,k),1,3,l))
	   m2zau = dotcc(juz(0,isig1,h,is1,1,0),
     &                   epsaee(0,isig3,h,ifl(3,k),1,3,l))
	   m2zzu = dotcc(juz(0,isig1,h,is1,1,0),
     &                   epszee(0,isig3,h,ifl(3,k),1,3,l))
	   	   
	   mz2aau =  m2aau*clr(ifl(2,k),1,isig1)*clr(ifl(1,k),1,isig1)
	   mz2azu = (m2azu-z1azu)*clr(ifl(2,k),2,isig1)*clr(ifl(1,k),1,isig1)
	   mz2zau =  m2zau*clr(ifl(2,k),1,isig1)*clr(ifl(1,k),2,isig1)
	   mz2zzu = (m2zzu-z1zzu)*clr(ifl(2,k),2,isig1)*clr(ifl(1,k),2,isig1)
	   	   
	   m2u = mz2aau+mz2azu+mz2zau+mz2zzu

	   mat(k,isig1,isig3,h,3,l,2) = m1e+m1u+m2e+m2u 
	   		! ... NC, 2 bosons + g from lower line	   

c         enddo !k
         enddo	! l
       
        enddo ! isig3
      enddo ! isig1

      enddo !h
 
c ---------------
c
c charged current with 2 bosons attached to 12 line:
c
      elseif (cc_type) then

      do h = hmin,hmax,hstep
 
      do l = 1,2
  
      isig1 = -1
      isig3 = -1
      
      if (k.eq.5) then          
      
      !udsc, e+e- from upper line, g from upper line:
     
      m1ae = dotcc(jea(0,isig1,h,is1,2,l),epsCCuu(0,isig3,h,1,2,0))
     #			      *clr(ifl(2,k),1,isig1)   
      m1ze = dotcc(jez(0,isig1,h,is1,2,l),epsCCuu(0,isig3,h,1,2,0))
     #			      *clr(ifl(2,k),2,isig1)    
      m2ae = dotcc(jea(0,isig1,h,is1,1,l),epsCCuu(0,isig3,h,1,2,0))
     #			      *clr(ifl(1,k),1,isig1)    
      m2ze = dotcc(jez(0,isig1,h,is1,1,l),epsCCuu(0,isig3,h,1,2,0))
     #			      *clr(ifl(1,k),2,isig1)        
      
      z1ae = qepsCCuu(h,1,2,0)*jj21ae(isig1,h,l)
     #			 *clr(ifl(1,k),3,isig1)*clr(ifl(2,k),1,isig1)
      z1ze = qepsCCuu(h,1,2,0)*jj21ze(isig1,h,l)
     #			 *clr(ifl(1,k),3,isig1)*clr(ifl(2,k),2,isig1)
      z2ze = qepsCCuu(h,1,2,0)*jj21ze(isig1,h,l)
     #			 *clr(ifl(2,k),3,isig1)*clr(ifl(1,k),2,isig1)
      z2ae = qepsCCuu(h,1,2,0)*jj21ae(isig1,h,l)
     #			 *clr(ifl(2,k),3,isig1)*clr(ifl(1,k),1,isig1)
     
	mate12 = clr(3,3,isig1)*(m2ae-z2ae+m2ze-z2ze)
     #	      +  clr(3,3,isig1)*(m1ae+z1ae+m1ze+z1ze)

      !udsc, mu+mu- from upper line, g from upper line:
      
      m1au = dotcc(jua(0,isig1,h,is1,2,l),epsCCee(0,isig3,h,1,2,0))*
     #			      clr(ifl(2,k),1,isig1)
      m1zu = dotcc(juz(0,isig1,h,is1,2,l),epsCCee(0,isig3,h,1,2,0))
     #			      *clr(ifl(2,k),2,isig1)   
      m2au = dotcc(jua(0,isig1,h,is1,1,l),epsCCee(0,isig3,h,1,2,0))
     #			      *clr(ifl(1,k),1,isig1)
      m2zu = dotcc(juz(0,isig1,h,is1,1,l),epsCCee(0,isig3,h,1,2,0))
     #			      *clr(ifl(1,k),2,isig1) 

      z1au = qepsCCee(h,1,2,0)*jj21au(isig1,h,l)*clr(ifl(1,k),3,isig1)
     #			      *clr(ifl(2,k),1,isig1)
      z1zu = qepsCCee(h,1,2,0)*jj21zu(isig1,h,l)*clr(ifl(1,k),3,isig1)
     #			      *clr(ifl(2,k),2,isig1)
      z2zu = qepsCCee(h,1,2,0)*jj21zu(isig1,h,l)*clr(ifl(2,k),3,isig1)*
     #			      clr(ifl(1,k),2,isig1)
      z2au = qepsCCee(h,1,2,0)*jj21au(isig1,h,l)*clr(ifl(2,k),3,isig1)
     #			      *clr(ifl(1,k),1,isig1)

       matu12 = clr(3,3,isig1)*(m2au-z2au+m2zu-z2zu)
     #	      +  clr(3,3,isig1)*(m1au+z1au+m1zu+z1zu)
     
       mat(k,isig1,isig3,h,2,l,2) = mate12 + matu12

      !udsc, e+e- from upper line, g from lower line:
     
      m1ae = dotcc(jea(0,isig1,h,is1,2,0),epsCCuu(0,isig3,h,1,3,l))
     #			      *clr(ifl(2,k),1,isig1)   
      m1ze = dotcc(jez(0,isig1,h,is1,2,0),epsCCuu(0,isig3,h,1,3,l))
     #			      *clr(ifl(2,k),2,isig1)    
      m2ae = dotcc(jea(0,isig1,h,is1,1,0),epsCCuu(0,isig3,h,1,3,l))
     #			      *clr(ifl(1,k),1,isig1)    
      m2ze = dotcc(jez(0,isig1,h,is1,1,0),epsCCuu(0,isig3,h,1,3,l))
     #			      *clr(ifl(1,k),2,isig1)        
      
      z1ae = qepsCCuu(h,1,3,l)*jj21ae(isig1,h,0)
     #			 *clr(ifl(1,k),3,isig1)*clr(ifl(2,k),1,isig1)
      z1ze = qepsCCuu(h,1,3,l)*jj21ze(isig1,h,0)
     #			 *clr(ifl(1,k),3,isig1)*clr(ifl(2,k),2,isig1)
      z2ze = qepsCCuu(h,1,3,l)*jj21ze(isig1,h,0)
     #			 *clr(ifl(2,k),3,isig1)*clr(ifl(1,k),2,isig1)
      z2ae = qepsCCuu(h,1,3,l)*jj21ae(isig1,h,0)
     #			 *clr(ifl(2,k),3,isig1)*clr(ifl(1,k),1,isig1)
     
	mate12 = clr(3,3,isig1)*(m2ae-z2ae+m2ze-z2ze)
     #	      +  clr(3,3,isig1)*(m1ae+z1ae+m1ze+z1ze)

      !udsc, mu+mu- from upper line, g from lower line:
      
      m1au = dotcc(jua(0,isig1,h,is1,2,0),epsCCee(0,isig3,h,1,3,l))*
     #			      clr(ifl(2,k),1,isig1) 
      m1zu = dotcc(juz(0,isig1,h,is1,2,0),epsCCee(0,isig3,h,1,3,l))
     #			      *clr(ifl(2,k),2,isig1)  
      m2au = dotcc(jua(0,isig1,h,is1,1,0),epsCCee(0,isig3,h,1,3,l))
     #			      *clr(ifl(1,k),1,isig1) 
      m2zu = dotcc(juz(0,isig1,h,is1,1,0),epsCCee(0,isig3,h,1,3,l))
     #			      *clr(ifl(1,k),2,isig1) 

      z1au = qepsCCee(h,1,3,l)*jj21au(isig1,h,0)*clr(ifl(1,k),3,isig1)
     #			    *clr(ifl(2,k),1,isig1)
      z1zu = qepsCCee(h,1,3,l)*jj21zu(isig1,h,0)*clr(ifl(1,k),3,isig1)
     #			    *clr(ifl(2,k),2,isig1)
      z2zu = qepsCCee(h,1,3,l)*jj21zu(isig1,h,0)*clr(ifl(2,k),3,isig1)*
     #			    clr(ifl(1,k),2,isig1)
      z2au = qepsCCee(h,1,3,l)*jj21au(isig1,h,0)*clr(ifl(2,k),3,isig1)
     #			      *clr(ifl(1,k),1,isig1)

       matu12 = clr(3,3,isig1)*(m2au-z2au+m2zu-z2zu)
     #	      +  clr(3,3,isig1)*(m1au+z1au+m1zu+z1zu)
     
       mat(k,isig1,isig3,h,3,l,2) = mate12 + matu12

c ---------

      elseif (k.eq.6) then          
      
      !ducs, e+e- from upper line, g from upper line:
     
      m1ae = dotcc(jea(0,isig1,h,is1,2,l),epsCCuu6(0,isig3,h,1,2,0))
     #			      *clr(ifl(2,k),1,isig1)   
      m1ze = dotcc(jez(0,isig1,h,is1,2,l),epsCCuu6(0,isig3,h,1,2,0))
     #			      *clr(ifl(2,k),2,isig1)     
      m2ae = dotcc(jea(0,isig1,h,is1,1,l),epsCCuu6(0,isig3,h,1,2,0))
     #			      *clr(ifl(1,k),1,isig1)     
      m2ze = dotcc(jez(0,isig1,h,is1,1,l),epsCCuu6(0,isig3,h,1,2,0))
     #			      *clr(ifl(1,k),2,isig1)        
      
      z1ae = qepsCCuu6(h,1,2,0)*jj21ae(isig1,h,l)
     #			 *clr(ifl(1,k),3,isig1)*clr(ifl(2,k),1,isig1)
      z1ze = qepsCCuu6(h,1,2,0)*jj21ze(isig1,h,l)
     #			 *clr(ifl(1,k),3,isig1)*clr(ifl(2,k),2,isig1)
      z2ze = qepsCCuu6(h,1,2,0)*jj21ze(isig1,h,l)
     #			 *clr(ifl(2,k),3,isig1)*clr(ifl(1,k),2,isig1)
      z2ae = qepsCCuu6(h,1,2,0)*jj21ae(isig1,h,l)
     #			 *clr(ifl(2,k),3,isig1)*clr(ifl(1,k),1,isig1)
     
      mate12 = clr(3,3,isig1)*(m2ae-z2ae+m2ze-z2ze)
     #	      +  clr(3,3,isig1)*(m1ae+z1ae+m1ze+z1ze)

      !ducs, mu+mu- from upper line, g from upper line:
      
      m1au = dotcc(jua(0,isig1,h,is1,2,l),epsCCee6(0,isig3,h,1,2,0))*
     #			      clr(ifl(2,k),1,isig1) 
      m1zu = dotcc(juz(0,isig1,h,is1,2,l),epsCCee6(0,isig3,h,1,2,0))
     #			      *clr(ifl(2,k),2,isig1)      
      m2au = dotcc(jua(0,isig1,h,is1,1,l),epsCCee6(0,isig3,h,1,2,0))
     #			      *clr(ifl(1,k),1,isig1) 
      m2zu = dotcc(juz(0,isig1,h,is1,1,l),epsCCee6(0,isig3,h,1,2,0))
     #			      *clr(ifl(1,k),2,isig1) 

      z1au = qepsCCee6(h,1,2,0)*jj21au(isig1,h,l)*clr(ifl(1,k),3,isig1)
     #			      *clr(ifl(2,k),1,isig1)
      z1zu = qepsCCee6(h,1,2,0)*jj21zu(isig1,h,l)*clr(ifl(1,k),3,isig1)
     #			      *clr(ifl(2,k),2,isig1)
      z2zu = qepsCCee6(h,1,2,0)*jj21zu(isig1,h,l)*clr(ifl(2,k),3,isig1)*
     #			      clr(ifl(1,k),2,isig1)
      z2au = qepsCCee6(h,1,2,0)*jj21au(isig1,h,l)*clr(ifl(2,k),3,isig1)
     #			      *clr(ifl(1,k),1,isig1)

       matu12 = clr(3,3,isig1)*(m2au-z2au+m2zu-z2zu)
     #	      +  clr(3,3,isig1)*(m1au+z1au+m1zu+z1zu)
     
       mat(k,isig1,isig3,h,2,l,2) = mate12 + matu12

      !ducs, e+e- from upper line, g from lower line:
     
      m1ae = dotcc(jea(0,isig1,h,is1,2,0),epsCCuu6(0,isig3,h,1,3,l))
     #			      *clr(ifl(2,k),1,isig1)   
      m1ze = dotcc(jez(0,isig1,h,is1,2,0),epsCCuu6(0,isig3,h,1,3,l))
     #			      *clr(ifl(2,k),2,isig1)     
      m2ae = dotcc(jea(0,isig1,h,is1,1,0),epsCCuu6(0,isig3,h,1,3,l))
     #			      *clr(ifl(1,k),1,isig1)     
      m2ze = dotcc(jez(0,isig1,h,is1,1,0),epsCCuu6(0,isig3,h,1,3,l))
     #			      *clr(ifl(1,k),2,isig1)        
      
      z1ae = qepsCCuu6(h,1,3,l)*jj21ae(isig1,h,0)
     #			 *clr(ifl(1,k),3,isig1)*clr(ifl(2,k),1,isig1)
      z1ze = qepsCCuu6(h,1,3,l)*jj21ze(isig1,h,0)
     #			 *clr(ifl(1,k),3,isig1)*clr(ifl(2,k),2,isig1)
      z2ze = qepsCCuu6(h,1,3,l)*jj21ze(isig1,h,0)
     #			 *clr(ifl(2,k),3,isig1)*clr(ifl(1,k),2,isig1)
      z2ae = qepsCCuu6(h,1,3,l)*jj21ae(isig1,h,0)
     #			 *clr(ifl(2,k),3,isig1)*clr(ifl(1,k),1,isig1)

	mate12 = clr(3,3,isig1)*(m2ae-z2ae+m2ze-z2ze)
     #	      +  clr(3,3,isig1)*(m1ae+z1ae+m1ze+z1ze)

      !ducs, mu+mu- from upper line, g from lower line:
      
      m1au = dotcc(jua(0,isig1,h,is1,2,0),epsCCee6(0,isig3,h,1,3,l))
     #			      *clr(ifl(2,k),1,isig1) 
      m1zu = dotcc(juz(0,isig1,h,is1,2,0),epsCCee6(0,isig3,h,1,3,l))
     #			      *clr(ifl(2,k),2,isig1)  
      m2au = dotcc(jua(0,isig1,h,is1,1,0),epsCCee6(0,isig3,h,1,3,l))
     #			      *clr(ifl(1,k),1,isig1) 
      m2zu = dotcc(juz(0,isig1,h,is1,1,0),epsCCee6(0,isig3,h,1,3,l))
     #			      *clr(ifl(1,k),2,isig1) 

      z1au = qepsCCee6(h,1,3,l)*jj21au(isig1,h,0)*clr(ifl(1,k),3,isig1)
     #			    *clr(ifl(2,k),1,isig1)
      z1zu = qepsCCee6(h,1,3,l)*jj21zu(isig1,h,0)*clr(ifl(1,k),3,isig1)
     #			    *clr(ifl(2,k),2,isig1)
      z2zu = qepsCCee6(h,1,3,l)*jj21zu(isig1,h,0)*clr(ifl(2,k),3,isig1)*
     #			    clr(ifl(1,k),2,isig1)
      z2au = qepsCCee6(h,1,3,l)*jj21au(isig1,h,0)*clr(ifl(2,k),3,isig1)
     #			      *clr(ifl(1,k),1,isig1)

       matu12 = clr(3,3,isig1)*(m2au-z2au+m2zu-z2zu)
     #	      + clr(3,3,isig1)*(m1au+z1au+m1zu+z1zu)
     
       mat(k,isig1,isig3,h,3,l,2) = mate12 + matu12
      
       endif !k=5 or 6

      enddo	! l 

      enddo !h
      endif !cc
c
c -----------------------------------------------------------------
c -----------------------------------------------------------------
c
c repeat the same for 2 bosons attached to 34 line
c
c Neutral current:
      if (nc_type) then 

        do h= hmin,hmax,hstep
c
	do isig1 = -1,1,2
	   do isig3 = -1,1,2

           do l = 1,2
c	   do k = 1,4 ! e+e- from lower line, g from upper line:
	   
	   m3aae = dotcc(jea(0,isig3,h,is3,4,0),
     &                   epsauu(0,isig1,h,ifl(1,k),2,2,l))
	   m3aze = dotcc(jea(0,isig3,h,is3,4,0),
     &                   epszuu(0,isig1,h,ifl(1,k),2,2,l))
	   m3zae = dotcc(jez(0,isig3,h,is3,4,0),
     &                   epsauu(0,isig1,h,ifl(1,k),2,2,l))
	   m3zze = dotcc(jez(0,isig3,h,is3,4,0),
     &                   epszuu(0,isig1,h,ifl(1,k),2,2,l))
	   
	   z3aze = -qepszuu(h,2,ifl(1,k),isig1,2,l)*jj43ae(isig3,h,0)	 
	   z3zze = -qepszuu(h,2,ifl(1,k),isig1,2,l)*jj43ze(isig3,h,0)	 
	   
	   mz3aae =  m3aae*clr(ifl(3,k),1,isig3)*clr(ifl(4,k),1,isig3)
	   mz3aze = (m3aze+z3aze)*clr(ifl(3,k),2,isig3)*clr(ifl(4,k),1,isig3)
	   mz3zae =  m3zae*clr(ifl(3,k),1,isig3)*clr(ifl(4,k),2,isig3)
	   mz3zze = (m3zze+z3zze)*clr(ifl(3,k),2,isig3)*clr(ifl(4,k),2,isig3)
	   	   
	   m3e = mz3aae+mz3aze+mz3zae+mz3zze
	   	   	   	   
	   m4aae = dotcc(jea(0,isig3,h,is3,3,0),
     &                   epsauu(0,isig1,h,ifl(1,k),2,2,l))
	   m4aze = dotcc(jea(0,isig3,h,is3,3,0),
     &                   epszuu(0,isig1,h,ifl(1,k),2,2,l))
	   m4zae = dotcc(jez(0,isig3,h,is3,3,0),
     &                   epsauu(0,isig1,h,ifl(1,k),2,2,l))
	   m4zze = dotcc(jez(0,isig3,h,is3,3,0),
     &                   epszuu(0,isig1,h,ifl(1,k),2,2,l))
	  
	   mz4aae =  m4aae*clr(ifl(4,k),1,isig3)*clr(ifl(3,k),1,isig3)
	   mz4aze = (m4aze-z3aze)*clr(ifl(4,k),2,isig3)*clr(ifl(3,k),1,isig3)
	   mz4zae =  m4zae*clr(ifl(4,k),1,isig3)*clr(ifl(3,k),2,isig3)
	   mz4zze = (m4zze-z3zze)*clr(ifl(4,k),2,isig3)*clr(ifl(3,k),2,isig3)
	   	   
	   m4e = mz4aae+mz4aze+mz4zae+mz4zze
	   	   	   
	   ! mu+mu- from lower line, g from upper line:
	   
	   m3aau = dotcc(jua(0,isig3,h,is3,4,0),
     &                   epsaee(0,isig1,h,ifl(1,k),2,2,l))
	   m3azu = dotcc(jua(0,isig3,h,is3,4,0),
     &                   epszee(0,isig1,h,ifl(1,k),2,2,l))
	   m3zau = dotcc(juz(0,isig3,h,is3,4,0),
     &                   epsaee(0,isig1,h,ifl(1,k),2,2,l))
	   m3zzu = dotcc(juz(0,isig3,h,is3,4,0),
     &                   epszee(0,isig1,h,ifl(1,k),2,2,l))
	   
	   z3azu = -qepszee(h,2,ifl(1,k),isig1,2,l)*jj43au(isig3,h,0)  
	   z3zzu = -qepszee(h,2,ifl(1,k),isig1,2,l)*jj43zu(isig3,h,0)  

	   
	   mz3aau =  m3aau*clr(ifl(3,k),1,isig3)*clr(ifl(4,k),1,isig3)
	   mz3azu = (m3azu+z3azu)*clr(ifl(3,k),2,isig3)*clr(ifl(4,k),1,isig3)
	   mz3zau =  m3zau*clr(ifl(3,k),1,isig3)*clr(ifl(4,k),2,isig3)
	   mz3zzu = (m3zzu+z3zzu)*clr(ifl(3,k),2,isig3)*clr(ifl(4,k),2,isig3)
	   	   
	   m3u = mz3aau+mz3azu+mz3zau+mz3zzu

	   	   
	   m4aau = dotcc(jua(0,isig3,h,is3,3,0),
     &                   epsaee(0,isig1,h,ifl(1,k),2,2,l))
	   m4azu = dotcc(jua(0,isig3,h,is3,3,0),
     &                   epszee(0,isig1,h,ifl(1,k),2,2,l))
	   m4zau = dotcc(juz(0,isig3,h,is3,3,0),
     &                   epsaee(0,isig1,h,ifl(1,k),2,2,l))
	   m4zzu = dotcc(juz(0,isig3,h,is3,3,0),
     &                   epszee(0,isig1,h,ifl(1,k),2,2,l))
	   	   	   	   
	   mz4aau =  m4aau*clr(ifl(4,k),1,isig3)*clr(ifl(3,k),1,isig3)
	   mz4azu = (m4azu-z3azu)*clr(ifl(4,k),2,isig3)*clr(ifl(3,k),1,isig3)
	   mz4zau =  m4zau*clr(ifl(4,k),1,isig3)*clr(ifl(3,k),2,isig3)
	   mz4zzu = (m4zzu-z3zzu)*clr(ifl(4,k),2,isig3)*clr(ifl(3,k),2,isig3)
	   	   
	   m4u = mz4aau+mz4azu+mz4zau+mz4zzu           
	    
	   mat(k,isig1,isig3,h,2,l,3) = m3e+m3u+m4e+m4u 
	   	! ... NC, 2 bosons from lower line, g from upper line

	
! e+e- from lower line, g from lower line:
	   
	   m3aae = dotcc(jea(0,isig3,h,is3,4,l),
     &                   epsauu(0,isig1,h,ifl(1,k),2,3,0))
	   m3aze = dotcc(jea(0,isig3,h,is3,4,l),
     &                   epszuu(0,isig1,h,ifl(1,k),2,3,0))
	   m3zae = dotcc(jez(0,isig3,h,is3,4,l),
     &                   epsauu(0,isig1,h,ifl(1,k),2,3,0))
	   m3zze = dotcc(jez(0,isig3,h,is3,4,l),
     &                   epszuu(0,isig1,h,ifl(1,k),2,3,0))
	   
	   z3aze = -qepszuu(h,2,ifl(1,k),isig1,3,0)*jj43ae(isig3,h,l)	 
	   z3zze = -qepszuu(h,2,ifl(1,k),isig1,3,0)*jj43ze(isig3,h,l)	 

	   
	   mz3aae =  m3aae*clr(ifl(3,k),1,isig3)*clr(ifl(4,k),1,isig3)
	   mz3aze = (m3aze+z3aze)*clr(ifl(3,k),2,isig3)*clr(ifl(4,k),1,isig3)
	   mz3zae =  m3zae*clr(ifl(3,k),1,isig3)*clr(ifl(4,k),2,isig3)
	   mz3zze = (m3zze+z3zze)*clr(ifl(3,k),2,isig3)*clr(ifl(4,k),2,isig3)
	   	   
	   m3e = mz3aae+mz3aze+mz3zae+mz3zze
	   	   	   
	   m4aae = dotcc(jea(0,isig3,h,is3,3,l),
     &                   epsauu(0,isig1,h,ifl(1,k),2,3,0))
	   m4aze = dotcc(jea(0,isig3,h,is3,3,l),
     &                   epszuu(0,isig1,h,ifl(1,k),2,3,0))
	   m4zae = dotcc(jez(0,isig3,h,is3,3,l),
     &                   epsauu(0,isig1,h,ifl(1,k),2,3,0))
	   m4zze = dotcc(jez(0,isig3,h,is3,3,l),
     &                   epszuu(0,isig1,h,ifl(1,k),2,3,0))

	   mz4aae =  m4aae*clr(ifl(4,k),1,isig3)*clr(ifl(3,k),1,isig3)
	   mz4aze = (m4aze-z3aze)*clr(ifl(4,k),2,isig3)*clr(ifl(3,k),1,isig3)
	   mz4zae =  m4zae*clr(ifl(4,k),1,isig3)*clr(ifl(3,k),2,isig3)
	   mz4zze = (m4zze-z3zze)*clr(ifl(4,k),2,isig3)*clr(ifl(3,k),2,isig3)
	   	   
	   m4e = mz4aae+mz4aze+mz4zae+mz4zze
	   	   	   
	   ! mu+mu- from lower line, g from lower line:
	   
	   m3aau = dotcc(jua(0,isig3,h,is3,4,l),
     &                   epsaee(0,isig1,h,ifl(1,k),2,3,0))
	   m3azu = dotcc(jua(0,isig3,h,is3,4,l),
     &                   epszee(0,isig1,h,ifl(1,k),2,3,0))
	   m3zau = dotcc(juz(0,isig3,h,is3,4,l),
     &                   epsaee(0,isig1,h,ifl(1,k),2,3,0))
	   m3zzu = dotcc(juz(0,isig3,h,is3,4,l),
     &                   epszee(0,isig1,h,ifl(1,k),2,3,0))
	   
	   z3azu = -qepszee(h,2,ifl(1,k),isig1,3,0)*jj43au(isig3,h,l)  
	   z3zzu = -qepszee(h,2,ifl(1,k),isig1,3,0)*jj43zu(isig3,h,l)  
	   
	   mz3aau =  m3aau*clr(ifl(3,k),1,isig3)*clr(ifl(4,k),1,isig3)
	   mz3azu = (m3azu+z3azu)*clr(ifl(3,k),2,isig3)*clr(ifl(4,k),1,isig3)
	   mz3zau =  m3zau*clr(ifl(3,k),1,isig3)*clr(ifl(4,k),2,isig3)
	   mz3zzu = (m3zzu+z3zzu)*clr(ifl(3,k),2,isig3)*clr(ifl(4,k),2,isig3)
	   	   
	   m3u = mz3aau+mz3azu+mz3zau+mz3zzu
	   	   
	   m4aau = dotcc(jua(0,isig3,h,is3,3,l),
     &                   epsaee(0,isig1,h,ifl(1,k),2,3,0))
	   m4azu = dotcc(jua(0,isig3,h,is3,3,l),
     &                   epszee(0,isig1,h,ifl(1,k),2,3,0))
	   m4zau = dotcc(juz(0,isig3,h,is3,3,l),
     &                   epsaee(0,isig1,h,ifl(1,k),2,3,0))
	   m4zzu = dotcc(juz(0,isig3,h,is3,3,l),
     &                   epszee(0,isig1,h,ifl(1,k),2,3,0))
	   	   	   	   
	   mz4aau =  m4aau*clr(ifl(4,k),1,isig3)*clr(ifl(3,k),1,isig3)
	   mz4azu = (m4azu-z3azu)*clr(ifl(4,k),2,isig3)*clr(ifl(3,k),1,isig3)
	   mz4zau =  m4zau*clr(ifl(4,k),1,isig3)*clr(ifl(3,k),2,isig3)
	   mz4zzu = (m4zzu-z3zzu)*clr(ifl(4,k),2,isig3)*clr(ifl(3,k),2,isig3)
	   	   
	   m4u = mz4aau+mz4azu+mz4zau+mz4zzu

	    
	   mat(k,isig1,isig3,h,3,l,3) = m3e+m3u+m4e+m4u 
	   	! ... NC, 2 bosons from lower line, g from upper line

	   
c         enddo !k
         enddo	! l
       
        enddo ! isig3
      enddo ! isig1

      enddo !h
     
      elseif (cc_type) then  !nc/cc
      
c ---------------
c
c charged current with 2 bosons attached to 34 line:
      do h = hmin,hmax,hstep   
 
      do l = 1,2
  
      isig1 = -1
      isig3 = -1
      
      if (k.eq.5) then          
      
      !udsc, e+e- from lower line, g from upper line:
     
      m3ae = dotcc(jea(0,isig3,h,is3,4,0),epsCCuu(0,isig1,h,2,2,l))
     #			      *clr(ifl(4,k),1,isig3)   
      m3ze = dotcc(jez(0,isig3,h,is3,4,0),epsCCuu(0,isig1,h,2,2,l))
     #			      *clr(ifl(4,k),2,isig3)    
      m4ae = dotcc(jea(0,isig3,h,is3,3,0),epsCCuu(0,isig1,h,2,2,l))
     #			      *clr(ifl(3,k),1,isig3)    
      m4ze = dotcc(jez(0,isig3,h,is3,3,0),epsCCuu(0,isig1,h,2,2,l))
     #			      *clr(ifl(3,k),2,isig3)        
      
      z3ae = qepsCCuu(h,2,2,l)*jj43ae(isig3,h,0)
     #		        *clr(ifl(3,k),3,isig3)*clr(ifl(4,k),1,isig3)
      z3ze = qepsCCuu(h,2,2,l)*jj43ze(isig3,h,0)
     #		        *clr(ifl(3,k),3,isig3)*clr(ifl(4,k),2,isig3)
      z4ze = qepsCCuu(h,2,2,l)*jj43ze(isig3,h,0)
     #		        *clr(ifl(4,k),3,isig3)*clr(ifl(3,k),2,isig3)
      z4ae = qepsCCuu(h,2,2,l)*jj43ae(isig3,h,0)
     #			*clr(ifl(4,k),3,isig3)*clr(ifl(3,k),1,isig3)
     
	mate34 = clr(3,3,isig3)*(m4ae+z4ae+m4ze+z4ze)
     #	      +  clr(3,3,isig3)*(m3ae-z3ae+m3ze-z3ze)

      !udsc, mu+mu- from lower line, g from upper line:
      
      m3au = dotcc(jua(0,isig3,h,is3,4,0),epsCCee(0,isig1,h,2,2,l))
     #  		     *clr(ifl(4,k),1,isig3) 
      m3zu = dotcc(juz(0,isig3,h,is3,4,0),epsCCee(0,isig1,h,2,2,l))
     #  		     *clr(ifl(4,k),2,isig3) 	
      m4au = dotcc(jua(0,isig3,h,is3,3,0),epsCCee(0,isig1,h,2,2,l))
     #  		     *clr(ifl(3,k),1,isig3) 
      m4zu = dotcc(juz(0,isig3,h,is3,3,0),epsCCee(0,isig1,h,2,2,l))
     #			     *clr(ifl(3,k),2,isig3)

      z3au = qepsCCee(h,2,2,l)*jj43au(isig3,h,0)*clr(ifl(3,k),3,isig3)
     #		             *clr(ifl(4,k),1,isig3)
      z3zu = qepsCCee(h,2,2,l)*jj43zu(isig3,h,0)*clr(ifl(3,k),3,isig3)
     #		             *clr(ifl(4,k),2,isig3)
      z4zu = qepsCCee(h,2,2,l)*jj43zu(isig3,h,0)*clr(ifl(4,k),3,isig3)
     #		             *clr(ifl(3,k),2,isig3)
      z4au = qepsCCee(h,2,2,l)*jj43au(isig3,h,0)*clr(ifl(4,k),3,isig3)
     #			     *clr(ifl(3,k),1,isig3)

       matu34 = clr(3,3,isig3)*(m4au+z4au+m4zu+z4zu)
     #	      +  clr(3,3,isig3)*(m3au-z3au+m3zu-z3zu)
     
       mat(k,isig1,isig3,h,2,l,3) = mate34 + matu34
      
      !udsc, e+e- from lower line, g from lower line:
     
      m3ae = dotcc(jea(0,isig3,h,is3,4,l),epsCCuu(0,isig1,h,2,3,0))
     #			      *clr(ifl(4,k),1,isig3)   
      m3ze = dotcc(jez(0,isig3,h,is3,4,l),epsCCuu(0,isig1,h,2,3,0))
     #			      *clr(ifl(4,k),2,isig3)    
      m4ae = dotcc(jea(0,isig3,h,is3,3,l),epsCCuu(0,isig1,h,2,3,0))
     #			      *clr(ifl(3,k),1,isig3)    
      m4ze = dotcc(jez(0,isig3,h,is3,3,l),epsCCuu(0,isig1,h,2,3,0))
     #			      *clr(ifl(3,k),2,isig3)        
      
      z3ae = qepsCCuu(h,2,3,0)*jj43ae(isig3,h,l)
     #		        *clr(ifl(3,k),3,isig3)*clr(ifl(4,k),1,isig3)
      z3ze = qepsCCuu(h,2,3,0)*jj43ze(isig3,h,l)
     #		        *clr(ifl(3,k),3,isig3)*clr(ifl(4,k),2,isig3)
      z4ze = qepsCCuu(h,2,3,0)*jj43ze(isig3,h,l)
     #		        *clr(ifl(4,k),3,isig3)*clr(ifl(3,k),2,isig3)
      z4ae = qepsCCuu(h,2,3,0)*jj43ae(isig3,h,l)
     #			*clr(ifl(4,k),3,isig3)*clr(ifl(3,k),1,isig3)
     
	mate34 = clr(3,3,isig3)*(m4ae+z4ae+m4ze+z4ze)
     #	      +  clr(3,3,isig3)*(m3ae-z3ae+m3ze-z3ze)

      !udsc, mu+mu- from lower line, g from upper line:
      
      m3au = dotcc(jua(0,isig3,h,is3,4,l),epsCCee(0,isig1,h,2,3,0))
     #  		     *clr(ifl(4,k),1,isig3) 
      m3zu = dotcc(juz(0,isig3,h,is3,4,l),epsCCee(0,isig1,h,2,3,0))
     #  		     *clr(ifl(4,k),2,isig3) 	
      m4au = dotcc(jua(0,isig3,h,is3,3,l),epsCCee(0,isig1,h,2,3,0))
     #  		     *clr(ifl(3,k),1,isig3) 
      m4zu = dotcc(juz(0,isig3,h,is3,3,l),epsCCee(0,isig1,h,2,3,0))
     #			     *clr(ifl(3,k),2,isig3)

      z3au = qepsCCee(h,2,3,0)*jj43au(isig3,h,l)*clr(ifl(3,k),3,isig3)
     #		           *clr(ifl(4,k),1,isig3)
      z3zu = qepsCCee(h,2,3,0)*jj43zu(isig3,h,l)*clr(ifl(3,k),3,isig3)
     #		           *clr(ifl(4,k),2,isig3)
      z4zu = qepsCCee(h,2,3,0)*jj43zu(isig3,h,l)*clr(ifl(4,k),3,isig3)
     #		           *clr(ifl(3,k),2,isig3)
      z4au = qepsCCee(h,2,3,0)*jj43au(isig3,h,l)*clr(ifl(4,k),3,isig3)
     #			     *clr(ifl(3,k),1,isig3)

	matu34 = clr(3,3,isig3)*(m4au+z4au+m4zu+z4zu)
     #	      +  clr(3,3,isig3)*(m3au-z3au+m3zu-z3zu)
    
       mat(k,isig1,isig3,h,3,l,3) = mate34 + matu34

c ---------------
	   	   
      elseif (k.eq.6) then          
      
      !ducs, e+e- from lower line, g from upper line:
     
      m3ae = dotcc(jea(0,isig3,h,is3,4,0),epsCCuu6(0,isig1,h,2,2,l))
     #			      *clr(ifl(4,k),1,isig3)   
      m3ze = dotcc(jez(0,isig3,h,is3,4,0),epsCCuu6(0,isig1,h,2,2,l))
     #			      *clr(ifl(4,k),2,isig3)     
      m4ae = dotcc(jea(0,isig3,h,is3,3,0),epsCCuu6(0,isig1,h,2,2,l))
     #			      *clr(ifl(3,k),1,isig3)     
      m4ze = dotcc(jez(0,isig3,h,is3,3,0),epsCCuu6(0,isig1,h,2,2,l))
     #			      *clr(ifl(3,k),2,isig3)        
      
      z3ae = qepsCCuu6(h,2,2,l)*jj43ae(isig3,h,0)
     #		        *clr(ifl(3,k),3,isig3)*clr(ifl(4,k),1,isig3)
      z3ze = qepsCCuu6(h,2,2,l)*jj43ze(isig3,h,0)
     #		        *clr(ifl(3,k),3,isig3)*clr(ifl(4,k),2,isig3)
      z4ze = qepsCCuu6(h,2,2,l)*jj43ze(isig3,h,0)
     #		        *clr(ifl(4,k),3,isig3)*clr(ifl(3,k),2,isig3)
      z4ae = qepsCCuu6(h,2,2,l)*jj43ae(isig3,h,0)
     #			*clr(ifl(4,k),3,isig3)*clr(ifl(3,k),1,isig3)
    
      mate34 = clr(3,3,isig3)*(m4ae+z4ae+m4ze+z4ze)
     #	      +  clr(3,3,isig3)*(m3ae-z3ae+m3ze-z3ze)

      !ducs, mu+mu- from lower line, g from upper line:
      
      m3au = dotcc(jua(0,isig3,h,is3,4,0),epsCCee6(0,isig1,h,2,2,l))
     #  		     *clr(ifl(4,k),1,isig3) 
      m3zu = dotcc(juz(0,isig3,h,is3,4,0),epsCCee6(0,isig1,h,2,2,l))
     #  		     *clr(ifl(4,k),2,isig3) 	
      m4au = dotcc(jua(0,isig3,h,is3,3,0),epsCCee6(0,isig1,h,2,2,l))
     #  		     *clr(ifl(3,k),1,isig3) 
      m4zu = dotcc(juz(0,isig3,h,is3,3,0),epsCCee6(0,isig1,h,2,2,l))
     #			     *clr(ifl(3,k),2,isig3)

      z3au = qepsCCee6(h,2,2,l)*jj43au(isig3,h,0)*clr(ifl(3,k),3,isig3)
     #		             *clr(ifl(4,k),1,isig3)
      z3zu = qepsCCee6(h,2,2,l)*jj43zu(isig3,h,0)*clr(ifl(3,k),3,isig3)
     #		             *clr(ifl(4,k),2,isig3)
      z4zu = qepsCCee6(h,2,2,l)*jj43zu(isig3,h,0)*clr(ifl(4,k),3,isig3)
     #		             *clr(ifl(3,k),2,isig3)
      z4au = qepsCCee6(h,2,2,l)*jj43au(isig3,h,0)*clr(ifl(4,k),3,isig3)
     #			     *clr(ifl(3,k),1,isig3)
     
	matu34 = clr(3,3,isig3)*(m4au+z4au+m4zu+z4zu)
     #	      +  clr(3,3,isig3)*(m3au-z3au+m3zu-z3zu)

       mat(k,isig1,isig3,h,2,l,3) = mate34 + matu34
      
      !ducs, e+e- from lower line, g from lower line:
     
      m3ae = dotcc(jea(0,isig3,h,is3,4,l),epsCCuu6(0,isig1,h,2,3,0))
     #			      *clr(ifl(4,k),1,isig3)   
      m3ze = dotcc(jez(0,isig3,h,is3,4,l),epsCCuu6(0,isig1,h,2,3,0))
     #			      *clr(ifl(4,k),2,isig3)     
      m4ae = dotcc(jea(0,isig3,h,is3,3,l),epsCCuu6(0,isig1,h,2,3,0))
     #			      *clr(ifl(3,k),1,isig3)     
      m4ze = dotcc(jez(0,isig3,h,is3,3,l),epsCCuu6(0,isig1,h,2,3,0))
     #			      *clr(ifl(3,k),2,isig3)        
      
      z3ae = qepsCCuu6(h,2,3,0)*jj43ae(isig3,h,l)
     #		        *clr(ifl(3,k),3,isig3)*clr(ifl(4,k),1,isig3)
      z3ze = qepsCCuu6(h,2,3,0)*jj43ze(isig3,h,l)
     #		        *clr(ifl(3,k),3,isig3)*clr(ifl(4,k),2,isig3)
      z4ze = qepsCCuu6(h,2,3,0)*jj43ze(isig3,h,l)
     #		        *clr(ifl(4,k),3,isig3)*clr(ifl(3,k),2,isig3)
      z4ae = qepsCCuu6(h,2,3,0)*jj43ae(isig3,h,l)
     #			*clr(ifl(4,k),3,isig3)*clr(ifl(3,k),1,isig3)
     
	mate34 = clr(3,3,isig3)*(m4ae+z4ae+m4ze+z4ze)
     #	      +  clr(3,3,isig3)*(m3ae-z3ae+m3ze-z3ze)

      !ducs, mu+mu- from lower line, g from lower line:
      
      m3au = dotcc(jua(0,isig3,h,is3,4,l),epsCCee6(0,isig1,h,2,3,0))
     #  		     *clr(ifl(4,k),1,isig3) 
      m3zu = dotcc(juz(0,isig3,h,is3,4,l),epsCCee6(0,isig1,h,2,3,0))
     #  		     *clr(ifl(4,k),2,isig3) 	
      m4au = dotcc(jua(0,isig3,h,is3,3,l),epsCCee6(0,isig1,h,2,3,0))
     #  		     *clr(ifl(3,k),1,isig3) 
      m4zu = dotcc(juz(0,isig3,h,is3,3,l),epsCCee6(0,isig1,h,2,3,0))
     #			     *clr(ifl(3,k),2,isig3)

      z3au = qepsCCee6(h,2,3,0)*jj43au(isig3,h,l)*clr(ifl(3,k),3,isig3)
     #		           *clr(ifl(4,k),1,isig3)
      z3zu = qepsCCee6(h,2,3,0)*jj43zu(isig3,h,l)*clr(ifl(3,k),3,isig3)
     #		           *clr(ifl(4,k),2,isig3)
      z4zu = qepsCCee6(h,2,3,0)*jj43zu(isig3,h,l)*clr(ifl(4,k),3,isig3)
     #		           *clr(ifl(3,k),2,isig3)
      z4au = qepsCCee6(h,2,3,0)*jj43au(isig3,h,l)*clr(ifl(4,k),3,isig3)
     #			     *clr(ifl(3,k),1,isig3)
   
       matu34 = clr(3,3,isig3)*(m4au+z4au+m4zu+z4zu)
     #	      +  clr(3,3,isig3)*(m3au-z3au+m3zu-z3zu)
     
       mat(k,isig1,isig3,h,3,l,3) = mate34 + matu34

       endif !k=5 or 6

      enddo	! l 	

      enddo !h

      endif !nc/cc

c ----------------------------------------------------------------    
c
c take special care of processes with incoming gluons:

	if (jmin.eq.3) then
	  do kl = 1,6
            do h = hmin,hmax,hstep 
	    do isig1 = -1,1,2
	      do isig3 = -1,1,2
	      do l = 1,2
	        do i = 2,3
		  mat(kl,isig1,isig3,h,2,l,i) = 0d0
		enddo
	      enddo
	      enddo
	    enddo
            enddo !h
	  enddo	  
	endif	
	
	if (jmax.eq.2) then
	  do kl = 1,6
            do h = hmin,hmax,hstep 
	    do isig1 = -1,1,2
	      do isig3 = -1,1,2
	      do l = 1,2
	        do i = 2,3
		  mat(kl,isig1,isig3,h,3,l,i) = 0d0
		enddo
	      enddo
	      enddo
	    enddo
            enddo !h
	  enddo	  
	endif	

c ----------------------------------------------------------------    
c
c debugging:
c
c check result for NC as obtained above against madgraph output 
c
      if (bv_debug) then
         if (nc_type) then 

         do h = hmin,hmax,hstep   
	  do lh = -1,1,2	! gluon pol. in hel. basis
 	    
             m1hc(lh) = 0 
 
c compute reference result from individual madgraph diagrams tampr(i,...):
c
 	    do  i = 273,352 !V->ee from f1
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 753,832 !V->ee from f3
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 1233,1312 !V->ee from f2
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	 
  	    do  i = 1713,1792 !V->ee from f4
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
c V->mumu from fi:
	    do  i = 2125,2284
	        m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo       
	    do  i = 2509,2668
	        m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
ccccc
            m1hh(lh) = 0d0

	  enddo ! end of lh loop 

	    ! compute m1 in kartesian basis:
	    m1kc(1) =     (m1hc(-1)-m1hc(1))/sqrt(2d0)
	    m1kc(2) = -im*(m1hc(-1)+m1hc(1))/sqrt(2d0)
	    
	    m1kh(1) =     (m1hh(-1)-m1hh(1))/sqrt(2d0)
	    m1kh(2) = -im*(m1hh(-1)+m1hh(1))/sqrt(2d0)
		  		    
c print results from checks:

         print*, 'check NC for BV:'
         print*,' vbf for k=',k,'      '
         print*,'h=',h
c         
	 print*,'m1kc = ',m1kc(1),m1kc(2)
	 print*,'mat=',mat(k,-1,-1,h,2,1,2)+mat(k,-1,-1,h,3,1,2)+
     #  	       mat(k,-1,-1,h,2,1,3)+mat(k,-1,-1,h,3,1,3),
     #  	       mat(k,-1,-1,h,2,2,2)+mat(k,-1,-1,h,3,2,2)+
     #  	       mat(k,-1,-1,h,2,2,3)+mat(k,-1,-1,h,3,2,3)
	print*,'rat for l=1=',(mat(k,-1,-1,h,2,1,2)+mat(k,-1,-1,h,3,1,2)+
     #  	      mat(k,-1,-1,h,2,1,3)+mat(k,-1,-1,h,3,1,3))/m1kc(1)
	print*,'rat for l=2=',(mat(k,-1,-1,h,2,2,2)+mat(k,-1,-1,h,3,2,2)+
     #  	      mat(k,-1,-1,h,2,2,3)+mat(k,-1,-1,h,3,2,3))/m1kc(2)
	     
          enddo !h
        endif !nc
      endif ! end of debugging block      
c
c ---------------------------------
c ----------------------------------------------------------------    
c
c check result for CC against madgraph output:

      if (bv_debug.and.cc_type) then
c        do k = 5,6
         do h = hmin,hmax,hstep   
	  do lh = -1,1,2	! gluon pol. in hel. basis
 	    
             m1hc(lh) = 0 
 
c compute reference result from individual madgraph diagrams tampr(i,...):

 	    do  i = 137,166
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 367,396
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 597,626
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 827,856
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 921,1000
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 1153,1192
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
	    	     
          enddo ! end of lh loop 
	    
	    ! compute m1 in kartesian basis:
	    m1kc(1) =     (m1hc(-1)-m1hc(1))/sqrt(2d0)
	    m1kc(2) = -im*(m1hc(-1)+m1hc(1))/sqrt(2d0)
	    		  		    
c print results from checks:

         print*, 'check CC for BV:'
         print*,'signs:',sign	     
         print*,'gign:',gsign		 
         print*,' vbf for k=',k,'      '
         
	 print*,'m1kc=',m1kc(1),m1kc(2)
         print*,'mat=',
     #  	   mat(k,-1,-1,h,2,1,2)+mat(k,-1,-1,h,3,1,2)+
     #  	   mat(k,-1,-1,h,2,1,3)+mat(k,-1,-1,h,3,1,3),
     #  	   mat(k,-1,-1,h,2,2,2)+mat(k,-1,-1,h,3,2,2)+
     #  	   mat(k,-1,-1,h,2,2,3)+mat(k,-1,-1,h,3,2,3)
         print*,'ratio=',
     #  	   m1kc(1)/(
     #  	   mat(k,-1,-1,h,2,1,2)+mat(k,-1,-1,h,3,1,2)+
     #  	   mat(k,-1,-1,h,2,1,3)+mat(k,-1,-1,h,3,1,3)),
     #  	   m1kc(2)/(
     #  	   mat(k,-1,-1,h,2,2,2)+mat(k,-1,-1,h,3,2,2)+
     #  	   mat(k,-1,-1,h,2,2,3)+mat(k,-1,-1,h,3,2,3))	  	
	   
c        enddo ! end of k loop
         enddo !h
      endif ! end of debugging block
      
      if (bvonly) goto 999

c	fpials has to be attached below!      

 333  continue
c
c -----------------------------------------------------------------------
c --------------------------------------------------------------------------
c
c next come the A/Z-->ZZ currents attached to the quark lines. 
c The most effective structure is the contraction of two 
c polarization vectors with one fermion line. First build these effective 
c polarization vectors from the currents zzz(mu) and azz(mu)
c
c NOTE: the zzz and azz currents are conserved. 
C	Hence there is no need to consider q^mu * q^nu/m_Z^2  terms 
C	in the Z boson propagator

c box correction to upper line: polarization vectors are 
c    jqq(mu,isig3,2,is3,l) = j43  with momentum    p43        and
c    zzz/azz(mu)         	  with momentum    pzz
c      
c attach V=A/Z to f1 or f3:
	       
       do i=1,3,2
       	 
	 if (i.eq.1) then
	 	is = is1
	 else
	 	is = is3
	 endif	       
      
         do isig = -1,1,2 ! fermion helicity
            do h = hmin,hmax,hstep
	 	 
            call ket2c(psi(1,isig,i),.true.,p(0,i),isig,pzz,azz(0,h),
     1                 psia(1,isig,h,is,i),fq(0,i))
            call ket2c(psi(1,isig,i),.true.,p(0,i),isig,pzz,zzz(0,h),
     1                 psiz(1,isig,h,is,i),fq(0,i))
            call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,pzz,azz(0,h),
     1                 psia(1,isig,h,is,i+1),fq(0,i+1))
            call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,pzz,zzz(0,h),
     1                 psiz(1,isig,h,is,i+1),fq(0,i+1))
                   
 ! gluon radiation from fermion i / i+1
 	    do l = 1,2
            	call ket2c(braketg(1,isig,i,l),.false.,pq(0,i),
     $                 isig,pzz,azz(0,h),braketgA(1,isig,h,l,i),pga(0,i))
           	call ket2c(braketg(1,isig,i,l),.false.,pq(0,i),
     $                 isig,pzz,zzz(0,h),braketgZ(1,isig,h,l,i),pgz(0,i))
            	call ket2r(psia(1,isig,h,is,i),.false.,fq(0,i),isig,
     $	    		q,eps(0,l),braketAg(1,isig,h,l,i),pag(0,i))      
            	call ket2r(psiz(1,isig,h,is,i),.false.,fq(0,i),isig,
     $	    		q,eps(0,l),braketZg(1,isig,h,l,i),pzg(0,i))      
           	
		call bra2c(braketg(1,isig,i+1,l),.false.,pq(0,i+1),isig,
     $                 pzz,azz(0,h),braketgA(1,isig,h,l,i+1),pga(0,i+1))
           	call bra2c(braketg(1,isig,i+1,l),.false.,pq(0,i+1),isig,
     $                 pzz,zzz(0,h),braketgZ(1,isig,h,l,i+1),pgz(0,i+1))
            	call bra2r(psia(1,isig,h,is,i+1),.false.,fq(0,i+1),isig,
     $	    		q,eps(0,l),braketAg(1,isig,h,l,i+1),pag(0,i+1))      
            	call bra2r(psiz(1,isig,h,is,i+1),.false.,fq(0,i+1),isig,
     $	    		q,eps(0,l),braketZg(1,isig,h,l,i+1),pzg(0,i+1))      
	    enddo
	    	 
            enddo !h
	 enddo ! isig loop 

c A/Z from fermion i first:			
         do h = hmin,hmax,hstep
 	 do l = 1,2
   ! A from fermion i; gluon radiation from fermion i 
     	    call curr6(1,psi(1,-1,i+1),p(0,i+1),
     $	    			braketgA(1,-1,h,l,i),pga(0,i),jag)
      	    call curr6(1,psi(1,-1,i+1),p(0,i+1),
     $			        braketAg(1,-1,h,l,i),pag(0,i),jga)
   ! A from fermion i; gluon radiation from fermion i+1 
     	    call curr6(1,braketg(1,-1,i+1,l),pq(0,i+1),
     $	    			psia(1,-1,h,is,i),fq(0,i),jg0)

   ! Z from fermion i; gluon radiation from fermion i 
      	    call curr6(1,psi(1,-1,i+1),p(0,i+1),
     $	    			braketgZ(1,-1,h,l,i),pgz(0,i),jzg)	       
       	    call curr6(1,psi(1,-1,i+1),p(0,i+1),
     $	    			braketZg(1,-1,h,l,i),pzg(0,i),jgz)	       
   ! Z from fermion i; gluon radiation from fermion i+1
     	    call curr6(1,braketg(1,-1,i+1,l),pq(0,i+1),
     $	    			psiz(1,-1,h,is,i),fq(0,i),jgm)

       	    do mu = 0,5
	    	do isig = -1,1,2	    	   
 		   ja(mu,isig,h,is,i,l) = jag(mu,isig)+
     $			jga(mu,isig)+jg0(mu,isig)  
                                ! A+g emission from i/i+1 line 
     	    	   
		   jz(mu,isig,h,is,i,l) = jzg(mu,isig)+
     $	    		jgz(mu,isig)+jgm(mu,isig)  
                                ! Z+g emission from i/i+1 line 		
		enddo !isig
	    enddo  !mu

 
  ! gluon radiation from the non-i line:
            call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1              psia(1,-1,h,is,i),fq(0,i), ja(0,-1,h,is,i,0) )
     
            call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1              psiz(1,-1,h,is,i),fq(0,i), jz(0,-1,h,is,i,0) )
     	 enddo !l
        
c---------------------------
 					 
c now do A/Z from fermion i+1:			

 	 do l = 1,2
   ! A from fermion i+1; gluon radiation from fermion i+1 
      	    call curr6(1,braketgA(1,-1,h,l,i+1),pga(0,i+1),
     $	    			psi(1,-1,i),p(0,i),jag)		       
      	    call curr6(1,braketAg(1,-1,h,l,i+1),pag(0,i+1),
     $			        psi(1,-1,i),p(0,i),jga)

   ! A from fermion i+1, gluon radiation from fermion i 
     	    call curr6(1,psia(1,-1,h,is,i+1),fq(0,i+1),
     $	    			 braketg(1,-1,i,l),pq(0,i),jg0)

   ! Z from fermion i+1; gluon radiation from fermion i+1 
      	    call curr6(1,braketgZ(1,-1,h,l,i+1),pgz(0,i+1),
     $	    				psi(1,-1,i),p(0,i),jzg)		       
       	    call curr6(1,braketZg(1,-1,h,l,i+1),pzg(0,i+1),
     $	    				psi(1,-1,i),p(0,i),jgz)		       
  ! Z from fermion i+1; gluon radiation from fermion i
     	    call curr6(1,psiz(1,-1,h,is,i+1),fq(0,i+1),
     $	    			braketg(1,-1,i,l),pq(0,i),jgm)

       	    do mu = 0,5
	    	do isig = -1,1,2      	    
	    	   ja(mu,isig,h,is,i+1,l) = jag(mu,isig)+
     $			jga(mu,isig)+jg0(mu,isig)  
                                ! A+g emission from i/i+1 line 
      	    	   jz(mu,isig,h,is,i+1,l) = jzg(mu,isig)+
     $	    		jgz(mu,isig)+jgm(mu,isig)  
                                ! Z+g emission from i/i+1 line 	    
	    	enddo ! isig 
	    enddo ! mu					 

  ! gluon radiation from the non-i line:
            call curr6(1,psia(1,-1,h,is,i+1),fq(0,i+1),
     1              psi(1,-1,i),p(0,i), ja(0,-1,h,is,i+1,0) )
     
            call curr6(1,psiz(1,-1,h,is,i+1),fq(0,i+1),
     1              psi(1,-1,i),p(0,i), jz(0,-1,h,is,i+1,0) )

   	 enddo ! l=1,2 loop
         enddo !h
         	 
      enddo !i
           
c -----------------------------------------------------------------------
      
      do h = hmin,hmax,hstep
      do isig1 = -1,1,2
        do isig3 = -1,1,2
     
       	  do l = 1,2
            do i = 1,2
	
	! ma(i,j,l) for emission of A/Z from fermion i (i = 1,2,3,4), 
	!	and gluon with pol l=1,2 from line 12 (j=2) or 34 (j=3):
		
		ma(i,2,l) = dotcc(ja(0,isig1,h,is1,i,l),
     #					jqq(0,isig3,2,is3,0))
		ma(i,3,l) = dotcc(ja(0,isig1,h,is1,i,0),
     #					jqq(0,isig3,2,is3,l))	
		ma(i+2,2,l) = dotcc(jqq(0,isig1,1,is1,l),
     #					ja(0,isig3,h,is3,i+2,0))
		ma(i+2,3,l) = dotcc(jqq(0,isig1,1,is1,0),
     #					ja(0,isig3,h,is3,i+2,l))
		
		mz(i,2,l) = dotcc(jz(0,isig1,h,is1,i,l),
     #					jqq(0,isig3,2,is3,0))
		mz(i,3,l) = dotcc(jz(0,isig1,h,is1,i,0),
     #					jqq(0,isig3,2,is3,l))	
		mz(i+2,2,l) = dotcc(jqq(0,isig1,1,is1,l),
     #					jz(0,isig3,h,is3,i+2,0))
		mz(i+2,3,l) = dotcc(jqq(0,isig1,1,is1,0),
     #					jz(0,isig3,h,is3,i+2,l))
	
	    enddo  !i=1,2 loop
		
c --------------------------------------------------------------------
c
c  NEUTRAL CURRENT:

       if (nc_type) then      
c
c	A/Z prop for vzz piece contained in azz/zzz tensor,
c	prop43/21(1/2,j) takes care of weak boson exchange
	
	 do j = jmin,jmax
	       ! V from upper line:
               propt(isig1,isig3,k,j,2) = 
     1            clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3)*prop43(1,j) 
     2          + clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3)*prop43(2,j)
 
              
	      mat(k,isig1,isig3,h,j,l,4) = propt(isig1,isig3,k,j,2) *
     1   	 (  ma(2,j,l)*clr(ifl(2,k),1,isig1) +
     1		    mz(2,j,l)*clr(ifl(2,k),2,isig1) +   
     1		    ma(1,j,l)*clr(ifl(1,k),1,isig1) +
     1		    mz(1,j,l)*clr(ifl(1,k),2,isig1)  )
	 
	       ! V from lower line:
              propt(isig1,isig3,k,j,1) = 
     1   	 clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3)*prop21(1,j) 
     2       +   clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3)*prop21(2,j)
              
	      mat(k,isig1,isig3,h,j,l,5) = propt(isig1,isig3,k,j,1) *
     1   	 ( ma(3,j,l)*clr(ifl(3,k),1,isig3) +
     1   	   mz(3,j,l)*clr(ifl(3,k),2,isig3) + 
     2		   ma(4,j,l)*clr(ifl(4,k),1,isig3) +
     1   	   mz(4,j,l)*clr(ifl(4,k),2,isig3)   )

           enddo !j
 
c CHARGED CURRENT:  
        else !cc
              
           do j = jmin,jmax
           
	   if (isig1.eq.-1 .and. isig3.eq.-1) then
	    ! A/Z from upper line:
            propt(-1,-1,k,j,2) = clr(3,3,-1)**2*prop43(3,j)
         	
	    mat(k,-1,-1,h,j,l,4) = propt(-1,-1,k,j,2) *
     1        ( ma(2,j,l)*clr(ifl(2,k),1,-1)+ma(1,j,l)*clr(ifl(1,k),1,-1)
     2        + mz(2,j,l)*clr(ifl(2,k),2,-1)+mz(1,j,l)*clr(ifl(1,k),2,-1))

	    ! A/Z from lower line:
            propt(-1,-1,k,j,1) = clr(3,3,-1)**2*prop21(3,j)
         	
	    mat(k,-1,-1,h,j,l,5) = propt(-1,-1,k,j,1) *
     1        ( ma(4,j,l)*clr(ifl(4,k),1,-1)+ma(3,j,l)*clr(ifl(3,k),1,-1)    
     2        + mz(4,j,l)*clr(ifl(4,k),2,-1)+mz(3,j,l)*clr(ifl(3,k),2,-1))  
           else
         	propt(isig1,isig3,k,j,2) = 0d0
         	propt(isig1,isig3,k,j,1) = 0d0
         	mat(k,isig1,isig3,h,j,l,4) = 0d0
         	mat(k,isig1,isig3,h,j,l,5) = 0d0
           endif

	enddo !j

        endif !nc/cc

	enddo !l
	
	enddo !isig3
	enddo !isig1
        enddo !h
 
c ----------------------------------------------------------------    
c ----------------------------------------------------------------    
c ----------------------------------------------------------------    
c
c check result for CC against madgraph output:

      if (v4_debug.and.cc_type) then
         do h = hmin,hmax,hstep

	  do lh = -1,1,2	! gluon pol. in hel. basis
 	    
             m1hc(lh) = 0 
 
c compute reference result from individual madgraph diagrams: 
 	    do  i = 97,136
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 191,230
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 327,366
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 421,460
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 557,596
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 651,690
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 787,826
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 881,920
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
  
	  enddo ! end of lh loop 
	    
	    ! compute m1 in kartesian basis:
	    m1kc(1) =     (m1hc(-1)-m1hc(1))/sqrt(2d0)
	    m1kc(2) = -im*(m1hc(-1)+m1hc(1))/sqrt(2d0)
	    
	    m1kh(1) =     (m1hh(-1)-m1hh(1))/sqrt(2d0)
	    m1kh(2) = -im*(m1hh(-1)+m1hh(1))/sqrt(2d0)
		  		    
c print results from checks:

         print*, 'check CC for AZZ & ZZZ:'
c         print*,'signs:',sign	     
c         print*,'gign:',gsign		 
         print*,' vbf for k=',k,'      '
	 print*,'m1kc=',m1kc(1),m1kc(2)
	 print*,'mat=',mat(k,-1,-1,h,2,1,4)+mat(k,-1,-1,h,3,1,4)+
     #	 	       mat(k,-1,-1,h,2,1,5)+mat(k,-1,-1,h,3,1,5),
     #  	       mat(k,-1,-1,h,2,2,4)+mat(k,-1,-1,h,3,2,4)+
     #  	       mat(k,-1,-1,h,2,2,5)+mat(k,-1,-1,h,3,2,5)
	 print*,'rat for l=1=',(mat(k,-1,-1,h,2,1,4)+mat(k,-1,-1,h,3,1,4)+
     #	 	                mat(k,-1,-1,h,2,1,5)+mat(k,-1,-1,h,3,1,5)
     #                          )/m1kc(1)
	 print*,'rat for l=2=',(mat(k,-1,-1,h,2,2,4)+mat(k,-1,-1,h,3,2,4)+
     #			        mat(k,-1,-1,h,2,2,5)+mat(k,-1,-1,h,3,2,5)
     #                          )/m1kc(2)
	    
 
c         enddo ! end of k loop

         enddo !h
      endif ! end of debugging block
c
c===============
c
c check result for NC against madgraph output:

      if (v4_debug.and.nc_type) then
         do h = hmin,hmax,hstep

	  do lh = -1,1,2	! gluon pol. in hel. basis
 	    
             m1hc(lh) = 0 
 
c compute reference result from individual madgraph diagrams: 
 	    do  i = 193,272
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 401,480
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 673,752
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 881,960
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 1153,1232
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 1361,1440
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 1633,1712
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 1841,1920
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
  
	  enddo ! end of lh loop 
	    
	    ! compute m1 in kartesian basis:
	    m1kc(1) =     (m1hc(-1)-m1hc(1))/sqrt(2d0)
	    m1kc(2) = -im*(m1hc(-1)+m1hc(1))/sqrt(2d0)
	    
	    m1kh(1) =     (m1hh(-1)-m1hh(1))/sqrt(2d0)
	    m1kh(2) = -im*(m1hh(-1)+m1hh(1))/sqrt(2d0)
		  		    
c print results from checks:

         print*, 'check NC for AZZ & ZZZ:'
c         print*,'signs:',sign	     
c         print*,'gign:',gsign		 
         print*,' vbf for k=',k,'      '
	 print*,'m1kc=',m1kc(1),m1kc(2)
	 print*,'mat=',mat(k,-1,-1,h,2,1,4)+mat(k,-1,-1,h,3,1,4)+
     #	 	       mat(k,-1,-1,h,2,1,5)+mat(k,-1,-1,h,3,1,5),
     #  	       mat(k,-1,-1,h,2,2,4)+mat(k,-1,-1,h,3,2,4)+
     #  	       mat(k,-1,-1,h,2,2,5)+mat(k,-1,-1,h,3,2,5)
	 print*,'rat for l=1=',(mat(k,-1,-1,h,2,1,4)+mat(k,-1,-1,h,3,1,4)+
     #	 	                mat(k,-1,-1,h,2,1,5)+mat(k,-1,-1,h,3,1,5)
     #                          )/m1kc(1)
	 print*,'rat for l=2=',(mat(k,-1,-1,h,2,2,4)+mat(k,-1,-1,h,3,2,4)+
     #			        mat(k,-1,-1,h,2,2,5)+mat(k,-1,-1,h,3,2,5)
     #                          )/m1kc(2)
	    
 
c         enddo ! end of k loop

         enddo !h
      endif ! end of debugging block
      
c     
      if (v4only) goto 999

 444   continue
c
c -----------------------------------------------------------------------
c -----------------------------------------------------------------------
c
c  next do the box-box graphs with one A/Z emitted from the upper and the 
c  other from the lower line. These possible for left- and righthanded quarks
c  on both lines (in case of NC)
c
c
       do h = hmin,hmax,hstep
	do isig1 = -1,1,2
	   do isig3 = -1,1,2
c
	   
	   do il = 1,2 ! two possible g pols.
	   
	   do j = jmin,jmax  ! g from upper or lower line
	   
	   if (j.eq.2) then
	       l = il  ! loop over pol. of g from upper line
	       ll = 0  ! no g from lower line
	   else !j=3
	       ll = il  ! loop over pol. of g from lower line
	       l = 0    ! no g from upper line
	   endif
c
c e+e- from upper line, mu+mu- from lower line:
c	
	mezz(1,isig1,isig3,h,j,il) = dotcc(jez(0,isig1,h,is1,1,l),
     &                                     juz(0,isig3,h,is3,3,ll))
	meza(1,isig1,isig3,h,j,il) = dotcc(jez(0,isig1,h,is1,1,l),
     &                                     jua(0,isig3,h,is3,3,ll))
	meaz(1,isig1,isig3,h,j,il) = dotcc(jea(0,isig1,h,is1,1,l),
     &                                     juz(0,isig3,h,is3,3,ll))
	meaa(1,isig1,isig3,h,j,il) = dotcc(jea(0,isig1,h,is1,1,l),
     &                                     jua(0,isig3,h,is3,3,ll))
c	
	mezz(2,isig1,isig3,h,j,il) = dotcc(jez(0,isig1,h,is1,2,l),
     &                                     juz(0,isig3,h,is3,3,ll))
	meza(2,isig1,isig3,h,j,il) = dotcc(jez(0,isig1,h,is1,2,l),
     &                                     jua(0,isig3,h,is3,3,ll))
	meaz(2,isig1,isig3,h,j,il) = dotcc(jea(0,isig1,h,is1,2,l),
     &                                     juz(0,isig3,h,is3,3,ll))
	meaa(2,isig1,isig3,h,j,il) = dotcc(jea(0,isig1,h,is1,2,l),j
     &                                     ua(0,isig3,h,is3,3,ll))
c	
	mezz(3,isig1,isig3,h,j,il) = dotcc(jez(0,isig1,h,is1,1,l),
     &                                     juz(0,isig3,h,is3,4,ll))
	meza(3,isig1,isig3,h,j,il) = dotcc(jez(0,isig1,h,is1,1,l),
     &                                     jua(0,isig3,h,is3,4,ll))
	meaz(3,isig1,isig3,h,j,il) = dotcc(jea(0,isig1,h,is1,1,l),
     &                                     juz(0,isig3,h,is3,4,ll))
	meaa(3,isig1,isig3,h,j,il) = dotcc(jea(0,isig1,h,is1,1,l),
     &                                     jua(0,isig3,h,is3,4,ll))
c	
	mezz(4,isig1,isig3,h,j,il) = dotcc(jez(0,isig1,h,is1,2,l),
     &                                     juz(0,isig3,h,is3,4,ll))
	meza(4,isig1,isig3,h,j,il) = dotcc(jez(0,isig1,h,is1,2,l),
     &                                     jua(0,isig3,h,is3,4,ll))
	meaz(4,isig1,isig3,h,j,il) = dotcc(jea(0,isig1,h,is1,2,l),
     &                                     juz(0,isig3,h,is3,4,ll))
	meaa(4,isig1,isig3,h,j,il) = dotcc(jea(0,isig1,h,is1,2,l),
     &                                     jua(0,isig3,h,is3,4,ll))
	
c mu+mu- from upper line, e+e- from lower line:
c	
	muzz(1,isig1,isig3,h,j,il) = dotcc(juz(0,isig1,h,is1,1,l),
     &                                     jez(0,isig3,h,is3,3,ll))
	muza(1,isig1,isig3,h,j,il) = dotcc(juz(0,isig1,h,is1,1,l),
     &                                     jea(0,isig3,h,is3,3,ll))
	muaz(1,isig1,isig3,h,j,il) = dotcc(jua(0,isig1,h,is1,1,l),
     &                                     jez(0,isig3,h,is3,3,ll))
	muaa(1,isig1,isig3,h,j,il) = dotcc(jua(0,isig1,h,is1,1,l),
     &                                     jea(0,isig3,h,is3,3,ll))
c	
	muzz(2,isig1,isig3,h,j,il) = dotcc(juz(0,isig1,h,is1,2,l),
     &                                     jez(0,isig3,h,is3,3,ll))
	muza(2,isig1,isig3,h,j,il) = dotcc(juz(0,isig1,h,is1,2,l),
     &                                     jea(0,isig3,h,is3,3,ll))
	muaz(2,isig1,isig3,h,j,il) = dotcc(jua(0,isig1,h,is1,2,l),
     &                                     jez(0,isig3,h,is3,3,ll))
	muaa(2,isig1,isig3,h,j,il) = dotcc(jua(0,isig1,h,is1,2,l),
     &                                     jea(0,isig3,h,is3,3,ll))
c	
	muzz(3,isig1,isig3,h,j,il) = dotcc(juz(0,isig1,h,is1,1,l),
     &                                     jez(0,isig3,h,is3,4,ll))
	muza(3,isig1,isig3,h,j,il) = dotcc(juz(0,isig1,h,is1,1,l),
     &                                     jea(0,isig3,h,is3,4,ll))
	muaz(3,isig1,isig3,h,j,il) = dotcc(jua(0,isig1,h,is1,1,l),
     &                                     jez(0,isig3,h,is3,4,ll))
	muaa(3,isig1,isig3,h,j,il) = dotcc(jua(0,isig1,h,is1,1,l),
     &                                     jea(0,isig3,h,is3,4,ll))
c	
	muzz(4,isig1,isig3,h,j,il) = dotcc(juz(0,isig1,h,is1,2,l),
     &                                     jez(0,isig3,h,is3,4,ll))
	muza(4,isig1,isig3,h,j,il) = dotcc(juz(0,isig1,h,is1,2,l),
     &                                     jea(0,isig3,h,is3,4,ll))
	muaz(4,isig1,isig3,h,j,il) = dotcc(jua(0,isig1,h,is1,2,l),
     &                                     jez(0,isig3,h,is3,4,ll))
	muaa(4,isig1,isig3,h,j,il) = dotcc(jua(0,isig1,h,is1,2,l),
     &                                     jea(0,isig3,h,is3,4,ll))
	
c
c  for the q^mu*q^nu/M_V^2 terms in the gauge boson propagators we need
	
	do ib = 2,3 ! type of exchanged boson (Z,W), zero for A
	
	zezz(isig1,isig3,h,ib,j,il) = jj21ze(isig1,h,l)*
     &                                jj43zu(isig3,h,ll)*zm2i(ib)
	zeza(isig1,isig3,h,ib,j,il) = jj21ze(isig1,h,l)*
     &                                jj43au(isig3,h,ll)*zm2i(ib)
	zeaz(isig1,isig3,h,ib,j,il) = jj21ae(isig1,h,l)*
     &                                jj43zu(isig3,h,ll)*zm2i(ib)
	zeaa(isig1,isig3,h,ib,j,il) = jj21ae(isig1,h,l)*
     &                                jj43au(isig3,h,ll)*zm2i(ib)

	zuzz(isig1,isig3,h,ib,j,il) = jj21zu(isig1,h,l)*
     &                                jj43ze(isig3,h,ll)*zm2i(ib)
	zuza(isig1,isig3,h,ib,j,il) = jj21zu(isig1,h,l)*
     &                                jj43ae(isig3,h,ll)*zm2i(ib)
	zuaz(isig1,isig3,h,ib,j,il) = jj21au(isig1,h,l)*
     &                                jj43ze(isig3,h,ll)*zm2i(ib)
	zuaa(isig1,isig3,h,ib,j,il) = jj21au(isig1,h,l)*
     &                                jj43ae(isig3,h,ll)*zm2i(ib)
	
	enddo !ib

	enddo !j
	enddo !il

c -------------------------------


	do j = jmin,jmax

        if (nc_type) then   
 
      	      propbbez(k,isig1,isig3,j) = 
     1 	     	prop_ee(2,j)*clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3)
     
      	      propbbuz(k,isig1,isig3,j) = 
     1	     	prop_uu(2,j)*clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3)
     
      	      propbbea(k,isig1,isig3,j) = 
     1 	     	prop_ee(1,j)*clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3)
     
      	      propbbua(k,isig1,isig3,j) = 
     1	    	prop_uu(1,j)*clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3)   
	
	do l = 1,2
     
c for NC make use of: ifl(1,k) = ifl (2,k) and ifl(3,k) = ifl (4,k) 
c 	gauge terms zezz etc cancel in sum of NC contributions from leg1&2/3&4 
c       (not for CC)
	
	     
      mat(k,isig1,isig3,h,j,l,6) = 
     1 ((mezz(1,isig1,isig3,h,j,l)+mezz(2,isig1,isig3,h,j,l))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	(meza(1,isig1,isig3,h,j,l)+meza(2,isig1,isig3,h,j,l))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	(meaz(1,isig1,isig3,h,j,l)+meaz(2,isig1,isig3,h,j,l))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	(meaa(1,isig1,isig3,h,j,l)+meaa(2,isig1,isig3,h,j,l))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	      propbbea(k,isig1,isig3,j)
     1	+
     1 (((mezz(1,isig1,isig3,h,j,l))+(mezz(2,isig1,isig3,h,j,l)))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	((meza(1,isig1,isig3,h,j,l))+(meza(2,isig1,isig3,h,j,l)))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	((meaz(1,isig1,isig3,h,j,l))+(meaz(2,isig1,isig3,h,j,l)))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	((meaa(1,isig1,isig3,h,j,l))+(meaa(2,isig1,isig3,h,j,l)))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	      propbbez(k,isig1,isig3,j)
     1 +
     1 ((muzz(1,isig1,isig3,h,j,l)+muzz(2,isig1,isig3,h,j,l))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	(muza(1,isig1,isig3,h,j,l)+muza(2,isig1,isig3,h,j,l))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	(muaz(1,isig1,isig3,h,j,l)+muaz(2,isig1,isig3,h,j,l))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	(muaa(1,isig1,isig3,h,j,l)+muaa(2,isig1,isig3,h,j,l))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	      propbbua(k,isig1,isig3,j)
     1 +
     1 (((muzz(1,isig1,isig3,h,j,l))+(muzz(2,isig1,isig3,h,j,l)))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	((muza(1,isig1,isig3,h,j,l))+(muza(2,isig1,isig3,h,j,l)))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	((muaz(1,isig1,isig3,h,j,l))+(muaz(2,isig1,isig3,h,j,l)))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	((muaa(1,isig1,isig3,h,j,l))+(muaa(2,isig1,isig3,h,j,l)))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	      propbbuz(k,isig1,isig3,j)
     3 +
     3 ((mezz(3,isig1,isig3,h,j,l)+mezz(4,isig1,isig3,h,j,l))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  (meza(3,isig1,isig3,h,j,l)+meza(4,isig1,isig3,h,j,l))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  (meaz(3,isig1,isig3,h,j,l)+meaz(4,isig1,isig3,h,j,l))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  (meaa(3,isig1,isig3,h,j,l)+meaa(4,isig1,isig3,h,j,l))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	      propbbea(k,isig1,isig3,j)
     3 +
     3 (((mezz(3,isig1,isig3,h,j,l))+(mezz(4,isig1,isig3,h,j,l)))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  ((meza(3,isig1,isig3,h,j,l))+(meza(4,isig1,isig3,h,j,l)))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  ((meaz(3,isig1,isig3,h,j,l))+(meaz(4,isig1,isig3,h,j,l)))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  ((meaa(3,isig1,isig3,h,j,l))+(meaa(4,isig1,isig3,h,j,l)))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	      propbbez(k,isig1,isig3,j)
     3 +
     3 ((muzz(3,isig1,isig3,h,j,l)+muzz(4,isig1,isig3,h,j,l))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  (muza(3,isig1,isig3,h,j,l)+muza(4,isig1,isig3,h,j,l))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  (muaz(3,isig1,isig3,h,j,l)+muaz(4,isig1,isig3,h,j,l))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  (muaa(3,isig1,isig3,h,j,l)+muaa(4,isig1,isig3,h,j,l))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	      propbbua(k,isig1,isig3,j)
     3 +
     3 (((muzz(3,isig1,isig3,h,j,l))+(muzz(4,isig1,isig3,h,j,l)))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  ((muza(3,isig1,isig3,h,j,l))+(muza(4,isig1,isig3,h,j,l)))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  ((muaz(3,isig1,isig3,h,j,l))+(muaz(4,isig1,isig3,h,j,l)))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  ((muaa(3,isig1,isig3,h,j,l))+(muaa(4,isig1,isig3,h,j,l)))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	      propbbuz(k,isig1,isig3,j)   
      

	enddo !l
        
        endif !nc

	enddo !j
	
	enddo !isig3
	enddo !isig1	


c -----------------

      do j = jmin,jmax 


      if (cc_type) then

      isig1 = -1
      isig3 = -1
            	    
      propbbe(j) =  prop_ee(3,j)*clr(3,3,-1)**2
      propbbu(j) =  prop_uu(3,j)*clr(3,3,-1)**2
            
      do l = 1,2 
       
      mat(k,isig1,isig3,h,j,l,6) = 
     1 ((mezz(1,isig1,isig3,h,j,l)+zezz(isig1,isig3,h,3,j,l))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	(meza(1,isig1,isig3,h,j,l)+zeza(isig1,isig3,h,3,j,l))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	(meaz(1,isig1,isig3,h,j,l)+zeaz(isig1,isig3,h,3,j,l))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	(meaa(1,isig1,isig3,h,j,l)+zeaa(isig1,isig3,h,3,j,l))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1		propbbe(j)    
     2 +
     2 ((mezz(2,isig1,isig3,h,j,l)-zezz(isig1,isig3,h,3,j,l))*
     2		clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     2	(meza(2,isig1,isig3,h,j,l)-zeza(isig1,isig3,h,3,j,l))*
     2		clr(ifl(2,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     2	(meaz(2,isig1,isig3,h,j,l)-zeaz(isig1,isig3,h,3,j,l))*
     2		clr(ifl(2,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     2	(meaa(2,isig1,isig3,h,j,l)-zeaa(isig1,isig3,h,3,j,l))*
     2		clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     2		propbbe(j)      
     3 +
     3 ((mezz(3,isig1,isig3,h,j,l)-zezz(isig1,isig3,h,3,j,l))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  (meza(3,isig1,isig3,h,j,l)-zeza(isig1,isig3,h,3,j,l))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  (meaz(3,isig1,isig3,h,j,l)-zeaz(isig1,isig3,h,3,j,l))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  (meaa(3,isig1,isig3,h,j,l)-zeaa(isig1,isig3,h,3,j,l))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3		propbbe(j)     
     4 +
     4 ((mezz(4,isig1,isig3,h,j,l)+zezz(isig1,isig3,h,3,j,l))*
     4	      clr(ifl(2,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     4  (meza(4,isig1,isig3,h,j,l)+zeza(isig1,isig3,h,3,j,l))*
     4	      clr(ifl(2,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     4  (meaz(4,isig1,isig3,h,j,l)+zeaz(isig1,isig3,h,3,j,l))*
     4	      clr(ifl(2,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     4  (meaa(4,isig1,isig3,h,j,l)+zeaa(isig1,isig3,h,3,j,l))*
     4	      clr(ifl(2,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     4		propbbe(j) 
     1	+        
     1 ((muzz(1,isig1,isig3,h,j,l)+zuzz(isig1,isig3,h,3,j,l))*
     1	       clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	(muza(1,isig1,isig3,h,j,l)+zuza(isig1,isig3,h,3,j,l))*
     1	       clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	(muaz(1,isig1,isig3,h,j,l)+zuaz(isig1,isig3,h,3,j,l))*
     1	       clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	(muaa(1,isig1,isig3,h,j,l)+zuaa(isig1,isig3,h,3,j,l))*
     1	       clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	       propbbu(j)    
     2 +
     2 ((muzz(2,isig1,isig3,h,j,l)-zuzz(isig1,isig3,h,3,j,l))*
     2	       clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     2	(muza(2,isig1,isig3,h,j,l)-zuza(isig1,isig3,h,3,j,l))*
     2	       clr(ifl(2,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     2	(muaz(2,isig1,isig3,h,j,l)-zuaz(isig1,isig3,h,3,j,l))*
     2	       clr(ifl(2,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     2	(muaa(2,isig1,isig3,h,j,l)-zuaa(isig1,isig3,h,3,j,l))*
     2	       clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     2	       propbbu(j)     
     3 +
     3 ((muzz(3,isig1,isig3,h,j,l)-zuzz(isig1,isig3,h,3,j,l))*
     3	      clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  (muza(3,isig1,isig3,h,j,l)-zuza(isig1,isig3,h,3,j,l))*
     3	      clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  (muaz(3,isig1,isig3,h,j,l)-zuaz(isig1,isig3,h,3,j,l))*
     3	      clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  (muaa(3,isig1,isig3,h,j,l)-zuaa(isig1,isig3,h,3,j,l))*
     3	      clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	       propbbu(j)    
     4 +
     4 ((muzz(4,isig1,isig3,h,j,l)+zuzz(isig1,isig3,h,3,j,l))*
     4	     clr(ifl(2,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     4  (muza(4,isig1,isig3,h,j,l)+zuza(isig1,isig3,h,3,j,l))*
     4	     clr(ifl(2,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     4  (muaz(4,isig1,isig3,h,j,l)+zuaz(isig1,isig3,h,3,j,l))*
     4	     clr(ifl(2,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     4  (muaa(4,isig1,isig3,h,j,l)+zuaa(isig1,isig3,h,3,j,l))*
     4	      clr(ifl(2,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     1		propbbu(j)
          
	enddo !l  
	  
        endif !cc_type

	enddo !j

        enddo !h

c -------------------------------
c ----------------------------------------------------------------    
c
c debugging:
c
c check result for NC as obtained above against madgraph output 
c
      if (bb_debug) then
         if (nc_type) then

          do h = hmin,hmax,hstep  
	  do lh = -1,1,2	! gluon pol. in hel. basis
 	    
             m1hc(lh) = 0 
 
c compute reference result from individual madgraph diagrams tampr(i,...):

 	    do  i = 49,96
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 145,192
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 481,528
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 577,624
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 1009,1056
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 1105,1152
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 1441,1488
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 1537,1584
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
	      
	  enddo ! end of lh loop 
	    
	    ! compute m1 in kartesian basis:
	    m1kc(1) =     (m1hc(-1)-m1hc(1))/sqrt(2d0)
	    m1kc(2) = -im*(m1hc(-1)+m1hc(1))/sqrt(2d0)
	    
	    m1kh(1) =     (m1hh(-1)-m1hh(1))/sqrt(2d0)
	    m1kh(2) = -im*(m1hh(-1)+m1hh(1))/sqrt(2d0)
		  		    
c print results from checks:

         print*, 'check NC for BB:'
         print*,'signs:',sign	     
         print*,'gign:',gsign		 
         print*,' vbf for k=',k,'      '
         
	 print*,'m1kc = ',m1kc(1),m1kc(2)

	 print*,'mat=',mat(k,-1,-1,h,2,1,6)+mat(k,-1,-1,h,3,1,6),
     #  	       mat(k,-1,-1,h,2,2,6)+mat(k,-1,-1,h,3,2,6)
	 print*,'rat for l=1=',(mat(k,-1,-1,h,2,1,6)+
     #                          mat(k,-1,-1,h,3,1,6))/m1kc(1)
	 print*,'rat for l=2=',(mat(k,-1,-1,h,2,2,6)+
     #                          mat(k,-1,-1,h,3,2,6))/m1kc(2)
	    
 
         enddo !h

         endif !nc
      endif ! end of debugging block
      
c
c ---------------------------------
c
c check result for CC against madgraph output:
c
      if (bb_debug) then
         if (cc_type) then

          do h = hmin,hmax,hstep  
	  do lh = -1,1,2 	! gluon pol. in hel. basis
 	    
             m1hc(lh) = 0 
 
c compute reference result from individual madgraph diagrams tampr(i,...):

 	    do  i = 25,48
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 73,96
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 231,254
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 279,302
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 485,508
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 533,556
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
 	    do  i = 691,714
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo	
  	    do  i = 739,762
		m1hc(lh) = m1hc(lh) + tamprz(i,-1,-1,h,lh,k) 
	    enddo
	      
	  enddo ! end of lh loop 
	    
	    ! compute m1 in kartesian basis:
	    m1kc(1) =     (m1hc(-1)-m1hc(1))/sqrt(2d0)
	    m1kc(2) = -im*(m1hc(-1)+m1hc(1))/sqrt(2d0)
	    
	    m1kh(1) =     (m1hh(-1)-m1hh(1))/sqrt(2d0)
	    m1kh(2) = -im*(m1hh(-1)+m1hh(1))/sqrt(2d0)
		  		    
c print results from checks:

         print*, 'check CC for BB:'
c         print*,'signs:',sign	     
c         print*,'gign:',gsign		 
         print*,' vbf for k=',k,'      '
         
	 print*,'m1kc = ',m1kc(1),m1kc(2)

	 print*,'mat=',mat(k,-1,-1,h,2,1,6)+mat(k,-1,-1,h,3,1,6),
     #  	       mat(k,-1,-1,h,2,2,6)+mat(k,-1,-1,h,3,2,6)
	 print*,'rat for l=1=',(mat(k,-1,-1,h,2,1,6)+mat(k,-1,-1,h,3,1,6))
     #  	       /m1kc(1)
	 print*,'rat for l=2=',(mat(k,-1,-1,h,2,2,6)+mat(k,-1,-1,h,3,2,6))
     #  	       /m1kc(2)
	    

         enddo !h
         endif !cc
      endif ! end of debugging block

      if (bbonly) goto 999
      
c -----------------------------------------------------------------------
c -----------------------------------------------------------------------
c
 555  continue
c
c and now, finally, the pentagon contributions, i.e. two V's emitted from the
c  same quark line
      

      do isig3 = -1,1,2 
	do isig1 = -1,1,2
    
c upper line:
         
	 ! g from upper line, but not in bkjqq:
	 call ket2c(psi(1,isig1,1),.true.,p(0,1),isig1,p43(0,2),
     #	 	jqq(0,isig3,2,is3,0),bkjqq(1,isig1,isig3,1,2,0),bq(0,1))
         call bra2c(psi(1,isig1,2),.true.,p(0,2),isig1,p43(0,2),
     #	 	jqq(0,isig3,2,is3,0),bkjqq(1,isig1,isig3,2,2,0),bq(0,2))

       do l = 1,2
	
	 ! g from lower line:
	 call ket2c(psi(1,isig1,1),.true.,p(0,1),isig1,p43(0,3),
     #		 jqq(0,isig3,2,is3,l),bkjqq(1,isig1,isig3,1,3,l),dummy)
         call bra2c(psi(1,isig1,2),.true.,p(0,2),isig1,p43(0,3),
     #		 jqq(0,isig3,2,is3,l),bkjqq(1,isig1,isig3,2,3,l),dummy)
           
 	 ! g from upper line, in gbkjqq or bkjqqg:
	 call ket2c(braketg(1,isig1,1,l),.false.,pq(0,1),isig1,p43(0,2),
     #		 jqq(0,isig3,2,is3,0),gbkjqq(1,isig1,isig3,1,2,l),dummy)
         call bra2c(braketg(1,isig1,2,l),.false.,pq(0,2),isig1,p43(0,2),
     #		 jqq(0,isig3,2,is3,0),gbkjqq(1,isig1,isig3,2,2,l),dummy)
 	 
	 call ket2r(bkjqq(1,isig1,isig3,1,2,0),.false.,bq(0,1),isig1,q,
     #		 eps(0,l),bkjqqg(1,isig1,isig3,1,2,l),dummy)
         call bra2r(bkjqq(1,isig1,isig3,2,2,0),.false.,bq(0,2),isig1,q,
     #		 eps(0,l),bkjqqg(1,isig1,isig3,2,2,l),dummy)
 
c ------------          
    
c VV from different fermions (f1/f2):     
c  eps1=v1,eps2=j43 (with v2 arbitray),eps3=v3, g from lower line: 
c	use m5e or m5u(conf=2,v1,v2,j=3,l=1:2)
c
         do h = hmin,hmax,hstep

         m5e(2,1,1,3,l) = -s1c(psiau(1,isig1,h,2),jqq(0,isig3,2,is3,l),
     #	 		    .true.,isig1,psiae(1,isig1,h,1))
         m5e(2,1,2,3,l) = -s1c(psizu(1,isig1,h,2),jqq(0,isig3,2,is3,l),
     #	 		    .true.,isig1,psiae(1,isig1,h,1))
         m5e(2,2,1,3,l) = -s1c(psiau(1,isig1,h,2),jqq(0,isig3,2,is3,l),
     #	 		    .true.,isig1,psize(1,isig1,h,1))
         m5e(2,2,2,3,l) = -s1c(psizu(1,isig1,h,2),jqq(0,isig3,2,is3,l),
     #	 		    .true.,isig1,psize(1,isig1,h,1))

         m5u(2,1,1,3,l) = -s1c(psiae(1,isig1,h,2),jqq(0,isig3,2,is3,l),
     #	 		    .true.,isig1,psiau(1,isig1,h,1))
         m5u(2,1,2,3,l) = -s1c(psize(1,isig1,h,2),jqq(0,isig3,2,is3,l),
     #	 		    .true.,isig1,psiau(1,isig1,h,1))
         m5u(2,2,1,3,l) = -s1c(psiae(1,isig1,h,2),jqq(0,isig3,2,is3,l),
     #	 		    .true.,isig1,psizu(1,isig1,h,1))
         m5u(2,2,2,3,l) = -s1c(psize(1,isig1,h,2),jqq(0,isig3,2,is3,l),
     #	 		    .true.,isig1,psizu(1,isig1,h,1))

c  eps1=v1,eps2=j43 (with v2 arbitray),eps3=v3, g from upper line: 
c	use m5e or m5u(conf=1,v1,v2,j=2,l=1:2)
c
c eu, AA:
         ga = -s1c(braketgau(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psiae(1,isig1,h,1))
         gb = -s1c(braketaug(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psiae(1,isig1,h,1))
         gc = -s1c(psiau(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketaeg(1,isig1,h,1,l))
         gd = -s1c(psiau(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketgae(1,isig1,h,1,l))
     
         m5e(2,1,1,2,l) = ga+gb+gc+gd

c AZ:
         ga = -s1c(braketgzu(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psiae(1,isig1,h,1))
         gb = -s1c(braketzug(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psiae(1,isig1,h,1))
         gc = -s1c(psizu(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketaeg(1,isig1,h,1,l))
         gd = -s1c(psizu(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketgae(1,isig1,h,1,l))
     
         m5e(2,1,2,2,l) = ga+gb+gc+gd

c ZA:
         ga = -s1c(braketgau(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psize(1,isig1,h,1))
         gb = -s1c(braketaug(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psize(1,isig1,h,1))
         gc = -s1c(psiau(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketzeg(1,isig1,h,1,l))
         gd = -s1c(psiau(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketgze(1,isig1,h,1,l))
     
         m5e(2,2,1,2,l) = ga+gb+gc+gd

c ZZ:
         ga = -s1c(braketgzu(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psize(1,isig1,h,1))
         gb = -s1c(braketzug(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psize(1,isig1,h,1))
         gc = -s1c(psizu(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketzeg(1,isig1,h,1,l))
         gd = -s1c(psizu(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketgze(1,isig1,h,1,l))
     
         m5e(2,2,2,2,l) = ga+gb+gc+gd

c
c ue, AA:
         ga = -s1c(braketgae(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psiau(1,isig1,h,1))
         gb = -s1c(braketaeg(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psiau(1,isig1,h,1))
         gc = -s1c(psiae(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketaug(1,isig1,h,1,l))
         gd = -s1c(psiae(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketgau(1,isig1,h,1,l))
     
         m5u(2,1,1,2,l) = ga+gb+gc+gd

c AZ:
         ga = -s1c(braketgze(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psiau(1,isig1,h,1))
         gb = -s1c(braketzeg(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psiau(1,isig1,h,1))
         gc = -s1c(psize(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketaug(1,isig1,h,1,l))
         gd = -s1c(psize(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketgau(1,isig1,h,1,l))
     
         m5u(2,1,2,2,l) = ga+gb+gc+gd

c ZA:
         ga = -s1c(braketgae(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psizu(1,isig1,h,1))
         gb = -s1c(braketaeg(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psizu(1,isig1,h,1))
         gc = -s1c(psiae(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketzug(1,isig1,h,1,l))
         gd = -s1c(psiae(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketgzu(1,isig1,h,1,l))
     
         m5u(2,2,1,2,l) = ga+gb+gc+gd

c ZZ:
         ga = -s1c(braketgze(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psizu(1,isig1,h,1))
         gb = -s1c(braketzeg(1,isig1,h,2,l),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,psizu(1,isig1,h,1))
         gc = -s1c(psize(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketzug(1,isig1,h,1,l))
         gd = -s1c(psize(1,isig1,h,2),jqq(0,isig3,2,is3,0),.true.,
     #	 		    isig1,braketgzu(1,isig1,h,1,l))
     
         m5u(2,2,2,2,l) = ga+gb+gc+gd

c---------------  
     
c VV from f2:
c  eps1=j43,eps2=v2,eps3=v3, g from lower line
         m5e(1,1,1,3,l) = -s1c(psiau(1,isig1,h,2),ae(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,3,l))
         m5e(1,1,2,3,l) = -s1c(psizu(1,isig1,h,2),ae(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,3,l))
         m5e(1,2,1,3,l) = -s1c(psiau(1,isig1,h,2),ze(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,3,l))
         m5e(1,2,2,3,l) = -s1c(psizu(1,isig1,h,2),ze(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,3,l))

         m5u(1,1,1,3,l) = -s1c(psiae(1,isig1,h,2),au(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,3,l))
         m5u(1,1,2,3,l) = -s1c(psize(1,isig1,h,2),au(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,3,l))
         m5u(1,2,1,3,l) = -s1c(psiae(1,isig1,h,2),zu(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,3,l))
         m5u(1,2,2,3,l) = -s1c(psize(1,isig1,h,2),zu(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,3,l))

c  eps1=j43,eps2=v2,eps3=v3, g from upper line
c
c eu, AA: 
         ga= -s1c(braketgau(1,isig1,h,2,l),ae(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,2,0))
         gb= -s1c(braketaug(1,isig1,h,2,l),ae(1,h),.true.,isig1,
     #				 	 bkjqq(1,isig1,isig3,1,2,0))
	 gc = -s1c(psiau(1,isig1,h,2),ae(1,h),.true.,isig1,
     #					bkjqqg(1,isig1,isig3,1,2,l))
	 gd = -s1c(psiau(1,isig1,h,2),ae(1,h),.true.,isig1,
     #					gbkjqq(1,isig1,isig3,1,2,l))         
	 
	 m5e(1,1,1,2,l) = ga+gb+gc+gd
	
c eu, AZ: 
         ga= -s1c(braketgzu(1,isig1,h,2,l),ae(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,2,0))
         gb= -s1c(braketzug(1,isig1,h,2,l),ae(1,h),.true.,isig1,
     #				 	 bkjqq(1,isig1,isig3,1,2,0))
	 gc = -s1c(psizu(1,isig1,h,2),ae(1,h),.true.,isig1,
     #					bkjqqg(1,isig1,isig3,1,2,l))
	 gd = -s1c(psizu(1,isig1,h,2),ae(1,h),.true.,isig1,
     #					gbkjqq(1,isig1,isig3,1,2,l))         
	 
	 m5e(1,1,2,2,l) = ga+gb+gc+gd
	 
c eu, ZA: 
         ga= -s1c(braketgau(1,isig1,h,2,l),ze(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,2,0))
         gb= -s1c(braketaug(1,isig1,h,2,l),ze(1,h),.true.,isig1,
     #				 	 bkjqq(1,isig1,isig3,1,2,0))
	 gc = -s1c(psiau(1,isig1,h,2),ze(1,h),.true.,isig1,
     #					bkjqqg(1,isig1,isig3,1,2,l))
	 gd = -s1c(psiau(1,isig1,h,2),ze(1,h),.true.,isig1,
     #					gbkjqq(1,isig1,isig3,1,2,l))         
	 
	 m5e(1,2,1,2,l) = ga+gb+gc+gd

c eu, ZZ: 
         ga= -s1c(braketgzu(1,isig1,h,2,l),ze(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,2,0))
         gb= -s1c(braketzug(1,isig1,h,2,l),ze(1,h),.true.,isig1,
     #				 	 bkjqq(1,isig1,isig3,1,2,0))
	 gc = -s1c(psizu(1,isig1,h,2),ze(1,h),.true.,isig1,
     #					bkjqqg(1,isig1,isig3,1,2,l))
	 gd = -s1c(psizu(1,isig1,h,2),ze(1,h),.true.,isig1,
     #					gbkjqq(1,isig1,isig3,1,2,l))         
	 
	 m5e(1,2,2,2,l) = ga+gb+gc+gd	
c
c ue, AA: 
         ga= -s1c(braketgae(1,isig1,h,2,l),au(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,2,0))
         gb= -s1c(braketaeg(1,isig1,h,2,l),au(1,h),.true.,isig1,
     #				 	 bkjqq(1,isig1,isig3,1,2,0))
	 gc = -s1c(psiae(1,isig1,h,2),au(1,h),.true.,isig1,
     #					bkjqqg(1,isig1,isig3,1,2,l))
	 gd = -s1c(psiae(1,isig1,h,2),au(1,h),.true.,isig1,
     #					gbkjqq(1,isig1,isig3,1,2,l))         
	 
	 m5u(1,1,1,2,l) = ga+gb+gc+gd
	
c eu, AZ: 
         ga= -s1c(braketgze(1,isig1,h,2,l),au(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,2,0))
         gb= -s1c(braketzeg(1,isig1,h,2,l),au(1,h),.true.,isig1,
     #				 	 bkjqq(1,isig1,isig3,1,2,0))
	 gc = -s1c(psize(1,isig1,h,2),au(1,h),.true.,isig1,
     #					bkjqqg(1,isig1,isig3,1,2,l))
	 gd = -s1c(psize(1,isig1,h,2),au(1,h),.true.,isig1,
     #					gbkjqq(1,isig1,isig3,1,2,l))         
	 
	 m5u(1,1,2,2,l) = ga+gb+gc+gd
	 
c eu, ZA: 
         ga= -s1c(braketgae(1,isig1,h,2,l),zu(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,2,0))
         gb= -s1c(braketaeg(1,isig1,h,2,l),zu(1,h),.true.,isig1,
     #				 	 bkjqq(1,isig1,isig3,1,2,0))
	 gc = -s1c(psiae(1,isig1,h,2),zu(1,h),.true.,isig1,
     #					bkjqqg(1,isig1,isig3,1,2,l))
	 gd = -s1c(psiae(1,isig1,h,2),zu(1,h),.true.,isig1,
     #					gbkjqq(1,isig1,isig3,1,2,l))         
	 
	 m5u(1,2,1,2,l) = ga+gb+gc+gd

c eu, ZZ: 
         ga= -s1c(braketgze(1,isig1,h,2,l),zu(1,h),.true.,isig1,
     #					 bkjqq(1,isig1,isig3,1,2,0))
         gb= -s1c(braketzeg(1,isig1,h,2,l),zu(1,h),.true.,isig1,
     #				 	 bkjqq(1,isig1,isig3,1,2,0))
	 gc = -s1c(psize(1,isig1,h,2),zu(1,h),.true.,isig1,
     #					bkjqqg(1,isig1,isig3,1,2,l))
	 gd = -s1c(psize(1,isig1,h,2),zu(1,h),.true.,isig1,
     #					gbkjqq(1,isig1,isig3,1,2,l))         
	 
	 m5u(1,2,2,2,l) = ga+gb+gc+gd
	
c---------------------------		
c
c VV from f1:
c  eps1=v1,eps2=v2,eps3=j43, g from lower line
         m5e(3,1,1,3,l) = -s1c(bkjqq(1,isig1,isig3,2,3,l),au(1,h),
     #					 .true.,isig1,psiae(1,isig1,h,1))
         m5e(3,1,2,3,l) = -s1c(bkjqq(1,isig1,isig3,2,3,l),zu(1,h),
     #					 .true.,isig1,psiae(1,isig1,h,1))
         m5e(3,2,1,3,l) = -s1c(bkjqq(1,isig1,isig3,2,3,l),au(1,h),
     #					 .true.,isig1,psize(1,isig1,h,1))
         m5e(3,2,2,3,l) = -s1c(bkjqq(1,isig1,isig3,2,3,l),zu(1,h),
     #					 .true.,isig1,psize(1,isig1,h,1))

         m5u(3,1,1,3,l) = -s1c(bkjqq(1,isig1,isig3,2,3,l),ae(1,h),
     #					 .true.,isig1,psiau(1,isig1,h,1))
         m5u(3,1,2,3,l) = -s1c(bkjqq(1,isig1,isig3,2,3,l),ze(1,h),
     #					 .true.,isig1,psiau(1,isig1,h,1))
         m5u(3,2,1,3,l) = -s1c(bkjqq(1,isig1,isig3,2,3,l),ae(1,h),
     #					 .true.,isig1,psizu(1,isig1,h,1))
         m5u(3,2,2,3,l) = -s1c(bkjqq(1,isig1,isig3,2,3,l),ze(1,h),
     #					 .true.,isig1,psizu(1,isig1,h,1))

c  eps1=v1,eps2=v2,eps3=j43, g from upper line
c
c eu, AA:
         ga = -s1c(gbkjqq(1,isig1,isig3,2,2,l),au(1,h),.true.,
     #					isig1,psiae(1,isig1,h,1))
         gb = -s1c(bkjqqg(1,isig1,isig3,2,2,l),au(1,h),.true.,
     #					isig1,psiae(1,isig1,h,1))
         gc = -s1c(bkjqq(1,isig1,isig3,2,2,0),au(1,h),
     #	                   .true.,isig1,braketaeg(1,isig1,h,1,l))
         gd = -s1c(bkjqq(1,isig1,isig3,2,2,0),au(1,h),
     #		   	   .true.,isig1,braketgae(1,isig1,h,1,l))
	 
	 m5e(3,1,1,2,l) = ga+gb+gc+gd

c AZ:
         ga = -s1c(gbkjqq(1,isig1,isig3,2,2,l),zu(1,h),
     #					.true.,isig1,psiae(1,isig1,h,1))
         gb = -s1c(bkjqqg(1,isig1,isig3,2,2,l),zu(1,h),
     #					.true.,isig1,psiae(1,isig1,h,1))
         gc = -s1c(bkjqq(1,isig1,isig3,2,2,0),zu(1,h),
     #			 .true.,isig1,braketaeg(1,isig1,h,1,l))
         gd = -s1c(bkjqq(1,isig1,isig3,2,2,0),zu(1,h),
     #			 .true.,isig1,braketgae(1,isig1,h,1,l))
	 
	 m5e(3,1,2,2,l) = ga+gb+gc+gd
c ZA:
         ga = -s1c(gbkjqq(1,isig1,isig3,2,2,l),au(1,h),
     #					.true.,isig1,psize(1,isig1,h,1))
         gb = -s1c(bkjqqg(1,isig1,isig3,2,2,l),au(1,h),
     #					.true.,isig1,psize(1,isig1,h,1))
         gc = -s1c(bkjqq(1,isig1,isig3,2,2,0),au(1,h),
     #				.true.,isig1,braketzeg(1,isig1,h,1,l))
         gd = -s1c(bkjqq(1,isig1,isig3,2,2,0),au(1,h),
     #                          .true.,isig1,braketgze(1,isig1,h,1,l))
	 
	 m5e(3,2,1,2,l) = ga+gb+gc+gd
c ZZ:
         ga = -s1c(gbkjqq(1,isig1,isig3,2,2,l),zu(1,h),
     #					.true.,isig1,psize(1,isig1,h,1))
         gb = -s1c(bkjqqg(1,isig1,isig3,2,2,l),zu(1,h),
     #					.true.,isig1,psize(1,isig1,h,1))
         gc = -s1c(bkjqq(1,isig1,isig3,2,2,0),zu(1,h),
     #				.true.,isig1,braketzeg(1,isig1,h,1,l))
         gd = -s1c(bkjqq(1,isig1,isig3,2,2,0),zu(1,h),
     #				.true.,isig1,braketgze(1,isig1,h,1,l))
	 
	 m5e(3,2,2,2,l) = ga+gb+gc+gd
c
c ue, AA:
         ga = -s1c(gbkjqq(1,isig1,isig3,2,2,l),ae(1,h),
     #				.true.,isig1,psiau(1,isig1,h,1))
         gb = -s1c(bkjqqg(1,isig1,isig3,2,2,l),ae(1,h),
     #				.true.,isig1,psiau(1,isig1,h,1))
         gc = -s1c(bkjqq(1,isig1,isig3,2,2,0),ae(1,h),
     #				.true.,isig1,braketaug(1,isig1,h,1,l))
         gd = -s1c(bkjqq(1,isig1,isig3,2,2,0),ae(1,h),
     #			        .true.,isig1,braketgau(1,isig1,h,1,l))
	 
	 m5u(3,1,1,2,l) = ga+gb+gc+gd

c AZ:
         ga = -s1c(gbkjqq(1,isig1,isig3,2,2,l),ze(1,h),
     #				.true.,isig1,psiau(1,isig1,h,1))
         gb = -s1c(bkjqqg(1,isig1,isig3,2,2,l),ze(1,h),
     #				.true.,isig1,psiau(1,isig1,h,1))
         gc = -s1c(bkjqq(1,isig1,isig3,2,2,0),ze(1,h),
     #				 .true.,isig1,braketaug(1,isig1,h,1,l))
         gd = -s1c(bkjqq(1,isig1,isig3,2,2,0),ze(1,h),
     #				 .true.,isig1,braketgau(1,isig1,h,1,l))
	 
	 m5u(3,1,2,2,l) = ga+gb+gc+gd
c ZA:
         ga = -s1c(gbkjqq(1,isig1,isig3,2,2,l),ae(1,h),
     #				.true.,isig1,psizu(1,isig1,h,1))
         gb = -s1c(bkjqqg(1,isig1,isig3,2,2,l),ae(1,h),
     #				.true.,isig1,psizu(1,isig1,h,1))
         gc = -s1c(bkjqq(1,isig1,isig3,2,2,0),ae(1,h),
     #				.true.,isig1,braketzug(1,isig1,h,1,l))
         gd = -s1c(bkjqq(1,isig1,isig3,2,2,0),ae(1,h),
     #				.true.,isig1,braketgzu(1,isig1,h,1,l))
	 
	 m5u(3,2,1,2,l) = ga+gb+gc+gd
c ZZ:
         ga = -s1c(gbkjqq(1,isig1,isig3,2,2,l),ze(1,h),
     #				.true.,isig1,psizu(1,isig1,h,1))
         gb = -s1c(bkjqqg(1,isig1,isig3,2,2,l),ze(1,h),
     #				.true.,isig1,psizu(1,isig1,h,1))
         gc = -s1c(bkjqq(1,isig1,isig3,2,2,0),ze(1,h),
     #				.true.,isig1,braketzug(1,isig1,h,1,l))
         gd = -s1c(bkjqq(1,isig1,isig3,2,2,0),ze(1,h),
     #				.true.,isig1,braketgzu(1,isig1,h,1,l))
	 
	 m5u(3,2,2,2,l) = ga+gb+gc+gd

c ----------------	 

	 do j = jmin,jmax

c         do k = 1,6
	 
          do id2 = 1,2
          do id3 = 1,2	
             m1p(k,id2,id3,j,l)=(m5e(1,id2,id3,j,l)+m5u(1,id2,id3,j,l))*
     #    	  	  clr(ifl(2,k),id2,isig1)*clr(ifl(2,k),id3,isig1)   
          enddo
	  enddo
	  do id1 = 1,2
	  do id3 = 1,2 
             m2p(k,id1,id3,j,l)=(m5e(2,id1,id3,j,l)+m5u(2,id1,id3,j,l))*
     #    		clr(ifl(1,k),id1,isig1)*clr(ifl(2,k),id3,isig1)
          enddo
	  enddo	  
          do id1 = 1,2
	  do id2 = 1,2
	     m3p(k,id1,id2,j,l)=(m5e(3,id1,id2,j,l)+m5u(3,id1,id2,j,l))*
     #    		clr(ifl(1,k),id1,isig1)*clr(ifl(1,k),id2,isig1)      
	  enddo
	  enddo	
	     
c         enddo !k =1,6
	  
c	  do k = 1,4
	  if (nc_type) then
   
	  mat(k,isig1,isig3,h,j,l,7) = 
     #	  -(m1p(k,1,1,j,l)+m1p(k,1,2,j,l)+m1p(k,2,1,j,l)+m1p(k,2,2,j,l))*
     #	       (clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3)*prop43(1,j)+
     #	        clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3)*prop43(2,j))
     #		-
     #     (m2p(k,1,1,j,l)+m2p(k,1,2,j,l)+m2p(k,2,1,j,l)+m2p(k,2,2,j,l))*
     #	       (clr(ifl(3,k),1,isig3)*clr(ifl(2,k),1,isig1)*prop43(1,j)+
     #	        clr(ifl(3,k),2,isig3)*clr(ifl(2,k),2,isig1)*prop43(2,j))
     #		-
     #	   (m3p(k,1,1,j,l)+m3p(k,1,2,j,l)+m3p(k,2,1,j,l)+m3p(k,2,2,j,l))*
     #	       (clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3)*prop43(1,j)+
     #	        clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3)*prop43(2,j))
 
c          endif !nc_type  
c	  enddo !k
	
          else !cc_type
	  
	  if (isig1.eq.-1.and.isig3.eq.-1) then
            fac = clr(3,3,-1)**2*prop43(3,j)
	     
c	   do k = 5,6  	    
	   mat(k,isig1,isig3,h,j,l,7) = -fac*
     #	    (m1p(k,1,1,j,l)+m1p(k,1,2,j,l)+m1p(k,2,1,j,l)+m1p(k,2,2,j,l)+
     #       m2p(k,1,1,j,l)+m2p(k,1,2,j,l)+m2p(k,2,1,j,l)+m2p(k,2,2,j,l)+
     #	     m3p(k,1,1,j,l)+m3p(k,1,2,j,l)+m3p(k,2,1,j,l)+m3p(k,2,2,j,l))
c	   enddo !k

	  endif !isig13

          endif !nc/cc
	  
	  enddo !j

          enddo !h
       
       enddo !l
      
      enddo !isig3
      enddo !isig1
      
c-----------------------------------------------------------------
      
      do isig3 = -1,1,2 
	do isig1 = -1,1,2
    
c lower line:
         
	 ! g from lower line, but not in bkjqq:
	 call ket2c(psi(1,isig3,3),.true.,p(0,3),isig3,p21(0,3),
     #	 	jqq(0,isig1,1,is1,0),bkjqq(1,isig3,isig1,3,3,0),bq(0,3))
         call bra2c(psi(1,isig3,4),.true.,p(0,4),isig3,p21(0,3),
     #	 	jqq(0,isig1,1,is1,0),bkjqq(1,isig3,isig1,4,3,0),bq(0,4))


       do l = 1,2
	
	 ! g from upper line:
	 call ket2c(psi(1,isig3,3),.true.,p(0,3),isig3,p21(0,2),
     #		 jqq(0,isig1,1,is1,l),bkjqq(1,isig3,isig1,3,2,l),dummy)
         call bra2c(psi(1,isig3,4),.true.,p(0,4),isig3,p21(0,2),
     #		 jqq(0,isig1,1,is1,l),bkjqq(1,isig3,isig1,4,2,l),dummy)
           
 	 ! g from lower line, in gbkjqq or bkjqqg:
	 call ket2c(braketg(1,isig3,3,l),.false.,pq(0,3),isig3,p21(0,3),
     #		 jqq(0,isig1,1,is1,0),gbkjqq(1,isig3,isig1,3,3,l),dummy)
         call bra2c(braketg(1,isig3,4,l),.false.,pq(0,4),isig3,p21(0,3),
     #		 jqq(0,isig1,1,is1,0),gbkjqq(1,isig3,isig1,4,3,l),dummy)
 	 
	 call ket2r(bkjqq(1,isig3,isig1,3,3,0),.false.,bq(0,3),isig3,q,
     #		 eps(0,l),bkjqqg(1,isig3,isig1,3,3,l),dummy)
         call bra2r(bkjqq(1,isig3,isig1,4,3,0),.false.,bq(0,4),isig3,q,
     #		 eps(0,l),bkjqqg(1,isig3,isig1,4,3,l),dummy)   
c
c-------------          
c
c VV from different fermions (f3/f4):     
c  eps1=v1,eps2=j21 (with v2 arbitray),eps3=v3, g from upper line: 
c	use m5e or m5u(conf=1,v1,v2,j=2,l=1:2)

         do h = hmin,hmax,hstep


         m5e(2,1,1,2,l) = -s1c(psiau(1,isig3,h,4),jqq(0,isig1,1,is1,l),
     #	 	           .true.,isig3,psiae(1,isig3,h,3))
         m5e(2,1,2,2,l) = -s1c(psizu(1,isig3,h,4),jqq(0,isig1,1,is1,l),
     #	 	           .true.,isig3,psiae(1,isig3,h,3))
         m5e(2,2,1,2,l) = -s1c(psiau(1,isig3,h,4),jqq(0,isig1,1,is1,l),
     #	 	           .true.,isig3,psize(1,isig3,h,3))
         m5e(2,2,2,2,l) = -s1c(psizu(1,isig3,h,4),jqq(0,isig1,1,is1,l),
     #	 	          .true., isig3,psize(1,isig3,h,3))

         m5u(2,1,1,2,l) = -s1c(psiae(1,isig3,h,4),jqq(0,isig1,1,is1,l),
     #	 	           .true.,isig3,psiau(1,isig3,h,3))
         m5u(2,1,2,2,l) = -s1c(psize(1,isig3,h,4),jqq(0,isig1,1,is1,l),
     #	 	           .true.,isig3,psiau(1,isig3,h,3))
         m5u(2,2,1,2,l) = -s1c(psiae(1,isig3,h,4),jqq(0,isig1,1,is1,l),
     #	 	           .true.,isig3,psizu(1,isig3,h,3))
         m5u(2,2,2,2,l) = -s1c(psize(1,isig3,h,4),jqq(0,isig1,1,is1,l),
     #	 		   .true.,isig3,psizu(1,isig3,h,3))

c  eps1=v1,eps2=j21 (with v2 arbitray),eps3=v3, g from lower line: 
c	use m5e or m5u(conf=1,v1,v2,j=2,l=1:2)
c
c eu, AA:
         ga = -s1c(braketgau(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psiae(1,isig3,h,3))
         gb = -s1c(braketaug(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psiae(1,isig3,h,3))
         gc = -s1c(psiau(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketaeg(1,isig3,h,3,l))
         gd = -s1c(psiau(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketgae(1,isig3,h,3,l))
     
         m5e(2,1,1,3,l) = ga+gb+gc+gd

c AZ:
         ga = -s1c(braketgzu(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psiae(1,isig3,h,3))
         gb = -s1c(braketzug(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psiae(1,isig3,h,3))
         gc = -s1c(psizu(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketaeg(1,isig3,h,3,l))
         gd = -s1c(psizu(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketgae(1,isig3,h,3,l))
     
         m5e(2,1,2,3,l) = ga+gb+gc+gd

c ZA:
         ga = -s1c(braketgau(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psize(1,isig3,h,3))
         gb = -s1c(braketaug(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psize(1,isig3,h,3))
         gc = -s1c(psiau(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketzeg(1,isig3,h,3,l))
         gd = -s1c(psiau(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketgze(1,isig3,h,3,l))
     
         m5e(2,2,1,3,l) = ga+gb+gc+gd

c ZZ:
         ga = -s1c(braketgzu(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psize(1,isig3,h,3))
         gb = -s1c(braketzug(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psize(1,isig3,h,3))
         gc = -s1c(psizu(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketzeg(1,isig3,h,3,l))
         gd = -s1c(psizu(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketgze(1,isig3,h,3,l))
     
         m5e(2,2,2,3,l) = ga+gb+gc+gd

c
c ue, AA:
         ga = -s1c(braketgae(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psiau(1,isig3,h,3))
         gb = -s1c(braketaeg(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psiau(1,isig3,h,3))
         gc = -s1c(psiae(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketaug(1,isig3,h,3,l))
         gd = -s1c(psiae(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketgau(1,isig3,h,3,l))
     
         m5u(2,1,1,3,l) = ga+gb+gc+gd

c AZ:
         ga = -s1c(braketgze(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psiau(1,isig3,h,3))
         gb = -s1c(braketzeg(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psiau(1,isig3,h,3))
         gc = -s1c(psize(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketaug(1,isig3,h,3,l))
         gd = -s1c(psize(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketgau(1,isig3,h,3,l))
     
         m5u(2,1,2,3,l) = ga+gb+gc+gd

c ZA:
         ga = -s1c(braketgae(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psizu(1,isig3,h,3))
         gb = -s1c(braketaeg(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psizu(1,isig3,h,3))
         gc = -s1c(psiae(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketzug(1,isig3,h,3,l))
         gd = -s1c(psiae(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketgzu(1,isig3,h,3,l))
     
         m5u(2,2,1,3,l) = ga+gb+gc+gd

c ZZ:
         ga = -s1c(braketgze(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psizu(1,isig3,h,3))
         gb = -s1c(braketzeg(1,isig3,h,4,l),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,psizu(1,isig3,h,3))
         gc = -s1c(psize(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketzug(1,isig3,h,3,l))
         gd = -s1c(psize(1,isig3,h,4),jqq(0,isig1,1,is1,0),.true.,
     #	 		    isig3,braketgzu(1,isig3,h,3,l))
     
         m5u(2,2,2,3,l) = ga+gb+gc+gd

c------------------     
     
c VV from f4:
c  eps1=j21,eps2=v2,eps3=v3, g from upper line
         m5e(1,1,1,2,l) = -s1c(psiau(1,isig3,h,4),ae(1,h),.true.,isig3,
     #		        		bkjqq(1,isig3,isig1,3,2,l))
         m5e(1,1,2,2,l) = -s1c(psizu(1,isig3,h,4),ae(1,h),.true.,isig3,
     #		        		bkjqq(1,isig3,isig1,3,2,l))
         m5e(1,2,1,2,l) = -s1c(psiau(1,isig3,h,4),ze(1,h),.true.,isig3,
     #		        		bkjqq(1,isig3,isig1,3,2,l))
         m5e(1,2,2,2,l) = -s1c(psizu(1,isig3,h,4),ze(1,h),.true.,isig3,
     #		        		bkjqq(1,isig3,isig1,3,2,l))

         m5u(1,1,1,2,l) = -s1c(psiae(1,isig3,h,4),au(1,h),.true.,isig3,
     #		        		bkjqq(1,isig3,isig1,3,2,l))
         m5u(1,1,2,2,l) = -s1c(psize(1,isig3,h,4),au(1,h),.true.,isig3,
     #		        		bkjqq(1,isig3,isig1,3,2,l))
         m5u(1,2,1,2,l) = -s1c(psiae(1,isig3,h,4),zu(1,h),.true.,isig3,
     #		        		bkjqq(1,isig3,isig1,3,2,l))
         m5u(1,2,2,2,l) = -s1c(psize(1,isig3,h,4),zu(1,h),.true.,isig3,
     #					 bkjqq(1,isig3,isig1,3,2,l))


c  eps1=j21,eps2=v2,eps3=v3, g from lower line
c
c eu, AA: 
         ga= -s1c(braketgau(1,isig3,h,4,l),ae(1,h),.true.,isig3,
     #					 bkjqq(1,isig3,isig1,3,3,0))
         gb= -s1c(braketaug(1,isig3,h,4,l),ae(1,h),.true.,isig3,
     #				 	 bkjqq(1,isig3,isig1,3,3,0))
	 gc = -s1c(psiau(1,isig3,h,4),ae(1,h),.true.,isig3,
     #					bkjqqg(1,isig3,isig1,3,3,l))
	 gd = -s1c(psiau(1,isig3,h,4),ae(1,h),.true.,isig3,
     #					gbkjqq(1,isig3,isig1,3,3,l))         
	 
	 m5e(1,1,1,3,l) = ga+gb+gc+gd
	
c eu, AZ: 
         ga= -s1c(braketgzu(1,isig3,h,4,l),ae(1,h),.true.,isig3,
     #					 bkjqq(1,isig3,isig1,3,3,0))
         gb= -s1c(braketzug(1,isig3,h,4,l),ae(1,h),.true.,isig3,
     #				 	 bkjqq(1,isig3,isig1,3,3,0))
	 gc = -s1c(psizu(1,isig3,h,4),ae(1,h),.true.,isig3,
     #					bkjqqg(1,isig3,isig1,3,3,l))
	 gd = -s1c(psizu(1,isig3,h,4),ae(1,h),.true.,isig3,
     #					gbkjqq(1,isig3,isig1,3,3,l))         
	 
	 m5e(1,1,2,3,l) = ga+gb+gc+gd
	 
c eu, ZA: 
         ga= -s1c(braketgau(1,isig3,h,4,l),ze(1,h),.true.,isig3,
     #					 bkjqq(1,isig3,isig1,3,3,0))
         gb= -s1c(braketaug(1,isig3,h,4,l),ze(1,h),.true.,isig3,
     #				 	 bkjqq(1,isig3,isig1,3,3,0))
	 gc = -s1c(psiau(1,isig3,h,4),ze(1,h),.true.,isig3,
     #					bkjqqg(1,isig3,isig1,3,3,l))
	 gd = -s1c(psiau(1,isig3,h,4),ze(1,h),.true.,isig3,
     #					gbkjqq(1,isig3,isig1,3,3,l))         
	 
	 m5e(1,2,1,3,l) = ga+gb+gc+gd

c eu, ZZ: 
         ga= -s1c(braketgzu(1,isig3,h,4,l),ze(1,h),.true.,isig3,
     #					 bkjqq(1,isig3,isig1,3,3,0))
         gb= -s1c(braketzug(1,isig3,h,4,l),ze(1,h),.true.,isig3,
     #				 	 bkjqq(1,isig3,isig1,3,3,0))
	 gc = -s1c(psizu(1,isig3,h,4),ze(1,h),.true.,isig3,
     #					bkjqqg(1,isig3,isig1,3,3,l))
	 gd = -s1c(psizu(1,isig3,h,4),ze(1,h),.true.,isig3,
     #					gbkjqq(1,isig3,isig1,3,3,l))         
	 
	 m5e(1,2,2,3,l) = ga+gb+gc+gd
	
c
c ue, AA: 
         ga= -s1c(braketgae(1,isig3,h,4,l),au(1,h),.true.,isig3,
     #					 bkjqq(1,isig3,isig1,3,3,0))
         gb= -s1c(braketaeg(1,isig3,h,4,l),au(1,h),.true.,isig3,
     #				 	 bkjqq(1,isig3,isig1,3,3,0))
	 gc = -s1c(psiae(1,isig3,h,4),au(1,h),.true.,isig3,
     #					bkjqqg(1,isig3,isig1,3,3,l))
	 gd = -s1c(psiae(1,isig3,h,4),au(1,h),.true.,isig3,
     #					gbkjqq(1,isig3,isig1,3,3,l))         
	 
	 m5u(1,1,1,3,l) = ga+gb+gc+gd
	
c eu, AZ: 
         ga= -s1c(braketgze(1,isig3,h,4,l),au(1,h),.true.,isig3,
     #					 bkjqq(1,isig3,isig1,3,3,0))
         gb= -s1c(braketzeg(1,isig3,h,4,l),au(1,h),.true.,isig3,
     #				 	 bkjqq(1,isig3,isig1,3,3,0))
	 gc = -s1c(psize(1,isig3,h,4),au(1,h),.true.,isig3,
     #					bkjqqg(1,isig3,isig1,3,3,l))
	 gd = -s1c(psize(1,isig3,h,4),au(1,h),.true.,isig3,
     #					gbkjqq(1,isig3,isig1,3,3,l))         
	 
	 m5u(1,1,2,3,l) = ga+gb+gc+gd
	 
c eu, ZA: 
         ga= -s1c(braketgae(1,isig3,h,4,l),zu(1,h),.true.,isig3,
     #					 bkjqq(1,isig3,isig1,3,3,0))
         gb= -s1c(braketaeg(1,isig3,h,4,l),zu(1,h),.true.,isig3,
     #				 	 bkjqq(1,isig3,isig1,3,3,0))
	 gc = -s1c(psiae(1,isig3,h,4),zu(1,h),.true.,isig3,
     #					bkjqqg(1,isig3,isig1,3,3,l))
	 gd = -s1c(psiae(1,isig3,h,4),zu(1,h),.true.,isig3,
     #					gbkjqq(1,isig3,isig1,3,3,l))         
	 
	 m5u(1,2,1,3,l) = ga+gb+gc+gd

c eu, ZZ: 
         ga= -s1c(braketgze(1,isig3,h,4,l),zu(1,h),.true.,isig3,
     #					 bkjqq(1,isig3,isig1,3,3,0))
         gb= -s1c(braketzeg(1,isig3,h,4,l),zu(1,h),.true.,isig3,
     #				 	 bkjqq(1,isig3,isig1,3,3,0))
	 gc = -s1c(psize(1,isig3,h,4),zu(1,h),.true.,isig3,
     #					bkjqqg(1,isig3,isig1,3,3,l))
	 gd = -s1c(psize(1,isig3,h,4),zu(1,h),.true.,isig3,
     #					gbkjqq(1,isig3,isig1,3,3,l))         
	 
	 m5u(1,2,2,3,l) = ga+gb+gc+gd
	
c---------------------------	
c	
c VV from f3:
c  eps1=v1,eps2=v2,eps3=j21, g from upper line
         m5e(3,1,1,2,l) = -s1c(bkjqq(1,isig3,isig1,4,2,l),au(1,h),
     #		        		.true.,isig3,psiae(1,isig3,h,3))
         m5e(3,1,2,2,l) = -s1c(bkjqq(1,isig3,isig1,4,2,l),zu(1,h),
     #		        		.true.,isig3,psiae(1,isig3,h,3))
         m5e(3,2,1,2,l) = -s1c(bkjqq(1,isig3,isig1,4,2,l),au(1,h),
     #		        		.true.,isig3,psize(1,isig3,h,3))
         m5e(3,2,2,2,l) = -s1c(bkjqq(1,isig3,isig1,4,2,l),zu(1,h),
     #		        		.true.,isig3,psize(1,isig3,h,3))

         m5u(3,1,1,2,l) = -s1c(bkjqq(1,isig3,isig1,4,2,l),ae(1,h),
     #		        		.true.,isig3,psiau(1,isig3,h,3))
         m5u(3,1,2,2,l) = -s1c(bkjqq(1,isig3,isig1,4,2,l),ze(1,h),
     #		        		.true.,isig3,psiau(1,isig3,h,3))
         m5u(3,2,1,2,l) = -s1c(bkjqq(1,isig3,isig1,4,2,l),ae(1,h),
     #		        		.true.,isig3,psizu(1,isig3,h,3))
         m5u(3,2,2,2,l) = -s1c(bkjqq(1,isig3,isig1,4,2,l),ze(1,h),
     #					.true.,isig3,psizu(1,isig3,h,3))

   
     
c  eps1=v1,eps2=v2,eps3=j21, g from lower line
c
c eu, AA:
         ga = -s1c(gbkjqq(1,isig3,isig1,4,3,l),au(1,h),.true.,
     #					isig3,psiae(1,isig3,h,3))
         gb = -s1c(bkjqqg(1,isig3,isig1,4,3,l),au(1,h),.true.,
     #					isig3,psiae(1,isig3,h,3))
         gc = -s1c(bkjqq(1,isig3,isig1,4,3,0),au(1,h),
     #				.true.,isig3,braketaeg(1,isig3,h,3,l))
         gd = -s1c(bkjqq(1,isig3,isig1,4,3,0),au(1,h),
     #				.true.,isig3,braketgae(1,isig3,h,3,l))
	 
	 m5e(3,1,1,3,l) = ga+gb+gc+gd

c AZ:
         ga = -s1c(gbkjqq(1,isig3,isig1,4,3,l),zu(1,h),
     #				.true.,isig3,psiae(1,isig3,h,3))
         gb = -s1c(bkjqqg(1,isig3,isig1,4,3,l),zu(1,h),
     #				.true.,isig3,psiae(1,isig3,h,3))
         gc = -s1c(bkjqq(1,isig3,isig1,4,3,0),zu(1,h),
     #			        .true.,isig3,braketaeg(1,isig3,h,3,l))
         gd = -s1c(bkjqq(1,isig3,isig1,4,3,0),zu(1,h),
     #				.true.,isig3,braketgae(1,isig3,h,3,l))
	 
	 m5e(3,1,2,3,l) = ga+gb+gc+gd
c ZA:
         ga = -s1c(gbkjqq(1,isig3,isig1,4,3,l),au(1,h),
     #				.true.,isig3,psize(1,isig3,h,3))
         gb = -s1c(bkjqqg(1,isig3,isig1,4,3,l),au(1,h),
     #				.true.,isig3,psize(1,isig3,h,3))
         gc = -s1c(bkjqq(1,isig3,isig1,4,3,0),au(1,h),
     #				.true.,isig3,braketzeg(1,isig3,h,3,l))
         gd = -s1c(bkjqq(1,isig3,isig1,4,3,0),au(1,h),
     #				.true.,isig3,braketgze(1,isig3,h,3,l))
	 
	 m5e(3,2,1,3,l) = ga+gb+gc+gd
c ZZ:
         ga = -s1c(gbkjqq(1,isig3,isig1,4,3,l),zu(1,h),
     #				.true.,isig3,psize(1,isig3,h,3))
         gb = -s1c(bkjqqg(1,isig3,isig1,4,3,l),zu(1,h),
     #				.true.,isig3,psize(1,isig3,h,3))
         gc = -s1c(bkjqq(1,isig3,isig1,4,3,0),zu(1,h),
     #				.true.,isig3,braketzeg(1,isig3,h,3,l))
         gd = -s1c(bkjqq(1,isig3,isig1,4,3,0),zu(1,h),
     #				.true.,isig3,braketgze(1,isig3,h,3,l))
	 
	 m5e(3,2,2,3,l) = ga+gb+gc+gd

c
c ue, AA:
         ga = -s1c(gbkjqq(1,isig3,isig1,4,3,l),ae(1,h),
     #				.true.,isig3,psiau(1,isig3,h,3))
         gb = -s1c(bkjqqg(1,isig3,isig1,4,3,l),ae(1,h),
     #				.true.,isig3,psiau(1,isig3,h,3))
         gc = -s1c(bkjqq(1,isig3,isig1,4,3,0),ae(1,h),
     #				.true.,isig3,braketaug(1,isig3,h,3,l))
         gd = -s1c(bkjqq(1,isig3,isig1,4,3,0),ae(1,h),
     #				.true.,isig3,braketgau(1,isig3,h,3,l))
	 
	 m5u(3,1,1,3,l) = ga+gb+gc+gd

c AZ:
         ga = -s1c(gbkjqq(1,isig3,isig1,4,3,l),ze(1,h),
     #				.true.,isig3,psiau(1,isig3,h,3))
         gb = -s1c(bkjqqg(1,isig3,isig1,4,3,l),ze(1,h),
     #				.true.,isig3,psiau(1,isig3,h,3))
         gc = -s1c(bkjqq(1,isig3,isig1,4,3,0),ze(1,h),
     #				.true.,isig3,braketaug(1,isig3,h,3,l))
         gd = -s1c(bkjqq(1,isig3,isig1,4,3,0),ze(1,h),
     #				.true.,isig3,braketgau(1,isig3,h,3,l))
	 
	 m5u(3,1,2,3,l) = ga+gb+gc+gd
c ZA:
         ga = -s1c(gbkjqq(1,isig3,isig1,4,3,l),ae(1,h),
     #				.true.,isig3,psizu(1,isig3,h,3))
         gb = -s1c(bkjqqg(1,isig3,isig1,4,3,l),ae(1,h),
     #				.true.,isig3,psizu(1,isig3,h,3))
         gc = -s1c(bkjqq(1,isig3,isig1,4,3,0),ae(1,h),
     #				.true.,isig3,braketzug(1,isig3,h,3,l))
         gd = -s1c(bkjqq(1,isig3,isig1,4,3,0),ae(1,h),
     #				.true.,isig3,braketgzu(1,isig3,h,3,l))
	 
	 m5u(3,2,1,3,l) = ga+gb+gc+gd
c ZZ:
         ga = -s1c(gbkjqq(1,isig3,isig1,4,3,l),ze(1,h),
     #				.true.,isig3,psizu(1,isig3,h,3))
         gb = -s1c(bkjqqg(1,isig3,isig1,4,3,l),ze(1,h),
     #				.true.,isig3,psizu(1,isig3,h,3))
         gc = -s1c(bkjqq(1,isig3,isig1,4,3,0),ze(1,h),
     #				.true.,isig3,braketzug(1,isig3,h,3,l))
         gd = -s1c(bkjqq(1,isig3,isig1,4,3,0),ze(1,h),
     #				.true.,isig3,braketgzu(1,isig3,h,3,l))
	 
	 m5u(3,2,2,3,l) = ga+gb+gc+gd

c ----------------	 

	 do j = jmin,jmax

c        do k = 1,6
	 
         do id2 = 1,2
         do id3 = 1,2	
           m1p(k,id2,id3,j,l)=(m5e(1,id2,id3,j,l)+m5u(1,id2,id3,j,l))*
     #    	      clr(ifl(4,k),id2,isig3)*clr(ifl(4,k),id3,isig3)   
         enddo
         enddo

	 do id1 = 1,2
	 do id3 = 1,2 
            m2p(k,id1,id3,j,l)=(m5e(2,id1,id3,j,l)+m5u(2,id1,id3,j,l))*
     #    	       clr(ifl(3,k),id1,isig3)*clr(ifl(4,k),id3,isig3)
         enddo
	 enddo	  

	 do id1 = 1,2
	 do id2 = 1,2
	    m3p(k,id1,id2,j,l) =(m5e(3,id1,id2,j,l)+m5u(3,id1,id2,j,l))*
     #    	        clr(ifl(3,k),id1,isig3)*clr(ifl(3,k),id2,isig3)      
	 enddo
	 enddo	
	     
c        enddo !k =1,6
	  
c	 do k = 1,4

         if (nc_type) then
	    
	    mat(k,isig1,isig3,h,j,l,8) = 
     #	  -(m1p(k,1,1,j,l)+m1p(k,1,2,j,l)+m1p(k,2,1,j,l)+m1p(k,2,2,j,l))*
     #	       (clr(ifl(3,k),1,isig3)*clr(ifl(1,k),1,isig1)*prop21(1,j)+
     #	        clr(ifl(3,k),2,isig3)*clr(ifl(1,k),2,isig1)*prop21(2,j))
     #	  -
     #	   (m2p(k,1,1,j,l)+m2p(k,1,2,j,l)+m2p(k,2,1,j,l)+m2p(k,2,2,j,l))*
     #	       (clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3)*prop21(1,j)+
     #	        clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3)*prop21(2,j))
     #	  -
     #	   (m3p(k,1,1,j,l)+m3p(k,1,2,j,l)+m3p(k,2,1,j,l)+m3p(k,2,2,j,l))*
     #	       (clr(ifl(4,k),1,isig3)*clr(ifl(1,k),1,isig1)*prop21(1,j)+
     #	        clr(ifl(4,k),2,isig3)*clr(ifl(1,k),2,isig1)*prop21(2,j))
     
c	  enddo !k
	
         else !cc    
	  
	  if (isig1.eq.-1.and.isig3.eq.-1) then
          fac = clr(3,3,-1)**2*prop21(3,j)
	     
c	    do k = 5,6  	    
	   mat(k,isig1,isig3,h,j,l,8) = -fac*
     #	    (m1p(k,1,1,j,l)+m1p(k,1,2,j,l)+m1p(k,2,1,j,l)+m1p(k,2,2,j,l)+
     #	     m2p(k,1,1,j,l)+m2p(k,1,2,j,l)+m2p(k,2,1,j,l)+m2p(k,2,2,j,l)+
     #	     m3p(k,1,1,j,l)+m3p(k,1,2,j,l)+m3p(k,2,1,j,l)+m3p(k,2,2,j,l))
c	    enddo !k

	  endif !isig13

         endif !nc/cc  
	  
	  enddo !j

          enddo !h
       
       enddo !l
      
      enddo !isig3
      enddo !isig1
            
c ---------------------------------
c
c check result for CC against madgraph output:
c

      if (p_debug) then

         if (cc_type) then 
         print*, 'check CC for P:'
         print*,'signs:',sign	     
         print*,'gign:',gsign		 
         print*,' vbf for k=',k,'      '

         do h=hmin,hmax,hstep

         do isig1=-1,-1
         do isig3=-1,-1

	  do lh = -1,1,2	! gluon pol. in hel. basis
 	    
             m1hc(lh) = 0 
 
c compute reference result from individual madgraph diagrams tampr(i,...):

 	    do  i = 1,24
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo	
  	    do  i = 49,72
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
 	    do  i = 167,190
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo	
  	    do  i = 255,278
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
 	    do  i = 303,326
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo	
  	    do  i = 397,420
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
 	    do  i = 461,484
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo	
  	    do  i = 509,532
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
  	    do  i =627,650
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
  	    do  i = 715,738
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
 	    do  i = 763,786
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
  	    do  i = 857,880
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
	      
	  enddo ! end of lh loop 
	    
	    ! compute m1 in kartesian basis:
	    m1kc(1) =     (m1hc(-1)-m1hc(1))/sqrt(2d0)
	    m1kc(2) = -im*(m1hc(-1)+m1hc(1))/sqrt(2d0)
	    
	    m1kh(1) =     (m1hh(-1)-m1hh(1))/sqrt(2d0)
	    m1kh(2) = -im*(m1hh(-1)+m1hh(1))/sqrt(2d0)
		  		    
c print results from checks:

	 print*,'m1kc = ',m1kc(1),m1kc(2)

	 print*,'mat=',mat(k,isig1,isig3,h,2,1,7)+mat(k,isig1,isig3,h,3,1,7)+
     #  	       mat(k,isig1,isig3,h,2,1,8)+mat(k,isig1,isig3,h,3,1,8),
     #  	       mat(k,isig1,isig3,h,2,2,7)+mat(k,isig1,isig3,h,3,2,7)+
     #  	       mat(k,isig1,isig3,h,2,2,8)+mat(k,isig1,isig3,h,3,2,8)
	 print*,'rat for l=1=',m1kc(1)/(
     #	 	       mat(k,isig1,isig3,h,2,1,7)+mat(k,isig1,isig3,h,3,1,7)+
     #  	       mat(k,isig1,isig3,h,2,1,8)+mat(k,isig1,isig3,h,3,1,8))
	 print*,'rat for l=2=',m1kc(2)/(
     #	 	       mat(k,isig1,isig3,h,2,2,7)+mat(k,isig1,isig3,h,3,2,7)+
     #  	       mat(k,isig1,isig3,h,2,2,8)+mat(k,isig1,isig3,h,3,2,8))

         enddo !isig
         enddo !isig

         enddo !h

         elseif (nc_type) then 
         print*, 'check NC for P:'
         print*,'signs:',sign	     
         print*,'gign:',gsign		 
         print*,' vbf for k=',k,'      '

         do h=hmin,hmax,hstep

         do isig1=-1,1,2
         do isig3=-1,1,2

	  do lh = -1,1,2	! gluon pol. in hel. basis
 	    
             m1hc(lh) = 0 
 
c compute reference result from individual madgraph diagrams tampr(i,...):

 	    do  i = 1,48
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo	
  	    do  i = 97,144
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
 	    do  i = 353,400
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo	
  	    do  i = 529,576
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
 	    do  i = 625,672
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo	
  	    do  i = 833,880
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
 	    do  i = 961,1008
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo	
  	    do  i = 1057,1104
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
  	    do  i = 1313,1360
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
  	    do  i = 1489,1536
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
 	    do  i = 1585,1632
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
  	    do  i = 1793,1840
		m1hc(lh) = m1hc(lh) + tamprz(i,isig1,isig3,h,lh,k) 
	    enddo
	      
	  enddo ! end of lh loop 
	    
	    ! compute m1 in kartesian basis:
	    m1kc(1) =     (m1hc(-1)-m1hc(1))/sqrt(2d0)
	    m1kc(2) = -im*(m1hc(-1)+m1hc(1))/sqrt(2d0)
	    
	    m1kh(1) =     (m1hh(-1)-m1hh(1))/sqrt(2d0)
	    m1kh(2) = -im*(m1hh(-1)+m1hh(1))/sqrt(2d0)
		  		    
c print results from checks:
         print*,'h=',h
         print*,'isig1,isig3=',isig1,isig3
	 print*,'m1kc = ',m1kc(1),m1kc(2)

	 print*,'mat=',mat(k,isig1,isig3,h,2,1,7)+mat(k,isig1,isig3,h,3,1,7)+
     #  	       mat(k,isig1,isig3,h,2,1,8)+mat(k,isig1,isig3,h,3,1,8),
     #  	       mat(k,isig1,isig3,h,2,2,7)+mat(k,isig1,isig3,h,3,2,7)+
     #  	       mat(k,isig1,isig3,h,2,2,8)+mat(k,isig1,isig3,h,3,2,8)
	 print*,'rat for l=1=',m1kc(1)/(
     #	 	       mat(k,isig1,isig3,h,2,1,7)+mat(k,isig1,isig3,h,3,1,7)+
     #  	       mat(k,isig1,isig3,h,2,1,8)+mat(k,isig1,isig3,h,3,1,8))
	 print*,'rat for l=2=',m1kc(2)/(
     #	 	       mat(k,isig1,isig3,h,2,2,7)+mat(k,isig1,isig3,h,3,2,7)+
     #  	       mat(k,isig1,isig3,h,2,2,8)+mat(k,isig1,isig3,h,3,2,8))

         enddo !isig
         enddo !isig

         enddo !h

         endif !cc
 
c         enddo ! end of k loop
      endif ! end of debugging block
          
c --------------------------------------------------------------------------
c --------------------------------------------------------------------------
     
 999   continue

c sum the graphs, square them and map them onto uucc, uuss etc.
      if (nc_type) then
         res(:,:) = 0d0
         mm(:,:,:,:,:,:) = 0
 	 do j = 2,3     
         do h = hmin,hmax,hstep
	    do isig1 = -1,1,2
	       do isig3 = -1,1,2
 	    	  do l = 1,2
              	     mm(k,isig1,isig3,h,j,l) = 0
               	     do i = 1,9
                        mm(k,isig1,isig3,h,j,l) = 
     1                 		 mm(k,isig1,isig3,h,j,l) + 
     1		    	       (mat(k,isig1,isig3,h,j,l,i))
      		     enddo !i
              	     res(k,j) = res(k,j) 
     &		       	       + dreal(mm(k,isig1,isig3,h,j,l))**2
     &                         + dimag(mm(k,isig1,isig3,h,j,l))**2
	          enddo !l
	      enddo !isig3		     
           enddo !isig1
         enddo !h
         res(k,j) = res(k,j)*12d0*fpials(j)   ! C_2*9 is the color factor
	 enddo !j

      else ! cc
      
        res(:,:) = 0d0
        mm(:,:,:,:,:,:) = 0
 	do j = 2,3     
        do h = hmin,hmax,hstep
 	    do l = 1,2
               do i = 1,9
            	  mm(k,-1,-1,h,j,l) = 
     1      		   mm(k,-1,-1,h,j,l) + 
     1	    		  (mat(k,-1,-1,h,j,l,i))
     	       enddo !i
               res(k,j) = res(k,j) 
     &	    		 + dreal(mm(k,-1,-1,h,j,l))**2
     &      		 + dimag(mm(k,-1,-1,h,j,l))**2
	    enddo !l
        enddo!h
        res(k,j) = res(k,j)*12d0*fpials(j)   ! C_2*9 is the color factor
	enddo !j
                  
      endif !nc/cc
            
      if (jmin.eq.3) then
         ans(2) = 0d0
      elseif (jmax.eq.2) then
         ans(3) = 0d0
      endif

c  set all processes to zero if photon virtuality falls below cutoff
      if ((abs(p21(4,2)).lt.qsqAmin).or.(abs(p21(4,3)).lt.qsqAmin).or.
     &    (abs(p43(4,2)).lt.qsqAmin).or.(abs(p43(4,3)).lt.qsqAmin)) then       
         res(k,3) = res(k,3)*0.5d-20
         res(k,2) = res(k,2)*0.5d-20
      endif

      do j = 2,3
         ans(j) = res(k,j)
      enddo
      ans(1) = res(k,3)+res(k,2)

      return
      end

