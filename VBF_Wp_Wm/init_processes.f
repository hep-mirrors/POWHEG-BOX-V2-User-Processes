c initialization routine for pp->W+W-jj via VBF
c
      subroutine init_processes
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_pdf.h'
      include 'LesHouches.h'
      include 'pwhg_flg.h'
      include 'pwhg_par.h'
      include 'ww_widths.h'
      include 'higgs_graphs.h'
      include 'cvecbos.h'
      integer i1,i2,i3,i4,i5,i6,i7,i8,i9,k,ii(nlegreal)
      equivalence (i1,ii(1)),(i2,ii(2)),(i3,ii(3)),
     #  (i4,ii(4)),(i5,ii(5)),(i6,ii(6)),(i7,ii(7)),
     #  (i8,ii(8)),(i9,ii(9))
      logical debug
      parameter (debug=.false.)
c      parameter (debug=.true.)
      integer j
      integer charge3(-6:6)
      data charge3 /-2,1,-2,1,-2,1,0,-1,2,-1,2,-1,2/
      integer fam(-6:6)
      data fam /-3,-3,-2,-2,-1,-1,0,1,1,2,2,3,3/
      logical condition
      real * 8 powheginput
      external powheginput

      integer flst_born_tmp(nlegborn,maxprocborn)
      integer flst_real_tmp(nlegreal,maxprocreal)
      logical flavequiv
      external flavequiv
      integer jj,ij,i

      integer max_flav
      logical tag,newtag

      logical emit_Wp_upper,emit_Wm_upper,emit_Wp_lower,emit_Wm_lower
      integer flst_nreal_WW, flst_nborn_WW
      logical CKM_diag

      logical nc_include,cc_include
      integer channel_type      

      integer ftype(1:9)
      integer icc
c
c******************************************************
c     Choose the process to be implemented
c******************************************************
c ID of vector bosons produced
c fixed to W+W-:
      idvecbos1=+24
      idvecbos2=-24

c   decay products of the two vector bosons
      vdecaymodeWp=powheginput('vdecaymodeWp')
      vdecaymodeWm=powheginput('vdecaymodeWm')

c symmetry factors depending on decays: 
      wsymfact=1d0

C     default is zerowidth = .false.  
      if (powheginput("#zerowidth").eq.1) then 
         zerowidth = .true. 
         write(*,*) 'Zero-width approximation for Ws' 
      else
         zerowidth = .false. 
         write(*,*) 'Generating off-shell W-bosons'
      endif
c
C     default is higgs_only = .false.  
      if (powheginput("#higgsonly").eq.1) then 
         higgs_only = .true. 
         write(*,*) 'H->WW graphs only' 
      else 
         higgs_only = .false. 
         write(*,*) 'retain all graphs for VBF W+W- production'
      endif

      if (((vdecaymodeWp).ne.-11).and.((vdecaymodeWp).ne.-13)
     .     .and.((vdecaymodeWp).ne.-15)
     .     .and.((vdecaymodeWp).ne.-1)   ! down quark
     .     .and.((vdecaymodeWp).ne.-3)   ! strange quark
     .     .and.((vdecaymodeWp).ne.-7)   ! all hadrons
     .                     ) then
         stop 'W+ decay mode should be put in terms of the charged 
     .   leptons: -11, -13, -15 only, '//
     .   'or hadrons : -1, -3; -7 for either -1 or -3'
      endif

      if (((vdecaymodeWm).ne.11).and.((vdecaymodeWm).ne.13)
     .     .and.((vdecaymodeWm).ne.15)
     .     .and.((vdecaymodeWm).ne.1)   ! down quark
     .     .and.((vdecaymodeWm).ne.3)   ! strange quark
     .     .and.((vdecaymodeWm).ne.7)   ! all hadrons
     .                     ) then
         stop 'W- decay mode should be put in terms of the charged 
     .   leptons: +11, +13, +15 only, '//
     .   'or hadrons : +1, +3; +7 for either +1 or +3'
      endif

