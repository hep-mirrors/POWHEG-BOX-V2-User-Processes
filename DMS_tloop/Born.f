      subroutine setborn(p,bflav,born,bornjk,bmunu)
c Wrapper subroutine to call the MadGraph Borns
c and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
c      include 'pwhg_math.h'
c      include 'coupl.inc'
c      include 'pwhg_physpar.h'
      include 'MCFM_Include/constants.f'
      include 'pwhg_st.h'
      real * 8 p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      integer bflav(nlegborn)
      real * 8 bmunu(0:3,0:3,nlegborn),born
      double precision old_p,new_p,rescalefactor,pH2,dotp,old_c,new_c,
     $     m_1

      integer ileg
      real * 8 p_mcfm(mxpart,4)
      double precision msq(-nf:nf,-nf:nf)

cccccccccccccccccccccccccccccccccccccccccccc
c     momenta for mcfm (all outgoing, i.e.
c     invert p1 and p2)
      p_mcfm(:,:)=0d0

      p_mcfm(1,4)=-p(0,1)
      p_mcfm(1,1:3)=-p(1:3,1)

      p_mcfm(2,4)=-p(0,2)
      p_mcfm(2,1:3)=-p(1:3,2)

      do ileg=3,nlegborn
         p_mcfm(ileg,4)=p(0,ileg)
         p_mcfm(ileg,1:3)=p(1:3,ileg)
      enddo
ccccccccccccccccccccccccccccccccccccccccc
c     set mcfm alphas
      call i2mcfm_fill_alphas(st_alpha)
cccccccccccccccccccccccccccccccccccccccc

c     original
c$$$      if(phdm_mode.eq.'SC') then 
c$$$!---------- Fill msq elsewhere
c$$$         call gg_dm_top(p_mcfm,msq) 
c$$$c Uli 4/7/2014: added pseudo scalar case 
c$$$      elseif(phdm_mode.eq.'PS') then 
c$$$!---------- Fill msq elsewhere 
c$$$         call gg_dm_pot(p_mcfm,msq) 
c$$$      endif

c     new: SC/PS switch in gg_dm_top
      call gg_dm_top(p_mcfm,msq) 

      born=msq(bflav(1),bflav(2))
c      print*, bflav(1),bflav(2),born

c$$$ccccccccccccccccccccccccccccccccc
c$$$c     !: couplings are in this routine. In particular
c$$$c     old_c=gh(1) or gh(2), where
c$$$c      gh(1) = dcmplx( scalarf*g**2/4d0/PI/(3d0*PI*V), 0d0)
c$$$c      gh(2) = dcmplx( axialf *g**2/4d0/PI/(2d0*PI*V), 0d0)
c$$$      if(phdm_mode.eq.'SC') then
c$$$         old_c=(1d0/(3d0*pi*v))**2
c$$$      elseif(phdm_mode.eq.'PS') then
c$$$         old_c=(1d0/(2d0*pi*v))**2
c$$$      endif
c$$$      call set_ebe_couplings
c$$$ccccccccccccccccccccccccccccccccc
c$$$      call sborn_proc(p,bflav,born,bornjk,bmunu)
c$$$      pH2=dotp(p(0,3),p(0,3))
c$$$c--------
c$$$c$$$      old_p=ph_hmhw /pi /((ph_Hmass**2-pH2)**2 + (ph_HmHw)**2)
c$$$c     With old_p included as above + flat integration, I re-obtain the 
c$$$c     original Higgs result (obtained with non-flat/BW-shaped
c$$$c     PS generation for M2 ).
c$$$c--------
c$$$      old_p=1d0
c$$$      born=born*old_p
c$$$      bornjk(:,:)=bornjk(:,:)*old_p
c$$$      bmunu(:,:,:)=bmunu(:,:,:)*old_p
c$$$cccccccccccc
c$$$      m_1=physpar_ml(3)
c$$$      if(phdm_efftheory.eq.'T') then
c$$$c           / k1
c$$$c     ...../
c$$$c          \
c$$$c           \ k2
c$$$c     This amplitude squared is equal to
c$$$c     (1/lambda**6)*2*(pH2-4mX**2)
c$$$         new_p=2*(pH2-4*m_1**2)/(phdm_LambdaUV**3)**2
c$$$         new_p=new_p * 16
c$$$         new_c=1d0
c$$$      else
c$$$         new_p=2*(pH2-4*m_1**2) /
c$$$     $     ((pH2-phdm_phimass**2)**2 + (phdm_phimass*phdm_phiwidth)**2)
c$$$         new_p=new_p * 16
c$$$         new_c=(1d0/phdm_LambdaUV)**2
c$$$      endif

      rescalefactor= 1 !(new_p / old_p) * (new_c/old_c)
      if(phdm_efftheory.eq.'F') then
         rescalefactor=rescalefactor * (phdm_gSM*phdm_gDM)**2
      endif

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
      icolup(:,:)=0
      
      if((bflav(1)+bflav(2).eq.0).and.(bflav(1).ne.0)) then
c     qqbar
         if(bflav(1).gt.0) then
c     Q QBAR -> G
            icolup(1,1) =  501
            icolup(2,2) =  502
            icolup(1,4) =  501
            icolup(2,4) =  502
         else
c     QBAR Q -> G
            icolup(2,1) =  501
            icolup(1,2) =  502
            icolup(1,4) =  502
            icolup(2,4) =  501
         endif
      elseif(bflav(1).eq.0.and.bflav(2).ne.0) then
