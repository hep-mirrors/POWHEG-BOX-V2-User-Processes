      subroutine setborn(p,bflav,born,bornjk,bmunu)
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      integer nlegs
      parameter (nlegs=nlegborn)
      real * 8 p(0:3,nlegs),bornjk(nlegs,nlegs)
      integer bflav(nlegs)
      real * 8 bmunu(0:3,0:3,nlegs),bbmunu(0:3,0:3),born,colcf
      integer j,k,mu,nu
c Colour factors for colour-correlated Born amplitudes;
c Rule from 2.98 in FNO2007, leads to B_ij=Cj * B,
c where i#j
      call compborn(p,bflav,born,bbmunu)
      do j=1,nlegs
         if(abs(bflav(j)).le.6) then
            if(bflav(j).eq.0) then
               do mu=0,3
                  do nu=0,3
                     bmunu(mu,nu,j)=bbmunu(mu,nu)
                  enddo
               enddo
            endif
            do k=j+1,nlegs
               if(abs(bflav(k)).le.6) then
                  colcf=cf
               endif
               bornjk(j,k)=born*colcf
               bornjk(k,j)=bornjk(j,k)
            enddo
         endif
      enddo
      end


c     Example
c     q q'-> e+ ve~
      subroutine compborn(p,bflav,born,bmunu)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
c -*- Fortran -*-
c      character *2 flav(-5:5)
      real * 8 charge(-5:5)
c      data (charge(ijkh),ijkh=-5,5) 
c      data (flav(ijkh),ijkh=-5,5) 
c      data flav
c     #     /'b~','c~','s~','u~','d~','g','d','u','s','c','b'/
      data charge
     #     / 0.33333333333333333333d0, !   1d0/3
     #      -0.66666666666666666667d0, !  -2d0/3
     #       0.33333333333333333333d0, !   1d0/3 
     #      -0.66666666666666666667d0, !   -2d0/3
     #       0.33333333333333333333d0, !   1d0/3 
     #       0d0,                      !   0d0   
     #      -0.33333333333333333333d0, !   -1d0/3
     #       0.66666666666666666667d0, !   2d0/3   
     #      -0.33333333333333333333d0, !   -1d0/3
     #       0.66666666666666666667d0, !   2d0/3 
     #      -0.33333333333333333333d0/ !   -1d0/3
c      include 'QuarkFlavs.h'
      include 'PhysPars.h'
      integer nleg
      parameter (nleg=nlegborn)
      real * 8 p(0:3,nleg)
      integer bflav(nleg)
      real * 8 amp2,born,bmunu(0:3,0:3)
      integer ferm_type(nleg)
      integer i,j
      real * 8 ferm_charge(nleg)
c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode   

      if (abs(bflav(3)).le.6.or.abs(bflav(4)).le.6) then
         write(*,*) 'born_ampsq: ERROR in flavor assignement'
         stop
      endif
 
c     i is the flavour index of first incoming parton
c     j is the flavour index of second incoming parton
c     with the convention:
c     
c      -6  -5  -4  -3  -2  -1  0  1  2  3  4  5  6                    
c      t~  b~  c~  s~  u~  d~  g  d  u  s  c  b  t                    
      
      i = bflav(1)
      j = bflav(2)
      ferm_charge(1) = charge(i)
      ferm_charge(2) = charge(j)
      ferm_type(1) = i/abs(i)
      ferm_type(2) = j/abs(j)


c     antilepton-neutrino from W decay
      ferm_type(3) = bflav(3)/abs(bflav(3))
      ferm_charge(3) = ferm_type(3)*(-1d0)
      ferm_type(4) = -ferm_type(3)
      ferm_charge(4) = 0d0

      
      if(idvecbos.eq.24) then
         call q_aqp_to_al_vl(p,ferm_type,ferm_charge,
     $        amp2)
      elseif(idvecbos.eq.-24) then
         call q_aqp_to_l_avl(p,ferm_type,ferm_charge,
     $        amp2)
      else
         write(*,*) 'ERROR: this subroutine deals only with W+ or W- '
         call exit(1)
      endif
      
      
      if(mod(abs(i),2).eq.0) then
         born=amp2*ph_CKM(abs(i)/2,(abs(j)+1)/2)**2
      elseif(mod(abs(i),2).eq.1) then   
         born=amp2*ph_CKM(abs(j)/2,(abs(i)+1)/2)**2
      endif

      do i=0,3
         do j=0,3
            bmunu(i,j)=0d0
         enddo
      enddo

      end

CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

      subroutine q_aqp_to_l_avl(pphy,fermion_type,fermion_charge,
     #     amp2)
   
      implicit none
c the 5 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=4)
      integer fermion_type(nleg),i
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      real * 8 ferm_charge(nleg)
      integer ferm_type(nleg)

       if ((fermion_type(3).ne.1).and.(fermion_type(4).ne.-1)) then
         write(*,*) 'ERROR: this subroutine deals only with W- decay'
         stop
      endif

      do i=1,nleg
      
         ferm_charge(i) = -fermion_charge(i)
         ferm_type(i) = -fermion_type(i)
      enddo
            
      
      call q_aqp_to_al_vl(pphy,ferm_type,ferm_charge,
     #     amp2)

      end

*
** function to calculate bornme of dy process
** mu = md = 0
**
** (pu) u  \            / e+ (pl)
**          \          /
**           \________/
**           /   W+   \ 
**          /          \
** (pd) d~ /            \ nu_e (pn)
*
      subroutine q_aqp_to_al_vl(pphy,fermion_type,fermion_charge,
     $     amp2)
      implicit none
c the nleg 4-momentum vectors
c p(i,1) is the i-th component of vector p1...   
      integer nleg
      parameter (nleg=4)
      integer fermion_type(nleg)
      real * 8 fermion_charge(nleg)
      real * 8 pphy(0:3,nleg)
      real * 8 amp2
      include 'pwhg_math.h'
      include 'mathx.h'
      include 'pwhg_physpar.h'
      include 'PhysPars.h'
*
      real*8 dotp
      external dotp
*
      real*8 pu(0:3),pd(0:3),pn(0:3),pl(0:3),ptmp(0:3)
      complex*16 den
      real*8 pupl,pdpn,s
      real*8 tmp
      real*8 p(0:3,nleg)
      real*8 ferm_charge(nleg)
      integer ferm_type(nleg)
      integer i,nu
*

      if ((fermion_type(3).ne.-1).and.(fermion_type(4).ne.1)) then
         write(*,*) 'ERROR: this subroutine deals only with W+ decay'
         stop
      endif
     

c  copy to local variables
      do i=1,nleg
         do nu=0,3
            p(nu,i) = pphy(nu,i)
         enddo
         ferm_charge(i) = fermion_charge(i)
         ferm_type(i) = fermion_type(i)
      enddo
      
c     exchance particle 1 and 2
      if (ferm_type(1).eq.-1) then
         if (ferm_type(2).eq.1) then
            call exchange_momenta(p(0,1),p(0,2))
            tmp = ferm_charge(1)
            ferm_charge(1)=ferm_charge(2)
            ferm_charge(2)=tmp
            tmp = ferm_type(1)
            ferm_type(1)=ferm_type(2)
            ferm_type(2)=tmp
         else
            write(*,*) 'Error in the type of the quark 1-2'
            stop
         endif
      endif

      if (ferm_charge(1)*ferm_type(1).lt.0d0) then
          do nu=0,3
              pu(nu) = p(nu,2)
              pd(nu) = p(nu,1)
          enddo
      else
          do nu=0,3
              pu(nu) = p(nu,1)
              pd(nu) = p(nu,2)
          enddo
      endif

      do nu=0,3
          pl(nu) = p(nu,3)
          pn(nu) = p(nu,4)
          ptmp(nu) = pu(nu) + pd(nu)
      enddo

      pupl = dotp(pu,pl)
      pdpn = dotp(pd,pn)
      s = dotp(ptmp,ptmp)

      den  = 1.d0/( s - ph_Wmass2 + ii*ph_WmWw )

      amp2 = 16  *pupl*pdpn
     +       *den*conjg(den)
     +       *g2*conjg(g2)/4d0 
     +        /4d0/nc

      end



      subroutine borncolour_lh
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface.
c In case there are several colour structure, one
c should pick one with a probability proportional to
c the value of the corresponding cross section, for the
c kinematics defined in the Les Houches interface
      include 'LesHouches.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
c     neutral particles
      icolup(1,3)=0
      icolup(2,3)=0
      icolup(1,4)=0
      icolup(2,4)=0
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
      else
         write(*,*) ' invalid flavour'
         stop
      endif
      end


      subroutine finalize_lh
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_rad.h'
      include 'LesHouches.h'
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface.
c     
c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      integer i1,i2
      real*8 mc_isr_scale,mc_fsr_scale
      common/mc_scale_lhe/mc_isr_scale,mc_fsr_scale
      real*8 dbleradmom
      common/mc_dbleradmom/dbleradmom(0:3,nlegreal+1)
      real*8 mc_tmaxisr,mc_tmaxfsr
      real*8 mc_csiisr,mc_yisr,mc_aziisr
      real*8 mc_csifsr,mc_yfsr,mc_azifsr
      logical mc_dlberad
      common/dblerad/mc_tmaxisr,mc_tmaxfsr,
     +     mc_csiisr,mc_yisr,mc_aziisr,
     +     mc_csifsr,mc_yfsr,mc_azifsr,
     +     mc_dlberad
c
      call add_resonance(idvecbos,3,4)
c if it is an isr photon, add it to the resonance
c
      if(nup.eq.nlegreal+1.and.rad_kinreg.ge.2
     +     .and.(.not.mc_dlberad)) then
         mothup(1,6) = 3
         mothup(2,6) = 3
         pup(1:4,3) = pup(1:4,3) + pup(1:4,6)
         pup(5,3)=sqrt(pup(4,3)**2-pup(1,3)**2-pup(2,3)**2-pup(3,3)**2)
      endif
c isr scale in the LHE block
      scalup=mc_isr_scale        
      if(mc_dlberad) then
         nup=nlegreal+2 ! one is the resonance
c
         mothup(1,6) = 1 ! isr gluon
         mothup(2,6) = 2
         istup( 6)=1
         spinup(6)=9
         vtimup(6)=0
c
         mothup(1,7) = 3
         mothup(2,7) = 3
         istup( 7)=1
         spinup(7)=9
         vtimup(7)=0
         idup(  7)=22
c
         call add_azimuth2

         
         do i1=1,2!nup
            do i2=1,3
               pup(i2,i1)=dbleradmom(i2,i1)
            enddo
            pup(4,i1)=dbleradmom(0,i1)
         enddo
         do i1=4,nup
            do i2=1,3
               pup(i2,i1)=dbleradmom(i2,i1-1)
            enddo
            pup(4,i1)=dbleradmom(0,i1-1)
         enddo
         pup(5,7)=sqrt(abs(pup(4,7)**2-pup(1,7)**2-pup(2,7)**2-pup(3,7)**2))
         pup(1:4,3) = pup(1:4,4) + pup(1:4,5) + pup(1:4,7)
         pup(5,3)=sqrt(pup(4,3)**2-pup(1,3)**2-pup(2,3)**2-pup(3,3)**2)
      endif
c
      call lhefinitemasses

      end

c-----added to rotate dblemom!!
      subroutine add_azimuth2
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      integer ileg
      real * 8 azi,sazi,cazi
      real * 8 dir(3)
      data dir/0d0,0d0,1d0/
      real * 8 random
      external random
      real*8 dbleradmom
      common/mc_dbleradmom/dbleradmom(0:3,nlegreal+1)
      
      azi=2d0*pi*random()
      sazi = sin(azi)
      cazi = cos(azi)

      do ileg=1, nlegreal+1
         call mrotate(dir,sazi,cazi,dbleradmom(1:3,ileg))
      enddo

      end
c-----added to rotate dblemom!!
