      subroutine init_processes
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_st.h'
      include 'pwhg_pdf.h'
      include 'LesHouches.h'
      include 'pwhg_flg.h'
      include 'pwhg_physpar.h'
      integer i1,i2,i3,i4,i5,i6,k,ii(nlegreal)
      equivalence (i1,ii(1)),(i2,ii(2)),(i3,ii(3)),
     #  (i4,ii(4)),(i5,ii(5)),(i6,ii(6))
      integer ifive,isix
      logical debug
      parameter (debug=.true.)
      integer j
      integer charge3(-6:6)
      data charge3 /-2,1,-2,1,-2,1,0,-1,2,-1,2,-1,2/
      logical condition
      real * 8 powheginput
      external powheginput
c     vector boson id and decay
      integer idvecbos,vdecaymode,tmp
      common/cvecbos/idvecbos,vdecaymode
c     do nlo test only (using smooth isolation)
      logical nlo_test
      common/nlotest/nlo_test 
c     powheg-nc/c-lo
      logical powheg_nc,powheg_c_lo
      common/wgammode/powheg_nc,powheg_c_lo
c     anomalous TGC
      real *8 Deltak_gam,Lambda_gam
      common/aTGC/Deltak_gam,Lambda_gam
c     lepton masses
      real *8 lepmass(3),decmass
      common/clepmass/lepmass,decmass
      logical flavequiv
      external flavequiv
      real *8 kt2minqed
      common/showerqed/kt2minqed
      logical ckmallowed

      flg_evenmaxrat = .true.

      st_bornorder=1
      if(powheginput("#minlo").ne.0) then
         flg_minlo=.true.
         if(powheginput("#minlo_nnll").eq.1) then
            flg_minlo_nnll=.true.
         else
            flg_minlo_nnll=.false.
         endif
         flg_minlo_real=.false.
      else
         flg_minlo=.false.
         flg_minlo_nnll=.false.
         flg_minlo_real=.false.
      endif

      if(powheginput("#nlotestonly").eq.1) then
         nlo_test=.true.
         flg_minlo=.false.
         flg_minlo_nnll=.false.
         flg_minlo_real=.false.
         if(powheginput("#numevts").ne.0.or.
     &        powheginput("#nubound").ne.0) then
            write(*,*) ' nlotestonly is used for nlo analysis only!!!'
            write(*,*) ' do not use for generation of events!!!'
            call exit(-1)
         endif
      else
         nlo_test=.false.
      endif

      physpar_mq(1)=0.2d0
      physpar_mq(2)=0.2d0
      physpar_mq(3)=0.3d0
      physpar_mq(4)=1.5d0
      physpar_mq(5)=5d0

      physpar_ml(1)=lepmass(1)
      physpar_ml(2)=lepmass(2)
      physpar_ml(3)=lepmass(3)

*******************************************************
c    Anomalous triple gauge couplings: Deltak_gam,Lambda_gam
c    default (SM): Deltak_gam=0 -- Lambda_gam=0
*******************************************************
      if(powheginput("#Deltak_gam").gt.0d0) then
         Deltak_gam=powheginput("#Deltak_gam")
      else
         Deltak_gam=0d0
      endif
      if(powheginput("#Lambda_gam").gt.0d0) then
         Lambda_gam=powheginput("#Lambda_gam")
      else
         Lambda_gam=0d0
      endif

*******************************************************
c    Choose: powheg-nc / powheg-c-lo / powheg-c-nlo
c    default: powheg-c-nlo
*******************************************************
      if(powheginput("#powheg-nc").ne.1) then
         powheg_nc=.false.
      else
         powheg_nc=.true.
      endif
      if(powheginput("#powheg-c-lo").ne.1) then
         powheg_c_lo=.false.
      else
         powheg_c_lo=.true.
      endif

c******************************************************
c     Choose the process to be implemented
c******************************************************
c    ID of vector boson produced
      idvecbos=powheginput('idvecbos')
c   decay products of the vector boson
      tmp=powheginput('vdecaymode')