c     gq
         if(bflav(2).gt.0) then
c     G Q -> Q
            icolup(1,1) = 501 
            icolup(2,1) = 502
            icolup(1,2) = 502
            icolup(1,4) = 501
         else
c     G QBAR -> QBAR
            icolup(1,1) = 501 
            icolup(2,1) = 502
            icolup(2,2) = 501
            icolup(2,4) = 502   
         endif
      elseif(bflav(2).eq.0.and.bflav(1).ne.0) then
c     qg
         if(bflav(1).gt.0) then
c     Q G -> Q
            icolup(1,1) = 501
            icolup(1,2) = 502 
            icolup(2,2) = 501
            icolup(1,4) = 502
         else
c     QBAR G -> QBAR
            icolup(2,1) = 501
            icolup(1,2) = 501 
            icolup(2,2) = 502
            icolup(2,4) = 502
         endif
         
      elseif(bflav(1).eq.0.and.bflav(2).eq.0.and.bflav(4).eq.0) then
         icolup(1,1)= 501
         icolup(2,1)= 502

         icolup(1,2)= 502
         icolup(2,2)= 503

         icolup(1,4)= 501
         icolup(2,4)= 503

      else
         print*, 'Problem in planar color connection ....'
         stop
      endif
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
      include 'pwhg_flg.h'
c     include 'nlegborn.h'
c     include 'pwhg_kn.h'
c     If user has selected the LOonly flag, then set scalup equal to the
c     generated jets. The default would be the total energy in the
c     partonic CoM frame. In the paper, however, I've used the choice
c     below, that is more consistent with the fact that we already have a 
c     jet at LO.
      if(flg_LOevents) then
         scalup=sqrt(pup(1,4)**2+pup(2,4)**2)
      endif

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



      subroutine gg_dm_top(p,msq)
      implicit none
c---Matrix element squared averaged over initial colors and spins
c     f(-p1) + f(-p2) --> H + f(p5)
c                         |
c                         --> b(p3)+bbar(p4)
c                            
c--all momenta incoming
c
c--- Matrix elements are taken from:
c--- R.~K.~Ellis, I.~Hinchliffe, M.~Soldate and J.~J.~van der Bij,
c--- %``Higgs Decay To Tau+ Tau-: A Possible Signature Of Intermediate
c--- % Mass Higgs Bosons At The SSC,''
c--- Nucl.\ Phys.\ B {\bf 297}, 221 (1988).
      include 'MCFM_Include/constants.f'
      include 'MCFM_Include/masses.f'
      include 'MCFM_Include/sprods_com.f'
      include 'MCFM_Include/ewcouple.f' 
      include 'MCFM_Include/qcdcouple.f' 
      include 'PhysPars.h'
      include 'pwhg_physpar.h'
      integer j,k
      double precision msq(-nf:nf,-nf:nf),p(mxpart,4),gg,qg,gq,qq,hdecay
      double precision ehsvm3_dm,ehsvm4_dm,ehsvm3_md,ehsvm4_md,s34
!      double precision mb_eff,mt_eff,massfrun,msqhtautau,msqgamgam
      double precision propsq
      double complex cprop
      double precision s12,t15,t25,p12(4),p15(4),p25(4),m_1,t134,p134(4)
      logical check
      parameter (check=.false.)

      if(check) then
c     mt,gwsq,as,wmass,    173.19999999999999       0.42649040719933595       0.10246482378695355        80.397999999999996
         mt = 173.19999999999999
         gwsq = 0.42649040719933595
         as = 0.10246482378695355
         wmass = 80.397999999999996
c$$$  p1    0.0000000000000000        0.0000000000000000       -118.14280491786485       -118.14280491786485     
c$$$  p2    0.0000000000000000        0.0000000000000000        5758.6210210086128       -5758.6210210086128     
c$$$  p3    321.75335947342512        101.76929631282560       -5391.6583469742991        5402.2460092541214     
c$$$  p4   -57.206103770575112       -91.231026701223783       -162.65479167443573        196.09237567081254     
c$$$  p5   -264.54725570285001       -10.538269611601812       -86.165077442013171        278.42544100154373 
         m_1= 20

         p(1,1) = 0
         p(1,2) = 0
         p(1,3) = -118.14280491786485 
         p(1,4) = -118.14280491786485

         p(2,1) = 0
         p(2,2) = 0
         p(2,3) = 5758.6210210086128  
         p(2,4) = -5758.6210210086128 

         p(3,1) = 321.75335947342512   + (-57.206103770575112 )
         p(3,2) = 101.76929631282560   + (-91.231026701223783 )
         p(3,3) = -5391.6583469742991  + (-162.65479167443573 )
         p(3,4) = 5402.2460092541214   + (196.09237567081254  )

         p(4,1) = -264.54725570285001
         p(4,2) = -10.538269611601812
         p(4,3) = -86.165077442013171 
         p(4,4) = 278.42544100154373 
      endif

      m_1=physpar_ml(3)

c     in this powheg adaption, the 3rd momentum is the 'higgs', i.e. 
c     the XXbar momentum.
      s34= p(3,4)**2 - p(3,1)**2 - p(3,2)**2 - p(3,3)**2 

      p12(:) = p(1,:)+p(2,:)
      p15(:) = p(1,:)+p(4,:)  !plus since all mcfm momenta are outgoing
      p25(:) = p(2,:)+p(4,:)  !plus since all mcfm momenta are outgoing

      p134(:) = p(1,:)+p(3,:) !plus since all mcfm momenta are outgoing

