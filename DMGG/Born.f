      subroutine setborn(p,bflav,born,bornjk,bmunu)
c Wrapper subroutine to call the MadGraph Borns
c and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'coupl.inc'
      include 'pwhg_physpar.h'
      real * 8 p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      integer bflav(nlegborn)
      real * 8 bmunu(0:3,0:3,nlegborn),born
      double precision old_p,new_p,rescalefactor,pH2,dotp,old_c,new_c,
     $     m_1
ccccccccccccccccccccccccccccccccc
c     !: couplings are in this routine. In particular
c     old_c=gh(1) !=dcmplx( g**2/4d0/PI/(3d0*PI*V), 0d0)
      old_c=(1d0/(3d0*pi*v))**2
      call set_ebe_couplings
ccccccccccccccccccccccccccccccccc
      call sborn_proc(p,bflav,born,bornjk,bmunu)
      pH2=dotp(p(0,3),p(0,3))
c--------
c$$$      old_p=ph_hmhw /pi /((ph_Hmass**2-pH2)**2 + (ph_HmHw)**2)
c     With old_p included as above + flat integration, I re-obtain the 
c     original Higgs result (obtained with non-flat/BW-shaped
c     PS generation for M2 ).
c--------
      old_p=1d0
      born=born*old_p
      bornjk(:,:)=bornjk(:,:)*old_p
      bmunu(:,:,:)=bmunu(:,:,:)*old_p
cccccccccccc
      m_1=physpar_ml(3)
      if(phdm_efftheory.eq.'T') then
c           / k1
c     ...../
c          \
c           \ k2
c     This amplitude squared is equal to
c     (1/lambda**6)*2*(pH2-4mX**2)
         new_p=2*(pH2-4*m_1**2)/(phdm_LambdaUV**3)**2
         new_p=new_p * 16
         new_c=1d0
      else
         new_p=2*(pH2-4*m_1**2) /
     $     ((pH2-phdm_phimass**2)**2 + (phdm_phimass*phdm_phiwidth)**2)
         new_p=new_p * 16
         new_c=(1d0/phdm_LambdaUV)**2
      endif

      rescalefactor= (new_p / old_p) * (new_c/old_c)

      
      born=born*rescalefactor
      bornjk(:,:)=bornjk(:,:)*rescalefactor
      bmunu(:,:,:)=bmunu(:,:,:)*rescalefactor
      end

      subroutine borncolour_lh
c Wrapper subroutine to call the MadGraph code to associate
c a (leading) color structure to an event.
      implicit none
      include 'nlegborn.h'
      include 'LesHouches.h'
      integer bflav(nlegborn),color(2,nlegborn)
      integer i,j
      do i=1,nlegborn
         bflav(i)=idup(i)
         if (bflav(i).eq.21) bflav(i)=0
      enddo
      call born_color(bflav,color)
      do i=1,2
         do j=1,nlegborn
            icolup(i,j)=color(i,j)
         enddo
      enddo
      end

      subroutine finalize_lh
      implicit none
      include 'LesHouches.h'
      include 'pwhg_physpar.h'
      include 'pwhg_math.h'
      integer ires,mu
      double precision m2,m_1,m_2,vecmag,pX_hcm(0:3),pXbar_hcm(0:3),
     $     costheta,phi,beta(3),betainv(3),modbeta,ptemp(0:3)
      double precision random
      double precision powheginput
      logical ini
      data ini/.true./
      save ini
      integer idDM
      save idDM
c     !: several changes in all this subroutine, 
c     to include decay products
      if(ini) then
         idDM=powheginput('#idDM')
         if(idDM.lt.0) idDM=19
         ini=.false.
      endif
cccccccccccccccccccccccccccccccccccccccccccc
c     'Higgs' has to have resonance status
      istup(3)=2
cccccccccccccccccccccccccccccccccccccccccccc
c     construct boosts from/to boson rest frame 
      ires=3
      do mu=1,3
         beta(mu)=-pup(mu,ires)/pup(4,ires)
      enddo
      modbeta=sqrt(beta(1)**2+beta(2)**2+beta(3)**2)
      do mu=1,3
         beta(mu)=beta(mu)/modbeta
         betainv(mu)=-beta(mu)
      enddo
ccccccccccccccccccccccccccccccccccccccccccccc
c     check boost to resonance rest frame
c      ptemp(0)=pup(4,ires)
c      do mu=1,3
c         ptemp(mu)=pup(mu,ires)
c      enddo
c      call mboost(1,beta,modbeta,ptemp,ptemp)
c      print*, ptemp
c      print*, pup(5,ires)
cccccccccccccccccccccccccccccccccccccccccccc
c     generate kinematics
      m2=pup(5,ires)**2
      m_1=physpar_ml(3)
      m_2=physpar_ml(3)
