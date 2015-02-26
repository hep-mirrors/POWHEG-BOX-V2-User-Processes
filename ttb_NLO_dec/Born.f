      subroutine setborn(ppp,bflav,bres,bornjk,bmunu)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      integer equivto(maxprocborn)
      common/cequivtoborn/equivto
      integer iborn
      include 'onshellmap.h'
c      include 'pwhg_math.h'
      include 'pwhg_st.h'
c      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'constants.f'
      include 'plabel.f'
      include 'process.f'
      include 'scale.f'
      include 'qcdcouple.f'
      include 'msq_cs.f'
      include 'mcfmtopwhg.f'
      include 'resc_array.h'
      integer nlegs
      parameter (nlegs=nlegborn)
c For t tbar with decay, nlegborn=12
      real * 8 ppp(0:3,nlegs),bres,bornjk(nlegs,nlegs),
     &     bmunu(0:3,0:3,nlegs)
      real * 8 p(0:3,nlegs)
      integer bflav(nlegs),ro
c mxpart is in constants.f
      real * 8 mcfmp(mxpart,4)
      double precision msq(-nf:nf,-nf:nf)
      integer iem,iep,inu,inub,ib,ibb,fl,j,k,myin(nlegs)
      logical isodd,isaquark
      external qqb_QQbdk_gvec
      real * 8 brcorr, brcorrect
      external brcorrect
ccccccccccccc
c     for MG5
      real *8 moff,pmad(0:3,8)
      include 'PhysPars.h'
      real *8 pbb(0:3),pb(0:3),pbbb(0:3)
ccccccccccccc
      p = ppp
c set scale in mcfm blocks
      scale=sqrt(st_muren2)
      musq=st_muren2
      as=st_alpha
      gsq=4d0*pi*as
      ason2pi=as/(2d0*pi)
c identify semileptonic decays
      do j=3,nlegs
c W decay products are non-b, non-t fermions, odd are down type (e or d,s)
c even are up type (nu or u,c)
         fl=bflav(j)
c first non-b products
         if(abs(fl).ne.5) then
            if(abs(fl).ne.6.and.abs(fl).lt.20) then
c now only non b t dec. products are allowed
               if(isodd(fl)) then
c e mu tau, d,s
                  if(fl.gt.0) then
                     iem=j
                  else
                     iep=j
                  endif
               else
c nu, u,c
                  if(fl.gt.0) then
                     inu=j
                  else
                     inub=j
                  endif
               endif
            endif
         else
c b
            if(fl.gt.0) then
               ib=j
            else
               ibb=j
            endif
         endif
      enddo
C     setup plabels for MCFM
      plabel(:)='ig'
      if (isaquark(bflav(inu))) then
      plabel(3)='pp'
      case='tt_bbh'
      endif
      if (isaquark(bflav(iem))) then
      plabel(7)='pp'
      case='tt_bbh'
      endif
c Pedantic e nu example
c if(isodd(bflav(j)).and.bflav(j).gt.0.and.bflav(j).lt.20) iem=j
c if(iseven(bflav(j)).and.bflav(j).gt.0.and.bflav(j).lt.20.and.bflav(j).ne.6) inu=j
c         if(bflav(j).eq.11) iem=j
c         if(bflav(j).eq.-12) inub=j
c         if(bflav(j).eq.-11) iep=j
c         if(bflav(j).eq.12) inu=j
c         if(bflav(j).eq.5) ib=j
c         if(bflav(j).eq.-5) ibb=j
c
c iem, inub, ibb come from tb      
c iep, inu, ib come from t
c incoming partons

C     vector for redirection of powheg vector onto mcfm
      myin(:)=-1
      myin(1)=1
      myin(2)=2
      myin(inu)=3
      myin(iep)=4
      myin(ib)=5
      myin(ibb)=6
      myin(iem)=7
      myin(inub)=8


      do j=1,nlegs
      do ro=1,4
      if (myin(j) .gt. 0) then
      if (j .le. 2) then
c incoming partons
      mcfmp(myin(j),ro)=-p(pwhg(ro),j)
      else
      mcfmp(myin(j),ro)=+p(pwhg(ro),j)
      endif
      endif
      enddo
      enddo

C-----Setup Born matrix element
      call qqb_QQbdk(mcfmp,msq)
      bres=msq(bflav(1),bflav(2))


      bornjk(:,:)=zip
      bmunu(:,:,:)=zip

      if ((bflav(1).eq.0).and.(bflav(2).eq.0)) then
