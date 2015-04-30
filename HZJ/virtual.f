C     returns 2 Re(M_B * M_V)/(as/(2pi)), 
C     where M_B is the Born amplitude and 
C     M_V is the finite parte of the virtual amplitude.
C     The as/(2pi) factor is attached at a later point.
C     The virtual amplitude is generated using GoSam. 
      subroutine setvirtual(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      integer vflav(nlegborn)
      real * 8 p(0:3,nlegborn),ep,pt
      real * 8 virtual,virtual_massless,virtual_massive,
     $     virtualGS,virtualGS_massless,virtualGS_massive,
     $     virtualAN,virtualAN_massless,virtualAN_massive
      real * 8 opasopi,nleptfam
      common/decay_corr/opasopi,nleptfam
      logical ini
      data ini/.true./
      save ini
      logical massivetop,massivebottom
      common/massiveflags/massivetop,massivebottom     
      real * 8 kappa_ghb,kappa_ght,kappa_ghz
      common/Hcoupls/kappa_ghb,kappa_ght,kappa_ghz
      integer idvecbos,vdecaymode,Vdecmod
      common/cvecbos/idvecbos,vdecaymode,Vdecmod
      integer whichprogram
      common/cwhichprogram/whichprogram
      save/cwhichprogram/
      integer decflav
      real * 8 multiplicity 
      real * 8 born,bmunu(0:3,0:3,nlegborn),bornjk(nlegborn,nlegborn)

c     whichprogram = 1: GoSam
c     whichprogram = 2: Analytic
c     whichprogram = 3: GoSam + Analytic + print ratios
c     WARNING! The variation of the Higgs couplings to top/bottom/W and
c     the inclusion of bottom loops can be performed only with the analytic
c     computation
      whichprogram=2

      if (ini) then
         if (whichprogram.ne.2) then
            if (vdecaymode.eq.0.or.vdecaymode.eq.10) then
               write(*,*) '******************************************'
               write(*,*) 'Error: cannot handle this type of Z decay'
               write(*,*) 'Adjust parameter whichprogram in virtual.f'
               write(*,*) 'or parameter vdecaymode in powheg.input'
               write(*,*) '******************************************'
               call pwhg_exit(-1)
            endif
            if (massivebottom) then
               write(*,*) '******************************************'
               write(*,*) 'Error: cannot handle massive bottom loops'
               write(*,*) 'Adjust parameter whichprogram in virtual.f'
               write(*,*) 'or parameter massivebottom in powheg.input'
               write(*,*) '******************************************'
               call pwhg_exit(-1)
            endif
            if (kappa_ghz.ne.1d0.or.kappa_ght.ne.1d0
     $              .or.kappa_ghb.ne.1d0) then
               write(*,*) '******************************************'
               write(*,*) 'Error: cannot handle variation of Higgs'
               write(*,*) 'couplings to Z/top/bottom'
               write(*,*) 'Adjust parameter whichprogram in virtual.f'
               write(*,*) 'or parameters kappa_ghz, kappa_ght'
               write(*,*) 'and kappa_ghb in powheg.input'
               write(*,*) '******************************************'
               call pwhg_exit(-1)
            endif
         endif
         ini = .false.
      endif
      
      decflav=abs(vflav(4))        
      
c     hadronic and inclusive Z decay: consider all possible Z decay products
c     ==> they have the same kinematics but different flavors:
c     1001: down-type decay: multiply by 3 (d, s, b)
c     1002: up-type decay: multiply by 2 (u, c)
c     11  : lepton decay: multiply by nleptfam (e,mu or e,mu,tau)
c     12  : neutrino decay: multiply by 3 (ve,vmu,vtau)
c     Factor (1 + alphas(mz)/pi) to take into account the decay corrections

      multiplicity=1d0

      if (vdecaymode.eq.0 .or. vdecaymode.eq.10
     $     .or. vdecaymode.eq.11 .or. vdecaymode.eq.12) then
         if (decflav.eq.11) then
c     leptons 
            multiplicity = nleptfam
         elseif(decflav.eq.12) then
c     neutrinos
            multiplicity = 3
         elseif(decflav.eq.1002) then
c     up-type quarks
            multiplicity = 2*opasopi*nc
         elseif (decflav.eq.1001) then
c     down-type quarks
            multiplicity = 3*opasopi*nc
         else
            write(*,*) 'Wrong case in virtual.f'
            call pwhg_exit(-1)
         endif
      endif

c     finite renormalization from as_DR to as_MSbar (arXiv:1102.5353v2,
c     formula (26)) and shift from DR to CDR (arXiv:1002.2581v1,
c     formula (2.13)):
c     + CA/6 from renormalization, -2*CF/2-CA/6 from shift: total -CF
      call setborn(p,vflav,born,bornjk,bmunu)


      if(whichprogram.eq.1) then
         call compute_GoSam(p,vflav,virtual,virtual_massless,
     $        virtual_massive)
      elseif(whichprogram.eq.2) then
         call compute_AN(p,vflav,virtual,virtual_massless,
     $        virtual_massive)
c     DR -> CDR scheme
         virtual = virtual * multiplicity - born*CF
         virtual_massless = virtual_massless * multiplicity - born*CF
      elseif(whichprogram.eq.3) then
         call compute_GoSam(p,vflav,virtualGS,virtualGS_massless,
     $        virtualGS_massive)
         call compute_AN(p,vflav,virtualAN,virtualAN_massless,
     $        virtualAN_massive)
c     DR -> CDR scheme
         virtualAN_massless =  virtualAN_massless - born*CF
         virtualAN =  virtualAN - born*CF         
         ep=1d-5
         if(abs(virtualAN_massless/virtualGS_massless-1).gt.ep) then
            write(*,*) 'complete', virtualAN/virtualGS
            write(*,*) 'massless', virtualAN_massless/virtualGS_massless
            write(*,*)
         endif

         pt=sqrt(p(1,6)**2+p(2,6)**2)
         if(abs(virtualAN_massive/virtualGS_massive-1).gt.ep.and.
     $        pt.gt.0.5) then
            write(*,*) 'complete', virtualAN/virtualGS
            write(*,111) 'massive ', 
     $           virtualAN_massive/virtualGS_massive,
     $           virtualAN_massive,virtualGS_massive, pt
 111        format((a,4(e14.5,1x)))
            write(*,*)
         endif
 123     continue
         virtual=virtualAN
      endif
      end

c####################################################################
c     virtual = full virtual contribution (massless and massive loops)
c     virtual_massless = ONLY massless loops
c     virtual_massive  = ONLY massive top loops
      subroutine compute_GoSam(p,vflav,virtual,virtual_massless,
     $     virtual_massive)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      real * 8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      real * 8 virtual,virtual_massless,virtual_massive,virtual_complete
      integer ierr,ioerr
      character * 20 param
      character * 20 value
      character * 50 line
      character * 29 path

      integer vflavloc(nlegborn)
      integer proc, i
      integer vflav_gosam(1:nlegborn,0:maxprocborn-1)
      logical equalintlists
      external equalintlists
      integer dim_mom_array
      parameter (dim_mom_array=50)
      real * 8 pgosam(dim_mom_array)
C     real * 8 pgosam(5*nlegborn)
      real * 8 params(10),muren,res(4)
      logical debug
      parameter (debug=.false.)
      logical inidebug
      data inidebug/.true./
      save inidebug
      real * 8 eps, dotp
      external dotp
      parameter (eps=1d-12)
      real * 8 virtualold
      integer idvecbos,vdecaymode,Vdecmod
      common/cvecbos/idvecbos,vdecaymode,Vdecmod
      logical massivetop,massivebottom
      common/massiveflags/massivetop,massivebottom   
      integer whichprogram
      common/cwhichprogram/whichprogram  
      data(vflav_gosam(i,   12),i=1,nlegborn)/
     $      -1,
     $       1,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,   13),i=1,nlegborn)/
     $      -1,
     $       0,
     $      25,
     $     -11,
     $      11,
     $      -1/
      data(vflav_gosam(i,   14),i=1,nlegborn)/
     $       1,
     $      -1,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,   15),i=1,nlegborn)/
     $       1,
     $       0,
     $      25,
     $     -11,
     $      11,
     $       1/
      data(vflav_gosam(i,   24),i=1,nlegborn)/
     $      -2,
     $       2,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,   25),i=1,nlegborn)/
     $      -2,
     $       0,
     $      25,
     $     -11,
     $      11,
     $      -2/
      data(vflav_gosam(i,   26),i=1,nlegborn)/
     $       2,
     $      -2,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,   27),i=1,nlegborn)/
     $       2,
     $       0,
     $      25,
     $     -11,
     $      11,
     $       2/
      data(vflav_gosam(i,    0),i=1,nlegborn)/
     $      -4,
     $       4,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,    1),i=1,nlegborn)/
     $      -4,
     $       0,
     $      25,
     $     -11,
     $      11,
     $      -4/
      data(vflav_gosam(i,    2),i=1,nlegborn)/
     $       4,
     $      -4,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,    3),i=1,nlegborn)/
     $       4,
     $       0,
     $      25,
     $     -11,
     $      11,
     $       4/
      data(vflav_gosam(i,    6),i=1,nlegborn)/
     $      -3,
     $       3,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,    7),i=1,nlegborn)/
     $      -3,
     $       0,
     $      25,
     $     -11,
     $      11,
     $      -3/
      data(vflav_gosam(i,    8),i=1,nlegborn)/
     $       3,
     $      -3,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,    9),i=1,nlegborn)/
     $       3,
     $       0,
     $      25,
     $     -11,
     $      11,
     $       3/
      data(vflav_gosam(i,   18),i=1,nlegborn)/
     $      -5,
     $       5,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,   19),i=1,nlegborn)/
     $      -5,
     $       0,
     $      25,
     $     -11,
     $      11,
     $      -5/
      data(vflav_gosam(i,   20),i=1,nlegborn)/
     $       5,
     $      -5,
     $      25,
     $     -11,
     $      11,
     $       0/
      data(vflav_gosam(i,   21),i=1,nlegborn)/
     $       5,
     $       0,
     $      25,
     $     -11,
     $      11,
     $       5/
      data(vflav_gosam(i,   16),i=1,nlegborn)/
     $       0,
     $      -1,
     $      25,
     $     -11,
     $      11,
     $      -1/
      data(vflav_gosam(i,   17),i=1,nlegborn)/
     $       0,
     $       1,
     $      25,
     $     -11,
     $      11,
     $       1/
      data(vflav_gosam(i,   28),i=1,nlegborn)/
     $       0,
     $      -2,
     $      25,
     $     -11,
     $      11,
     $      -2/
      data(vflav_gosam(i,   29),i=1,nlegborn)/
     $       0,
     $       2,
     $      25,
     $     -11,
     $      11,
     $       2/
      data(vflav_gosam(i,    4),i=1,nlegborn)/
     $       0,
     $      -4,
     $      25,
     $     -11,
     $      11,
     $      -4/
      data(vflav_gosam(i,    5),i=1,nlegborn)/
     $       0,
     $       4,
     $      25,
     $     -11,
     $      11,
     $       4/
      data(vflav_gosam(i,   10),i=1,nlegborn)/
     $       0,
     $      -3,
     $      25,
     $     -11,
     $      11,
     $      -3/
      data(vflav_gosam(i,   11),i=1,nlegborn)/
     $       0,
     $       3,
     $      25,
     $     -11,
     $      11,
     $       3/
      data(vflav_gosam(i,   22),i=1,nlegborn)/
     $       0,
     $      -5,
     $      25,
     $     -11,
     $      11,
     $      -5/
      data(vflav_gosam(i,   23),i=1,nlegborn)/
     $       0,
     $       5,
     $      25,
     $     -11,
     $      11,
     $       5/
      
      vflavloc=vflav
      do i=1,nlegborn
         if (vflavloc(i).ne.0) then     
            if (mod(abs(vflavloc(i)),2).eq.1.and.abs(vflavloc(i)).le.5) 
     $           then
               vflavloc(i)=sign(1,vflavloc(i))
            elseif (mod(abs(vflavloc(i)),2).eq.0.and.
     $              abs(vflavloc(i)).le.5) then
               vflavloc(i)=sign(2,vflavloc(i))
            endif
         endif
      enddo

      do i=0,flst_nborn-1
         if (equalintlists(nlegborn,vflavloc,vflav_gosam(1,i))) then
            proc=i
            goto 222
         endif
      enddo
 111  write(*,*) 'NO matching flavour string between POWHEG and GoSam'
      write(*,*) 'PROGRAM ABORT'
      call exit(1)
      
 222  call gosam_momenta(p,pgosam)
      
      muren=sqrt(st_muren2)
      params(1)=1d0
      param = 'mT='

      if(massivetop) then
         write(value,'(F20.10)') ph_tmass
         line = trim(param)//trim(adjustl(value))
         call OLP_Option(line,ierr)
         call check_gosam_err(param,ierr) 
         call OLP_EvalSubProcess(proc,pgosam,muren,params,res)
         virtual_complete=res(3)
      endif
      if(whichprogram.eq.3 .or. (whichprogram.eq.1.and..not.massivetop))
     $     then
         write(value,'(F20.10)') 0d0
         line = trim(param)//trim(adjustl(value))
         call OLP_Option(line,ierr)
         call check_gosam_err(param,ierr) 
         call OLP_EvalSubProcess(proc,pgosam,muren,params,res)
         virtual_massless=res(3)      
      endif

      if (debug) then
         do i=0,flst_nborn-1
            if (equalintlists(nlegborn,vflav,vflav_gosam(1,i))) then
               proc=i
               goto 987
            endif
         enddo
 182     call exit(1)         
 987     call OLP_EvalSubProcess(proc,pgosam,muren,params,res)
         virtualold=res(3)  
         if (inidebug) then
            write(*,*) 'Writing ratios of the two virtual when'
            write(*,*) 'difference with 1 is > ',eps
            inidebug=.false.
         endif
         if (abs(virtualold/virtual-1).gt.eps) then 
            write(*,*) 'MUST be 1 ===> ',virtualold/virtual
         endif
      endif

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C     GOSAM returns Virtual with NO gs factor ==>
C     virt_gosam ->  virt_gosam * (gs^2)^AlphasPower =  
C     virt_gosam * (4*pi*st_alpha)^AlphasPower
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      virtual_complete=virtual_complete * (4*pi*ph_alphaem)** 3
     $                * (4*pi*st_alpha)** 1
