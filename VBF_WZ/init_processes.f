c
c initialization routine for pp->WZjj via VBF
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
      include 'widths.h'
      include 'higgs_graphs.h'
      include 'cvecbos.h'
      include 'pwhg_physpar.h'
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

      logical emit_Wp_upper,emit_Z_upper,emit_Wp_lower,emit_Z_lower
      integer flst_nreal_WW, flst_nborn_WW
      logical CKM_diag

      integer channel_type      

      integer ftype(1:9)
      integer icc


c     lepton masses
      real *8 lepmass(3),decmass
      common/clepmass/lepmass,decmass
      integer lprup1(100), lprup2(100) 
c
c******************************************************
c     Choose the process to be implemented
c******************************************************
c ID of vector bosons produced
c fixed to WZ:
      idvecbos1=24 !W
      idvecbos2=23 !Z

c   decay products of the two vector bosons
      vdecaymodeW=powheginput('vdecaymodeW')
      vdecaymodeZ=powheginput('vdecaymodeZ')

c no symmetry factors needed for WZ: 
      vsymfact=1d0

C     default is zerowidth = .true.  
      if (powheginput("#zerowidth").eq.0) then 
         zerowidth = .false. 
         write(*,*) 'Generating off-shell V-bosons'
      else
         zerowidth = .true. 
         write(*,*) 'Zero-width approximation for Vs' 
      endif
      
      if (((vdecaymodeW).ne.-11).and.((vdecaymodeW).ne.-13)) then 
         stop 'W decay mode should be put in terms of the charged
     .        leptons: 11, 13 '
      endif

      if (((vdecaymodeZ).ne.11).and.((vdecaymodeZ).ne.13)) then
         stop 'Z decay mode should be put in terms of the charged 
     .        leptons: 11, 13'
      endif

c identify decay mode (default is fully lept.):
c For future versions only - we are currently not supporting anything else than fully leptonic!
      decmode_lep = .true.
      decmode_lnu = .false.
      decmode_slp = .false.

c     default are fully lept. decays:
      if (abs(vdecaymodeW).eq.11.or.
     &    abs(vdecaymodeW).eq.13) then ! W -> lv
          if (abs(vdecaymodeZ).eq.11.or.
     &        abs(vdecaymodeZ).eq.13) then ! Z -> ll
            decmode_lep = .true.
            decmode_lnu = .false.
            decmode_slp = .false.
          elseif (abs(vdecaymodeZ).eq.12.or.
     &            abs(vdecaymodeZ).eq.14) then ! Z -> vv
            decmode_slp = .false.
            decmode_lnu = .true.
            decmode_lep = .false.
            stop 'this decay mode is not yet supported' 
          elseif (abs(vdecaymodeZ).lt.11) then ! Z -> hadrons
             decmode_slp = .true.
             decmode_lnu = .false.
             decmode_lep = .false.
            stop 'this decay mode is not yet supported'
          else
            stop 'unsupported decay mode' 
         endif ! abs(vdecaymodeZ)
      else  ! abs(vdecaymodeW) not in 11,13
         stop 'unsupported decay mode'  
      endif !  abs(vdecaymodeW)
      
c we pretend that quarks are not quarks, otherwise POWHEG
c makes them radiate
      if(abs(vdecaymodeZ).le.8)
     . vdecaymodeZ = sign(1,vdecaymodeZ)*(abs(vdecaymodeZ) + 100)
      if(abs(vdecaymodeW).le.8)
     . vdecaymodeW = sign(1,vdecaymodeW)*(abs(vdecaymodeW) + 100)

      write(*,*) 
      write(*,*) ' POWHEG: W Z + 2j production and decay ' 
      if (vdecaymodew.eq.-11) write(*,*) '         to e+ ve '
      if (vdecaymodew.eq.-13) write(*,*) '         to mu+ vmu'
      if (vdecaymodew.eq.-15) write(*,*) '         to tau+ vtau'
      write(*,*)'            and'
      if (vdecaymodeZ.eq.11) write(*,*) '          e- e+ '
      if (vdecaymodeZ.eq.13) write(*,*) '          mu- mu+ '
      write(*,*) 

