c
c returns Born (nlo=0) or 
c finite part of virtual contributions (NOT sum of Born + virtuals!) 
c
c---------------------------------------------------------------------------
c
      subroutine qqzzqq_channel(pbar,sign, nlo, L,k,bos,ans)
      implicit none
c
c	Last modified for POWHEG by Barbara Jaeger: 2012 Oct.
c
C  QQZZQQ calculates the matrix elements**2 for electroweak
c  weak boson pair production by quark quark scattering
C
C        q1 q3    ---->   q2 q4 ZZ,   Z ---> f5-bar f6, Z ---> f7-bar f8
C
c  where the final state leptons can be 4 charged leptons (bos=22) or 
c  2 charged leptons + 2 neutrinos (bos=21).
C  Crossing related processes can be computed as well. 
c  Pauli interference terms for
c  identical fermions are neglected. In particular, only the
c  t-channel exchange of elctroweak bosons is considered. s-channel
c  production of 3 weak bosons is NOT implemented.
c
C  This code is modified to allow for virtual corrections, more precisely
C  the interference of Born with the finite part of virtual diagrams
C  for 
c
c  INPUT:  NLO = 1       return uucc = |M_born|^2 + 2Re(M_Born^* M_virt)
c          NLO = 0       return uucc = |M_born|^2   etc.
c   for steering the calculation of finite box and pentagon contributions
c   the following additional options are implemented
c          NLO = +4      set all finite box and pentagon contributions to 0
c                        but include cvirt*M_Born contribution
c          NLO = +5      true finite pentagons = 0, all other virtual contributions
c                        included, including leading q^mu/m_V terms of 
c                        pentagons which can be related to boxes
c        remaining cases:   return uucc = 2Re(M_Born^* M_virt), more precisely
c        the piece which is missing for the full NLO=1 when calling +|NLO|
c          NLO = -4      finite Born + q^mu/m_V terms of Pentagon contributions only, no cvirt
c          NLO = -5      true finite Pentagon contributions only
c
      real * 8 pi,pi2
      parameter (pi=3.141592653589793238462643383279502884197D0,
     1           pi2=pi**2)
      include 'pwhg_st.h'

      include 'global.inc'
      include 'tensor_zz.inc'

      include 'tampz-lists.inc' ! for check of individual graphs
      include 'higgs_graphs.h'
c
c electroweak couplings are taken from KOPPLN
c
      double precision  clr, xm2, xmg, b, v, a
      COMMON /BKOPOU/   CLR(4,5,-1:1),XM2(6),XMG(6),B(6,6,6),
     1                  V(4,5),A(4,5)
c alfas, scales etc
      include 'scales.inc'

c
c      integer hmin,hmax,hstep
c      common /hval/hmin,hmax,hstep
c      parameter(hmin=1,hmax=4,hstep=1)

c
c variables for the main part of the program
c
      double precision  pbar(0:3,4+nv), musq
      double precision ans
      double precision res(6),resv(6)
      double precision  p(0:3,4+nv), p21(0:4), p43(0:4), pez(0:4),
     1                  puz(0:4), pzz(0:4)
      integer  sign(4+nv), nlo, mu, i, j, jj, k, kk, id,
     1         isig, isig1, isig3,bos,h,kl

      integer  ifl(4,6), js1, js3, L, is1, is3
      double complex prop21(4), prop43(4)
      double complex mat(6,-1:1,-1:1,hmin_global:hmax_global,9) 
      double complex matv(6,-1:1,-1:1,hmin_global:hmax_global,9)
      double complex mm(6,-1:1,-1:1,hmin_global:hmax_global), 
     1               mv12(6,-1:1,-1:1,hmin_global:hmax_global),
     1               mv34(6,-1:1,-1:1,hmin_global:hmax_global)
      double complex mau,mzu
      double complex maa, maz, mza, mzz, mzz5, mzz6
      integer id1,id2,id3
      double complex m5e(3,2,2),m5u(3,2,2),
     1 	             m1p(6,2,2),m2p(6,2,2),m3p(6,2,2)
      double complex mv5e(3,2,2),mv5u(3,2,2),
     1 	             mv1p(6,2,2),mv2p(6,2,2),mv3p(6,2,2)
      double complex  m1, m2, ma(2), mz(2),
     1		      m1ae,m1ze,m2ae,m2ze,z1ae,z1ze,z2ae,z2ze,
     1	              m1au,m1zu,m2au,m2zu,z1au,z1zu,z2au,z2zu,
     1		      m3au,m3zu,m4au,m4zu,m3ae,m3ze,m4ae,m4ze,
     1		      z3ae,z3ze,z3zu,z3au,z4ae,z4ze,z4zu,z4au,
     1		      mue,mate12,muu,matu12,mal,mzl,mate34,matu34,
     1		      muae,muze,mlae,mlze
      double complex  mv1ae,mv1ze,mv2ae,mv2ze,mv1au,mv1zu,mv2au,mv2zu,
     1		      mv3au,mv3zu,mv4au,mv4zu,mv3ae,mv3ze,mv4ae,mv4ze
      double complex  matve12,matvu12,matve34,matvu34
      double complex mv1aae,mv1aze,mv1zae,mv1zze,
     1 		     mv2aae,mv2aze,mv2zae,mv2zze,mv1e,mv2e,
     1		     mv1aau,mv1azu,mv1zau,mv1zzu,
     1 		     mv2aau,mv2azu,mv2zau,mv2zzu,mv1u,mv2u,
     1		     mv3aae,mv3aze,mv3zae,mv3zze,
     3 		     mv4aae,mv4aze,mv4zae,mv4zze,mv3e,mv4e,
     3		     mv3aau,mv3azu,mv3zau,mv3zzu,
     3 		     mv4aau,mv4azu,mv4zau,mv4zzu,mv3u,mv4u
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
      double complex mezz(4,-1:1,-1:1,hmin_global:hmax_global),
     #          meza(4,-1:1,-1:1,hmin_global:hmax_global),
     #	        meaz(4,-1:1,-1:1,hmin_global:hmax_global),meaa(4,-1:1,-1:1,hmin_global:hmax_global),
     #          muzz(4,-1:1,-1:1,hmin_global:hmax_global),muza(4,-1:1,-1:1,hmin_global:hmax_global),
     #		muaz(4,-1:1,-1:1,hmin_global:hmax_global),muaa(4,-1:1,-1:1,hmin_global:hmax_global),
     #		mvezz(4,2,-1:1,-1:1,hmin_global:hmax_global),
     #		mveza(4,2,-1:1,-1:1,hmin_global:hmax_global),
     #	        mveaz(4,2,-1:1,-1:1,hmin_global:hmax_global),
     #		mveaa(4,2,-1:1,-1:1,hmin_global:hmax_global),
     #          mvuzz(4,2,-1:1,-1:1,hmin_global:hmax_global),
     #		mvuza(4,2,-1:1,-1:1,hmin_global:hmax_global),
     #		mvuaz(4,2,-1:1,-1:1,hmin_global:hmax_global),
     #		mvuaa(4,2,-1:1,-1:1,hmin_global:hmax_global),
     #		zezz(-1:1,-1:1,hmin_global:hmax_global,3),zeza(-1:1,-1:1,hmin_global:hmax_global,3),
     #		zeaz(-1:1,-1:1,hmin_global:hmax_global,3),zeaa(-1:1,-1:1,hmin_global:hmax_global,3),
     # 	        zuzz(-1:1,-1:1,hmin_global:hmax_global,3),zuza(-1:1,-1:1,hmin_global:hmax_global,3),
     #	        zuaz(-1:1,-1:1,hmin_global:hmax_global,3),zuaa(-1:1,-1:1,hmin_global:hmax_global,3)
      double complex mv1,mv2,mva(2),mvz(2), mv5(3,3:4)
      double complex psi(2,-1:1,4), jqq(0:5,-1:1,2) 
      double complex psize(2,-1:1,hmin_global:hmax_global,4),psiae(2,-1:1,hmin_global:hmax_global,4),
     1 		     psizu(2,-1:1,hmin_global:hmax_global,4),psiau(2,-1:1,hmin_global:hmax_global,4),
     1               jez(0:5,-1:1,hmin_global:hmax_global,4),jea(0:5,-1:1,hmin_global:hmax_global,4),
     1		     juz(0:5,-1:1,hmin_global:hmax_global,4),jua(0:5,-1:1,hmin_global:hmax_global,4),
     1               jvez(0:5,-1:1,hmin_global:hmax_global,-1:1,4),
     #               jvea(0:5,-1:1,hmin_global:hmax_global,-1:1,4),
     1               jvuz(0:5,-1:1,hmin_global:hmax_global,-1:1,4),
     #		     jvua(0:5,-1:1,hmin_global:hmax_global,-1:1,4)
      double complex bkjqq(2,-1:1,-1:1,4)
      double complex ja(0:5,-1:1,hmin_global:hmax_global,-1:1,4),
     #		     jz(0:5,-1:1,hmin_global:hmax_global,-1:1,4), 
     1               jva(0:5,-1:1,hmin_global:hmax_global,-1:1,4),
     #		     jvz(0:5,-1:1,hmin_global:hmax_global,-1:1,4),
     2               psia(2,-1:1,hmin_global:hmax_global,-1:1,4), 
     #		     psiz(2,-1:1,hmin_global:hmax_global,-1:1,4)
      double complex j5zzue(0:3,-1:1,hmin_global:hmax_global,3,-1:1,2),
     #               j5zzeu(0:3,-1:1,hmin_global:hmax_global,3,-1:1,2),
     1 		     j5zaue(0:3,-1:1,hmin_global:hmax_global,3,-1:1,2),
     #		     j5zaeu(0:3,-1:1,hmin_global:hmax_global,3,-1:1,2),
     1 		     j5azue(0:3,-1:1,hmin_global:hmax_global,3,-1:1,2),
     #		     j5azeu(0:3,-1:1,hmin_global:hmax_global,3,-1:1,2),
     1 		     j5aaue(0:3,-1:1,hmin_global:hmax_global,3,-1:1,2), 
     #		     j5aaeu(0:3,-1:1,hmin_global:hmax_global,3,-1:1,2)
      double complex epsee(0:3,hmin_global:hmax_global), epsuu(0:3,hmin_global:hmax_global),
     1		     epsCCuu(0:5,-1:1,hmin_global:hmax_global,2),
     #		     epsCCee(0:5,-1:1,hmin_global:hmax_global,2),
     1		     epsee6(0:3,hmin_global:hmax_global), epsuu6(0:3,hmin_global:hmax_global),
     1		     epsCCuu6(0:5,-1:1,hmin_global:hmax_global,2),
     #		     epsCCee6(0:5,-1:1,hmin_global:hmax_global,2)	 
      double complex epsaa(0:3,hmin_global:hmax_global),epsaz(0:3,hmin_global:hmax_global),
     #               epsza(0:3,hmin_global:hmax_global),epszz(0:3,hmin_global:hmax_global),
     1		     epsaee(0:5,-1:1,hmin_global:hmax_global,3:4,2), 
     #               epszee(0:5,-1:1,hmin_global:hmax_global,3:4,2),
     1		     epsauu(0:5,-1:1,hmin_global:hmax_global,3:4,2), 
     #		     epszuu(0:5,-1:1,hmin_global:hmax_global,3:4,2),
     1		     qepszee(3:4,hmin_global:hmax_global),qepszuu(3:4,hmin_global:hmax_global)	 
      double precision fqze(0:4,4),fqae(0:4,4),fqzu(0:4,4),fqau(0:4,4)
      double precision fq(0:4,4),qee(0:4), quu(0:4), dummy(0:4)
      double complex zm2i(2:4)
      double complex jj21ae(-1:1,hmin_global:hmax_global),jj21au(-1:1,hmin_global:hmax_global),
     #               jj43ae(-1:1,hmin_global:hmax_global),jj43au(-1:1,hmin_global:hmax_global),
     1 		     jj21ze(-1:1,hmin_global:hmax_global),jj21zu(-1:1,hmin_global:hmax_global),
     #		     jj43ze(-1:1,hmin_global:hmax_global),jj43zu(-1:1,hmin_global:hmax_global)
      double complex z1,zuu(4:5),zee(4:5)
      double complex qepsCCee(2,hmin_global:hmax_global), qepsCCuu(2,hmin_global:hmax_global),
     #		     qepsCCee6(2,hmin_global:hmax_global),qepsCCuu6(2,hmin_global:hmax_global)
      double complex propt1(-1:1,-1:1,4,2), propt2(-1:1,-1:1,4,2),
     1		     propt(-1:1,-1:1,5:6,2), prop_ee(3), prop_uu(3),
     1		     propbbe, propbbu,
     1		     propbbea(6,-1:1,-1:1), propbbua(6,-1:1,-1:1),
     1		     propbbez(6,-1:1,-1:1), propbbuz(6,-1:1,-1:1)
      double complex fac
      integer idu,idl
      double complex contract_Tjj, dotcc, dotrc, dotqj, s1c
      external contract_Tjj, dotcc, dotrc, dotqj, s1c

      logical nc_type,cc_type
      logical ldebugv, ldebugvf,linit,lerror,lgc(4)
      data linit /.true./ !, lerror /.false./
      data lgc /4*.false./
      data lzs /4*.true./
      
      double complex j5zzeu_check(0:3,-1:1,3,-1:1,2),
     &               j5zzue_check(0:3,-1:1,3,-1:1,2),
     &               j5zaeu_check(0:3,-1:1,3,-1:1,2),
     &               j5zaue_check(0:3,-1:1,3,-1:1,2),
     &               j5azeu_check(0:3,-1:1,3,-1:1,2),
     &               j5azue_check(0:3,-1:1,3,-1:1,2),
     &               j5aaeu_check(0:3,-1:1,3,-1:1,2),
     &               j5aaue_check(0:3,-1:1,3,-1:1,2)

      logical vvdebug,vbdebug, vlldebug,bbdebug,pdebug
c      parameter (vvdebug = .true.,vbdebug = .false.,vlldebug =.false.,
c     #		 bbdebug = .false.,pdebug = .false.)
      parameter (vvdebug = .false.,vbdebug = .false.,vlldebug =.false.,
     #		 bbdebug = .false.,pdebug = .false.)

      logical vvonly,vbonly,v4only
      parameter (vvonly=.false.,vbonly=.false.,v4only=.false.)
      
      integer*8 icb1, icount1, icb2, icount2
      data icb1/0/,icount1/0/,icb2/0/,icount2/0/
      double precision xgc1, xgc2
      double complex mv1zz(-1:1),mv2zz(-1:1),mv1za(-1:1),mv2za(-1:1),
     1 		     mv1az(-1:1),mv2az(-1:1),mv1aa(-1:1),mv2aa(-1:1),
     1		     xv1zz(-1:1),xv2zz(-1:1),xv1za(-1:1),xv2za(-1:1),
     1		     xv1az(-1:1),xv2az(-1:1),xv1aa(-1:1),xv2aa(-1:1)
      parameter (ldebugv=.false., ldebugvf=.false.)
      save ifl, zm2i, linit, lgc, icb1, icb2, icount1, icount2
      save ja,jz,jva,jvz,psia,psiz,fq !,j5pm,j5mp
      save j5zzue, j5zzeu,j5zaue, j5zaeu,j5azue, j5azeu,j5aaue, j5aaeu
      double complex  zero
      parameter (zero = (0d0,0d0) )
      integer ii,ll,hmin,hmax,hstep

      integer icountmax
      common/gauge_checks/icountmax 
      real *8 powheginput
      external powheginput 
      integer ncall2
      logical, save :: firsttime = .true.   
c
c variables for powheg:
      double precision q2_up,q2_lo,rup,rlo,lrup,lrlo
      double precision cvirtl   

c identify "bad" points (low qsq):
      logical qdamp   
c
c variables for virtual corrections
c
	logical bad_gauge,bad_gauge_sin,bad_gauge_isig
	common /gauge / bad_gauge,bad_gauge_sin,bad_gauge_isig
c   
c
      double precision c2,c2o4pi     !,pi2o3, cvirtc
      parameter (c2=4d0/3d0, c2o4pi=c2/4d0/pi)
      logical lnlo, lbox, lpent, lpt, lpq

      lnlo = NLO.ne.0    ! include some virtual stuff if T
      lbox = NLO.eq.1 .or. NLO.eq.-4 .or. NLO.eq.5    ! call boxline if T
      lpt  = NLO.eq.1 .or. NLO.le.-5                  ! true pentagon contributions on
      lpq  = NLO.eq.5 .or. NLO.eq.-4                  ! q^mu/m_V terms of Pentagon contributions only
      lpent= lpt .or. lpq                             ! include pentagons if T
c
      bad_gauge = .false. ! set F at beginning of each run

c
ccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccccc	
c	
      if (firsttime) then
        ncall2=powheginput('ncall2')
        firsttime = .false.
      endif

      if (k.lt.1) stop 'this value of k is not allowed: k = '
      if (k.gt.6) stop 'this value of k is not allowed: k = '
c
c define flavors of external quarks for the 4 NC and 2 CC subprocesses
c
      if (linit) then
         linit = .false.
c
         print*,'Born/virtual amplitudes:'
         if (higgs_only) print*,'H->ZZ graphs only'
         if (vvonly) print*,'VV graphs only'
         if (vbonly) print*,'VB graphs only'
         if (v4only) print*,'V->4l graphs only'
         print*, 'minimum virtuality for t-channel photon exchange'
         print*, 'qsqA_min = ',qsqAmin,'GeV**2'
         print*, 'damping factor of 1d-20 below qsqAmin '

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

         zm2i(2) = 1/dcmplx(xm2(2),-xmg(2))
         zm2i(3) = 1/dcmplx(xm2(3),-xmg(3))
         zm2i(4) = 1/dcmplx(xm2(4),-xmg(4))

         if (ncall2.gt.10000) then 
            icountmax = ncall2
         else
            icountmax = 100000
	 endif

      endif !linit

      if (k.le.4) then
         nc_type = .true.
         cc_type = .false.
      else
         cc_type = .true.
         nc_type = .false.
      endif

      if(bos.eq.22) then        !lll'l' or llqq decay mode
         hmin=1
         hmax=4
         hstep=1
      elseif(bos.eq.21) then    !llvv deacy mode
         hmin=1
         hmax=3
         hstep=2
      endif

      do kl = 1,6
         do h = hmin,hmax,hstep
         do isig1 = -1,1,2
            do isig3 = -1,1,2
               do i = 1,9
                  mat(kl,isig1,isig3,h,i) = 0
                  matv(k,isig1,isig3,h,i) = 0
               enddo !i
            enddo 
         enddo !isig
         enddo !h
      enddo
c
c identify fermion line sign factors
c
      is1 = sign(1)
      is3 = sign(3)
      js1 = (3+sign(1))/2       ! 1 for sign1=-1,2 for sign1=+1
      js3 = (7+sign(3))/2       ! 3 for sign3=-1,4 for sign3=+1
c
c define the internal momenta
c
      do mu = 0,3
         do i = 1,4+nv
            p(mu,i) = pbar(mu,i)*sign(i)
         enddo
	 
	 if(bos.eq.21) then
           p21(mu) =   p(mu,2) - p(mu,1)
           p43(mu) =   p(mu,4) - p(mu,3)
           pez(mu) =   p(mu,6) - p(mu,5)
           puz(mu) = -(p(mu,8) - p(mu,7))
           pzz(mu) =   pez(mu) + puz(mu)	 	 
	 elseif(bos.eq.22) then
           p21(mu) =   p(mu,2) - p(mu,1)
           p43(mu) =   p(mu,4) - p(mu,3)
           pez(mu) =   p(mu,6) - p(mu,5)
           puz(mu) =   p(mu,8) - p(mu,7)
           pzz(mu) =   pez(mu) + puz(mu)
	 endif	 
	 
      enddo
      p21(4) = p21(0)**2 - p21(1)**2 - p21(2)**2 - p21(3)**2
      p43(4) = p43(0)**2 - p43(1)**2 - p43(2)**2 - p43(3)**2
      pez(4) = pez(0)**2 - pez(1)**2 - pez(2)**2 - pez(3)**2
      puz(4) = puz(0)**2 - puz(1)**2 - puz(2)**2 - puz(3)**2
      pzz(4) = pzz(0)**2 - pzz(1)**2 - pzz(2)**2 - pzz(3)**2

      qdamp = .false.	 
c eliminate contributions from too low qsq in t-channel:
      if ( (abs(p21(4)).lt.qsqAmin).or.(abs(p43(4)).lt.qsqAmin)) then
      	qdamp = .true.
      endif

c get the vector boson propagator factors
c
      prop21(1) = 1/p21(4)
      prop21(2) = 1/dcmplx(p21(4)-xm2(2),xmg(2))
      prop21(3) = 1/dcmplx(p21(4)-xm2(3),xmg(3))
      prop21(4) = prop21(3)

      prop43(1) = 1/p43(4)
      prop43(2) = 1/dcmplx(p43(4)-xm2(2),xmg(2))
      prop43(3) = 1/dcmplx(p43(4)-xm2(3),xmg(3))
      prop43(4) = prop43(3)
c
c for box-box and BV graphs we need the propagators for t-channel bosons between quark lines
c as seen from upper line these W momenta are INCOMING. They are OUTGOINg as seen from lower 
c line
      do mu = 0,3
         qee(mu) = pez(mu)+p(mu,2) - p(mu,1)    ! e+e-  emitted on upper line
         quu(mu) = puz(mu)+p(mu,2) - p(mu,1)    !mu+mu- emitted on upper line
      enddo
      qee(4) = qee(0)**2-qee(1)**2-qee(2)**2-qee(3)**2
      quu(4) = quu(0)**2-quu(1)**2-quu(2)**2-quu(3)**2

      prop_ee(1) = 1d0/qee(4)
      prop_ee(2) = 1d0/dcmplx(qee(4)-xm2(2),xmg(2))
      prop_ee(3) = 1d0/dcmplx(qee(4)-xm2(3),xmg(3))
      prop_uu(1) = 1d0/quu(4)
      prop_uu(2) = 1d0/dcmplx(quu(4)-xm2(2),xmg(2))
      prop_uu(3) = 1d0/dcmplx(quu(4)-xm2(3),xmg(3))

c
c get the external quark spinors (including factor sqrt(2E) )
c
      call psi0m(4,pbar(0,1),sign(1),psi)
c
c get the f-fbar currents J21^mu=jqq(mu,*,1), J43^mu=jqq(mu,*,2) 
c
      call curr6(1,psi(1,-1,2),p(0,2),psi(1,-1,1),p(0,1),jqq(0,-1,1))
      call curr6(1,psi(1,-1,4),p(0,4),psi(1,-1,3),p(0,3),jqq(0,-1,2)) 

      if (vbonly) goto 222
c      if (v4only) goto 444
c
c -------------------------------------------------------------------
c
c contract with vvtoww tensors to get Vertex-Vertex scattering diagrams
c
      do h = hmin,hmax,hstep
c
      if (nc_type) then
      do isig1 = -1,1,2
         do isig3 = -1,1,2
c
          maa = contract_Tjj(aazz(0,0,L,h),jqq(0,isig1,1),jqq(0,isig3,2))
          maz = contract_Tjj(azzz(0,0,L,h),jqq(0,isig1,1),jqq(0,isig3,2))
          mza = contract_Tjj(zazz(0,0,L,h),jqq(0,isig3,2),jqq(0,isig1,1))
          mzz = contract_Tjj(zzzz(0,0,L,h),jqq(0,isig1,1),jqq(0,isig3,2))
c         do k = 1,4
             mat(k,isig1,isig3,h,1) = 
     1            maa*clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3)
     2            + maz*clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)
     3            + mza*clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)
     4            + mzz*clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3)
             matv(k,isig1,isig3,h,1) = (0d0,0d0)
