c initialization routine for pp->Hjjj via VBF
c
      subroutine init_processes
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'LesHouches.h'
      logical debug
      parameter (debug=.false.)
      integer j,i,ii,jj,k
      integer charge3(-6:6)
      data charge3 /-2,1,-2,1,-2,1,0,-1,2,-1,2,-1,2/
      logical condition
      integer ferm_charge(5)
      character *3 flav(-5:5)
      data (flav(i),i=-5,5) 
     #     /'b~','c~','s~','u~','d~','g','d','u','s','c','b'/
      integer max_flav
      logical emit_Wp_upper,emit_Wm_upper,emit_Wp_lower,emit_Wm_lower
      integer flst_nborn_WW,flst_nreal_WW
      integer flst_nreal_ZZ,flst_nreal_WW_all,flst_nreal_ZZ_all
      integer flst_nborn_WW_qq,flst_nborn_WW_qg,flst_nborn_WW_gq
      integer flst_nborn_ZZ_qq,flst_nborn_ZZ_qg,flst_nborn_ZZ_gq
      integer HZZ,HWW
      logical CKM_diag
      logical Higgsdecay
      common/cHiggsdecay/Higgsdecay
      integer flst_born_tmp(nlegborn,maxprocborn)
      logical flavequiv
      external flavequiv
      logical tag,newtag
      integer hdecaymode
      real * 8 powheginput, include4q
      external powheginput

      logical nc_include,cc_include
      integer channel_type  
      logical cc_only

      logical qq_cc_include,qq_nc_include, only4q
      integer qq_channel_type  

      integer i6,i7

      integer ftype(1:7)
      integer icc
c
c******************************************************

c     decay products of the Higgs boson
      hdecaymode=powheginput('#hdecaymode')
      if (hdecaymode.lt.0) then
c     default: no Higgs boson decay
         hdecaymode=-1
      endif
c     change the LHUPI id of the process according to vector boson id
c     and decay
      lprup(1)=10000+hdecaymode ! 10000+idup of Higgs decay product of the W


c flavor channels to be considered for qqqqgg sub-processes (and crossings):
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
c       if(powheginput('channel_type').gt.0) then
c          channel_type =powheginput('channel_type')
c       endif
       
       print*,'for processes including gluons:'
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

c qq -> H qq QQ processes are added or not :
       qq_channel_type = 0 ! yes if
       include4q=powheginput('#qq_exclude')
       if(include4q.eq.1d0)  qq_channel_type = 1         
       qq_cc_include = .false.!initial values:
       qq_nc_include = .false.!initial values:    

       if (qq_channel_type.eq.0) then
          if (cc_include) qq_cc_include = .true.
          if (nc_include) qq_nc_include = .true.
          write(*,*) 
          write(*,*) ' pure quark flavor channels are considered'
       else   
          qq_cc_include = .false.
          qq_nc_include = .false. 
          write(*,*) ' no pure quark flavor channels'
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
         do i=1,nlegborn
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
      flst_lightpart=4
      max_flav = 4
c init:
      flst_nborn=0
      flst_nreal=0
      
      flst_nborn_WW = 0
      flst_nreal_WW = 0
      flst_nreal_ZZ = 0

      flst_nborn_WW_qq = 0
      flst_nborn_WW_gq = 0
      flst_nborn_WW_qg = 0

      flst_nborn_ZZ_qq = 0
      flst_nborn_ZZ_gq = 0
      flst_nborn_ZZ_qg = 0

      ftype(1:7) = 0

      call particle_identif(HWW,HZZ)

      Higgsdecay = .false.
      condition=.false.
c
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
CCCC           BORN GRAPHS
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC

c     consider a diagonal CKM matrix. CKM matrix elements will be added      
c     when the event is written on the Les Houches file
      CKM_diag = .true.

c     WW -> H case (charged current):
      if (cc_include) then
      
      emit_Wp_upper = .true.
      emit_Wm_upper = .true.
      emit_Wp_lower = .true.
      emit_Wm_lower = .true.
