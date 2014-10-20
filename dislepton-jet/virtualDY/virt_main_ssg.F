
      subroutine add3vec(sumep, ep, pre)
      complex*16 sumep(-2:0), ep(-2:0), pre
      integer k
      do k=-2,0
        sumep(k) = sumep(k) + pre*ep(k)
      enddo
      end


      subroutine addvirt(gcoeffarr, pre, gl0, gr0, gl1, gr1, gsl1, gsr1, sumep)
#include "gcoeff.h"
      complex*16 ep(-2:0), sumep(-2:0), pre
      real*8 gl0, gr0, gl1, gr1, gsl1, gsr1
      call virtual_ssg(gcoeffarr(:,:,:,:,hZfl),ep,gl0,gr0)
      call add3vec(sumep, ep, pre*gl1)
      call virtual_ssg(gcoeffarr(:,:,:,:,hZfr),ep,gl0,gr0)
      call add3vec(sumep, ep, pre*gr1)
      call virtual_ssg(gcoeffarr(:,:,:,:,hZsl),ep,gl0,gr0)
      call add3vec(sumep, ep, pre*gsl1)
      call virtual_ssg(gcoeffarr(:,:,:,:,hZsr),ep,gl0,gr0)
      call add3vec(sumep, ep, pre*gsr1)
      end


      subroutine mainssg(p,qflavorin,virtualDYc,bepmone,bepmtwo)
      implicit none

#include "vars.h"
#include "gcoeff.h"
#include "mi.h"
      ! inclusions of variables and constants
      include 'nlegborn.h'
      include 'pwhg_st.h'    ! renormalization scale and strong coupling
      include 'MODEL/sm_read_values.inc'
      ! contains:
      ! + alpha: alpha_em(M_Z)^MSbar read from MODEL/param_card.dat
      ! + gfermi: G_F [GeV^-2] read from MODEL/param_card.dat
      ! + ...
      include 'coupl.inc'
      ! contains:
      ! + masses of SM particles read from MODEL/param_card.dat
      !   wmass (from SLHA file)
      !   zmass (Z-Boson pole mass)
      !   bmass (bottom quark mass mb(mb)^MSbar)
      !   tmass (top quark pole mass)
      ! + masses of SUSY particles read from MODEL/param_card.dat in the form
      !   m* with the particle name * specified in MODEL/particles.dat
      !   slightly different names for slepton masses
      !   mel/mer left-/right-handed selectron mass
      !   mml/mmr left-/right-handed smuon mass
      !   ml1/ml2 stau 1/2 mass
      !   but the masses and the mixing matrix of the sleptons under consideration
      !   can be found in PhysPars.h
      ! + ...
      include 'PhysPars.h'
      ! contains:
      ! + masses of the slepton pair under consideration
      !   ph_slepton3mass, ph_slepton4mass
      ! + and the mixing matrix of this slepton pair with entries
      !   ph_c_U3l, ph_c_U3r, ph_c_U4l, ph_c_U4r
      double precision  sw, sw2, cw, tw, s2w, c2w, e, gx, gz,
     &                  qe, qu, qd, t3e, t3v, t3u, t3d, rt2, ppi,
     &                  r_lc(2,2), r_bc(2,2), r_tc(2,2)
      common /ewparam/  sw, sw2, cw, tw, s2w, c2w, e, gx, gz,
     &                  qe, qu, qd, t3e, t3v, t3u, t3d, rt2, ppi,
     &                  r_lc, r_bc, r_tc
      ! contains:
      ! + sw: sine of Weinberg angle
      !   calculated in MODEL/couplings.f subroutine INIT_SUSY
      ! + r_lc: stau mixing matrix read from MODEL/param_card.dat
      ! + r_bc: sbottom mixing matrix read from MODEL/param_card.dat
      ! + r_tc: stop mixing matrix read from MODEL/param_card.dat
      ! + ...

      ! input
      real *8 p(0:3,nlegborn)
      character qflavorin
      ! output
      complex *16 virtualDYc
      real *8 bepmone, bepmtwo
      ! for selection of QCD part via qcdonly
      real * 8 powheginput
      external powheginput
      ! original variables
      real*8 p1(0:3), p2(0:3), p3(0:3), p4(0:3), p5(0:3)
      real*8 alphas, alphaem, sinth, costh, m2z
      complex*16 sumep(-2:0), ep(-2:0), pre, preaa, preaz, preza, prezz
      complex*16 sumepbo(-2:0), sumepbt(-2:0)
      complex*16 aaep(-2:0), zaep(-2:0), azep(-2:0), zzep(-2:0)
      complex*16 aaepbo(-2:0), zaepbo(-2:0), azepbo(-2:0), zzepbo(-2:0)
      complex*16 aaepbt(-2:0), zaepbt(-2:0), azepbt(-2:0), zzepbt(-2:0)
      real *8 pin(0:3,5), pd(0:3)
      real *8 momnormsq,momsum2normsq,momsum3normsq,levicivitacontract
      integer k, l, m, n, o, i1, i2, i5
      complex *16 prop_a,prop_z,prop_a_other,prop_z_other
      real *8 delta_ij,e4
      real *8 se_ql, st3_ql, sgl_ql, sgr_ql
      real *8 se_qh, st3_qh, sgl_qh, sgr_qh
      real *8 e_q, t3_q, gl_q, gr_q
      real *8 e_l, t3_l, gl_l, gr_l
      complex*16 cgl_sl, cgr_sl
      character(len=80) :: FMT
      integer dialoop, diatree
      common /diaselect/ dialoop, diatree

