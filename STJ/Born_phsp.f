      subroutine born_phsp(xborn)
      implicit none
      include 'brinclude.h'
      include 'pwhg_kn.h'
      include 'PhysPars.h'
      real * 8 xborn(ndiminteg-3),jac
      logical ini
      data ini/.true./
      save ini
      integer i,j

c Set-up single-top phase-space
      brkn_ktmin=0
      call born_phsp_ST(xborn)

c Use an initial state emission to get the single-top+jet Born
c phase-space
      brkn_emitter=0
      call br_real_phsp_isr(xborn(ndiminteg-5),jac)
      kn_cmpborn=brkn_cmpreal
      kn_pborn=brkn_preal
      kn_xb1=brkn_x1
      kn_xb2=brkn_x2

      kn_jacborn=brkn_jacborn*jac

c     set the CMS energy 
      kn_sborn=brkn_sreal

c     minimal final state mass 
      kn_minmass=brkn_ktmin + sqrt(brkn_ktmin**2 + ph_tmass**2)

c     Minimum pT cut-off on the two light jets set by bornktmin in
c     powheg.input . This is a crude solution. A better solution is
c     obviously to not generate this phase space in the first place.
c     If the code sees kn_jacborn=0 virtual.f will notice this and
c     avoid computing the virtuals. This has been implemented to
c     avoid computing the virtuals in regions of phase space for 
c     which that is problematic.
      if(kn_pborn(1,nlegborn)**2+kn_pborn(2,nlegborn)**2.lt.
     $   kn_ktmin**2) kn_jacborn=0d0
      if(kn_pborn(1,nlegborn-1)**2+kn_pborn(2,nlegborn-1)**2.lt.
     $   kn_ktmin**2) kn_jacborn=0d0

c$$$      do i=1,maxprocreal
c$$$         write (*,*) 'regular',i,(flst_regular(j,i),j=1,nlegreal)
c$$$      enddo
c$$$      do i=1,flst_nalr
c$$$         write (*,*) 'alr',i,(flst_alr(j,i),j=1,nlegreal),'|'
c$$$     $        ,flst_mult(i),'|',(flst_uborn(j,i),j=1,nlegborn)
c$$$      enddo
      
      end


      subroutine born_phsp_ST(xborn)
      implicit none
      include 'brinclude.h'
      include 'pwhg_kn.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'

      real * 8 xborn(ndiminteg-3)
      real * 8 vec(3),cth,cthdec,phidec,s,
     #     z,zhigh,zlow
      integer mu,k,j
      logical ini
      data ini/.true./
      save ini

