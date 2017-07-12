      subroutine gen_remnant_hook
      implicit none
      include 'nlegborn.h'
      include 'pwhg_rad.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      include 'pwhg_flst.h'
      real * 8 t,tmax
      integer save_rad_kinreg,save_rad_realalr,save_kn_emitter,save_rad_alr_nlist 
      logical save_on
      real * 8 save_kn_csi,save_kn_y,save_kn_azi
      integer jnlowhich,allrad,fladec,fltdec,alr,em,j,local_alr_nlist
      common/cjnlowhich/jnlowhich,allrad,fladec,fltdec

c     this subroutine is called just after a gen_remnant call.  If it's
c     a genuine remnant (not a regular), then an emitter has been
c     selected. Since for this process we are only allowing remnants
c     from radiation from production (hdamp), check that the emitter and
c     rad_kinreg are compatible.
c      print*, 'rad_kinreg,kn_csi = ',rad_kinreg,kn_csi
      if(kn_emitter.gt.2.or.rad_kinreg.ne.1.or.kn_csi.eq.0d0) then
         write(*,*) 'error in gen_remnant_hook: kn_emitter,rad_kinreg,kn_csi '
     $        ,kn_emitter,rad_kinreg,kn_csi
         call exit(-1)
      endif
c     We are not allowing bornzerodamp for this process (see
c     init_couplings.f).
      if(flg_bornzerodamp) then
         write(*,*) 'error in gen_remnant_hook: flg_bornzerodamp'
         call exit(-1)
      endif

c     if we are not doing allrad, we are done. Just keep doing what
c     normal powheg would do (which in this case is writing a remmant
c     event with just radiation from production).
      if(allrad.ne.1) return

c     first, save the current kinematics (remnant configuration).
c      print*, 'UB PROCESS ',flst_born(:,rad_ubornidx)
c      print*, 'REMN PROCESS ',flst_alr(:,rad_realalr)

      save_kn_emitter = kn_emitter
      save_rad_kinreg = rad_kinreg
      save_kn_csi = kn_csi
      save_kn_y = kn_y
      save_kn_azi = kn_azi
      save_rad_realalr = rad_realalr
      save_rad_alr_nlist = rad_alr_nlist
      save_on = rad_kinreg_on(1)

cccccccccc      
c     No need to reset rad_kinreg to 1 (as if we are here, it must be
c     1, see above).  However, let's do it explicitly, helps reading the code.
      rad_kinreg = 1
      call gen_radiation_hook(t,tmax)
cccccccccc
      
c     At this point, there has not been any loop on other emissions
c     (from resonances). The (remnant) ISR has just been stored by means
c     of the previous variables, and the previous call to
c     gen_radiation_hook makes sure that the skn_cmpreal for ISR is
c     filled properly starting from the true remnant kinematics. I now
c     need to loop over all other regions, as allrad=1. However at this
c     point, rad_kinreg_on(*) is all set to false, as the place where
c     it's filled properly is gen_uborn_idx (but we haven't called it
c     here, we are generating a remnant event).  To fill it properly, we
c     repeat here what we would do in gen_uborn_idx, recalling that
c     rad_ubornidx has just been set in gen_remnant. Moreover, to
c     generate radiation properly, I need to have rad_alr_nlist
c     set.
      rad_alr_nlist=flst_born2alr(0,rad_ubornidx)
      do j=1,rad_alr_nlist
         alr=flst_born2alr(j,rad_ubornidx)
         em=flst_emitter(alr)
         rad_alr_list(j)=alr
         if(em.le.2) then
            rad_kinreg_on(1)=.true.
         else
            rad_kinreg_on(em-flst_lightpart+2)=.true.
         endif
      enddo

c     overwrite rad_kinreg_on(1)=false, as I don't want to generate that
c     again (we are in a remnant event, it has been already generated!)
      rad_kinreg_on(1)=.false.