c     Mandelstam s
      s12= p12(4)**2 - p12(1)**2 - p12(2)**2 - p12(3)**2 
c     Mandelstam u
      t15= p15(4)**2 - p15(1)**2 - p15(2)**2 - p15(3)**2 
c     Mandelstam t
      t25= p25(4)**2 - p25(1)**2 - p25(2)**2 - p25(3)**2 
c     t15 and t25 are now negative, as they have to

c$$$c     (normal expression for Mandelstam t)
c$$$      t134= p134(4)**2 - p134(1)**2 - p134(2)**2 - p134(3)**2 
c$$$c     cross check momentum conservation ( s+t+u = m^2(XXbar pair) )
c$$$      print*, s12+t134+t15,   s34
c$$$      print*, s12+t15+t25,    s34

c     mbsq in matrix elements from EHSV should now be equal to mtop**2,
c     since the top is running in the loop...
      mbsq=mt**2

!----- overall factor = v^2/dm_lam^6 in effective theory 
!======               = v/dm_lam * (1/prop) in full 
      propsq=1d0
!      gdm=dsqrt(g_dmx*g_dmq)
!------ only coupling to DM is defined in full theory
c      gdm=g_dmx

      if(phdm_mode.eq.'SC') then
c     call dmsdecay(p,3,4,hdecay) 
         hdecay=2*(s34-4*m_1**2)
      elseif(phdm_mode.eq.'PS') then
c     call mdsdecay(p,3,4,hdecay) 
         hdecay=2*s34
      endif

      if(phdm_efftheory.eq.'T') then 
c     sqrt(4d0*wmass**2/gwsq) and sqrt(vevsq) are equal
c     print*, sqrt(4d0*wmass**2/gwsq), sqrt(vevsq)

c     ampdecay2 * vev^2 * 1/Lam^6
         hdecay=hdecay*4d0*wmass**2/gwsq*one/(phdm_LambdaUV**6) 
      else
         cprop=cone/Dcmplx((s34-phdm_phimass**2),phdm_phimass*phdm_phiwidth)
         if(phdm_rw) cprop = cone/
     $        Dcmplx((s34-phdm_phimass**2),s34*phdm_phiwidth/phdm_phimass)
         propsq=cdabs(cprop)**2 
!========= Note we remove the *v because of the full theory. 
         hdecay=hdecay*propsq
      endif

c     ehsvm routines are only function of kinematics, strong coupling, average/color factors
c     and the top mass (passed via mbsq=mt**2).
c     There is however an overall factor gwsq/(wmass)^2 = (2/vev)^2.

      if(phdm_mode.eq.'SC') then        
         gg=+avegg*ehsvm3_dm(s12,t15,t25,s34)*hdecay
         qq=+aveqq*ehsvm4_dm(s12,t15,t25,s34)*hdecay
         qg=-aveqg*ehsvm4_dm(t15,s12,t25,s34)*hdecay
         gq=-aveqg*ehsvm4_dm(t25,t15,s12,s34)*hdecay

         if(check) then
            print*, '+ehsvm3 gg: must be equal, i.e. ratio = 1', 
     $           +ehsvm3_dm(s12,t15,t25,s34) / 13.346293716557174     
            print*, '+ehsvm4 qq: must be equal, i.e. ratio = 1', 
     $           +ehsvm4_dm(s12,t15,t25,s34) / 1.31258788131608959E-003
            print*, '-ehsvm4 qg: must be equal, i.e. ratio = 1', 
     $           -ehsvm4_dm(t15,s12,t25,s34) / 1.9579950514331077     
            print*, '-ehsvm4 gq: must be equal, i.e. ratio = 1', 
     $           -ehsvm4_dm(t25,t15,s12,s34) / 3.36247585081126711E-003
            print*, 'this is only a check, program stops here'
            stop
         endif

      elseif(phdm_mode.eq.'PS') then
         gg=+avegg*ehsvm3_md(s12,t15,t25,s34)*hdecay
         qq=+aveqq*ehsvm4_md(s12,t15,t25,s34)*hdecay
         qg=-aveqg*ehsvm4_md(t15,s12,t25,s34)*hdecay
         gq=-aveqg*ehsvm4_md(t25,t15,s12,s34)*hdecay
      endif

  
      do j=-nf,nf    
      do k=-nf,nf
      msq(j,k)=0d0

      if ((j.eq. 0) .or. (k.eq.0)) then
           if ((j.eq. 0) .and. (k.eq.0)) then
                msq(j,k)=gg
           elseif ((j.eq.0).and.(k.ne.0)) then
                msq(j,k)=gq
           elseif ((j.ne.0).and.(k.eq.0)) then
                msq(j,k)=qg
           endif
      elseif ((j.eq.-k).and. (j.ne.0)) then
           msq(j,k)=qq
      endif

      enddo
      enddo
      end
      


