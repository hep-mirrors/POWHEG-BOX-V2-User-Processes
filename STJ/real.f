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
      call set_ebe_couplings
      call sreal_proc(p,rflav,amp2)
c Cancel as/(2pi) associated with amp2. It will be put back by real_ampsq
      amp2 = amp2/(st_alpha/(2d0*pi))     
      end


c$$$
c$$$      subroutine realcolour_lh
c$$$c Wrapper subroutine to call the MadGraph code to associate
c$$$c a (leading) color structure to an event.
c$$$      implicit none
c$$$      include 'nlegborn.h'
c$$$      include 'LesHouches.h'
c$$$      integer rflav(nlegreal),color(2,nlegreal)
c$$$      integer i,j
c$$$      do i=1,nlegreal
c$$$         rflav(i)=idup(i)
c$$$         if (rflav(i).eq.21) rflav(i)=0
c$$$      enddo
c$$$      call real_color(rflav,color)
c$$$      do i=1,2
c$$$         do j=1,nlegreal
c$$$            icolup(i,j)=color(i,j)
c$$$         enddo
c$$$      enddo
c$$$      end
c$$$