c     WW -> H case
c     q q -> H q q g
      do i=-max_flav,max_flav
         do j=-max_flav,max_flav
            do ii=-max_flav,max_flav
               do jj=-max_flav,max_flav               
                  if (.not.((i.eq.0) .or.(j.eq.0).or.
     #                      (ii.eq.0).or.(jj.eq.0))) then ! NOT a gluon
                     ferm_charge(1) = charge3(i)
                     ferm_charge(2) = charge3(j)
                     ferm_charge(3) = charge3(ii)
                     ferm_charge(4) = charge3(jj)

                     if (CKM_diag) then
                        emit_Wp_upper = (ii.eq.i-1)
                        emit_Wm_upper = (ii.eq.i+1)
                        emit_Wp_lower = (jj.eq.j-1)
                        emit_Wm_lower = (jj.eq.j+1)                 
                     endif
                     
                     condition = 
c     W+ emission from upper leg                        
     #                    (((ferm_charge(1)-(ferm_charge(3)+3)
     #                    .eq.0).and.(emit_Wp_upper)) .and.
c     W- emission from lower leg                        
     #                    ((ferm_charge(2)-(ferm_charge(4)-3)
     #                    .eq.0).and.(emit_Wm_lower)))
     #                    .or.
c     W- emission from upper leg                        
     #                    (((ferm_charge(1)-(ferm_charge(3)-3)
     #                    .eq.0).and.(emit_Wm_upper)) .and.
c     W+ emission from lower leg                        
     #                    ((ferm_charge(2)-(ferm_charge(4)+3)
     #                    .eq.0).and.(emit_Wp_lower)))

                     if (.not.condition) goto 800

                     if (channel_type.eq.0.or.channel_type.eq.8) then
                        condition=.true.
                     else      
             
c use value of i/ii to select appropriate flavor channel    
                        ftype(1) = 2-mod(abs(i),2)         
                        ftype(4) = 2-mod(abs(ii),2)   
                        icc = (-3*i/abs(i)+5)/2
                        k = 7-ftype(icc)

                        if (k.eq.channel_type) then
                           condition=.true. 
                        else  
                           condition = .false.
                        endif   !k
   
                     endif      !channel_type
                     
                     if (condition) then
                        flst_nborn=flst_nborn+1
                        if(flst_nborn.gt.maxprocborn) goto 998
                        flst_born(1,flst_nborn)=i
                        flst_born(2,flst_nborn)=j
                        flst_born(3,flst_nborn)=HWW ! Higgs
                        flst_born(4,flst_nborn)=ii
                        flst_born(5,flst_nborn)=jj
                        flst_born(6,flst_nborn)=0 ! gluon
                        if (tag) then
                           flst_borntags(1,flst_nborn)=1
                           flst_borntags(2,flst_nborn)=2
                           flst_borntags(3,flst_nborn)=0
                           flst_borntags(4,flst_nborn)=4
                           flst_borntags(5,flst_nborn)=5
                           flst_borntags(6,flst_nborn)=0
                           if (newtag) then
                              flst_borntags(1,flst_nborn)=1
                              flst_borntags(2,flst_nborn)=2
                              flst_borntags(3,flst_nborn)=0
                              flst_borntags(4,flst_nborn)=1 !4
                              flst_borntags(5,flst_nborn)=2 !5
                              flst_borntags(6,flst_nborn)=0
                           endif
                        endif
                     endif
                  endif
 800              continue
               enddo
            enddo
         enddo
      enddo
      flst_nborn_WW_qq = flst_nborn
      
c     g q -> H q q q
c     loop on only HALF of the incoming upper-line quark, not to double count!
c     In fact, the born-radiation term contains TWO Feynman diagrams.
      do i=1,max_flav
         do j=-max_flav,max_flav
            do ii=-max_flav,max_flav
               do jj=-max_flav,max_flav               
                  if (.not.((i.eq.0).or.(j.eq.0).or.
     #                      (ii.eq.0).or.(jj.eq.0))) then ! NOT a gluon
                     ferm_charge(1) = 0
                     ferm_charge(2) = charge3(j)
                     ferm_charge(3) = charge3(ii)
                     ferm_charge(4) = charge3(jj)
                     ferm_charge(5) = charge3(-i)

                     if (CKM_diag) then
                        emit_Wp_upper = (ii.eq.i-1)
                        emit_Wm_upper = (ii.eq.i+1)
                        emit_Wp_lower = (jj.eq.j-1)
                        emit_Wm_lower = (jj.eq.j+1)                 
                     endif

                     condition = 
c     W+ emission from upper leg                        
     #                    (((-ferm_charge(5)-(ferm_charge(3)+3)
     #                    .eq.0).and.(emit_Wp_upper)) .and.
c     W- emission from lower leg                        
     #                    ((ferm_charge(2)-(ferm_charge(4)-3)
     #                    .eq.0).and.(emit_Wm_lower)))
     #                    .or.
c     W- emission from upper leg                        
     #                    (((-ferm_charge(5)-(ferm_charge(3)-3)
     #                    .eq.0).and.(emit_Wm_upper)) .and.
c     W+ emission from lower leg                        
     #                    ((ferm_charge(2)-(ferm_charge(4)+3)
     #                    .eq.0).and.(emit_Wp_lower)))

                     if (.not.condition) goto 802
c
                     if (channel_type.eq.0.or.channel_type.eq.8) then
                        condition=.true.
                     else     
             
c use value of j/jj to select appropriate flavor channel        
                        ftype(2) = 2-mod(abs(j),2)      
                        ftype(5) = 2-mod(abs(jj),2)
                        icc = (3*j/abs(j)+7)/2
                        k = 7-ftype(icc)

                        if (k.eq.channel_type) then
                           condition=.true. 
                        else  
                           condition = .false.
                        endif   !k
   
                     endif      !channel_type
                     
                     if (condition) then
                        flst_nborn=flst_nborn+1
                        if(flst_nborn.gt.maxprocborn) goto 998
                        flst_born(1,flst_nborn)=0 ! gluon
                        flst_born(2,flst_nborn)=j
                        flst_born(3,flst_nborn)=HWW ! Higgs
                        flst_born(4,flst_nborn)=ii
                        flst_born(5,flst_nborn)=jj
                        flst_born(6,flst_nborn)=-i
                        if (tag) then
                           flst_borntags(1,flst_nborn)=0
                           flst_borntags(2,flst_nborn)=2
                           flst_borntags(3,flst_nborn)=0
                           flst_borntags(4,flst_nborn)=4
                           flst_borntags(5,flst_nborn)=5
                           flst_borntags(6,flst_nborn)=1
                           if (newtag) then
                              flst_borntags(1,flst_nborn)=0
                              flst_borntags(2,flst_nborn)=2
                              flst_borntags(3,flst_nborn)=0
                              flst_borntags(4,flst_nborn)=1 !4
                              flst_borntags(5,flst_nborn)=2 !5
                              flst_borntags(6,flst_nborn)=1
                           endif
                        endif
                     endif
                  endif

 802           continue   
               enddo
            enddo
         enddo
      enddo
      flst_nborn_WW_gq = flst_nborn

c     q g -> H q q q
c     loop on only HALF of the incoming lower-line quark, not to double count!
c     In fact, the born-radiation term contains TWO Feynman diagrams.
      do i=-max_flav,max_flav
         do j=1,max_flav             
            do ii=-max_flav,max_flav
               do jj=-max_flav,max_flav               
                  if (.not.((i.eq.0).or.(j.eq.0).or.
     #                    (ii.eq.0).or.(jj.eq.0))) then ! NOT a gluon
                     ferm_charge(1) = charge3(i)
                     ferm_charge(2) = 0
                     ferm_charge(3) = charge3(ii)
                     ferm_charge(4) = charge3(jj)
                     ferm_charge(5) = charge3(-j)

                     if (CKM_diag) then
                        emit_Wp_upper = (ii.eq.i-1)
                        emit_Wm_upper = (ii.eq.i+1)
                        emit_Wp_lower = (jj.eq.j-1)
                        emit_Wm_lower = (jj.eq.j+1)                 
                     endif
                     
                     condition = 
c     W+ emission from upper leg                        
     #                    (((ferm_charge(1)-(ferm_charge(3)+3)
     #                    .eq.0).and.(emit_Wp_upper)) .and.
c     W- emission from lower leg                        
     #                    ((-ferm_charge(5)-(ferm_charge(4)-3)
     #                    .eq.0).and.(emit_Wm_lower)))
     #                    .or.
c     W- emission from upper leg                        
     #                    (((ferm_charge(1)-(ferm_charge(3)-3)
     #                    .eq.0).and.(emit_Wm_upper)) .and.
c     W+ emission from lower leg                        
     #                    ((-ferm_charge(5)-(ferm_charge(4)+3)
     #                    .eq.0).and.(emit_Wp_lower)))

                     if (.not.condition) goto 803
c 
                     if (channel_type.eq.0.or.channel_type.eq.8) then
                        condition=.true.
                     else     
             
c use value of i/ii to select appropriate flavor channel    
                        ftype(1) = 2-mod(abs(i),2)         
                        ftype(4) = 2-mod(abs(ii),2)   
                        icc = (-3*i/abs(i)+5)/2
                        k = 7-ftype(icc)

                        if (k.eq.channel_type) then
                           condition=.true. 
                        else  
                           condition = .false.
                        endif   !k
   
                     endif      !channel_type

                     if (condition) then
                        flst_nborn=flst_nborn+1
                        if(flst_nborn.gt.maxprocborn) goto 998
                        flst_born(1,flst_nborn)=i
                        flst_born(2,flst_nborn)=0 ! gluon
                        flst_born(3,flst_nborn)=HWW ! Higgs
                        flst_born(4,flst_nborn)=ii
                        flst_born(5,flst_nborn)=jj
                        flst_born(6,flst_nborn)=-j
                        if (tag) then
                           flst_borntags(1,flst_nborn)=1
                           flst_borntags(2,flst_nborn)=0
                           flst_borntags(3,flst_nborn)=0
                           flst_borntags(4,flst_nborn)=4
                           flst_borntags(5,flst_nborn)=5
                           flst_borntags(6,flst_nborn)=2
                           if (newtag) then
                              flst_borntags(1,flst_nborn)=1
                              flst_borntags(2,flst_nborn)=0
                              flst_borntags(3,flst_nborn)=0
                              flst_borntags(4,flst_nborn)=1 !4
                              flst_borntags(5,flst_nborn)=2 !5
                              flst_borntags(6,flst_nborn)=2
                           endif                           
                        endif
                     endif
                  endif
 803           continue   
               enddo
            enddo
         enddo
      enddo              
      flst_nborn_WW_qg = flst_nborn
      flst_nborn_WW = flst_nborn

      if (debug) then
         write(*,*) ' born processes: WW -> H ',flst_nborn
         do j=1,flst_nborn
            write(*,*) 'proc #',j,':',(flst_born(k,j),k=1,nlegborn)
         enddo
      endif

      endif !cc_include
      if (.not.nc_include) goto 111


c     ZZ -> H case(neutral current):
      if (nc_include) then

c     q q -> H q q g
      do i=-max_flav,max_flav
         do j=-max_flav,max_flav
            if (.not.((i.eq.0).or.(j.eq.0))) then
               ferm_charge(1) = charge3(i)
               ferm_charge(2) = charge3(j)
               ferm_charge(3) = charge3(i)
               ferm_charge(4) = charge3(j)

               if (channel_type.eq.0.or.channel_type.eq.7) then
                  condition=.true.
               else     
c use value of i/j to select appropriate flavor channel    
                  ftype(1) = 2-mod(abs(i),2)         
                  ftype(2) = 2-mod(abs(j),2)               
                  k = -2*ftype(1)-ftype(2)+7

                  if (k.eq.channel_type) then
                     condition=.true.
                  else
                     condition = .false.
                  endif         !k
   
               endif !channel_type

               if (condition) then                      
               flst_nborn=flst_nborn+1
               
               if(flst_nborn.gt.maxprocborn) goto 998
               flst_born(1,flst_nborn)=i
               flst_born(2,flst_nborn)=j
               flst_born(3,flst_nborn)=HZZ ! Higgs
               flst_born(4,flst_nborn)=i
               flst_born(5,flst_nborn)=j
               flst_born(6,flst_nborn)=0 ! gluon
               if (tag) then
                  flst_borntags(1,flst_nborn)=1
                  flst_borntags(2,flst_nborn)=2
                  flst_borntags(3,flst_nborn)=0
                  flst_borntags(4,flst_nborn)=4
                  flst_borntags(5,flst_nborn)=5
                  flst_borntags(6,flst_nborn)=0
                  if (newtag) then
                     flst_borntags(1,flst_nborn)=1
                     flst_borntags(2,flst_nborn)=2
                     flst_borntags(3,flst_nborn)=0
                     flst_borntags(4,flst_nborn)=1 !4
                     flst_borntags(5,flst_nborn)=2 !5
                     flst_borntags(6,flst_nborn)=0
                  endif !newtag
               endif !tag
               endif !condition

            endif ! no gluons
         enddo
      enddo
      flst_nborn_ZZ_qq = flst_nborn

c     g q -> H q q q
c     loop on only HALF of the incoming upper-line quark, not to double count!
c     In fact, the born-radiation term contains TWO Feynman diagrams.
      do i=1,max_flav
         do j=-max_flav,max_flav
            if (.not.((i.eq.0).or.(j.eq.0))) then
               ferm_charge(1) = 0
               ferm_charge(2) = charge3(j)
               ferm_charge(3) = charge3(i)
               ferm_charge(4) = charge3(j)
               ferm_charge(5) = -charge3(i)

               if (channel_type.eq.0.or.channel_type.eq.7) then
                  condition=.true.
               else                 
c use value of i/j to select appropriate flavor channel       
                  ftype(1) = 2-mod(abs(i),2)         
                  ftype(2) = 2-mod(abs(j),2)      
                  k = -2*ftype(1)-ftype(2)+7
                  if (k.eq.channel_type) then
                     condition=.true. 
                  else  
                     condition = .false.
                  endif   !k  
               endif  !channel_type

               if (condition) then 
               
               flst_nborn=flst_nborn+1

               if(flst_nborn.gt.maxprocborn) goto 998
               flst_born(1,flst_nborn)=0 ! gluon
               flst_born(2,flst_nborn)=j
               flst_born(3,flst_nborn)=HZZ ! Higgs
               flst_born(4,flst_nborn)=i
               flst_born(5,flst_nborn)=j
               flst_born(6,flst_nborn)=-i
               if (tag) then
                  flst_borntags(1,flst_nborn)=0
                  flst_borntags(2,flst_nborn)=2
                  flst_borntags(3,flst_nborn)=0
                  flst_borntags(4,flst_nborn)=4
                  flst_borntags(5,flst_nborn)=5
                  flst_borntags(6,flst_nborn)=1
                  if (newtag) then
                     flst_borntags(1,flst_nborn)=0
                     flst_borntags(2,flst_nborn)=2
                     flst_borntags(3,flst_nborn)=0
                     flst_borntags(4,flst_nborn)=1 !4
                     flst_borntags(5,flst_nborn)=2 !5
                     flst_borntags(6,flst_nborn)=1
                  endif
               endif
            endif
            endif
         enddo
      enddo
      flst_nborn_ZZ_gq = flst_nborn

c     q g -> H q q q
c     loop on only HALF of the incoming lower-line quark, not to double count!
c     In fact, the born-radiation term contains TWO Feynman diagrams.
      do i=-max_flav,max_flav
         do j=1,max_flav  
            if (.not.((i.eq.0).or.(j.eq.0))) then
               ferm_charge(1) = charge3(i)
               ferm_charge(2) = 0
               ferm_charge(3) = charge3(i)
               ferm_charge(4) = charge3(j)
               ferm_charge(5) = -charge3(j)

               if (channel_type.eq.0.or.channel_type.eq.7) then
                  condition=.true.
               else     
             
c use value of i/j to select appropriate flavor channel    
                  ftype(1) = 2-mod(abs(i),2)         
                  ftype(2) = 2-mod(abs(j),2)               
                  k = -2*ftype(1)-ftype(2)+7

                  if (k.eq.channel_type) then
                     condition=.true. 
                  else  
                     condition = .false.
                  endif  !k   
               endif !channel_type


               if (condition) then                
               flst_nborn=flst_nborn+1

               if(flst_nborn.gt.maxprocborn) goto 998
               flst_born(1,flst_nborn)=i
               flst_born(2,flst_nborn)=0 ! gluon
               flst_born(3,flst_nborn)=HZZ ! Higgs
               flst_born(4,flst_nborn)=i
               flst_born(5,flst_nborn)=j
               flst_born(6,flst_nborn)=-j
               if (tag) then
                  flst_borntags(1,flst_nborn)=1
                  flst_borntags(2,flst_nborn)=0
                  flst_borntags(3,flst_nborn)=0
                  flst_borntags(4,flst_nborn)=4
                  flst_borntags(5,flst_nborn)=5
                  flst_borntags(6,flst_nborn)=2
                  if (newtag) then
                     flst_borntags(1,flst_nborn)=1
                     flst_borntags(2,flst_nborn)=0
                     flst_borntags(3,flst_nborn)=0
                     flst_borntags(4,flst_nborn)=1 !4
                     flst_borntags(5,flst_nborn)=2 !5
                     flst_borntags(6,flst_nborn)=2
                  endif
               endif
               endif
            endif
         enddo
      enddo 
      flst_nborn_ZZ_qg = flst_nborn             

      if (debug) then
         write(*,*) ' born processes: ZZ -> H ',flst_nborn-flst_nborn_WW
         do j=flst_nborn_WW+1,flst_nborn
            write(*,*) 'proc #',j-flst_nborn_WW,':',
     #           (flst_born(k,j),k=1,nlegborn)
         enddo
      endif

      endif !nc_include

 111  continue
c
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCcccccCCCCCCCCCCCC
CCCC           REAL GRAPHS: first come processes with 2 gluons
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCcccccCCCCCCC
c
c     WW -> H case (charged current):

      if (cc_include) then
c
c gluon2 is outgoing (qq->Hqqgg, gq->Hqqqg, gq->Hqqqg):
c
      do i=1,flst_nborn_WW
           flst_nreal=flst_nreal+1      
           flst_real(1,flst_nreal)=flst_born(1,i)
           flst_real(2,flst_nreal)=flst_born(2,i)
           flst_real(3,flst_nreal)=flst_born(3,i)
           flst_real(4,flst_nreal)=flst_born(4,i)
           flst_real(5,flst_nreal)=flst_born(5,i)
           flst_real(6,flst_nreal)=flst_born(6,i)
           flst_real(7,flst_nreal)=0 !gluon
           if (tag) then
              flst_realtags(1,flst_nreal)=flst_borntags(1,i)
              flst_realtags(2,flst_nreal)=flst_borntags(2,i)
              flst_realtags(3,flst_nreal)=flst_borntags(3,i)
              flst_realtags(4,flst_nreal)=flst_borntags(4,i)
              flst_realtags(5,flst_nreal)=flst_borntags(5,i)
              flst_realtags(6,flst_nreal)=flst_borntags(6,i)
              flst_realtags(7,flst_nreal)=0 !gluon
            endif
      enddo
c
c gluon2 is incoming (gg->Hqqqq):
c
      do i=-max_flav,max_flav
         do j=-max_flav,max_flav
            do ii=1,max_flav
               do jj=1,max_flav
                  if (.not.((i.eq.0) .or.(j.eq.0).or.
     #                      (ii.eq.0).or.(jj.eq.0))) then ! NOT a gluon
                     ferm_charge(1) = charge3(i)
                     ferm_charge(2) = charge3(j)
                     ferm_charge(3) = charge3(ii)
                     ferm_charge(4) = charge3(jj)

                     if (CKM_diag) then
                        emit_Wp_upper = (ii.eq.i-1)
                        emit_Wm_upper = (ii.eq.i+1)
                        emit_Wp_lower = (jj.eq.j-1)
                        emit_Wm_lower = (jj.eq.j+1)                 
                     endif
                     
                     condition = 
c     W+ emission from upper leg                        
     #                    (((ferm_charge(1)-(ferm_charge(3)+3)
     #                    .eq.0).and.(emit_Wp_upper)) .and.
c     W- emission from lower leg                        
     #                    ((ferm_charge(2)-(ferm_charge(4)-3)
     #                    .eq.0).and.(emit_Wm_lower)))
     #                    .or.
c     W- emission from upper leg                        
     #                    (((ferm_charge(1)-(ferm_charge(3)-3)
     #                    .eq.0).and.(emit_Wm_upper)) .and.
c     W+ emission from lower leg                        
     #                    ((ferm_charge(2)-(ferm_charge(4)+3)
     #                    .eq.0).and.(emit_Wp_lower)))

                     if (.not.condition) goto 810

                     if (channel_type.eq.0.or.channel_type.eq.8) then
                        condition=.true.
                     else      
             
c use value of i/ii to select appropriate flavor channel    
                        ftype(1) = 2-mod(abs(i),2)         
                        ftype(4) = 2-mod(abs(ii),2)   
                        icc = (-3*i/abs(i)+5)/2
                        k = 7-ftype(icc)

                        if (k.eq.channel_type) then
                           condition=.true. 
                        else  
                           condition = .false.
                        endif   !k
   
                     endif      !channel_type
                     
                     if (condition) then
                        flst_nreal=flst_nreal+1
                        if(flst_nreal.gt.maxprocreal) goto 999
                        flst_real(1,flst_nreal)=0 ! gluon
                        flst_real(2,flst_nreal)=0 ! gluon
                        flst_real(6,flst_nreal)=-i
                        flst_real(7,flst_nreal)=-j
                        flst_real(3,flst_nreal)=HWW ! Higgs
                        flst_real(4,flst_nreal)=ii
                        flst_real(5,flst_nreal)=jj
                        if (tag) then
                           flst_realtags(1,flst_nreal)=0
                           flst_realtags(2,flst_nreal)=0
                           flst_realtags(3,flst_nreal)=0
                           flst_realtags(4,flst_nreal)=4
                           flst_realtags(5,flst_nreal)=5
                           flst_realtags(6,flst_nreal)=1
                           flst_realtags(7,flst_nreal)=2
                           if (newtag) then
                              flst_realtags(1,flst_nreal)=0
                              flst_realtags(2,flst_nreal)=0
                              flst_realtags(3,flst_nreal)=0
                              flst_realtags(4,flst_nreal)=1 
                              flst_realtags(5,flst_nreal)=2 
                              flst_realtags(6,flst_nreal)=1
                              flst_realtags(7,flst_nreal)=2
                           endif
                        endif
                     endif
                  endif
 810              continue
               enddo
            enddo
         enddo
      enddo
      if (debug) then
         write(*,*) ' real processes: WW -> H',flst_nreal
         do j=1,flst_nreal
            write(*,*) 'proc #',j,':',(flst_real(k,j),k=1,nlegreal)
         enddo
      endif
      flst_nreal_WW = flst_nreal 
      endif !cc

      flst_nreal_ZZ = flst_nreal ! initial value
      if (.not.nc_include) goto 900

      if (nc_include) then
c     ZZ -> H case(neutral current):
c
c gluon2 is outgoing (qq->Hqqgg, gq->Hqqqg, gq->Hqqqg):
c
      do i=flst_nborn_WW+1,flst_nborn
           flst_nreal=flst_nreal+1      
           flst_real(1,flst_nreal)=flst_born(1,i)
           flst_real(2,flst_nreal)=flst_born(2,i)
           flst_real(3,flst_nreal)=flst_born(3,i)
           flst_real(4,flst_nreal)=flst_born(4,i)
           flst_real(5,flst_nreal)=flst_born(5,i)
           flst_real(6,flst_nreal)=flst_born(6,i)
           flst_real(7,flst_nreal)=0 !gloun
           if (tag) then
              flst_realtags(1,flst_nreal)=flst_borntags(1,i)
              flst_realtags(2,flst_nreal)=flst_borntags(2,i)
              flst_realtags(3,flst_nreal)=flst_borntags(3,i)
              flst_realtags(4,flst_nreal)=flst_borntags(4,i)
              flst_realtags(5,flst_nreal)=flst_borntags(5,i)
              flst_realtags(6,flst_nreal)=flst_borntags(6,i)
              flst_realtags(7,flst_nreal)=0 !gloun
            endif
      enddo

c gluon2 is incoming (gg->Hqqqq):
      do i=-max_flav,-1
         do j=1,max_flav 
            if (.not.((i.eq.0).or.(j.eq.0))) then
               ferm_charge(1) = charge3(i)
               ferm_charge(2) = charge3(j)
               ferm_charge(3) = charge3(i)
               ferm_charge(4) = charge3(j)

               if (channel_type.eq.0.or.channel_type.eq.7) then
                  condition=.true.
               else     
c use value of i/j to select appropriate flavor channel    
                  ftype(1) = 2-mod(abs(i),2)         
                  ftype(2) = 2-mod(abs(j),2)               
                  k = -2*ftype(1)-ftype(2)+7

                  if (k.eq.channel_type) then
                     condition=.true.
                  else
                     condition = .false.
                  endif         !k
   
               endif !channel_type

               if (condition) then                      
               flst_nreal=flst_nreal+1
               
               if(flst_nreal.gt.maxprocreal) goto 999
               flst_real(1,flst_nreal)=0 ! gluon
               flst_real(2,flst_nreal)=0 ! gluon
               flst_real(3,flst_nreal)=HZZ ! Higgs
               flst_real(4,flst_nreal)=i
               flst_real(5,flst_nreal)=j
               flst_real(6,flst_nreal)=-i
               flst_real(7,flst_nreal)=-j
               if (tag) then
                  flst_realtags(1,flst_nreal)=0
                  flst_realtags(2,flst_nreal)=0
                  flst_realtags(3,flst_nreal)=0
                  flst_realtags(4,flst_nreal)=4
                  flst_realtags(5,flst_nreal)=5
                  flst_realtags(6,flst_nreal)=1
                  flst_realtags(7,flst_nreal)=2
                  if (newtag) then
                     flst_realtags(1,flst_nreal)=0
                     flst_realtags(2,flst_nreal)=0
                     flst_realtags(3,flst_nreal)=0
                     flst_realtags(4,flst_nreal)=1 
                     flst_realtags(5,flst_nreal)=2 
                     flst_realtags(6,flst_nreal)=1
                     flst_realtags(7,flst_nreal)=2
                  endif !newtag
               endif !tag
               endif !condition

            endif ! no extra gluons
         enddo
      enddo
      flst_nreal_ZZ = flst_nreal 
c
cccccccccc
c
      if (debug) then
         write(*,*) ' real processes: ZZ -> H',flst_nreal
         do j=flst_nreal_WW+1,flst_nreal
            write(*,*) 'proc #',j-flst_nreal_WW,':',
     $           (flst_real(k,j),k=1,nlegreal)
         enddo
      endif
      endif !nc
      flst_nreal_ZZ = flst_nreal ! initial value
 
 900  continue


CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCcccccCCCCCCCCCCCC
CCCC           REAL GRAPHS without gluons
CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCcccccCCCCCCC
c
c
c     WW -> H case (charged current):

      if (qq_cc_include) then
c
c q'qb' is outgoing (qq->Hqq q'qb'):
c
      do i=1,flst_nborn_WW_qq
         do i6 = 1,max_flav
            i7 = -i6

           flst_nreal=flst_nreal+1      

           flst_real(1,flst_nreal)=flst_born(1,i)
           flst_real(2,flst_nreal)=flst_born(2,i)
           flst_real(3,flst_nreal)=flst_born(3,i)
           flst_real(4,flst_nreal)=flst_born(4,i)
           flst_real(5,flst_nreal)=flst_born(5,i)
           flst_real(6,flst_nreal)=i6
           flst_real(7,flst_nreal)=i7
           if (tag) then
              flst_realtags(1,flst_nreal)=flst_borntags(1,i)
              flst_realtags(2,flst_nreal)=flst_borntags(2,i)
              flst_realtags(3,flst_nreal)=flst_borntags(3,i)
              flst_realtags(4,flst_nreal)=flst_borntags(4,i)
              flst_realtags(5,flst_nreal)=flst_borntags(5,i)
              flst_realtags(6,flst_nreal)=5 !? is this ok?
              flst_realtags(7,flst_nreal)=5 !? is this ok?
            endif !tag
         enddo !i6   
      enddo !i

      do i=flst_nborn_WW_qq+1,flst_nborn_WW_gq
         do i6 = -max_flav,max_flav
            if (i6.eq.0) goto 701
            i7 = i6

           flst_nreal=flst_nreal+1      

           flst_real(1,flst_nreal)=i6
           flst_real(2,flst_nreal)=flst_born(2,i)
           flst_real(3,flst_nreal)=flst_born(3,i)
           flst_real(4,flst_nreal)=flst_born(4,i)
           flst_real(5,flst_nreal)=flst_born(5,i)
           flst_real(6,flst_nreal)=flst_born(6,i)
           flst_real(7,flst_nreal)=i7
           if (tag) then
              flst_realtags(1,flst_nreal)=5
              flst_realtags(2,flst_nreal)=flst_borntags(2,i)
              flst_realtags(3,flst_nreal)=flst_borntags(3,i)
              flst_realtags(4,flst_nreal)=flst_borntags(4,i)
              flst_realtags(5,flst_nreal)=flst_borntags(5,i)
              flst_realtags(6,flst_nreal)=flst_borntags(6,i)
              flst_realtags(7,flst_nreal)=5 !? is this ok?
            endif !tag

 701        continue   
         enddo !i6   
      enddo !i

      do i=flst_nborn_WW_gq+1,flst_nborn_WW_qg
         do i6 = -max_flav,max_flav
            if (i6.eq.0) goto 702
            i7 = i6

           flst_nreal=flst_nreal+1      

           flst_real(1,flst_nreal)=flst_born(1,i)
           flst_real(2,flst_nreal)=i6
           flst_real(3,flst_nreal)=flst_born(3,i)
           flst_real(4,flst_nreal)=flst_born(4,i)
           flst_real(5,flst_nreal)=flst_born(5,i)
           flst_real(6,flst_nreal)=flst_born(6,i)
           flst_real(7,flst_nreal)=i7
           if (tag) then
              flst_realtags(1,flst_nreal)=flst_borntags(1,i)
              flst_realtags(2,flst_nreal)=5
              flst_realtags(3,flst_nreal)=flst_borntags(3,i)
              flst_realtags(4,flst_nreal)=flst_borntags(4,i)
              flst_realtags(5,flst_nreal)=flst_borntags(5,i)
              flst_realtags(6,flst_nreal)=flst_borntags(6,i)
              flst_realtags(7,flst_nreal)=5 !? is this ok?
            endif !tag

 702        continue   
         enddo !i6   
      enddo !i
      if (debug) then
         write(*,*) ' real 4quark processes: WW -> H ',
     &        flst_nreal-flst_nreal_ZZ
         do j=flst_nreal_ZZ+1,flst_nreal
            write(*,*) 'proc #',j,':',(flst_real(k,j),k=1,nlegborn+1)
         enddo
      endif

      endif !qq_cc_include  
      flst_nreal_WW_all = flst_nreal


c     ZZ -> H case (charged current):
      if (qq_nc_include) then

c
c q'qb' is outgoing (qq->Hqq q'qb'):
c
      do i=flst_nborn_WW+1,flst_nborn_ZZ_qq
         do i6 = 1,max_flav
            i7 = -i6

           flst_nreal=flst_nreal+1      

           flst_real(1,flst_nreal)=flst_born(1,i)
           flst_real(2,flst_nreal)=flst_born(2,i)
           flst_real(3,flst_nreal)=flst_born(3,i)
           flst_real(4,flst_nreal)=flst_born(4,i)
           flst_real(5,flst_nreal)=flst_born(5,i)
           flst_real(6,flst_nreal)=i6
           flst_real(7,flst_nreal)=i7
           if (tag) then
              flst_realtags(1,flst_nreal)=flst_borntags(1,i)
              flst_realtags(2,flst_nreal)=flst_borntags(2,i)
              flst_realtags(3,flst_nreal)=flst_borntags(3,i)
              flst_realtags(4,flst_nreal)=flst_borntags(4,i)
              flst_realtags(5,flst_nreal)=flst_borntags(5,i)
              flst_realtags(6,flst_nreal)=5 !? is this ok?
              flst_realtags(7,flst_nreal)=5 !? is this ok?
            endif !tag
         enddo !i6   
      enddo !i

      flst_nreal_ZZ_all = flst_nreal

      if (debug) then
         write(*,*) ' real 4quark processes: ZZ -> H ',
     &        flst_nreal-flst_nreal_WW_all
         do j=flst_nreal_WW_all+1,flst_nreal
            write(*,*) 'proc #',j,':',(flst_real(k,j),k=1,nlegborn+1)
         enddo
      endif

      endif !qq_nc_include  

      
      return
 998  write(*,*) 'init_processes: increase maxprocborn:',maxprocborn
      stop
 999  write(*,*) 'init_processes: increase maxprocreal:',maxprocreal
      stop

      end
      