c     If I allow the code to re-generate the ISR for a remnant, I'll end
c     up with a wrong LHE file (for instance, scalup will not match).
c     This is because I would put in sn_kncmpreal the wrong kinematics,
c     rather than the correct, original, one. Calling the radiation_hook
c     on the correct kinematics (see above), and setting
c     rad_kinreg_on(1)=false, prevents this error to happen.

c     Now generate all other possible emissions (emissions from the
c     decay(s)).
      
      call gen_radiation

c     gen_radiation has certainly changed the following variables, since
c     it has computed radiation from resonances. Must put back the
c     remnant ISR type event.  Before doing so, check that rad_kinreg
c     was set to zero. This is the case due to the fact that, because of
c     the hook, t is never bigger than tmax, so in gen_radiation, kinreg
c     stays equal to zero (whilst rad_kinreg is changing...)
      if(rad_kinreg.ne.0) then
         write(*,*) 'error in gen_remnant_hook, rad_kinreg = ',rad_kinreg
         call exit(-1)
      endif
      
      rad_kinreg = save_rad_kinreg
      kn_emitter = save_kn_emitter
      kn_csi = save_kn_csi
      kn_y = save_kn_y
      kn_azi = save_kn_azi
      rad_realalr = save_rad_realalr
      rad_alr_nlist = save_rad_alr_nlist 
      rad_kinreg_on(1) = save_on
      
c     generate again the remnant phase space; the LH routines assumes that
c     the initial state radiation configuration is in the kn block.
      call gen_real_phsp_isr_rad

c     If we are in the allrad+remnant configuration, then in the
c     gen_radiation subroutine I don't reach the call to
c     gen_real_phsp_isr_rad (because kinreg stays equal to zero). The
c     call to set_rad_scales is taken care of in pwhgevent (as usual for
c     a remnant, in the remnant branch of the main if block). The
c     flavour configuration was already decided by gen_remnant, and it's
c     saved via rad_realalr.  I've left the last call, although we've
c     checked that it is not really needed when using allrad, as
c     combine_emission uses skn_cmpreal, which was filled by the
c     gen_radiation_hook call above in this subroutine (which also takes
c     care of calling offshellmapreal).

      end
      
      subroutine gen_radiation_hook(t,tmax)
      implicit none
      real * 8 t,tmax
c store all real phase space kinematics generated in the highest bid loop
c in gen_radiation
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flg.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      include 'onshellmap.h'
      integer jnlowhich,allrad,fladec,fltdec
      common/cjnlowhich/jnlowhich,allrad,fladec,fltdec
      real * 8 skn_cmpreal(0:3,nlegreal,5),vecl(3),betal
      integer index,indcur,radres(5)
      real * 8 tgen(5)
      common/cskn_cmpreal/skn_cmpreal,radres,index
      integer em,res,j
      integer o_radkinreg
      data o_radkinreg/100/
      save o_radkinreg
c      print*, '    in gen_radiation_hook: csi = ',kn_csi
      if(allrad.ne.1) return
      if(rad_kinreg.lt.o_radkinreg) then
         radres = 0
         tgen   = 0
         skn_cmpreal = 0
         index = 0
      endif
      o_radkinreg = rad_kinreg
c if no radiation was generated at this stage, skip;
c but go to last lines to setup output values of t, tmax and rad_kinreg
      if(kn_csi.eq.0) goto 998
      index = index + 1
      if(rad_kinreg.eq.1) then
c         print*, '       --> hook: emission from production,index= ',index
         indcur = index
         res = 1
      else
         em = rad_kinreg + flst_lightpart - 2
         res = flst_bornres(em,1)
         indcur = index
c see if radiation from this resonance is already there
         do j=1,index-1
            if(radres(j).eq.res) then
               if(t.gt.tgen(j)) then
                  indcur = j
                  index = index - 1
                  exit
               else
c this radiation looses the bid (a harder one is already there)
                  index = index - 1
                  goto 998
               endif
            endif
         enddo
      endif