c$$$c Uli 4/7/2014: added routines for the pseudo scalar case
c$$$
c$$$      subroutine gg_dm_pot(p,msq)
c$$$      implicit none
c$$$c---Matrix element squared averaged over initial colors and spins
c$$$c     f(-p1) + f(-p2) --> A + f(p5)
c$$$c                         |
c$$$c                         --> b(p3)+bbar(p4)
c$$$c                            
c$$$c--all momenta incoming
c$$$c
c$$$c--- Matrix elements are taken from:
c$$$c--- R.~K.~Ellis, I.~Hinchliffe, M.~Soldate and J.~J.~van der Bij,
c$$$c--- %``Higgs Decay To Tau+ Tau-: A Possible Signature Of Intermediate
c$$$c--- % Mass Higgs Bosons At The SSC,''
c$$$c--- Nucl.\ Phys.\ B {\bf 297}, 221 (1988).
c$$$      include 'MCFM_Include/constants.f'
c$$$      include 'MCFM_Include/masses.f'
c$$$      include 'MCFM_Include/sprods_com.f'
c$$$      include 'MCFM_Include/ewcouple.f' 
c$$$      include 'PhysPars.h'
c$$$      include 'pwhg_physpar.h'
c$$$      integer j,k
c$$$      double precision msq(-nf:nf,-nf:nf),p(mxpart,4),gg,qg,gq,qq,hdecay
c$$$      double precision ehsvm3_md,ehsvm4_md,s34,s56
c$$$!      double precision mb_eff,mt_eff,massfrun,msqhtautau,msqgamgam
c$$$      double precision propsq
c$$$      double complex cprop
c$$$      double precision ss,tt,uu,p12(4),p13(4),p24(4),m_1
c$$$
c$$$      m_1=physpar_ml(3)
c$$$
c$$$      s34= p(3,4)**2 - p(3,1)**2 - p(3,2)**2 - p(3,3)**2 
c$$$
c$$$      p12(:) = p(1,:)+p(2,:)
c$$$      p13(:) = p(1,:)-p(3,:)
c$$$      p24(:) = p(2,:)-p(4,:)
c$$$
c$$$      ss= p12(4)**2 - p12(1)**2 - p12(2)**2 - p12(3)**2 
c$$$      tt= p13(4)**2 - p13(1)**2 - p13(2)**2 - p13(3)**2 
c$$$      uu= p24(4)**2 - p24(1)**2 - p24(2)**2 - p24(3)**2 
c$$$
c$$$c     mbsq in matrix elements from EHSV should now be equal to mtop**2,
c$$$c     since the top is running in the loop...
c$$$      mbsq=mt**2
c$$$
c$$$!----- overall factor = v^2/dm_lam^6 in effective theory 
c$$$!======               = v/dm_lam * (1/prop) in full 
c$$$      propsq=1d0
c$$$!      gdm=dsqrt(g_dmx*g_dmq)
c$$$!------ only coupling to DM is defined in full theory
c$$$c      gdm=g_dmx
c$$$
c$$$c      call mdsdecay(p,3,4,hdecay) 
c$$$      hdecay=2*s34
c$$$
c$$$      if(phdm_efftheory.eq.'T') then 
c$$$         hdecay=hdecay*4d0*wmass**2/gwsq*one/(phdm_LambdaUV**6) 
c$$$      else
c$$$         cprop=cone/Dcmplx((s34-phdm_phimass**2),phdm_phimass*phdm_phiwidth)
c$$$         propsq=cdabs(cprop)**2 
c$$$!========= Note we remove the *v because of the full theory. 
c$$$         hdecay=hdecay*propsq !*gdm**2
c$$$      endif
c$$$      
c$$$      gg=+avegg*ehsvm3_md(ss,tt,uu,s34)*hdecay
c$$$      qq=+aveqq*ehsvm4_md(ss,tt,uu,s34)*hdecay
c$$$      qg=-aveqg*ehsvm4_md(tt,ss,uu,s34)*hdecay
c$$$      gq=-aveqg*ehsvm4_md(uu,tt,ss,s34)*hdecay
c$$$  
c$$$      
c$$$      do j=-nf,nf    
c$$$      do k=-nf,nf
c$$$      msq(j,k)=0d0
c$$$
c$$$      if ((j.eq. 0) .or. (k.eq.0)) then
c$$$           if ((j.eq. 0) .and. (k.eq.0)) then
c$$$                msq(j,k)=gg
c$$$           elseif ((j.eq.0).and.(k.ne.0)) then
c$$$                msq(j,k)=gq
c$$$           elseif ((j.ne.0).and.(k.eq.0)) then
c$$$                msq(j,k)=qg
c$$$           endif
c$$$      elseif ((j.eq.-k).and. (j.ne.0)) then
c$$$           msq(j,k)=qq
c$$$      endif
c$$$
c$$$      enddo
c$$$      enddo
c$$$      end      




      
      double precision function ehsvm3_dm(s,t,u,s34)
      implicit none
      include 'MCFM_Include/constants.f'
      include 'MCFM_Include/masses.f'
      include 'MCFM_Include/ewcouple.f'
      include 'MCFM_Include/qcdcouple.f'
c---Matrix element squared Eqn 2.2 of EHSV
      double complex ehsva2_dm,ehsva4_dm
      double precision s,t,u,s34
      logical approx
      parameter(approx=.false.)