c   kt2 min for photon radiation from lepton  
      kt2minqed = powheginput("#kt2minqed")
      if (kt2minqed.le.0d0) kt2minqed  = 0.8d0

      if (lepmass(1).ne.0.51099891d-3) then
         write(*,*) 'block data lepmass not loaded. stop running' 
         stop
      endif
      
      if(idvecbos.eq.24) then
         select case(tmp)
         case (1)
            vdecaymode=-11
         case (2)
            vdecaymode=-13
         case (3)
            vdecaymode=-15
         case default
            write(*,*) 'ERROR: The decay mode you selected' /
     $           /' is not allowed '
            stop
         end select  
         write(*,*) 
         write(*,*) ' POWHEG: Single W+ production and decay ' 
         if (vdecaymode.eq.-11) write(*,*) '         to e+ ve '
         if (vdecaymode.eq.-13) write(*,*) '         to mu+ vmu'
         if (vdecaymode.eq.-15) write(*,*) '         to tau+ vtau'
         write(*,*) 
      elseif(idvecbos.eq.-24) then
         select case(tmp)
         case (1)
            vdecaymode= 11
         case (2)
            vdecaymode= 13
         case (3)
            vdecaymode= 15
         case default
            write(*,*) 'ERROR: The decay mode you selected' /
     $           /' is not allowed '
            stop
         end select
         write(*,*) 
         write(*,*) ' POWHEG: Single W- production and decay '
         if (vdecaymode.eq.11) write(*,*) '         to e- ve~ '
         if (vdecaymode.eq.13) write(*,*) '         to mu- vmu~'
         if (vdecaymode.eq.15) write(*,*) '         to tau- vtau~'
         write(*,*)    
      else
         write(*,*) 'ERROR: The ID of vector boson you selected' 
     $        //' is not allowed (24: W+ -24: W-)'
         stop
      endif

c     change the LHUPI id of the process according to vector boson id
c     and decay
      lprup(1)=10000+vdecaymode ! 10000+idup of charged decay product of the W
      
      if(lprup(1).eq.10011) then
         decmass=lepmass(1)
         
      elseif(lprup(1).eq.(10000-11)) then
         decmass=lepmass(1)
        
      elseif(lprup(1).eq.10013) then
         decmass=lepmass(2)
         
      elseif(lprup(1).eq.(10000-13)) then
         decmass=lepmass(2)

      elseif(lprup(1).eq.10015) then
         decmass=lepmass(3)
         
      elseif(lprup(1).eq.(10000-15)) then
         decmass=lepmass(3) 
  
      else
c     not yet implemented
         write(*,*) 'non leptonic W decays '//
     #        'not yet implemented'
         stop
      endif   
c*********************************************************     
c
c     index of the first coloured particle in the final state
c     (all subsequent particles are coloured)
c     also include lepton for photon radiation
      flst_lightpart=4
      i4=vdecaymode
      if ((idvecbos.eq.24).and.(vdecaymode.lt.0)) then
         i3=-vdecaymode+1
      elseif ((idvecbos.eq.-24).and.(vdecaymode.gt.0)) then
         i3=-(vdecaymode+1)
      endif


c     Born graphs
      flst_nborn=0
      condition=.false.
c     W gamma Born configurations
c     q qbar' -> nu l gam
      i5=22
      do i1=-5,5
         do i2=-5,5
            condition=(charge3(i1)+charge3(i2)).eq.(sign(3,idvecbos))
     1           .and.ckmallowed(i1,-i2)
            if(condition) then
               flst_nborn=flst_nborn+1
               if(flst_nborn.gt.maxprocborn) goto 999
               do k=1,nlegborn
                  flst_born(k,flst_nborn)=ii(k)
               enddo
            endif
         enddo
      enddo
      if(nlo_test) goto 111
c     W j Born configurations 
c     q g -> nu l q'
      i2=0
      do i1=-5,5
         do i5=-5,5
            condition=(charge3(i1)-charge3(i5)).eq.(sign(3,idvecbos))
     1          .and.ckmallowed(i1,i5)
            if(condition) then
               flst_nborn=flst_nborn+1
               if(flst_nborn.gt.maxprocborn) goto 999
               do k=1,nlegborn
                  flst_born(k,flst_nborn)=ii(k)
               enddo
            endif
         enddo
      enddo
c     g q -> nu l q'
      i1=0
      do i5=-5,5
         do i2=-5,5
            condition=(charge3(i2)-charge3(i5)).eq.(sign(3,idvecbos))
     1          .and.ckmallowed(i2,i5)
            if(condition) then
               flst_nborn=flst_nborn+1
               if(flst_nborn.gt.maxprocborn) goto 999
               do k=1,nlegborn
                  flst_born(k,flst_nborn)=ii(k)
               enddo
            endif
         enddo
      enddo