c     set parameters and kinematics in common block

c     first set everything to some definite value
#define VAL 1.d100
      s125 = VAL
      s15 = VAL
      s25 = VAL
      s12 =  VAL
      s1d =  VAL
      s2d =  VAL
      s5d =  VAL
      sd =  VAL
      e1234 =  VAL
      r15 = VAL
      r25= VAL
      r1d= VAL
      r2d= VAL
      r5d= VAL
      rd= VAL
      i1r15 = VAL
      i1r25 = VAL
      i1r15r25 = VAL
      ir15r25 = VAL
      m2t= VAL
      m2gl= VAL
      m2sq1r= VAL
      m2sq1l= VAL
      rt= VAL
      rgl = VAL
      rsq1l = VAL
      rsq1r = VAL
      gs= VAL
      gem= VAL
      musq = VAL
      debug = VAL

      do k=1,27
      do l=1,2
      do m=1,2
      do n=-2,0
      do o=1,4
        gcoeffarr(k,l,m,n,o) = VAL
      enddo
      enddo
      enddo
      enddo
      enddo


      ! put in appropriate values
      alphas  = st_alpha
      alphaem = alpha
      gs  = dsqrt(alphas*4d0*pi)
      gem = dsqrt(alphaem*4d0*pi)
      costh = cw
      sinth = sw

      m2t    = tmass**2
      m2z    = zmass**2
      m2gl   = MGO**2
      ! assumes all squarks have same mass
      m2sq1r = mdr**2
      m2sq1l = mdl**2

      p1 = p(:,1)
      p2 = p(:,2)
      p3 = p(:,3)
      p4 = p(:,4)
      p5 = p(:,5)

      ! crossing handled outside mainssg
      ! take all momenta incoming
      do k=0,3
        pin(k,1) =  p1(k)
        pin(k,2) =  p2(k)
        pin(k,3) = -p3(k)
        pin(k,4) = -p4(k)
        pin(k,5) = -p5(k)
        pd(k) = (p3(k) - p4(k))
      enddo
      ! select channel
      i1 = 1
      i2 = 2
      i5 = 5

      ! prepare derived quantities
      s125 = momsum3normsq(pin(0,i1),pin(0,i2),pin(0,i5))
      sd  = momnormsq(pd)
      s12 = momsum2normsq(pin(0,i1),pin(0,i2))
      s15 = momsum2normsq(pin(0,i1),pin(0,i5))
      s25 = momsum2normsq(pin(0,i2),pin(0,i5))
      s1d = momsum2normsq(pin(0,i1),pd)
      s2d = momsum2normsq(pin(0,i2),pd)
      s5d = momsum2normsq(pin(0,i5),pd)
      e1234 = levicivitacontract(pin(0,i1),pin(0,i2),p3,p4)

      musq = st_muren2

      debug = -1.234D0

      r15 = s15 / s125
      r25 = s25 / s125
      r1d = s1d / s125
      r2d = s2d / s125
      r5d = s5d / s125
      rd  = sd / s125
      rt  = m2t / s125
      rgl = m2gl / s125
      rsq1l = m2sq1l / s125
      rsq1r = m2sq1r / s125
      i1r15 = 1d0/(1-r15)
      i1r25 = 1d0/(1-r25)
      i1r15r25 = 1d0/(1-r15-r25)
      ir15r25 = 1d0/(r15+r25)


      ! choose quark couplings according to incoming
      ! quark flavor specified in qflavorin
      select case(qflavorin)
      case ('d')
         e_q = -1/3d0
         t3_q = -1/2d0
      case ('u')
         e_q = 2/3d0
         t3_q = 1/2d0
      case ('s')
         e_q = -1/3d0
         t3_q = -1/2d0
      case ('c')
         e_q = 2/3d0
         t3_q = 1/2d0
      case default
         write(*,*) 'in mainssg'
         write(*,*) 'unhandled incoming qflavorin ', qflavorin
         stop
      end select
      gl_q = -(t3_q - e_q*sinth**2)/(sinth*costh)
      gr_q = -(0d0  - e_q*sinth**2)/(sinth*costh)

      ! calculate sum of quark couplings
      ! for light Nf (all except top)
      se_ql = 3d0*(-1/3d0) + 2d0*(2/3d0)
      st3_ql = 3d0*(-1/2d0) + 2d0*(1/2d0)
      sgl_ql = -(st3_ql - se_ql*sinth**2)/(sinth*costh)
      sgr_ql = -(0d0  - se_ql*sinth**2)/(sinth*costh)

      ! calculate sum of quark couplings
      ! for heavy Nf (top)
      se_qh = 1d0*(2/3d0)
      st3_qh = 1d0*(1/2d0)
      sgl_qh = -(st3_qh - se_qh*sinth**2)/(sinth*costh)
      sgr_qh = -(0d0  - se_qh*sinth**2)/(sinth*costh)

      ! lepton couplings (charged lepton l-)
      e_l  = -1d0
      t3_l = -1/2d0
      gl_l = -(t3_l - e_l*sinth**2)/(sinth*costh)
      gr_l = -(0d0  - e_l*sinth**2)/(sinth*costh)


      ! slepton couplings
      ! assumes left-handed sleptons, no mixing
      delta_ij = 1d0
      cgl_sl = gl_l
      cgr_sl = 0d0

      ! photon and Z propagator factors
      prop_a  = 1/s125
      prop_z = 1/(s125 - m2z)

      preaa = dconjg(prop_a*delta_ij*e_l) * (prop_a*delta_ij*e_l)*gem**2
      preza = dconjg(prop_z*(cgl_sl+cgr_sl)) * (prop_a*delta_ij*e_l)*gem**2
      preaz = dconjg(prop_a*delta_ij*e_l) * (prop_z*(cgl_sl+cgr_sl))*gem**2
      prezz = dconjg(prop_z*(cgl_sl+cgr_sl)) * (prop_z*(cgl_sl+cgr_sl))*gem**2

      ! ( M_A(0)^* + M_Z(0)^* )( M_A(1) + M_Z(1) )
      ! = (M_A(0)^* + M_Z(0)^*) M_A(1) + (M_A(0)^* + M_Z(0)^*) M_Z(1)
      do k=-2,0
        sumep(k) = 0d0
        aaep(k) = 0d0
        azep(k) = 0d0
        zaep(k) = 0d0
        zzep(k) = 0d0
        sumepbo(k) = 0d0
        sumepbt(k) = 0d0
        aaepbo(k) = 0d0
        azepbo(k) = 0d0
        zaepbo(k) = 0d0
        zzepbo(k) = 0d0
        aaepbt(k) = 0d0
        azepbt(k) = 0d0
        zaepbt(k) = 0d0
        zzepbt(k) = 0d0
      enddo

      call computemi(mi)

      ! interference terms are added in this order
      ! M_A(0)^* M_A(1) (tree diagrams with photon, loop diagrams with photon)
      ! M_Z(0)^* M_A(1) (tree diagrams with Z, loop diagrams with photon)
      ! M_A(0)^* M_Z(1) (tree diagrams with photon, loop diagrams with Z)
      ! M_Z(0)^* M_Z(1) (tree diagrams with Z, loop diagrams with Z)

      ! SM no Nf terms
      call computegcoeffnonf(mi,gcoeffarr)
      call addvirt(gcoeffarr, preaa, e_q, e_q, e_q, e_q, 0d0, 0d0, aaep)
      call addvirt(gcoeffarr, preza, gl_q, gr_q, e_q, e_q, 0d0, 0d0, zaep)
      call addvirt(gcoeffarr, preaz, e_q, e_q, gl_q, gr_q, 0d0, 0d0, azep)
      call addvirt(gcoeffarr, prezz, gl_q, gr_q, gl_q, gr_q, 0d0, 0d0, zzep)

      ! SM light Nf terms (all except top)
      call computegcoeffnfl(mi,gcoeffarr)
      call addvirt(gcoeffarr, preaa, e_q, e_q, se_ql, se_ql, 0d0, 0d0, aaep)
      call addvirt(gcoeffarr, preza, gl_q, gr_q, se_ql, se_ql, 0d0, 0d0, zaep)
      call addvirt(gcoeffarr, preaz, e_q, e_q, sgl_ql, sgr_ql, 0d0, 0d0, azep)
      call addvirt(gcoeffarr, prezz, gl_q, gr_q, sgl_ql, sgr_ql, 0d0, 0d0, zzep)

      ! SM heavy Nf terms (top)
      call computegcoeffnfh(mi,gcoeffarr)
      call addvirt(gcoeffarr, preaa, e_q, e_q, se_qh, se_qh, 0d0, 0d0, aaep)
      call addvirt(gcoeffarr, preza, gl_q, gr_q, se_qh, se_qh, 0d0, 0d0, zaep)
      call addvirt(gcoeffarr, preaz, e_q, e_q, sgl_qh, sgr_qh, 0d0, 0d0, azep)
      call addvirt(gcoeffarr, prezz, gl_q, gr_q, sgl_qh, sgr_qh, 0d0, 0d0, zzep)

      ! SM all counterterms
      call computegcoeffct(mi,gcoeffarr)
      call addvirt(gcoeffarr, preaa, e_q, e_q, e_q, e_q, 0d0, 0d0, aaep)
      call addvirt(gcoeffarr, preza, gl_q, gr_q, e_q, e_q, 0d0, 0d0, zaep)
      call addvirt(gcoeffarr, preaz, e_q, e_q, gl_q, gr_q, 0d0, 0d0, azep)
      call addvirt(gcoeffarr, prezz, gl_q, gr_q, gl_q, gr_q, 0d0, 0d0, zzep)

      ! calculate finite parts from poles times Born and colour correlated Born
      ! for extraction of V_fin according to Eq. (2.92) in 0709.2092

      ! terms of order eps^0 from eps^(-2)*Born
      call computegcoeffepmtwo(mi,gcoeffarr)
      call addvirt(gcoeffarr,preaa,e_q,e_q,e_q,e_q,0d0,0d0,aaepbt)
      call addvirt(gcoeffarr,preza,gl_q,gr_q,e_q,e_q,0d0,0d0,zaepbt)
      call addvirt(gcoeffarr,preaz,e_q,e_q,gl_q,gr_q,0d0,0d0,azepbt)
      call addvirt(gcoeffarr,prezz,gl_q,gr_q,gl_q,gr_q,0d0,0d0,zzepbt)

      ! terms of order eps^0 from eps^(-1)*Born
      call computegcoeffepmone(mi,gcoeffarr)
      call addvirt(gcoeffarr,preaa,e_q,e_q,e_q,e_q,0d0,0d0,aaepbo)
      call addvirt(gcoeffarr,preza,gl_q,gr_q,e_q,e_q,0d0,0d0,zaepbo)
      call addvirt(gcoeffarr,preaz,e_q,e_q,gl_q,gr_q,0d0,0d0,azepbo)
      call addvirt(gcoeffarr,prezz,gl_q,gr_q,gl_q,gr_q,0d0,0d0,zzepbo)

      if(powheginput("#qcdonly").eq.1) then
         ! do not calculate SQCD Drell-Yan contributions
      else
         call computemisdy(mi)

         ! bare SQCD Drell-Yan contributions
         call computegcoeffsdyb(mi,gcoeffarr)
         call addvirt(gcoeffarr, preaa, e_q, e_q, e_q, e_q, e_q, e_q, aaep)
         call addvirt(gcoeffarr, preza, gl_q, gr_q, e_q, e_q, e_q, e_q, zaep)
         call addvirt(gcoeffarr, preaz, e_q, e_q, gl_q, gr_q, gl_q, gr_q, azep)
         call addvirt(gcoeffarr, prezz, gl_q, gr_q, gl_q, gr_q, gl_q, gr_q, zzep)

         ! SQCD Drell-Yan counterterms
         call computegcoeffsdyct(mi,gcoeffarr)
         call addvirt(gcoeffarr, preaa, e_q, e_q, e_q, e_q, e_q, e_q, aaep)
         call addvirt(gcoeffarr, preza, gl_q, gr_q, e_q, e_q, e_q, e_q, zaep)
         call addvirt(gcoeffarr, preaz, e_q, e_q, gl_q, gr_q, gl_q, gr_q, azep)
         call addvirt(gcoeffarr, prezz, gl_q, gr_q, gl_q, gr_q, gl_q, gr_q, zzep)
      endif

      FMT = "(I1, I3, I3, 1PE20.12, 1PE20.12, 1PE20.12, 1PE20.12, 1PE20.12, 1PE20.12)"

      pre = 1d0
      call add3vec(sumep, aaep, pre)
      call add3vec(sumep, azep, pre)
      call add3vec(sumep, zaep, pre)
      call add3vec(sumep, zzep, pre)

      virtualDYc=sumep(0)

      pre = 1d0
      call add3vec(sumepbt, aaepbt, pre)
      call add3vec(sumepbt, azepbt, pre)
      call add3vec(sumepbt, zaepbt, pre)
      call add3vec(sumepbt, zzepbt, pre)

      bepmtwo=sumepbt(0)

      pre = 1d0
      call add3vec(sumepbo, aaepbo, pre)
      call add3vec(sumepbo, azepbo, pre)
      call add3vec(sumepbo, zaepbo, pre)
      call add3vec(sumepbo, zzepbo, pre)

      bepmone=sumepbo(0)

      end

