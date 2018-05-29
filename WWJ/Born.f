      subroutine setborn(p,bflav,born,bornjk,bmunu)
c Wrapper subroutine to call the MadGraph Borns
c and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      real * 8 p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      integer bflav(nlegborn)
      real * 8 bmunu(0:3,0:3,nlegborn),born
      call set_ebe_couplings
      call sborn_proc(p,bflav,born,bornjk,bmunu)
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
c Specify here if resonances need be written in the event file.
      implicit none
      include "LesHouches.h"
      integer decay 
      common /cdecay/decay
      integer iwp1,iwp2,iwm1,iwm2
      real * 8 random,ran  
      external random 

      if (decay == 11) then 
         iwp1=-11
         iwp2=12
         iwm1=11
         iwm2=-12
      elseif (decay == 22) then 
         iwp1=-13
         iwp2=14
         iwm1=13
         iwm2=-14
      elseif (decay == 33) then
         iwp1=-15
         iwp2=16
         iwm1=15
         iwm2=-16
      elseif (decay == 44) then 
         if(random().gt.0.5d0) then
            iwp1=-13
            iwp2=14
         else
            iwp1=-11
            iwp2=12
         endif
         if(random().gt.0.5d0) then
            iwm1=13
            iwm2=-14
         else
            iwm1=11
            iwm2=-12
         endif
      elseif (decay == 55) then 
         ran = random() 
         if(ran.gt.2d0/3d0) then
            iwp1=-15
            iwp2=16
         elseif(ran.gt.1d0/3d0) then
            iwp1=-13
            iwp2=14
         else
            iwp1=-11
            iwp2=12
         endif
         ran = random()
         if(ran.gt.2d0/3d0) then
            iwm1=15
            iwm2=-16
         elseif(ran.gt.1d0/3d0) then
            iwm1=13
            iwm2=-14
         else
            iwm1=11
            iwm2=-12
         endif         
      elseif (decay == 66) then 

C     Now decide the flavour of the UP-type quark (u or c) 
         if(random().gt.0.5d0) then
            iwp2 = 2            ! u  
            iwp1 = -1           ! db 
         else
            iwp2 = 4            ! c 
            iwp1 = -3           ! sb  
         endif
C     randomize over down type quark (e.g. in case of udb, pick udb or usb)
         call randomizeckm(iwp1,iwp1)  

         icolup(1,3)= 0
         icolup(2,3)= 503
         icolup(1,4)= 503
         icolup(2,4)= 0

C     do the same for W-
         if(random().gt.0.5d0) then
            iwm2 = -2           ! ubar  
            iwm1 = 1            ! d 
         else
            iwm2 = -4           ! cbar 
            iwm1 = 3            ! s
         endif
C     randomize over down type quark (e.g. in case of udb, pick udb or usb)
         call randomizeckm(iwm1,iwm1)  

         icolup(1,5)= 504
         icolup(2,5)= 0
         icolup(1,6)= 0
         icolup(2,6)= 504

      elseif (decay == 46) then 

C     decides if Wp or Wm decays hadronica/leptonically 
         if (random().gt. 0.5d0) then 
C     Wp -> had; wm -> lept 
            
C     Now decide the flavour of the UP-type quark (u or c) 
            if(random().gt.0.5d0) then
               iwp2 = 2  ! u  
               iwp1 = -1 ! db 
            else
               iwp2 = 4  ! c 
               iwp1 = -3 ! sb  
            endif
C     randomize over down type quark (e.g. in case of udb, pick udb or usb)
            call randomizeckm(iwp1,iwp1)  

            icolup(1,3)= 0
            icolup(2,3)= 503
            icolup(1,4)= 503
            icolup(2,4)= 0

C     decide the leptonic family in the final state
            if(random().gt.0.5d0) then
               iwm1=13
               iwm2=-14
            else
               iwm1=11
               iwm2=-12
            endif

         else
C     Wp -> lept; wm -> had 

C     decide flavour of the leptonic family
            if(random().gt.0.5d0) then
               iwp1=-13
               iwp2=14
            else
               iwp1=-11
               iwp2=12
            endif
            
C     Now decide the flavour of the UP-type quark (u or c) 
            if(random().gt.0.5d0) then
               iwm2 = -2        ! ubar  
               iwm1 = 1         ! d 
            else
               iwm2 = -4        ! cbar 
               iwm1 = 3         ! s
            endif
C     randomize over down type quark (e.g. in case of udb, pick udb or usb)
            call randomizeckm(iwm1,iwm1)  

            icolup(1,5)= 504
            icolup(2,5)= 0
            icolup(1,6)= 0
            icolup(2,6)= 504
           
         endif

      elseif (decay == 56) then 
         

C     decides if Wp or Wm decays hadronica/leptonically 
         if (random().gt. 0.5d0) then 
C     Wp -> had; wm -> lept 
            
C     Now decide the flavour of the UP-type quark (u or c) 
            if(random().gt.0.5d0) then
               iwp2 = 2  ! u  
               iwp1 = -1 ! db 
            else
               iwp2 = 4  ! c 
               iwp1 = -3 ! sb  
            endif
C     randomize over down type quark (e.g. in case of udb, pick udb or usb)
            call randomizeckm(iwp1,iwp1)  

            icolup(1,3)= 0
            icolup(2,3)= 503
            icolup(1,4)= 503
            icolup(2,4)= 0

C     decide the leptonic family in the final state
            ran = random()
            if(ran.gt.2d0/3d0) then
               iwm1=15
               iwm2=-16
            elseif(ran.gt.1d0/3d0) then
               iwm1=13
               iwm2=-14
            else
               iwm1=11
               iwm2=-12
            endif         
            
         else
C     Wp -> lept; wm -> had 

C     decide flavour of the leptonic family
            ran = random() 
            if(ran.gt.2d0/3d0) then
               iwp1=-15
               iwp2=16
            elseif(ran.gt.1d0/3d0) then
               iwp1=-13
               iwp2=14
            else
               iwp1=-11
               iwp2=12
            endif
            
C     Now decide the flavour of the UP-type quark (u or c) 
            if(random().gt.0.5d0) then
               iwm2 = -2        ! ubar  
               iwm1 = 1         ! d 
            else
               iwm2 = -4        ! cbar 
               iwm1 = 3         ! s
            endif
C     randomize over down type quark (e.g. in case of udb, pick udb or usb)
            call randomizeckm(iwm1,iwm1)  

            icolup(1,5)= 504
            icolup(2,5)= 0
            icolup(1,6)= 0
            icolup(2,6)= 504
            
         endif

      elseif (decay == 12) then 
!     not really needed (it's the default)
         iwp1=-11
         iwp2=12
         iwm1=13
         iwm2=-14
      elseif (decay == 21) then 
         iwp1=-13
         iwp2=14
         iwm1=11
         iwm2=-12
      else
         write(*,*) 'decay mode not allowed! Decay = ', decay 
         call exit(-1) 
      endif

C    now add the W+W- resonances
      idup(3)=iwp1
      idup(4)=iwp2
      idup(5)=iwm1
      idup(6)=iwm2
      call add_resonance(+24 ,3,4)
      call add_resonance(-24 ,6,7)      
      end