c identify decay mode (default is fully lept.):
      decmode_lep = .true.
      decmode_slp = .false.
      decmode_slm = .false.      
      if (abs(vdecaymodeWp).lt.11) then ! Wp decays hadronically
         if (abs(vdecaymodeWm).lt.11) then
            stop 'fully hadronic decays are not allowed'
         else 
            decmode_slp = .true.
            decmode_lep = .false.
         endif
      else ! Wp decays lept.  
         if (abs(vdecaymodeWm).lt.11) then
            decmode_slm = .true.
            decmode_lep = .false.
         endif 
      endif   
      
c     change the LHUPI id of the process according to vector boson id
c     and decay
c     10000+idup of first decay product of W1 + decay product of W2
      lprup(1)=10000-100*vdecaymodeWp+vdecaymodeWm 

c we pretend that quarks are not quarks, otherwise POWHEG
c makes them radiate
      if(abs(vdecaymodeWm).le.7)
     . vdecaymodeWm = sign(1,vdecaymodeWm)*(abs(vdecaymodeWm) + 100)
      if(abs(vdecaymodeWp).le.7)
     . vdecaymodeWp = sign(1,vdecaymodeWp)*(abs(vdecaymodeWp) + 100)

      write(*,*) 
      write(*,*) ' POWHEG: W+ W- + 2j production and decay ' 
      if (vdecaymodeWp.eq.-11) write(*,*) '         to e+ ve '
      if (vdecaymodeWp.eq.-13) write(*,*) '         to mu+ vmu'
      if (vdecaymodeWp.eq.-15) write(*,*) '         to tau+ vtau'
      if (vdecaymodeWp.eq.-101) write(*,*) '         to u dbar'
      if (vdecaymodeWp.eq.-103) write(*,*) '         to c sbar'
      if (vdecaymodeWp.eq.-107) write(*,*) '        to u dbar or c sbar'
      write(*,*)'            and'
      if (vdecaymodeWm.eq.+11) write(*,*) '         e- ve~ '
      if (vdecaymodeWm.eq.+13) write(*,*) '         mu- vmu~'
      if (vdecaymodeWm.eq.+15) write(*,*) '         tau- vtau~'
      if (vdecaymodeWm.eq.101) write(*,*) '         to ubar d'
      if (vdecaymodeWm.eq.103) write(*,*) '         to cbar s'
      if (vdecaymodeWm.eq.107) write(*,*) '         to ubar d or cbar s'
      write(*,*) 

c      ! set number of active flavors for incoming partons:  
       max_flav = 4 ! no b in initial state      
       write(*,*) 
       write(*,*) ' number of active flavors set to ',max_flav 

c flavor channels to be considered:
c 
c NC:
c ucuc-type(channel_type=1)
c usus-type(channel_type=2)
c dcdc-type(channel_type=3)
c dsds-type(channel_type=4)
c
c all NC type contributions: (channel_type=7)
c
c CC:
c usdc-type(channel_type=5)
c dcus-type(channel_type=6)
c
c all CC type contributions: (channel_type=8)

       channel_type = 0 ! change for debugging purposes only
c
c       channel_type=powheginput('channel_type')      
       
       if (channel_type.eq.0) then
          cc_include = .true.
          nc_include = .true.
          write(*,*) 
          write(*,*) ' all flavor channels are summed'   
       elseif (channel_type.eq.7) then
          cc_include = .false.
          nc_include = .true.
          write(*,*) 
          write(*,*) ' all neutral current channels are summed'   
          write(*,*) ' (no charged current channels)' 
       elseif (channel_type.eq.8) then
          cc_include = .true.
          nc_include = .false.
          write(*,*) 
          write(*,*) ' all charged current channels are summed'   
          write(*,*) ' (no neutral current channels)'   
       elseif (channel_type.ge.1.and.channel_type.le.4) then
          nc_include = .true.
          cc_include = .false.
          write(*,*) 
          write(*,*) ' one neutral-current channel considered only'  
          write(*,*) ' channel_type = ',channel_type
       elseif (channel_type.ge.5.and.channel_type.le.6) then
          cc_include = .true.
          nc_include = .false.
          write(*,*) 
          write(*,*) ' one charged-current channel considered only'   
          write(*,*) ' channel_type = ',channel_type 
       else 
          write(*,*) ' '   
          write(*,*) 'ERROR: no valid entry for channel_type;'
          write(*,*) 'check your settings in powheg.input'
          stop
       endif  