c--- approx TRUE uses the heavy fermion approximation to Msq
      


      if (approx) then
      ehsvm3_dm=gwsq/pi*as**3*xn*V_i2/9d0*(
     .        s34**4+s**4+t**4+u**4)/s/t/u/wmass**2
      else
      ehsvm3_dm=
     . abs(ehsva2_dm(s,t,u,s34))**2+abs(ehsva2_dm(u,s,t,s34))**2
     &        +abs(ehsva2_dm(t,u,s,s34))**2
     . +abs(ehsva4_dm(s,t,u,s34))**2 
      ehsvm3_dm=gwsq/pi*as**3*xn*V_i2*s34**4/(s*t*u*wmass**2)*ehsvm3_dm
      endif
      return
      end
      
      
      double precision function ehsvm4_dm(s,t,u,s34)
      implicit none
      include 'MCFM_Include/constants.f'
      include 'MCFM_Include/masses.f'
      include 'MCFM_Include/ewcouple.f'
      include 'MCFM_Include/qcdcouple.f'
c---Matrix element squared Eqn 2.6 of EHSV
      double complex ehsva5_dm
      double precision s,t,u,s34
      logical approx
      parameter(approx=.false.)
c--- approx TRUE uses the heavy fermion approximation to Msq


      if (approx) then
      ehsvm4_dm=gwsq/pi*as**3*V_i2/18d0*(u**2+t**2)/s/wmass**2
      else
      ehsvm4_dm=abs(ehsva5_dm(s,t,u,s34))**2
      ehsvm4_dm=gwsq/(4d0*pi)*as**3*V_i2/2d0*(u**2+t**2)/(s*wmass**2)
     . *s34**2/(u+t)**2*ehsvm4_dm
      endif
      
      return
      end

      

      double precision function ehsvm3_md(s,t,u,s34)
      implicit none
      include 'MCFM_Include/constants.f'
      include 'MCFM_Include/masses.f'
      include 'MCFM_Include/ewcouple.f'
      include 'MCFM_Include/qcdcouple.f'
c---Matrix element squared Eqn 2.2 of EHSV
      double complex ehsva2_md,ehsva4_md
      double precision s,t,u,s34
      logical approx
      parameter(approx=.false.)
c--- approx TRUE uses the heavy fermion approximation to Msq
      


      if (approx) then
      ehsvm3_md=(3d0/2d0)**2*gwsq/pi*as**3*xn*V_i2/9d0*(
     .        s34**4+s**4+t**4+u**4)/s/t/u/wmass**2
      else
      ehsvm3_md=
     . abs(ehsva2_md(s,t,u,s34))**2+abs(ehsva2_md(u,s,t,s34))**2
     &        +abs(ehsva2_md(t,u,s,s34))**2
     . +abs(ehsva4_md(s,t,u,s34))**2 
      ehsvm3_md=(3d0/2d0)**2
     . *gwsq/pi*as**3*xn*V_i2*s34**4/(s*t*u*wmass**2)*ehsvm3_md
      endif
      
      return
      end
      
      
      double precision function ehsvm4_md(s,t,u,s34)
      implicit none
      include 'MCFM_Include/constants.f'
      include 'MCFM_Include/masses.f'
      include 'MCFM_Include/ewcouple.f'
      include 'MCFM_Include/qcdcouple.f'
c---Matrix element squared Eqn 2.6 of EHSV
      double complex ehsva5_md
      double precision s,t,u,s34
      logical approx
      parameter(approx=.false.)
c--- approx TRUE uses the heavy fermion approximation to Msq


      if (approx) then
      ehsvm4_md=(3d0/2d0)**2*gwsq/pi*as**3*V_i2/18d0*(u**2+t**2)/s/wmass**2
      else
      ehsvm4_md=abs(ehsva5_md(s,t,u,s34))**2
      ehsvm4_md=(3d0/2d0)**2
     . *gwsq/(4d0*pi)*as**3*V_i2/2d0*(u**2+t**2)/(s*wmass**2)
     . *s34**2/(u+t)**2*ehsvm4_md
      endif
      
      return
      end 


      double complex function ehsva4_dm(s,t,u,s34)
C     ehsv:EqnA.8
      implicit none
      double precision s,t,u,s34
      double complex ehsvb4_dm
      ehsva4_dm=ehsvb4_dm(s,t,u,s34)+ehsvb4_dm(u,s,t,s34)
     &     +ehsvb4_dm(t,u,s,s34)
      return 
      end

      double complex function ehsva2_dm(s,t,u,s34)
C     ehsv:EqnA.9
      implicit none
      double precision s,t,u,s34
      double complex ehsvb2_dm
      ehsva2_dm=ehsvb2_dm(s,t,u,s34)+ehsvb2_dm(s,u,t,s34)
      return 
      end

      double complex function ehsvb4_dm(s,t,u,s34)
      implicit none
C     ehsv:EqnA.10
      include 'MCFM_Include/masses.f'
      double precision hmass2,s,t,u,s34
      double complex w2,w3

      hmass2=s34
c--- The Fermilab preprint has w2(s), but it makes no difference due
c---  to symmetrization in ehsva4 above 
      ehsvb4_dm=mbsq/hmass2*(-2d0/3d0
     . +(mbsq/hmass2-0.25d0)*(w2(t)-w2(hmass2)+w3(s,t,u,hmass2)))
      return 
      end

      double complex function ehsvb2_dm(s,t,u,s34)