C     gg-> QQb case
C-----Remember total cross section is 
C-----msq_cs(1,j,k)+msq_cs(2,j,k)+msq_cs(0,j,k)
C-----where
C-----msq_cs(1,j,k) propto A1^2
C-----msq_cs(2,j,k) propto A2^2
C-----msq_cs(0,j,k) propto -1/xn^2*|(A1+A2)|^2

         bornjk(1,2)=xn/2d0*(msq_cs(1,0,0)+msq_cs(2,0,0))
         bornjk(1,4)=xn/2d0*(msq_cs(1,0,0)+msq_cs(0,0,0))
         bornjk(1,3)=xn/2d0*(msq_cs(2,0,0)+msq_cs(0,0,0))
         bornjk(2,3)=bornjk(1,4)
         bornjk(2,4)=bornjk(1,3)
         bornjk(3,4)=-0.5d0/xn*(msq_cs(1,0,0)+msq_cs(2,0,0)
     &        +msq_cs(0,0,0)*(1d0+xn**2))


         call setupBmunu(mcfmp,myin,qqb_QQbdk_gvec,nlegs,bflav,Bmunu)
         
      elseif (bflav(2).eq.-bflav(1)) then
         bornjk(1,2)=-0.5d0/xn*bres
         if (bflav(1) .gt. 0d0) then
C--   qqb case
            bornjk(1,3)=(0.5d0*xn-1d0/xn)*bres
            bornjk(1,4)=+1d0/xn*bres
         else
C--   qbq case
            bornjk(1,4)=(0.5d0*xn-1d0/xn)*bres
            bornjk(1,3)=+1d0/xn*bres
         endif
         bornjk(2,3)=bornjk(1,4)
         bornjk(2,4)=bornjk(1,3)
         bornjk(3,4)=bornjk(1,2)
      endif

      bornjk(3,ib)=cf*bres
      bornjk(4,ibb)=cf*bres

c For hadronic W decays must add colour ordered amplitudes

      if(abs(bflav(iep)).lt.11) then
         bornjk(iep,inu)=cf*bres
         bornjk(inu,iep)=cf*bres
      endif

      if(abs(bflav(iem)).lt.11) then
         bornjk(iem,inub)=cf*bres
         bornjk(inub,iem)=cf*bres
      endif

C fill other non-zero values
      do j=1,nlegs-1
         do k=j+1,nlegs
            bornjk(k,j)=bornjk(j,k)
         enddo
      enddo

      if(.not.flg_in_smartsig) then
C     Now we are ready to compute offshell results with MG5.
C     vector for redirection of powheg vector onto madgraph
         myin(:)=-1
         myin(1)=1
         myin(2)=2
         myin(inu)=4
         myin(iep)=3
         myin(ib)=7
         myin(ibb)=8
         myin(iem)=5
         myin(inub)=6
         do j=1,nlegs
            if(myin(j).gt.0) then
c     skip resonances
               if(reweightbymg) then
                  pmad(:,myin(j))=cmpborn_os(:,j)
               else
                  pmad(:,myin(j))=p(:,j)
               endif
            endif
         enddo
c     in MG4, this was sometime needed
         pmad(0,1)=dabs(pmad(3,1))
         pmad(0,2)=dabs(pmad(3,2))
c     set couplings that can change on an event-by-event basis
c     (strong coupling)
         call set_ebe_couplings

c     ready to compute
         if(reweightbymg.and..not.doubleresonant) then
            call mg5amp2(pmad,bflav(1),bflav(2),bflav(iep)
     $           ,bflav(iem),'NR',moff)
         elseif(reweightbymg.and.doubleresonant) then
            call mg5amp2(pmad,bflav(1),bflav(2),bflav(iep)
     $           ,bflav(iem),'DR',moff)
         endif

         if(reweightbymg) then
            iborn = flst_cur_iborn
            do while(equivto(iborn).ne.-1)
               iborn = equivto(iborn)
            enddo
c lo_gamma_corr: fix the mismatch between the Gamma used in the propagators
c and the Gamma that one would obtain by integrating over the decay phase space in the
c off shell matrix elements (that is to say the LO Gamma)
            resc_array_os(iborn) = moff/bres*lo_gamma_corr
            bres   = bres   * resc_array_os(iborn)
            bornjk = bornjk * resc_array_os(iborn)
            bmunu  = bmunu  * resc_array_os(iborn)
         else
c     this is just a check, and it tells us that for the
c     gg case the difference between MCFM- and MG5-computed ME
c     is perhaps a bit too large to believe it's just a
c     numerical effect. Never investigated further.
c            print*, 'bflav: ',bflav
c            call mg5amp2(pmad,bflav(1),bflav(2),bflav(iep)
c     $           ,bflav(iem),'DR',moff)
c            if(dabs(moff/bres-1).gt.1d-5) then
c               write(*,*) 'MAD/MCFM ratio: ',bflav(1:2),moff/bres
c            endif
         endif
      endif