c*********************************************************     
c
      tag = .true.
      newtag = .true.

      if (.not.tag) then
         do i=1,nlegborn
            do j=1,maxprocborn
               flst_borntags(i,j)=0
            enddo
         enddo
         do i=1,nlegreal
            do j=1,maxprocreal
               flst_realtags(i,j)=0
            enddo
         enddo
      endif

      if (.not.tag) then
         write(*,*) 'jet tagging '//
     #        'must be switched on'
         stop   
      endif

c     index of the first light coloured particle in the final state
c     (all subsequent particles are coloured)
      flst_lightpart=7
      flst_nborn=0
      flst_nreal=0

      i4=vdecaymodeWp
c     this is a convoluted way of doing things, but it ends up pairing 
c     lepton-antineutrino, and antilepton-neutrino
      i3=-sign(1,i4)*(abs(i4)+1)

      i6=vdecaymodeWm
      i5=-sign(1,i6)*(abs(i6)+1)


c     Born graphs
      flst_nborn=0
      condition=.false.
      CKM_diag = .true.
      
      flst_nborn_WW = 0
      flst_nreal_WW = 0

      ftype(1:9) = 0

c WW fusion contributions (charged current):
      if (cc_include) then

      emit_Wp_upper = .true.
      emit_Wm_upper = .true.
      emit_Wp_lower = .true.
      emit_Wm_lower = .true.

      do i1=-max_flav,max_flav
      do i2=-max_flav,max_flav
      do i7=-max_flav,max_flav
      do i8=-max_flav,max_flav

c     no gluons:
         condition = ((i1*i2*i7*i8).ne.0)
         if (.not.condition) goto 800

         if (channel_type.eq.0.or.channel_type.eq.8) then
             condition=.true.
         else     
             
