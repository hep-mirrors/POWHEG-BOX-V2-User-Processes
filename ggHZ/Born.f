c     computation of the Born amplitude 
      subroutine setborn(p,bflav,born,bornjk,bmunu)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_st.h'
      include 'pwhg_flst.h'
      include 'pwhg_math.h'
      real * 8 p(0:3,nlegborn)
      integer bflav(nlegborn)
      real * 8 born
      real *8 bornjk(nlegborn,nlegborn),bmunu(0:3,0:3,nlegborn)
      integer proc, i
      integer bflav_gosam(1:nlegborn,0:maxprocborn-1)
      logical equalintlists
      external equalintlists
      integer dim_mom_array
      integer idvecbos,vdecaymode,Vdecmod
      common/cvecbos/idvecbos,vdecaymode,Vdecmod
      real * 8 multiplicity
      integer decflav
      real *8 opasopi,nleptfam
      common/decay_corr/opasopi,nleptfam
      parameter (dim_mom_array=50)
      real * 8 pgosam(dim_mom_array)
C     real * 8 pgosam(5*nlegborn)
      real * 8 params(10),muren,res(4)
      integer mu,nu,j,k
      data(bflav_gosam(i,    0),i=1,nlegborn)/
     $       0,
     $       0,
     $      25,
     $     -11,
     $      11/

      multiplicity=1d0
      decflav=abs(bflav(4)) 

      if (vdecaymode.eq.0 .or. vdecaymode.eq.10) then
         call setZcouplings(decflav)
      endif
      
c$$$      do i=0,flst_nborn-1
c$$$         if (equalintlists(nlegborn,bflav,bflav_gosam(1,i))) then
c$$$            proc=i
c$$$            goto 222
c$$$         endif
c$$$      enddo
c$$$ 111  write(*,*) 'NO matching flavour string between POWHEG and GoSam'
c$$$      write(*,*) 'PROGRAM ABORT'
c$$$      call pwhg_exit(-1)
      
 222  call gosam_momenta(p,pgosam)

c     hadronic and inclusive Z decay: consider all possible Z decay products
c     ==> they have the same kinematics but different flavors:
c     1001: down-type decay: multiply by 3 (d, s, b)
c     1002: up-type decay: multiply by 2 (u, c)
c     11  : lepton decay: multiply by nleptfam (e,mu, or e,mu,tau)
c     12  : neutrino decay: multiply by 3 (ve, vmu, vtau)
c     Factor (1 + alphas(mz)/pi) to take into account the corrections to
c     the Z decay products
      if (vdecaymode.eq.0 .or. vdecaymode.eq.10) then 
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
            write(*,*) 'Wrong case in Born.f'
            call pwhg_exit(-1)
         endif
      elseif (vdecaymode.eq.11) then
c     leptons 
         multiplicity = nleptfam
      elseif (vdecaymode.eq.12) then
c     neutrinos
         multiplicity = 3
      endif
      
      muren=sqrt(st_muren2)
      params(1)=1d0

c      write(*,*) pgosam

      call OLP_EvalSubProcess(0,pgosam,muren,params,res)
      born=res(3)

c      write(*,*) 'born ',born

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
C     GOSAM returns this result with NO gs factor ==>
C     virt_gosam ->  virt_gosam * (gs^2)^AlphasPower =  
C     virt_gosam * (4*pi*st_alpha)^AlphasPower
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
      born=born * (4*pi*ph_alphaem)** 3
     $                * (4*pi*st_alpha)** 2
c     The libraries for the  scalar integrals need an extra factor of 1/(16*pi^2)
c     Since this contribution is the square of a one-loop calculation, this factor has to be squared
     $                * 1d0/(16*pi**2)**2
c     There is an extra factor of 8*pi from the instrisic GoSam normalization (4*2*pi)
     $                * 8*pi

c     initialization of bornjk
      do j=1,nlegborn
        do k=1,nlegborn
           bornjk(j,k)=0d0
        enddo
      enddo
c     spin correlated born amplitude
      do j=1,nlegborn
         do mu=0,3
            do nu=0,3
               bmunu(mu,nu,j)=0d0
            enddo
         enddo
      enddo
***   MODIFICATION for inclusive decays:
      born   =  multiplicity * born
      bornjk =  multiplicity * bornjk
      bmunu  =  multiplicity * bmunu

      end

      subroutine gosam_momenta(p,pgosam)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      real * 8 p(0:3,nlegborn)
c     real * 8 pgosam(5*nlegborn)
c     In GoSam the array of the momenta has dimension 50.
c     It accounts for 10 particles at most
      integer dim_mom_array
      parameter (dim_mom_array=50)
      real * 8 pgosam(dim_mom_array)
      integer i
      
      if (nlegborn*5 .gt. dim_mom_array) then
         write(*,*) 'The dimension of the pgosam array in the '//
     $        'pwhg_gosam.f file NEEDS to be increased'
         write(*,*) 'PROGRAM ABORT'
         call exit(1)
      endif

      do i=1,nlegborn
         pgosam(1+5*(i-1))=p(0,i)
         pgosam(2+5*(i-1))=p(1,i)
         pgosam(3+5*(i-1))=p(2,i)
         pgosam(4+5*(i-1))=p(3,i)