c     q qbar' -> nu l g
      i5=0
      do i1=-5,5
         do i2=-5,5
            condition=(charge3(i1)+charge3(i2)).eq.(sign(3,idvecbos))
     1          .and.ckmallowed(i1,-i2)
            if(condition) then
               flst_nborn=flst_nborn+1
               if(flst_nborn.gt.maxprocborn) goto 999
               do k=1,nlegborn
                  flst_born(k,flst_nborn)=ii(k)
               enddo
            endif
         enddo
      enddo

 111  continue

      if (debug) then
         write(*,*) ' born processes',flst_nborn
         do j=1,flst_nborn
            write(*,*) (flst_born(k,j),k=1,nlegborn)
         enddo
      endif
     

c     Real graphs 
      flst_nreal=0
      condition=.false.

c     W gamma j real configurations
c     q qbar' -> nu l gam g
      i6 = 0 
      i5 = 22
      do i1=-5,5
         do i2=-5,5
                condition=(charge3(i1)+charge3(i2))
     $                 .eq.(sign(3,idvecbos))  
     1           .and.ckmallowed(i1,-i2)
               if(condition) then
                  flst_nreal=flst_nreal+1
                  if(flst_nreal.gt.maxprocreal) goto 998
                  do k=1,nlegreal
                     flst_real(k,flst_nreal)=ii(k)
                  enddo
               endif
         enddo
      enddo

c     q g -> nu l q gamma
      i2=0
      i5=22
      do i1=-5,5
         do i6=-5,5
            condition=(charge3(i1)-charge3(i6)).eq.(sign(3,idvecbos))
     1           .and.ckmallowed(i1,i6)
           if(condition) then
               flst_nreal=flst_nreal+1
               if(flst_nreal.gt.maxprocreal) goto 999
               do k=1,nlegreal
                  flst_real(k,flst_nreal)=ii(k)
               enddo
            endif
         enddo
      enddo

c     g q -> nu l q gamma
      i1=0
      i5=22
      do i6=-5,5
         do i2=-5,5
            condition=(charge3(i2)-charge3(i6)).eq.(sign(3,idvecbos))
     1           .and.ckmallowed(i2,i6)
            if(condition) then
               flst_nreal=flst_nreal+1
               if(flst_nreal.gt.maxprocreal) goto 999
               do k=1,nlegreal
                  flst_real(k,flst_nreal)=ii(k)
               enddo
            endif
         enddo
      enddo

      if(nlo_test) goto 222 
      if(.not.powheg_nc) then
cc     qcd corrections W+jet
         do i1=-5,5
            do i2=-5,5
               do i5=-5,5
                  do i6=-5,5
                     condition=(charge3(i1)+charge3(i2)-charge3(i5)
     $                    -charge3(i6)).eq.(sign(3,idvecbos))  
                     if (condition) then
                        if(i1*i2*i5*i6.ne.0) then
c     4 quarks
                           if (((charge3(i1)
     $                          +charge3(i2)).eq.(sign(3,idvecbos)))
     $                          .and. ckmallowed(i1,-i2)
     $                          .and.(i5+i6.eq.0)) then
c     q aqp annihilation
                              goto 10
                           elseif (((charge3(i5)
     $                             +charge3(i6)).eq.(-sign(3,idvecbos)))
     $                             .and. ckmallowed(i5,-i6)
     $                             .and.(i1+i2.eq.0)) then
c     q aq annihilation
                              goto 10
c     
                           elseif (((charge3(i1)
     $                             -charge3(i5)).eq.(sign(3,idvecbos)))
     $                             .and. ckmallowed(i1,i5)
     $                             .and.(i2.eq.i6)) then
c     W from upper line     
                              goto 10
                           elseif (((charge3(i2)
     $                             -charge3(i5)).eq.(sign(3,idvecbos)))
     $                             .and. ckmallowed(i2,i5)
     $                             .and.(i1.eq.i6)) then
c     W from lower line 
                              goto 10
                           endif
c     
                        elseif((i1*i2.ne.0).and.(i5.eq.0).and.(i6.eq.0)
     $                          .and.ckmallowed(i1,-i2) )
     $                          then