c     magnitude of 3-momentum in H-decay rest frame
      vecmag=(m2+m_1**2-m_2**2)**2 / 4d0/m2 -m_1**2
      vecmag=sqrt(vecmag)
      costheta=-1+2*random()
      phi=2*pi*random()
      pX_hcm(0)=sqrt(vecmag**2 + m_1**2)
      pX_hcm(1)=vecmag*sqrt(1d0-costheta**2)*cos(phi)
      pX_hcm(2)=vecmag*sqrt(1d0-costheta**2)*sin(phi)
      pX_hcm(3)=vecmag*costheta
      pXbar_hcm(0)=sqrt(vecmag**2 + m_2**2)
      do mu=1,3
         pXbar_hcm(mu)= - pX_hcm(mu)
      enddo
c     Now I have new momenta in resonance rest frame
ccccccccccccccccccccccccccccccccccccccccccccc
c     Add X
      nup=nup+1
      istup(nup)=1
      idup(nup)=idDM
      mothup(1,nup)=3
      mothup(2,nup)=3
      icolup(1,nup)=0
      icolup(2,nup)=0
      call mboost(1,betainv,modbeta,pX_hcm,ptemp)
      do mu=1,3
         pup(mu,nup)=ptemp(mu)
      enddo
      pup(4,nup)=ptemp(0)
      pup(5,nup)=sqrt(abs(pup(4,nup)**2-pup(1,nup)**2
     $     -pup(2,nup)**2-pup(3,nup)**2))
cccccccccccccccccccccccccccccccccccccccccccccc
c     Add Xbar
      nup=nup+1
      istup(nup)=1
      idup(nup)=-idDM
      mothup(1,nup)=3
      mothup(2,nup)=3
      icolup(1,nup)=0
      icolup(2,nup)=0
      call mboost(1,betainv,modbeta,pXbar_hcm,ptemp)
      do mu=1,3
         pup(mu,nup)=ptemp(mu)
      enddo
      pup(4,nup)=ptemp(0)
      pup(5,nup)=sqrt(abs(pup(4,nup)**2-pup(1,nup)**2
     $     -pup(2,nup)**2-pup(3,nup)**2))
cccccccccccccccccccccccccccccccccccccccccccccc
c$$$      do mu=1,4
c$$$         print*, pup(mu,3)-pup(mu,nup)-pup(mu,nup-1)
c$$$      enddo
ccccccccccccccccccccccccccccccccccccccccccccc
      end



      subroutine change_scalup
      implicit none
      include 'LesHouches.h'
c      include 'hepevt.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_rad.h'
      real * 8 ptmin,ptmin2,pcm(0:3,maxnup),beta,vec(3),ptkj2
      integer k,mu,j
      logical ini
      save ini
      data ini/.true./
      real * 8 dotp
      external dotp
      integer npart
      npart=0
      do k=3,nup
c     only light partons
         if (idup(k).eq.21.or.abs(idup(k)).le.5) then
            npart=npart+1
            do mu=1,3
               pcm(mu,npart)=pup(mu,k)
            enddo
            pcm(0,npart)=pup(4,k)
         endif
      enddo
c     compute min pt of light partons with respect to the incoming beam
      ptmin2=1d30
      do k=1,npart
         ptmin2=min(ptmin2,pcm(1,k)**2+pcm(2,k)**2)
      enddo

c     compute pt's of the final state partons with respect to each other
      beta=-(pup(3,1)+pup(3,2))/(pup(4,1)+pup(4,2))
      vec(1)=0
      vec(2)=0
      vec(3)=1
c     go in the CM frame   
      call mboost(npart,vec,beta,pcm,pcm)
      do k=1,npart-1
         do j=k+1,npart
            ptkj2 = 2*dotp(pcm(0,k),pcm(0,j))*
     $           pcm(0,k)*pcm(0,j)/(pcm(0,k)+pcm(0,j))**2
            ptmin2=min(ptmin2,ptkj2)
         enddo
      enddo
      ptmin=sqrt(ptmin2)
      if(scalup.gt.ptmin) then
         if (ini) then
            write(*,*) '*************************************'
            write(*,*) 'scalup set to the min pt in the event'
            write(*,*) '*************************************'
            ini=.false.
         endif         
         scalup = ptmin
      endif
      end