c      print*, '       --> hook: emission from resonance (res,index) = ',res,index
      if(index.gt.5) then
         write(*,*) ' gen_radiation_hook: got more than 5 regions!'
         call exit(-1)
      endif
      radres(indcur) = res
      tgen(indcur)   = t
c      print*, 'calling offshellmapreal in gen_rad_hook, res= ',res
c     $     ,' 3,4,5,6=t,tb,wp,wm'
c      print*, 'csi for this emission: ',kn_csi
      call offshellmapreal
      vecl = (/ 0,0,1 /)
      betal = ( kn_x1 - kn_x2 )/( kn_x1 + kn_x2 )
      call mboost(nlegreal,vecl,-betal,preal_os,
     1     skn_cmpreal(0:3,1:nlegreal,indcur))
c      print*, '       --> saved kinematics skn_cmpreal for indcur,t = ',indcur,tgen(indcur)
 998  if(rad_kinreg.eq.1) then
c make sure that ISR always wins, since t>tmax
c with this settings, tmax will be still 0 at the first
c round (we want all regions to try to radiate down to 0)
         if(kn_csi.eq.0) rad_kinreg = 0 !ER: I am not sure I understand this line. Maybe it's just to make sure that when I pass through this hook, if I was in a Btilde event without ISR radiation, I save that information.
         t    =  0
         tmax = -1
      else
c non-isr always fail t>tmax, so that only the ISR (whether it radiated or not)
         t    = -1
         tmax =  0
      endif
      end


      subroutine combine_emissions
      implicit none
      include 'pwhg_math.h'
      include 'nlegborn.h'
      include 'pwhg_flg.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_rad.h'
      include 'LesHouches.h'
      real * 8 skn_cmpreal(0:3,nlegreal,5)
      integer index,radres(5)
      integer kir,ktp,ktm,kwp,kwm,em,j,newcolor
      common/cskn_cmpreal/skn_cmpreal,radres,index
      real * 8 final_cm(0:3,nlegreal+4),final_lab(0:3,nlegreal+4)
      common/cfinalmoms/final_cm,final_lab
      real * 8 tpmoms(0:3,7),tmmoms(0:3,7),betal,betat,vecl(3),vect(3),
     1     pttb(0:3),pperpttb,tmperr
      integer ii1,ii2,it,itb,iwp,iwm,iwpa,iwpf,iwmf,iwma,ib,ibb,ip
      common/inputprocind/ii1,ii2,it,itb,iwp,iwm,iwpa,iwpf,iwmf,iwma,
     1     ib,ibb,ip
      real *8 wmom_tdec(0:3),wmom_wdec(0:3),dotp
c No emissions or a single emission; nothing to do
      if(index.lt.1) then
         if(rad_kinreg.ne.0) then
            write(*,*) ' combine_emissions: error, rad_kinreg=',
     1           rad_kinreg
         endif
         return
      endif
c indeces of kinematics for
c radiation from isr
      kir = 0
c radiation from t+
      ktp = 0
c radiation from t-
      ktm = 0
c radiation from w+
      kwp = 0
c radiation from w-
      kwm = 0

      do j=1,index
         if(radres(j).eq.1) then
            kir = j
         elseif(radres(j).eq.it) then
            ktp = j
         elseif(radres(j).eq.itb) then
            ktm = j
         elseif(radres(j).eq.iwp) then
            kwp = j
         elseif(radres(j).eq.iwm) then
            kwm = j
         endif
      enddo
c      print*, 'combine emission: index,kir,ktp,ktm,kwp,kwm ',index,kir
c     $     ,ktp,ktm,kwp,kwm
c      print*, skn_cmpreal(0,:,index)
      if(ktp.ne.0.or.kwp.ne.0) then
         if(ktp.eq.0) then