C     ehsv:EqnA.11
      implicit none
      include 'MCFM_Include/masses.f'
      double precision hmass2,s,t,u,s34
      double complex w1,w2,w3
      hmass2=s34
      ehsvb2_dm=mbsq/hmass2**2*(s*(u-s)/(s+u)
     . +2d0*u*t*(u+2d0*s)/(s+u)**2*(w1(t)-w1(hmass2))
     . +(mbsq-0.25d0*s)
     . *(0.5d0*w2(s)+0.5d0*w2(hmass2)-w2(t)+w3(s,t,u,hmass2))
     . +s**2*(2d0*mbsq/(s+u)**2-0.5d0/(s+u))*(w2(t)-w2(hmass2))
     . +0.5d0*u*t/s*(w2(hmass2)-2d0*w2(t))
     . +0.125d0*(s-12d0*mbsq-4d0*u*t/s)*w3(t,s,u,hmass2))
      return 
      end

      double complex function ehsva5_dm(s,t,u,s34)
C     ehsv:EqnA.14
      implicit none
      include 'MCFM_Include/masses.f'
      double precision hmass2,s,t,u,s34
      double complex w1,w2
      hmass2=s34
      ehsva5_dm=mbsq/hmass2*(4d0+4d0*s/(u+t)*(w1(s)-w1(hmass2))
     . +(1d0-4d0*mbsq/(u+t))*(w2(s)-w2(hmass2)))
      return 
      end

c--- Uli 4/7/2014: added loop function for pseudo scalar case 

c--- These are the functions similar to equations (A.8)-(A.14)
c--- but which describe the case of a pseudoscalar (CP odd) Higgs
c--- These results are adapted from Spira et al., hep-ph/9504378.

      double complex function ehsva4_md(s,t,u,s34)
C     ehsv:EqnA.8
      implicit none
      double precision s,t,u,s34
      double complex ehsvb4_md
      ehsva4_md=ehsvb4_md(s,t,u,s34)+ehsvb4_md(u,s,t,s34)
     &     +ehsvb4_md(t,u,s,s34)
      return 
      end

      double complex function ehsva2_md(s,t,u,s34)
C     ehsv:EqnA.9
      implicit none
      double precision s,t,u,s34
      double complex ehsvb2_md
      ehsva2_md=ehsvb2_md(s,t,u,s34)+ehsvb2_md(s,u,t,s34)
      return 
      end

      double complex function ehsvb4_md(s,t,u,s34)
      implicit none
C     ehsv:EqnA.10
      include 'MCFM_Include/masses.f'
      double precision hmass2,s,t,u,s34
      double complex w2,w3

      hmass2=s34
      ehsvb4_md=mbsq/hmass2*(w2(hmass2)-w2(s)-w3(s,t,u,hmass2))/6d0
      return 
      end

      double complex function ehsvb2_md(s,t,u,s34)
C     ehsv:EqnA.11
      implicit none
      include 'MCFM_Include/masses.f'
      double precision hmass2,s,t,u,s34
      double complex w2,w3

      hmass2=s34
      ehsvb2_md=mbsq/hmass2**2*(
     .                       -s*w3(s,t,u,hmass2)+s/2d0*w3(t,s,u,hmass2)
     .                       +2d0*s*(0.75d0-u/(s+u))*w2(hmass2)
     .                       -s/2d0*w2(s)
     .                       -s*(1d0-2d0*u/(s+u))*w2(t))/6d0
      return 
      end

      double complex function ehsva5_md(s,t,u,s34)
C     ehsv:EqnA.14
      implicit none
      include 'MCFM_Include/masses.f'
      double precision hmass2,s,t,u,s34
      double complex w2

      hmass2=s34
      ehsva5_md=mbsq/hmass2*2d0/3d0*(w2(s)-w2(hmass2))
      return 
      end


ccccccccccccccccccccccccccc
c     from ehsv.f

      double complex function w1(s)
C     ehsv:EqnA.19
      implicit none
      include 'MCFM_Include/constants.f'
      include 'MCFM_Include/masses.f'
      double precision rat,s,temp,acosh,asinh
      rat=4d0*mbsq/s
      temp=dsqrt(dabs(1d0/rat))
      if (rat .lt. 0d0) then
          w1=2d0*dsqrt(1d0-rat)*asinh(temp)
      elseif (rat .gt. 1d0) then
          w1=2d0*dsqrt(rat-1d0)*asin(temp)
      else 
          temp=2d0*acosh(temp)
          w1=dsqrt(1d0-rat)*dcmplx(temp,-pi)
       endif
      return
      end


      double complex function w2(s)
C     ehsv:EqnA.20
      implicit none
      include 'MCFM_Include/constants.f'
      include 'MCFM_Include/masses.f'
      double precision rat,s,tempr,tempi,acosh,asinh
      rat=s/(4d0*mbsq)
      tempr=dsqrt(dabs(rat))
      if (rat .lt. 0d0) then
          tempr=asinh(tempr)
          w2=4d0*tempr**2
      elseif (rat .gt. 1d0) then
          tempr=acosh(tempr)
          tempi=-4d0*tempr*pi
          tempr=+4d0*tempr**2-pi**2
          w2=dcmplx(tempr,tempi)
      else 
          tempr=asin(tempr)
          w2=-4d0*tempr**2
      endif
      return
      end

      double complex function w3(s,t,u,varg)
C     ehsv:EqnA.17
      implicit none
      double complex i3
      double precision s,t,u,varg
      w3=i3(s,t,u,varg)-i3(s,t,u,s)-i3(s,t,u,u)
      return
      end


      double complex function i3(s,t,u,varg)