c     2 quarks 2 gluons    
                           goto 10
                        elseif((i1*i2.eq.0).and.(i1+i2.eq.0)
     $                          .and.(i5*i6.ne.0)
     $                          .and. ckmallowed(i5,-i6))then
c     2 gluons 2 quarks
                           goto 10
                        elseif((i1*i2.eq.0).and.(i5*i6.eq.0)
     $                          .and. ckmallowed(i1+i2,i5+i6)) then
c     1 gluons 1 quarks
                           goto 10
                        endif
                     endif
                     goto 11     
 10                  continue
                     do j=1,flst_nreal
c     Check that an inequivalent configuration is generated
                        if(flavequiv(nlegreal,flst_real(1,j),ii(1)))
     $                       goto 11
                     enddo
                     flst_nreal=flst_nreal+1
                     if(flst_nreal.gt.maxprocreal) goto 999
                     do k=1,6
                        flst_real(k,flst_nreal)=ii(k)
                     enddo
 11                  continue
                  enddo
               enddo
            enddo
         enddo
      endif

 222  continue
      if (debug) then
         write(*,*) ' real processes',flst_nreal
         do j=1,flst_nreal
            write(*,*) (flst_real(k,j),k=1,nlegreal)
         enddo
      endif
      return
 998  write(*,*) 'init_processes: increase maxprocreal'
      stop
 999  write(*,*) 'init_processes: increase maxprocborn'
      end
      
      block data lepmass_data 
      real *8 lepmass(3),decmass
      common/clepmass/lepmass,decmass
      data lepmass /0.51099891d-3,0.1056583668d0,1.77684d0/
      end

      function ckmallowed(ii1,ii2)
      implicit none
      include 'PhysPars.h'
      logical ckmallowed
      integer ii1,ii2
      logical ini
      integer iu,id,i1,i2
      save ini
      data ini/.true./
      real * 8 powheginput
      i1=ii1
      i2=ii2
      if(ini) then
c     CAVEAT: 
         ph_CKM(1,1) = powheginput("#CKM_Vud")
         if (ph_CKM(1,1).lt.0d0) ph_CKM(1,1)=0.975d0 
         ph_CKM(1,2) = powheginput("#CKM_Vus")
         if (ph_CKM(1,2).lt.0d0) ph_CKM(1,2)=0.222d0 
         ph_CKM(1,3) = powheginput("#CKM_Vub")
         if (ph_CKM(1,3).lt.0d0) ph_CKM(1,3)=1d-10
         ph_CKM(2,1) = powheginput("#CKM_Vcd")
         if (ph_CKM(2,1).lt.0d0) ph_CKM(2,1)=0.222d0 
         ph_CKM(2,2) = powheginput("#CKM_Vcs")
         if (ph_CKM(2,2).lt.0d0)  ph_CKM(2,2)=0.975d0 
         ph_CKM(2,3) = powheginput("#CKM_Vcb")
         if (ph_CKM(2,3).lt.0d0) ph_CKM(2,3)=1d-10
         ph_CKM(3,1) = powheginput("#CKM_Vtd")
         if (ph_CKM(3,1).lt.0d0) ph_CKM(3,1)=1d-10
         ph_CKM(3,2) = powheginput("#CKM_Vts")
         if (ph_CKM(3,2).lt.0d0) ph_CKM(3,2)=1d-10
         ph_CKM(3,3) = powheginput("#CKM_Vtb")
         if (ph_CKM(3,3).lt.0d0) ph_CKM(3,3)=1d0
         ini = .false.
      endif
      if(i1*i2.lt.0) goto 999
      i1=abs(i1)
      i2=abs(i2)
      if(i1.eq.1.or.i1.eq.3.or.i1.eq.5) then
         id=(i1+1)/2
         if(.not.(i2.eq.2.or.i2.eq.4)) goto 999
         iu=i2/2
      elseif(i2.eq.1.or.i2.eq.3.or.i2.eq.5) then
         id=(i2+1)/2
         if(.not.(i1.eq.2.or.i1.eq.4)) goto 999
         iu=i1/2
      else
         goto 999
      endif
      if(ph_CKM(iu,id).eq.0) then
         ckmallowed = .false.
      else
         ckmallowed = .true.
      endif
      return            
 999  write(*,*) ' ckmallowed: error!!!',
     1        ' asked ckm of ',i1,i2
      stop
      end
