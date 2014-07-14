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
      call add_resonance(idvecbos,3,4)
c     The general reshuffling procedure.
      call lhefinitemasses
      end

c$$$      subroutine finalize_lh
c$$$c     Set up the resonances whose mass must be preserved
c$$$c     on the Les Houches interface.
c$$$c     
c$$$c     vector boson id and decay
c$$$      implicit none
c$$$      integer idvecbos,vdecaymode
c$$$      common/cvecbos/idvecbos,vdecaymode
c$$$c     lepton masses
c$$$      real *8 lepmass(3),decmass
c$$$      common/clepmass/lepmass,decmass
c$$$
c$$$      call add_resonance(idvecbos,4,5)
c$$$c     The following routine also performs the reshuffling of momenta if
c$$$c     a massive decay is chosen
c$$$      call momenta_reshuffle(4,5,6,decmass,0d0)
c$$$
c$$$c     fix here the W decay mode
c$$$      id5=vdecaymode
c$$$      id6=-vdecaymode + sign(1,idvecbos) 
c$$$      call change_id_particles(5,6,id5,id6)
c$$$
c$$$      end
c$$$
c$$$
c$$$
c$$$      subroutine change_id_particles(i1,i2,id1,id2)
c$$$      implicit none
c$$$      include 'LesHouches.h'
c$$$      integer i1,i2,id1,id2
c$$$      idup(i1)=id1
c$$$      idup(i2)=id2
c$$$      end
c$$$
c$$$
c$$$
c$$$c     i1<i2
c$$$      subroutine momenta_reshuffle(ires,i1,i2,m1,m2)
c$$$      implicit none
c$$$      include 'LesHouches.h'
c$$$      integer ires,i1,i2
c$$$      real * 8 m1,m2
c$$$      real * 8 ptemp(0:3),pfin(0:3),beta(3),betainv(3),modbeta,m
c$$$      real * 8 mod_pfin,m0
c$$$      integer j,id,dec
c$$$      if (i1.ge.i2) then
c$$$         write(*,*) 'wrong sequence in momenta_reshuffle'
c$$$         stop
c$$$      endif
c$$$cccccccccccccccccccccccccccccc
c$$$c construct boosts from/to vector boson rest frame 
c$$$      do j=1,3
c$$$         beta(j)=-pup(j,ires)/pup(4,ires)
c$$$      enddo
c$$$      modbeta=sqrt(beta(1)**2+beta(2)**2+beta(3)**2)
c$$$      do j=1,3
c$$$         beta(j)=beta(j)/modbeta
c$$$         betainv(j)=-beta(j)
c$$$      enddo
c$$$
c$$$      m0 = pup(5,ires)
c$$$      mod_pfin=
c$$$     $     1/(2*m0)*sqrt(abs((m0**2-m1**2-m2**2)**2 - 4*m1**2*m2**2))
c$$$               
c$$$cccccccccccccccccccccccccccccccccccccccc
c$$$c     loop of the two decay products
c$$$      
c$$$      do dec=1,2
c$$$         if(dec.eq.1) then
c$$$            id=i1
c$$$            m=m1
c$$$         else
c$$$            id=i2
c$$$            m=m2
c$$$         endif
c$$$         ptemp(0)=pup(4,id)
c$$$         do j=1,3
c$$$            ptemp(j)=pup(j,id)
c$$$         enddo
c$$$         call mboost(1,beta,modbeta,ptemp,ptemp)
c$$$         pfin(0)=sqrt(mod_pfin**2 + m**2)
c$$$         do j=1,3
c$$$            pfin(j)=ptemp(j)*mod_pfin/ptemp(0)
c$$$         enddo
c$$$         call mboost(1,betainv,modbeta,pfin,ptemp)
c$$$         do j=1,3
c$$$            pup(j,id)=ptemp(j)
c$$$         enddo
c$$$         pup(4,id)=ptemp(0)
c$$$         pup(5,id)=sqrt(abs(pup(4,id)**2-pup(1,id)**2
c$$$     $        -pup(2,id)**2-pup(3,id)**2))
c$$$         
c$$$      enddo
c$$$
c$$$      end
