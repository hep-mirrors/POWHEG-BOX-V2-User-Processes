c When called with id1 set to the flavour of a down type quark,
c it returns in id2 the flavour mass eigenstate corresponding
c to the id1 flavour eigenstate, with a probability propoprtional
c to the ckm matrix
      subroutine randomizeckm(id1,id2)
      implicit none
      integer id1,id2
      double precision rrr(3)
      integer sigid,ind,igen
      double precision ckmsq(3,3)
      common/csetckm/ckmsq
      logical isutype,isdtype
      sigid=id1/abs(id1)
      if(isdtype(id1)) then
         call setckm
c generation:
         igen=(abs(id1)+1)/2
         rrr(:)=ckmsq(igen,:)
         call pick_random(3,rrr,ind)
         id2=(2*ind-1)*sigid
      elseif(isutype(id1)) then
         call setckm
c generation:
         igen=abs(id1)/2
         rrr(:)=ckmsq(:,igen)
         call pick_random(3,rrr,ind)
         id2= 2*ind*sigid
      else
         write(*,*) ' randomizeckm, arg 1 not a quark:',id1
         call pwhg_exit(-1)
      endif
      end


      subroutine setckm
      implicit none
      double precision ckmsq(3,3)
      common/csetckm/ckmsq
      logical ini
      data ini/.true./
      save /csetckm/,ini
      if(ini) then
c pdg review, June 18 2012

         ckmsq(1,1)=(0.97427d0)**2  ! ud
         ckmsq(1,2)=(0.22534d0)**2  ! us
         ckmsq(1,3)=(0.00351d0)**2  ! ub

         ckmsq(2,1)=(0.22520d0)**2  ! cd
         ckmsq(2,2)=(0.97344d0)**2  ! cs
         ckmsq(2,3)=(0.04120d0)**2  ! cb

         ckmsq(3,1)=(0.00867d0)**2  ! td
         ckmsq(3,2)=(0.04040d0)**2  ! ts
         ckmsq(3,3)=(0.999146d0)**2 ! tb

         ini=.false.

      endif
      end


c      program testckm
c      implicit none
c      integer id1,id2
c      double precision tot(6)
c      integer m
c
c      do id1=1,5,2
c
c         tot=0
c         do m=1,100000000
c            call randomizeckm(id1,id2)
c            tot(id2)=tot(id2)+1
c         enddo
c         tot=tot/(m-1)
c         tot=sqrt(tot)
c         write(*,*) tot
c      enddo
c
c      end