c          enddo
	    
         enddo !isig3
      enddo !isig1
      
c----------------------      
    
      else ! cc_type  

      mzz6 = contract_Tjj(wwzz6(0,0,L,h),jqq(0,-1,2),jqq(0,-1,1))
      mzz5 = contract_Tjj(wwzz5(0,0,L,h),jqq(0,-1,1),jqq(0,-1,2))
      mat(5,-1,-1,h,1) = mzz5*clr(3,3,-1)**2
      mat(6,-1,-1,h,1) = mzz6*clr(3,3,-1)**2
      matv(5,-1,-1,h,1) = (0d0,0d0)
      matv(6,-1,-1,h,1) = (0d0,0d0)
      
      endif !nc/cc

      enddo !h
c
      if (higgs_only) goto 999
      if (vvonly) goto 999

 222  continue

c -------------------------------------------------------------------
c
c  prepare box diagrams: attach A/Z to external spinors
c 
c      isig = +-1   : left- and righthanded spinors coupling to A/Z's
c
c  Notation for virtual 2-component spinors and momenta
c
c  Z -> e+e- attached to quark number i: 
c     psize(*,isig,i) with momentum fqze(mu,i)
c  Z->mu+mu- attached to quark number i: 
c     psizu(*,isig,i) with momentum fqzu(mu,i)
c  A -> e+e- attached to quark number i: 
c     psiae(*,isig,i) with momentum fqae(mu,i)
c  A->mu+mu- attached to quark number i: 
c     psiau(*,isig,i) with momentum fqau(mu,i)
c  
c  the fermion current corresponding to a quark line 
c     with the real emitted V-> l+l-
c  attached next to quark number i is stored in jlv(mu,isig,i) etc. 
c 
c  For the virtual amlitudes the notation, e.g.     jvlv(mu,isig,is,i)
c  is used for the boxline correction to a quark line 
c  with one V attached next to
c  quark #i and a free Lorentz index mu for the second attached EW boson. 
c     is=+-1
c  refers to the sign factor of this quark (vs.antiquark line). 
c     They are recalculated 
c  only if this quark line sign has not been calculated yet for 
c     this phase space point
c  (i.e. lzs = .true.)  
c     Otherwise they are taken from saved previous calculation
 
      do h = hmin,hmax,hstep
      do i = 1,3,2
        do isig = -1,1,2
      
         call ket2c(psi(1,isig,i),.true.,p(0,i),isig,qe,ze(1,h),
     1              psize(1,isig,h,i),fqze(0,i))
         call ket2c(psi(1,isig,i),.true.,p(0,i),isig,qe,ae(1,h),
     1              psiae(1,isig,h,i),fqae(0,i))
         call ket2c(psi(1,isig,i),.true.,p(0,i),isig,qu,zu(1,h),
     1              psizu(1,isig,h,i),fqzu(0,i))
         call ket2c(psi(1,isig,i),.true.,p(0,i),isig,qu,au(1,h),
     1              psiau(1,isig,h,i),fqau(0,i))

        
	 call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,qe,ze(1,h),
     1              psize(1,isig,h,i+1),fqze(0,i+1))
         call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,qe,ae(1,h),
     1              psiae(1,isig,h,i+1),fqae(0,i+1))
         call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,qu,zu(1,h),
     1              psizu(1,isig,h,i+1),fqzu(0,i+1))
         call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,qu,au(1,h),
     1              psiau(1,isig,h,i+1),fqau(0,i+1))

         enddo !isig
        
         call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1                 psize(1,-1,h,i),fqze(0,i), jez(0,-1,h,i)   )
         call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1                 psiae(1,-1,h,i),fqae(0,i), jea(0,-1,h,i)   )
         call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1                 psizu(1,-1,h,i),fqzu(0,i), juz(0,-1,h,i)   )
         call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1                 psiau(1,-1,h,i),fqau(0,i), jua(0,-1,h,i)   )

         call curr6(1,psize(1,-1,h,i+1),fqze(0,i+1),
     1                 psi(1,-1,i),p(0,i), jez(0,-1,h,i+1) )
         call curr6(1,psiae(1,-1,h,i+1),fqae(0,i+1),
     1                 psi(1,-1,i),p(0,i), jea(0,-1,h,i+1) )
         call curr6(1,psizu(1,-1,h,i+1),fqzu(0,i+1),
     1                 psi(1,-1,i),p(0,i), juz(0,-1,h,i+1) )
         call curr6(1,psiau(1,-1,h,i+1),fqau(0,i+1),
     1                 psi(1,-1,i),p(0,i), jua(0,-1,h,i+1) )
     
   
       enddo !i
                   
      if (lbox .and. lzs(js1).and.(.not.qdamp)) then
         do i = 1,2
            call boxlinec(1,psi(1,-1,1),psi(1,-1,2),p(0,1),p(0,2),
     1                    .true., ze(1,h),3-i,   jez(0,-1,h,i), 
     2                    jvez(0,-1,h,is1,i) )
            call boxlinec(1,psi(1,-1,1),psi(1,-1,2),p(0,1),p(0,2),
     1                    .true., ae(1,h),3-i,   jea(0,-1,h,i), 
     2                    jvea(0,-1,h,is1,i) )
            call boxlinec(1,psi(1,-1,1),psi(1,-1,2),p(0,1),p(0,2),
     1                    .true., zu(1,h),3-i,   juz(0,-1,h,i), 
     2                    jvuz(0,-1,h,is1,i) )
c	
c there are A->l+l-, but no A->vm vm~ contributions:
	    if (bos.eq.22) then	
            call boxlinec(1,psi(1,-1,1),psi(1,-1,2),p(0,1),p(0,2),
     1                    .true., au(1,h),3-i,   jua(0,-1,h,i), 
     2                    jvua(0,-1,h,is1,i) )
	
	    elseif (bos.eq.21) then
		do mu = 0,5
	  	  do isig = -1,1,2	    
	    		jvua(mu,isig,h,is1,i) = 0d0	  
	  	  enddo !isig
		enddo !mu
      	    endif !bos
      
          enddo !i
      endif !lbox
      
      if (lbox .and. lzs(js3).and.(.not.qdamp)) then
         do i = 3,4	 
            call boxlinec(1,psi(1,-1,3),psi(1,-1,4),p(0,3),p(0,4),
     1                    .true., ze(1,h),5-i,   jez(0,-1,h,i), 
     2                    jvez(0,-1,h,is3,i) )
            call boxlinec(1,psi(1,-1,3),psi(1,-1,4),p(0,3),p(0,4),
     1                    .true., ae(1,h),5-i,   jea(0,-1,h,i), 
     2                    jvea(0,-1,h,is3,i) )
            call boxlinec(1,psi(1,-1,3),psi(1,-1,4),p(0,3),p(0,4),
     1                    .true., zu(1,h),5-i,   juz(0,-1,h,i), 
     2                    jvuz(0,-1,h,is3,i) )

c there are A->l+l-, but no A->vm vm~ contributions:
	    if (bos.eq.22) then	
            call boxlinec(1,psi(1,-1,3),psi(1,-1,4),p(0,3),p(0,4),
     1                    .true., au(1,h),5-i,   jua(0,-1,h,i), 
     2                    jvua(0,-1,h,is3,i) )

	    elseif (bos.eq.21) then
		do mu = 0,5
	  	  do isig = -1,1,2	    
	    		jvua(mu,isig,h,is3,i) = 0d0	  
	  	  enddo !isig
		enddo !mu
      	    endif !bos
        
         enddo !i
      endif !lbox

      enddo !h
c
c
c -------------------------------------------------------------------
c -------------------------------------------------------------------
c
c now calculate the Vertex-box diagrams; get t-channel W currents first
      do kl = 1,2
         kk = 3-kl
c kl=1 and kk=2 is for "box correction" to upper line
c kl=2 and kk=1 is for "box correction" to lower line
         if (kl.eq.1) then
            zuu(4) = -dcmplx(quu(0),quu(3))
            zuu(5) = -dcmplx(quu(1),quu(2))
            zee(4) = -dcmplx(qee(0),qee(3))
            zee(5) = -dcmplx(qee(1),qee(2))
         else
            zee(4) = dcmplx(quu(0),quu(3))
            zee(5) = dcmplx(quu(1),quu(2))
            zuu(4) = dcmplx(qee(0),qee(3))
            zuu(5) = dcmplx(qee(1),qee(2))
         endif

c NC first:
        if (nc_type) then 

        do h = hmin,hmax,hstep   
	do isig = -1,1,2
	
	! VV-> e+e-: (V = A or Z)
	
	  if (kl.eq.1) then
	    call contract_T2j(aaee(0,0,kl,L,h),jqq(0,isig,kk),epsaa(0,h))!for AA 
	    call contract_T2j(azee(0,0,kl,L,h),jqq(0,isig,kk),epsaz(0,h))!for AZ 
	    call contract_T2j(zaee(0,0,kl,L,h),jqq(0,isig,kk),epsza(0,h))!for ZA 
	    call contract_T2j(zzee(0,0,kl,L,h),jqq(0,isig,kk),epszz(0,h))!for ZZ 
	  else
 	    call contract_T1j(aaee(0,0,kl,L,h),jqq(0,isig,kk),epsaa(0,h))!for AA 
	    call contract_T1j(azee(0,0,kl,L,h),jqq(0,isig,kk),epsza(0,h))!for AZ 
	    call contract_T1j(zaee(0,0,kl,L,h),jqq(0,isig,kk),epsaz(0,h))!for ZA 
	    call contract_T1j(zzee(0,0,kl,L,h),jqq(0,isig,kk),epszz(0,h))!for ZZ 
	  endif
	
           do mu = 0,3 ! graphs with uncontracted A (epsaee) or Z (epszee),
	    		! coupling to up(3)- or down(4)-type quark 
               epsaee(mu,isig,h,3,kl) =
     1              epsaa(mu,h)*clr(3,1,isig)+epsaz(mu,h)*clr(3,2,isig)  
               epsaee(mu,isig,h,4,kl) =
     1              epsaa(mu,h)*clr(4,1,isig)+epsaz(mu,h)*clr(4,2,isig)  
               epszee(mu,isig,h,3,kl) =
     1              epsza(mu,h)*clr(3,1,isig)+epszz(mu,h)*clr(3,2,isig)
               epszee(mu,isig,h,4,kl) =
     1              epsza(mu,h)*clr(4,1,isig)+epszz(mu,h)*clr(4,2,isig)
            enddo

	! VV-> mu+mu-:

	  if (kl.eq.1) then
	    call contract_T2j(aauu(0,0,kl,L,h),jqq(0,isig,kk),epsaa(0,h))!for AA 
	    call contract_T2j(azuu(0,0,kl,L,h),jqq(0,isig,kk),epsaz(0,h))!for AZ 
	    call contract_T2j(zauu(0,0,kl,L,h),jqq(0,isig,kk),epsza(0,h))!for ZA 
	    call contract_T2j(zzuu(0,0,kl,L,h),jqq(0,isig,kk),epszz(0,h))!for ZZ 
	  else
	    call contract_T1j(aauu(0,0,kl,L,h),jqq(0,isig,kk),epsaa(0,h))!for AA 
	    call contract_T1j(azuu(0,0,kl,L,h),jqq(0,isig,kk),epsza(0,h))!for AZ 
	    call contract_T1j(zauu(0,0,kl,L,h),jqq(0,isig,kk),epsaz(0,h))!for ZA 
	    call contract_T1j(zzuu(0,0,kl,L,h),jqq(0,isig,kk),epszz(0,h))!for ZZ 
	  endif

            do mu = 0,3 
               epsauu(mu,isig,h,3,kl) =
     1              epsaa(mu,h)*clr(3,1,isig)+epsaz(mu,h)*clr(3,2,isig)  
               epsauu(mu,isig,h,4,kl) =
     1              epsaa(mu,h)*clr(4,1,isig)+epsaz(mu,h)*clr(4,2,isig)  
               epszuu(mu,isig,h,3,kl) =
     1              epsza(mu,h)*clr(3,1,isig)+epszz(mu,h)*clr(3,2,isig)
               epszuu(mu,isig,h,4,kl) =
     1              epsza(mu,h)*clr(4,1,isig)+epszz(mu,h)*clr(4,2,isig)
            enddo

            do mu = 4,5           ! add momentum info to the currents
               epsaee(mu,isig,h,3,kl) = zuu(mu)
               epsaee(mu,isig,h,4,kl) = zuu(mu)
               epszee(mu,isig,h,3,kl) = zuu(mu)
               epszee(mu,isig,h,4,kl) = zuu(mu)
               
	       epsauu(mu,isig,h,3,kl) = zee(mu)
               epsauu(mu,isig,h,4,kl) = zee(mu)
               epszuu(mu,isig,h,3,kl) = zee(mu)
               epszuu(mu,isig,h,4,kl) = zee(mu)
            enddo	
	
	enddo !isig
        enddo !h

        endif !nc

c and same for the CC processes (V attached to j43 or j21 current):
        if (cc_type) then  

         do h = hmin,hmax,hstep

         isig = -1
	 if (kl.eq.1) then
          call contract_T2j(CCee(0,0,kl,L,h),jqq(0,isig,kk),epsee(0,h)) 
          call contract_T2j(CCuu(0,0,kl,L,h),jqq(0,isig,kk),epsuu(0,h))
          call contract_T1j(CCee6(0,0,kl,L,h),jqq(0,isig,kk),epsee6(0,h)) 
          call contract_T1j(CCuu6(0,0,kl,L,h),jqq(0,isig,kk),epsuu6(0,h))
         else
	  call contract_T1j(CCee(0,0,kl,L,h),jqq(0,isig,kk),epsee(0,h)) 
          call contract_T1j(CCuu(0,0,kl,L,h),jqq(0,isig,kk),epsuu(0,h))
	  call contract_T2j(CCee6(0,0,kl,L,h),jqq(0,isig,kk),epsee6(0,h)) 
          call contract_T2j(CCuu6(0,0,kl,L,h),jqq(0,isig,kk),epsuu6(0,h))
	 endif
	 	 
         do mu = 0,3 
            epsCCee(mu,isig,h,kl) =
     1           epsee(mu,h)*clr(3,3,isig) ! coupling to fermion
            epsCCuu(mu,isig,h,kl) =
     1           epsuu(mu,h)*clr(3,3,isig) 
c
            epsCCee6(mu,isig,h,kl) =
     1           epsee6(mu,h)*clr(3,3,isig) ! coupling to fermion
            epsCCuu6(mu,isig,h,kl) =
     1           epsuu6(mu,h)*clr(3,3,isig) 
         enddo
	 
c extra terms for (q_mu q_nu)-contributions of massive boson propagators:	 
         if (kl.eq.1) then 
            qepsCCee(kl,h) = -dotrc(quu(0),epsee(0,h))*zm2i(3)
            qepsCCuu(kl,h) = -dotrc(qee(0),epsuu(0,h))*zm2i(3)
            qepsCCee6(kl,h) = -dotrc(quu(0),epsee6(0,h))*zm2i(3)
            qepsCCuu6(kl,h) = -dotrc(qee(0),epsuu6(0,h))*zm2i(3)
	 else
            qepsCCee(kl,h) = dotrc(qee(0),epsee(0,h))*zm2i(3)
            qepsCCuu(kl,h) = dotrc(quu(0),epsuu(0,h))*zm2i(3)	        
            qepsCCee6(kl,h) = dotrc(qee(0),epsee6(0,h))*zm2i(3)
            qepsCCuu6(kl,h) = dotrc(quu(0),epsuu6(0,h))*zm2i(3)	        
         endif

         do mu = 4,5            ! add momentum info to the currents
            epsCCee(mu,isig,h,kl) = zuu(mu)
            epsCCuu(mu,isig,h,kl) = zee(mu)
c
            epsCCee6(mu,isig,h,kl) = zee(mu)
            epsCCuu6(mu,isig,h,kl) = zuu(mu)
         enddo 

         enddo !h 

      endif !cc   
      enddo !kl
            	
      do h = hmin,hmax,hstep
      do isig = -1,1,2 	
            
      jj21au(isig,h) = dotcc(au(1,h),jqq(0,isig,1))
      jj21zu(isig,h) = dotcc(zu(1,h),jqq(0,isig,1))
      jj21ae(isig,h) = dotcc(ae(1,h),jqq(0,isig,1))
      jj21ze(isig,h) = dotcc(ze(1,h),jqq(0,isig,1))

      jj43au(isig,h) = dotcc(au(1,h),jqq(0,isig,2))
      jj43zu(isig,h) = dotcc(zu(1,h),jqq(0,isig,2))
      jj43ae(isig,h) = dotcc(ae(1,h),jqq(0,isig,2))
      jj43ze(isig,h) = dotcc(ze(1,h),jqq(0,isig,2))

      enddo !isig
      enddo !h
c
c --------------
c
c now construct the contribution to the amplitude by current contraction 
c virtual contributions are assembled in subroutine boxline
                ! 2 bosons attached to 12 line     
c
c	NC first:
      if (nc_type) then   
c
        do h = hmin,hmax,hstep
	do isig1 = -1,1,2
	   do isig3 = -1,1,2
	   
c  gauge term for Z propagator:
	   do kl=3,4 !up/down type
	      qepszee(kl,h) = -dotrc(quu,epszee(0,isig3,h,kl,1))*zm2i(2) 
	      qepszuu(kl,h) = -dotrc(qee,epszuu(0,isig3,h,kl,1))*zm2i(2) 	    
	   enddo !kl
	   
