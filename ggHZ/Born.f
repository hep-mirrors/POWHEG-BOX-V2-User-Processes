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
      
      do i=0,flst_nborn-1
         if (equalintlists(nlegborn,bflav,bflav_gosam(1,i))) then
            proc=i
            goto 222
         endif
      enddo
 111  write(*,*) 'NO matching flavour string between POWHEG and GoSam'
      write(*,*) 'PROGRAM ABORT'
      call pwhg_exit(-1)
      
 222  call gosam_momenta(p,pgosam)

      if (vdecaymode.eq.11) then
c     leptons 
         multiplicity = nleptfam
      elseif(vdecaymode.eq.12) then
c     neutrinos
         multiplicity = 3
      endif
      
      muren=sqrt(st_muren2)
      params(1)=1d0

c      write(*,*) pgosam

      call OLP_EvalSubProcess(proc,pgosam,muren,params,res)
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
c     colored particles
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
         write(*,*) ' invalid flavour'
         call pwhg_exit(-1)
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
      if(vdecaymode.eq.11 .or. vdecaymode.eq.12) then
         rand_num=random()
         if (vdecaymode.eq.11) then
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
         elseif (vdecaymode.eq.12) then
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