c            print*, '>>>>> WP, no top'
            tpmoms(:,1) = skn_cmpreal(:,it,kwp)
            tpmoms(:,2) = skn_cmpreal(:,ib,kwp)
            tpmoms(:,3) = 0
            tpmoms(:,4) = skn_cmpreal(:,iwp,kwp)
            tpmoms(:,5) = skn_cmpreal(:,iwpf,kwp)
            tpmoms(:,6) = skn_cmpreal(:,iwpa,kwp)
            tpmoms(:,7) = skn_cmpreal(:,nlegreal,kwp)
         elseif(kwp.eq.0) then
c            print*, '>>>>> top, no WP'
            tpmoms(:,1) = skn_cmpreal(:,it,ktp)
            tpmoms(:,2) = skn_cmpreal(:,ib,ktp)
            tpmoms(:,3) = skn_cmpreal(:,nlegreal,ktp)
            tpmoms(:,4) = skn_cmpreal(:,iwp,ktp)
            tpmoms(:,5) = skn_cmpreal(:,iwpf,ktp)
            tpmoms(:,6) = skn_cmpreal(:,iwpa,ktp)
            tpmoms(:,7) = 0
         else
c            print*, '>>>>> top, WP'
            tpmoms(:,1) = skn_cmpreal(:,it,ktp)
            tpmoms(:,2) = skn_cmpreal(:,ib,ktp)
            tpmoms(:,3) = skn_cmpreal(:,nlegreal,ktp)
            
            tpmoms(:,4) = skn_cmpreal(:,iwp,ktp)
c            wmom_tdec(:) = tpmoms(:,4) !ER:
            tpmoms(:,5) = skn_cmpreal(:,iwpf,kwp)
            tpmoms(:,6) = skn_cmpreal(:,iwpa,kwp)
            tpmoms(:,7) = skn_cmpreal(:,nlegreal,kwp)
            wmom_wdec(:) = tpmoms(:,5)+tpmoms(:,6)+tpmoms(:,7)
            !print*, 'virtualities ',dotp(wmom_tdec,wmom_tdec)
!     $           ,dotp(wmom_wdec,wmom_wdec)
            
c boost first to top rest frame            
            call boost2reson(tpmoms(:,1),4,tpmoms(:,4:7),tpmoms(:,4:7))
c next boost to their own rest frame
            call boost2reson(tpmoms(:,5)+tpmoms(:,6)+tpmoms(:,7),3,
     1           tpmoms(:,5:7),tpmoms(:,5:7))
c boost W decay products to W frame
            call boost2resoninv(tpmoms(:,4),3,
     1           tpmoms(:,5:7),tpmoms(:,5:7))
c boost back to top frame
            call boost2resoninv(tpmoms(:,1),4,tpmoms(:,4:7),
     1           tpmoms(:,4:7))
         endif
      endif
      if(ktm.ne.0.or.kwm.ne.0) then
         if(ktm.eq.0) then
c            print*, '>>>>> WM, no atop'
            tmmoms(:,1) = skn_cmpreal(:,itb,kwm)
            tmmoms(:,2) = skn_cmpreal(:,ibb,kwm)
            tmmoms(:,3) = 0
            tmmoms(:,4) = skn_cmpreal(:,iwm,kwm)
            tmmoms(:,5) = skn_cmpreal(:,iwmf,kwm)
            tmmoms(:,6) = skn_cmpreal(:,iwma,kwm)
            tmmoms(:,7) = skn_cmpreal(:,nlegreal,kwm)
         elseif(kwm.eq.0) then
c            print*, '>>>>> atop, no WM'
            tmmoms(:,1) = skn_cmpreal(:,itb,ktm)
            tmmoms(:,2) = skn_cmpreal(:,ibb,ktm)
            tmmoms(:,3) = skn_cmpreal(:,nlegreal,ktm)
            tmmoms(:,4) = skn_cmpreal(:,iwm,ktm)
            tmmoms(:,5) = skn_cmpreal(:,iwmf,ktm)
            tmmoms(:,6) = skn_cmpreal(:,iwma,ktm)
            tmmoms(:,7) = 0
         else