c	   do kl = 1,4 ! e+e- from upper line:
           if (k.le.4) then
	   
	   m1aae = dotcc(jea(0,isig1,h,2),epsauu(0,isig3,h,ifl(3,k),1))
	   m1aze = dotcc(jea(0,isig1,h,2),epszuu(0,isig3,h,ifl(3,k),1))
	   m1zae = dotcc(jez(0,isig1,h,2),epsauu(0,isig3,h,ifl(3,k),1))
	   m1zze = dotcc(jez(0,isig1,h,2),epszuu(0,isig3,h,ifl(3,k),1))
	   
	   z1aze = qepszuu(ifl(3,k),h)*jj21ae(isig1,h)    
	   z1zze = qepszuu(ifl(3,k),h)*jj21ze(isig1,h)    
	   
	   mz1aae =  m1aae*clr(ifl(1,k),1,isig1)*clr(ifl(2,k),1,isig1)
	   mz1aze = (m1aze+z1aze)*
     &          clr(ifl(1,k),2,isig1)*clr(ifl(2,k),1,isig1)
	   mz1zae =  m1zae*clr(ifl(1,k),1,isig1)*clr(ifl(2,k),2,isig1)
	   mz1zze = (m1zze+z1zze)*
     &          clr(ifl(1,k),2,isig1)*clr(ifl(2,k),2,isig1)
	   	   
	   m1e = mz1aae+mz1aze+mz1zae+mz1zze
	   	   	   
	   m2aae = dotcc(jea(0,isig1,h,1),epsauu(0,isig3,h,ifl(3,k),1))
	   m2aze = dotcc(jea(0,isig1,h,1),epszuu(0,isig3,h,ifl(3,k),1))
	   m2zae = dotcc(jez(0,isig1,h,1),epsauu(0,isig3,h,ifl(3,k),1))
	   m2zze = dotcc(jez(0,isig1,h,1),epszuu(0,isig3,h,ifl(3,k),1))
	   	   
	   mz2aae =  m2aae*clr(ifl(2,k),1,isig1)*clr(ifl(1,k),1,isig1)
	   mz2aze = (m2aze-z1aze)*
     &          clr(ifl(2,k),2,isig1)*clr(ifl(1,k),1,isig1)
	   mz2zae =  m2zae*clr(ifl(2,k),1,isig1)*clr(ifl(1,k),2,isig1)
	   mz2zze = (m2zze-z1zze)*
     &          clr(ifl(2,k),2,isig1)*clr(ifl(1,k),2,isig1)
	   	   
	   m2e = mz2aae+mz2aze+mz2zae+mz2zze
	   
	   
	   ! mu+mu- from upper line:
	   
	   m1aau = dotcc(jua(0,isig1,h,2),epsaee(0,isig3,h,ifl(3,k),1))
	   m1azu = dotcc(jua(0,isig1,h,2),epszee(0,isig3,h,ifl(3,k),1))
	   m1zau = dotcc(juz(0,isig1,h,2),epsaee(0,isig3,h,ifl(3,k),1))
	   m1zzu = dotcc(juz(0,isig1,h,2),epszee(0,isig3,h,ifl(3,k),1))
	   
	   z1azu = qepszee(ifl(3,k),h)*jj21au(isig1,h)  
	   z1zzu = qepszee(ifl(3,k),h)*jj21zu(isig1,h)  
	   
	   mz1aau =  m1aau*clr(ifl(1,k),1,isig1)*clr(ifl(2,k),1,isig1)
	   mz1azu = (m1azu+z1azu)*
     &          clr(ifl(1,k),2,isig1)*clr(ifl(2,k),1,isig1)
	   mz1zau =  m1zau*clr(ifl(1,k),1,isig1)*clr(ifl(2,k),2,isig1)
	   mz1zzu = (m1zzu+z1zzu)*
     &          clr(ifl(1,k),2,isig1)*clr(ifl(2,k),2,isig1)
	   	   
	   m1u = mz1aau+mz1azu+mz1zau+mz1zzu
	   	   
	   m2aau = dotcc(jua(0,isig1,h,1),epsaee(0,isig3,h,ifl(3,k),1))
	   m2azu = dotcc(jua(0,isig1,h,1),epszee(0,isig3,h,ifl(3,k),1))
	   m2zau = dotcc(juz(0,isig1,h,1),epsaee(0,isig3,h,ifl(3,k),1))
	   m2zzu = dotcc(juz(0,isig1,h,1),epszee(0,isig3,h,ifl(3,k),1))
	   	   
	   mz2aau =  m2aau*clr(ifl(2,k),1,isig1)*clr(ifl(1,k),1,isig1)
	   mz2azu = (m2azu-z1azu)*
     &          clr(ifl(2,k),2,isig1)*clr(ifl(1,k),1,isig1)
	   mz2zau =  m2zau*clr(ifl(2,k),1,isig1)*clr(ifl(1,k),2,isig1)
	   mz2zzu = (m2zzu-z1zzu)*
     &          clr(ifl(2,k),2,isig1)*clr(ifl(1,k),2,isig1)
	   	   
	   m2u = mz2aau+mz2azu+mz2zau+mz2zzu
	   
	   mat(k,isig1,isig3,h,2) = m1e+m1u+m2e+m2u
	   
	   
	   if (lbox.and.(.not.qdamp)) then
	   
	    ! e+e- from upper line:
	   
	   mv1aae = dotcc(jvea(0,isig1,h,is1,2),
     #                    epsauu(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(1,k),1,isig1)*clr(ifl(2,k),1,isig1)
	   mv1aze = dotcc(jvea(0,isig1,h,is1,2),
     #                    epszuu(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(1,k),2,isig1)*clr(ifl(2,k),1,isig1)
	   mv1zae = dotcc(jvez(0,isig1,h,is1,2),
     #                    epsauu(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(1,k),1,isig1)*clr(ifl(2,k),2,isig1)
	   mv1zze = dotcc(jvez(0,isig1,h,is1,2),
     #                    epszuu(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(1,k),2,isig1)*clr(ifl(2,k),2,isig1)
	  	   	   
	   mv1e = mv1aae+mv1aze+mv1zae+mv1zze
	   	   	   
	   mv2aae = dotcc(jvea(0,isig1,h,is1,1),
     #                    epsauu(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(2,k),1,isig1)*clr(ifl(1,k),1,isig1)
	   mv2aze = dotcc(jvea(0,isig1,h,is1,1),
     #                    epszuu(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(2,k),2,isig1)*clr(ifl(1,k),1,isig1)
	   mv2zae = dotcc(jvez(0,isig1,h,is1,1),
     #                    epsauu(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(2,k),1,isig1)*clr(ifl(1,k),2,isig1)
	   mv2zze = dotcc(jvez(0,isig1,h,is1,1),
     #                    epszuu(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(2,k),2,isig1)*clr(ifl(1,k),2,isig1)
	   	   	   	   
	   mv2e = mv2aae+mv2aze+mv2zae+mv2zze
	   
	   
	   ! mu+mu- from upper line:
	   
	   mv1aau = dotcc(jvua(0,isig1,h,is1,2),
     #                    epsaee(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(1,k),1,isig1)*clr(ifl(2,k),1,isig1)
	   mv1azu = dotcc(jvua(0,isig1,h,is1,2),
     #                    epszee(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(1,k),2,isig1)*clr(ifl(2,k),1,isig1)
	   mv1zau = dotcc(jvuz(0,isig1,h,is1,2),
     #                    epsaee(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(1,k),1,isig1)*clr(ifl(2,k),2,isig1)
	   mv1zzu = dotcc(jvuz(0,isig1,h,is1,2),
     #                    epszee(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(1,k),2,isig1)*clr(ifl(2,k),2,isig1)
	   	   	   
	   mv1u = mv1aau+mv1azu+mv1zau+mv1zzu
	   	   
	   mv2aau = dotcc(jvua(0,isig1,h,is1,1),
     #                    epsaee(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(2,k),1,isig1)*clr(ifl(1,k),1,isig1)
	   mv2azu = dotcc(jvua(0,isig1,h,is1,1),
     #                    epszee(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(2,k),2,isig1)*clr(ifl(1,k),1,isig1)
	   mv2zau = dotcc(jvuz(0,isig1,h,is1,1),
     #                    epsaee(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(2,k),1,isig1)*clr(ifl(1,k),2,isig1)
	   mv2zzu = dotcc(jvuz(0,isig1,h,is1,1),
     #                    epszee(0,isig3,h,ifl(3,k),1))
     #		   *clr(ifl(2,k),2,isig1)*clr(ifl(1,k),2,isig1)
	   	   	   	   
	   mv2u = mv2aau+mv2azu+mv2zau+mv2zzu
	   
	   matv(k,isig1,isig3,h,2) = mv1e+mv1u+mv2e+mv2u
	   
	   
	   endif !lbox
	   
           endif !k = 1,2,3,4
c	   enddo !k
	   
	   enddo !isig3
	enddo ! isig1  
        enddo !h
	
c
c ------------------
c   
c	CC next:
      else ! CC  
  
      do h = hmin,hmax,hstep   
         
      isig = -1
c      k = 5                     !udsc, e+e- from upper line
      if (k.eq.5) then 

      m1ae = dotcc(jea(0,-1,h,2),epsCCuu(0,isig,h,1))*clr(ifl(2,k),1,-1)   
      m1ze = dotcc(jez(0,-1,h,2),epsCCuu(0,isig,h,1))*clr(ifl(2,k),2,-1)   
      m2ae = dotcc(jea(0,-1,h,1),epsCCuu(0,isig,h,1))*clr(ifl(1,k),1,-1)   
      m2ze = dotcc(jez(0,-1,h,1),epsCCuu(0,isig,h,1))*clr(ifl(1,k),2,-1)   

      z1ae = qepsCCuu(1,h)*jj21ae(isig,h)*
     &     clr(ifl(1,k),3,isig)*clr(ifl(2,k),1,isig)
      z1ze = qepsCCuu(1,h)*jj21ze(isig,h)*
     &     clr(ifl(1,k),3,isig)*clr(ifl(2,k),2,isig)
      z2ze = qepsCCuu(1,h)*jj21ze(isig,h)*
     &     clr(ifl(2,k),3,isig)*clr(ifl(1,k),2,isig)
      z2ae = qepsCCuu(1,h)*jj21ae(isig,h)*
     &     clr(ifl(2,k),3,isig)*clr(ifl(1,k),1,isig)

     	 ! Achtung: A an u/d Kopplung unterschiedlich!! 
     
	mate12 = clr(3,3,-1)*(m2ae-z2ae+m2ze-z2ze)
     #	      +  clr(3,3,-1)*(m1ae+z1ae+m1ze+z1ze)


     	                       !udsc, mu+mu- from upper line
      m1au = dotcc(jua(0,-1,h,2),epsCCee(0,isig,h,1))*clr(ifl(2,k),1,-1)   
      m1zu = dotcc(juz(0,-1,h,2),epsCCee(0,isig,h,1))*clr(ifl(2,k),2,-1)   
      m2au = dotcc(jua(0,-1,h,1),epsCCee(0,isig,h,1))*clr(ifl(1,k),1,-1)   
      m2zu = dotcc(juz(0,-1,h,1),epsCCee(0,isig,h,1))*clr(ifl(1,k),2,-1)   

      z1au = qepsCCee(1,h)*jj21au(isig,h)*
     &     clr(ifl(1,k),3,isig)*clr(ifl(2,k),1,isig)
      z1zu = qepsCCee(1,h)*jj21zu(isig,h)*
     &     clr(ifl(1,k),3,isig)*clr(ifl(2,k),2,isig)
      z2zu = qepsCCee(1,h)*jj21zu(isig,h)*
     &     clr(ifl(2,k),3,isig)*clr(ifl(1,k),2,isig)
      z2au = qepsCCee(1,h)*jj21au(isig,h)*
     &     clr(ifl(2,k),3,isig)*clr(ifl(1,k),1,isig)


	matu12 = clr(3,3,-1)*(m2au-z2au+m2zu-z2zu)
     #	      +  clr(3,3,-1)*(m1au+z1au+m1zu+z1zu)
     
       mat(k,-1,isig,h,2) = mate12 + matu12

c-------------
c    
      isig = -1
c      k = 6                     !ducs, e+e- from upper line
      elseif (k.eq.6) then 

      m1ae = dotcc(jea(0,-1,h,2),epsCCuu6(0,isig,h,1))*clr(ifl(2,k),1,-1)	    
      m1ze = dotcc(jez(0,-1,h,2),epsCCuu6(0,isig,h,1))*clr(ifl(2,k),2,-1)	      
      m2ae = dotcc(jea(0,-1,h,1),epsCCuu6(0,isig,h,1))*clr(ifl(1,k),1,-1)	    
      m2ze = dotcc(jez(0,-1,h,1),epsCCuu6(0,isig,h,1))*clr(ifl(1,k),2,-1)	    

      z1ae = qepsCCuu6(1,h)*jj21ae(isig,h)*
     &     clr(ifl(1,k),3,isig)*clr(ifl(2,k),1,isig)
      z1ze = qepsCCuu6(1,h)*jj21ze(isig,h)*
     &     clr(ifl(1,k),3,isig)*clr(ifl(2,k),2,isig)
      z2ze = qepsCCuu6(1,h)*jj21ze(isig,h)*
     &     clr(ifl(2,k),3,isig)*clr(ifl(1,k),2,isig)
      z2ae = qepsCCuu6(1,h)*jj21ae(isig,h)*
     &     clr(ifl(2,k),3,isig)*clr(ifl(1,k),1,isig)

	mate12 = clr(3,3,-1)*(m2ae-z2ae+m2ze-z2ze)
     #	      +  clr(3,3,-1)*(m1ae+z1ae+m1ze+z1ze)


     	                       !ducs, mu+mu- from upper line
      m1au = dotcc(jua(0,-1,h,2),epsCCee6(0,isig,h,1))*clr(ifl(2,k),1,-1)	   
      m1zu = dotcc(juz(0,-1,h,2),epsCCee6(0,isig,h,1))*clr(ifl(2,k),2,-1)	    
      m2au = dotcc(jua(0,-1,h,1),epsCCee6(0,isig,h,1))*clr(ifl(1,k),1,-1)	    
      m2zu = dotcc(juz(0,-1,h,1),epsCCee6(0,isig,h,1))*clr(ifl(1,k),2,-1)	    

      z1au = qepsCCee6(1,h)*jj21au(isig,h)*
     &     clr(ifl(1,k),3,isig)*clr(ifl(2,k),1,isig)
      z1zu = qepsCCee6(1,h)*jj21zu(isig,h)*
     &     clr(ifl(1,k),3,isig)*clr(ifl(2,k),2,isig)
      z2zu = qepsCCee6(1,h)*jj21zu(isig,h)*
     &     clr(ifl(2,k),3,isig)*clr(ifl(1,k),2,isig)
      z2au = qepsCCee6(1,h)*jj21au(isig,h)*
     &     clr(ifl(2,k),3,isig)*clr(ifl(1,k),1,isig)


	matu12 = clr(3,3,-1)*(m2au-z2au+m2zu-z2zu)
     #	      +  clr(3,3,-1)*(m1au+z1au+m1zu+z1zu)
     
       mat(k,-1,isig,h,2) = mate12 + matu12
       
c ------------------

      endif !k=6
c   
      if (lbox.and.(.not.qdamp)) then
      
      isig = -1
c      k = 5                     !udsc, e+e- from upper line
      if (k.eq.5) then 
      mv1ae = dotcc(jvea(0,-1,h,is1,2),epsCCuu(0,isig,h,1))*
     &        clr(ifl(2,k),1,-1)  
      mv1ze = dotcc(jvez(0,-1,h,is1,2),epsCCuu(0,isig,h,1))*
     &        clr(ifl(2,k),2,-1)  
      mv2ae = dotcc(jvea(0,-1,h,is1,1),epsCCuu(0,isig,h,1))*
     &        clr(ifl(1,k),1,-1)  
      mv2ze = dotcc(jvez(0,-1,h,is1,1),epsCCuu(0,isig,h,1))*
     &        clr(ifl(1,k),2,-1)  
     
	matve12 = clr(3,3,-1)*(mv2ae+mv2ze+mv1ae+mv1ze)


     	                       !udsc, mu+mu- from upper line
      mv1au = dotcc(jvua(0,-1,h,is1,2),epsCCee(0,isig,h,1))*
     &        clr(ifl(2,k),1,-1)  
      mv1zu = dotcc(jvuz(0,-1,h,is1,2),epsCCee(0,isig,h,1))*
     &        clr(ifl(2,k),2,-1)  
      mv2au = dotcc(jvua(0,-1,h,is1,1),epsCCee(0,isig,h,1))*
     &        clr(ifl(1,k),1,-1)  
      mv2zu = dotcc(jvuz(0,-1,h,is1,1),epsCCee(0,isig,h,1))*
     &        clr(ifl(1,k),2,-1)  

	matvu12 = clr(3,3,-1)*(mv2au+mv2zu+mv1au+mv1zu)
     
       matv(k,-1,isig,h,2) = matve12 + matvu12
       
c    
c      isig = -1
c      k = 6                     !udsc, e+e- from upper line
      elseif (k.eq.6) then  
      mv1ae = dotcc(jvea(0,-1,h,is1,2),epsCCuu6(0,isig,h,1))*
     &        clr(ifl(2,k),1,-1) 
      mv1ze = dotcc(jvez(0,-1,h,is1,2),epsCCuu6(0,isig,h,1))*
     &        clr(ifl(2,k),2,-1) 
      mv2ae = dotcc(jvea(0,-1,h,is1,1),epsCCuu6(0,isig,h,1))*
     &        clr(ifl(1,k),1,-1) 
      mv2ze = dotcc(jvez(0,-1,h,is1,1),epsCCuu6(0,isig,h,1))*
     &        clr(ifl(1,k),2,-1) 
      
	matve12 = clr(3,3,-1)*(mv2ae+mv2ze+mv1ae+mv1ze)


     	                       !udsc, mu+mu- from upper line
      mv1au = dotcc(jvua(0,-1,h,is1,2),epsCCee6(0,isig,h,1))*
     &        clr(ifl(2,k),1,-1) 
      mv1zu = dotcc(jvuz(0,-1,h,is1,2),epsCCee6(0,isig,h,1))*
     &        clr(ifl(2,k),2,-1) 
      mv2au = dotcc(jvua(0,-1,h,is1,1),epsCCee6(0,isig,h,1))*
     &        clr(ifl(1,k),1,-1) 
      mv2zu = dotcc(jvuz(0,-1,h,is1,1),epsCCee6(0,isig,h,1))*
     &        clr(ifl(1,k),2,-1) 

	matvu12 = clr(3,3,-1)*(mv2au+mv2zu+mv1au+mv1zu)
     
       matv(k,-1,isig,h,2) = matve12 + matvu12

       endif !k=5,6
       
      
      endif !lbox

      enddo !h

      endif !cc/nc

c ----------------------------------
      
c repeat the same for 2 bosons attached to 34 line:
c
cc	NC first:
c

      do h = hmin,hmax,hstep
	do isig1 = -1,1,2
	   do isig3 = -1,1,2
	   
c  gauge term for Z propagator:
	  do kl=3,4 !up/down type
	      qepszee(kl,h) = dotrc(qee,epszee(0,isig1,h,kl,2))*zm2i(2) 
	      qepszuu(kl,h) = dotrc(quu,epszuu(0,isig1,h,kl,2))*zm2i(2) 	    
	   enddo !kl
	   
c	   do kl = 1,4 ! e+e- from lower line:
           if (k.le.4) then 
	   
	   m3aae = dotcc(jea(0,isig3,h,4),epsauu(0,isig1,h,ifl(1,k),2))
	   m3aze = dotcc(jea(0,isig3,h,4),epszuu(0,isig1,h,ifl(1,k),2))
	   m3zae = dotcc(jez(0,isig3,h,4),epsauu(0,isig1,h,ifl(1,k),2))
	   m3zze = dotcc(jez(0,isig3,h,4),epszuu(0,isig1,h,ifl(1,k),2))
	   
	   z3aze = qepszuu(ifl(1,k),h)*jj43ae(isig3,h)    
	   z3zze = qepszuu(ifl(1,k),h)*jj43ze(isig3,h)    
	   
	   mz3aae =  m3aae*clr(ifl(3,k),1,isig3)*clr(ifl(4,k),1,isig3)
	   mz3aze = (m3aze+z3aze)*
     &              clr(ifl(3,k),2,isig3)*clr(ifl(4,k),1,isig3)
	   mz3zae =  m3zae*clr(ifl(3,k),1,isig3)*clr(ifl(4,k),2,isig3)
	   mz3zze = (m3zze+z3zze)*
     &              clr(ifl(3,k),2,isig3)*clr(ifl(4,k),2,isig3)
	   	   
	   m3e = mz3aae+mz3aze+mz3zae+mz3zze
	   	   	   
	   m4aae = dotcc(jea(0,isig3,h,3),epsauu(0,isig1,h,ifl(1,k),2))
	   m4aze = dotcc(jea(0,isig3,h,3),epszuu(0,isig1,h,ifl(1,k),2))
	   m4zae = dotcc(jez(0,isig3,h,3),epsauu(0,isig1,h,ifl(1,k),2))
	   m4zze = dotcc(jez(0,isig3,h,3),epszuu(0,isig1,h,ifl(1,k),2))
	   	   
	   mz4aae =  m4aae*clr(ifl(4,k),1,isig3)*clr(ifl(3,k),1,isig3)
	   mz4aze = (m4aze-z3aze)*
     &              clr(ifl(4,k),2,isig3)*clr(ifl(3,k),1,isig3)
	   mz4zae =  m4zae*clr(ifl(4,k),1,isig3)*clr(ifl(3,k),2,isig3)
	   mz4zze = (m4zze-z3zze)*
     &              clr(ifl(4,k),2,isig3)*clr(ifl(3,k),2,isig3)
	   	   
	   m4e = mz4aae+mz4aze+mz4zae+mz4zze
	   
	   
	   ! mu+mu- from lower line:
	   m3aau = dotcc(jua(0,isig3,h,4),epsaee(0,isig1,h,ifl(1,k),2))
	   m3azu = dotcc(jua(0,isig3,h,4),epszee(0,isig1,h,ifl(1,k),2))
	   m3zau = dotcc(juz(0,isig3,h,4),epsaee(0,isig1,h,ifl(1,k),2))
	   m3zzu = dotcc(juz(0,isig3,h,4),epszee(0,isig1,h,ifl(1,k),2))
	   
	   z3azu = qepszee(ifl(1,k),h)*jj43au(isig3,h)    
	   z3zzu = qepszee(ifl(1,k),h)*jj43zu(isig3,h)    
	   
	   mz3aau =  m3aau*clr(ifl(3,k),1,isig3)*clr(ifl(4,k),1,isig3)
	   mz3azu = (m3azu+z3azu)*
     &              clr(ifl(3,k),2,isig3)*clr(ifl(4,k),1,isig3)
	   mz3zau =  m3zau*clr(ifl(3,k),1,isig3)*clr(ifl(4,k),2,isig3)
	   mz3zzu = (m3zzu+z3zzu)*
     &              clr(ifl(3,k),2,isig3)*clr(ifl(4,k),2,isig3)
	   	   
	   m3u = mz3aau+mz3azu+mz3zau+mz3zzu
	   	   	   
	   m4aau = dotcc(jua(0,isig3,h,3),epsaee(0,isig1,h,ifl(1,k),2))
	   m4azu = dotcc(jua(0,isig3,h,3),epszee(0,isig1,h,ifl(1,k),2))
	   m4zau = dotcc(juz(0,isig3,h,3),epsaee(0,isig1,h,ifl(1,k),2))
	   m4zzu = dotcc(juz(0,isig3,h,3),epszee(0,isig1,h,ifl(1,k),2))
	   	   
	   mz4aau =  m4aau*clr(ifl(4,k),1,isig3)*clr(ifl(3,k),1,isig3)
	   mz4azu = (m4azu-z3azu)*
     &              clr(ifl(4,k),2,isig3)*clr(ifl(3,k),1,isig3)
	   mz4zau =  m4zau*clr(ifl(4,k),1,isig3)*clr(ifl(3,k),2,isig3)
	   mz4zzu = (m4zzu-z3zzu)*
     &              clr(ifl(4,k),2,isig3)*clr(ifl(3,k),2,isig3)
	   	   
	   m4u = mz4aau+mz4azu+mz4zau+mz4zzu
	  	   
	   
	   mat(k,isig1,isig3,h,3) = m3e+m3u+m4e+m4u
	   
	   endif ! k=1,2,3,4
c	   enddo !k
	   
	   enddo !isig3
	enddo ! isig1  
c
c -----------------------------------------
c
c  virtual corrections:  
c	(gauge terms for massive gauge boson propagators 
c		   not needed when contracted with boxes)
c
c
	if (lbox.and.(.not.qdamp)) then

	do isig1 = -1,1,2
	   do isig3 = -1,1,2
	   	   
c	   do k = 1,4 ! e+e- from lower line:
	   if (k.le.4) then  ! e+e- from lower line:
	   
	   mv3aae = dotcc(jvea(0,isig3,h,is3,4),
     #                    epsauu(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(3,k),1,isig3)*clr(ifl(4,k),1,isig3)
	   mv3aze = dotcc(jvea(0,isig3,h,is3,4),
     #                    epszuu(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(3,k),2,isig3)*clr(ifl(4,k),1,isig3)
	   mv3zae = dotcc(jvez(0,isig3,h,is3,4),
     #                    epsauu(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(3,k),1,isig3)*clr(ifl(4,k),2,isig3)
	   mv3zze = dotcc(jvez(0,isig3,h,is3,4),
     #                    epszuu(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(3,k),2,isig3)*clr(ifl(4,k),2,isig3)
	   	   	   
	   mv3e = mv3aae+mv3aze+mv3zae+mv3zze
	   	   	   
	   mv4aae = dotcc(jvea(0,isig3,h,is3,3),
     #                    epsauu(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(4,k),1,isig3)*clr(ifl(3,k),1,isig3)
	   mv4aze = dotcc(jvea(0,isig3,h,is3,3),
     #                    epszuu(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(4,k),2,isig3)*clr(ifl(3,k),1,isig3)
	   mv4zae = dotcc(jvez(0,isig3,h,is3,3),
     #                    epsauu(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(4,k),1,isig3)*clr(ifl(3,k),2,isig3)
	   mv4zze = dotcc(jvez(0,isig3,h,is3,3),
     #                    epszuu(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(4,k),2,isig3)*clr(ifl(3,k),2,isig3)
	   	   
	   mv4e = mv4aae+mv4aze+mv4zae+mv4zze
	   
	   
	   ! mu+mu- from lower line:
	   mv3aau = dotcc(jvua(0,isig3,h,is3,4),
     #                    epsaee(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(3,k),1,isig3)*clr(ifl(4,k),1,isig3)
	   mv3azu = dotcc(jvua(0,isig3,h,is3,4),
     #                    epszee(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(3,k),2,isig3)*clr(ifl(4,k),1,isig3)
	   mv3zau = dotcc(jvuz(0,isig3,h,is3,4),
     #                    epsaee(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(3,k),1,isig3)*clr(ifl(4,k),2,isig3)
	   mv3zzu = dotcc(jvuz(0,isig3,h,is3,4),
     #                    epszee(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(3,k),2,isig3)*clr(ifl(4,k),2,isig3)
	   	   	   
	   mv3u = mv3aau+mv3azu+mv3zau+mv3zzu
	   	   	   
	   mv4aau = dotcc(jvua(0,isig3,h,is3,3),
     #                    epsaee(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(4,k),1,isig3)*clr(ifl(3,k),1,isig3)
	   mv4azu = dotcc(jvua(0,isig3,h,is3,3),
     #                    epszee(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(4,k),2,isig3)*clr(ifl(3,k),1,isig3)
	   mv4zau = dotcc(jvuz(0,isig3,h,is3,3),
     #                    epsaee(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(4,k),1,isig3)*clr(ifl(3,k),2,isig3)
	   mv4zzu = dotcc(jvuz(0,isig3,h,is3,3),
     #                    epszee(0,isig1,h,ifl(1,k),2))
     #			   *clr(ifl(4,k),2,isig3)*clr(ifl(3,k),2,isig3)
	   	   	   	   
	   mv4u = mv4aau+mv4azu+mv4zau+mv4zzu
	  	   
	   
	   matv(k,isig1,isig3,h,3) = mv3e+mv3u+mv4e+mv4u
	   
	endif !k   
c	   enddo !k
	   
	   enddo !isig3
	enddo ! isig1
	
	endif !lbox  
	

c -----------------------------------------
c
C CC:
		
      isig = -1
c      kl = 5                     !udsc, e+e- from lower line
      if (k.eq.5) then 
      m3ae = dotcc(jea(0,-1,h,4),epsCCuu(0,isig,h,2))*clr(ifl(4,k),1,-1)	  
      m3ze = dotcc(jez(0,-1,h,4),epsCCuu(0,isig,h,2))*clr(ifl(4,k),2,-1)	    
      m4ae = dotcc(jea(0,-1,h,3),epsCCuu(0,isig,h,2))*clr(ifl(3,k),1,-1)	  
      m4ze = dotcc(jez(0,-1,h,3),epsCCuu(0,isig,h,2))*clr(ifl(3,k),2,-1)	  

      z3ae = qepsCCuu(2,h)*jj43ae(isig,h)*
     &     clr(ifl(3,k),3,isig)*clr(ifl(4,k),1,isig)
      z3ze = qepsCCuu(2,h)*jj43ze(isig,h)*
     &     clr(ifl(3,k),3,isig)*clr(ifl(4,k),2,isig)
      z4ze = qepsCCuu(2,h)*jj43ze(isig,h)*
     &     clr(ifl(4,k),3,isig)*clr(ifl(3,k),2,isig)
      z4ae = qepsCCuu(2,h)*jj43ae(isig,h)*
     &     clr(ifl(4,k),3,isig)*clr(ifl(3,k),1,isig)
     
	mate34 = clr(3,3,-1)*(m4ae-z4ae+m4ze-z4ze)
     #	      +  clr(3,3,-1)*(m3ae+z3ae+m3ze+z3ze)

	
	     	                 !udsc, mu+mu- from lower line
      m3au = dotcc(jua(0,-1,h,4),epsCCee(0,isig,h,2))*clr(ifl(4,k),1,-1)	  
      m3zu = dotcc(juz(0,-1,h,4),epsCCee(0,isig,h,2))*clr(ifl(4,k),2,-1)	  
      m4au = dotcc(jua(0,-1,h,3),epsCCee(0,isig,h,2))*clr(ifl(3,k),1,-1)	  
      m4zu = dotcc(juz(0,-1,h,3),epsCCee(0,isig,h,2))*clr(ifl(3,k),2,-1)	  

      z3au = qepsCCee(2,h)*jj43au(isig,h)*
     &     clr(ifl(3,k),3,isig)*clr(ifl(4,k),1,isig)
      z3zu = qepsCCee(2,h)*jj43zu(isig,h)*
     &     clr(ifl(3,k),3,isig)*clr(ifl(4,k),2,isig)
      z4zu = qepsCCee(2,h)*jj43zu(isig,h)*
     &     clr(ifl(4,k),3,isig)*clr(ifl(3,k),2,isig)
      z4au = qepsCCee(2,h)*jj43au(isig,h)*
     &     clr(ifl(4,k),3,isig)*clr(ifl(3,k),1,isig)


	matu34 = clr(3,3,-1)*(m4au-z4au+m4zu-z4zu)
     #	      +  clr(3,3,-1)*(m3au+z3au+m3zu+z3zu)
     
       mat(k,-1,isig,h,3) = mate34 + matu34

c      isig = -1
c      k = 6                     !udsc, e+e- from upper line
       elseif (k.eq.6) then 
      m3ae = dotcc(jea(0,-1,h,4),epsCCuu6(0,isig,h,2))*clr(ifl(4,k),1,-1)  
      m3ze = dotcc(jez(0,-1,h,4),epsCCuu6(0,isig,h,2))*clr(ifl(4,k),2,-1)  
      m4ae = dotcc(jea(0,-1,h,3),epsCCuu6(0,isig,h,2))*clr(ifl(3,k),1,-1)  
      m4ze = dotcc(jez(0,-1,h,3),epsCCuu6(0,isig,h,2))*clr(ifl(3,k),2,-1)  

      z3ae = qepsCCuu6(2,h)*jj43ae(isig,h)*
     &     clr(ifl(3,k),3,isig)*clr(ifl(4,k),1,isig)
      z3ze = qepsCCuu6(2,h)*jj43ze(isig,h)*
     &     clr(ifl(3,k),3,isig)*clr(ifl(4,k),2,isig)
      z4ze = qepsCCuu6(2,h)*jj43ze(isig,h)*
     &     clr(ifl(4,k),3,isig)*clr(ifl(3,k),2,isig)
      z4ae = qepsCCuu6(2,h)*jj43ae(isig,h)*
     &     clr(ifl(4,k),3,isig)*clr(ifl(3,k),1,isig)

	mate34 = clr(3,3,-1)*(m4ae-z4ae+m4ze-z4ze)
     #	      +  clr(3,3,-1)*(m3ae+z3ae+m3ze+z3ze)


     	                       !udsc, mu+mu- from upper line
      m3au = dotcc(jua(0,-1,h,4),epsCCee6(0,isig,h,2))*clr(ifl(4,k),1,-1)	 
      m3zu = dotcc(juz(0,-1,h,4),epsCCee6(0,isig,h,2))*clr(ifl(4,k),2,-1)	 
      m4au = dotcc(jua(0,-1,h,3),epsCCee6(0,isig,h,2))*clr(ifl(3,k),1,-1)	 
      m4zu = dotcc(juz(0,-1,h,3),epsCCee6(0,isig,h,2))*clr(ifl(3,k),2,-1)	 

      z3au = qepsCCee6(2,h)*jj43au(isig,h)*
     &     clr(ifl(3,k),3,isig)*clr(ifl(4,k),1,isig)
      z3zu = qepsCCee6(2,h)*jj43zu(isig,h)*
     &     clr(ifl(3,k),3,isig)*clr(ifl(4,k),2,isig)
      z4zu = qepsCCee6(2,h)*jj43zu(isig,h)*
     &     clr(ifl(4,k),3,isig)*clr(ifl(3,k),2,isig)
      z4au = qepsCCee6(2,h)*jj43au(isig,h)*
     &     clr(ifl(4,k),3,isig)*clr(ifl(3,k),1,isig)


	matu34 = clr(3,3,-1)*(m4au-z4au+m4zu-z4zu)
     #	      +  clr(3,3,-1)*(m3au+z3au+m3zu+z3zu)
     
       mat(k,-1,isig,h,3) = mate34 + matu34

       endif !k =6

c ------------------
c
C virtual corrections:

      if (lbox.and.(.not.qdamp)) then
		
      isig = -1
c      k = 5                     !udsc, e+e- from lower line
      if (k.eq.5) then 
      mv3ae = dotcc(jvea(0,-1,h,is3,4),epsCCuu(0,isig,h,2))*
     #                    clr(ifl(4,k),1,-1)	
      mv3ze = dotcc(jvez(0,-1,h,is3,4),epsCCuu(0,isig,h,2))*
     #                    clr(ifl(4,k),2,-1)	  
      mv4ae = dotcc(jvea(0,-1,h,is3,3),epsCCuu(0,isig,h,2))*
     #                    clr(ifl(3,k),1,-1)	
      mv4ze = dotcc(jvez(0,-1,h,is3,3),epsCCuu(0,isig,h,2))*
     #                    clr(ifl(3,k),2,-1)	
     
	matve34 = clr(3,3,-1)*(mv4ae+mv4ze+mv3ae+mv3ze)

	
	     	                 !udsc, mu+mu- from lower line
      mv3au = dotcc(jvua(0,-1,h,is3,4),epsCCee(0,isig,h,2))*
     #                    clr(ifl(4,k),1,-1)	  
      mv3zu = dotcc(jvuz(0,-1,h,is3,4),epsCCee(0,isig,h,2))*
     #                    clr(ifl(4,k),2,-1)	  
      mv4au = dotcc(jvua(0,-1,h,is3,3),epsCCee(0,isig,h,2))*
     #                    clr(ifl(3,k),1,-1)	  
      mv4zu = dotcc(jvuz(0,-1,h,is3,3),epsCCee(0,isig,h,2))*
     #                    clr(ifl(3,k),2,-1)	  

	 matvu34 = clr(3,3,-1)*(mv4au+mv4zu+mv3au+mv3zu)
     
       matv(k,-1,isig,h,3) = matve34 + matvu34

        
c      isig = -1
c      k = 6                     !udsc, e+e- from upper line
       elseif (k.eq.6) then 
      mv3ae = dotcc(jvea(0,-1,h,is3,4),epsCCuu6(0,isig,h,2))*
     #                    clr(ifl(4,k),1,-1)    
      mv3ze = dotcc(jvez(0,-1,h,is3,4),epsCCuu6(0,isig,h,2))*
     #                    clr(ifl(4,k),2,-1)    
      mv4ae = dotcc(jvea(0,-1,h,is3,3),epsCCuu6(0,isig,h,2))*
     #                    clr(ifl(3,k),1,-1)    
      mv4ze = dotcc(jvez(0,-1,h,is3,3),epsCCuu6(0,isig,h,2))*
     #                    clr(ifl(3,k),2,-1)    

	matve34 = clr(3,3,-1)*(mv4ae+mv4ze+mv3ae+mv3ze)


     	                       !udsc, mu+mu- from upper line
      mv3au = dotcc(jvua(0,-1,h,is3,4),epsCCee6(0,isig,h,2))*
     #                    clr(ifl(4,k),1,-1)    
      mv3zu = dotcc(jvuz(0,-1,h,is3,4),epsCCee6(0,isig,h,2))*
     #                    clr(ifl(4,k),2,-1)    
      mv4au = dotcc(jvua(0,-1,h,is3,3),epsCCee6(0,isig,h,2))*
     #                    clr(ifl(3,k),1,-1)    
      mv4zu = dotcc(jvuz(0,-1,h,is3,3),epsCCee6(0,isig,h,2))*
     #                    clr(ifl(3,k),2,-1)


	matvu34 = clr(3,3,-1)*(mv4au+mv4zu+mv3au+mv3zu)
     
       matv(k,-1,isig,h,3) = matve34 + matvu34
 
       endif !k=6
 
       endif !lbox

       enddo !h


       if (vbonly) goto 999

 444   continue
      
c ----------------------------------------------------------------------
c
c next come the A/Z-->ZZ currents attached to the quark lines. For the virtual 
c corrections the most effective structure is the contraction of 
c two polarization 
c vectors with one fermion line. 
c First build these effective polarization vectors
c from the currents zzz(mu) and azz(mu)
c
c NOTE: the zz and azz currents are conserved. Hence there is no 
c       need to consider q^mu * q^nu/m_Z^2  terms in the Z boson propagator

      if (lzs(js1)) then

         do h = hmin,hmax,hstep

         i = 1
         do isig = -1,1,2
            call ket2c(psi(1,isig,i),.true.,p(0,i),isig,pzz,azz(0,h),
     1                 psia(1,isig,h,is1,i),fq(0,i))
            call ket2c(psi(1,isig,i),.true.,p(0,i),isig,pzz,zzz(0,h),
     1                 psiz(1,isig,h,is1,i),fq(0,i))
            call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,pzz,azz(0,h),
     1                 psia(1,isig,h,is1,i+1),fq(0,i+1))
            call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,pzz,zzz(0,h),
     1                 psiz(1,isig,h,is1,i+1),fq(0,i+1))

         enddo
	 
         call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1              psia(1,-1,h,is1,i),fq(0,i), ja(0,-1,h,is1,i)   )
         call curr6(1,psia(1,-1,h,is1,i+1),fq(0,i+1),
     1              psi(1,-1,i),p(0,i), ja(0,-1,h,is1,i+1) )
         call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1              psiz(1,-1,h,is1,i),fq(0,i), jz(0,-1,h,is1,i)   )
         call curr6(1,psiz(1,-1,h,is1,i+1),fq(0,i+1),
     1              psi(1,-1,i),p(0,i), jz(0,-1,h,is1,i+1) )
      
              
	 if (lbox.and.(.not.qdamp)) then
            do i = 1,2
               call boxlinec(1,psi(1,-1,1),psi(1,-1,2),p(0,1),p(0,2),
     1                       .true., azz(0,h),3-i,   ja(0,-1,h,is1,i), 
     2                       jva(0,-1,h,is1,i) )
               call boxlinec(1,psi(1,-1,1),psi(1,-1,2),p(0,1),p(0,2),
     1                       .false., zzz(0,h),3-i,  jz(0,-1,h,is1,i), 
     2                       jvz(0,-1,h,is1,i) )
            enddo
         endif

         enddo !h
	 
      endif
      
      if (lzs(js3)) then

      do h = hmin,hmax,hstep
    
         i = 3
         do isig = -1,1,2
            call ket2c(psi(1,isig,i),.true.,p(0,i),isig,pzz,azz(0,h),
     1                 psia(1,isig,h,is3,i),fq(0,i))
            call ket2c(psi(1,isig,i),.true.,p(0,i),isig,pzz,zzz(0,h),
     1                 psiz(1,isig,h,is3,i),fq(0,i))
            call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,pzz,azz(0,h),
     1                 psia(1,isig,h,is3,i+1),fq(0,i+1))
            call bra2c(psi(1,isig,i+1),.true.,p(0,i+1),isig,pzz,zzz(0,h),
     1                 psiz(1,isig,h,is3,i+1),fq(0,i+1))
         enddo
         call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1              psia(1,-1,h,is3,i),fq(0,i), ja(0,-1,h,is3,i)   )
         call curr6(1,psia(1,-1,h,is3,i+1),fq(0,i+1),
     1              psi(1,-1,i),p(0,i), ja(0,-1,h,is3,i+1) )
         call curr6(1,psi(1,-1,i+1),p(0,i+1),
     1              psiz(1,-1,h,is3,i),fq(0,i), jz(0,-1,h,is3,i)   )
         call curr6(1,psiz(1,-1,h,is3,i+1),fq(0,i+1),
     1              psi(1,-1,i),p(0,i), jz(0,-1,h,is3,i+1) )
         if (lbox.and.(.not.qdamp)) then
            do i = 3,4
               call boxlinec(1,psi(1,-1,3),psi(1,-1,4),p(0,3),p(0,4),
     1                       .true., azz(0,h),5-i,   ja(0,-1,h,is3,i), 
     2                       jva(0,-1,h,is3,i) )
               call boxlinec(1,psi(1,-1,3),psi(1,-1,4),p(0,3),p(0,4),
     1                       .false., zzz(0,h),5-i,   
     2                       jz(0,-1,h,is3,i), jvz(0,-1,h,is3,i) )
            enddo
         endif !lbox

      enddo !h   

      endif !lzs

      do h = hmin,hmax,hstep
      
      do isig1 = -1,1,2
         do isig3 = -1,1,2

c---------------------------
c
c box correction to upper line: polarization vectors are 
c    jqq(mu,isig3,2)=j43 with momentum    p43        and
c    azz/zzz(mu)         with momentum    pzz

            ma(1) =      dotcc(ja(0,isig1,h,is1,2),jqq(0,isig3,2))
            ma(2) =      dotcc(ja(0,isig1,h,is1,1),jqq(0,isig3,2))
            mz(1) =      dotcc(jz(0,isig1,h,is1,2),jqq(0,isig3,2))
            mz(2) =      dotcc(jz(0,isig1,h,is1,1),jqq(0,isig3,2))
	    	    
            if (lbox.and.(.not.qdamp)) then
               mva(1) = dotcc(jva(0,isig1,h,is1,2),jqq(0,isig3,2))
               mva(2) = dotcc(jva(0,isig1,h,is1,1),jqq(0,isig3,2))
               mvz(1) = dotcc(jvz(0,isig1,h,is1,2),jqq(0,isig3,2))
               mvz(2) = dotcc(jvz(0,isig1,h,is1,1),jqq(0,isig3,2))
            endif
	   
            do kl = 1,4
               propt1(isig1,isig3,kl,2) = 
     1            clr(ifl(1,kl),1,isig1)*clr(ifl(3,kl),1,isig3)*prop43(1) 
     2          + clr(ifl(1,kl),2,isig1)*clr(ifl(3,kl),2,isig3)*prop43(2)
               propt2(isig1,isig3,kl,2) = 
     1            clr(ifl(2,kl),1,isig1)*clr(ifl(3,kl),1,isig3)*prop43(1) 
     2          + clr(ifl(2,kl),2,isig1)*clr(ifl(3,kl),2,isig3)*prop43(2)
            enddo !kl   

            if (nc_type) then 

c            do k = 1,4
               
	       mat(k,isig1,isig3,h,4) = 
     &              propt2(isig1,isig3,k,2)*
     1            ( ma(2)*clr(ifl(1,k),1,isig1) +
     2              mz(2)*clr(ifl(1,k),2,isig1)   )
     3    	+   propt1(isig1,isig3,k,2)*
     1            (  ma(1)*clr(ifl(2,k),1,isig1) +
     2               mz(1)*clr(ifl(2,k),2,isig1)   )
               if (lbox) matv(k,isig1,isig3,h,4) = 
     &              propt2(isig1,isig3,k,2)*
     1            ( mva(2)*clr(ifl(1,k),1,isig1) +
     2              mvz(2)*clr(ifl(1,k),2,isig1)   )
     3     	+   propt1(isig1,isig3,k,2)*
     1            (  mva(1)*clr(ifl(2,k),1,isig1) +
     2               mvz(1)*clr(ifl(2,k),2,isig1)   )
c            enddo

            else !cc   
            
               if (isig1.eq.-1 .and. isig3.eq.-1) then
               do kl = 5,6
                  propt(-1,-1,kl,2) = clr(3,3,-1)**2*prop43(3)
               enddo !kl   
            
c               do k = 5,6
                  mat(k,-1,-1,h,4) = propt(-1,-1,k,2)*
     1       ( ma(1)*clr(ifl(2,k),1,-1) + ma(2)*clr(ifl(1,k),1,-1) 
     2       + mz(1)*clr(ifl(2,k),2,-1) + mz(2)*clr(ifl(1,k),2,-1) )
                  if (lbox.and.(.not.qdamp)) then 
                     matv(k,-1,-1,h,4) = propt(-1,-1,k,2) *
     1       ( mva(1)*clr(ifl(2,k),1,-1) + mva(2)*clr(ifl(1,k),1,-1) 
     2       + mvz(1)*clr(ifl(2,k),2,-1) + mvz(2)*clr(ifl(1,k),2,-1) )
                  endif !lbox   
c               enddo	       
               else !isig
c               do k = 5,6
                  propt(isig1,isig3,5:6,2) = 0d0
                  mat(k,isig1,isig3,h,4) = 0d0
                  matv(k,isig1,isig3,h,4) = 0d0
c               enddo
            endif !isig

            endif !nc/cc
	    
 
c ------------------	    
	    
c box correction to lower line: polarization vectors are 
c    jqq(mu,isig1,1)=j21 with momentum    p21        and
c    aww/zww(mu)         with momentum    pzz

            ma(1) = dotcc(ja(0,isig3,h,is3,4),jqq(0,isig1,1))
            ma(2) = dotcc(ja(0,isig3,h,is3,3),jqq(0,isig1,1))
            mz(1) = dotcc(jz(0,isig3,h,is3,4),jqq(0,isig1,1))
            mz(2) = dotcc(jz(0,isig3,h,is3,3),jqq(0,isig1,1))
            if (lbox.and.(.not.qdamp)) then
               mva(1) = dotcc(jva(0,isig3,h,is3,4),jqq(0,isig1,1))
               mva(2) = dotcc(jva(0,isig3,h,is3,3),jqq(0,isig1,1))
               mvz(1) = dotcc(jvz(0,isig3,h,is3,4),jqq(0,isig1,1))
               mvz(2) = dotcc(jvz(0,isig3,h,is3,3),jqq(0,isig1,1))
            endif

            do kl = 1,4
               propt1(isig1,isig3,kl,1) = 
     1            clr(ifl(1,kl),1,isig1)*clr(ifl(3,kl),1,isig3)*prop21(1)
     2          + clr(ifl(1,kl),2,isig1)*clr(ifl(3,kl),2,isig3)*prop21(2)
               propt2(isig1,isig3,kl,1) = 
     1            clr(ifl(1,kl),1,isig1)*clr(ifl(4,kl),1,isig3)*prop21(1)
     2          + clr(ifl(1,kl),2,isig1)*clr(ifl(4,kl),2,isig3)*prop21(2)
             enddo  


            if (nc_type) then 
c            do k = 1,4
               mat(k,isig1,isig3,h,5) = propt1(isig1,isig3,k,1) *
     1            ( ma(1)*clr(ifl(4,k),1,isig3) +
     2              mz(1)*clr(ifl(4,k),2,isig3)   )
     3	         +  propt2(isig1,isig3,k,1) *
     1            ( ma(2)*clr(ifl(3,k),1,isig3) +
     2              mz(2)*clr(ifl(3,k),2,isig3)   )              
	       
	       if (lbox.and.(.not.qdamp)) then 
                  matv(k,isig1,isig3,h,5) = propt1(isig1,isig3,k,1) *
     1            ( mva(1)*clr(ifl(4,k),1,isig3) +
     2              mvz(1)*clr(ifl(4,k),2,isig3)   )
     3	         +  propt2(isig1,isig3,k,1) *
     1            ( mva(2)*clr(ifl(3,k),1,isig3) +
     2              mvz(2)*clr(ifl(3,k),2,isig3)   )
                endif !lbox  
c            enddo
		

            else !cc    
            
	    if (isig1.eq.-1 .and. isig3.eq.-1) then

               do kk = 5,6
                  propt(-1,-1,kk,1) = clr(ifl(1,k),3,-1)**2*prop21(3)
               enddo  

c               do k = 5,6
                  mat(k,-1,-1,h,5) = propt(-1,-1,k,1)*
     1       ( ma(1)*clr(ifl(4,k),1,-1) + ma(2)*clr(ifl(3,k),1,-1) 
     2       + mz(1)*clr(ifl(4,k),2,-1) + mz(2)*clr(ifl(3,k),2,-1) )
                  if (lbox.and.(.not.qdamp)) then 
                     matv(k,-1,-1,h,5) = propt(-1,-1,k,1)*
     1       ( mva(1)*clr(ifl(4,k),1,-1) + mva(2)*clr(ifl(3,k),1,-1) 
     2       + mvz(1)*clr(ifl(4,k),2,-1) + mvz(2)*clr(ifl(3,k),2,-1) )
                  endif !lbox   
c               enddo
            else
c               do k = 5,6
                  propt(isig1,isig3,5:6,1) = 0d0
                  mat(k,isig1,isig3,h,5) = 0d0
                  matv(k,isig1,isig3,h,5) = 0d0
c               enddo
            endif !isig1,3

            endif                  !nc/cc

         enddo !isig3
      enddo !isig1

      enddo !h

        if (v4only) goto 999
c ------------------------------------------------------------------------
c
c  next do the box-box graphs with one A/Z emitted from the upper and the 
c  other from the lower line. These are possible for left- and righthanded 
c  quarks on both lines (in case of NC)
c
c
        do h = hmin,hmax,hstep
	do isig1 = -1,1,2
	   do isig3 = -1,1,2
c
c
c e+e- from upper line, mu+mu- from lower line:
c	
	mezz(1,isig1,isig3,h) = dotcc(jez(0,isig1,h,1),juz(0,isig3,h,3))
	meza(1,isig1,isig3,h) = dotcc(jez(0,isig1,h,1),jua(0,isig3,h,3))
	meaz(1,isig1,isig3,h) = dotcc(jea(0,isig1,h,1),juz(0,isig3,h,3))
	meaa(1,isig1,isig3,h) = dotcc(jea(0,isig1,h,1),jua(0,isig3,h,3))
c	
	mezz(2,isig1,isig3,h) = dotcc(jez(0,isig1,h,2),juz(0,isig3,h,3))
	meza(2,isig1,isig3,h) = dotcc(jez(0,isig1,h,2),jua(0,isig3,h,3))
	meaz(2,isig1,isig3,h) = dotcc(jea(0,isig1,h,2),juz(0,isig3,h,3))
	meaa(2,isig1,isig3,h) = dotcc(jea(0,isig1,h,2),jua(0,isig3,h,3))
c	
	mezz(3,isig1,isig3,h) = dotcc(jez(0,isig1,h,1),juz(0,isig3,h,4))
	meza(3,isig1,isig3,h) = dotcc(jez(0,isig1,h,1),jua(0,isig3,h,4))
	meaz(3,isig1,isig3,h) = dotcc(jea(0,isig1,h,1),juz(0,isig3,h,4))
	meaa(3,isig1,isig3,h) = dotcc(jea(0,isig1,h,1),jua(0,isig3,h,4))
c	
	mezz(4,isig1,isig3,h) = dotcc(jez(0,isig1,h,2),juz(0,isig3,h,4))
	meza(4,isig1,isig3,h) = dotcc(jez(0,isig1,h,2),jua(0,isig3,h,4))
	meaz(4,isig1,isig3,h) = dotcc(jea(0,isig1,h,2),juz(0,isig3,h,4))
	meaa(4,isig1,isig3,h) = dotcc(jea(0,isig1,h,2),jua(0,isig3,h,4))
	
c mu+mu- from upper line, e+e- from lower line:
c	
	muzz(1,isig1,isig3,h) = dotcc(juz(0,isig1,h,1),jez(0,isig3,h,3))
	muza(1,isig1,isig3,h) = dotcc(juz(0,isig1,h,1),jea(0,isig3,h,3))
	muaz(1,isig1,isig3,h) = dotcc(jua(0,isig1,h,1),jez(0,isig3,h,3))
	muaa(1,isig1,isig3,h) = dotcc(jua(0,isig1,h,1),jea(0,isig3,h,3))
c	
	muzz(2,isig1,isig3,h) = dotcc(juz(0,isig1,h,2),jez(0,isig3,h,3))
	muza(2,isig1,isig3,h) = dotcc(juz(0,isig1,h,2),jea(0,isig3,h,3))
	muaz(2,isig1,isig3,h) = dotcc(jua(0,isig1,h,2),jez(0,isig3,h,3))
	muaa(2,isig1,isig3,h) = dotcc(jua(0,isig1,h,2),jea(0,isig3,h,3))
c	
	muzz(3,isig1,isig3,h) = dotcc(juz(0,isig1,h,1),jez(0,isig3,h,4))
	muza(3,isig1,isig3,h) = dotcc(juz(0,isig1,h,1),jea(0,isig3,h,4))
	muaz(3,isig1,isig3,h) = dotcc(jua(0,isig1,h,1),jez(0,isig3,h,4))
	muaa(3,isig1,isig3,h) = dotcc(jua(0,isig1,h,1),jea(0,isig3,h,4))
c	
	muzz(4,isig1,isig3,h) = dotcc(juz(0,isig1,h,2),jez(0,isig3,h,4))
	muza(4,isig1,isig3,h) = dotcc(juz(0,isig1,h,2),jea(0,isig3,h,4))
	muaz(4,isig1,isig3,h) = dotcc(jua(0,isig1,h,2),jez(0,isig3,h,4))
	muaa(4,isig1,isig3,h) = dotcc(jua(0,isig1,h,2),jea(0,isig3,h,4))
	

c -------------------------------

	if (lbox.and.(.not.qdamp)) then
c e+e- from upper line, mu+mu- from lower line
c box corr. to upper line:
c	
	mvezz(1,1,isig1,isig3,h) = dotcc(jvez(0,isig1,h,is1,1),juz(0,isig3,h,3))
	mveza(1,1,isig1,isig3,h) = dotcc(jvez(0,isig1,h,is1,1),jua(0,isig3,h,3))
	mveaz(1,1,isig1,isig3,h) = dotcc(jvea(0,isig1,h,is1,1),juz(0,isig3,h,3))
	mveaa(1,1,isig1,isig3,h) = dotcc(jvea(0,isig1,h,is1,1),jua(0,isig3,h,3))
c	
	mvezz(2,1,isig1,isig3,h) = dotcc(jvez(0,isig1,h,is1,2),juz(0,isig3,h,3))
	mveza(2,1,isig1,isig3,h) = dotcc(jvez(0,isig1,h,is1,2),jua(0,isig3,h,3))
	mveaz(2,1,isig1,isig3,h) = dotcc(jvea(0,isig1,h,is1,2),juz(0,isig3,h,3))
	mveaa(2,1,isig1,isig3,h) = dotcc(jvea(0,isig1,h,is1,2),jua(0,isig3,h,3))
c	
	mvezz(3,1,isig1,isig3,h) = dotcc(jvez(0,isig1,h,is1,1),juz(0,isig3,h,4))
	mveza(3,1,isig1,isig3,h) = dotcc(jvez(0,isig1,h,is1,1),jua(0,isig3,h,4))
	mveaz(3,1,isig1,isig3,h) = dotcc(jvea(0,isig1,h,is1,1),juz(0,isig3,h,4))
	mveaa(3,1,isig1,isig3,h) = dotcc(jvea(0,isig1,h,is1,1),jua(0,isig3,h,4))
c	
	mvezz(4,1,isig1,isig3,h) = dotcc(jvez(0,isig1,h,is1,2),juz(0,isig3,h,4))
	mveza(4,1,isig1,isig3,h) = dotcc(jvez(0,isig1,h,is1,2),jua(0,isig3,h,4))
	mveaz(4,1,isig1,isig3,h) = dotcc(jvea(0,isig1,h,is1,2),juz(0,isig3,h,4))
	mveaa(4,1,isig1,isig3,h) = dotcc(jvea(0,isig1,h,is1,2),jua(0,isig3,h,4))
c	
c box corr. to lower line:
c
	mvezz(1,2,isig1,isig3,h) = dotcc(jez(0,isig1,h,1),jvuz(0,isig3,h,is3,3))
	mveza(1,2,isig1,isig3,h) = dotcc(jez(0,isig1,h,1),jvua(0,isig3,h,is3,3))
	mveaz(1,2,isig1,isig3,h) = dotcc(jea(0,isig1,h,1),jvuz(0,isig3,h,is3,3))
	mveaa(1,2,isig1,isig3,h) = dotcc(jea(0,isig1,h,1),jvua(0,isig3,h,is3,3))
c	
	mvezz(2,2,isig1,isig3,h) = dotcc(jez(0,isig1,h,2),jvuz(0,isig3,h,is3,3))
	mveza(2,2,isig1,isig3,h) = dotcc(jez(0,isig1,h,2),jvua(0,isig3,h,is3,3))
	mveaz(2,2,isig1,isig3,h) = dotcc(jea(0,isig1,h,2),jvuz(0,isig3,h,is3,3))
	mveaa(2,2,isig1,isig3,h) = dotcc(jea(0,isig1,h,2),jvua(0,isig3,h,is3,3))
c	
	mvezz(3,2,isig1,isig3,h) = dotcc(jez(0,isig1,h,1),jvuz(0,isig3,h,is3,4))
	mveza(3,2,isig1,isig3,h) = dotcc(jez(0,isig1,h,1),jvua(0,isig3,h,is3,4))
	mveaz(3,2,isig1,isig3,h) = dotcc(jea(0,isig1,h,1),jvuz(0,isig3,h,is3,4))
	mveaa(3,2,isig1,isig3,h) = dotcc(jea(0,isig1,h,1),jvua(0,isig3,h,is3,4))
c	
	mvezz(4,2,isig1,isig3,h) = dotcc(jez(0,isig1,h,2),jvuz(0,isig3,h,is3,4))
	mveza(4,2,isig1,isig3,h) = dotcc(jez(0,isig1,h,2),jvua(0,isig3,h,is3,4))
	mveaz(4,2,isig1,isig3,h) = dotcc(jea(0,isig1,h,2),jvuz(0,isig3,h,is3,4))
	mveaa(4,2,isig1,isig3,h) = dotcc(jea(0,isig1,h,2),jvua(0,isig3,h,is3,4))
	
c mu+mu- from upper line, e+e- from lower line:
c box corr. to upper line:	
c	
	mvuzz(1,1,isig1,isig3,h) = dotcc(jvuz(0,isig1,h,is1,1),jez(0,isig3,h,3))
	mvuza(1,1,isig1,isig3,h) = dotcc(jvuz(0,isig1,h,is1,1),jea(0,isig3,h,3))
	mvuaz(1,1,isig1,isig3,h) = dotcc(jvua(0,isig1,h,is1,1),jez(0,isig3,h,3))
	mvuaa(1,1,isig1,isig3,h) = dotcc(jvua(0,isig1,h,is1,1),jea(0,isig3,h,3))
c	
	mvuzz(2,1,isig1,isig3,h) = dotcc(jvuz(0,isig1,h,is1,2),jez(0,isig3,h,3))
	mvuza(2,1,isig1,isig3,h) = dotcc(jvuz(0,isig1,h,is1,2),jea(0,isig3,h,3))
	mvuaz(2,1,isig1,isig3,h) = dotcc(jvua(0,isig1,h,is1,2),jez(0,isig3,h,3))
	mvuaa(2,1,isig1,isig3,h) = dotcc(jvua(0,isig1,h,is1,2),jea(0,isig3,h,3))
c	
	mvuzz(3,1,isig1,isig3,h) = dotcc(jvuz(0,isig1,h,is1,1),jez(0,isig3,h,4))
	mvuza(3,1,isig1,isig3,h) = dotcc(jvuz(0,isig1,h,is1,1),jea(0,isig3,h,4))
	mvuaz(3,1,isig1,isig3,h) = dotcc(jvua(0,isig1,h,is1,1),jez(0,isig3,h,4))
	mvuaa(3,1,isig1,isig3,h) = dotcc(jvua(0,isig1,h,is1,1),jea(0,isig3,h,4))
c	
	mvuzz(4,1,isig1,isig3,h) = dotcc(jvuz(0,isig1,h,is1,2),jez(0,isig3,h,4))
	mvuza(4,1,isig1,isig3,h) = dotcc(jvuz(0,isig1,h,is1,2),jea(0,isig3,h,4))
	mvuaz(4,1,isig1,isig3,h) = dotcc(jvua(0,isig1,h,is1,2),jez(0,isig3,h,4))
	mvuaa(4,1,isig1,isig3,h) = dotcc(jvua(0,isig1,h,is1,2),jea(0,isig3,h,4))
	
c box corr. to lower line:	
c	
	mvuzz(1,2,isig1,isig3,h) = dotcc(juz(0,isig1,h,1),jvez(0,isig3,h,is3,3))
	mvuza(1,2,isig1,isig3,h) = dotcc(juz(0,isig1,h,1),jvea(0,isig3,h,is3,3))
	mvuaz(1,2,isig1,isig3,h) = dotcc(jua(0,isig1,h,1),jvez(0,isig3,h,is3,3))
	mvuaa(1,2,isig1,isig3,h) = dotcc(jua(0,isig1,h,1),jvea(0,isig3,h,is3,3))
c	
	mvuzz(2,2,isig1,isig3,h) = dotcc(juz(0,isig1,h,2),jvez(0,isig3,h,is3,3))
	mvuza(2,2,isig1,isig3,h) = dotcc(juz(0,isig1,h,2),jvea(0,isig3,h,is3,3))
	mvuaz(2,2,isig1,isig3,h) = dotcc(jua(0,isig1,h,2),jvez(0,isig3,h,is3,3))
	mvuaa(2,2,isig1,isig3,h) = dotcc(jua(0,isig1,h,2),jvea(0,isig3,h,is3,3))
c	
	mvuzz(3,2,isig1,isig3,h) = dotcc(juz(0,isig1,h,1),jvez(0,isig3,h,is3,4))
	mvuza(3,2,isig1,isig3,h) = dotcc(juz(0,isig1,h,1),jvea(0,isig3,h,is3,4))
	mvuaz(3,2,isig1,isig3,h) = dotcc(jua(0,isig1,h,1),jvez(0,isig3,h,is3,4))
	mvuaa(3,2,isig1,isig3,h) = dotcc(jua(0,isig1,h,1),jvea(0,isig3,h,is3,4))
c	
	mvuzz(4,2,isig1,isig3,h) = dotcc(juz(0,isig1,h,2),jvez(0,isig3,h,is3,4))
	mvuza(4,2,isig1,isig3,h) = dotcc(juz(0,isig1,h,2),jvea(0,isig3,h,is3,4))
	mvuaz(4,2,isig1,isig3,h) = dotcc(jua(0,isig1,h,2),jvez(0,isig3,h,is3,4))
	mvuaa(4,2,isig1,isig3,h) = dotcc(jua(0,isig1,h,2),jvea(0,isig3,h,is3,4))
	
	endif !lbox
	
c
c  for the q^mu*q^nu/M_V^2 terms in the gauge boson propagators we need
	
	do i = 2,3 ! type of exchanged boson (Z,W), zero for A
	
	zezz(isig1,isig3,h,i) = jj21ze(isig1,h)*jj43zu(isig3,h)*zm2i(i)
	zeza(isig1,isig3,h,i) = jj21ze(isig1,h)*jj43au(isig3,h)*zm2i(i)
	zeaz(isig1,isig3,h,i) = jj21ae(isig1,h)*jj43zu(isig3,h)*zm2i(i)
	zeaa(isig1,isig3,h,i) = jj21ae(isig1,h)*jj43au(isig3,h)*zm2i(i)

	zuzz(isig1,isig3,h,i) = jj21zu(isig1,h)*jj43ze(isig3,h)*zm2i(i)
	zuza(isig1,isig3,h,i) = jj21zu(isig1,h)*jj43ae(isig3,h)*zm2i(i)
	zuaz(isig1,isig3,h,i) = jj21au(isig1,h)*jj43ze(isig3,h)*zm2i(i)
	zuaa(isig1,isig3,h,i) = jj21au(isig1,h)*jj43ae(isig3,h)*zm2i(i)
	
	enddo !i


c -------------------------------
c
c      do k = 1,4 
        if (nc_type) then 
     
      	      propbbez(k,isig1,isig3) = 
     1 	     	prop_ee(2)*clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3)
     
      	      propbbuz(k,isig1,isig3) = 
     1	     	prop_uu(2)*clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3)
     
      	      propbbea(k,isig1,isig3) = 
     1 	     	prop_ee(1)*clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3)
     
      	      propbbua(k,isig1,isig3) = 
     1	    	prop_uu(1)*clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3)     

     
c for NC make use of: ifl(1,k) = ifl (2,k) and ifl(3,k) = ifl (4,k) 
c 	gauge terms zezz etc cancel in sum of NC contributions from leg1&2/3&4 
c       (not for CC)
	     
      mat(k,isig1,isig3,h,6) = 
     1 ((mezz(1,isig1,isig3,h)+mezz(2,isig1,isig3,h))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	(meza(1,isig1,isig3,h)+meza(2,isig1,isig3,h))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	(meaz(1,isig1,isig3,h)+meaz(2,isig1,isig3,h))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	(meaa(1,isig1,isig3,h)+meaa(2,isig1,isig3,h))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	      propbbea(k,isig1,isig3)
     1	+
     1 (((mezz(1,isig1,isig3,h)+zezz(isig1,isig3,h,2))+
     1	 (mezz(2,isig1,isig3,h)-zezz(isig1,isig3,h,2)))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	((meza(1,isig1,isig3,h)+zeza(isig1,isig3,h,2))+
     1	 (meza(2,isig1,isig3,h)-zeza(isig1,isig3,h,2)))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	((meaz(1,isig1,isig3,h)+zeaz(isig1,isig3,h,2))+
     1	 (meaz(2,isig1,isig3,h)-zeaz(isig1,isig3,h,2)))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	((meaa(1,isig1,isig3,h)+zeaa(isig1,isig3,h,2))+
     1	 (meaa(2,isig1,isig3,h)-zeaa(isig1,isig3,h,2)))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	      propbbez(k,isig1,isig3)
     1 +
     1 ((muzz(1,isig1,isig3,h)+muzz(2,isig1,isig3,h))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	(muza(1,isig1,isig3,h)+muza(2,isig1,isig3,h))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	(muaz(1,isig1,isig3,h)+muaz(2,isig1,isig3,h))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	(muaa(1,isig1,isig3,h)+muaa(2,isig1,isig3,h))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	      propbbua(k,isig1,isig3)
     1 +
     1 (((muzz(1,isig1,isig3,h)+zuzz(isig1,isig3,h,2))+
     1  ( muzz(2,isig1,isig3,h)-zuzz(isig1,isig3,h,2)))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	((muza(1,isig1,isig3,h)+zuza(isig1,isig3,h,2))+
     1	 (muza(2,isig1,isig3,h)-zuza(isig1,isig3,h,2)))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	((muaz(1,isig1,isig3,h)+zuaz(isig1,isig3,h,2))+
     1	 (muaz(2,isig1,isig3,h)-zuaz(isig1,isig3,h,2)))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	((muaa(1,isig1,isig3,h)+zuaa(isig1,isig3,h,2))+
     1	 (muaa(2,isig1,isig3,h)-zuaa(isig1,isig3,h,2)))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	      propbbuz(k,isig1,isig3)
     3 +
     3 ((mezz(3,isig1,isig3,h)+mezz(4,isig1,isig3,h))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  (meza(3,isig1,isig3,h)+meza(4,isig1,isig3,h))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  (meaz(3,isig1,isig3,h)+meaz(4,isig1,isig3,h))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  (meaa(3,isig1,isig3,h)+meaa(4,isig1,isig3,h))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	      propbbea(k,isig1,isig3)
     3 +
     3 (((mezz(3,isig1,isig3,h)-zezz(isig1,isig3,h,2))+
     3   (mezz(4,isig1,isig3,h)+zezz(isig1,isig3,h,2)))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  ((meza(3,isig1,isig3,h)-zeza(isig1,isig3,h,2))+
     3   (meza(4,isig1,isig3,h)+zeza(isig1,isig3,h,2)))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  ((meaz(3,isig1,isig3,h)-zeaz(isig1,isig3,h,2))+
     3   (meaz(4,isig1,isig3,h)+zeaz(isig1,isig3,h,2)))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  ((meaa(3,isig1,isig3,h)-zeaa(isig1,isig3,h,2))+
     3   (meaa(4,isig1,isig3,h)+zeaa(isig1,isig3,h,2)))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	      propbbez(k,isig1,isig3)
     3 +
     3 ((muzz(3,isig1,isig3,h)+muzz(4,isig1,isig3,h))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  (muza(3,isig1,isig3,h)+muza(4,isig1,isig3,h))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  (muaz(3,isig1,isig3,h)+muaz(4,isig1,isig3,h))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  (muaa(3,isig1,isig3,h)+muaa(4,isig1,isig3,h))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	      propbbua(k,isig1,isig3)
     3 +
     3 (((muzz(3,isig1,isig3,h)-zuzz(isig1,isig3,h,2))+
     3   (muzz(4,isig1,isig3,h)+zuzz(isig1,isig3,h,2)))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  ((muza(3,isig1,isig3,h)-zuza(isig1,isig3,h,2))+
     3   (muza(4,isig1,isig3,h)+zuza(isig1,isig3,h,2)))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  ((muaz(3,isig1,isig3,h)-zuaz(isig1,isig3,h,2))+
     3   (muaz(4,isig1,isig3,h)+zuaz(isig1,isig3,h,2)))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  ((muaa(3,isig1,isig3,h)-zuaa(isig1,isig3,h,2))+
     3   (muaa(4,isig1,isig3,h)+zuaa(isig1,isig3,h,2)))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	      propbbuz(k,isig1,isig3)   
      
      endif !nc
c      enddo !k

	   enddo ! isig3,h
	enddo ! isig1
c
c -----------------
c
c      do k = 5,6 ! charged current

      if (cc_type) then 

      isig1 = -1
      isig3 = -1
            	    
      propbbe =  prop_ee(3)*clr(3,3,-1)**2
      propbbu =  prop_uu(3)*clr(3,3,-1)**2
             
      mat(k,isig1,isig3,h,6) = 
     1 ((mezz(1,isig1,isig3,h)+zezz(isig1,isig3,h,3))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	(meza(1,isig1,isig3,h)+zeza(isig1,isig3,h,3))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	(meaz(1,isig1,isig3,h)+zeaz(isig1,isig3,h,3))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	(meaa(1,isig1,isig3,h)+zeaa(isig1,isig3,h,3))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1		propbbe     
     2 +
     2 ((mezz(2,isig1,isig3,h)-zezz(isig1,isig3,h,3))*
     2		clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     2	(meza(2,isig1,isig3,h)-zeza(isig1,isig3,h,3))*
     2		clr(ifl(2,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     2	(meaz(2,isig1,isig3,h)-zeaz(isig1,isig3,h,3))*
     2		clr(ifl(2,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     2	(meaa(2,isig1,isig3,h)-zeaa(isig1,isig3,h,3))*
     2		clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     2		propbbe     
     3 +
     3 ((mezz(3,isig1,isig3,h)-zezz(isig1,isig3,h,3))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  (meza(3,isig1,isig3,h)-zeza(isig1,isig3,h,3))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  (meaz(3,isig1,isig3,h)-zeaz(isig1,isig3,h,3))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  (meaa(3,isig1,isig3,h)-zeaa(isig1,isig3,h,3))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3		propbbe     
     4 +
     4 ((mezz(4,isig1,isig3,h)+zezz(isig1,isig3,h,3))*
     4	      clr(ifl(2,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     4  (meza(4,isig1,isig3,h)+zeza(isig1,isig3,h,3))*
     4	      clr(ifl(2,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     4  (meaz(4,isig1,isig3,h)+zeaz(isig1,isig3,h,3))*
     4	      clr(ifl(2,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     4  (meaa(4,isig1,isig3,h)+zeaa(isig1,isig3,h,3))*
     4	      clr(ifl(2,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     4		propbbe 
     1	+        
     1 ((muzz(1,isig1,isig3,h)+zuzz(isig1,isig3,h,3))*
     1	       clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	(muza(1,isig1,isig3,h)+zuza(isig1,isig3,h,3))*
     1	       clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	(muaz(1,isig1,isig3,h)+zuaz(isig1,isig3,h,3))*
     1	       clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	(muaa(1,isig1,isig3,h)+zuaa(isig1,isig3,h,3))*
     1	       clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	       propbbu    
     2 +
     2 ((muzz(2,isig1,isig3,h)-zuzz(isig1,isig3,h,3))*
     2	       clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     2	(muza(2,isig1,isig3,h)-zuza(isig1,isig3,h,3))*
     2	       clr(ifl(2,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     2	(muaz(2,isig1,isig3,h)-zuaz(isig1,isig3,h,3))*
     2	       clr(ifl(2,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     2	(muaa(2,isig1,isig3,h)-zuaa(isig1,isig3,h,3))*
     2	       clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     2	       propbbu     
     3 +
     3 ((muzz(3,isig1,isig3,h)-zuzz(isig1,isig3,h,3))*
     3	      clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  (muza(3,isig1,isig3,h)-zuza(isig1,isig3,h,3))*
     3	      clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  (muaz(3,isig1,isig3,h)-zuaz(isig1,isig3,h,3))*
     3	      clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  (muaa(3,isig1,isig3,h)-zuaa(isig1,isig3,h,3))*
     3	      clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	       propbbu    
     4 +
     4 ((muzz(4,isig1,isig3,h)+zuzz(isig1,isig3,h,3))*
     4	     clr(ifl(2,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     4  (muza(4,isig1,isig3,h)+zuza(isig1,isig3,h,3))*
     4	     clr(ifl(2,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     4  (muaz(4,isig1,isig3,h)+zuaz(isig1,isig3,h,3))*
     4	     clr(ifl(2,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     4  (muaa(4,isig1,isig3,h)+zuaa(isig1,isig3,h,3))*
     4	      clr(ifl(2,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     1		propbbu
      
      endif !cc
c      enddo !k

c---------------------------------------------------
      
      if (lbox.and.(.not.qdamp)) then 
        ! no need to include gauge terms (contraction of box with 
      		     !		momentum -> triangle)	
         do i = 1,2      ! 1 is for upper line, 2 for lower line QCD correction
            jj = 3 + 3*i ! stored in matv(...,6) and matv(...,9) respectively 
	    do isig1 = -1,1,2
	      do isig3 = -1,1,2

c                do k = 1,4 
                 if (nc_type) then 
      
      matv(k,isig1,isig3,h,jj) = 
     1 ((mvezz(1,i,isig1,isig3,h)+mvezz(2,i,isig1,isig3,h))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	(mveza(1,i,isig1,isig3,h)+mveza(2,i,isig1,isig3,h))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	(mveaz(1,i,isig1,isig3,h)+mveaz(2,i,isig1,isig3,h))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	(mveaa(1,i,isig1,isig3,h)+mveaa(2,i,isig1,isig3,h))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	      propbbea(k,isig1,isig3)
     1	+
     1 (((mvezz(1,i,isig1,isig3,h))+(mvezz(2,i,isig1,isig3,h)))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	((mveza(1,i,isig1,isig3,h))+(mveza(2,i,isig1,isig3,h)))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	((mveaz(1,i,isig1,isig3,h))+(mveaz(2,i,isig1,isig3,h)))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	((mveaa(1,i,isig1,isig3,h))+(mveaa(2,i,isig1,isig3,h)))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	      propbbez(k,isig1,isig3)
     1 +
     1 ((mvuzz(1,i,isig1,isig3,h)+mvuzz(2,i,isig1,isig3,h))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	(mvuza(1,i,isig1,isig3,h)+mvuza(2,i,isig1,isig3,h))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	(mvuaz(1,i,isig1,isig3,h)+mvuaz(2,i,isig1,isig3,h))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	(mvuaa(1,i,isig1,isig3,h)+mvuaa(2,i,isig1,isig3,h))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	      propbbua(k,isig1,isig3)
     1 +
     1 (((mvuzz(1,i,isig1,isig3,h))+( mvuzz(2,i,isig1,isig3,h)))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	((mvuza(1,i,isig1,isig3,h))+(mvuza(2,i,isig1,isig3,h)))*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	((mvuaz(1,i,isig1,isig3,h))+(mvuaz(2,i,isig1,isig3,h)))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	((mvuaa(1,i,isig1,isig3,h))+(mvuaa(2,i,isig1,isig3,h)))*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	      propbbuz(k,isig1,isig3)
     3 +
     3 ((mvezz(3,i,isig1,isig3,h)+mvezz(4,i,isig1,isig3,h))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  (mveza(3,i,isig1,isig3,h)+mveza(4,i,isig1,isig3,h))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  (mveaz(3,i,isig1,isig3,h)+mveaz(4,i,isig1,isig3,h))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  (mveaa(3,i,isig1,isig3,h)+mveaa(4,i,isig1,isig3,h))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	      propbbea(k,isig1,isig3)
     3 +
     3 (((mvezz(3,i,isig1,isig3,h))+(mvezz(4,i,isig1,isig3,h)))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  ((mveza(3,i,isig1,isig3,h))+(mveza(4,i,isig1,isig3,h)))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  ((mveaz(3,i,isig1,isig3,h))+(mveaz(4,i,isig1,isig3,h)))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  ((mveaa(3,i,isig1,isig3,h))+(mveaa(4,i,isig1,isig3,h)))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	      propbbez(k,isig1,isig3)
     3 +
     3 ((mvuzz(3,i,isig1,isig3,h)+mvuzz(4,i,isig1,isig3,h))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  (mvuza(3,i,isig1,isig3,h)+mvuza(4,i,isig1,isig3,h))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  (mvuaz(3,i,isig1,isig3,h)+mvuaz(4,i,isig1,isig3,h))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  (mvuaa(3,i,isig1,isig3,h)+mvuaa(4,i,isig1,isig3,h))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	      propbbua(k,isig1,isig3)
     3 +
     3 (((mvuzz(3,i,isig1,isig3,h))+(mvuzz(4,i,isig1,isig3,h)))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  ((mvuza(3,i,isig1,isig3,h))+(mvuza(4,i,isig1,isig3,h)))*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  ((mvuaz(3,i,isig1,isig3,h))+(mvuaz(4,i,isig1,isig3,h)))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  ((mvuaa(3,i,isig1,isig3,h))+(mvuaa(4,i,isig1,isig3,h)))*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	      propbbuz(k,isig1,isig3)   
      

                endif !nc   
c       		enddo !k
       
       		enddo !isig3
       	    enddo !isig1

c      do k = 5,6
      if (cc_type) then       
      isig1 = -1
      isig3 = -1
      
      matv(k,isig1,isig3,h,jj) = 
     1 (mvezz(1,i,isig1,isig3,h)*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	mveza(1,i,isig1,isig3,h)*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	mveaz(1,i,isig1,isig3,h)*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	mveaa(1,i,isig1,isig3,h)*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	    propbbe
     2 +
     2 (mvezz(2,i,isig1,isig3,h)*
     2		clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     2	mveza(2,i,isig1,isig3,h)*
     2		clr(ifl(2,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     2	mveaz(2,i,isig1,isig3,h)*
     2		clr(ifl(2,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     2	mveaa(2,i,isig1,isig3,h)*
     2		clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     2	    propbbe
     3 +
     3 (mvezz(3,i,isig1,isig3,h)*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  mveza(3,i,isig1,isig3,h)*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  mveaz(3,i,isig1,isig3,h)*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  mveaa(3,i,isig1,isig3,h)*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	    propbbe
     4 +
     4 (mvezz(4,i,isig1,isig3,h)*
     4	      clr(ifl(2,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     4  mveza(4,i,isig1,isig3,h)*
     4	      clr(ifl(2,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     4  mveaz(4,i,isig1,isig3,h)*
     4	      clr(ifl(2,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     4  mveaa(4,i,isig1,isig3,h)*
     4	      clr(ifl(2,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     1	    propbbe
     1	+
     1 (mvuzz(1,i,isig1,isig3,h)*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     1	mvuza(1,i,isig1,isig3,h)*
     1		clr(ifl(1,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     1	mvuaz(1,i,isig1,isig3,h)*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     1	mvuaa(1,i,isig1,isig3,h)*
     1		clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     1	    propbbu
     2 +
     2 (mvuzz(2,i,isig1,isig3,h)*
     2		clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3) + 
     2	mvuza(2,i,isig1,isig3,h)*
     2		clr(ifl(2,k),2,isig1)*clr(ifl(3,k),1,isig3)+ 
     2	mvuaz(2,i,isig1,isig3,h)*
     2		clr(ifl(2,k),1,isig1)*clr(ifl(3,k),2,isig3)+ 
     2	mvuaa(2,i,isig1,isig3,h)*
     2		clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3))*
     2	    propbbu
     3 +
     3 (mvuzz(3,i,isig1,isig3,h)*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     3  mvuza(3,i,isig1,isig3,h)*
     3	       clr(ifl(1,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     3  mvuaz(3,i,isig1,isig3,h)*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     3  mvuaa(3,i,isig1,isig3,h)*
     3	       clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     3	    propbbu
     4 +
     4 (mvuzz(4,i,isig1,isig3,h)*
     4	      clr(ifl(2,k),2,isig1)*clr(ifl(4,k),2,isig3) + 
     4  mvuza(4,i,isig1,isig3,h)*
     4	      clr(ifl(2,k),2,isig1)*clr(ifl(4,k),1,isig3)+ 
     4  mvuaz(4,i,isig1,isig3,h)*
     4	      clr(ifl(2,k),1,isig1)*clr(ifl(4,k),2,isig3)+ 
     4  mvuaa(4,i,isig1,isig3,h)*
     4	      clr(ifl(2,k),1,isig1)*clr(ifl(4,k),1,isig3))*
     4	    propbbu
      
      endif !cc
c      enddo !k

	 enddo !i
       endif !lbox	 

       enddo !h

c
c -------------------------------------------------------------------
c
c and now, finally, the pentagon contributions, i.e. two W's emitted from the
c  same quark line
c
c prerequisites for virtual corrections:	
      if (lpent.and.icount1.eq.-1) then
c	 print*, 'pent. gauge check criterion chosen: mv5/mvc.gt.0.1d0'
         icount1 = icount1+1
      endif !icount1
      if (lpt) then
	 if (icountmax.eq.1) icountmax = 10	 
      endif !lpt   
	
      if (lpent .and. lzs(js1).and.(.not.qdamp)) then     
       ! need new pentagon graphs for 12 line

         do h = hmin,hmax,hstep 

         musq = -p21(4)
         if (NLO.eq.1) then
            do kl = 1,3
               call J_virtual_tri_box_pent_isig45(psi,p,1,2,sign, musq,
     1              ze(1,h), zu(1,h), zero, zero, kl, -5, j5zzeu(0,-1,h,kl,is1,1))
               call J_virtual_tri_box_pent_isig45(psi,p,1,2,sign, musq,
     1              zu(1,h), ze(1,h), zero, zero, kl, -5, j5zzue(0,-1,h,kl,is1,1))
               
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1	            psi,p,1,2,sign, musq,
     1              ze(1,h), au(1,h), zero, zero, kl, -5, j5zaeu(0,-1,h,kl,is1,1))
               call J_virtual_tri_box_pent_isig45(psi,p,1,2,sign, musq,
     1              zu(1,h), ae(1,h), zero, zero, kl, -5, j5zaue(0,-1,h,kl,is1,1))
               
	       call J_virtual_tri_box_pent_isig45(psi,p,1,2,sign, musq,
     1              ae(1,h), zu(1,h), zero, zero, kl, -5, j5azeu(0,-1,h,kl,is1,1))
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1	            psi,p,1,2,sign, musq,
     1  	    au(1,h), ze(1,h), zero, zero, kl, -5, j5azue(0,-1,h,kl,is1,1))
	     
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1	            psi,p,1,2,sign, musq,
     1  	    ae(1,h), au(1,h), zero, zero, kl, -5, j5aaeu(0,-1,h,kl,is1,1))
	       if (bos.eq.22)  call J_virtual_tri_box_pent_isig45(
     1	            psi,p,1,2,sign,musq,
     1  	    au(1,h), ae(1,h), zero, zero, kl, -5, j5aaue(0,-1,h,kl,is1,1))

            enddo
            icount1= icount1+1
         
	 elseif (nlo.eq.-5) then
            do kl = 1,3
               call J_virtual_tri_box_pent_isig45(psi,p,1,2,sign, musq,
     1              zet(1,h), zut(1,h), xxez, xxuz, kl, -5, j5zzeu(0,-1,h,kl,is1,1) )
	       call J_virtual_tri_box_pent_isig45(psi,p,1,2,sign, musq,
     1  	    zut(1,h), zet(1,h), xxuz, xxez, kl, -5, j5zzue(0,-1,h,kl,is1,1) )
 	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1	            psi,p,1,2,sign, musq,
     1  	    zet(1,h), aut(1,h), xxez, xxua, kl, -5, j5zaeu(0,-1,h,kl,is1,1) )
	       call J_virtual_tri_box_pent_isig45(psi,p,1,2,sign, musq,
     1  	    zut(1,h), aet(1,h), xxuz, xxea, kl, -5, j5zaue(0,-1,h,kl,is1,1) )
	       
	       call J_virtual_tri_box_pent_isig45(psi,p,1,2,sign, musq,
     1  	    aet(1,h), zut(1,h), xxea, xxuz, kl, -5, j5azeu(0,-1,h,kl,is1,1) )
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1	            psi,p,1,2,sign, musq,
     1 	     	    aut(1,h), zet(1,h), xxua, xxez, kl, -5, j5azue(0,-1,h,kl,is1,1) )
	       
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1	            psi,p,1,2,sign, musq,
     1 	     	    aet(1,h), aut(1,h), xxea, xxua, kl, -5, j5aaeu(0,-1,h,kl,is1,1) )
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1	            psi,p,1,2,sign, musq,
     1 	     	    aut(1,h), aet(1,h), xxua, xxea, kl, -5, j5aaue(0,-1,h,kl,is1,1) )
            enddo
            icount1= icount1+1
         
	 else
            do kl = 1,3
               call J_virtual_tri_box_pent_isig45(psi,p,1,2,sign, musq,
     1              zet(1,h), zut(1,h), xxez, xxuz, kl, 5, j5zzeu(0,-1,h,kl,is1,1) )
	       call J_virtual_tri_box_pent_isig45(psi,p,1,2,sign, musq,
     1  	    zut(1,h), zet(1,h), xxuz, xxez, kl, 5, j5zzue(0,-1,h,kl,is1,1) )
	       
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1	            psi,p,1,2,sign, musq,
     1  	    zet(1,h), aut(1,h), xxez, xxua, kl, 5, j5zaeu(0,-1,h,kl,is1,1) )
	       call J_virtual_tri_box_pent_isig45(psi,p,1,2,sign, musq,
     1  	    zut(1,h), aet(1,h), xxuz, xxea, kl, 5, j5zaue(0,-1,h,kl,is1,1) )
	       
	      call J_virtual_tri_box_pent_isig45(psi,p,1,2,sign, musq,
     1  	    aet(1,h), zut(1,h), xxea, xxuz, kl, 5, j5azeu(0,-1,h,kl,is1,1) )
	      if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1	            psi,p,1,2,sign, musq,
     1  	    aut(1,h), zet(1,h), xxua, xxez, kl, 5, j5azue(0,-1,h,kl,is1,1) )
	       
	      if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1	            psi,p,1,2,sign, musq,
     1  	    aet(1,h), aut(1,h), xxea, xxua, kl, 5, j5aaeu(0,-1,h,kl,is1,1) )
	      if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1	            psi,p,1,2,sign, musq,
     1  	    aut(1,h), aet(1,h), xxua, xxea, kl, 5, j5aaue(0,-1,h,kl,is1,1) )
            enddo
         endif !nlo


c for bos = 21: there is no A->vm vm~ contribution:
	if (bos.eq.21) then
	     do kl = 1,3	
		do mu = 0,3
		   do isig = -1,1,2
		      j5zaeu(mu,isig,h,kl,is1,1) = 0d0
		      j5azue(mu,isig,h,kl,is1,1) = 0d0
		      j5aaeu(mu,isig,h,kl,is1,1) = 0d0
		      j5aaue(mu,isig,h,kl,is1,1) = 0d0
		   enddo !isig
		enddo !mu
             enddo !kl
	 endif    


         lgc(js1) = .false.
c         lzs(js1) = .false.
         if (lpt) then
	 
c	    icountmax = 2**(n2max1-9)
c	    if(icountmax.eq.1) icountmax = 10

c gauge check (compare contraction of pentagonline with momentum 
c	of attached current to corresponding boxline result 
c	... should give ratio ~1 ):
c            if (sign(1).eq.2 .and. sign(3).eq.1) then

            if (.true.) then
               j5zzeu_check(:,:,:,:,1)=j5zzeu(:,:,h,:,:,1)
               j5zzue_check(:,:,:,:,1)=j5zzue(:,:,h,:,:,1)
               j5zaeu_check(:,:,:,:,1)=j5zaeu(:,:,h,:,:,1)
               j5zaue_check(:,:,:,:,1)=j5zaue(:,:,h,:,:,1)
               j5azeu_check(:,:,:,:,1)=j5azeu(:,:,h,:,:,1)
               j5azue_check(:,:,:,:,1)=j5azue(:,:,h,:,:,1)
               j5aaeu_check(:,:,:,:,1)=j5aaeu(:,:,h,:,:,1)
               j5aaue_check(:,:,:,:,1)=j5aaue(:,:,h,:,:,1)

               call gauge_check_isig_5(j5zzeu_check(0,-1,1,is1,1),p43,
     #	       				         1,psi,p,1,2,zet(1,h),zut(1,h),0d0)
	       if(bad_gauge_isig) bad_gauge = .true.
	       call gauge_check_isig_5(j5zzue_check(0,-1,1,is1,1),p43,
     #	       				         1,psi,p,1,2,zut(1,h),zet(1,h),0d0)
	       if(bad_gauge_isig) bad_gauge = .true.
	      
	       if (bos.eq.22) call gauge_check_isig_5(j5zaeu_check(0,-1,1,is1,1),
     #	       				      p43,1,psi,p,1,2,zet(1,h),aut(1,h),0d0)
	       if(bad_gauge_isig) bad_gauge = .true.
	       call gauge_check_isig_5(j5zaue_check(0,-1,1,is1,1),p43,
     #	       				         1,psi,p,1,2,zut(1,h),aet(1,h),0d0)
	       if(bad_gauge_isig) bad_gauge = .true.
	      
	       call gauge_check_isig_5(j5azeu_check(0,-1,1,is1,1),p43,
     #	       				         1,psi,p,1,2,aet(1,h),zut(1,h),0d0)
	       if(bad_gauge_isig) bad_gauge = .true.
	       if (bos.eq.22) call gauge_check_isig_5(j5azue_check(0,-1,1,is1,1),
     #	       				      p43,1,psi,p,1,2,aut(1,h),zet(1,h),0d0)
	       if(bad_gauge_isig) bad_gauge = .true.
	      
	       if (bos.eq.22) call gauge_check_isig_5(j5aaeu_check(0,-1,1,is1,1),
     #	       				      p43,1,psi,p,1,2,aet(1,h),aut(1,h),0d0)
	       if(bad_gauge_isig) bad_gauge = .true.
	       if (bos.eq.22) call gauge_check_isig_5(j5aaue_check(0,-1,1,is1,1),
     #	       				      p43,1,psi,p,1,2,aut(1,h),aet(1,h),0d0) 
	       if(bad_gauge_isig) bad_gauge = .true.
  	    endif
	    if(bad_gauge) then
               icb1 = icb1+1
               lgc(js1) = .true.
            endif
            if (mod(icount1,icountmax).eq.0 ) then
               print*,' bad gauge check fraction (upper line)',
     %         real(icb1)/real(icount1), js1
c               print*,' bad gauge check params ',real(icb1),real(icount1)
            endif
          
	    
         endif   ! lpt

         enddo !h

      endif !lpent



c pentagon corr. to lower line:

      if (lpent .and. lzs(js3).and.(.not.qdamp)) then     
         ! need new pentagon graphs for 34 line

         do h = hmin,hmax,hstep

         musq = -p43(4)
         if (NLO.eq.1) then
            do kl = 1,3
               call J_virtual_tri_box_pent_isig45(psi,p,3,4,sign, musq,
     1              ze(1,h), zu(1,h), zero, zero, kl, -5, j5zzeu(0,-1,h,kl,is3,2))
               call J_virtual_tri_box_pent_isig45(psi,p,3,4,sign, musq,
     1              zu(1,h), ze(1,h), zero, zero, kl, -5, j5zzue(0,-1,h,kl,is3,2))
               
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1		    psi,p,3,4,sign, musq,
     1  	    ze(1,h), au(1,h), zero, zero, kl, -5, j5zaeu(0,-1,h,kl,is3,2))
               call J_virtual_tri_box_pent_isig45(psi,p,3,4,sign, musq,
     1              zu(1,h), ae(1,h), zero, zero, kl, -5, j5zaue(0,-1,h,kl,is3,2))
               
	       call J_virtual_tri_box_pent_isig45(psi,p,3,4,sign, musq,
     1              ae(1,h), zu(1,h), zero, zero, kl, -5, j5azeu(0,-1,h,kl,is3,2))
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1		    psi,p,3,4,sign, musq,
     1  	    au(1,h), ze(1,h), zero, zero, kl, -5, j5azue(0,-1,h,kl,is3,2))
	     
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1		    psi,p,3,4,sign, musq,
     1        	    ae(1,h), au(1,h), zero, zero, kl, -5, j5aaeu(0,-1,h,kl,is3,2))
	       if (bos.eq.22)  call J_virtual_tri_box_pent_isig45(
     1		    psi,p,3,4,sign, musq,
     1  	    au(1,h), ae(1,h), zero, zero, kl, -5, j5aaue(0,-1,h,kl,is3,2))
            enddo
            icount2= icount2+1
         
	 elseif (nlo.eq.-5) then
            do kl = 1,3
               call J_virtual_tri_box_pent_isig45(psi,p,3,4,sign, musq,
     1              zet(1,h), zut(1,h), xxez, xxuz, kl, -5, j5zzeu(0,-1,h,kl,is3,2) )
               call J_virtual_tri_box_pent_isig45(psi,p,3,4,sign, musq,
     1              zut(1,h), zet(1,h), xxuz, xxez, kl, -5, j5zzue(0,-1,h,kl,is3,2) )
               
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1		    psi,p,3,4,sign, musq,
     1  	    zet(1,h), aut(1,h), xxez, xxua, kl, -5, j5zaeu(0,-1,h,kl,is3,2) )
	       call J_virtual_tri_box_pent_isig45(psi,p,3,4,sign, musq,
     1		    zut(1,h), aet(1,h), xxuz, xxea, kl, -5, j5zaue(0,-1,h,kl,is3,2) )
	      
               call J_virtual_tri_box_pent_isig45(psi,p,3,4,sign, musq,
     1		    aet(1,h), zut(1,h), xxea, xxuz, kl, -5, j5azeu(0,-1,h,kl,is3,2) )
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1		    psi,p,3,4,sign, musq,
     1  	    aut(1,h), zet(1,h), xxua, xxez, kl, -5, j5azue(0,-1,h,kl,is3,2) )
	      
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1		    psi,p,3,4,sign, musq,
     1  	    aet(1,h), aut(1,h), xxea, xxua, kl, -5, j5aaeu(0,-1,h,kl,is3,2) )
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1		    psi,p,3,4,sign, musq,
     1  	    aut(1,h), aet(1,h), xxua, xxea, kl, -5, j5aaue(0,-1,h,kl,is3,2) )
           enddo
            icount2= icount2+1
         
	 else
            do kl = 1,3
               call J_virtual_tri_box_pent_isig45(psi,p,3,4,sign, musq,
     1              zet(1,h), zut(1,h), xxez, xxuz, kl, 5, j5zzeu(0,-1,h,kl,is3,2) )
               call J_virtual_tri_box_pent_isig45(psi,p,3,4,sign, musq,
     1              zut(1,h), zet(1,h), xxuz, xxez, kl, 5, j5zzue(0,-1,h,kl,is3,2) )
               
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1		    psi,p,3,4,sign, musq,
     1  	    zet(1,h), aut(1,h), xxez, xxua, kl, 5, j5zaeu(0,-1,h,kl,is3,2) )
               call J_virtual_tri_box_pent_isig45(psi,p,3,4,sign, musq,
     1              zut(1,h), aet(1,h), xxuz, xxea, kl, 5, j5zaue(0,-1,h,kl,is3,2) )
               
	       call J_virtual_tri_box_pent_isig45(psi,p,3,4,sign, musq,
     1              aet(1,h), zut(1,h), xxea, xxuz, kl, 5, j5azeu(0,-1,h,kl,is3,2) )
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1		    psi,p,3,4,sign, musq,
     1  	    aut(1,h), zet(1,h), xxua, xxez, kl, 5, j5azue(0,-1,h,kl,is3,2) )
	      
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1		    psi,p,3,4,sign, musq,
     1  	    aet(1,h), aut(1,h), xxea, xxua, kl, 5, j5aaeu(0,-1,h,kl,is3,2) )
	       if (bos.eq.22) call J_virtual_tri_box_pent_isig45(
     1		    psi,p,3,4,sign, musq,
     1  	    aut(1,h), aet(1,h), xxua, xxea, kl, 5, j5aaue(0,-1,h,kl,is3,2) )
            enddo
         endif !nlo

c for bos=21: there is no A->vm vm~ contribution:
	  if (bos.eq.21) then   
	     do kl = 1,3	
		do mu = 0,3
		   do isig = -1,1,2
		      j5zaeu(mu,isig,h,kl,is3,2) = 0d0
		      j5azue(mu,isig,h,kl,is3,2) = 0d0
		      j5aaeu(mu,isig,h,kl,is3,2) = 0d0
		      j5aaue(mu,isig,h,kl,is3,2) = 0d0
		   enddo !isig
		enddo !mu
             enddo !kl
	  endif   

 
         !init:
         j5zzeu_check(:,:,:,:,:) = 0d0

         lgc(js3) = .false.
c         lzs(js3) = .false.
         if (lpt) then
c gauge check:
            if (.true.) then

               j5zzeu_check(:,:,:,:,2)=j5zzeu(:,:,h,:,:,2)
               j5zzue_check(:,:,:,:,2)=j5zzue(:,:,h,:,:,2)
               j5zaeu_check(:,:,:,:,2)=j5zaeu(:,:,h,:,:,2)
               j5zaue_check(:,:,:,:,2)=j5zaue(:,:,h,:,:,2)
               j5azeu_check(:,:,:,:,2)=j5azeu(:,:,h,:,:,2)
               j5azue_check(:,:,:,:,2)=j5azue(:,:,h,:,:,2)
               j5aaeu_check(:,:,:,:,2)=j5aaeu(:,:,h,:,:,2)
               j5aaue_check(:,:,:,:,2)=j5aaue(:,:,h,:,:,2)
               
               call gauge_check_isig_5(j5zzeu_check(0,-1,1,is3,2),p21,
     #	       				         1,psi,p,3,4,zet(1,h),zut(1,h),0d0)
	       if(bad_gauge_isig) bad_gauge = .true.


	       call gauge_check_isig_5(j5zzue_check(0,-1,1,is3,2),p21,
     #	       				         1,psi,p,3,4,zut(1,h),zet(1,h),0d0)
	      
	       if(bad_gauge_isig) bad_gauge = .true.
	       if (bos.eq.22) call gauge_check_isig_5(j5zaeu_check(0,-1,1,is3,2),
     #	       					p21,1,psi,p,3,4,zet(1,h),aut(1,h),0d0)
	       if(bad_gauge_isig) bad_gauge = .true.
	       call gauge_check_isig_5(j5zaue_check(0,-1,1,is3,2),p21,
     #	       				         1,psi,p,3,4,zut(1,h),aet(1,h),0d0)
	       
	       if(bad_gauge_isig) bad_gauge = .true.
	       call gauge_check_isig_5(j5azeu_check(0,-1,1,is3,2),p21,
     #	       				         1,psi,p,3,4,aet(1,h),zut(1,h),0d0)
	       if(bad_gauge_isig) bad_gauge = .true.
	       if (bos.eq.22) call gauge_check_isig_5(j5azue_check(0,-1,1,is3,2),
     #	       					p21,1,psi,p,3,4,aut(1,h),zet(1,h),0d0)
	       
	       if(bad_gauge_isig) bad_gauge = .true.
	       if (bos.eq.22) call gauge_check_isig_5(j5aaeu_check(0,-1,1,is3,2),
     #	       					p21,1,psi,p,3,4,aet(1,h),aut(1,h),0d0)
	       if(bad_gauge_isig) bad_gauge = .true.
	       if (bos.eq.22) call gauge_check_isig_5(j5aaue_check(0,-1,1,is3,2),
     #	       					p21,1,psi,p,3,4,aut(1,h),aet(1,h),0d0)
	       if(bad_gauge_isig) bad_gauge = .true.

 
            endif
	    if(bad_gauge) then
               icb2 = icb2+1
               lgc(js3) = .true.
            endif
            if (mod(icount2,icountmax).eq.0 ) then
              print*,' bad gauge check fraction (lower line)',
     #				       real(icb2)/real(2*icount2), js3
            endif
         endif   ! lpt

         enddo !h

      endif !lpent

c ------------------------------
c
c compute matrix elements for pentagon on upper line:
c
c need m5e and m5u(pos.j43=1:3,vext1=1:3,vext2=1:3), id of internal boson arbitrary 

      do h = hmin,hmax,hstep

      do isig3 = -1,1,2 
	do isig1 = -1,1,2

         call ket2c(psi(1,isig1,1),.true.,p(0,1),isig1,
     1        p43,jqq(0,isig3,2),bkjqq(1,isig1,isig3,1),dummy)
         call bra2c(psi(1,isig1,2),.true.,p(0,2),isig1,
     1        p43,jqq(0,isig3,2),bkjqq(1,isig1,isig3,2),dummy)
	
c  eps1=j43 with v1 arbitrary,eps2=v2,eps3=v3
         m5e(1,1,1) = -s1c(psiau(1,isig1,h,2),ae(1,h),.true.,isig1,bkjqq(1,isig1,isig3,1))
         m5e(1,1,2) = -s1c(psizu(1,isig1,h,2),ae(1,h),.true.,isig1,bkjqq(1,isig1,isig3,1))
         m5e(1,2,1) = -s1c(psiau(1,isig1,h,2),ze(1,h),.true.,isig1,bkjqq(1,isig1,isig3,1))
         m5e(1,2,2) = -s1c(psizu(1,isig1,h,2),ze(1,h),.true.,isig1,bkjqq(1,isig1,isig3,1))

         m5u(1,1,1) = -s1c(psiae(1,isig1,h,2),au(1,h),.true.,isig1,bkjqq(1,isig1,isig3,1))
         m5u(1,1,2) = -s1c(psize(1,isig1,h,2),au(1,h),.true.,isig1,bkjqq(1,isig1,isig3,1))
         m5u(1,2,1) = -s1c(psiae(1,isig1,h,2),zu(1,h),.true.,isig1,bkjqq(1,isig1,isig3,1))
         m5u(1,2,2) = -s1c(psize(1,isig1,h,2),zu(1,h),.true.,isig1,bkjqq(1,isig1,isig3,1))

c  eps1=v1,eps2=j43 with v2 arbitrary,eps3=v3
         m5e(2,1,1) = -s1c(psiau(1,isig1,h,2),jqq(0,isig3,2),.true.,isig1,psiae(1,isig1,h,1))
         m5e(2,1,2) = -s1c(psizu(1,isig1,h,2),jqq(0,isig3,2),.true.,isig1,psiae(1,isig1,h,1))
         m5e(2,2,1) = -s1c(psiau(1,isig1,h,2),jqq(0,isig3,2),.true.,isig1,psize(1,isig1,h,1))
         m5e(2,2,2) = -s1c(psizu(1,isig1,h,2),jqq(0,isig3,2),.true.,isig1,psize(1,isig1,h,1))

         m5u(2,1,1) = -s1c(psiae(1,isig1,h,2),jqq(0,isig3,2),.true.,isig1,psiau(1,isig1,h,1))
         m5u(2,1,2) = -s1c(psize(1,isig1,h,2),jqq(0,isig3,2),.true.,isig1,psiau(1,isig1,h,1))
         m5u(2,2,1) = -s1c(psiae(1,isig1,h,2),jqq(0,isig3,2),.true.,isig1,psizu(1,isig1,h,1))
         m5u(2,2,2) = -s1c(psize(1,isig1,h,2),jqq(0,isig3,2),.true.,isig1,psizu(1,isig1,h,1))

c  eps1=v1,eps2=v2,eps3=j43 with v3 arbitrary
         m5e(3,1,1) = -s1c(bkjqq(1,isig1,isig3,2),au(1,h),.true.,isig1,psiae(1,isig1,h,1))
         m5e(3,1,2) = -s1c(bkjqq(1,isig1,isig3,2),zu(1,h),.true.,isig1,psiae(1,isig1,h,1))
         m5e(3,2,1) = -s1c(bkjqq(1,isig1,isig3,2),au(1,h),.true.,isig1,psize(1,isig1,h,1))
         m5e(3,2,2) = -s1c(bkjqq(1,isig1,isig3,2),zu(1,h),.true.,isig1,psize(1,isig1,h,1))
         
	 m5u(3,1,1) = -s1c(bkjqq(1,isig1,isig3,2),ae(1,h),.true.,isig1,psiau(1,isig1,h,1))
         m5u(3,1,2) = -s1c(bkjqq(1,isig1,isig3,2),ze(1,h),.true.,isig1,psiau(1,isig1,h,1))
         m5u(3,2,1) = -s1c(bkjqq(1,isig1,isig3,2),ae(1,h),.true.,isig1,psizu(1,isig1,h,1))
         m5u(3,2,2) = -s1c(bkjqq(1,isig1,isig3,2),ze(1,h),.true.,isig1,psizu(1,isig1,h,1))


c         do k = 1,6	 
           do id2 = 1,2
              do id3 = 1,2	
            	 m1p(k,id2,id3) = ( m5e(1,id2,id3) + m5u(1,id2,id3))*
     #    	  	  clr(ifl(2,k),id2,isig1)*clr(ifl(2,k),id3,isig1)   
              enddo
	    enddo

	    do id1 = 1,2
	       do id3 = 1,2 
                  m2p(k,id1,id3) = ( m5e(2,id1,id3) + m5u(2,id1,id3))*
     #    		clr(ifl(1,k),id1,isig1)*clr(ifl(2,k),id3,isig1)
                enddo
	    enddo	  

	    do id1 = 1,2
	       do id2 = 1,2
	          m3p(k,id1,id2) = ( m5e(3,id1,id2) + m5u(3,id1,id2))*
     #    		clr(ifl(1,k),id1,isig1)*clr(ifl(1,k),id2,isig1)      
		enddo
	    enddo		     
c          enddo !k =1,6
    
c -----------------	  
c virtual stuff:         
c need mv5e and mv5u(pos.j43=1:3,vext1=1:3,vext2=1:3), id of internal boson arbitrary 
	 if (lpent.and.(.not.qdamp)) then
	 
	   do j = 1,3

c  epsj=j43 with vj arbitrary,epsa=va,epsb=vb ( j = 1 or 2 or 3; a,b = A / Z )

	      mv5e(j,1,1) = -dotcc(j5aaeu(0,isig1,h,j,is1,1),jqq(0,isig3,2))
	      mv5e(j,1,2) = -dotcc(j5azeu(0,isig1,h,j,is1,1),jqq(0,isig3,2))
	      mv5e(j,2,1) = -dotcc(j5zaeu(0,isig1,h,j,is1,1),jqq(0,isig3,2))
	      mv5e(j,2,2) = -dotcc(j5zzeu(0,isig1,h,j,is1,1),jqq(0,isig3,2))

	      mv5u(j,1,1) = -dotcc(j5aaue(0,isig1,h,j,is1,1),jqq(0,isig3,2))
	      mv5u(j,1,2) = -dotcc(j5azue(0,isig1,h,j,is1,1),jqq(0,isig3,2))
	      mv5u(j,2,1) = -dotcc(j5zaue(0,isig1,h,j,is1,1),jqq(0,isig3,2))
	      mv5u(j,2,2) = -dotcc(j5zzue(0,isig1,h,j,is1,1),jqq(0,isig3,2))	   
	   
	   enddo
        
	
c	 do k = 1,6 
           do id2 = 1,2
              do id3 = 1,2	
            	 mv1p(k,id2,id3) = ( mv5e(1,id2,id3) + mv5u(1,id2,id3))*
     #    	  	  clr(ifl(2,k),id2,isig1)*clr(ifl(2,k),id3,isig1)   
              enddo
	    enddo

	    do id1 = 1,2
	       do id3 = 1,2 
                  mv2p(k,id1,id3) = ( mv5e(2,id1,id3) + mv5u(2,id1,id3))*
     #    		clr(ifl(1,k),id1,isig1)*clr(ifl(2,k),id3,isig1)
                enddo
	    enddo	  

	    do id1 = 1,2
	       do id2 = 1,2
	          mv3p(k,id1,id2) = ( mv5e(3,id1,id2) + mv5u(3,id1,id2))*
     #    		clr(ifl(1,k),id1,isig1)*clr(ifl(1,k),id2,isig1)      
		enddo
	    enddo	     
c          enddo !k =1,6
	 
	 endif
    
c -----------------	  
	  
c	  do k = 1,4  
         if (nc_type) then 
	    
	    mat(k,isig1,isig3,h,7) = -(m1p(k,1,1)+m1p(k,1,2)+m1p(k,2,1)+m1p(k,2,2))*
     #	        (clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3)*prop43(1)+
     #	         clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3)*prop43(2))
     #		-
     #			(m2p(k,1,1)+m2p(k,1,2)+m2p(k,2,1)+m2p(k,2,2))*
     #		 (clr(ifl(3,k),1,isig3)*clr(ifl(2,k),1,isig1)*prop43(1)+
     #		  clr(ifl(3,k),2,isig3)*clr(ifl(2,k),2,isig1)*prop43(2))
     #		-
     #			(m3p(k,1,1)+m3p(k,1,2)+m3p(k,2,1)+m3p(k,2,2))*
     #		 (clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3)*prop43(1)+
     #		  clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3)*prop43(2))
     
     	   if (lpent.and.(.not.qdamp)) matv(k,isig1,isig3,h,7) =  
     #	   	       -(mv1p(k,1,1)+mv1p(k,1,2)+mv1p(k,2,1)+mv1p(k,2,2))*
     #	        (clr(ifl(1,k),1,isig1)*clr(ifl(3,k),1,isig3)*prop43(1)+
     #	         clr(ifl(1,k),2,isig1)*clr(ifl(3,k),2,isig3)*prop43(2))
     #		-
     #			(mv2p(k,1,1)+mv2p(k,1,2)+mv2p(k,2,1)+mv2p(k,2,2))*
     #		 (clr(ifl(3,k),1,isig3)*clr(ifl(2,k),1,isig1)*prop43(1)+
     #		  clr(ifl(3,k),2,isig3)*clr(ifl(2,k),2,isig1)*prop43(2))
     #		-
     #			(mv3p(k,1,1)+mv3p(k,1,2)+mv3p(k,2,1)+mv3p(k,2,2))*
     #		 (clr(ifl(2,k),1,isig1)*clr(ifl(3,k),1,isig3)*prop43(1)+
     #		  clr(ifl(2,k),2,isig1)*clr(ifl(3,k),2,isig3)*prop43(2))

          endif !nc
c	  enddo !k
	  
	  if (isig1.eq.-1.and.isig3.eq.-1) then
            fac = clr(3,3,-1)**2*prop43(3)
	
            if (cc_type) then 
c	    do k = 5,6  	    
	      mat(k,isig1,isig3,h,7) = 
     #	       -(m1p(k,1,1)+m1p(k,1,2)+m1p(k,2,1)+m1p(k,2,2)+
     #		 m2p(k,1,1)+m2p(k,1,2)+m2p(k,2,1)+m2p(k,2,2)+
     #		 m3p(k,1,1)+m3p(k,1,2)+m3p(k,2,1)+m3p(k,2,2))*fac
	      
	      if (lpent.and.(.not.qdamp))  matv(k,isig1,isig3,h,7) = 
     #	       -(mv1p(k,1,1)+mv1p(k,1,2)+mv1p(k,2,1)+mv1p(k,2,2)+
     #		 mv2p(k,1,1)+mv2p(k,1,2)+mv2p(k,2,1)+mv2p(k,2,2)+
     #		 mv3p(k,1,1)+mv3p(k,1,2)+mv3p(k,2,1)+mv3p(k,2,2))*fac

c	    enddo !k
            endif !cc

	  endif !isig13
	enddo !isig1
      enddo !isig3

      enddo !h
      
c -------------------------------------------------------
c
c lower line: mat(k,-1,-1,8) = propt(-1,-1,k,1) with prop21 
c
c need m5e and m5u(pos.j21=1:3,vext1=1:3,vext2=1:3), vint arbitrary 

      do h = hmin,hmax,hstep

      do isig1 = -1,1,2
	do isig3 = -1,1,2
 
         call ket2c(psi(1,isig3,3),.true.,p(0,3),isig3,
     1        p21,jqq(0,isig1,1),bkjqq(1,isig3,isig1,3),dummy)
         call bra2c(psi(1,isig3,4),.true.,p(0,4),isig3,
     1        p21,jqq(0,isig1,1),bkjqq(1,isig3,isig1,4),dummy)

	
c  eps1=j21 with v1 arbitrary,eps2=v2,eps3=v3
         m5e(1,1,1) = -s1c(psiau(1,isig3,h,4),ae(1,h),.true.,isig3,bkjqq(1,isig3,isig1,3))
         m5e(1,1,2) = -s1c(psizu(1,isig3,h,4),ae(1,h),.true.,isig3,bkjqq(1,isig3,isig1,3))
         m5e(1,2,1) = -s1c(psiau(1,isig3,h,4),ze(1,h),.true.,isig3,bkjqq(1,isig3,isig1,3))
         m5e(1,2,2) = -s1c(psizu(1,isig3,h,4),ze(1,h),.true.,isig3,bkjqq(1,isig3,isig1,3))

         m5u(1,1,1) = -s1c(psiae(1,isig3,h,4),au(1,h),.true.,isig3,bkjqq(1,isig3,isig1,3))
         m5u(1,1,2) = -s1c(psize(1,isig3,h,4),au(1,h),.true.,isig3,bkjqq(1,isig3,isig1,3))
         m5u(1,2,1) = -s1c(psiae(1,isig3,h,4),zu(1,h),.true.,isig3,bkjqq(1,isig3,isig1,3))
         m5u(1,2,2) = -s1c(psize(1,isig3,h,4),zu(1,h),.true.,isig3,bkjqq(1,isig3,isig1,3))

c  eps1=v1,eps2=j21 with v2 arbitrary,eps3=v3
         m5e(2,1,1) = -s1c(psiau(1,isig3,h,4),jqq(0,isig1,1),.true.,isig3,psiae(1,isig3,h,3))
         m5e(2,1,2) = -s1c(psizu(1,isig3,h,4),jqq(0,isig1,1),.true.,isig3,psiae(1,isig3,h,3))
         m5e(2,2,1) = -s1c(psiau(1,isig3,h,4),jqq(0,isig1,1),.true.,isig3,psize(1,isig3,h,3))
         m5e(2,2,2) = -s1c(psizu(1,isig3,h,4),jqq(0,isig1,1),.true.,isig3,psize(1,isig3,h,3))

         m5u(2,1,1) = -s1c(psiae(1,isig3,h,4),jqq(0,isig1,1),.true.,isig3,psiau(1,isig3,h,3))
         m5u(2,1,2) = -s1c(psize(1,isig3,h,4),jqq(0,isig1,1),.true.,isig3,psiau(1,isig3,h,3))
         m5u(2,2,1) = -s1c(psiae(1,isig3,h,4),jqq(0,isig1,1),.true.,isig3,psizu(1,isig3,h,3))
         m5u(2,2,2) = -s1c(psize(1,isig3,h,4),jqq(0,isig1,1),.true.,isig3,psizu(1,isig3,h,3))

c  eps1=v1,eps2=v2,eps3=j21 with v3 arbitrary
         m5e(3,1,1) = -s1c(bkjqq(1,isig3,isig1,4),au(1,h),.true.,isig3,psiae(1,isig3,h,3))
         m5e(3,1,2) = -s1c(bkjqq(1,isig3,isig1,4),zu(1,h),.true.,isig3,psiae(1,isig3,h,3))
         m5e(3,2,1) = -s1c(bkjqq(1,isig3,isig1,4),au(1,h),.true.,isig3,psize(1,isig3,h,3))
         m5e(3,2,2) = -s1c(bkjqq(1,isig3,isig1,4),zu(1,h),.true.,isig3,psize(1,isig3,h,3))
         
	 m5u(3,1,1) = -s1c(bkjqq(1,isig3,isig1,4),ae(1,h),.true.,isig3,psiau(1,isig3,h,3))
         m5u(3,1,2) = -s1c(bkjqq(1,isig3,isig1,4),ze(1,h),.true.,isig3,psiau(1,isig3,h,3))
         m5u(3,2,1) = -s1c(bkjqq(1,isig3,isig1,4),ae(1,h),.true.,isig3,psizu(1,isig3,h,3))
         m5u(3,2,2) = -s1c(bkjqq(1,isig3,isig1,4),ze(1,h),.true.,isig3,psizu(1,isig3,h,3))

c         do k = 1,6 
           do id2 = 1,2
              do id3 = 1,2	
            	 m1p(k,id2,id3) = ( m5e(1,id2,id3) + m5u(1,id2,id3))*
     #    	  	  clr(ifl(4,k),id2,isig3)*clr(ifl(4,k),id3,isig3)   
              enddo
	    enddo

	    do id1 = 1,2
	       do id3 = 1,2 
                  m2p(k,id1,id3) = ( m5e(2,id1,id3) + m5u(2,id1,id3))*
     #    		clr(ifl(3,k),id1,isig3)*clr(ifl(4,k),id3,isig3)
                enddo
	      enddo	  

	    do id1 = 1,2
	       do id2 = 1,2
	          m3p(k,id1,id2) = ( m5e(3,id1,id2) + m5u(3,id1,id2))*
     #    		clr(ifl(3,k),id1,isig3)*clr(ifl(3,k),id2,isig3)
      
		enddo
	      enddo	  
c          enddo
    
c -----------------	  
         
c need mv5e and mv5u(pos.j21=1:3,vext1=1:3,vext2=1:3), id of internal boson arbitrary 
	
	 if (lpent.and.(.not.qdamp)) then
	 
	   do j = 1,3

c  epsj=j21 with vj arbitrary,epsa=va,epsb=vb ( j = 1 or 2 or 3; a,b = A / Z )

	      mv5e(j,1,1) = -dotcc(j5aaeu(0,isig3,h,j,is3,2),jqq(0,isig1,1))
	      mv5e(j,1,2) = -dotcc(j5azeu(0,isig3,h,j,is3,2),jqq(0,isig1,1))
	      mv5e(j,2,1) = -dotcc(j5zaeu(0,isig3,h,j,is3,2),jqq(0,isig1,1))
	      mv5e(j,2,2) = -dotcc(j5zzeu(0,isig3,h,j,is3,2),jqq(0,isig1,1))

	      mv5u(j,1,1) = -dotcc(j5aaue(0,isig3,h,j,is3,2),jqq(0,isig1,1))
	      mv5u(j,1,2) = -dotcc(j5azue(0,isig3,h,j,is3,2),jqq(0,isig1,1))
	      mv5u(j,2,1) = -dotcc(j5zaue(0,isig3,h,j,is3,2),jqq(0,isig1,1))
	      mv5u(j,2,2) = -dotcc(j5zzue(0,isig3,h,j,is3,2),jqq(0,isig1,1))    
	   
	   enddo
        
c         do k = 1,6 
           do id2 = 1,2
              do id3 = 1,2	
            	 mv1p(k,id2,id3) = ( mv5e(1,id2,id3) + mv5u(1,id2,id3))*
     #    	  	  clr(ifl(4,k),id2,isig3)*clr(ifl(4,k),id3,isig3)   
              enddo
	    enddo

	    do id1 = 1,2
	       do id3 = 1,2 
                  mv2p(k,id1,id3) = ( mv5e(2,id1,id3) + mv5u(2,id1,id3))*
     #    		clr(ifl(3,k),id1,isig3)*clr(ifl(4,k),id3,isig3)
                enddo
	      enddo	  

	    do id1 = 1,2
	       do id2 = 1,2
	          mv3p(k,id1,id2) = ( mv5e(3,id1,id2) + mv5u(3,id1,id2))*
     #    		clr(ifl(3,k),id1,isig3)*clr(ifl(3,k),id2,isig3)
      
		enddo
	      enddo	  
c          enddo
	  
	  endif !lpent
	
          
c	  do k = 1,4  
          if (nc_type) then 

	    mat(k,isig1,isig3,h,8) = -(m1p(k,1,1)+m1p(k,1,2)+m1p(k,2,1)+m1p(k,2,2))*
     #	        (clr(ifl(3,k),1,isig3)*clr(ifl(1,k),1,isig1)*prop21(1)+
     #	         clr(ifl(3,k),2,isig3)*clr(ifl(1,k),2,isig1)*prop21(2))
     #		-
     #			(m2p(k,1,1)+m2p(k,1,2)+m2p(k,2,1)+m2p(k,2,2))*
     #		 (clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3)*prop21(1)+
     #		  clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3)*prop21(2))
     #		-
     #			(m3p(k,1,1)+m3p(k,1,2)+m3p(k,2,1)+m3p(k,2,2))*
     #		 (clr(ifl(4,k),1,isig3)*clr(ifl(1,k),1,isig1)*prop21(1)+
     #		  clr(ifl(4,k),2,isig3)*clr(ifl(1,k),2,isig1)*prop21(2))
	    
	    if (lpent.and.(.not.qdamp))  matv(k,isig1,isig3,h,8) = 
     #	              - (mv1p(k,1,1)+mv1p(k,1,2)+mv1p(k,2,1)+mv1p(k,2,2))*
     #	        (clr(ifl(3,k),1,isig3)*clr(ifl(1,k),1,isig1)*prop21(1)+
     #	         clr(ifl(3,k),2,isig3)*clr(ifl(1,k),2,isig1)*prop21(2))
     #		-
     #			(mv2p(k,1,1)+mv2p(k,1,2)+mv2p(k,2,1)+mv2p(k,2,2))*
     #		 (clr(ifl(1,k),1,isig1)*clr(ifl(4,k),1,isig3)*prop21(1)+
     #		  clr(ifl(1,k),2,isig1)*clr(ifl(4,k),2,isig3)*prop21(2))
     #		-
     #			(mv3p(k,1,1)+mv3p(k,1,2)+mv3p(k,2,1)+mv3p(k,2,2))*
     #		 (clr(ifl(4,k),1,isig3)*clr(ifl(1,k),1,isig1)*prop21(1)+
     #		  clr(ifl(4,k),2,isig3)*clr(ifl(1,k),2,isig1)*prop21(2))

          endif !nc
c	  enddo !k
	  
	  if (isig1.eq.-1.and.isig3.eq.-1) then
          fac = clr(3,3,-1)**2*prop21(3)
	  
c	  do k = 5,6  	    
          if (cc_type) then 
	    mat(k,isig1,isig3,h,8) = 
     #	    	-(m1p(k,1,1)+m1p(k,1,2)+m1p(k,2,1)+m1p(k,2,2)+
     #		  m2p(k,1,1)+m2p(k,1,2)+m2p(k,2,1)+m2p(k,2,2)+
     #		  m3p(k,1,1)+m3p(k,1,2)+m3p(k,2,1)+m3p(k,2,2))*fac
	    if (lpent) matv(k,isig1,isig3,h,8) = 
     #	    	-(mv1p(k,1,1)+mv1p(k,1,2)+mv1p(k,2,1)+mv1p(k,2,2)+
     #		  mv2p(k,1,1)+mv2p(k,1,2)+mv2p(k,2,1)+mv2p(k,2,2)+
     #		  mv3p(k,1,1)+mv3p(k,1,2)+mv3p(k,2,1)+mv3p(k,2,2))*fac
          endif !cc  
c	  enddo !k
	  
	  endif !isig13
	enddo !isig1
      enddo !isig3

      enddo !h
 
c
c -------------------------------------------------------------------------
c -------------------------------------------------------------------------

999     continue
     
c sum the graphs, square them and map them onto uucc, uuss etc.

c i = 1		VV
c i = 2,3	BV
c i = 4,5	AZZ/ZZZ
c i = 6,9	BB
c i = 7,8	P
   
      if (lpt) then! factor 1/2 for 2 helicities
         xgc1 = real(icount1+1)/real(icount1-icb1*0.5+1) 
         xgc2 = real(icount2+1)/real(icount2-icb2*0.5+1)
      endif

	if (higgs_only.or.vvonly) then
	  do kl = 1,6
          do h = hmin,hmax,hstep   
	  do isig1 = -1,1,2
	  do isig3 = -1,1,2
	      mat(kl,isig1,isig3,h,2:9) = 0d0
	      matv(kl,isig1,isig3,h,2:9) = 0d0
	  enddo !isig3
          enddo !isig1
          enddo !h
	  enddo !kl   
	endif

	if (vbonly) then
	  do kl = 1,6
          do h = hmin,hmax,hstep   
	  do isig1 = -1,1,2
	  do isig3 = -1,1,2
	      mat(kl,isig1,isig3,h,1) = 0d0
	      matv(kl,isig1,isig3,h,1) = 0d0
	      mat(kl,isig1,isig3,h,4:9) = 0d0
	      matv(kl,isig1,isig3,h,4:9) = 0d0
	  enddo !isig3
          enddo !isig1
          enddo !h
	  enddo !kl   
	endif

	if (v4only) then
	  do kl = 1,6
          do h = hmin,hmax,hstep   
	  do isig1 = -1,1,2
	  do isig3 = -1,1,2
	      mat(kl,isig1,isig3,h,1:3) = 0d0
	      matv(kl,isig1,isig3,h,1:3) = 0d0
	      mat(kl,isig1,isig3,h,6:9) = 0d0
	      matv(kl,isig1,isig3,h,6:9) = 0d0
	  enddo !isig3
          enddo !isig1
          enddo !h
	  enddo !kl   
	endif

c      do k = 1,6
         res(k) = 0
         resv(k) = 0
        do h = hmin,hmax,hstep
         do isig1 = -1,1,2
            do isig3 = -1,1,2
               mm(k,isig1,isig3,h) = 0
               do i = 1,9
                  mm(k,isig1,isig3,h) = mm(k,isig1,isig3,h) + 
     1                                  mat(k,isig1,isig3,h,i)
               enddo !i
	       
               res(k) = res(k) + dreal(mm(k,isig1,isig3,h))**2
     &                         + dimag(mm(k,isig1,isig3,h))**2

		mv12(k,isig1,isig3,h) = 0d0
		mv34(k,isig1,isig3,h) = 0d0

                if (lnlo.and.(.not.qdamp)) then
                  mv12(k,isig1,isig3,h) = 
     1         +  matv(k,isig1,isig3,h,2) + matv(k,isig1,isig3,h,4) + 
     2            matv(k,isig1,isig3,h,6) + matv(k,isig1,isig3,h,7) 
                  mv34(k,isig1,isig3,h) =
     1          + matv(k,isig1,isig3,h,3) + matv(k,isig1,isig3,h,5) +
     2            matv(k,isig1,isig3,h,9) + matv(k,isig1,isig3,h,8)

                  if (lpt) then ! Pentagons for 'good PS points' only
                     if (lgc(js1)) then
                        mv12(k,isig1,isig3,h)=0
                     else
                        mv12(k,isig1,isig3,h)=mv12(k,isig1,isig3,h)*xgc1
                     endif !lgc
                  endif !lpt
                  if (lpt) then   
                     if (lgc(js3)) then
                        mv34(k,isig1,isig3,h)=0
                     else
                        mv34(k,isig1,isig3,h)=mv34(k,isig1,isig3,h)*xgc2
                     endif !lgc
                  endif !lpt

c  add Born type term and multiply by F_q = alphas*C_2/4pi
c  the factor pi^2/3+9/2 for the born term is 
c  after adding the subtraction term
c  and the counter term for the renormalization of the pdfs
c
c  comply with POWHEG normalization:
c  vertex corrections in dreg:
c
c   V^nu = (4*Pi)^ep * Gamma(1+ep) * CF * as/(4*Pi) * 
c           (-2/ep^2+(-2*ln(r)-3)/ep-ln(r)^2-3*ln(r)+Pi^2/3-7)*B^nu
c
c         = (4*Pi)^ep / Gamma(1-ep) * CF * as/(4*Pi) * 
c           (-2/ep^2+(-2*ln(r)-3)/ep-ln(r)^2-3*ln(r)+Pi^2/3-7-Pi^2/3)*B^nu
c
c     The factor  (4*Pi)^ep/Gamma(1-ep) IS NOT RETURNED by this subroutine
c     and it's thought as factorized in front of the real counterterms too.
c
c     if (4*Pi)^ep / Gamma(1-ep) is collected in front then cvirt:
c     set parameter in dred (cvirtl = -8d0)
c
c     squared momentum of the weak boson connected with the upper line
          q2_up = p21(4)
c     squared momentum of the weak boson connected with the lower line
          q2_lo = p43(4)

          rup = st_muren2/(-q2_up)
          if (rup.lt.0d0.and..not.qdamp) then
              write(*,*) 'Error in setvirtual: q2_up should be < 0!!'
              write(*,*) 'q2_up = ', q2_up
              write(*,*) 'st_muren2 = ', st_muren2
              ! set to dummy value:
              	rup = 1d0
c              stop
          endif      
          rlo = st_muren2/(-q2_lo)
          if (rlo.lt.0d0.and..not.qdamp) then
              write(*,*) 'Error in setvirtual: q2_lo should be < 0!!'
              write(*,*) 'q2_lo = ', q2_lo
              write(*,*) 'st_muren2 = ', st_muren2
              ! set to dummy value:
              	rlo = 1d0
c              stop
          endif      
          lrup = log(rup)
          lrlo = log(rlo) 

          cvirtl = -8d0
c
                  if (nlo.gt.0) then
                     mv12(k,isig1,isig3,h) = als(1,1)*c2o4pi*
     1                ( mv12(k,isig1,isig3,h) + 
     2                  mm(k,isig1,isig3,h)*(-lrup**2-3*lrup+cvirtl) )
                     mv34(k,isig1,isig3,h) = als(2,1)*c2o4pi*
     1                ( mv34(k,isig1,isig3,h) + 
     2                  mm(k,isig1,isig3,h)*(-lrlo**2-3*lrlo+cvirtl) )
                  else
                     mv12(k,isig1,isig3,h) = 
     1                    als(1,1)*c2o4pi*mv12(k,isig1,isig3,h)
                     mv34(k,isig1,isig3,h) = 
     1                    als(2,1)*c2o4pi*mv34(k,isig1,isig3,h)
                  endif
                  resv(k) = resv(k) + 2*dreal(
     1                 mm(k,isig1,isig3,h)   *
     1              conjg( mv12(k,isig1,isig3,h)+mv34(k,isig1,isig3,h) )  )
               endif !lnlo
           enddo !isig3
         enddo !isig1 
	enddo !h

         if (nlo.eq.0) then
            res(k) = res(k)*9d0
         elseif (nlo.gt.0) then
            if (qdamp) then
               !fakevirt:
                res(k) = res(k)*9d0   ! Born-type
                res(k) = res(k)*0.2d0 ! 'fakevirt' factor
            else !no damping  
c virt only (without Born):
               res(k) = (resv(k))*9d0 ! 9 is the color sum factor
            endif !qdamp
         else !nlo.lt.0
            if (qdamp) then
               !fakevirt:
                res(k) = res(k)*9d0   ! Born-type
                res(k) = res(k)*0.02d0 ! 'fakevirt' for boxes, pentagons
            else !no damping  
c virt only (without Born):
               res(k) = resv(k)*9d0 ! 9 is the color sum factor
            endif !qdamp
         endif !lnlo
c      enddo !k

           
cc eliminate processes with photon virtuality below cutoff
      if (qdamp) then 
          res(k) = res(k)*1d-20
      endif

      ans = res(k)
      return
      end


