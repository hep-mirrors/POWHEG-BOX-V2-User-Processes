c Given an off shell top configuration, with top masses mt,mtb and
c w masses mwp,mwm, map it into an on shell top configuration, with
c top mass (mt+mtb)/2. The mapping of the w mass is done as follows.
c The top decay phase space, together with the w Breit Wigner, has
c weight (neglecting the b mass)
c  mt^2 - mwp^2            1
c -------------  -----------------------  d mwp^2
c     mt^2        (mwp^2 - Mw^2)^2+MwG^2
c that integrates to
c              mt^2 - mwp^2   1        mwp^2-Mw^2       1
c F(mwp,mt) =  ------------  --- atan( ---------- ) - ----- log( (mwp^2 - Mw^2)^2 + MwG^2 )
c                 mt^2       MwG          MwG         2mt^2
c We thus compute the value
c     F(mwp,mt)-F(0,mt)
c z = -----------------
c       F(mt))-F(0,mt)
c (mwp has a minimum of 0 and a maximum of mt). The compute the new mwp value,
c such that
c      F(mwnew,mtnew) - F(0,mtnew)
c z = ----------------------------
c         F((mtnew) - F(0,mtnew)
c with mtnew being the new "on shell" Mt value.
c We must set up a framework to solve this last equation.
c

      function solveforwmass(mw)
      implicit none
      double precision solveforwmass,mw
      double precision mt2,wmass2,mg,value
      common/csolveforwmass/ mt2,wmass2,mg,value
      solveforwmass = (mt2-wmass2)/(mt2*mg)*atan((mw**2-wmass2)/mg)
     1     -1/(2*mt2)*log((mw**2-wmass2)**2+mg**2) - value
      end


      subroutine findnewmassw(mtold,wmass,wwidth,mw,mtnew,mwnew)
      implicit none
      real * 8 mtold,wmass,wwidth,mw,mtnew,mwnew
      real * 8 mt2,wmass2,mg,value
      common/csolveforwmass/mt2,wmass2,mg,value
      real * 8 x,z,err
      integer j
      real * 8 solveforwmass
      external solveforwmass
      wmass2 = wmass**2
      mg = wmass*wwidth
c
      mt2 = mtold**2
      value = 0

      z = (solveforwmass(mw) - solveforwmass(0d0))/
     1    (solveforwmass(mtold) - solveforwmass(0d0))

      mt2 = mtnew**2
c solve F(mwnew,mtnew) such that z is the same
      value = z * (solveforwmass(mtnew) - solveforwmass(0d0))
     1     + solveforwmass(0d0)
      call dzero(0d0,mtnew,mwnew,err,1d-8,1000000,solveforwmass)

      end
      


C$$$      implicit none
C$$$      real * 8 mtold,wmass,wwidth,mw,mtnew,mwnew
C$$$      integer j
C$$$ 1    write(*,*) ' Enter mtold,mtnew'
C$$$      read(*,*) mtold,mtnew

C$$$      wmass = 80
C$$$      wwidth = 2

C$$$      do j=1,99
C$$$         mw = (mtold/100)*j
C$$$         call findnewmassw(mtold,wmass,wwidth,mw,mtnew,mwnew)
C$$$         write(11,*) mw,mwnew
C$$$      enddo
C$$$      write(11,*) ' join'
C$$$      write(11,*) ' newplot'
C$$$      goto 1
C$$$      end

      subroutine settopmass(val)
      implicit none
      real * 8 val
      include 'masses.f'
      mt=val
      end


      subroutine setupbacktoback(m,m1,m2,p1,p2)
c sets up the momenta p1 and p2 to have masses m1 and m2, to be back to back
c with p1 not changing direction, and to have total energy m
      implicit none
      double precision m,m1,m2,p1(0:3),p2(0:3)
      double precision p
      p = sqrt((m-(m1+m2))*(m+(m1+m2))*(m-(m1-m2))*(m+(m1-m2)))
     1        /(2*m)
      p1(0) = sqrt(p**2+m1**2)
      p2(0) = sqrt(p**2+m2**2)
      p1(1:3) = p1(1:3) * p /sqrt(p1(1)**2+p1(2)**2+p1(3)**2)
      p2(1:3) = - p1(1:3)
      end


      subroutine onshellmap(nlegs,pin,pout)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      integer nlegs
      double precision pin(0:3,nlegreal),pout(0:3,nlegreal)
      integer ii1,ii2,it,itb,iwp,iwm,iwpa,iwpf,iwmf,iwma,ib,ibb,ip
      common/inputprocind/ii1,ii2,it,itb,iwp,iwm,iwpa,iwpf,iwmf,iwma,
     1     ib,ibb,ip
      double precision mt,mtb,mwp,mwm,mtnew,mwpnew,mwmnew
      double precision ppp(0:3,nlegreal)

      mt  = sqrt(pin(0,it)**2
     1     -pin(1,it)**2-pin(2,it)**2-pin(3,it)**2)
      mtb = sqrt(pin(0,itb)**2
     1     -pin(1,itb)**2-pin(2,itb)**2-pin(3,itb)**2)
      mwp = sqrt(pin(0,iwp)**2
     1     -pin(1,iwp)**2-pin(2,iwp)**2-pin(3,iwp)**2)
      mwm = sqrt(pin(0,iwm)**2
     1     -pin(1,iwm)**2-pin(2,iwm)**2-pin(3,iwm)**2)

      mtnew = (mt+mtb)/2

      call settopmass(mtnew)

      call findnewmassw(mt-ph_bmass, ph_wmass,ph_wwidth,
     1     mwp,mtnew-ph_bmass,mwpnew)
      call findnewmassw(mtb-ph_bmass,ph_wmass,ph_wwidth,
     1     mwm,mtnew-ph_bmass,mwmnew)

      call newmassmap(nlegs,pin,mtnew,mtnew,mwpnew,mwmnew,pout)

      end

      subroutine offshellmapreal
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'onshellmap.h'
      integer ii1,ii2,it,itb,iwp,iwm,iwpa,iwpf,iwmf,iwma,ib,ibb,ip
      common/inputprocind/ii1,ii2,it,itb,iwp,iwm,iwpa,iwpf,iwmf,iwma,
     1     ib,ibb,ip
      double precision mt,mtb,mwp,mwm

      mt  = sqrt(cmpborn_os(0,it)**2-cmpborn_os(1,it)**2
     1     -cmpborn_os(2,it)**2-cmpborn_os(3,it)**2)
      mtb = sqrt(cmpborn_os(0,itb)**2 -cmpborn_os(1,itb)**2
     1     -cmpborn_os(2,itb)**2-cmpborn_os(3,itb)**2)
      mwp = sqrt(cmpborn_os(0,iwp)**2-cmpborn_os(1,iwp)**2
     1     -cmpborn_os(2,iwp)**2-cmpborn_os(3,iwp)**2)
      mwm = sqrt(cmpborn_os(0,iwm)**2-cmpborn_os(1,iwm)**2
     1     -cmpborn_os(2,iwm)**2-cmpborn_os(3,iwm)**2)

      call newmassmap(nlegreal,kn_preal,mt,mtb,mwp,mwm,preal_os)

      end


      subroutine newmassmap(nlegs,pin,mtnew,mtbnew,mwpnew,mwmnew,pout)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      integer nlegs
      double precision pin(0:3,nlegreal),pout(0:3,nlegreal)
      double precision mtnew,mtbnew,mwpnew,mwmnew
      double precision prec(0:3),mrec,yrec,beta,vec(3),betat,vect(3),
     1     et,etb,ecm
      integer ii1,ii2,it,itb,iwp,iwm,iwpa,iwpf,iwmf,iwma,ib,ibb,ip
      common/inputprocind/ii1,ii2,it,itb,iwp,iwm,iwpa,iwpf,iwmf,iwma,
     1     ib,ibb,ip
      double precision ptmp(0:3,nlegreal),ppp(0:3,nlegreal),ptrec
      integer mapres(nlegreal),resemitter
      if(nlegs.eq.nlegreal) then
c kn_resemitter is normally set in sigreal.f, as a function of flst_alrres.
c In cases (as the present one) when the Born resonance structure is the same
c for all flavour structures, it can also be set here, since it does only
c depend upon the emitter.
         kn_resemitter = flst_bornres(kn_emitter,1)
         resemitter = kn_resemitter
         mapres(nlegs) = kn_resemitter
      else
         resemitter = -1
      endif

      mapres(1:nlegborn) = flst_bornres(1:nlegborn,1)

c find longitudinal boost to ttbar longitudinal rest frame
      prec(:)=pin(:,it)+pin(:,itb)
      mrec = sqrt(prec(0)**2-prec(1)**2-prec(2)**2-prec(3)**2)
      yrec = log((prec(0)+prec(3))/(prec(0)-prec(3)))/2
      beta = -tanh(yrec)
      vec = (/ 0d0, 0d0, 1d0 /)
      call mboost(nlegs,vec,beta,pin,ptmp)
      if(resemitter.eq.0) then
c find transverse boost to 0 pt of recoil system
         prec(:)=ptmp(:,it)+ptmp(:,itb)
         ptrec = sqrt(prec(1)**2+prec(2)**2)
         vect(:) = prec(1:3)/ptrec
         betat = -ptrec/prec(0)
         call mboost(nlegborn,vect,betat,ptmp,ptmp)
      endif
c      mt  = sqrt(ptmp(0,it)**2
c     1     -ptmp(1,it)**2-ptmp(2,it)**2-ptmp(3,it)**2)
c      mtb = sqrt(ptmp(0,itb)**2
c     1     -ptmp(1,itb)**2-ptmp(2,itb)**2-ptmp(3,itb)**2)
c      mwp = sqrt(ptmp(0,iwp)**2
c     1     -ptmp(1,iwp)**2-ptmp(2,iwp)**2-ptmp(3,iwp)**2)
c      mwm = sqrt(ptmp(0,iwm)**2
c     1     -ptmp(1,iwm)**2-ptmp(2,iwm)**2-ptmp(3,iwm)**2)

c CM energy
      et  = ptmp(0,it)
      etb = ptmp(0,itb)
      ecm = et+etb

      call boost2resonrec(nlegs,ptmp,mapres)

c t tbar system must be rescaled
      call setupbacktoback(ecm,mtnew,mtbnew,ptmp(:,it),ptmp(:,itb))
      if(resemitter.eq.it) then
         call setup3body(mtnew,mwpnew,ph_bmass,ptmp(:,iwp),
     1        ptmp(:,ib),ptmp(:,nlegs))
      else
         call setupbacktoback(mtnew,mwpnew,ph_bmass,
     1        ptmp(:,iwp),ptmp(:,ib))
      endif
      if(resemitter.eq.itb) then
         call setup3body(mtbnew,mwmnew,ph_bmass,ptmp(:,iwm),
     1        ptmp(:,ibb),ptmp(:,nlegs))
      else
         call setupbacktoback(mtbnew,mwmnew,ph_bmass,
     1        ptmp(:,iwm),ptmp(:,ibb))
      endif
      if(resemitter.eq.iwp) then
         if(kn_emitter.eq.iwpa) then
            call setup3body(mwpnew,0d0,0d0,ptmp(:,iwpf),
     1           ptmp(:,iwpa),ptmp(:,nlegs))
         else
            call setup3body(mwpnew,0d0,0d0,ptmp(:,iwpa),
     1           ptmp(:,iwpf),ptmp(:,nlegs))
         endif
      else
         call setupbacktoback(mwpnew,0d0,0d0,
     1        ptmp(:,iwpf),ptmp(:,iwpa))
      endif
      if(resemitter.eq.iwm) then
         if(kn_emitter.eq.iwma) then
            call setup3body(mwmnew,0d0,0d0,ptmp(:,iwmf),
     1           ptmp(:,iwma),ptmp(:,nlegs))
         else
            call setup3body(mwmnew,0d0,0d0,ptmp(:,iwma),
     1           ptmp(:,iwmf),ptmp(:,nlegs))
         endif
      else
         call setupbacktoback(mwmnew,0d0,0d0,
     1        ptmp(:,iwmf),ptmp(:,iwma))
      endif

c boost back to rebuild the whole system
      call boost2resonrecinv(nlegs,ptmp,mapres)

      if(resemitter.eq.0) then
c revert transverse boost
         betat = - betat
         call mboost(nlegborn,vect,betat,ptmp,ptmp)
      endif
c revert longitudinal boost
      beta = - beta
      call mboost(nlegs,vec,beta,ptmp,pout)

c check momentum conservation in pout
      call checkmommap(nlegs,mapres,pin,pout)
      end

      subroutine checkmommap(nlegs,mapres,pin,pout)
      implicit none
      integer nlegs
      integer mapres(nlegs),j
      real * 8 pin(0:3,nlegs),pout(0:3,nlegs),ptmp(0:3),tmperr
c reminder of flavour assignment:
c 1   2   3   4   5   6    7    8    9   10   11   12    13
c in  in  t   t~  W+  W-   l+   nu   l-  nu~  b    b~    parton
c 0   0   0   0   3   4    5    5    6   6    3    4     (0|3|4|5|7)
      do j=1,nlegs
         if(j.le.2.or.(j.eq.13.and.mapres(j).eq.0)) then
            tmperr = sum(abs(pin(:,j)-pout(:,j)))
            if(tmperr.gt.1d-6) then
               write(*,*) 'checkmommap: input and output momentum'
               write(*,*) 'for particle ',j,'differ by',tmperr
            endif
         endif
      enddo
c W+ momentum
      ptmp = pout(:,5)-pout(:,7)-pout(:,8)
      if(nlegs.eq.13.and.mapres(nlegs).eq.5)  ptmp = ptmp-pout(:,nlegs)
      tmperr = sum(abs(ptmp))
      if(tmperr.gt.1d-6) then
         write(*,*) 'checkmommap: W+ momentum differs from'
         write(*,*) 'its decay products by ',tmperr
      endif
c W- momentum
      ptmp = pout(:,6)-pout(:,9)-pout(:,10)
      if(nlegs.eq.13.and.mapres(nlegs).eq.6)  ptmp = ptmp-pout(:,nlegs)
      tmperr = sum(abs(ptmp))
      if(tmperr.gt.1d-6) then
         write(*,*) 'checkmommap: W- momentum differs from'
         write(*,*) 'its decay products by ',tmperr
      endif
c t momentum
      ptmp = pout(:,3)-pout(:,5)-pout(:,11)
      if(nlegs.eq.13.and.mapres(nlegs).eq.3)  ptmp = ptmp-pout(:,nlegs)
      tmperr = sum(abs(ptmp))
      if(tmperr.gt.1d-6) then
         write(*,*) 'checkmommap: t momentum differs from'
         write(*,*) 'its decay products by ',tmperr
      endif
c tbar momentum
      ptmp = pout(:,4)-pout(:,6)-pout(:,12)
      if(nlegs.eq.13.and.mapres(nlegs).eq.4)  ptmp = ptmp-pout(:,nlegs)
      tmperr = sum(abs(ptmp))
      if(tmperr.gt.1d-6) then
         write(*,*) 'checkmommap: tbar momentum differs from'
         write(*,*) 'its decay products by ',tmperr
      endif
      end

      subroutine boost2resonrec(nlegs,p,mapres)
c Given the momenta of a system including resonances and its decay products,
c including chain decays, it boosts all decay products to the rest frame
c of the resonance they belong to.
      implicit none
c nlegs is the number of particles, mapres is an index that points to the
c resonance that generated the particle, or 0 if the particle has no
c mother resonance
      integer nlegs,mapres(nlegs)
      double precision p(1:4,nlegs)
      integer level
      integer j,k
      integer levelof
      logical comesfrom
c particles that are not sons of resonances have level=0, those
c that are son of a resonance of level 0 are level 1, and so on
      do level=0,nlegs
c there are at most nlegs levels
         do j=1,nlegs
            if(levelof(j,nlegs,mapres) == level) then
               do k=1,nlegs
                  if(comesfrom(j,k,nlegs,mapres)) then
                     call boost2reson(p(:,j),1,p(:,k),p(:,k))
                  endif
               enddo
            endif
         enddo
      enddo
      end

      subroutine boost2resonrecinv(nlegs,p,mapres)
c Inverse operation of the above
      implicit none
c nlegs is the number of particles, mapres is an index that points to the
c resonance that generated the particle, or 0 if the particle has no
c mother resonance
      integer nlegs,mapres(nlegs)
      double precision p(1:4,nlegs)
      integer level
      integer j,k
      integer levelof
      logical comesfrom
c particles that are not sons of resonances have level=0, those
c that are son of a resonance of level 0 are level 1, and so on
      do level=nlegs,0,-1
c there are at most nlegs levels
         do j=1,nlegs
            if(levelof(j,nlegs,mapres) == level) then
               do k=3,nlegs
                  if(comesfrom(j,k,nlegs,mapres)) then
                     call boost2resoninv(p(:,j),1,p(:,k),p(:,k))
                  endif
               enddo
            endif
         enddo
      enddo
      end

      function levelof(j,nlegs,mapres)
      integer levelof,j,nlegs,mapres(nlegs)
      integer k
      levelof = 0
      k=j
 1    continue
      k=mapres(k)
      if(k.ne.0) then
         levelof = levelof+1
         goto 1
      else
         return
      endif
      end

      function comesfrom(j,k,nlegs,mapres)
      logical comesfrom
      integer j,k,nlegs,mapres(nlegs)
      integer l
      l=k
 1    continue
      l=mapres(l)
      if(l.eq.j) then
         comesfrom = .true.
         return
      elseif(l.eq.0) then
         comesfrom = .false.
         return
      endif
      goto 1
      end

         
      
      subroutine setup3body(m,m1,m2,p1,p2,p3)
c sets up the momenta p1 p2 p3 to have masses m1 m2 m3,
c with p1 .. p3 not changing direction, and to have total energy m
      implicit none
      double precision m,m1,m2,m23,p1(0:3),p2(0:3),p3(0:3),p23(0:3)
      double precision pp,lll,beta,vec(3),pp23
      double precision mm1,pp1,mm2,pp2,pp3,rpp1,rpp2,rpp3,x,xu,xl,y,elam
      logical ini,altmap
      data ini/.true./
      save ini,altmap
      double precision powheginput
      external powheginput
      elam(y)=sqrt(mm1+y**2*pp1)+sqrt(mm2+y**2*pp2)+y*rpp3
      if(ini) then
         if(powheginput("#altmap").eq.1) then
            altmap = .true.
         else
            altmap = .false.
         endif
         ini = .false.
      endif

      if(altmap) then
c Mapping that preserves as much as possible the emitter emitted relative kinematics
         p23 = p2+p3
         m23 = sqrt(p23(0)**2-p23(1)**2-p23(2)**2-p23(3)**2)
         if(m1+m23.gt.m) goto 10

c 23 system and particle 1 must end up with the following momentum modulus:
         pp = sqrt((m**2-(m1+m23)**2)*(m**2-(m1-m23)**2))/(2*m)
c modulus of 1 momentum
         pp1 = sqrt(p1(1)**2+p1(2)**2+p1(3)**2)
c new p1 momentum
         p1(1:3) = p1(1:3)*pp/pp1
         p1(0) = sqrt(pp**2+m1**2)
c modulus of 2 momentum
         pp23 = sqrt(p23(1)**2+p23(2)**2+p23(3)**2)
         lll = ( (p23(0)+pp23)/(sqrt(m23**2+pp**2)+pp) )**2
         beta = (1-lll)/(1+lll)
         vec = - p1(1:3)/pp
         call mboost(1,vec,beta,p2,p2)
         call mboost(1,vec,beta,p3,p3)
c         write(*,*) ' altmap test: ',sum(abs(p1(1:3)+p2(1:3)+p3(1:3))),
c     1        abs(m-p1(0)-p2(0)-p3(0))
         return
      endif

 10   continue

      if(m1+m2.gt.m) then
         write(*,*) '  setup3body: m1+m2>m',m1+m2,'>',m
         write(*,*) ' impossible!'
         call pwhg_exit(-1)
      endif
      pp1=p1(1)**2+p1(2)**2+p1(3)**2
      pp2=p2(1)**2+p2(2)**2+p2(3)**2
      mm1=m1**2
      mm2=m2**2
      rpp1=sqrt(pp1)
      rpp2=sqrt(pp2)
      rpp3=sqrt(p3(1)**2+p3(2)**2+p3(3)**2)
c cannot be larger than the following:
      xu=m/(rpp1+rpp2+rpp3)
c cannot be begative
      xl=0
 1    x = (xl+xu)/2
      if((xu-xl)/(xu+xl).lt.1d-13) then
         p1(1:3) = x*p1(1:3)
         p2(1:3) = x*p2(1:3)
         p3(1:3) = x*p3(1:3)
         p1(0)=sqrt(mm1+pp1*x**2)
         p2(0)=sqrt(mm2+pp2*x**2)
         p3(0)=x*rpp3
         return
      endif
      if(elam(x).gt.m) then
         xu = x
         goto 1
      else
         xl=x
         goto 1
      endif
      end