c            print*, '>>>>> atop, WM'
            tmmoms(:,1) = skn_cmpreal(:,itb,ktm)
            tmmoms(:,2) = skn_cmpreal(:,ibb,ktm)
            tmmoms(:,3) = skn_cmpreal(:,nlegreal,ktm)
            
            tmmoms(:,4) = skn_cmpreal(:,iwm,ktm)
            tmmoms(:,5) = skn_cmpreal(:,iwmf,kwm)
            tmmoms(:,6) = skn_cmpreal(:,iwma,kwm)
            tmmoms(:,7) = skn_cmpreal(:,nlegreal,kwm)
c boost first to top rest frame            
            call boost2reson(tmmoms(:,1),4,tmmoms(:,4:7),tmmoms(:,4:7))
c next boost to their own rest frame
            call boost2reson(tmmoms(:,5)+tmmoms(:,6)+tmmoms(:,7),3,
     1           tmmoms(:,5:7),tmmoms(:,5:7))
c boost W decay products to W frame
            call boost2resoninv(tmmoms(:,4),3,
     1           tmmoms(:,5:7),tmmoms(:,5:7))
c boost back to top frame
            call boost2resoninv(tmmoms(:,1),4,tmmoms(:,4:7),
     1           tmmoms(:,4:7))
         endif
      endif
      if(kir.ne.0) then
         final_cm(:,1:nlegreal) =  skn_cmpreal(:,1:nlegreal,kir)
         final_cm(:,nlegreal+1:nlegreal+4) = 0
         pttb =  skn_cmpreal(:,3,kir) + skn_cmpreal(:,4,kir)
         betal = pttb(3)/pttb(0)
         vecl    = 0
         vecl(3) = 1
         call mboost(2,vecl,-betal,skn_cmpreal(:,3:4,kir),
     1        skn_cmpreal(:,3:4,kir))
         pttb = skn_cmpreal(:,3,kir) + skn_cmpreal(:,4,kir)
         pperpttb = sqrt( pttb(1)**2 + pttb(2)**2 )
         vect = pttb(1:3)/pperpttb
         betat = pperpttb / pttb(0)
         if(kwp.ne.0.or.ktp.ne.0) then
            call mboost(7,vect,betat,tpmoms,tpmoms)
            call mboost(7,vecl,betal,tpmoms,tpmoms)
         endif
         if(kwm.ne.0.or.ktm.ne.0) then
            call mboost(7,vect,betat,tmmoms,tmmoms)
            call mboost(7,vecl,betal,tmmoms,tmmoms)
         endif
      else
         final_cm(:,1:nlegborn) = kn_cmpborn(:,1:nlegborn)
         final_cm(:,nlegreal:nlegreal+4) = 0
      endif
      if(ktp.ne.0.or.kwp.ne.0) then
c check tpmoms for consistency
         tmperr = sum(abs(final_cm(:,it)-tpmoms(:,1)))
         if(tmperr.gt.1d-6) then
            write(*,*) ' tpmoms'
            call checktp(tpmoms)
            write(*,*) final_cm(:,it)-tpmoms(:,1)
            stop
         endif
         final_cm(:,ib) = tpmoms(:,2)
         final_cm(:,iwp) = tpmoms(:,4)
         final_cm(:,iwpf)  = tpmoms(:,5)
         final_cm(:,iwpa)  = tpmoms(:,6)
         final_cm(:,nlegreal+1) = tpmoms(:,3)
         final_cm(:,nlegreal+2) = tpmoms(:,7)
      endif
      if(ktm.ne.0.or.kwm.ne.0) then
         tmperr = sum(abs(final_cm(:,itb)-tmmoms(:,1)))
         if(tmperr.gt.1d-6) then
            write(*,*) ' tmmoms'
            call checktp(tmmoms)
            write(*,*) final_cm(:,itb)-tmmoms(:,1)
            stop
         endif
         final_cm(:,ibb) = tmmoms(:,2)
         final_cm(:,iwm) = tmmoms(:,4)
         final_cm(:,iwmf)  = tmmoms(:,5)
         final_cm(:,iwma) = tmmoms(:,6)
         final_cm(:,nlegreal+3) = tmmoms(:,3)
         final_cm(:,nlegreal+4) = tmmoms(:,7)
      endif
