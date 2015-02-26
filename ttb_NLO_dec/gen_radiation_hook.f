      subroutine gen_remnant_hook
      implicit none
      include 'nlegborn.h'
      include 'pwhg_rad.h'
      include 'pwhg_kn.h'
      real * 8 t,tmax
      integer save_rad_kinreg
      logical save_on
      real * 8 save_kn_csi,save_kn_y,save_kn_azi,save_kn_emitter
      integer jnlowhich,allrad,fladec,fltdec
      common/cjnlowhich/jnlowhich,allrad,fladec,fltdec
      if(allrad.ne.1) return

      save_kn_emitter = kn_emitter
      save_rad_kinreg = rad_kinreg
      save_kn_csi = kn_csi
      save_kn_y = kn_y
      save_kn_azi = kn_azi
      rad_kinreg = 1
      call gen_radiation_hook(t,tmax)

      save_on = rad_kinreg_on(1)
      rad_kinreg_on(1) = .false.
      call gen_radiation
      rad_kinreg_on(1) = save_on
c gen_radiation has certainly changed the following variables,
c since it has computed radiation from resonances. Must put back
c the remnant ISR type event.
      rad_kinreg = save_rad_kinreg
      kn_emitter = save_kn_emitter
      kn_csi = save_kn_csi
      kn_y = save_kn_y
      kn_azi = save_kn_azi

c generate again the remnant phase space;
c the LH routines assumes that the initial state
c radiation configuration is in the kn block.
      call gen_real_phsp_isr_rad

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
      if(allrad.ne.1) return
      if(rad_kinreg.lt.o_radkinreg) then
         radres = 0
         tgen   = 0
         skn_cmpreal = 0
         index = 0
      endif
      o_radkinreg = rad_kinreg
c if no radiation was generted at this stage, skip
      if(kn_csi.eq.0) return
      index = index + 1
      if(rad_kinreg.eq.1) then
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
                  return
               endif
            endif
         enddo
      endif
      if(index.gt.5) then
         write(*,*) ' gen_radiation_hook: got more than 5 regions!'
         call exit(-1)
      endif
      radres(indcur) = res
      tgen(indcur)   = t
      call offshellmapreal
      vecl = (/ 0,0,1 /)
      betal = ( kn_x1 - kn_x2 )/( kn_x1 + kn_x2 )
      call mboost(nlegreal,vecl,-betal,preal_os,
     1     skn_cmpreal(0:3,1:nlegreal,indcur))
      if(rad_kinreg.eq.1) then
c make sure that ISR always wins, since t>tmax
         if(t.gt.0) then
c with this settings, tmax will be still 0 at the first
c round (we want all regions to try to radiate down to 0
            t    =  0
            tmax = -1
         endif
      else
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
      if(ktp.ne.0.or.kwp.ne.0) then
         if(ktp.eq.0) then
            tpmoms(:,1) = skn_cmpreal(:,it,kwp)
            tpmoms(:,2) = skn_cmpreal(:,ib,kwp)
            tpmoms(:,3) = 0
            tpmoms(:,4) = skn_cmpreal(:,iwp,kwp)
            tpmoms(:,5) = skn_cmpreal(:,iwpf,kwp)
            tpmoms(:,6) = skn_cmpreal(:,iwpa,kwp)
            tpmoms(:,7) = skn_cmpreal(:,nlegreal,kwp)
         elseif(kwp.eq.0) then
            tpmoms(:,1) = skn_cmpreal(:,it,ktp)
            tpmoms(:,2) = skn_cmpreal(:,ib,ktp)
            tpmoms(:,3) = skn_cmpreal(:,nlegreal,ktp)
            tpmoms(:,4) = skn_cmpreal(:,iwp,ktp)
            tpmoms(:,5) = skn_cmpreal(:,iwpf,ktp)
            tpmoms(:,6) = skn_cmpreal(:,iwpa,ktp)
            tpmoms(:,7) = 0
         else
            tpmoms(:,1) = skn_cmpreal(:,it,ktp)
            tpmoms(:,2) = skn_cmpreal(:,ib,ktp)
            tpmoms(:,3) = skn_cmpreal(:,nlegreal,ktp)
            
            tpmoms(:,4) = skn_cmpreal(:,iwp,ktp)
            tpmoms(:,5) = skn_cmpreal(:,iwpf,kwp)
            tpmoms(:,6) = skn_cmpreal(:,iwpa,kwp)
            tpmoms(:,7) = skn_cmpreal(:,nlegreal,kwp)
c boost first to top rest frame            
            call boost2reson(tpmoms(:,1),4,tpmoms(:,4:7),tpmoms(:,4:7))
c next boost to their own rest frame
            call boost2reson(tpmoms(:,5)+tpmoms(:,6)+tpmoms(:,7),4,
     1           tpmoms(:,5:7),tpmoms(:,5:7))
c boost W decay products to W frame
            call boost2resoninv(tpmoms(:,4),4,
     1           tpmoms(:,5:7),tpmoms(:,5:7))
c boost back to top frame
            call boost2resoninv(tpmoms(:,1),4,tpmoms(:,4:7),
     1           tpmoms(:,4:7))
         endif
      endif
      if(ktm.ne.0.or.kwm.ne.0) then
         if(ktm.eq.0) then
            tmmoms(:,1) = skn_cmpreal(:,itb,kwm)
            tmmoms(:,2) = skn_cmpreal(:,ibb,kwm)
            tmmoms(:,3) = 0
            tmmoms(:,4) = skn_cmpreal(:,iwm,kwm)
            tmmoms(:,5) = skn_cmpreal(:,iwmf,kwm)
            tmmoms(:,6) = skn_cmpreal(:,iwma,kwm)
            tmmoms(:,7) = skn_cmpreal(:,nlegreal,kwm)
         elseif(kwm.eq.0) then
            tmmoms(:,1) = skn_cmpreal(:,itb,ktm)
            tmmoms(:,2) = skn_cmpreal(:,ibb,ktm)
            tmmoms(:,3) = skn_cmpreal(:,nlegreal,ktm)
            tmmoms(:,4) = skn_cmpreal(:,iwm,ktm)
            tmmoms(:,5) = skn_cmpreal(:,iwmf,ktm)
            tmmoms(:,6) = skn_cmpreal(:,iwma,ktm)
            tmmoms(:,7) = 0
         else
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
            call boost2reson(tmmoms(:,5)+tmmoms(:,6)+tmmoms(:,7),4,
     1           tmmoms(:,5:7),tmmoms(:,5:7))
c boost W decay products to W frame
            call boost2resoninv(tmmoms(:,4),4,
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
            write(*,*) sum(abs(final_cm(:,it)-tpmoms(:,1)))
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
            write(*,*) sum(abs(final_cm(:,itb)-tmmoms(:,1)))
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
