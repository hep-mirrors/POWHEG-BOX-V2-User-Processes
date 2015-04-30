C     returns 2 Re(M_B * M_V)/(as/(2pi)), 
C     where M_B is the Born amplitude and 
C     M_V is the finite parte of the virtual amplitude.
C     The as/(2pi) factor is attached at a later point.
C     The virtual amplitude is generated using GoSam. 
      subroutine setvirtual(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      real * 8 p(0:3,nlegborn),ep,pt
      real * 8 virtual,virtual_massless,virtual_massive,
     $     virtualGS,virtualGS_massless,virtualGS_massive,
     $     virtualAN,virtualAN_massless,virtualAN_massive
      integer vflav(nlegborn)
      real * 8 opasopi,sumCKM,nleptfam
      common/decay_corr/opasopi,sumCKM,nleptfam
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      integer whichprogram
      common/cwhichprogram/whichprogram
      save/cwhichprogram/
      real * 8 multiplicity 
      real * 8 born,bmunu(0:3,0:3,nlegborn),bornjk(nlegborn,nlegborn)

c     whichprogram = 1: GoSam
c     whichprogram = 2: Analytic
c     whichprogram = 3: GoSam + Analytic + print ratios
c     WARNING! The variation of the Higgs couplings to top/bottom/W and
c     the inclusion of bottom loops can be performed only with the analytic
c     computation
      whichprogram=2


c     finite renormalization from as_DR to as_MSbar (arXiv:1102.5353v2,
c     formula (26)) and shift from DR to CDR (arXiv:1002.2581v1,
c     formula (2.13)):
c     + CA/6 from renormalization, -2*CF/2-CA/6 from shift: total -CF
      call setborn(p,vflav,born,bornjk,bmunu)

      multiplicity=1d0           
      if (vdecaymode.eq.0) then
c     sum over the hadronic final states: multiply by the sum of the 
c     squared CKM matrix elements -> all the elements apart from the  
c     top-quark ones
c     Factor (1 + alphas(mw)/pi) to take into account the corrections  
c     to the decay products
         multiplicity = sumCKM*opasopi*nc
      elseif (vdecaymode.eq.10) then
c     sumCKM*(1 + alphas(mw)/pi) from sum over hadronic W decay products 
c     and to take into account the corrections to the decay products, 
c     nleptfam for leptonic W decay products
         multiplicity = (nleptfam+sumCKM*opasopi*nc)
      elseif (vdecaymode.eq.112) then
c     nleptfam for leptonic W decay products
         multiplicity = nleptfam
      endif


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
            write(*,*) 'massive ', virtualAN_massive/virtualGS_massive
            write(*,*)
         endif
         virtual=virtualAN
      endif
      end



c####################################################################
c     virtual = full virtual contribution (massless and massive loops)
c     virtual_massless = ONLY massless loops
c     virtual_massive = ONLY massive loops (top or top+bottom)
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
           
c####################################################################
c     virtual = full virtual contribution (massless and massive loops)
c     virtual_massless = ONLY massless loops
c     virtual_massive = ONLY massive top loops
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
      integer proc, i, iprod,iq1,iq2
      integer vflav_gosam(1:nlegborn,0:maxprocborn-1)
      logical equalintlists
      external equalintlists
      integer dim_mom_array
      parameter (dim_mom_array=50)
      real * 8 pgosam(dim_mom_array)
C     real * 8 pgosam(5*nlegborn)
      real * 8 params(10),muren,res(4)
      real * 8 virtualold
      logical debug
      parameter (debug=.false.)
      logical inidebug
      data inidebug/.true./
      save inidebug
      real * 8 eps
      parameter (eps=1d-6)
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      logical massivetop,massivebottom
      common/massiveflags/massivetop,massivebottom
      integer whichprogram
      common/cwhichprogram/whichprogram
      data(vflav_gosam(i,   30),i=1,nlegborn)/
     $      -1,
     $       2,
     $      25,
     $     -11,
     $      12,
     $       0/
      data(vflav_gosam(i,   18),i=1,nlegborn)/
     $      -1,
     $       4,
     $      25,
     $     -11,
     $      12,
     $       0/
      data(vflav_gosam(i,   31),i=1,nlegborn)/
     $      -1,
     $       0,
     $      25,
     $     -11,
     $      12,
     $      -2/
      data(vflav_gosam(i,   19),i=1,nlegborn)/
     $      -1,
     $       0,
     $      25,
     $     -11,
     $      12,
     $      -4/
      data(vflav_gosam(i,   32),i=1,nlegborn)/
     $       2,
     $      -1,
     $      25,
     $     -11,
     $      12,
     $       0/
      data(vflav_gosam(i,   13),i=1,nlegborn)/
     $       2,
     $      -3,
     $      25,
     $     -11,
     $      12,
     $       0/
      data(vflav_gosam(i,    1),i=1,nlegborn)/
     $       2,
     $      -5,
     $      25,
     $     -11,
     $      12,
     $       0/
      data(vflav_gosam(i,   33),i=1,nlegborn)/
     $       2,
     $       0,
     $      25,
     $     -11,
     $      12,
     $       1/
      data(vflav_gosam(i,   14),i=1,nlegborn)/
     $       2,
     $       0,
     $      25,
     $     -11,
     $      12,
     $       3/
      data(vflav_gosam(i,    2),i=1,nlegborn)/
     $       2,
     $       0,
     $      25,
     $     -11,
     $      12,
     $       5/
      data(vflav_gosam(i,   20),i=1,nlegborn)/
     $       4,
     $      -1,
     $      25,
     $     -11,
     $      12,
     $       0/
      data(vflav_gosam(i,   25),i=1,nlegborn)/
     $       4,
     $      -3,
     $      25,
     $     -11,
     $      12,
     $       0/
      data(vflav_gosam(i,    7),i=1,nlegborn)/
     $       4,
     $      -5,
     $      25,
     $     -11,
     $      12,
     $       0/
      data(vflav_gosam(i,   21),i=1,nlegborn)/
     $       4,
     $       0,
     $      25,
     $     -11,
     $      12,
     $       1/
      data(vflav_gosam(i,   26),i=1,nlegborn)/
     $       4,
     $       0,
     $      25,
     $     -11,
     $      12,
     $       3/
      data(vflav_gosam(i,    8),i=1,nlegborn)/
     $       4,
     $       0,
     $      25,
     $     -11,
     $      12,
     $       5/
      data(vflav_gosam(i,   15),i=1,nlegborn)/
     $      -3,
     $       2,
     $      25,
     $     -11,
     $      12,
     $       0/
      data(vflav_gosam(i,   27),i=1,nlegborn)/
     $      -3,
     $       4,
     $      25,
     $     -11,
     $      12,
     $       0/
      data(vflav_gosam(i,   16),i=1,nlegborn)/
     $      -3,
     $       0,
     $      25,
     $     -11,
     $      12,
     $      -2/
      data(vflav_gosam(i,   28),i=1,nlegborn)/
     $      -3,
     $       0,
     $      25,
     $     -11,
     $      12,
     $      -4/
      data(vflav_gosam(i,    3),i=1,nlegborn)/
     $      -5,
     $       2,
     $      25,
     $     -11,
     $      12,
     $       0/
      data(vflav_gosam(i,    9),i=1,nlegborn)/
     $      -5,
     $       4,
     $      25,
     $     -11,
     $      12,
     $       0/
      data(vflav_gosam(i,    4),i=1,nlegborn)/
     $      -5,
     $       0,
     $      25,
     $     -11,
     $      12,
     $      -2/
      data(vflav_gosam(i,   10),i=1,nlegborn)/
     $      -5,
     $       0,
     $      25,
     $     -11,
     $      12,
     $      -4/
      data(vflav_gosam(i,   34),i=1,nlegborn)/
     $       0,
     $      -1,
     $      25,
     $     -11,
     $      12,
     $      -2/
      data(vflav_gosam(i,   22),i=1,nlegborn)/
     $       0,
     $      -1,
     $      25,
     $     -11,
     $      12,
     $      -4/
      data(vflav_gosam(i,   35),i=1,nlegborn)/
     $       0,
     $       2,
     $      25,
     $     -11,
     $      12,
     $       1/
      data(vflav_gosam(i,   17),i=1,nlegborn)/
     $       0,
     $       2,
     $      25,
     $     -11,
     $      12,
     $       3/
      data(vflav_gosam(i,    5),i=1,nlegborn)/
     $       0,
     $       2,
     $      25,
     $     -11,
     $      12,
     $       5/
      data(vflav_gosam(i,   23),i=1,nlegborn)/
     $       0,
     $       4,
     $      25,
     $     -11,
     $      12,
     $       1/
      data(vflav_gosam(i,   29),i=1,nlegborn)/
     $       0,
     $       4,
     $      25,
     $     -11,
     $      12,
     $       3/
      data(vflav_gosam(i,   11),i=1,nlegborn)/
     $       0,
     $       4,
     $      25,
     $     -11,
     $      12,
     $       5/
      data(vflav_gosam(i,   12),i=1,nlegborn)/
     $       0,
     $      -3,
     $      25,
     $     -11,
     $      12,
     $      -2/
      data(vflav_gosam(i,   24),i=1,nlegborn)/
     $       0,
     $      -3,
     $      25,
     $     -11,
     $      12,
     $      -4/
      data(vflav_gosam(i,    0),i=1,nlegborn)/
     $       0,
     $      -5,
     $      25,
     $     -11,
     $      12,
     $      -2/
      data(vflav_gosam(i,    6),i=1,nlegborn)/
     $       0,
     $      -5,
     $      25,
     $     -11,
     $      12,
     $      -4/

      if(idvecbos.eq.-24) then
         call cconj(vflav,nlegborn)
         call pconj(p,nlegborn)
      endif

c     transfer the flavor list into a list with only up and down quark or antiquark
      vflavloc=vflav
      iq1 = 0
      iq2 = 0
      do i=1,nlegborn
         if (vflavloc(i).ne.0) then
            if (mod(abs(vflavloc(i)),2).eq.1.and.abs(vflavloc(i)).le.5) 
     $           then
               iq1 = abs(vflavloc(i))
               vflavloc(i)=sign(1,vflavloc(i))
            elseif (mod(abs(vflavloc(i)),2).eq.0.and.
     $              abs(vflavloc(i)).le.5) then
               iq2 = abs(vflavloc(i))
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

      
      if (massivetop) then
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
      
c     trick to figure out which case we are dealing with
c     iq1    iq2    iq1*iq2
c      1      2        2  
c      1      4        4
c      3      2        6
c      3      4       12
c      5      2       10
c      5      4       20

      iprod=iq1*iq2
      if (iprod.eq.4) then
         virtual_complete=virtual_complete*ph_CKM(2,1)**2/ph_CKM(1,1)**2
         virtual_massless=virtual_massless*ph_CKM(2,1)**2/ph_CKM(1,1)**2
      elseif (iprod.eq.6) then
         virtual_complete=virtual_complete*ph_CKM(1,2)**2/ph_CKM(1,1)**2
         virtual_massless=virtual_massless*ph_CKM(1,2)**2/ph_CKM(1,1)**2
      elseif (iprod.eq.12) then
         virtual_complete=virtual_complete*ph_CKM(2,2)**2/ph_CKM(1,1)**2
         virtual_massless=virtual_massless*ph_CKM(2,2)**2/ph_CKM(1,1)**2
      elseif (iprod.eq.10) then
         virtual_complete=virtual_complete*ph_CKM(1,3)**2/ph_CKM(1,1)**2
         virtual_massless=virtual_massless*ph_CKM(1,3)**2/ph_CKM(1,1)**2
      elseif (iprod.eq.20) then
         virtual_complete=virtual_complete*ph_CKM(2,3)**2/ph_CKM(1,1)**2
         virtual_massless=virtual_massless*ph_CKM(2,3)**2/ph_CKM(1,1)**2
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

c      write(*,*) virtualold

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
     $                * (4*pi*st_alpha)** 1
C     The as/(2pi) factor is attached at a later point
C     We have then to multiply for 2*pi
     $                * (2*pi)

      if(massivetop) then
         virtual_massive = virtual_complete - virtual_massless
         virtual = virtual_complete
      else
         virtual = virtual_massless
      endif

      if(idvecbos.eq.-24) then
         call cconj(vflav,nlegborn)
         call pconj(p,nlegborn)
      endif
      
      end


      subroutine setvirtual_massless(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      integer vflav(nlegborn),i,j
      real *8 p(0:3,nlegborn),pp(0:3,nlegborn),virtual,gw,colfac,amp2
      complex *16 t0
      real * 8 opasopi,sumCKM,nleptfam
      common/decay_corr/opasopi,sumCKM,nleptfam
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      real * 8 kappa_ghb,kappa_ght,kappa_ghw
      common/Hcoupls/kappa_ghb,kappa_ght,kappa_ghw
      pp=p
      gw=ph_unit_e/ph_sthw
c     if it's W- PRODUCTION then pp=p, no exchange p4 <--> p5
      if(vflav(4).lt.0)then
c     it's  W+ PRODUCTION
         call swap_momenta(pp(:,4),pp(:,5))
      endif
      if (vflav(1).gt.0.and.vflav(2).eq.0) then
c     quark emission
         call swap_momenta_minus(pp(:,2),pp(:,6))
      elseif (vflav(1).eq.0.and.vflav(2).lt.0) then
c     antiquark emission
         call swap_momenta_minus(pp(:,1),pp(:,6))
      elseif (vflav(1).lt.0.and.vflav(2).gt.0) then
c     gluon emission, vflav(1)<0
         call swap_momenta(pp(:,1),pp(:,2))
      elseif (vflav(1).lt.0.and.vflav(2).eq.0) then
c     antiquark emission, vflav(1)<0
         call swap_momenta_minus(pp(:,2),pp(:,6))
         call swap_momenta(pp(:,1),pp(:,2))
      elseif (vflav(1).eq.0.and.vflav(2).gt.0) then
c     quark emission, vflav(1)<0
         call swap_momenta_minus(pp(:,1),pp(:,6))
         call swap_momenta(pp(:,1),pp(:,2))
      endif
      call virt_amp_massless_quarks(pp,t0)
c     factor 4mw^4/v^2 from Higgs vertex; but v^2 = 4mw^2/gw^2
c     from Higgs vertex: mw^2 gw^2
      t0=t0*(ph_Wmass2*gw**2)
c     QUARK-GLUON SWITCH, CKM MATRIX AND COLOUR FACTORS
c     1/4 from average over initial spins, 1/nc from average over quark colours
c     and 1/(nc^2-1) from average over gluon colours
      if(vflav(6).ne.0) then
         amp2=-1d0   !quark-gluon switch
         colfac=CF*nc/4d0/nc/(nc**2-1d0)
         j=vflav(6)
         if (vflav(1).eq.0) then
            i=vflav(2)
         else
            i=vflav(1)
         endif
      else
         amp2=1d0   !no quark-gluon switch
         colfac=CF*nc/4d0/nc**2
         i=vflav(1)
         j=vflav(2)
      endif
      if (mod(i,2).eq.0) then
         amp2=amp2*colfac*ph_CKM(abs(i)/2,(abs(j)+1)/2)**2
      else
         amp2=amp2*colfac*ph_CKM(abs(j)/2,(abs(i)+1)/2)**2
      endif
      amp2 = amp2*2*REAL(t0)
c     coupling constants
c     factor gw^2/8 from each weak vertex: two vertices, gw^4/64
c     factor -alpha_s^2 from strong factors: strip off alpha_s/2pi,
c     from strong vertex: -2*pi*alpha_s
      virtual=(-2*pi*st_alpha)*(gw**2/8d0)**2*amp2

*********************************************************      
***   MODIFICATION OF Higgs-W couplings:
***   (we assume multiplicative kappa-factors)     
      virtual  = kappa_ghw**2*virtual

      end


      subroutine setvirtual_massive(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      integer vflav(nlegborn),i,j
      real *8 p(0:3,nlegborn),pp(0:3,nlegborn),virtual
      real *8 gw,colfac,amp2
      complex *16 w0,top0,bot0,loop_top,loop_bot
      logical massivetop,massivebottom
      common/massiveflags/massivetop,massivebottom
      real * 8 kappa_ghb,kappa_ght,kappa_ghw
      common/Hcoupls/kappa_ghb,kappa_ght,kappa_ghw
      pp=p
      gw=ph_unit_e/ph_sthw
c     if it's W- PRODUCTION then pp=p, no exchange p4 <--> p5
      if(vflav(4).lt.0)then
c     it's  W+ PRODUCTION
         call swap_momenta(pp(:,4),pp(:,5))
      endif
      if (vflav(1).gt.0.and.vflav(2).eq.0) then
c     quark emission
         call swap_momenta_minus(pp(:,2),pp(:,6))
      elseif (vflav(1).eq.0.and.vflav(2).lt.0) then
c     antiquark emission
         call swap_momenta_minus(pp(:,1),pp(:,6))
      elseif (vflav(1).lt.0.and.vflav(2).gt.0) then
c     gluon emission, vflav(1)<0
         call swap_momenta(pp(:,1),pp(:,2))
      elseif (vflav(1).lt.0.and.vflav(2).eq.0) then
c     antiquark emission, vflav(1)<0
         call swap_momenta_minus(pp(:,2),pp(:,6))
         call swap_momenta(pp(:,1),pp(:,2))
      elseif (vflav(1).eq.0.and.vflav(2).gt.0) then
c     quark emission, vflav(1)<0
         call swap_momenta_minus(pp(:,1),pp(:,6))
         call swap_momenta(pp(:,1),pp(:,2))
      endif

      call virt_amp_massive_quarks(pp,w0)
c     factor mw^2*mf/v^2 from Higgs vertex; but v^2 = 4mw^2/gw^2
c     from Higgs vertex: gw^2 mf/4
      if(massivetop) then
         call loop_coefficient(pp,loop_top,ph_tmass)
         top0=(gw**2*ph_tmass/4d0)*kappa_ght*kappa_ghw*w0*loop_top
      endif
      if(massivebottom) then
         call loop_coefficient(pp,loop_bot,ph_bmass)
         bot0=(gw**2*ph_bmass/4d0)*kappa_ghb*kappa_ghw*w0*loop_bot
      endif

c     QUARK-GLUON SWITCH, CKM MATRIX AND COLOUR FACTORS
c     1/4 from average over initial spins, 1/n from average over quark colours
c     and 1/(n^2-1) from average over gluon colours
      if(vflav(6).ne.0) then
         amp2=-1d0   !quark-gluon switch
         colfac=CF*nc/4d0/nc/(nc**2-1d0)
         j=vflav(6)
         if (vflav(1).eq.0) then
            i=vflav(2)
         else
            i=vflav(1)
         endif
      else
         amp2=1d0   !no quark-gluon switch
         colfac=CF*nc/4d0/nc**2
         i=vflav(1)
         j=vflav(2)
      endif
      if (mod(i,2).eq.0) then
         amp2=amp2*colfac*ph_CKM(abs(i)/2,(abs(j)+1)/2)**2
      else
         amp2=amp2*colfac*ph_CKM(abs(j)/2,(abs(i)+1)/2)**2
      endif
      amp2 = amp2*2*REAL(top0+bot0)
c     coupling constants
c     factor gw^2/8 from each weak vertex: two vertices, gw^4/64
c     factor -alpha_s^2 from strong factors: strip off alpha_s/2pi,
c     from strong vertex: -2*pi*alpha_s
      virtual=(-2*pi*st_alpha)*(gw**2/8d0)**2*amp2
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