c         write(*,*) i,p(0,i)**2-p(1,i)**2-p(2,i)**2-p(3,i)**2
         pgosam(5+5*(i-1))=kn_masses(i)
      enddo
      end


      subroutine setZcouplings(decflav)
      implicit none
      integer decflav
      include 'coupl.inc'
      include 'PhysPars.h'
      real * 8 t3lep,qlep,gev,gea,gel,ger
      common/Zlepcoupl/ger,gel

      if(decflav.eq.1001) then
c     down-type quark
         t3lep = -1d0/2   
         qlep  = -1d0/3
      elseif(decflav.eq.1002) then
c     up-type quark
         t3lep = +1d0/2   
         qlep  = +2d0/3
      elseif(decflav.eq.11) then
c     electron         
         t3lep = -1d0/2   
         qlep  = -1d0
      elseif(decflav.eq.12) then
c     neutrino
         t3lep = +1d0/2   
         qlep  = 0d0
      endif

      gev = (t3lep - 2*qlep*ph_sthw**2)/(2*ph_sthw*sqrt(1-ph_sthw**2))
      gea = t3lep/(2*ph_sthw*sqrt(1-ph_sthw**2))

      gel=gev+gea
      ger=gev-gea

      call OLP_init_functions()

      end



      subroutine borncolour_lh     
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface.
c In case there are several colour structure, one
c should pick one with a probability proportional to
c the value of the corresponding cross section, for the
c kinematics defined in the Les Houches interface
      implicit none
      include 'LesHouches.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
c     neutral particles
      icolup(1,3)=0
      icolup(2,3)=0
      icolup(1,4)=0
      icolup(2,4)=0
      icolup(1,5)=0
      icolup(2,5)=0
      icolup(1,6)=0
      icolup(2,6)=0
c     initial-state colored particles
      if((idup(1).gt.0).and.(idup(2).lt.0)) then
         icolup(1,1)=501
         icolup(2,1)=0
         icolup(1,2)=0
         icolup(2,2)=501
      elseif((idup(1).lt.0).and.(idup(2).gt.0)) then
         icolup(1,1)=0
         icolup(2,1)=501
         icolup(1,2)=501
         icolup(2,2)=0
      elseif ((idup(1).eq.21).and.(idup(2).eq.21)) then
         icolup(1,1)=501
         icolup(2,1)=502
         icolup(1,2)=502
         icolup(2,2)=501         
      else
         write(*,*) ' invalid initial-state flavour'
         call pwhg_exit(-1)
      endif
c     final-state colored particles
      if ((idup(4).eq.-1001 .or. idup(4).eq.-1002) .and.
     $    (idup(5).eq. 1001 .or. idup(5).eq. 1002)) then
         icolup(1,4)=0
         icolup(2,4)=503
         icolup(1,5)=503
         icolup(2,5)=0
      endif
      end


      subroutine finalize_lh
      implicit none
      include "nlegborn.h"
      include "pwhg_flst.h"
      include "LesHouches.h"
      include "PhysPars.h"
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface.
c     
c     vector boson id and decay
      integer idvecbos,vdecaymode,Vdecmod,id5,id6
      common/cvecbos/idvecbos,vdecaymode,Vdecmod
      real * 8 opasopi,nleptfam
      common/decay_corr/opasopi,nleptfam
      real * 8 random,rand_num
      external random
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface
      call add_resonance(idvecbos,4,5)

c     fix here the Z decay mode
      if(vdecaymode.eq.0.or.vdecaymode.eq.10) then
         rand_num=random()
         if(idup(5).eq.-1001) then
c        down-type quark
            if(rand_num.le.1d0/3d0) then
               idup(5) = -1
               idup(6) =  1
            elseif(rand_num.gt.1d0/3d0.and.rand_num.le.2d0/3d0) then
               idup(5) = -3
               idup(6) =  3
            else
               idup(5) = -5
               idup(6) =  5
            endif         
         elseif(idup(5).eq.-1002) then
c        up-type quark
            if(rand_num.le.1d0/2d0) then
               idup(5) = -2
               idup(6) =  2
            else
               idup(5) = -4
               idup(6) =  4                  
            endif
         elseif (idup(5).eq.-11) then
c        lepton
            if(rand_num.le.1d0/nleptfam) then
               idup(5) = -11
               idup(6) =  11
            elseif(rand_num.gt.1d0/nleptfam.and.
     $              rand_num.le.2d0/nleptfam) then
               idup(5) = -13
               idup(6) =  13
            else
               idup(5) = -15
               idup(6) =  15
            endif         
         elseif (idup(5).eq.-12) then
c        neutrino
            if(rand_num.le.1d0/3d0) then
               idup(5) = -12
               idup(6) =  12
            elseif(rand_num.gt.1d0/3d0.and.rand_num.le.2d0/3d0) then
               idup(5) = -14
               idup(6) =  14
            else
               idup(5) = -16
               idup(6) =  16
            endif         
         else
            write(*,*) 'Error in finalize_lh'
            call pwhg_exit(-1)
         endif
      elseif (vdecaymode.eq.11) then