c     Useful to debug problematic phase-space points
c$$$      pb(:)=pmad(:,myin(ib))
c$$$      pbb(:)=pmad(:,myin(ibb))
c$$$      pbbb=pb+pbb
c$$$      if((sqrt(pb(1)**2+pb(2)**2).lt.5).and.
c$$$     $     (sqrt(pbb(1)**2+pbb(2)**2).lt.5).and.
c$$$     $     (sqrt(dabs(pbbb(0)**2-pbbb(1)**2-pbbb(2)**2
c$$$     $     -pbbb(3)**2)).lt.2*5)) then
c$$$         print*, '--------------'
c$$$         print*, bres
c$$$         print*, pb
c$$$         print*, pbb
c$$$         print*, 'pmad pt_b ',sqrt(pb(1)**2+pb(2)**2)
c$$$         print*, 'pmad pt_bb',sqrt(pbb(1)**2+pbb(2)**2)
c$$$         print*, 'inv mass ',sqrt(dabs(pbbb(0)**2-pbbb(1)**2-pbbb(2)**2
c$$$     $     -pbbb(3)**2))
c$$$      endif


c Supply strong correction to branching ratio, if needed
      brcorr = brcorrect(p)
      bres   = bres   * brcorr
      bornjk = bornjk * brcorr
      bmunu  = bmunu  * brcorr

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
c      include 'nlegborn.h'
c      include 'pwhg_flst.h'
c      include 'pwhg_kn.h'
      integer iclabel
      common/ciclabel/iclabel
      real * 8 random
      external random
      iclabel=500
c--- Set up color labels for basic processes, gg -> tt~ and qq~ -> tt~      
      if(idup(1).eq.21) then
c gg
         if(random().gt.0.5d0) then
            call clinkqgga
     1           (icolup(1,3),icolup(1,1),icolup(1,2),icolup(1,4))
         else
            call clinkqgga
     1           (icolup(1,3),icolup(1,2),icolup(1,1),icolup(1,4))
         endif
      elseif(idup(1).gt.0) then
         call clinkqa(icolup(1,3),icolup(1,1))
         call clinkqa(icolup(1,2),icolup(1,4))
      else
         call clinkqa(icolup(1,3),icolup(1,2))
         call clinkqa(icolup(1,1),icolup(1,4))
      endif
c---  Copy color labels from t and t~ to b and b~
      icolup(:,11)=icolup(:,3)
      icolup(:,12)=icolup(:,4)
c--- Color-less W+ and W-
      icolup(:,5)=0
      icolup(:,6)=0
c--- W+ decay products
      if (abs(idup(7)) .le. 6) then
c---    jets
        if (idup(7) .gt. 0) then
           call clinkqa(icolup(1,7),icolup(1,8))
	else
           call clinkqa(icolup(1,8),icolup(1,7))
	endif
      else
c---    leptons
         icolup(:,7)=0
         icolup(:,8)=0
      endif            
c--- W- decay products
      if (abs(idup(9)) .le. 6) then
c---    jets
        if (idup(9) .gt. 0) then
           call clinkqa(icolup(1,9),icolup(1,10))
	else
           call clinkqa(icolup(1,10),icolup(1,9))
	endif
      else
c---    leptons
         icolup(:,9)=0
         icolup(:,10)=0
      endif            
           
c     1 and 2 are incoming! conjugate color
      call conjcolor(icolup(1,1))
      call conjcolor(icolup(1,2))
      end


      subroutine conjcolor(cl)
      integer cl(2),i
      i=cl(1)
      cl(1)=cl(2)
      cl(2)=i
      end

c Subroutine to link colours for
c quark - gluon -gluon  -gluon - aquark
c in planar order
      subroutine clinkqggga(ic1,ic2,ic3,ic4,ic5)
      integer iclabel
      common/ciclabel/iclabel
      integer ic1(2),ic2(2),ic3(2),ic4(2),ic5(2)
c ic1 is a quark: has colour, zero anticolor
      ic1(1)=iclabel+2
      ic1(2)=0
c ic2 is a gluon: link to quark
      ic2(1)=iclabel+3
      ic2(2)=iclabel+2
c ic3 is a gluon
      ic3(1)=iclabel+4
      ic3(2)=iclabel+3
c ic4 is an gluon
      ic4(1)=iclabel+5
      ic4(2)=iclabel+4
c ic5 is an antiquark
      ic5(1)=0
      ic5(2)=iclabel+5
      iclabel=iclabel+10
      end

c Subroutine to link colours for
c quark - gluon -gluon - aquark
c in planar order
      subroutine clinkqgga(ic1,ic2,ic3,ic4)
      integer iclabel
      common/ciclabel/iclabel
      integer ic1(2),ic2(2),ic3(2),ic4(2)
c ic1 is a quark: has colour, zero anticolor
      ic1(1)=iclabel+2
      ic1(2)=0
c ic2 is a gluon: link to quark
      ic2(1)=iclabel+3
      ic2(2)=iclabel+2
c ic3 is a gluon
      ic3(1)=iclabel+4
      ic3(2)=iclabel+3