c     change the LHUPI id of the process according to vector boson id
c     and decay
      lprup1(1)=10000+vdecaymodeW ! 10000+idup of first decay product of W
      lprup2(1)=10000+vdecaymodeZ ! 10000+idup of first decay product of Z


     
      if(lprup1(1).eq.10011) then
         decmass=lepmass(1)         
      elseif(lprup1(1).eq.(10000-11)) then
         decmass=lepmass(1)        
      elseif(lprup1(1).eq.10013) then
         decmass=lepmass(2)         
      elseif(lprup1(1).eq.(10000-13)) then
         decmass=lepmass(2)
      elseif(lprup1(1).eq.10015) then
         decmass=lepmass(3)         
      elseif(lprup1(1).eq.(10000-15)) then
         decmass=lepmass(3)   
  
      elseif((lprup1(1).eq.(10000-113)) .or. 
     .       (lprup1(1).eq.(10000-135))) then
         decmass=0d0 ! to be set later... 
         physpar_ml(1)=lepmass(1)
         physpar_ml(2)=lepmass(2)
      elseif((lprup1(1).eq.(10000+113)) .or. 
     .       (lprup1(1).eq.(10000+135))) then
         decmass=0d0 ! to be set later... 
         physpar_ml(1)=lepmass(1)
         physpar_ml(2)=lepmass(2)
      else
c     not yet implemented
         write(*,*) 'non leptonic V1 decays '//
     #       'not yet implemented'
         stop
      endif   
      if(lprup2(1).eq.10011) then
         decmass=lepmass(1)         
      elseif(lprup2(1).eq.(10000-11)) then
         decmass=lepmass(1)        
      elseif(lprup2(1).eq.10013) then
         decmass=lepmass(2)         
      elseif(lprup2(1).eq.(10000-13)) then
         decmass=lepmass(2)
      elseif(lprup2(1).eq.10015) then
         decmass=lepmass(3)         
      elseif(lprup2(1).eq.(10000-15)) then
         decmass=lepmass(3)   
  
      elseif(lprup2(1).eq.(10000-113) .or. 
     .       lprup2(1).eq.(10000-135)) then
         decmass=0d0            ! to be set later... 
      elseif(lprup2(1).eq.(10000+113) .or. 
     .       lprup2(1).eq.(10000+135)) then
         decmass=0d0            ! to be set later ...
      else
c     not yet implemented
         write(*,*) 'non leptonic V2 decays '//
     #       'not yet implemented'
c         stop ! J: Auskommentieren
      endif   


c      ! set number of active flavors for incoming partons:  
       max_flav = 4 ! no b in initial state      
       write(*,*) 
       write(*,*) ' number of active flavors set to ',max_flav 

c*********************************************************     
c
c
c flavor channels to be considered:
c 
c uucs-type(channel_type=1)
c ddcs-type(channel_type=2)
c udcc-type(channel_type=3)
c udss-type(channel_type=4)
c
c
c       channel_type = 4 ! change for debugging purposes only
c
       channel_type=powheginput('channel_type')      
       
       if (channel_type.eq.0) then
          write(*,*) 
          write(*,*) ' all flavor channels are summed'   
      elseif (channel_type.ge.1.and.channel_type.le.4) then
          write(*,*) 
          write(*,*) ' one flavor channel considered only'  
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

c ordering of leptons for matrix elemtsn is: 
c     i4=l+, i3=vl; i5 =l+ , i6=l-

      i4=vdecaymodeW
c     this is a convoluted way of doing things, but it ends up pairing 
c     lepton-antineutrino, and antilepton-neutrino
      i3=-sign(1,i4)*(abs(i4)+1)

      i5=-vdecaymodeZ
      i6=-i5

c     Born graphs
      flst_nborn=0
      condition=.false.
      CKM_diag = .true.
      
      flst_nborn_WW = 0
      flst_nreal_WW = 0

      ftype(1:9) = 0


      emit_Wp_upper = .true.
      emit_Z_upper = .true.
      emit_Wp_lower = .true.
      emit_Z_lower = .true.

c orig:
      do i1=-max_flav,max_flav
      do i2=-max_flav,max_flav
      do i7=-max_flav,max_flav
      do i8=-max_flav,max_flav


c     no gluons:
         condition = ((i1*i2*i7*i8).ne.0)
         if (.not.condition) goto 800

         if (channel_type.eq.0) then
             condition=.true.

         else !specific channel_type (.ne.0)    
             