C     The as/(2pi) factor is attached at a later point
C     We have then to multiply for 2*pi
     $                * (2*pi)

      virtual_massless=virtual_massless * (4*pi*ph_alphaem)** 3
     $                * (4*pi*st_alpha)** 1 * (2*pi)

      if(massivetop) then
         virtual_massive = virtual_complete - virtual_massless
         virtual = virtual_complete
      else
         virtual = virtual_massless
      endif
      end


c####################################################################
c     virtual = full virtual contribution (massless and massive loops)
c     virtual_massless = ONLY massless loops
c     virtual_massive  = ONLY massive loops (top or top+bottom)
      subroutine compute_AN(p,vflav,virtual,virtual_massless,
     $     virtual_massive)
      implicit none
      include 'nlegborn.h'
      real * 8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      real * 8 virtual,virtual_massless,virtual_massive
      logical massivetop,massivebottom
      common/massiveflags/massivetop,massivebottom
      call setvirtual_massless(p,vflav,virtual_massless)
      if(massivetop.or.massivebottom) then
         call setvirtual_massive(p,vflav,virtual_massive)      
      endif
      virtual = virtual_massless + virtual_massive
      end





      subroutine setvirtual_massless(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      include 'pwhg_flg.h'
      integer vflav(nlegborn)
      real * 8 p(0:3,nlegborn),virtual
      real * 8 opasopi,nleptfam
      common/decay_corr/opasopi,nleptfam
      real * 8 pp(0:3,nlegborn),opp(0:3,nlegborn),gw,colfac,amp2,couplz
      real * 8 omuren2
      integer ovflav(nlegborn)
      complex *16 t0,vec1t,ax1t,vec2t,ax2t,vec3t,ax3t,vec1b,ax1b,vec2b,
     $     ax2b,vec3b,ax3b,vec_m0,ax_m0
      common/amplitudes/vec1t,ax1t,vec2t,ax2t,vec3t,ax3t,vec1b,ax1b,
     $     vec2b,ax2b,vec3b,ax3b,vec_m0,ax_m0
      save/amplitudes/ 
      real * 8 VL,AL,VQ,AQ,HV,HA,LV,LA
      common/Zcoupls/VL,AL,VQ,AQ,HV,HA,LV,LA
      integer idvecbos,vdecaymode,Vdecmod
      common/cvecbos/idvecbos,vdecaymode,Vdecmod
      real * 8 kappa_ghb,kappa_ght,kappa_ghz
      common/Hcoupls/kappa_ghb,kappa_ght,kappa_ghz
      logical eqmom
      logical ini
      data ini/.true./
      save ini
      integer decflav
      real * 8 multiplicity

      if (ini) then
c     assign an impossible value to the renormalization scale
         omuren2=0d0
         ini=.false.
      endif
      multiplicity = 1d0
      decflav=abs(vflav(4))
      pp=p
      gw=ph_unit_e/ph_sthw
      couplz = ph_unit_e/(2d0*ph_sthw*ph_cthw)
      if(vflav(4).lt.0)then
         call swap_momenta(pp(:,4),pp(:,5))
      endif
      if (vflav(1).gt.0.and.vflav(2).eq.0) then
         call swap_momenta_minus(pp(:,2),pp(:,6))
      elseif (vflav(1).eq.0.and.vflav(2).lt.0) then
         call swap_momenta_minus(pp(:,1),pp(:,6))
      elseif (vflav(1).lt.0.and.vflav(2).gt.0) then
         call swap_momenta(pp(:,1),pp(:,2))
      elseif (vflav(1).lt.0.and.vflav(2).eq.0) then
         call swap_momenta_minus(pp(:,2),pp(:,6))
         call swap_momenta(pp(:,1),pp(:,2))
      elseif (vflav(1).eq.0.and.vflav(2).gt.0) then
         call swap_momenta_minus(pp(:,1),pp(:,6))
         call swap_momenta(pp(:,1),pp(:,2))
      endif
      
      call compute_couplings(vflav)

c     in case of hadronic and inclusive Z decay, this part allows
c     multiple computation since every amplitude is computed for
c     up-type quarks, down-type quarks, lepton and neutrino decay
c     the amplitudes are the same apart from the couplings to the
c     boson (LV and LA), and their value is stored
      if (.not.(eqmom(opp,pp,nlegborn).and.omuren2.eq.st_muren2.and.
     $     vflav(1).eq.ovflav(1).and.vflav(2).eq.ovflav(2)))then
         call compute_kininvariants_eptensors(pp)
         call virt_amp_massless_quarks(vec_m0,ax_m0)
c     save momenta, renormalization scale and vflav for next call
         opp = pp
         omuren2 = st_muren2
         ovflav=vflav
      endif
c     factor 4mz^4/v^2 from Higgs vertex; but v^2 = 4mw^2/gw^2
c     total: gw^2 mz^4/mw^2
      t0=(LV*vec_m0-LA*ax_m0)*(gw*ph_Zmass2/ph_Wmass)**2

c     QUARK-GLUON SWITCH AND COLOUR FACTORS
c     1/4 from average over initial spins, 1/nc from average over quark colours
c     and 1/(nc^2-1) from average over gluon colours
      if(vflav(6).ne.0) then
         amp2=-1d0   !quark-gluon switch
         colfac=CF*nc/4d0/nc/(nc**2-1d0)
      else
         amp2=1d0   !no quark-gluon switch
         colfac=CF*nc/4d0/nc**2
      endif
      amp2=amp2*colfac*2*REAL(t0)

c     coupling constants
c     factor couplz^2 from each weak vertex: two vertices, couplz^4
c     factor -alpha_s^2 from strong factors: strip off alpha_s/2pi,
c     from strong vertex: -2*pi*alpha_s
      virtual=(-2d0*pi*st_alpha)*couplz**4*amp2

*********************************************************      
***   MODIFICATION OF Higgs-Z couplings:
***   (we assume multiplicative kappa-factors)     
      virtual = kappa_ghz**2*virtual
      end


      subroutine setvirtual_massive(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      integer vflav(nlegborn)
      real * 8 p(0:3,nlegborn),virtual
      real * 8 pp(0:3,nlegborn),opp(0:3,nlegborn),gw,colfac,amp2
      real * 8 couplz,At,Ab,omuren2
      integer ovflav(nlegborn)
      logical massivetop,massivebottom
      common/massiveflags/massivetop,massivebottom
      complex *16 top1,top2,top3,bot1,bot2,bot3
      complex *16 vec1t,ax1t,vec2t,ax2t,vec3t,ax3t,vec1b,ax1b,vec2b,
     $     ax2b,vec3b,ax3b,vec_m0,ax_m0
      common/amplitudes/vec1t,ax1t,vec2t,ax2t,vec3t,ax3t,vec1b,ax1b,
     $     vec2b,ax2b,vec3b,ax3b,vec_m0,ax_m0
      save/amplitudes/
      real * 8 VL,AL,VQ,AQ,HV,HA,LV,LA
      common/Zcoupls/VL,AL,VQ,AQ,HV,HA,LV,LA
      integer idvecbos,vdecaymode,Vdecmod
      common/cvecbos/idvecbos,vdecaymode,Vdecmod
      real * 8 kappa_ghb,kappa_ght,kappa_ghz
      common/Hcoupls/kappa_ghb,kappa_ght,kappa_ghz
      logical eqmom
      logical ini
      data ini/.true./
      save ini
      integer decflav
      real * 8 multiplicity

      if (ini) then
c     assign an impossible value to the renormalization scale
         omuren2=0d0
         ini=.false.
      endif
      decflav=abs(vflav(4))

      pp=p
      gw=ph_unit_e/ph_sthw
      couplz = ph_unit_e/(2d0*ph_sthw*ph_cthw)
      if(vflav(4).lt.0)then
         call swap_momenta(pp(:,4),pp(:,5))
      endif
      if (vflav(1).gt.0.and.vflav(2).eq.0) then
         call swap_momenta_minus(pp(:,2),pp(:,6))
      elseif (vflav(1).eq.0.and.vflav(2).lt.0) then
         call swap_momenta_minus(pp(:,1),pp(:,6))
      elseif (vflav(1).lt.0.and.vflav(2).gt.0) then
         call swap_momenta(pp(:,1),pp(:,2))
      elseif (vflav(1).lt.0.and.vflav(2).eq.0) then
         call swap_momenta_minus(pp(:,2),pp(:,6))
         call swap_momenta(pp(:,1),pp(:,2))
      elseif (vflav(1).eq.0.and.vflav(2).gt.0) then
         call swap_momenta_minus(pp(:,1),pp(:,6))
         call swap_momenta(pp(:,1),pp(:,2))
      endif

      call compute_couplings(vflav)
      At = +1d0/2d0 ! axial coupling to top quark
      Ab = -1d0/2d0 ! axial coupling to bottom quark

c     in case of hadronic and inclusive Z decay, this part allows to avoid 
c     multiple computation since every amplitude is computed for 
c     up-type quark, down-type quark, lepton and neutrino decay:
c     the amplitudes are the same apart from the couplings to the Z 
c     boson (LV and LA)
      if (.not.(eqmom(opp,pp,nlegborn).and.omuren2.eq.st_muren2.and.
     $     vflav(1).eq.ovflav(1).and.vflav(2).eq.ovflav(2)))then      
         call compute_kininvariants_eptensors(pp)

         if(massivetop) then
            call virt_amp_box_ggHZ(ph_tmass,At,vec1t,ax1t)
c     factor mz^2*m/v^2 from Higgs vertex;
c     total: gw^2*mz^2*m/4mw^2
            call virt_amp_tri_ggZ(ph_tmass,At,vec2t,ax2t)
c     factor 2mz^4/v^2 from Higgs vertex and color factor;
c     total: gw^2*mz^4/2mw^2
            call virt_amp_tri_ggH(ph_tmass,vec3t,ax3t)
c     factor mz^2*m/v^2 from Higgs vertex and color factor;
c     total:  gw^2*mz^2*m/4mw^2
         endif
         if(massivebottom) then
            call virt_amp_box_ggHZ(ph_bmass,Ab,vec1b,ax1b)
            call virt_amp_tri_ggZ(ph_bmass,Ab,vec2b,ax2b)
            call virt_amp_tri_ggH(ph_bmass,vec3b,ax3b)
         endif
c     save momenta, renormalization scale and vlfav for next call
         opp = pp
         omuren2 = st_muren2
         ovflav=vflav
      endif

*********************************************************      
***   MODIFICATION OF Higgs couplings to Z/top/bottom:
***   (we assume multiplicative kappa factors)
c     overall kappa_ghz*ph_Zmass2*gw**2 added later
      top1=(ph_tmass/4/ph_Wmass2)*(LV*vec1t-LA*ax1t)*kappa_ght
      top2=(ph_Zmass2/ph_Wmass2/2d0)*(LV*vec2t-LA*ax2t)*kappa_ghz
      top3=(ph_tmass/4/ph_Wmass2)*(LV*vec3t-LA*ax3t)*kappa_ght
      
      bot1=(ph_bmass/4/ph_Wmass2)*(LV*vec1b-LA*ax1b)*kappa_ghb
      bot2=(ph_Zmass2/ph_Wmass2/2d0)*(LV*vec2b-LA*ax2b)*kappa_ghz
      bot3=(ph_bmass/4/ph_Wmass2)*(LV*vec3b-LA*ax3b)*kappa_ghb

c     QUARK-GLUON SWITCH AND COLOUR FACTORS
c     1/4 from average over initial spins, 1/nc from average over quark colours
c     and 1/(nc^2-1) from average over gluon colours
      if(vflav(6).ne.0) then
         amp2=-1d0   !quark-gluon switch
         colfac=CF*nc/4d0/nc/(nc**2-1d0)
      else
         amp2=1d0   !no quark-gluon switch
         colfac=CF*nc/4d0/nc**2
      endif

      amp2=amp2*ph_Zmass2*gw**2*colfac*kappa_ghz*
     $     2*REAL(top1+top2+top3+bot1+bot2+bot3)

c     coupling constants
c     factor couplz^2 from each weak vertex: two vertices, couplz^4
c     factor -alpha_s^2 from strong factors: strip off alpha_s/2pi,
c     from strong vertex: -2*pi*alpha_s
      virtual=couplz**4*(-2d0*pi*st_alpha)*amp2
      end


      subroutine compute_couplings(vflav)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      integer vflav(nlegborn)
      real * 8 VL,AL,VQ,AQ,HV,HA,LV,LA
      common/Zcoupls/VL,AL,VQ,AQ,HV,HA,LV,LA
      save/Zcoupls/
      real * 8 chargeL,chargeQ,T3L,T3Q
c     PRODUCTS OF THE Z BOSON DECAY
      if(abs(vflav(4)).eq.1001) then
c     DOWN-TYPE QUARK
         chargeL = -1d0/3d0
         T3L = -1d0/2d0         
      elseif(abs(vflav(4)).eq.1002) then
c     UP-TYPE QUARK
         chargeL = 2d0/3d0
         T3L = 1d0/2d0   
      elseif(abs(vflav(4)).eq.11) then
c     LEPTON
         chargeL = -1d0
         T3L = -1d0/2d0   
      else
c     NEUTRINO
         chargeL = 0d0
         T3L = 1d0/2d0   
      endif

      if (vflav(6).eq.0) then
         if (mod(abs(vflav(1)),2).eq.0) then
c     UP-TYPE QUARK INCOMING
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
         elseif (mod(abs(vflav(1)),2).eq.1) then
c     DOWN-TYPE QUARK INCOMING
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
         endif
      else
         if (mod(abs(vflav(6)),2).eq.0) then
c     UP-TYPE QUARK
            chargeQ = 2d0/3d0
            T3Q = 1d0/2d0
         elseif (mod(abs(vflav(6)),2).eq.1) then
c     DOWN-TYPE QUARK
            chargeQ = -1d0/3d0
            T3Q = -1d0/2d0
         endif
      endif

c     vectorial and axial couplings to the Z boson
      VL = T3L - 2*chargeL*ph_sthw2
      AL = T3L
      VQ = T3Q - 2*chargeQ*ph_sthw2
      AQ = T3Q

      LV = VL**2+AL**2
      LA = 2*VL*AL
      HV = VQ**2+AQ**2
      HA = 2*VQ*AQ
      end


      subroutine compute_kininvariants_eptensors(p)
c     this subroutine computes the kinematical invariants, and the
c     epsilon tensors multiplied by the imaginary unit, since in all the 
c     analytic results the epsilon tensors appear only in the imaginary part 
c     of the amplitude (for this reason, the imaginary part of the analytic
c     amplitude does not contain the I factor)
      implicit none
      include 'nlegborn.h'
      real * 8 p(0:3,nlegborn)

      real * 8 p1(0:3),p2(0:3),p3(0:3),p4(0:3),p5(0:3),p6(0:3),r(0:3),
     $     qp(0:3),p12,p13,p14,p15,p16,p23,p24,p25,p26,p33,p34,p35,p36,
     $     p45,p46,p56,p3r,p4r,p6r,q2,qp2,k2
      common/kin_inv/p1,p2,p3,p4,p5,p6,r,qp,p12,p13,p14,p15,p16,p23,
     $     p24,p25,p26,p33,p34,p35,p36,p45,p46,p56,p3r,p4r,p6r,q2,qp2,k2
      save/kin_inv/

      complex * 16 e1234,e1236,e1264,e1364,e2364
      common/ep_tensors/e1234,e1236,e1264,e1364,e2364
      save/ep_tensors/

      real * 8 epsilon,dotp
      external epsilon,dotp

      p1 = p(:,1)
      p2 = p(:,2)
      p3 = p(:,3)
      p4 = p(:,4)
      p5 = p(:,5)
      p6 = p(:,6)
      r  = p1+p2
      qp = p4+p5

      p12=dotp(p1,p2)
      p13=dotp(p1,p3)
      p14=dotp(p1,p4)
      p15=dotp(p1,p5)
      p16=dotp(p1,p6)
      p23=dotp(p2,p3)
      p24=dotp(p2,p4)
      p25=dotp(p2,p5)
      p26=dotp(p2,p6)
      p33=dotp(p3,p3)
      p34=dotp(p3,p4)
      p35=dotp(p3,p5)
      p36=dotp(p3,p6)
      p45=dotp(p4,p5)
      p46=dotp(p4,p6)
      p56=dotp(p5,p6)
      p3r=dotp(p3,p1+p2)
      p4r=dotp(p4,p1+p2)
      p6r=dotp(p6,p1+p2)
      q2=dotp(p1+p2-p6,p1+p2-p6)
      qp2=dotp(p4+p5,p4+p5)
      k2=dotp(p3+p6,p3+p6)

      e1234 = cmplx(0d0,1d0)*epsilon(p1,p2,p3,p4)
      e1236 = cmplx(0d0,1d0)*epsilon(p1,p2,p3,p6)
      e1264 = cmplx(0d0,1d0)*epsilon(p1,p2,p6,p4)
      e1364 = cmplx(0d0,1d0)*epsilon(p1,p3,p6,p4)
      e2364 = cmplx(0d0,1d0)*epsilon(p2,p3,p6,p4)
      end

      subroutine swap_momenta(p1,p2)
      implicit none
      real * 8 p1(0:3),p2(0:3),tmp(0:3)
      tmp=p1
      p1=p2
      p2=tmp
      end

      subroutine swap_momenta_minus(p1,p2)
      implicit none
      real * 8 p1(0:3),p2(0:3)
      call swap_momenta(p1,p2)
      p1=-p1
      p2=-p2
      end


      function eqmom(p1,p2,n)
      implicit none
      logical eqmom
      integer n
      real * 8 p1(0:3,n),p2(0:3,n)
      integer mu,i
      eqmom=.true.
      do i=1,n
         do mu=0,3
            if (p1(mu,i).ne.p2(mu,i)) then
               eqmom=.false.
               return
            endif
         enddo
      enddo
      end