c use value of i1/i7 to select appropriate flavor channel    
           ftype(1) = 2-mod(abs(i1),2)         
           ftype(7) = 2-mod(abs(i7),2)   
           icc = -3*i1/abs(i1)+4
           k = 7-ftype(icc)

           if (k.eq.channel_type) then
                 condition=.true. 
           else  
                 condition = .false.
           endif !k
   
         endif !channel_type

         if (CKM_diag) then
            emit_Wp_upper = (i7.eq.i1-1)
            emit_Wm_upper = (i7.eq.i1+1)
            emit_Wp_lower = (i8.eq.i2-1)
            emit_Wm_lower = (i8.eq.i2+1) 
         else
            stop 'Only diagonal CKM implemented'            
         endif

                     condition = condition.and. (
c     W+ emission from upper leg                        
     #                    (((charge3(i1)-(charge3(i7)+3)
     #                    .eq.0).and.(emit_Wp_upper)) .and.
c     W- emission from lower leg                        
     #                    ((charge3(i2)-(charge3(i8)-3)
     #                    .eq.0).and.(emit_Wm_lower)))
     #                    .or.
c     W- emission from upper leg                        
     #                    (((charge3(i1)-(charge3(i7)-3)
     #                    .eq.0).and.(emit_Wm_upper)) .and.
c     W+ emission from lower leg                        
     #                    ((charge3(i2)-(charge3(i8)+3)
     #                    .eq.0).and.(emit_Wp_lower))))
c

                  if(condition) then
                     flst_nborn=flst_nborn+1
                     if(flst_nborn.gt.maxprocborn) goto 999
                     do k=1,nlegborn
                        flst_born(k,flst_nborn)=ii(k)
                     enddo
                        if (tag) then
                           flst_borntags(1,flst_nborn)=1
                           flst_borntags(2,flst_nborn)=2
                           flst_borntags(3,flst_nborn)=0
                           flst_borntags(4,flst_nborn)=0
                           flst_borntags(5,flst_nborn)=0
                           flst_borntags(6,flst_nborn)=0
                           flst_borntags(7,flst_nborn)=7
                           flst_borntags(8,flst_nborn)=8
                           if (newtag) then
                              flst_borntags(1,flst_nborn)=1
                              flst_borntags(2,flst_nborn)=2
                              flst_borntags(3,flst_nborn)=0
                              flst_borntags(4,flst_nborn)=0
                              flst_borntags(5,flst_nborn)=0
                              flst_borntags(6,flst_nborn)=0
                              flst_borntags(7,flst_nborn)=1 
                              flst_borntags(8,flst_nborn)=2 
                           endif !newtag
                        endif !tag
                  endif
 800  continue
      enddo !i8
      enddo !i7
      enddo !i2
      enddo !i1
      if (debug) then
         write(*,*) ' born CC processes',flst_nborn
         do j=1,flst_nborn
            write(*,*) (flst_born(k,j),k=1,nlegborn)
         enddo
      endif
      flst_nborn_WW = flst_nborn

      endif !cc_include

      if (nc_include) then 
c ZZ fusion contributions (neutral current):
      do i1=-max_flav,max_flav
      do i2=-max_flav,max_flav

         i7 = i1
         i8 = i2

c     no gluons:
         condition = ((i1*i2*i7*i8).ne.0)
         if (.not.condition) goto 900

         if (channel_type.eq.0.or.channel_type.eq.7) then
             condition=.true.
         else     
             
c use value of i1/i7 to select appropriate flavor channel    
         ftype(1) = 2-mod(abs(i1),2)         
         ftype(2) = 2-mod(abs(i2),2)               
         k = -2*ftype(1)-ftype(2)+7

           if (k.eq.channel_type) then
                 condition=.true. 
           else  
                 condition = .false.
           endif !k
   
         endif !channel_type
c
                  if(condition) then
                     flst_nborn=flst_nborn+1
                     if(flst_nborn.gt.maxprocborn) goto 999
                     do k=1,nlegborn
                        flst_born(k,flst_nborn)=ii(k)
                     enddo
                        if (tag) then
                           flst_borntags(1,flst_nborn)=1
                           flst_borntags(2,flst_nborn)=2
                           flst_borntags(3,flst_nborn)=0
                           flst_borntags(4,flst_nborn)=0
                           flst_borntags(5,flst_nborn)=0
                           flst_borntags(6,flst_nborn)=0
                           flst_borntags(7,flst_nborn)=7
                           flst_borntags(8,flst_nborn)=8
                           if (newtag) then
                              flst_borntags(1,flst_nborn)=1
                              flst_borntags(2,flst_nborn)=2
                              flst_borntags(3,flst_nborn)=0
                              flst_borntags(4,flst_nborn)=0
                              flst_borntags(5,flst_nborn)=0
                              flst_borntags(6,flst_nborn)=0
                              flst_borntags(7,flst_nborn)=1 
                              flst_borntags(8,flst_nborn)=2 
                           endif !newtag
                        endif !tag
                  endif
 900  continue
      enddo !i2
      enddo !i1
      if (debug) then
         write(*,*) ' born NC processes',flst_nborn-flst_nborn_WW
         do j=flst_nborn_WW+1,flst_nborn
            write(*,*) (flst_born(k,j),k=1,nlegborn)
         enddo
      endif
      endif !nc_include

cccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c     Real graphs
c
cccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
      flst_nreal=0
      condition=.false.

      if (cc_include) then
c WW fusion contributions (charged current):
c
C the qq->qqg case:
      do i1=-max_flav,max_flav
      do i2=-max_flav,max_flav
      do i7=-max_flav,max_flav
      do i8=-max_flav,max_flav
      do i9=0,0

c     no extra gluons:
         condition = ((i1*i2*i7*i8).ne.0)
         if (.not.condition) goto 801

         if (channel_type.eq.0.or.channel_type.eq.8) then
             condition=.true.
         else     
             
c use value of i1/i7 to select appropriate flavor channel    
           ftype(1) = 2-mod(abs(i1),2)         
           ftype(7) = 2-mod(abs(i7),2)   
           icc = -3*i1/abs(i1)+4
           k = 7-ftype(icc)

           if (k.eq.channel_type) then
                 condition=.true. 
              else  
                 condition = .false.
           endif !k
   
         endif !channel_type
c
         if (CKM_diag) then
            emit_Wp_upper = (i7.eq.i1-1)
            emit_Wm_upper = (i7.eq.i1+1)
            emit_Wp_lower = (i8.eq.i2-1)
            emit_Wm_lower = (i8.eq.i2+1)                 
         else
            stop 'Only diagonal CKM implemented'
         endif

         condition = condition.and.( 
c     W+ emission from upper leg                        
     #                    (((charge3(i1)-(charge3(i7)+3)
     #                    .eq.0).and.(emit_Wp_upper)) .and.
c     W- emission from lower leg                        
     #                    ((charge3(i2)-(charge3(i8)-3)
     #                    .eq.0).and.(emit_Wm_lower)))
     #                    .or.
c     W- emission from upper leg                        
     #                    (((charge3(i1)-(charge3(i7)-3)
     #                    .eq.0).and.(emit_Wm_upper)) .and.
c     W+ emission from lower leg                        
     #                    ((charge3(i2)-(charge3(i8)+3)
     #                    .eq.0).and.(emit_Wp_lower))))

c
         if(condition) then
            flst_nreal=flst_nreal+1
            if(flst_nreal.gt.maxprocreal) goto 998
            do k=1,nlegreal
               flst_real(k,flst_nreal)=ii(k)
            enddo
            if (tag) then
                flst_realtags(1,flst_nreal)=1
                flst_realtags(2,flst_nreal)=2
                flst_realtags(3,flst_nreal)=0
                flst_realtags(4,flst_nreal)=0
                flst_realtags(5,flst_nreal)=0
                flst_realtags(6,flst_nreal)=0
                flst_realtags(7,flst_nreal)=7
                flst_realtags(8,flst_nreal)=8
                flst_realtags(9,flst_nreal)=0
                if (newtag) then
                    flst_realtags(1,flst_nreal)=1
                    flst_realtags(2,flst_nreal)=2
                    flst_realtags(3,flst_nreal)=0
                    flst_realtags(4,flst_nreal)=0
                    flst_realtags(5,flst_nreal)=0
                    flst_realtags(6,flst_nreal)=0
                    flst_realtags(7,flst_nreal)=1 !7
                    flst_realtags(8,flst_nreal)=2 !8
                    flst_realtags(9,flst_nreal)=0
                endif !newtag
            endif !tag
         endif

 801  continue
      enddo !i9
      enddo !i8
      enddo !i7
      enddo !i2
      enddo !i1      

ccccc
c
C the gq->qqq case: 
      do i1=0,0 
      do i2=-max_flav,max_flav
      do i7=-max_flav,max_flav
      do i8=-max_flav,max_flav
      do i9=-max_flav,-1

c     no extra gluons:
         condition = ((i9*i2*i7*i8).ne.0)
         if (.not.condition) goto 802
c
         if (channel_type.eq.0.or.channel_type.eq.8) then
             condition=.true.
         else     
             
c use value of i2/i8 to select appropriate flavor channel        
         ftype(2) = 2-mod(abs(i2),2)      
         ftype(8) = 2-mod(abs(i8),2)
         icc = 3*(i2/abs(i2))+5
         k = 7-ftype(icc)

           if (k.eq.channel_type) then
              condition=.true. 
           else  
              condition = .false.
           endif !k
   
         endif !channel_type

         if (CKM_diag) then
            emit_Wp_upper = (i7.eq.(-i9-1))
            emit_Wm_upper = (i7.eq.(-i9+1))
            emit_Wp_lower = (i8.eq.i2-1)
            emit_Wm_lower = (i8.eq.i2+1)                 
         else
            stop 'Only diagonal CKM implemented'
         endif

         condition = condition.and.(
c     W+ emission from upper leg                        
     #                    ((((-charge3(i9)-(charge3(i7)+3)
     #                    .eq.0).and.(emit_Wp_upper)) .and.
c     W- emission from lower leg                        
     #                    ((charge3(i2)-(charge3(i8)-3)
     #                    .eq.0).and.(emit_Wm_lower))))
     #                    .or.
c     W- emission from upper leg                        
     #                    (((-charge3(i9)-(charge3(i7)-3)
     #                    .eq.0).and.(emit_Wm_upper)) .and.
c     W+ emission from lower leg                        
     #                    ((charge3(i2)-(charge3(i8)+3)
     #                    .eq.0).and.(emit_Wp_lower)))
     #                    )

c     no extra gluons:
c                  condition = condition.and.(
c     .                 (i9*i2*i7*i8).ne.0)
c
         if(condition) then
            flst_nreal=flst_nreal+1
            if(flst_nreal.gt.maxprocreal) goto 998
            do k=1,nlegreal
               flst_real(k,flst_nreal)=ii(k)
            enddo
            if (tag) then
                flst_realtags(1,flst_nreal)=0
                flst_realtags(2,flst_nreal)=2
                flst_realtags(3,flst_nreal)=0
                flst_realtags(4,flst_nreal)=0
                flst_realtags(5,flst_nreal)=0
                flst_realtags(6,flst_nreal)=0
                flst_realtags(7,flst_nreal)=7
                flst_realtags(8,flst_nreal)=8
                flst_realtags(9,flst_nreal)=1
                if (newtag) then
                    flst_realtags(1,flst_nreal)=0
                    flst_realtags(2,flst_nreal)=2
                    flst_realtags(3,flst_nreal)=0
                    flst_realtags(4,flst_nreal)=0
                    flst_realtags(5,flst_nreal)=0
                    flst_realtags(6,flst_nreal)=0
                    flst_realtags(7,flst_nreal)=1 
                    flst_realtags(8,flst_nreal)=2
                    flst_realtags(9,flst_nreal)=1
                endif !newtag
            endif !tag
         endif !condition

 802  continue
      enddo !i9
      enddo !i8
      enddo !i7
      enddo !i2
      enddo !i1
     
C the qg->qqq case:
      do i1=-max_flav,max_flav
      do i2=0,0
      do i7=-max_flav,max_flav
      do i8=-max_flav,max_flav
      do i9=-max_flav,-1

c     no extra gluons:
          condition = ((i1*i9*i7*i8).ne.0)
          if (.not.condition) goto 803
c 
         if (channel_type.eq.0.or.channel_type.eq.8) then
             condition=.true.
         else     
             
c use value of i1/i7 to select appropriate flavor channel    
           ftype(1) = 2-mod(abs(i1),2)         
           ftype(7) = 2-mod(abs(i7),2)   
           icc = -3*i1/abs(i1)+4
           k = 7-ftype(icc)

           if (k.eq.channel_type) then
                 condition=.true. 
           else  
                 condition = .false.
           endif !k
   
         endif !channel_type

         if (CKM_diag) then
            emit_Wp_upper = (i7.eq.i1-1)
            emit_Wm_upper = (i7.eq.i1+1)
            emit_Wp_lower = (i8.eq.-i9-1)
            emit_Wm_lower = (i8.eq.-i9+1)                 
         else
            stop 'Only diagonal CKM implemented'
         endif  

         condition = condition.and.(
c     W+ emission from upper leg                        
     #                    (((charge3(i1)-(charge3(i7)+3)
     #                    .eq.0).and.(emit_Wp_upper)) .and.
c     W- emission from lower leg                        
     #                    ((-charge3(i9)-(charge3(i8)-3)
     #                    .eq.0).and.(emit_Wm_lower)))
     #                    .or.
c     W- emission from upper leg                        
     #                    (((charge3(i1)-(charge3(i7)-3)
     #                    .eq.0).and.(emit_Wm_upper)) .and.
c     W+ emission from lower leg                        
     #                    ((-charge3(i9)-(charge3(i8)+3)
     #                    .eq.0).and.(emit_Wp_lower))))

c     no extra gluons:
c                  condition = condition.and.(
c     .                 (i1*i9*i7*i8).ne.0)

         if(condition) then
            flst_nreal=flst_nreal+1
            if(flst_nreal.gt.maxprocreal) goto 998
            do k=1,nlegreal
               flst_real(k,flst_nreal)=ii(k)
            enddo
            if (tag) then
                flst_realtags(1,flst_nreal)=1
                flst_realtags(2,flst_nreal)=0
                flst_realtags(3,flst_nreal)=0
                flst_realtags(4,flst_nreal)=0
                flst_realtags(5,flst_nreal)=0
                flst_realtags(6,flst_nreal)=0
                flst_realtags(7,flst_nreal)=7
                flst_realtags(8,flst_nreal)=8
                flst_realtags(9,flst_nreal)=2
                if (newtag) then
                    flst_realtags(1,flst_nreal)=1
                    flst_realtags(2,flst_nreal)=0
                    flst_realtags(3,flst_nreal)=0
                    flst_realtags(4,flst_nreal)=0
                    flst_realtags(5,flst_nreal)=0
                    flst_realtags(6,flst_nreal)=0
                    flst_realtags(7,flst_nreal)=1 !7
                    flst_realtags(8,flst_nreal)=2 !8
                    flst_realtags(9,flst_nreal)=2
                endif !newtag
            endif !tag
         endif

 803  continue
      enddo !i9
      enddo !i8
      enddo !i7
      enddo !i2
      enddo !i1

      if (debug) then
         write(*,*) ' real CC processes',flst_nreal
         do j=1,flst_nreal
            write(*,*) (flst_real(k,j),k=1,nlegreal)
         enddo
      endif
      flst_nreal_WW = flst_nreal

      endif !cc_include


      if(nc_include) then
c ZZ fusion contributions (neutral current):
c
c the qq->qqg graphs:
c
      do i1=-max_flav,max_flav
      do i2=-max_flav,max_flav

         i7 = i1
         i8 = i2
         i9 = 0

c     no extra gluons:
         condition = ((i1*i2*i7*i8).ne.0)
         if (.not.condition) goto 901

         if (channel_type.eq.0.or.channel_type.eq.7) then
             condition=.true.
         else     
             
c use value of i1/i7 to select appropriate flavor channel    
         ftype(1) = 2-mod(abs(i1),2)         
         ftype(2) = 2-mod(abs(i2),2)               
         k = -2*ftype(1)-ftype(2)+7

           if (k.eq.channel_type) then
               condition=.true.
           else
               condition = .false.
           endif !k
   
         endif !channel_type

         if (condition) then 
            flst_nreal=flst_nreal+1
            if(flst_nreal.gt.maxprocreal) goto 998
               do k=1,nlegreal
                  flst_real(k,flst_nreal)=ii(k)
               enddo
            if (tag) then
                flst_realtags(1,flst_nreal)=1
                flst_realtags(2,flst_nreal)=2
                flst_realtags(3,flst_nreal)=0
                flst_realtags(4,flst_nreal)=0
                flst_realtags(5,flst_nreal)=0
                flst_realtags(6,flst_nreal)=0
                flst_realtags(7,flst_nreal)=7
                flst_realtags(8,flst_nreal)=8
                flst_realtags(9,flst_nreal)=0
                if (newtag) then
                    flst_realtags(1,flst_nreal)=1
                    flst_realtags(2,flst_nreal)=2
                    flst_realtags(3,flst_nreal)=0
                    flst_realtags(4,flst_nreal)=0
                    flst_realtags(5,flst_nreal)=0
                    flst_realtags(6,flst_nreal)=0
                    flst_realtags(7,flst_nreal)=1 !7
                    flst_realtags(8,flst_nreal)=2 !8
                    flst_realtags(9,flst_nreal)=0
                endif !newtag
            endif !tag
         endif !condition

 901  continue
      enddo !i2
      enddo !i1
c
ccccccccccccc
c
C the gq->qqq case: 
c
      do i2=-max_flav,max_flav
      do i9=-max_flav,-1

         i1 = 0
         i7 =-i9
         i8 = i2

c     no extra gluons:
         condition = ((i9*i2*i7*i8).ne.0)
         if (.not.condition) goto 902

         if (channel_type.eq.0.or.channel_type.eq.7) then
             condition=.true.
         else     
             
c use value of i2/i9 to select appropriate flavor channel       
         ftype(1) = 2-mod(abs(i9),2)         
         ftype(2) = 2-mod(abs(i2),2)      
         k = -2*ftype(1)-ftype(2)+7

           if (k.eq.channel_type) then
                 condition=.true. 
           else  
                 condition = .false.
           endif !k
   
         endif !channel_type

         if (condition) then 
            flst_nreal=flst_nreal+1
            if(flst_nreal.gt.maxprocreal) goto 998
               do k=1,nlegreal
                  flst_real(k,flst_nreal)=ii(k)
               enddo
            if (tag) then
                flst_realtags(1,flst_nreal)=0
                flst_realtags(2,flst_nreal)=2
                flst_realtags(3,flst_nreal)=0
                flst_realtags(4,flst_nreal)=0
                flst_realtags(5,flst_nreal)=0
                flst_realtags(6,flst_nreal)=0
                flst_realtags(7,flst_nreal)=7
                flst_realtags(8,flst_nreal)=8
                flst_realtags(9,flst_nreal)=1
                if (newtag) then
                    flst_realtags(1,flst_nreal)=0
                    flst_realtags(2,flst_nreal)=2
                    flst_realtags(3,flst_nreal)=0
                    flst_realtags(4,flst_nreal)=0
                    flst_realtags(5,flst_nreal)=0
                    flst_realtags(6,flst_nreal)=0
                    flst_realtags(7,flst_nreal)=1 
                    flst_realtags(8,flst_nreal)=2 
                    flst_realtags(9,flst_nreal)=1
                endif !newtag
            endif !tag
         endif !condition

 902     continue
      enddo !i9
      enddo !i2

ccccc
c
C the qg->qqq case: 
c
      do i1=-max_flav,max_flav
      do i9=-max_flav,-1

         i2 = 0
         i8 =-i9
         i7 = i1

c     no extra gluons:
         condition = ((i1*i9*i7*i8).ne.0)
         if (.not.condition) goto 903

         if (channel_type.eq.0.or.channel_type.eq.7) then
             condition=.true.
         else     
             
c use value of i1/i7 to select appropriate flavor channel    
         ftype(1) = 2-mod(abs(i1),2)         
         ftype(2) = 2-mod(abs(i9),2)               
         k = -2*ftype(1)-ftype(2)+7

           if (k.eq.channel_type) then
                 condition=.true. 
           else  
                 condition = .false.
           endif !k
   
         endif !channel_type


         if (condition) then 
            flst_nreal=flst_nreal+1
            if(flst_nreal.gt.maxprocreal) goto 998
               do k=1,nlegreal
                  flst_real(k,flst_nreal)=ii(k)
               enddo
            if (tag) then
                flst_realtags(1,flst_nreal)=1
                flst_realtags(2,flst_nreal)=0
                flst_realtags(3,flst_nreal)=0
                flst_realtags(4,flst_nreal)=0
                flst_realtags(5,flst_nreal)=0
                flst_realtags(6,flst_nreal)=0
                flst_realtags(7,flst_nreal)=7
                flst_realtags(8,flst_nreal)=8
                flst_realtags(9,flst_nreal)=2
                if (newtag) then
                    flst_realtags(1,flst_nreal)=1
                    flst_realtags(2,flst_nreal)=0
                    flst_realtags(3,flst_nreal)=0
                    flst_realtags(4,flst_nreal)=0
                    flst_realtags(5,flst_nreal)=0
                    flst_realtags(6,flst_nreal)=0
                    flst_realtags(7,flst_nreal)=1 !7
                    flst_realtags(8,flst_nreal)=2 !8
                    flst_realtags(9,flst_nreal)=2
                endif !newtag
            endif !tag
         endif !condition

 903  continue
      enddo !i9
      enddo !i2

      if (debug) then
         write(*,*) ' real NC processes',flst_nreal-flst_nreal_WW
         do j=flst_nreal_WW+1,flst_nreal
            write(*,*) (flst_real(k,j),k=1,nlegreal)
         enddo
      endif
      
      endif !nc_included

      return
 998  write(*,*) 'init_processes: increase maxprocreal'
      stop
 999  write(*,*) 'init_processes: increase maxprocborn'
      end