C     ehsv:EqnA.21
      implicit none
      include 'MCFM_Include/constants.f'
      include 'MCFM_Include/masses.f'
      double precision s,t,u,varg,rat,al,be,ga,r,theta,phi
      double precision arg1,arg2,arg3,arg4,ddilog,arg
      double complex cli2,zth,zph
      rat=4d0*mbsq/varg
      if (rat .lt. 0d0) then
           be=0.5d0*(1d0+dsqrt(1d0+4d0*t*mbsq/(u*s)))
           ga=0.5d0*(1d0+dsqrt(1d0-rat))
           arg1=ga/(ga+be-1d0)
           arg2=(ga-1d0)/(ga+be-1d0)
           arg3=(be-ga)/be
           arg4=(be-ga)/(be-1d0)
           i3=2d0/(2d0*be-1d0)
     .     *(-ddilog(arg1)+ddilog(arg2)+ddilog(arg3)-ddilog(arg4)
     .     +0.5d0*(dlog(be)**2-dlog(be-1d0)**2)
     .     +dlog(ga)*dlog((ga+be-1d0)/be)
     .     +dlog(ga-1d0)*dlog((be-1d0)/(ga+be-1d0)))
      elseif (rat .gt. 1d0) then
           be=0.5d0*(1d0+dsqrt(1d0+4d0*t*mbsq/(u*s)))
           al=dsqrt(rat-1d0)           
           r=dsqrt((al**2+1d0)/(al**2+(2d0*be-1d0)**2))
           arg=r*(al**2+2d0*be-1d0)/(1d0+al**2)
           if (arg .ge. 1d0) then
             phi=0d0
           else
             phi=dacos(arg)
           endif
           arg=r*(al**2-2d0*be+1d0)/(1d0+al**2)
           if (arg .ge. 1d0) then
             theta=0d0
           else
             theta=dacos(arg)
           endif
           zth=r*dcmplx(cos(theta),sin(theta))
           zph=r*dcmplx(cos(phi),sin(phi))
           i3=2d0/(2d0*be-1d0)
     .     *(2d0*dble(cli2(zth))-2d0*dble(cli2(zph))
     .     +(phi-theta)*(phi+theta-pi))
      else
           be=0.5d0*(1d0+dsqrt(1d0+4d0*t*mbsq/(u*s)))
           ga=0.5d0*(1d0+dsqrt(1d0-rat))
           arg1=ga/(ga+be-1d0)
           arg2=(ga-1d0)/(ga+be-1d0)
           arg3=ga/(ga-be)
           arg4=(ga-1d0)/(ga-be)
      
           i3=2d0/(2d0*be-1d0)
     .     *(-ddilog(arg1)+ddilog(arg2)+ddilog(arg3)-ddilog(arg4)
     .     +dlog(ga/(1d0-ga))*dlog((ga+be-1d0)/(be-ga))
     .     -im*pi*dlog((ga+be-1d0)/(be-ga)))
      endif

      return
      end


cccccccccccccccccccccccccc
c     from src/lib/cli2.f

      double complex function cli2(x)
c--complex dilogarithm (spence-function)
      implicit double precision (a-h,o-z)
      double complex x,y,li2taylor
      double precision zeta2,zeta3
      common/const/zeta2,zeta3
      logical first
      data first/.true./
      save first

      if (first) then
      first=.false.
      call bernini
      endif

      zero=1.d-8
      xr=dble(x)
      xi=dimag(x)
      r2=xr*xr+xi*xi
      cli2=dcmplx(0d0,0d0)
      if(r2.le.zero)then
        cli2=x+x**2/4.d0
        return
      endif
      rr=xr/r2
      if ((r2.eq.1.d0) .and. (xi.eq.0.d0)) then
        if (xr.eq.1.d0) then
          cli2=dcmplx(zeta2)
        else
          cli2=-dcmplx(zeta2/2.d0)
        endif
        return
      elseif ((r2.gt.1.d0) .and. (rr.gt.0.5d0)) then
        y=(x-1.d0)/x
        cli2=li2taylor(y)+zeta2-cdlog(x)*cdlog(1.d0-x)+0.5d0*cdlog(x)**2
        return
      elseif ((r2.gt.1.d0) .and. (rr.le.0.5d0))then
        y=1.d0/x
        cli2=-li2taylor(y)-zeta2-0.5d0*cdlog(-x)**2
        return
      elseif ((r2.le.1.d0) .and. (xr.gt.0.5d0)) then
        y=1.d0-x
        cli2=-li2taylor(y)+zeta2-cdlog(x)*cdlog(1.d0-x)
       return
      elseif ((r2.le.1.d0) .and. (xr.le.0.5d0)) then
        y=x
        cli2=li2taylor(y)
        return
      endif
      end
 
      double complex function li2taylor(x)
c--taylor-expansion for complex dilogarithm (spence-function)
      implicit double precision (a-h,o-z)
      parameter(nber=18)
      double precision b2(nber) 
      double complex x,z
      common/bernoulli/b2

      n=nber-1
      z=-cdlog(1.d0-x)
      li2taylor=b2(nber)
      do 111 i=n,1,-1
        li2taylor=z*li2taylor+b2(i)
111   continue
      li2taylor=z**2*li2taylor+z
      return
      end
 
      double precision function facult(n)
c--double precision version of faculty
      implicit double precision (a-h,o-z)
      facult=1.d0
      if(n.eq.0)return
      do 999 i=1,n
        facult=facult*dfloat(i)