c Boost to lab
      betal = ( kn_x1 - kn_x2 )/( kn_x1 + kn_x2 )
      call mboost(nlegreal+4,vecl,betal,final_cm,final_lab)
c overwrite Les Houches momenta
      pup(4,1:nup) = final_lab(0,1:nup)
      pup(1:3,1:nup) = final_lab(1:3,1:nup)
      pup(5,1:nup) = sqrt(abs(pup(4,1:nup)**2-pup(1,1:nup)**2
     1     -pup(2,1:nup)**2-pup(3,1:nup)**2))
      do j=nlegreal+1,nlegreal+4
         if(abs(final_lab(0,j)).ne.0) then
            nup = nup + 1
            istup(nup) = 1
            mothup(:,nup) = 0
            icolup(:,nup) = 0
            pup(5,nup)   = 0
            pup(4,nup)   = final_lab(0,j)
            pup(1:3,nup) = final_lab(1:3,j)
            idup(nup) = 21      ! it is a gluon
            if(j.eq.nlegreal+1) then
c there is an emission in b -> g b
               mothup(1,nup) = it     ! it is in top decay
               mothup(2,nup) = it
               icolup(1,nup) = icolup(1,ib)   ! the gluon picks the b color
               call getnewcolor(newcolor)
               icolup(2,nup) = newcolor
               icolup(1,ib)  = newcolor
            elseif(j.eq.nlegreal+2) then
c there is an emission in W+ -> q qbar g
               mothup(1,nup) = iwp     ! it is in W+ decay
               mothup(2,nup) = iwp
               icolup(1,nup) = icolup(1,iwpf)
               call getnewcolor(newcolor)
               icolup(2,nup)   = newcolor
               icolup(1,iwpf)  = newcolor
            elseif(j.eq.nlegreal+3) then
c there is an emission in bb -> g bb
               mothup(1,nup) = itb     ! it is in atop decay
               mothup(2,nup) = itb
               icolup(2,nup) = icolup(2,ibb)   ! the gluon picks the bbar color
               call getnewcolor(newcolor)
               icolup(1,nup) = newcolor
               icolup(2,12)  = newcolor
            elseif(j.eq.nlegreal+4) then
c there is an emission in W- -> q qbar g
               mothup(1,nup) = iwm     ! it is in W- decay
               mothup(2,nup) = iwm
               icolup(1,nup) = icolup(1,iwmf)
               call getnewcolor(newcolor)
               icolup(2,nup)   = newcolor
               icolup(1,iwmf)  = newcolor
            endif
         endif
      enddo
c      print*, 'CHECKING MOM CONS AT THE END'
      call check_leshouches
      end

      subroutine checktp(tpmoms)
      implicit none
      real * 8 tpmoms(0:3,7),tmperr
      tmperr = sum(abs(
     1   tpmoms(:,4)-tpmoms(:,5)-tpmoms(:,6)-tpmoms(:,7)))
      if(tmperr.gt.1d-6) then
         write(*,*) ' checktp:'
         write(*,*) ' Mom. cons. in W decay:'
         write(*,*) tmperr
      endif
      tmperr = sum(abs(
     1   tpmoms(:,1)-tpmoms(:,4)-tpmoms(:,2)-tpmoms(:,3)))
      if(tmperr.gt.1d-6) then
         write(*,*) ' checktp:'
         write(*,*) ' Mom. cons. in t decay:'
         write(*,*) tmperr
      endif
      end


      subroutine generate_resonance_radiation
      implicit none
      include 'nlegborn.h'
      include 'pwhg_rad.h'
      logical save_on
      end
