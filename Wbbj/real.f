      subroutine setreal(p,rflav,amp2)
c Wrapper subroutine to call the MadGraph real emission matrix
c elements and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      real * 8 p(0:3,nlegreal)
      integer rflav(nlegreal)
      real * 8 amp2
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode

      if(idvecbos.eq.-24) then
         call cconj(rflav,nlegreal)
         call pconj(p,nlegreal)
      endif

      call set_ebe_couplings
      call sreal_proc(p,rflav,amp2)
c Cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2 = amp2/(st_alpha/(2d0*pi))  

      if(idvecbos.eq.-24) then
         call cconj(rflav,nlegreal)
         call pconj(p,nlegreal)
      endif
   
      end



      subroutine realcolour_lh
c Wrapper subroutine to call the MadGraph code to associate
c a (leading) color structure to an event.
      implicit none
      include 'nlegborn.h'
      include 'LesHouches.h'
      integer rflav(nlegreal),color(2,nlegreal)
      integer i,j,itmp
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      do i=1,nlegreal
         rflav(i)=idup(i)
         if (rflav(i).eq.21) rflav(i)=0
      enddo

      if(idvecbos.eq.-24) then
         call cconj(rflav,nlegreal)
      endif


      call real_color(rflav,color)

      if(idvecbos.eq.-24) then
         call cconj(rflav,nlegreal)
         do j=1,nlegreal
            itmp = color(1,j)
            color(1,j) = color(2,j)
            color(2,j) = itmp
         enddo
      endif

      do i=1,2
         do j=1,nlegreal
            icolup(i,j)=color(i,j)
         enddo
      enddo
      end