cccccccccccccccccccc
c     from POWHEG-st_dec code
      real *8 xx(3),m2top,xplus,xminus,cth1
      real *8 tau,tau_min,tau_max,tmp,ycm,ycm_min,ycm_max
      real *8 jacb,shat,s_had,ro,beta

      real *8 tmin,tmax,random_min,random_max,random_t

      integer ixx_mtop,ixx_tau,ixx_ycm,ixx_cth1
      parameter(
     #ixx_tau  =1,
     #ixx_ycm  =2,
     #ixx_cth1 =3)
      real *8 Eloc,m2topbar
ccccccccccccccccccccc

      if(ini) then
         do k=1,nlegborn
            kn_masses(k)=0
         enddo
         kn_masses(nlegreal)=0
         ini=.false.
      endif
c     top is massive
      kn_masses(3)=ph_tmass


c     local copy of variables
c     xx(1) -> tau
c     xx(2) -> ycm
c     xx(3) -> cth1
      do k=1,3
         xx(k)=xborn(k)
      enddo

      s_had=kn_sbeams
      jacb=1d0
      
c     born phase space: variables
      m2top=ph_tmass**2

c$$$c     sets mtop used in mcnlo subroutines (passed with stpcblks.h)
c$$$c     Needed here because in case of BW distribution, this mass
c$$$c     has to change event by event
c$$$      xm1=sqrt(m2top)
c$$$      xm12=m2top

      tau_min=(sqrt(m2top)+0d0)**2/s_had
      tau_max=1d0
c$$$c     imp. sampling (flat in 1/tau )
c$$$      tmp=1d0/tau_max + (1d0/tau_min-1d0/tau_max)*xx(ixx_tau)
c$$$      tau=1d0/tmp
c$$$      jacb=jacb * tau**2 * (1d0/tau_min-1d0/tau_max)

      tau=exp(log(tau_min)*(1-xx(ixx_tau)**2))
      jacb=jacb*tau*abs(log(tau_min))*2*xx(ixx_tau)

      ycm_min=  log(tau)/2
      ycm_max= -log(tau)/2
      ycm = ycm_min + xx(ixx_ycm)*(ycm_max-ycm_min)
      jacb=jacb * (ycm_max-ycm_min)

      shat=tau*s_had
      ro = 2d0/shat*(m2top + 0d0) - 
     #     (m2top - 0d0)**2/shat**2
      beta = sqrt(1-ro)

c     th1 is the angle of 1st outgoing particle wrt +z axis
c     uniform generation
c$$$         call zzchvar(xx(ixx_cth1),cth1,jacb,ro) !: use this to do exactly the same as mc@nlo
      cth1=-1d0+xx(ixx_cth1)*2d0 
      jacb=jacb * 2d0 
 
c     born phase space: physical phase space
      jacb=jacb * beta/16d0/pi   ! *( d_phi/(2d0*pi) )

c     Feynman x's and Mandelstam invariants
      xplus=sqrt(tau) * exp(ycm)
      xminus=sqrt(tau) * exp(-ycm)

cccccccccccccccccccccccccccc
c     assign born jacobian and default kinematics variables
      brkn_jacborn=jacb
      cthdec=cth1
      phidec=0d0
c     With this choice px_top is always positive, but at the end the whole
c     event will be randomly rotated around z-axis
      brkn_sborn=shat
cccccccccccccccccccccccccccc

cccccccccccccccccccccccccccccc
c     compute momenta
cccccccccccccccccccccccccccccc

c Build kinematics
      brkn_xb1=xplus
      brkn_xb2=xminus

c initial state particles
      brkn_cmpborn(0,1)=sqrt(shat)/2
      brkn_cmpborn(0,2)=brkn_cmpborn(0,1)
      brkn_cmpborn(3,1)=brkn_cmpborn(0,1)
      brkn_cmpborn(3,2)=-brkn_cmpborn(0,2)
      brkn_cmpborn(1,1)=0
      brkn_cmpborn(1,2)=0
      brkn_cmpborn(2,1)=0
      brkn_cmpborn(2,2)=0  

c final state particles    
      m2topbar=m2top
      Eloc=(shat-m2topbar)/2d0/sqrt(shat)

      brkn_cmpborn(0,3)=sqrt(Eloc**2 + m2topbar)
      brkn_cmpborn(0,4)=Eloc

      brkn_cmpborn(3,3)=cthdec                       *Eloc
      brkn_cmpborn(1,3)=sqrt(1-cthdec**2)*cos(phidec)*Eloc
      brkn_cmpborn(2,3)=sqrt(1-cthdec**2)*sin(phidec)*Eloc

      brkn_cmpborn(1,4)=-brkn_cmpborn(1,3)
      brkn_cmpborn(2,4)=-brkn_cmpborn(2,3)
      brkn_cmpborn(3,4)=-brkn_cmpborn(3,3)

c now boost everything along 3
      beta=(brkn_xb1-brkn_xb2)/(brkn_xb1+brkn_xb2)
      vec(1)=0
      vec(2)=0
      vec(3)=1
      call mboost(nlegborn-3,vec,beta,brkn_cmpborn(0,3),brkn_pborn(0,3))
      do mu=0,3
         brkn_pborn(mu,1)=brkn_xb1*kn_beams(mu,1)
         brkn_pborn(mu,2)=brkn_xb2*kn_beams(mu,2)
      enddo
      call checkmomzero(nlegborn-1,brkn_pborn)
c      call checkmass(2,brkn_pborn(0,3))

      end



      
      subroutine br_real_phsp_isr(xrad,jac)
      implicit none
      real * 8 xrad(3),jac
      include 'pwhg_math.h'
      include 'brinclude.h'
      real * 8 xjac
      brkn_csitilde=(3-2*xrad(1))*xrad(1)**2
      xjac=6*(1-xrad(1))*xrad(1)
      brkn_y=1-2*xrad(2)
      xjac=xjac*2
      xjac=xjac*1.5d0*(1-brkn_y**2)
      brkn_y=1.5d0*(brkn_y-brkn_y**3/3)
      brkn_azi=2*pi*xrad(3)
      xjac=xjac*2*pi
      call br_compcsimax
      brkn_csi=brkn_csitilde*brkn_csimax
      call br_real_phsp_isr_rad
      jac=xjac*brkn_jacreal*brkn_csimax
      end

      subroutine br_compcsimax
      implicit none
      include 'brinclude.h'
      real * 8 y,xb1,xb2
      xb1=brkn_xb1
      xb2=brkn_xb2
      y=brkn_y
      brkn_csimax=1-max(2*(1+y)*xb1**2/
     1    (sqrt((1+xb1**2)**2*(1-y)**2+16*y*xb1**2)+(1-y)*(1-xb1**2)),
     1            2*(1-y)*xb2**2/
     1    (sqrt((1+xb2**2)**2*(1+y)**2-16*y*xb2**2)+(1+y)*(1-xb2**2)))
      end

      subroutine br_real_phsp_isr_rad
      implicit none
      include 'pwhg_math.h'
      include 'brinclude.h'
      include 'pwhg_kn.h'
      real * 8 y,xb1,xb2,x1,x2,betal,betat,vecl(3),vect(3),
     1         cth,sth,cph,sph,csi,pt2
      integer i,mu
      real * 8 dotp
      external dotp
c the following call sets brkn_csimax, brkn_csimaxp, brkn_csimaxm
c also when br_real_phsp_isr_rad is called directly
c (i.e. not through br_real_phsp_isr_rad0)
      call br_compcsimax
      y=brkn_y
      xb1=brkn_xb1
      xb2=brkn_xb2
      csi=brkn_csi
      cth=y
      sth=sqrt(1-cth**2)
      cph=cos(brkn_azi)
      sph=sin(brkn_azi)
      x1=xb1/sqrt(1-csi)*sqrt((2-csi*(1-y))/(2-csi*(1+y)))
      x2=xb2/sqrt(1-csi)*sqrt((2-csi*(1+y))/(2-csi*(1-y)))
      brkn_x1=x1
      brkn_x2=x2
      do mu=0,3
         brkn_preal(mu,1)=kn_beams(mu,1)*x1
         brkn_preal(mu,2)=kn_beams(mu,2)*x2
      enddo
      brkn_sreal=brkn_sborn/(1-csi)
c Build k_n+1 in the rest frame of brkn_preal
c      write(*,*) ' br_nlegreal ',br_nlegreal
      brkn_preal(0,br_nlegreal)=sqrt(brkn_sreal)*csi/2
      brkn_preal(1,br_nlegreal)=brkn_preal(0,br_nlegreal)*sth*sph
      brkn_preal(2,br_nlegreal)=brkn_preal(0,br_nlegreal)*sth*cph
      brkn_preal(3,br_nlegreal)=brkn_preal(0,br_nlegreal)*cth
c boost it to the frame of brkn_preal
      do i=1,3
         vecl(i)=(brkn_preal(i,1)+brkn_preal(i,2))
     1          /(brkn_preal(0,1)+brkn_preal(0,2))
      enddo      
      betal=sqrt(vecl(1)**2+vecl(2)**2+vecl(3)**2)
      if(betal.gt.0) then
         do i=1,3
            vecl(i)=vecl(i)/betal
         enddo
      else
         vecl(1)=1
         vecl(2)=0
         vecl(3)=0
      endif
      call mboost(1,vecl,betal,
     1    brkn_preal(0,br_nlegreal),brkn_preal(0,br_nlegreal))
c longitudinal boost of underlying Born to zero rapidity frame
      do i=1,3
         vecl(i)=(brkn_pborn(i,1)+brkn_pborn(i,2))
     1          /(brkn_pborn(0,1)+brkn_pborn(0,2))
      enddo
      betal=sqrt(vecl(1)**2+vecl(2)**2+vecl(3)**2)
      if(betal.gt.0) then
         do i=1,3
            vecl(i)=vecl(i)/betal
         enddo
      else
         vecl(1)=1
         vecl(2)=0
         vecl(3)=0
      endif
      call mboost(br_nlegborn-2,vecl,-betal,
     1 brkn_pborn(0,3),brkn_preal(0,3))
c      call printtot(br_nlegborn,brkn_preal(0,1))
c construct transverse boost velocity
      vect(3)=0
      vect(1)=brkn_preal(1,br_nlegreal)
      vect(2)=brkn_preal(2,br_nlegreal)
      pt2=vect(1)**2+vect(2)**2
c      betat=1/sqrt(1+(brkn_sreal*(1-csi))/pt2)
      betat=sqrt(pt2/(pt2+brkn_sreal*(1-csi)))
      if(pt2.eq.0) then
         vect(1)=1
         vect(2)=0
      else
         vect(1)=vect(1)/sqrt(pt2)
         vect(2)=vect(2)/sqrt(pt2)
      endif
c     write(*,*) ' k+1: ',(brkn_preal(mu,br_nlegreal),mu=0,3)
         call mboost(br_nlegborn-2,vect,-betat,
     1        brkn_preal(0,3),brkn_preal(0,3))
c      call printtot(nlegborn,brkn_preal(0,1))
c longitudinal boost in opposite direction
      call mboost(br_nlegborn-2,vecl,betal,
     1 brkn_preal(0,3),brkn_preal(0,3))
c      call printtot(br_nlegreal,brkn_preal(0,1))
      brkn_jacreal=brkn_sreal/(4*pi)**3*csi/(1-csi)
      call br_compcmkin
c$$$      call br_compdij
      end


      subroutine br_compcmkin
      implicit none
      include 'brinclude.h'
      real * 8 vecl(3),betal
      data vecl/0d0,0d0,1d0/
      save vecl
      betal=-(brkn_preal(3,1)+brkn_preal(3,2))/
     1 (brkn_preal(0,1)+brkn_preal(0,2))
      call mboost(br_nlegreal,vecl,betal,brkn_preal,brkn_cmpreal)
      end

c$$$      subroutine br_compdij
c$$$      implicit none
c$$$      include 'brinclude.h'
c$$$      integer j,k
c$$$      real * 8 y
c$$$      real * 8 crossp,dotp
c$$$      external crossp,dotp
c$$$      do j=4,br_nlegreal
c$$$         y=1-dotp(brkn_cmpreal(0,1),brkn_cmpreal(0,j))
c$$$     1 /(brkn_cmpreal(0,1)*brkn_cmpreal(0,j))
c$$$         brkn_dijterm(0,j)=(brkn_cmpreal(0,j)**2
c$$$     1 *(1-y**2))**brpar_diexp
c$$$         brkn_dijterm(1,j)=(brkn_cmpreal(0,j)**2
c$$$     1 *2*(1-y))**brpar_diexp
c$$$         brkn_dijterm(2,j)=(brkn_cmpreal(0,j)**2
c$$$     1 *2*(1+y))**brpar_diexp
c$$$      enddo
c$$$      do j=4,br_nlegreal
c$$$         do k=j+1,br_nlegreal
c$$$            brkn_dijterm(j,k)=
c$$$     1(2*dotp(brkn_cmpreal(0,k),brkn_cmpreal(0,j))*
c$$$     1       brkn_cmpreal(0,k)*brkn_cmpreal(0,j)
c$$$     2    /  (brkn_cmpreal(0,k)+brkn_cmpreal(0,j))**2)**brpar_dijexp
c$$$c     2    /  ((brkn_cmpreal(1,k)+brkn_cmpreal(1,j))**2+
c$$$c     3        (brkn_cmpreal(2,k)+brkn_cmpreal(2,j))**2+
c$$$c     4        (brkn_cmpreal(3,k)+brkn_cmpreal(3,j))**2))**brpar_dijexp
c$$$         enddo
c$$$      enddo
c$$$      end

      

      subroutine born_suppression(fact)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_flst.h'
      include 'pwhg_kn.h'
      include 'pwhg_flg.h'
      real * 8 fact,ptmin
      real * 8 pt4,pt5,pt45,dotp
      real * 8 powheginput
      logical ini
      data ini/.true./
      save ptmin,ini
      if(ini) then
         ptmin=powheginput('#bornsuppfact')
         ini=.false.
      endif
      if(ptmin.gt.0) then
         pt4=kn_cmpborn(1,4)**2+kn_cmpborn(2,4)**2
         pt5=kn_cmpborn(1,5)**2+kn_cmpborn(2,5)**2
         pt45=2*dotp(kn_cmpborn(0,4),kn_cmpborn(0,5))
     1     *  kn_cmpborn(0,4)*kn_cmpborn(0,5)
     2        /(kn_cmpborn(0,4)**2+kn_cmpborn(0,5)**2)
         fact=((1/ptmin**2)/(1/pt4+1/pt5+1/pt45+1/ptmin**2))**2
      else
         fact=1
      endif
      end


      subroutine set_fac_ren_scales(muf,mur)
      implicit none
      include 'PhysPars.h'
      include 'nlegborn.h'
      include 'pwhg_kn.h'
      real * 8 muf,mur
      logical ini
      data ini/.true./
      if (ini) then
         write(*,*) '*************************************'
         write(*,*) '    Factorization and renormalization '
         write(*,*) '    scales set to top mass         '
         write(*,*) '*************************************'
         ini=.false.
      endif
      muf=ph_tmass
      mur=ph_tmass
c$$$      muf=100d0
c$$$      mur=100d0
      end
