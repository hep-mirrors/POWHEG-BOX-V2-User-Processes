c     this should be a process dependent function
      function validflav(lflav)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_st.h'
      logical validflav
      integer lflav(:)
      integer onem
      parameter (onem=1000000)
      integer j,np,nleg  
c Make sure that we end up with a valid underlying single top process.
c     u  b  -> t  d
c     d~ b  -> t  u~
c     c  b  -> t  s
c     s~ b  -> t  c~
c     b  u  -> t  d
c     b  d~ -> t  u~
c     b  c  -> t  s
c     b  s~ -> t  c~
c
      nleg = size(lflav) 
c When using the flst_tags, this shouldn't be a problem      
      validflav = .true.
      np = 0 
      do j=1,nleg 
         if (lflav(j) .ne. onem) np = np+1
      enddo
      if (np < 4) validflav = .false. 
      if (np == 4) then 
         if (.not.(abs(lflav(1)).eq.5 .or. abs(lflav(2)).eq.5)) validflav = .false. 
      endif
      if (np == 5) then 
         if (.not.(abs(lflav(1)).eq.5 .or. abs(lflav(2)).eq.5 .or. 
     C        lflav(1) .eq. 0 .or. lflav(2) .eq. 0)) validflav = .false. 
      endif

C     do not allow top to end up in the initial state
      if (abs(lflav(1)) .eq. 6 .or. abs(lflav(2)) .eq. 6) validflav = .false. 
      
      end