c ic4 is an anti-quark
      ic4(1)=0
      ic4(2)=iclabel+4
      iclabel=iclabel+10
      end

c Subroutine to link colours for
c quark - gluon - aquark
c in planar order
      subroutine clinkqga(ic1,ic2,ic3)
      integer iclabel
      common/ciclabel/iclabel
      integer ic1(2),ic2(2),ic3(2)
c ic1 is a quark: has colour, zero anticolor
      ic1(1)=iclabel+2
      ic1(2)=0
c ic2 is a gluon: link to quark
      ic2(1)=iclabel+3
      ic2(2)=iclabel+2
c ic3 is an antiquark
      ic3(1)=0
      ic3(2)=iclabel+3
      iclabel=iclabel+10
      end

c Subroutine to link colours for
c quark - aquark
c in planar order
      subroutine clinkqa(ic1,ic2)
      integer iclabel
      common/ciclabel/iclabel
      integer ic1(2),ic2(2)
c ic1 is a quark: has colour, zero anticolor
      ic1(1)=iclabel+2
      ic1(2)=0
c ic2 is an antiquark
      ic2(1)=0
      ic2(2)=iclabel+2
      iclabel=iclabel+10
      end

      subroutine mg5amp2(pmad,bf1,bf2,bfwpdec,bfwmdec,mode,amp2)
      implicit none
      include 'nlegborn.h'
      include 'onshellmap.h'
      real *8 pmad(0:3,8),amp2
      integer bf1,bf2,bfwpdec,bfwmdec
      integer f1,f2,wpdec,wmdec
      character *2 mode
      integer familymult
      integer i_u,i_ux,i_d,i_dx,i_c,i_cx,i_s,i_sx
      parameter(i_u=2,i_ux=-2,i_d=1,i_dx=-1,i_c=4,i_cx=-4,i_s=3,i_sx=-3)
      
      wpdec=bfwpdec
      wmdec=bfwmdec
      f1=bf1
      f2=bf2

c      print*, 'step0 ',f1,f2,wpdec,wmdec

c     conventions: (wpdec,wmdec)=(antipart from w+, part from w-)

c     If I have one or two leptonic decays, convert the local value of wpdec
c     and wmdec to match MG5 routines.
      if((wpdec.le.-11).and.(wpdec+wmdec).eq.0) then
c     (lep+,lep-) same flavour -> (e+,e-)
         wpdec=-11
         wmdec=+11
      elseif((wpdec.le.-11).and.(wmdec.ge.11).and.(wpdec+wmdec.ne.0)) then
c     (lep+,lep-) different flavour -> (e+,mu-)
         wpdec=-11
         wmdec=+13
      elseif((wpdec.le.-11).and.(abs(wmdec).le.4)) then
c     (lep+,h) -> (e+,h)
         wpdec=-11
      elseif((abs(wpdec).le.4).and.(wmdec.ge.11)) then
c     (h,lep-) final state -> (h,e-)
         wmdec=+11
      endif

c      print*, 'step1 ',f1,f2,wpdec,wmdec

c     If one or two hadronic decays are selected, wpdec and/or wmdec are set equal
c     to 1 (or -1) in init_processes.f. Check that their absolute value is always
c     equal to 1 here.
      if(abs(wpdec).ge.2.and.abs(wpdec).le.4) then
         write(*,*) 'wrong wpdec for hadronic decays in mg5amp2 ',wpdec
         call exit(-1)
      endif
      if(abs(wmdec).ge.2.and.abs(wmdec).le.4) then
         write(*,*) 'wrong wmdec for hadronic decays in mg5amp2 ',wmdec
         call exit(-1)
      endif
c     The rationale for this convention in defining the list of processes is the following.
c     I have just 1 process for all possible final states originating for a top decaying hadronically.
c     For example if (wpdec,wmdec)=(-11,1), then we are in the (e+,h) case.
c     Assuming Vtb=1, with MCFM we are computing the sum of the following 
c     squared matrix elements: (Wm->ubar,d) (Wm->ubar,s) (Wm->cbar,d) (Wm->cbar,s)
c     In MCFM matrix elements there is therefore an overall factor to take into account the sum over 2 families.
c     This factor is equal to
c     2 for (lep+,h) and (h,lep-)
c     4 for (h,h)
c     I have to include this factor in mg5 too, since the mg5 matrix elements were generated only assuming
c     the W decays just in the 1st quark family, with "CKM coupling" exactly equal to 1.
      familymult=1
      if(abs(wpdec).eq.1) familymult=familymult*2
      if(abs(wmdec).eq.1) familymult=familymult*2
c     The choice of the exact flavour combination is done when writing the LH event file.

