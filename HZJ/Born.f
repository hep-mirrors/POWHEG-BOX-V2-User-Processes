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
c Sets up the colour for the given flavour configuration
c already filled in the Les Houches interface.
c In case there are several colour structure, one
c should pick one with a probability proportional to
c the value of the corresponding cross section, for the
c kinematics defined in the Les Houches interface
      include 'LesHouches.h'
      include 'nlegborn.h'
      include 'pwhg_flst.h'
c colours of incoming quarks, antiquarks
      integer icolqi(2),icolai(2),icolgi(2),
     #        icolqf(2),icolaf(2),icolgf(2)
      data icolqi/ 501, 0   /
      data icolai/ 0  , 502 /
      data icolgi/ 502, 501 /
      data icolqf/ 502, 0   /
      data icolaf/ 0  , 501 /
      data icolgf/ 501, 502 /
      save icolqi,icolai,icolgi,icolqf,icolaf,icolgf
      do j=1,nlegborn
c     Higgs and W decay products
         if(j.eq.3.or.j.eq.4.or.j.eq.5) then
            icolup(1,j)=0
            icolup(2,j)=0
         else
            if(idup(j).gt.0.and.idup(j).le.5) then
               if(j.le.2) then
                  icolup(1,j)=icolqi(1)
                  icolup(2,j)=icolqi(2)
               else
                  icolup(1,j)=icolqf(1)
                  icolup(2,j)=icolqf(2)
               endif
            elseif(idup(j).lt.0.and.idup(j).ge.-5) then
               if(j.le.2) then
                  icolup(1,j)=icolai(1)
                  icolup(2,j)=icolai(2)
               else
                  icolup(1,j)=icolaf(1)
                  icolup(2,j)=icolaf(2)
               endif
            elseif(idup(j).eq.21) then
               if(j.le.2) then
                  icolup(1,j)=icolgi(1)
                  icolup(2,j)=icolgi(2)
               else
                  icolup(1,j)=icolgf(1)
                  icolup(2,j)=icolgf(2)
               endif
            else
               write(*,*) '*** invalid flavour in borncolour_lh ***'
               call pwhg_exit(-1)
            endif
         endif
      enddo
      end



c$$$
c$$$      subroutine borncolour_lh
c$$$c Wrapper subroutine to call the MadGraph code to associate
c$$$c a (leading) color structure to an event.
c$$$      implicit none
c$$$      include 'nlegborn.h'
c$$$      include 'pwhg_flst.h'
c$$$      include 'pwhg_rad.h'
c$$$      integer equivto(maxprocborn)
c$$$      common/cequivtoborn/equivto
c$$$      include 'LesHouches.h'
c$$$      integer bflav0(nlegborn),bflav(nlegborn),color(2,nlegborn)
c$$$      integer i,j,iborn
c$$$      logical samecol,conjcol
c$$$c We should reach the madgraph flavour configuration that
c$$$c was actually computed, in case smartsig is on
c$$$      iborn = rad_ubornidx
c$$$      bflav0 = flst_born(:,iborn)
c$$$      do while(equivto(iborn).ne.-1)
c$$$         iborn=equivto(iborn)
c$$$      enddo
c$$$      bflav = flst_born(:,iborn)
c$$$      call born_color(bflav,color)
c$$$c Now we have the colour configuration associated with the
c$$$c amplitude that was computed instead of rad_ubornidx.
c$$$c However, that amplitude may differ from the original one
c$$$c by charge conjugation. Check if this is the case
c$$$      call matchcolour(nlegborn,bflav0,color)
c$$$      icolup(:,1:nlegborn)=color(:,1:nlegborn)
c$$$      end
c$$$


      subroutine finalize_lh
c     Set up the resonances whose mass must be preserved
c     on the Les Houches interface.
c     
c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode

      call add_resonance(idvecbos,4,5)

c     fix here the Z decay mode
      id5=vdecaymode
      id6=-vdecaymode 
      call change_id_particles(5,6,id5,id6)
      
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
