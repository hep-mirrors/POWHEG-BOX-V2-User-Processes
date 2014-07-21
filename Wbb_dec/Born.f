      subroutine setborn(p,bflav,born,bornjk,bmunu)
c Wrapper subroutine to call the MadGraph Borns
c and set the event-by-event couplings constant
      implicit none
      include 'nlegborn.h'
      real * 8 p(0:3,nlegborn),bornjk(nlegborn,nlegborn)
      integer bflav(nlegborn)
      real * 8 bmunu(0:3,0:3,nlegborn),born
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      integer j,mu
      call set_ebe_couplings

      if(idvecbos.eq.-24) then
         call cconj(bflav,nlegborn)
         call pconj(p,nlegborn)
      endif

      call sborn_proc(p,bflav,born,bornjk,bmunu)

c      print*, "born", born
c      print*, "bflav", bflav

      if(idvecbos.eq.-24) then
         call cconj(bflav,nlegborn)
         call pconj(p,nlegborn)
         do j=1,nlegborn
            do mu=1,3
               bmunu(0,mu,j)=-bmunu(0,mu,j)
               bmunu(mu,0,j)=-bmunu(mu,0,j)
            enddo
         enddo
      endif

      end

      subroutine pconj(p,n)
      implicit none
      real * 8 p(0:3,n)
      integer n,j,mu
      do j=1,n
         do mu=1,3
            p(mu,j)=-p(mu,j)
         enddo
      enddo
      end



      subroutine borncolour_lh1
c Wrapper subroutine to call the MadGraph code to associate
c a (leading) color structure to an event.
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_rad.h'
      integer equivto(maxprocborn)
      common/cequivtoborn/equivto
      include 'LesHouches.h'
      integer bflav0(nlegborn),bflav(nlegborn),color(2,nlegborn)
      integer i,j,iborn
      logical samecol,conjcol
c We should reach the madgraph flavour configuration that
c was actually computed, in case smartsig is on
      iborn = rad_ubornidx
      bflav0 = flst_born(:,iborn)
      do while(equivto(iborn).ne.-1)
         iborn=equivto(iborn)
      enddo
      bflav = flst_born(:,iborn)
      call born_color(bflav,color)
c Now we have the colour configuration associated with the
c amplitude that was computed instead of rad_ubornidx.
c However, that amplitude may differ from the original one
c by charge conjugation. Check if this is the case
      call matchcolour(nlegborn,bflav0,color)
      icolup(:,1:nlegborn)=color(:,1:nlegborn)


      end




      subroutine borncolour_lh
c Wrapper subroutine to call the MadGraph code to associate
c a (leading) color structure to an event.
      implicit none
      include 'nlegborn.h'
      include 'LesHouches.h'
      integer bflav(nlegborn),color(2,nlegborn)
      integer i,j, itmp
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      do i=1,nlegborn
         bflav(i)=idup(i)
         if (bflav(i).eq.21) bflav(i)=0
      enddo

      if(idvecbos.eq.-24) then
         call cconj(bflav,nlegborn)
      endif

      call born_color(bflav,color)

      if(idvecbos.eq.-24) then
         call cconj(bflav,nlegborn)
         do j=1,nlegborn
            itmp = color(1,j)
            color(1,j) = color(2,j)
            color(2,j) = itmp
         enddo
      endif

      do i=1,2
         do j=1,nlegborn
            icolup(i,j)=color(i,j)
         enddo
      enddo
c$$$
c$$$
c$$$      write(*,*) bflav(1:nlegborn)
c$$$      write(*,*) icolup(1,1:nlegborn)
c$$$      write(*,*) icolup(2,1:nlegborn)
c$$$      write(*,*) 'enter ***'
c$$$      call  borncolour_lh1
c$$$      write(*,*) 'exit ***'
c$$$      write(*,*) icolup(1,1:nlegborn)
c$$$      write(*,*) icolup(2,1:nlegborn)
c$$$
c$$$
      end




      subroutine matchcolour(n,flav,colour)
      implicit none
      integer n,flav(n),colour(2,n)
      integer j,k,is,iwhere
c Check that color assignment is compatible with flavour.
c If not, conjugate the colour in the whole colour chain.
c This can be done consistently if the two ends of the colour chain
c have opposite flavour.
c We assumes that the colour array is a self consistent colour assignment.

c first conjugate initial flavours and colours, in order to handle
c all particles as outgoing.
      flav(1)=-flav(1)
      flav(2)=-flav(2)
      call colour_conj(colour(:,1))
      call colour_conj(colour(:,2))

      do k=1,n
         if(flav(k).ne.0) then
            if(flav(k).gt.0) then
               is = 1
            else
               is = 2
            endif
c The following is normal assignment
            if(colour(is,k).gt.0.and.colour(3-is,k).eq.0) cycle
c the following is impossible to handle:
            if(colour(1,k).eq.0.and.colour(2,k).eq.0) goto 999
            if(colour(1,k).ne.0.and.colour(2,k).ne.0) goto 999
c the remaining possibility is colour(is,k)=0 and colour(3-is,k)!=0;
c Correct by exchanging colour and anticolour in the whole colour connected
c chain, provided the last element has opposite sign of flavour
            iwhere = k
 10         continue
            do j=1,n
               if(j.ne.iwhere) then
                  if(colour(is,j).eq.colour(3-is,iwhere)) then
                     if(flav(j).eq.0) then
                        if(colour(1,j).ne.0.and.colour(2,j).ne.0) then
                           call colour_conj(colour(:,iwhere))
                           iwhere = j
                           goto 10
                        else
c this cannot be handled
                           goto 999
                        endif
                     elseif(flav(j)*flav(k).lt.0) then
c found a connected opposite flavour;
c The following can't be, colour(is,j)!=0;
                        if(colour(3-is,j).ne.0) goto 999
                        call colour_conj(colour(:,iwhere))
                        call colour_conj(colour(:,j))
                        exit
                     else
                        goto 999
                     endif
                  endif
               endif
            enddo
         endif
      enddo

c Straighten up colour and flavour
      flav(1)=-flav(1)
      flav(2)=-flav(2)
      call colour_conj(colour(:,1))
      call colour_conj(colour(:,2))

      return

 999  continue
      write(*,*)
     1     ' matchcolour: incompatible colour-flavour configuration',
     2     ' better to switch off smartsig in sigborn.f ...'
      call pwhg_exit(-1)
      end





      subroutine finalize_lh
c Specify here if resonances need be written in the event file.
      implicit none
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode
      integer id4, id5

      call add_resonance(idvecbos,3,4)

c     choose id of decaying particle according to the sign of the  W and the decay mode
      id4=vdecaymode
      id5=-vdecaymode + sign(1,idvecbos)
      call change_id_particles(4,5,id4,id5)

c     The general reshuffling procedure.
      call lhefinitemasses
      end


      subroutine change_id_particles(i1,i2,id1,id2)
      implicit none
      include 'LesHouches.h'
      integer i1,i2,id1,id2
      idup(i1)=id1
      idup(i2)=id2
      end