c     if we are doing (h,h), we will compute the mg5 ME neglecting interference effects 
c     among the Wp and Wm decay products. In practice, this means that we
c     use the ME with top and antitop decaying respectively into 2 different
c     quark families, each of them with "CKM coupling" exactly equal to 1.
c     In paricular, we have generated the mg5 ME with the following final state
c     dx u s cx
c     which for the DR-diagrams correspond to
c     (Wp->dbar,u) and (Wm->s,cbar)
c     Here I need to set wpdec and wmdec accordingly, ONLY if we are in the (h,h) case.
c     This is irrelevant if we are just computing DR-diagrams, but in that case mg5 ME are computed
c     properly regardless of what I do here, so I'm allowed to redefine wpdec and wmdec in all cases.
      if((abs(wpdec).eq.1).and.(abs(wmdec).eq.1)) then
         wpdec=i_dx
         wmdec=i_s
      endif

c     if we are doing (e+,h) or (h,e-) and we have a 2nd generation
c     initial state, care has to be taken for the hadronic decay of W.
c     (MG5 routines were generated for u and d initial states only). This
c     clearly doesn't apply if we only do DR diagrams; in that case it's
c     fine to convert all to 1st generation (initial partons and w
c     hadronic decay don't talk with each other)
      if (wpdec.eq.-11.and.abs(wmdec).le.4) then
c     W+ -> e+ v
c     W- -> h h
         if(abs(f1).eq.i_s.and.abs(f2).eq.i_s) then
c            f1=i_d*sign(1,f1)
c            f2=i_d*sign(1,f2)
            if(wmdec.eq.i_s) then
c     s s -> s ===> d d -> d
               wmdec=i_d
               write(*,*) 'this should never occur: wmdec always = 1'
               call exit(-1)
            elseif(wmdec.eq.i_d) then
c     s s -> d ===> d d -> s
               wmdec=i_s
            endif
         elseif(abs(f1).eq.i_c.and.abs(f2).eq.i_c) then
c            f1=i_u*sign(1,f1)
c            f2=i_u*sign(1,f2)
            if(wmdec.eq.i_s) then
c     c c -> s ===> u u -> d
               wmdec=i_d
               write(*,*) 'this should never occur: wmdec always = 1'
               call exit(-1)
            elseif(wmdec.eq.i_d) then
c     c c -> d ===> u u -> s
               wmdec=i_s
            endif
         endif

c     DR: overwrite ===> q(1stg) q(1stg) -> d
         if(mode.eq.'DR') wmdec=i_d

      elseif (abs(wpdec).le.4.and.wmdec.eq.11) then
c     W+ -> h h
c     W- -> e- v
         if(abs(f1).eq.i_s.and.abs(f2).eq.i_s) then
c            f1=i_d*sign(1,f1)
c            f2=i_d*sign(1,f2)
            if(wpdec.eq.i_sx) then
c     s s -> sx ===> d d -> dx
               wpdec=i_dx
               write(*,*) 'this should never occur: wpdec always = 1'
               call exit(-1)
            elseif(wpdec.eq.i_dx) then
c     s s -> dx ===> d d -> sx
               wpdec=i_sx
            endif
         elseif(abs(f1).eq.i_c.and.abs(f2).eq.i_c) then
c            f1=i_u*sign(1,f1)
c            f2=i_u*sign(1,f2)
            if(wpdec.eq.i_sx) then
c     c c -> sx ===> u u -> dx
               wpdec=i_dx
               write(*,*) 'this should never occur: wpdec always = 1'
               call exit(-1)
            elseif(wpdec.eq.i_dx) then
c     c c -> dx ===> u u -> sx
               wpdec=i_sx
            endif
         endif

c     DR: overwrite ===> q(1stg) q(1stg) -> dx
         if(mode.eq.'DR') wpdec=i_dx

      endif

c     At this point we have already taken care of hadronic decays if
c     (e+,h) or (h,e-) final state, when in presence of 1st or 2nd
c     initial state generation.  So convert f1 and f2 to 1st
c     generation, in all cases.
      f1=fmad(f1)
      f2=fmad(f2)

c      print*, 'step2 ',f1,f2,wpdec,wmdec

      amp2=-1.
      if(f1.eq.2 .and. f2.eq.-2) then
         if(wpdec.eq.-11.and.wmdec.eq.11) then
            if(mode.eq.'NR') call SP1_uux_epveemvexbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP2_uux_epveemvexbbx1(pmad,amp2)
         elseif(wpdec.eq.-11.and.wmdec.eq.13) then
            if(mode.eq.'NR') call SP11_uux_epvemmvmxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP12_uux_epvemmvmxbbx1(pmad,amp2)
         elseif(wpdec.eq.-11.and.abs(wmdec).le.4) then
            if(mode.eq.'NR'.and.wmdec.eq.i_d) call SP21_uux_epveduxbbx1(pmad,amp2)
            if(mode.eq.'NR'.and.wmdec.eq.i_s) call SP211_uux_epvescxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP22_uux_epveduxbbx1(pmad,amp2)
         elseif(abs(wpdec).le.4.and.wmdec.eq.11) then
            if(mode.eq.'NR'.and.wpdec.eq.i_dx) call SP31_uux_dxuemvexbbx1(pmad,amp2)
            if(mode.eq.'NR'.and.wpdec.eq.i_sx) call SP311_uux_sxcemvexbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP32_uux_dxuemvexbbx1(pmad,amp2)
         elseif(abs(wpdec).le.4.and.abs(wmdec).le.4) then
            if(mode.eq.'NR'.and.wpdec.eq.i_dx.and.wmdec.eq.i_s) call SP41_uux_dxuscxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP42_uux_dxuscxbbx1(pmad,amp2)
         endif
      elseif(f1.eq.-2 .and. f2.eq.2) then
         if(wpdec.eq.-11.and.wmdec.eq.11) then
            if(mode.eq.'NR') call SP3_uxu_epveemvexbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP4_uxu_epveemvexbbx1(pmad,amp2)
         elseif(wpdec.eq.-11.and.wmdec.eq.13) then
            if(mode.eq.'NR') call SP13_uxu_epvemmvmxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP14_uxu_epvemmvmxbbx1(pmad,amp2)
         elseif(wpdec.eq.-11.and.abs(wmdec).le.4) then
            if(mode.eq.'NR'.and.wmdec.eq.i_d) call SP23_uxu_epveduxbbx1(pmad,amp2)
            if(mode.eq.'NR'.and.wmdec.eq.i_s) call SP231_uxu_epvescxbbx1(pmad,amp2) 
            if(mode.eq.'DR') call SP24_uxu_epveduxbbx1(pmad,amp2)
         elseif(abs(wpdec).le.4.and.wmdec.eq.11) then
            if(mode.eq.'NR'.and.wpdec.eq.i_dx) call SP33_uxu_dxuemvexbbx1(pmad,amp2)
            if(mode.eq.'NR'.and.wpdec.eq.i_sx) call SP331_uxu_sxcemvexbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP34_uxu_dxuemvexbbx1(pmad,amp2)
         elseif(abs(wpdec).le.4.and.abs(wmdec).le.4) then
            if(mode.eq.'NR'.and.wpdec.eq.i_dx.and.wmdec.eq.i_s) call SP43_uxu_dxuscxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP44_uxu_dxuscxbbx1(pmad,amp2)
         endif
      elseif(f1.eq.1 .and. f2.eq.-1) then
         if(wpdec.eq.-11.and.wmdec.eq.11) then
            if(mode.eq.'NR') call SP5_ddx_epveemvexbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP6_ddx_epveemvexbbx1(pmad,amp2)
         elseif(wpdec.eq.-11.and.wmdec.eq.13) then
            if(mode.eq.'NR') call SP15_ddx_epvemmvmxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP16_ddx_epvemmvmxbbx1(pmad,amp2)
         elseif(wpdec.eq.-11.and.abs(wmdec).le.4) then
            if(mode.eq.'NR'.and.wmdec.eq.i_d) call SP25_ddx_epveduxbbx1(pmad,amp2)
            if(mode.eq.'NR'.and.wmdec.eq.i_s) call SP251_ddx_epvescxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP26_ddx_epveduxbbx1(pmad,amp2)
         elseif(abs(wpdec).le.4.and.wmdec.eq.11) then
            if(mode.eq.'NR'.and.wpdec.eq.i_dx) call SP35_ddx_dxuemvexbbx1(pmad,amp2)
            if(mode.eq.'NR'.and.wpdec.eq.i_sx) call SP351_ddx_sxcemvexbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP36_ddx_dxuemvexbbx1(pmad,amp2)
         elseif(abs(wpdec).le.4.and.abs(wmdec).le.4) then
            if(mode.eq.'NR'.and.wpdec.eq.i_dx.and.wmdec.eq.i_s) call SP45_ddx_dxuscxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP46_ddx_dxuscxbbx1(pmad,amp2)
         endif
      elseif(f1.eq.-1 .and. f2.eq.1) then
         if(wpdec.eq.-11.and.wmdec.eq.11) then
            if(mode.eq.'NR') call SP7_dxd_epveemvexbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP8_dxd_epveemvexbbx1(pmad,amp2)
         elseif(wpdec.eq.-11.and.wmdec.eq.13) then
            if(mode.eq.'NR') call SP17_dxd_epvemmvmxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP18_dxd_epvemmvmxbbx1(pmad,amp2)
         elseif(wpdec.eq.-11.and.abs(wmdec).le.4) then
            if(mode.eq.'NR'.and.wmdec.eq.i_d) call SP27_dxd_epveduxbbx1(pmad,amp2)
            if(mode.eq.'NR'.and.wmdec.eq.i_s) call SP271_dxd_epvescxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP28_dxd_epveduxbbx1(pmad,amp2)
         elseif(abs(wpdec).le.4.and.wmdec.eq.11) then
            if(mode.eq.'NR'.and.wpdec.eq.i_dx) call SP37_dxd_dxuemvexbbx1(pmad,amp2)
            if(mode.eq.'NR'.and.wpdec.eq.i_sx) call SP371_dxd_sxcemvexbbx1(pmad,amp2) 
            if(mode.eq.'DR') call SP38_dxd_dxuemvexbbx1(pmad,amp2)
         elseif(abs(wpdec).le.4.and.abs(wmdec).le.4) then
            if(mode.eq.'NR'.and.wpdec.eq.i_dx.and.wmdec.eq.i_s) call SP47_dxd_dxuscxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP48_dxd_dxuscxbbx1(pmad,amp2)
         endif
      elseif(f1.eq.0 .and. f2.eq.0) then
         if(wpdec.eq.-11.and.wmdec.eq.11) then
            if(mode.eq.'NR') call SP9_gg_epveemvexbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP10_gg_epveemvexbbx1(pmad,amp2)
         elseif(wpdec.eq.-11.and.wmdec.eq.13) then
            if(mode.eq.'NR') call SP19_gg_epvemmvmxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP20_gg_epvemmvmxbbx1(pmad,amp2)
         elseif(wpdec.eq.-11.and.abs(wmdec).le.4) then
            if(mode.eq.'NR') call SP29_gg_epveduxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP30_gg_epveduxbbx1(pmad,amp2)
         elseif(abs(wpdec).le.4.and.wmdec.eq.11) then
            if(mode.eq.'NR') call SP39_gg_dxuemvexbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP40_gg_dxuemvexbbx1(pmad,amp2)
         elseif(abs(wpdec).le.4.and.abs(wmdec).le.4) then
            if(mode.eq.'NR') call SP49_gg_dxuscxbbx1(pmad,amp2)
            if(mode.eq.'DR') call SP50_gg_dxuscxbbx1(pmad,amp2)
         endif
      endif
c      print*, f1,f2,wpdec,wmdec,amp2
c      stop
      if(amp2.lt.0d0) then
         write(*,*) 'Error in mg5amp2: not yet implemented ',bf1,bf2
     $        ,bfwpdec,bfwmdec
         call exit(-1)
      endif
      amp2=amp2*familymult
      end


      subroutine finalize_lh
c Thing to do: in case of hadronic decay of a W, set
c the right proportion of u dbar, u sbar, c sbar and c dbar
      implicit none
      include 'nlegborn.h'
      include 'LesHouches.h'
      include 'PhysPars.h'
      include 'onshellmap.h'
      integer i
      real * 8 random
      external random
      real * 8 sin2cb
      integer jnlowhich,allrad,fladec,fltdec
      common/cjnlowhich/jnlowhich,allrad,fladec,fltdec
      logical ini,nospincorr
      data ini/.true./
      save ini,nospincorr
      real * 8 powheginput
      external powheginput
      if(offshelltop) then
         if(nup.eq.nlegreal) then
            call offshellmapreal
            pup(1:3,1:nup)=preal_os(1:3,1:nup)
            pup(4,1:nup)=preal_os(0,1:nup)
         else
            pup(1:3,1:nup)=pborn_os(1:3,1:nup)
            pup(4,1:nup)=pborn_os(0,1:nup)
         endif
         pup(5,1:nup)=sqrt(abs(pup(4,1:nup)**2
     1        -pup(1,1:nup)**2-pup(2,1:nup)**2-pup(3,1:nup)**2))
      endif
      sin2cb = ph_CKM(1,2)**2
      do i=7,9,2
         if(abs(idup(i)).lt.3.and.abs(idup(i)).ge.1) then
            if(abs(idup(i)).eq.1) then
               if(random().gt.0.5d0) then
                  idup(i)=sign(3,idup(i))
                  if(random().gt.sin2cb) then
                     idup(i+1)=sign(4,idup(i+1))
                  else
                     idup(i+1)=sign(2,idup(i+1))
                  endif
               else
                  if(random().gt.sin2cb) then
                     idup(i+1)=sign(2,idup(i+1))
                  else
                     idup(i+1)=sign(4,idup(i+1))
                  endif
               endif
            elseif(abs(idup(i)).eq.2) then
               if(random().gt.0.5d0) then
                  idup(i)=sign(4,idup(i))
                  if(random().gt.sin2cb) then
                     idup(i+1)=sign(3,idup(i+1))
                  else
                     idup(i+1)=sign(1,idup(i+1))
                  endif
               else
                  if(random().gt.sin2cb) then
                     idup(i+1)=sign(1,idup(i+1))
                  else
                     idup(i+1)=sign(3,idup(i+1))
                  endif
               endif
            else
               write(*,*) ' finalize_lh: something wrong'
               call exit(-1)
            endif
         endif
      enddo
      if(ini) then
         nospincorr = powheginput("#nospincorr").eq.1
      endif

      if(allrad.eq.1) then
         call combine_emissions
      endif

      if(nospincorr) then
c perform a random rotation of the t (tbar) decay products in the
c t (tbar) rest frame
         if(ini) then
            write(*,*) ' rotating randomly the t and tbar systems'
            ini = .false.
         endif
         call randomrotate(3)
         call randomrotate(4)
      endif

      call lhefinitemasses

      end

      subroutine randomrotate(ind)
      implicit none
      integer ind
      include 'LesHouches.h'
      real * 8 pres(5),vec(3),beta,r(3,3)
      logical sonof
      integer j
      beta=sqrt(pup(1,ind)**2+pup(2,ind)**2+pup(3,ind)**2)/pup(4,ind)
      vec(1)=pup(1,ind)/(beta*pup(4,ind))
      vec(2)=pup(2,ind)/(beta*pup(4,ind))
      vec(3)=pup(3,ind)/(beta*pup(4,ind))
      call uniformrot(r)
      do j=3,nup
         if(sonof(ind,j)) then
            call mboost5(1,vec,-beta,pup(:,j),pup(:,j))
            call matrixmultvec(r,pup(1:3,j))
            call mboost5(1,vec,beta,pup(:,j),pup(:,j))
         endif
      enddo
      end

      function sonof(m,k)
      implicit none
      logical sonof
      integer m,k
      include  'LesHouches.h'
      integer j,kcurr
      integer ngenerations
      parameter (ngenerations=4)
      kcurr=mothup(1,k)
      do j=1,ngenerations
         if(kcurr.eq.m) then
            sonof = .true.
            return
         endif
         kcurr = mothup(1,kcurr)
         if(kcurr.eq.0) then
            sonof = .false.
            return
         endif
      enddo
      sonof=.false.
      end


      subroutine mboost5(m,vec,beta,vin,vout)
c     boosts the m vectors vin(4,m) into the vectors vout(4,m) (that can
c     be the same) in the direction of vec(3) (|vec|=1) with velocity
c     beta.  Lorents convention: (t,x,y,z).
      implicit none
      integer m
      real * 8 vec(3),beta,vin(5,m),vout(5,m)
      real * 8 betav,gamma
      real * 8 vdotb
      integer ipart,idim
      gamma=1/sqrt(1-beta**2)
      do ipart=1,m
         vdotb=vin(1,ipart)*vec(1)
     #         +vin(2,ipart)*vec(2)+vin(3,ipart)*vec(3)
         do idim=1,3
            vout(idim,ipart)=vin(idim,ipart)
     #           +vec(idim)*((gamma-1)*vdotb
     #           +gamma*beta*vin(4,ipart))
         enddo
         vout(4,ipart)=gamma*(vin(4,ipart)+vdotb*beta)
         vout(5,ipart)=vin(5,ipart)
      enddo
      end


      subroutine matrixmultvec(r,v)
      implicit none
      real * 8 r(3,3),v(3),res(3)
      integer j
      do j=1,3
         res(j)=r(j,1)*v(1)+r(j,2)*v(2)+r(j,3)*v(3)
      enddo
      v = res
      end


      subroutine uniformrot(R)
      implicit none
c     Generate a uniformly distributed rotation
      real * 8 r(3,3)
      real * 8 pi
      parameter (pi=3.141592653589793d0)
      real * 8 costh,sinth,phi,gamma,sing,cosg,norm
      real * 8 random
      external random
      costh=2*random()-1
      sinth=sqrt(abs(1-costh**2))
      phi=2*pi*random()
c First axis in random direction
      r(1,1)=costh
      r(2,1)=sinth*sin(phi)
      r(3,1)=sinth*cos(phi)
c now pick a vector orthogonal to the first axis
      if(costh.gt.0.5d0) then
         norm=sqrt(r(1,1)**2+r(2,1)**2)
         r(1,2)=r(2,1)/norm
         r(2,2)=-r(1,1)/norm
         r(3,2)=0
      else
         norm=sqrt(r(2,1)**2+r(3,1)**2)
         r(1,2)=0
         r(2,2)=r(3,1)/norm
         r(3,2)=-r(2,1)/norm
      endif
c Now totate r(:,2) around r(:,1) of an arbitrary angle
      gamma = 2*pi * random()
      sing = sin(gamma)
      cosg = cos(gamma)
      call mrotate(r(:,1),sing,cosg,r(:,2))
c Last axis is cross product of 1 and 2
      r(1,3)=r(2,1)*r(3,2)-r(3,1)*r(2,2)
      r(2,3)=r(3,1)*r(1,2)-r(1,1)*r(3,2)
      r(3,3)=r(1,1)*r(2,2)-r(2,1)*r(1,2)
      end