c identify flavor channels for W+Z:
            if (i1.gt.0) then 
               ftype(1) = 2-mod(abs(i1),2)      
               ftype(7) = 2-mod(abs(i7),2) 
            else !crossed
               ftype(7) = 2-mod(abs(i1),2)      
               ftype(1) = 2-mod(abs(i7),2) 
            endif
            if (i2.gt.0) then 
               ftype(2) = 2-mod(abs(i2),2)        
               ftype(8) = 2-mod(abs(i8),2)
            else
               ftype(8) = 2-mod(abs(i2),2)        
               ftype(2) = 2-mod(abs(i8),2)   
            endif

           k = 6*ftype(1)+4*ftype(2)-7*ftype(7)-5*ftype(8)


           if (k.eq.channel_type) then
                 condition=.true.
           else  
                 condition = .false.
           endif !k
   
         endif !channel_type

         if (CKM_diag) then
            emit_Wp_upper = (i7.eq.i1-1)
            emit_Z_upper = (i7.eq.i1)
            emit_Wp_lower = (i8.eq.i2-1)
            emit_Z_lower = (i8.eq.i2) 
         else
            stop 'Only diagonal CKM implemented'            
         endif

                    condition = condition.and. (
c     W+ emission from upper leg                        
     #                    (((charge3(i1)-(charge3(i7)+3)
     #                    .eq.0).and.(emit_Wp_upper)) .and.
c     Z emission from lower leg                        
     #                    ((charge3(i2)-(charge3(i8))
     #                    .eq.0).and.(emit_Z_lower)))
     #                    .or.
c     Z emission from upper leg                        
     #                    (((charge3(i1)-(charge3(i7))
     #                    .eq.0).and.(emit_Z_upper)) .and.
c     W+ emission from lower leg                        
     #                    ((charge3(i2)-(charge3(i8)+3)
     #                    .eq.0).and.(emit_Wp_lower))))


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
         write(*,*) ' born processes',flst_nborn
         do j=1,flst_nborn
            write(*,*) (flst_born(k,j),k=1,nlegborn)
         enddo
      endif
      flst_nborn_WW = flst_nborn


cccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
c     Real graphs
c
cccccccccccccccccccccccccccccccccccccccccccccccccccccc
c
      flst_nreal=0
      condition=.false.

c      print*,'***********'
c      stop
c
C the qq->qqg case:
c orig:
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

c identify flavor channels for W+Z:
            if (i1.gt.0) then 
               ftype(1) = 2-mod(abs(i1),2)      
               ftype(7) = 2-mod(abs(i7),2) 
            else !crossed
               ftype(7) = 2-mod(abs(i1),2)      
               ftype(1) = 2-mod(abs(i7),2) 
            endif
            if (i2.gt.0) then 
               ftype(2) = 2-mod(abs(i2),2)        
               ftype(8) = 2-mod(abs(i8),2)
            else
               ftype(8) = 2-mod(abs(i2),2)        
               ftype(2) = 2-mod(abs(i8),2)   
            endif

           k = 6*ftype(1)+4*ftype(2)-7*ftype(7)-5*ftype(8)      

           if (k.eq.channel_type) then
                 condition=.true. 
              else  
                 condition = .false.
           endif !k
   
         endif !channel_type
c
         if (CKM_diag) then
            emit_Wp_upper = (i7.eq.i1-1)
            emit_Z_upper = (i7.eq.i1)
            emit_Wp_lower = (i8.eq.i2-1)
            emit_Z_lower = (i8.eq.i2)                 
         else
            stop 'Only diagonal CKM implemented'
         endif

         condition = condition.and.( 
c     W+ emission from upper leg                        
     #                    (((charge3(i1)-(charge3(i7)+3)
     #                    .eq.0).and.(emit_Wp_upper)) .and.
c     W- emission from lower leg                        
     #                    ((charge3(i2)-(charge3(i8))
     #                    .eq.0).and.(emit_Z_lower)))
     #                    .or.
c     W- emission from upper leg                        
     #                    (((charge3(i1)-(charge3(i7))
     #                    .eq.0).and.(emit_Z_upper)) .and.
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

c
C the gq->qqq case: 
      do i1=0,0 
      do i2=-max_flav,max_flav
      do i7=-max_flav,max_flav
      do i8=-max_flav,max_flav
      do i9=-max_flav,-1

c         i8 = i2

c     no extra gluons:
         condition = ((i9*i2*i7*i8).ne.0)
         if (.not.condition) goto 802
c
         if (channel_type.eq.0.or.channel_type.eq.8) then
             condition=.true.
         else     
             

            if (i7.gt.0) then 
               ftype(1) = 2-mod(abs(i9),2)      
               ftype(7) = 2-mod(abs(i7),2) 
            else !crossed
               ftype(7) = 2-mod(abs(i9),2)      
               ftype(1) = 2-mod(abs(i7),2) 
            endif
            if (i2.gt.0) then 
               ftype(2) = 2-mod(abs(i2),2)        
               ftype(8) = 2-mod(abs(i8),2)
            else
               ftype(8) = 2-mod(abs(i2),2)        
               ftype(2) = 2-mod(abs(i8),2)   
            endif

           k = 6*ftype(1)+4*ftype(2)-7*ftype(7)-5*ftype(8)
             

           if (k.eq.channel_type) then
              condition=.true. 
           else  
              condition = .false.
           endif !k
   
         endif !channel_type

         if (CKM_diag) then
            emit_Wp_upper = (i7.eq.(-i9-1))
            emit_Z_upper = (i7.eq.(-i9))
            emit_Wp_lower = (i8.eq.i2-1)
            emit_Z_lower = (i8.eq.i2)                 
         else
            stop 'Only diagonal CKM implemented'
         endif

         condition = condition.and.(
c     W+ emission from upper leg                        
     #                    ((((-charge3(i9)-(charge3(i7)+3)
     #                    .eq.0).and.(emit_Wp_upper)) .and.
c     W- emission from lower leg                        
     #                    ((charge3(i2)-(charge3(i8))
     #                    .eq.0).and.(emit_Z_lower))))
     #                    .or.
c     W- emission from upper leg                        
     #                    (((-charge3(i9)-(charge3(i7))
     #                    .eq.0).and.(emit_Z_upper)) .and.
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
         if (channel_type.eq.0.or.channel_type.eq.8) then
             condition=.true.
         else     
   
            if (i1.gt.0) then 
               ftype(1) = 2-mod(abs(i1),2)      
               ftype(7) = 2-mod(abs(i7),2) 
            else !crossed
               ftype(7) = 2-mod(abs(i1),2)      
               ftype(1) = 2-mod(abs(i7),2) 
            endif
            if (i8.gt.0) then 
               ftype(2) = 2-mod(abs(i9),2)        
               ftype(8) = 2-mod(abs(i8),2)
            else
               ftype(8) = 2-mod(abs(i9),2)        
               ftype(2) = 2-mod(abs(i8),2)   
            endif
  

           k = 6*ftype(1)+4*ftype(2)-7*ftype(7)-5*ftype(8)

           if (k.eq.channel_type) then
                 condition=.true. 
           else  
                 condition = .false.
           endif !k
   
         endif !channel_type

         if (CKM_diag) then
            emit_Wp_upper = (i7.eq.i1-1)
            emit_Z_upper = (i7.eq.i1)
            emit_Wp_lower = (i8.eq.-i9-1)
            emit_Z_lower = (i8.eq.-i9)                 
         else
            stop 'Only diagonal CKM implemented'
         endif  

         condition = condition.and.(
c     W+ emission from upper leg                        
     #                    (((charge3(i1)-(charge3(i7)+3)
     #                    .eq.0).and.(emit_Wp_upper)) .and.
c     W- emission from lower leg                        
     #                    ((-charge3(i9)-(charge3(i8))
     #                    .eq.0).and.(emit_Z_lower)))
     #                    .or.
c     W- emission from upper leg                        
     #                    (((charge3(i1)-(charge3(i7))
     #                    .eq.0).and.(emit_Z_upper)) .and.
c     W+ emission from lower leg                        
     #                    ((-charge3(i9)-(charge3(i8)+3)
     #                    .eq.0).and.(emit_Wp_lower))))

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

 333  continue

      if (debug) then
         write(*,*) ' real CC processes',flst_nreal
         do j=1,flst_nreal
            write(*,*) (flst_real(k,j),k=1,nlegreal)
         enddo
      endif
      flst_nreal_WW = flst_nreal

      return
 998  write(*,*) 'init_processes: increase maxprocreal'
      stop
 999  write(*,*) 'init_processes: increase maxprocborn'
      end