999   continue
      return
      end
 
      subroutine bernini
c--initialization of coefficients for polylogarithms
      implicit none
      include 'MCFM_Include/constants.f'
      integer nber,i
      parameter(nber=18)
      double precision b(nber),b2(nber),zeta2,zeta3,facult
      common/bernoulli/b2
      common/const/zeta2,zeta3
 
 
      b(1)=-1.d0/2.d0
      b(2)=1.d0/6.d0
      b(3)=0.d0
      b(4)=-1.d0/30.d0
      b(5)=0.d0
      b(6)=1.d0/42.d0
      b(7)=0.d0
      b(8)=-1.d0/30.d0
      b(9)=0.d0
      b(10)=5.d0/66.d0
      b(11)=0.d0
      b(12)=-691.d0/2730.d0
      b(13)=0.d0
      b(14)=7.d0/6.d0
      b(15)=0.d0
      b(16)=-3617.d0/510.d0
      b(17)=0.d0
      b(18)=43867.d0/798.d0
      zeta2=pi**2/6.d0
      zeta3=1.202056903159594d0
 
      do 995 i=1,nber
        b2(i)=b(i)/facult(i+1)
995   continue
 
      return
      end





c$$$      subroutine dmsdecay(p,ib,ibb,msq)
c$$$***** scalar decay to dm taken from H=>bb routine
c$$$      implicit none
c$$$      include 'MCFM_Include/constants.f'
c$$$      include 'MCFM_Include/dm_params.f' 
c$$$      integer ib,ibb
c$$$      double precision p(mxpart,4),s56,msq
c$$$
c$$$      s56=2d0*(p(ib,4)*p(ibb,4)-p(ib,1)*p(ibb,1)
c$$$     &        -p(ib,2)*p(ibb,2)-p(ib,3)*p(ibb,3))
c$$$      
c$$$    
c$$$      msq=4d0*(s56/2d0-xmass**2) 
c$$$      
c$$$      return
c$$$      end
c$$$
c$$$c Uli 4/7/2014: added decay for pseudo scalar
c$$$
c$$$      subroutine mdsdecay(p,ib,ibb,msq)
c$$$***** pseudo scalar decay to dm taken from H=>bb routine
c$$$      implicit none
c$$$      include 'MCFM_Include/constants.f'
c$$$      include 'MCFM_Include/dm_params.f' 
c$$$      integer ib,ibb
c$$$      double precision p(mxpart,4),s56,msq
c$$$
c$$$      s56=2d0*(p(ib,4)*p(ibb,4)-p(ib,1)*p(ibb,1)
c$$$     &        -p(ib,2)*p(ibb,2)-p(ib,3)*p(ibb,3))
c$$$      
c$$$    
c$$$      msq=4d0*(s56/2d0+xmass**2) 
c$$$      
c$$$      return
c$$$      end




c$$$      subroutine change_scalup
c$$$      implicit none
c$$$      include 'LesHouches.h'
c$$$c      include 'hepevt.h'
c$$$      include 'nlegborn.h'
c$$$      include 'pwhg_flst.h'
c$$$      include 'pwhg_rad.h'
c$$$      real * 8 ptmin,ptmin2,pcm(0:3,maxnup),beta,vec(3),ptkj2
c$$$      integer k,mu,j
c$$$      logical ini
c$$$      save ini
c$$$      data ini/.true./
c$$$      real * 8 dotp
c$$$      external dotp
c$$$      integer npart
c$$$      npart=0
c$$$      do k=3,nup
c$$$c     only light partons
c$$$         if (idup(k).eq.21.or.abs(idup(k)).le.5) then
c$$$            npart=npart+1
c$$$            do mu=1,3
c$$$               pcm(mu,npart)=pup(mu,k)
c$$$            enddo
c$$$            pcm(0,npart)=pup(4,k)
c$$$         endif
c$$$      enddo
c$$$c     compute min pt of light partons with respect to the incoming beam
c$$$      ptmin2=1d30
c$$$      do k=1,npart
c$$$         ptmin2=min(ptmin2,pcm(1,k)**2+pcm(2,k)**2)
c$$$      enddo
c$$$
c$$$c     compute pt's of the final state partons with respect to each other
c$$$      beta=-(pup(3,1)+pup(3,2))/(pup(4,1)+pup(4,2))
c$$$      vec(1)=0
c$$$      vec(2)=0
c$$$      vec(3)=1
c$$$c     go in the CM frame   
c$$$      call mboost(npart,vec,beta,pcm,pcm)
c$$$      do k=1,npart-1
c$$$         do j=k+1,npart
c$$$            ptkj2 = 2*dotp(pcm(0,k),pcm(0,j))*
c$$$     $           pcm(0,k)*pcm(0,j)/(pcm(0,k)+pcm(0,j))**2
c$$$            ptmin2=min(ptmin2,ptkj2)
c$$$         enddo
c$$$      enddo
c$$$      ptmin=sqrt(ptmin2)
c$$$      if(scalup.gt.ptmin) then
c$$$         if (ini) then
c$$$            write(*,*) '*************************************'
c$$$            write(*,*) 'scalup set to the min pt in the event'
c$$$            write(*,*) '*************************************'
c$$$            ini=.false.
c$$$         endif         
c$$$         scalup = ptmin
c$$$      endif
c$$$      end