c     lepton
         rand_num=random()
         if(rand_num.le.1d0/nleptfam) then
            idup(5) = -11
            idup(6) =  11
         elseif(rand_num.gt.1d0/nleptfam.and.
     $           rand_num.le.2d0/nleptfam) then
            idup(5) = -13
            idup(6) =  13
         else
            idup(5) = -15
            idup(6) =  15
         endif         
      elseif (vdecaymode.eq.12) then
c     neutrino
         rand_num=random()
         if(rand_num.le.1d0/3d0) then
            idup(5) = -12
            idup(6) =  12
         elseif(rand_num.gt.1d0/3d0.and.rand_num.le.2d0/3d0) then
            idup(5) = -14
            idup(6) =  14
         else
            idup(5) = -16
            idup(6) =  16
         endif         
      else
         idup(5) =  vdecaymode
         idup(6) = -vdecaymode
      endif
      call lhefinitemasses
      end



cccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c                    OLD STUFF
c
cccccccccccccccccccccccccccccccccccccccccccccccccccccccc
cccccccccccccccccccccccccccccccccccccccccccccccccccccccc

c$$$      subroutine finalize_lh
c$$$c     Set up the resonances whose mass must be preserved
c$$$c     on the Les Houches interface.
c$$$c     
c$$$c     vector boson id and decay
c$$$      integer idvecbos,vdecaymode
c$$$      common/cvecbos/idvecbos,vdecaymode
c$$$c     lepton masses
c$$$      real *8 lepmass(3),decmass
c$$$      common/clepmass/lepmass,decmass
c$$$
c$$$      call add_resonance(idvecbos,4,5)
c$$$c     The following routine also performs the reshuffling of momenta if
c$$$c     a massive decay is chosen
c$$$      call momenta_reshuffle(4,5,6,decmass,decmass)
c$$$
c$$$c     fix here the W decay mode
c$$$      id5=vdecaymode
c$$$      id6=-vdecaymode
c$$$      call change_id_particles(5,6,id5,id6)
c$$$
c$$$      end
c$$$
c$$$
c$$$
c$$$
c$$$      subroutine change_id_particles(i1,i2,id1,id2)
c$$$      implicit none
c$$$      include 'LesHouches.h'
c$$$      integer i1,i2,id1,id2
c$$$      idup(i1)=id1
c$$$      idup(i2)=id2
c$$$      end
c$$$
c$$$
c$$$
c$$$c     i1<i2
c$$$      subroutine momenta_reshuffle(ires,i1,i2,m1,m2)
c$$$      implicit none
c$$$      include 'LesHouches.h'
c$$$      integer ires,i1,i2
c$$$      real * 8 m1,m2
c$$$      real * 8 ptemp(0:3),pfin(0:3),beta(3),betainv(3),modbeta,m
c$$$      real * 8 mod_pfin,m0
c$$$      integer j,id,dec
c$$$      if (i1.ge.i2) then
c$$$         write(*,*) 'wrong sequence in momenta_reshuffle'
c$$$         stop
c$$$      endif
c$$$cccccccccccccccccccccccccccccc
c$$$c construct boosts from/to vector boson rest frame 
c$$$      do j=1,3
c$$$         beta(j)=-pup(j,ires)/pup(4,ires)
c$$$      enddo
c$$$      modbeta=sqrt(beta(1)**2+beta(2)**2+beta(3)**2)
c$$$      do j=1,3
c$$$         beta(j)=beta(j)/modbeta
c$$$         betainv(j)=-beta(j)
c$$$      enddo
c$$$
c$$$      m0 = pup(5,ires)
c$$$      mod_pfin=
c$$$     $     1/(2*m0)*sqrt(abs((m0**2-m1**2-m2**2)**2 - 4*m1**2*m2**2))
c$$$               
c$$$cccccccccccccccccccccccccccccccccccccccc
c$$$c     loop of the two decay products
c$$$      
c$$$      do dec=1,2
c$$$         if(dec.eq.1) then
c$$$            id=i1
c$$$            m=m1
c$$$         else
c$$$            id=i2
c$$$            m=m2
c$$$         endif
c$$$         ptemp(0)=pup(4,id)
c$$$         do j=1,3
c$$$            ptemp(j)=pup(j,id)
c$$$         enddo
c$$$         call mboost(1,beta,modbeta,ptemp,ptemp)
c$$$         pfin(0)=sqrt(mod_pfin**2 + m**2)
c$$$         do j=1,3
c$$$            pfin(j)=ptemp(j)*mod_pfin/ptemp(0)
c$$$         enddo
c$$$         call mboost(1,betainv,modbeta,pfin,ptemp)
c$$$         do j=1,3
c$$$            pup(j,id)=ptemp(j)
c$$$         enddo
c$$$         pup(4,id)=ptemp(0)
c$$$         pup(5,id)=sqrt(abs(pup(4,id)**2-pup(1,id)**2
c$$$     $        -pup(2,id)**2-pup(3,id)**2))
c$$$         
c$$$      enddo
c$$$
c$$$      end
