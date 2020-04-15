c#######################################################################
!     !>> Thee routines take only momenta of b-quarks and additional QCD
!     !>> radiation. Momenta of beams and H-resonance should not be
!     !>> passed.

!     !>> All of the formulas are taken from the [1501.07226] paper,
!     !>> generated using "Hbb.m" file thanks to Gabor Somogyi


c=======================================================================
!     !>> Tree-level Hbb squared amplitude
!     !>> according to eq (A.1) of [1501.07226]
      function msq_Hbb0(mh)
      implicit none

      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'pwhg_flg.h'
      include 'pwhg_st.h'

      real*8 msq_Hbb0,mh,mu
      real*8 GammaHbb0,GammaHbb1,GammaHbb2

      real*8 mb_msbar
      external mb_msbar

      msq_Hbb0 = 2d0 * ph_yb2 * mh**2 * Nc

      mu= ph_hmass * st_renfact
      if( ph_running_mass )then
         msq_Hbb0 = msq_Hbb0 * ( mb_msbar( mu ) / ph_bmass )**2
      endif

      return
      end



c=======================================================================
!     !>> Tree-level Hbbg squared amplitude
!     !>> according to (A.5) of [1501.07226]
      function msq_Hbbg0(pp)
      implicit none

      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'

      real*8 msq_Hbb0,msq_Hbbg0,MHbb00
      real*8 pp(0:3,3),pH(0:3)
      real*8 mH,Qsq
      real*8 s,s12,s23,s13,y12,y13,y23
      integer j,k
      real*8 invariant_mass

c-----> define s(j,k)
      s(j,k)=2d0*( pp(0,j)*pp(0,k)
     $     -pp(1,j)*pp(1,k)
     $     -pp(2,j)*pp(2,k)
     $     -pp(3,j)*pp(3,k) )

c-----> calculate invariants
!     !>> compare with eq (2.8) of [1501.07226]
      pH(0:3)=pp(0:3,1)+pp(0:3,2)+pp(0:3,3)
      mH=invariant_mass(pH)
      Qsq = mH**2
      y12 = s(1,2) / Qsq
      y13 = s(1,3) / Qsq
      y23 = s(2,3) / Qsq

c-----> compute MHbb00
      MHbb00 = msq_Hbb0(mh)
c-----> final matrix element
      msq_Hbbg0=
     $     (16*CF*MHbb00*Pi**2*(2*y12 + y13**2 + 2*y13*y23 + y23**2))/(mH**2*y13*y23)
      msq_Hbbg0= (st_alpha/(2*pi)) * msq_Hbbg0

      return
      end



c=======================================================================
!     !>> One-loop Hbbg squared amplitude
!     !>> according to (A.6) of [1501.07226]
      function msq_Hbbg1(pp,musq,coeff)
      implicit none

      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'math_const.f'

      integer coeff
      real*8 msq_Hbb0,msq_Hbbg0,msq_Hbbg1
      real*8 MHbb0,MHbbg0,MHbbg1
      real*8 pp(0:3,3),pH(0:3)
      real*8 mH,Qsq,musq
      real*8 s,s12,s23,s13,y12,y13,y23
      integer j,k
      real*8 invariant_mass,Nf,TR
      real*8 const1,const2,RR,LL

      real*8 LL1,LL2

c-----> define s(j,k)
      s(j,k)=2d0*( pp(0,j)*pp(0,k)
     $     -pp(1,j)*pp(1,k)
     $     -pp(2,j)*pp(2,k)
     $     -pp(3,j)*pp(3,k) )

c-----> constants
      Nf=dble(st_nlight)
      TR=TF

c-----> calculate invariants
!     !>> compare with eq (2.8) of [1501.07226]
      pH(0:3)=pp(0:3,1)+pp(0:3,2)+pp(0:3,3)
      mH=invariant_mass(pH)
      Qsq = mH**2
      y12 = s(1,2) / Qsq
      y13 = s(1,3) / Qsq
      y23 = s(2,3) / Qsq

c-----> born for normalisation
      MHbb0= msq_Hbb0(mh)
      MHbbg0=msq_Hbbg0(pp)

c-----> virtual
      MHbbg1=zip
      if( coeff==-2 )then
         MHbbg1 = -(CA + two*CF)*MHbbg0
      elseif( coeff==-1)then
         MHbbg1 = MHbbg0*(
     $        -11*CA-18*CF+4*Nf*TR
     $       -6*(CA-2*CF)*Log(y12)+6*CA*Log(y13)+6*CA*Log(y23)
     $        )/6d0
      elseif( coeff==0 )then
         LL=log(musq/mH**2)
         LL1=LL
         LL2=LL
         const1= (8*st_alpha*(CA-CF)*CF*Pi*(1/y13+1/y23))/mH**2

         const2=(
     $        -12*CF + 11*CA*LL1 + 18*CF*LL1 + 3*CA*Pi**2 + 6*CF*Pi**2
     $        - 4*LL1*Nf*TR
     $        + 3*CA*log(y12)**2 - 6*CF*log(y12)**2 - 3*CA*log(y13)**2
     $        - 3*CA*log(y23)**2
     $        + 6*CA*RR(y12,y13) - 12*CF*RR(y12,y13) + 6*CA*RR(y12,y23)
     $        - 12*CF*RR(y12,y23) - 6*CA*RR(y13,y23))/6d0

!     !>> expansion of (musq/mh^2)^eps:
         const2 = const2 - 0.5d0*(CA + 2*CF)*LL2**2
         const2 = const2 
     $        + LL2*(
     $        -11d0/6*CA - 3*CF + 2d0/3*Nf*TR
     $        - (CA - 2*CF)*log(y12) + CA*log(y13) + CA*log(y23)
     $        )

         MHbbg1 = const1*MHbb0 + const2*MHbbg0
       endif
       
!     !>> attach QCD coupling (this expression already contain 2Re[born*virt]
      MHbbg1 = MHbbg1 !!* (st_alpha/(two*pi))
!     !>> actually strip off (as/2pi) as POWHEG does NOT want it...

      msq_Hbbg1 = MHbbg1

      return
      end



c=======================================================================
!     !>> Tree-level Hbbqq squared amplitude
!     !>> according to (A.8) of [1501.07226]
      function msq_Hbbqq(pp)
      implicit none

      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'math_const.f'

      real*8 msq_Hbbqq,result
      real*8 MHbb0,msq_Hbb0
      real*8 pp(0:3,4),ph(0:3)
      real*8 invariant_mass,mh
      real*8 CbbqqTOT,Cbbqq
      real*8 TR

!     !>> QCD stuff
      TR = TF

!     !>> Higgs momentum
      pH(0:3)=pp(0:3,1)+pp(0:3,2)+pp(0:3,3)+pp(0:3,4)
      mh=invariant_mass(ph)

!     !>> Hbb coupling
      MHbb0=msq_hbb0(mh)

!     !>> kinematical dependence
      CbbqqTOT =
     $      Cbbqq( pp(:,1),pp(:,2),pp(:,3),pp(:,4) )
     $     +Cbbqq( pp(:,2),pp(:,1),pp(:,3),pp(:,4) )
     $     +Cbbqq( pp(:,1),pp(:,2),pp(:,4),pp(:,3) )
     $     +Cbbqq( pp(:,2),pp(:,1),pp(:,4),pp(:,3) )

!     !>> this is for debugging: msq_Hbbqq should be positive
c$$$      if( CbbqqTOT.lt.zip )then
c$$$         write(*,*)'>> CbbqqTOT=',CbbqqTOT
c$$$         stop
c$$$      endif
      
      
!     !>> real amplitude
      result= (8d0*pi*st_alpha)**2 * MHbb0 / mh**4
      result= result * TR * CF * CbbqqTOT

!     !>> strip off (as/2pi) as POWHEG does not want it
      msq_Hbbqq= result/( st_alpha/(two*pi) )

      return
      end



c=======================================================================
!     !>> Tree-level Hbbbb squared amplitude
!     !>> according to (A.10) of [1501.07226]
      function msq_Hbbbb(pp)
      implicit none

      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'math_const.f'

      real*8 msq_Hbbbb,result
      real*8 MHbb0,msq_Hbb0
      real*8 pp(0:3,4),ph(0:3)
      real*8 invariant_mass,mh
      real*8 AbbbbTOT,Abbbb,BbbbbTOT,Bbbbb,CbbbbTOT,Cbbbb
      real*8 TR

!     !>> QCD stuff
      TR = TF

!     !>> Higgs momentum
      pH(0:3)=pp(0:3,1)+pp(0:3,2)+pp(0:3,3)+pp(0:3,4)
      mh=invariant_mass(ph)

!     !>> Hbb coupling
      MHbb0=msq_hbb0(mh)

!     !>> kinematical dependence
      AbbbbTOT =
     $      Abbbb( pp(:,1),pp(:,2),pp(:,3),pp(:,4) )
     $     +Abbbb( pp(:,3),pp(:,2),pp(:,1),pp(:,4) )
     $     +Abbbb( pp(:,1),pp(:,4),pp(:,3),pp(:,2) )
     $     +Abbbb( pp(:,3),pp(:,4),pp(:,1),pp(:,2) )

      BbbbbTOT =
     $      Bbbbb( pp(:,1),pp(:,2),pp(:,3),pp(:,4) )
     $     +Bbbbb( pp(:,3),pp(:,2),pp(:,1),pp(:,4) )
     $     +Bbbbb( pp(:,1),pp(:,4),pp(:,3),pp(:,2) )
     $     +Bbbbb( pp(:,3),pp(:,4),pp(:,1),pp(:,2) )
      
      CbbbbTOT =
     $      Cbbbb( pp(:,1),pp(:,2),pp(:,3),pp(:,4) )
     $     +Cbbbb( pp(:,3),pp(:,2),pp(:,1),pp(:,4) )
     $     +Cbbbb( pp(:,1),pp(:,4),pp(:,3),pp(:,2) )
     $     +Cbbbb( pp(:,3),pp(:,4),pp(:,1),pp(:,2) )
      
      result= (
     $      AbbbbTOT*CA*CF
     $     +BbbbbTOT*CF**2
     $     +CbbbbTOT*TR*CF
     $     )


!     !>> this is for debugging: msq_Hbbbb should be positive
c$$$      if( result.lt.0d0 )then
c$$$         print*,'Abbbb=',AbbbbTOT*CA*CF,
c$$$     $        '  Bbbbb=',BbbbbTOT*CF**2,
c$$$     $        '  Cbbbb=',CbbbbTOT*TR*CF,
c$$$     $        '  >>> result=',result
c$$$         stop
c$$$      endif
      
!     !>> real amplitude
      result= (8d0*pi*st_alpha)**2 * MHbb0 / mh**4 * result
!     !>> strip off (as/2pi) as POWHEG does not want it
      msq_Hbbbb= result/( st_alpha/(two*pi) )

      return
      end



c=======================================================================
!     !>> Tree-level Hbbgg squared amplitude
!     !>> according to (A.14) of [1501.07226]
      function msq_Hbbgg(pp)
      implicit none

      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      include 'math_const.f'

      real*8 msq_Hbbgg,result
      real*8 MHbb0,msq_Hbb0
      real*8 pp(0:3,4),ph(0:3)
      real*8 invariant_mass,mh
      real*8 AbbggTOT,Abbgg,BbbggTOT,Bbbgg
      real*8 TR

!     !>> QCD stuff
      TR = TF

!     !>> Higgs momentum
      pH(0:3)=pp(0:3,1)+pp(0:3,2)+pp(0:3,3)+pp(0:3,4)
      mh=invariant_mass(ph)

!     !>> Hbb coupling
      MHbb0=msq_hbb0(mh)

!     !>> kinematical dependence
      AbbggTOT =
     $      Abbgg( pp(:,1),pp(:,2),pp(:,3),pp(:,4) )
     $     +Abbgg( pp(:,2),pp(:,1),pp(:,3),pp(:,4) )
     $     +Abbgg( pp(:,1),pp(:,2),pp(:,4),pp(:,3) )
     $     +Abbgg( pp(:,2),pp(:,1),pp(:,4),pp(:,3) )

      BbbggTOT =
     $      Bbbgg( pp(:,1),pp(:,2),pp(:,3),pp(:,4) )
     $     +Bbbgg( pp(:,2),pp(:,1),pp(:,3),pp(:,4) )
     $     +Bbbgg( pp(:,1),pp(:,2),pp(:,4),pp(:,3) )
     $     +Bbbgg( pp(:,2),pp(:,1),pp(:,4),pp(:,3) )
      
!     !>> real amplitude
      result= (8d0*pi*st_alpha)**2 * MHbb0 / mh**4
      result= result * (  AbbggTOT*CA*CF  +  BbbggTOT*CF**2  )

!     !>> strip off (as/2pi) as POWHEG does not want it
      msq_Hbbgg= result/( st_alpha/(two*pi) )

      return
      end



c=======================================================================
      function invariant_mass(p)
      implicit none

      real*8 p(0:3)
      real*8 invariant_mass

      invariant_mass = p(0)**2 - p(1)**2 - p(2)**2 - p(3)**2
      invariant_mass = sqrt( abs(invariant_mass) )

      return
      end



c=======================================================================
      function RR(x,y)
      implicit none

      include 'pwhg_math.h'
      include 'math_const.f'

      real*8 RR,x,y,ddilog

      RR = -pi**2/6d0
     $     +log(x)*log(y)
     $     +ddilog(one-x)
     $     +ddilog(one-y)

      return
      end



c=======================================================================
!     !>> [1501.07226], equation (A.9), without symmetrization (first
!     !>> and second line)
      function Cbbqq(p1,p2,p3,p4)
      implicit none

      include 'math_const.f'
      
      real*8 p1(0:3),p2(0:3),p3(0:3),p4(0:3)
      real*8 pH(0:3),mh,invariant_mass,dot4
      real*8 y13,y23,y14,y24,y34
      real*8 Cbbqq

!     !>> invariants
      ph(0:3) = p1(0:3)+p2(0:3)+p3(0:3)+p4(0:3)
      mh=invariant_mass(ph)
      y13= two*dot4(p1,p3)/mh**2
      y23= two*dot4(p2,p3)/mh**2
      y14= two*dot4(p1,p4)/mh**2
      y24= two*dot4(p2,p4)/mh**2
      y34= two*dot4(p3,p4)/mh**2
      
!     !>> result
      Cbbqq=
     $     1d0/(2d0*y34)-1d0/(2d0*(y13+y14+y34)**2)
     $     -y13**2/(y34**2*(y13+y14+y34)**2)
     $     -y13/(y34*(y13+y14+y34)**2)-1d0/(2d0*(y13+y14+y34))
     $     -(1+y13)/(y34*(y13+y14+y34))
     $     +(y13*y23)/(y34**2*(y13+y14+y34)*(y23+y24+y34))
     $     +(1+2*y13+2*y13**2+2*y13*y23)/(2d0*y34*(y13+y14+y34)*(y23+y24+y34))
     $     +(1+4*y13+y34)/(2d0*(y13+y14+y34)*(y23+y24+y34))
      
      return
      end



c=======================================================================
!     !>> [1501.07226], equation (A.11), without symmetrization (first
!     !>> and second line)
      function Abbbb(p1,p2,p3,p4)
      implicit none

      include 'math_const.f'
      
      real*8 p1(0:3),p2(0:3),p3(0:3),p4(0:3)
      real*8 pH(0:3),mh,invariant_mass,dot4
      real*8 y12,y13,y23,y14,y24,y34
      real*8 Abbbb

!     !>> invariants
      ph(0:3) = p1(0:3)+p2(0:3)+p3(0:3)+p4(0:3)
      mh=invariant_mass(ph)
      y12= two*dot4(p1,p2)/mh**2
      y13= two*dot4(p1,p3)/mh**2
      y23= two*dot4(p2,p3)/mh**2
      y14= two*dot4(p1,p4)/mh**2
      y24= two*dot4(p2,p4)/mh**2
      y34= two*dot4(p3,p4)/mh**2
      
!     !>> result
      Abbbb=
     $     1/(2d0*y12)
     $     +y13/(y12*y23)
     $     +y14/(y12*y23)
     $     +y23/(y12*y14)
     $     -(y13*y14)/(y12*(y12+y13+y23)**2)
     $     -1/(2d0*(y12+y13+y23))
     $     -y13/(y12*(y12+y13+y23))
     $     +y13**2/(2d0*y12*y14*(y12+y13+y23))
     $     +(3*y14)/(4d0*y12*(y12+y13+y23))
     $     -y23**2/(2d0*y12*y14*(y12+y13+y23))
     $     +y24/(y12*y14)
     $     -(y13*y24)/(y12*(y12+y13+y23)**2)
     $     -y24/(4d0*y12*(y12+y13+y23))
     $     -(y13*y24)/(2d0*y12*y14*(y12+y13+y23))
     $     -(y23*y24)/(y12*y14*(y12+y13+y23))
     $     +y24**2/(4d0*y12*y14*(y12+y13+y23))
     $     -(y13*y24)/(y12*(y12+y14+y24)**2)
     $     -(y23*y24)/(y12*(y12+y14+y24)**2)
     $     -1/(2d0*(y12+y14+y24))
     $     -y13/(4d0*y12*(y12+y14+y24))
     $     +y13**2/(4d0*y12*y23*(y12+y14+y24))
     $     -(y13*y14)/(y12*y23*(y12+y14+y24))
     $     -y14**2/(2d0*y12*y23*(y12+y14+y24))
     $     +(3*y23)/(4d0*y12*(y12+y14+y24))
     $     -y12/(2d0*(y12+y13+y23)*(y12+y14+y24))
     $     +(3*y13)/(4d0*(y12+y13+y23)*(y12+y14+y24))
     $     +y14/(4d0*(y12+y13+y23)*(y12+y14+y24))
     $     +y23/(4d0*(y12+y13+y23)*(y12+y14+y24))
     $     -y24/(y12*(y12+y14+y24))
     $     -(y13*y24)/(2d0*y12*y23*(y12+y14+y24))
     $     +(3*y24)/(4d0*(y12+y13+y23)*(y12+y14+y24))
     $     +y24**2/(2d0*y12*y23*(y12+y14+y24))
     $     -(y13*y34)/(y12*(y12+y13+y23)**2)
     $     +(3*y34)/(4d0*y12*(y12+y13+y23))
     $     -(y13*y34)/(2d0*y12*y14*(y12+y13+y23))
     $     -(y23*y34)/(2d0*y12*y14*(y12+y13+y23))
     $     +(y24*y34)/(2d0*y12*y14*(y12+y13+y23))
     $     -(y24*y34)/(y12*(y12+y14+y24)**2)
     $     +(3*y34)/(4d0*y12*(y12+y14+y24))
     $     +(y13*y34)/(2d0*y12*y23*(y12+y14+y24))
     $     -(y14*y34)/(2d0*y12*y23*(y12+y14+y24))
     $     +(2*y34)/((y12+y13+y23)*(y12+y14+y24))
     $     +(y14*y34)/(y12*(y12+y13+y23)*(y12+y14+y24))
     $     +(y23*y34)/(y12*(y12+y13+y23)*(y12+y14+y24))
     $     -(y24*y34)/(2d0*y12*y23*(y12+y14+y24))
     $     +y34**2/(2d0*y12*y14*(y12+y13+y23))
     $     +y34**2/(2d0*y12*y23*(y12+y14+y24))
     $     +y13/(2d0*y12*(y13+y14+y34))
     $     -(2*y23)/(y12*(y13+y14+y34))
     $     +(3*y12)/(2d0*(y12+y13+y23)*(y13+y14+y34))
     $     -y13**2/(4d0*y12*(y12+y13+y23)*(y13+y14+y34))
     $     -y14**2/(4d0*y12*(y12+y13+y23)*(y13+y14+y34))
     $     +y23**2/(2d0*y12*(y12+y13+y23)*(y13+y14+y34))
     $     -y23**3/(2d0*y12*y14*(y12+y13+y23)*(y13+y14+y34))
     $     -(3*y24)/(2d0*y12*(y13+y14+y34))
     $     +y24/(2d0*(y12+y13+y23)*(y13+y14+y34))
     $     -(y14*y24)/(2d0*y12*(y12+y13+y23)*(y13+y14+y34))
     $     -(y23**2*y24)/(2d0*y12*y14*(y12+y13+y23)*(y13+y14+y34))
     $     -y24**2/(4d0*y12*(y12+y13+y23)*(y13+y14+y34))
     $     -(y23*y24**2)/(4d0*y12*y14*(y12+y13+y23)*(y13+y14+y34))
     $     -y13**2/(4d0*y12*(y12+y14+y24)*(y13+y14+y34))
     $     -y14**2/(4d0*y12*(y12+y14+y24)*(y13+y14+y34))
     $     -(y13*y23)/(2d0*y12*(y12+y14+y24)*(y13+y14+y34))
     $     +(y14*y23)/(2d0*y12*(y12+y14+y24)*(y13+y14+y34))
     $     -y23**2/(2d0*y12*(y12+y14+y24)*(y13+y14+y34))
     $     -y34/(y12*(y13+y14+y34))
     $     -(y13*y34)/(4d0*y12*(y12+y13+y23)*(y13+y14+y34))
     $     -(3*y14*y34)/(4d0*y12*(y12+y13+y23)*(y13+y14+y34))
     $     -(y24*y34)/(y12*(y12+y13+y23)*(y13+y14+y34))
     $     -(y13*y34)/(2d0*y12*(y12+y14+y24)*(y13+y14+y34))
     $     -(y23*y34)/(2d0*y12*(y12+y14+y24)*(y13+y14+y34))
     $     -y34**2/(y12*(y12+y13+y23)*(y13+y14+y34))
     $     -(3*y34**2)/(4d0*y12*(y12+y14+y24)*(y13+y14+y34))
     $     -(3*y13)/(2d0*y12*(y23+y24+y34))
     $     -(2*y14)/(y12*(y23+y24+y34))
     $     -y14**2/(2d0*y12*(y12+y13+y23)*(y23+y24+y34))
     $     +(y14*y23)/(2d0*y12*(y12+y13+y23)*(y23+y24+y34))
     $     -y23**2/(4d0*y12*(y12+y13+y23)*(y23+y24+y34))
     $     +y24/(2d0*y12*(y23+y24+y34))
     $     -(y14*y24)/(2d0*y12*(y12+y13+y23)*(y23+y24+y34))
     $     -y24**2/(4d0*y12*(y12+y13+y23)*(y23+y24+y34))
     $     +(3*y12)/(2d0*(y12+y14+y24)*(y23+y24+y34))
     $     +y13/(2d0*(y12+y14+y24)*(y23+y24+y34))
     $     -y13**2/(4d0*y12*(y12+y14+y24)*(y23+y24+y34))
     $     +y14**2/(2d0*y12*(y12+y14+y24)*(y23+y24+y34))
     $     -(y13**2*y14)/(4d0*y12*y23*(y12+y14+y24)*(y23+y24+y34))
     $     -(y13*y14**2)/(2d0*y12*y23*(y12+y14+y24)*(y23+y24+y34))
     $     -y14**3/(2d0*y12*y23*(y12+y14+y24)*(y23+y24+y34))
     $     -(y13*y23)/(2d0*y12*(y12+y14+y24)*(y23+y24+y34))
     $     -y23**2/(4d0*y12*(y12+y14+y24)*(y23+y24+y34))
     $     -y24**2/(4d0*y12*(y12+y14+y24)*(y23+y24+y34))
     $     -y34/(y12*(y23+y24+y34))
     $     -(y14*y34)/(2d0*y12*(y12+y13+y23)*(y23+y24+y34))
     $     -(y24*y34)/(2d0*y12*(y12+y13+y23)*(y23+y24+y34))
     $     -(y13*y34)/(y12*(y12+y14+y24)*(y23+y24+y34))
     $     -(3*y23*y34)/(4d0*y12*(y12+y14+y24)*(y23+y24+y34))
     $     -(y24*y34)/(4d0*y12*(y12+y14+y24)*(y23+y24+y34))
     $     -(3*y34**2)/(4d0*y12*(y12+y13+y23)*(y23+y24+y34))
     $     -y34**2/(y12*(y12+y14+y24)*(y23+y24+y34))
      
      return
      end
      


c=======================================================================
!     !>> [1501.07226], equation (A.12), without symmetrization (first
!     !>> and second line)
      function Bbbbb(p1,p2,p3,p4)
      implicit none

      include 'math_const.f'
      
      real*8 p1(0:3),p2(0:3),p3(0:3),p4(0:3)
      real*8 pH(0:3),mh,invariant_mass,dot4
      real*8 y13,y23,y14,y24,y34
      real*8 Bbbbb,Abbbb

!     !>> invariants
      ph(0:3) = p1(0:3)+p2(0:3)+p3(0:3)+p4(0:3)
      mh=invariant_mass(ph)
      y13= two*dot4(p1,p3)/mh**2
      y23= two*dot4(p2,p3)/mh**2
      y14= two*dot4(p1,p4)/mh**2
      y24= two*dot4(p2,p4)/mh**2
      y34= two*dot4(p3,p4)/mh**2
      
!     !>> result
      Bbbbb= -two*Abbbb(p1,p2,p3,p4)

      return
      end
      


c=======================================================================
!     !>> [1501.07226], equation (A.13), without symmetrization (first
!     !>> and second line)
      function Cbbbb(p1,p2,p3,p4)
      implicit none

      include 'math_const.f'
      
      real*8 p1(0:3),p2(0:3),p3(0:3),p4(0:3)
      real*8 pH(0:3),mh,invariant_mass,dot4
      real*8 y13,y23,y14,y24,y34
      real*8 Cbbbb,Cbbqq,CbbqqTOT

!     !>> invariants
      ph(0:3) = p1(0:3)+p2(0:3)+p3(0:3)+p4(0:3)
      mh=invariant_mass(ph)
      y13= two*dot4(p1,p3)/mh**2
      y23= two*dot4(p2,p3)/mh**2
      y14= two*dot4(p1,p4)/mh**2
      y24= two*dot4(p2,p4)/mh**2
      y34= two*dot4(p3,p4)/mh**2
      
!     !>> result
      CbbqqTOT=
     $      Cbbqq(p1,p2,p3,p4)
     $     +Cbbqq(p2,p1,p3,p4)
     $     +Cbbqq(p1,p2,p4,p3)
     $     +Cbbqq(p2,p1,p4,p3)
!     !>> in here we symmetrise because each Cbbqq piece in equation
!     !>> (A.13) is already symmetrised according to (A.9), whereas our
!     !>> Cbbqq routine returns only one piece

      Cbbbb = CbbqqTOT

      return
      end
      


c=======================================================================
!     !>> [1501.07226], equation (A.15), without symmetrization (first
!     !>> and second line)
      function Abbgg(p1,p2,p3,p4)
      implicit none

      include 'math_const.f'
      
      real*8 p1(0:3),p2(0:3),p3(0:3),p4(0:3)
      real*8 pH(0:3),mh,invariant_mass,dot4
      real*8 y13,y23,y14,y24,y34
      real*8 Abbgg

!     !>> invariants
      ph(0:3) = p1(0:3)+p2(0:3)+p3(0:3)+p4(0:3)
      mh=invariant_mass(ph)
      y13= two*dot4(p1,p3)/mh**2
      y23= two*dot4(p2,p3)/mh**2
      y14= two*dot4(p1,p4)/mh**2
      y24= two*dot4(p2,p4)/mh**2
      y34= two*dot4(p3,p4)/mh**2
      
!     !>> result
      Abbgg=
     $     7/(2d0*y13)
     $     -3/(2d0*y13*y14)
     $     -3/(y13*y23)
     $     +2/(y13*y14*y23)
     $     +(3*y14)/(y13*y23)
     $     +(3*y23)/(2d0*y13*y14)
     $     -2/(y13*y24)
     $     +(5*y14)/(2d0*y13*y24)
     $     -1/(4d0*y13*y14*y23*y24)
     $     -(3*y24)/(2d0*y13*y14*y23)
     $     +y24**2/(2d0*y13*y14*y23)
     $     -3/(2d0*y13*y34)
     $     +(3*y14)/(2d0*y13*y34)
     $     +(3*y23)/(4d0*y13*y34)
     $     +1/(2d0*y13*y24*y34)
     $     -y14/(y13*y24*y34)
     $     +y14**2/(2d0*y13*y24*y34)
     $     +(y14*y23)/(2d0*y13*y24*y34)
     $     +(3*y24)/(4d0*y13*y34)
     $     +(3*y34)/(2d0*y13*y14)
     $     +(3*y34)/(2d0*y13*y23)
     $     -(3*y34)/(y13*y14*y23)
     $     +(7*y34)/(4d0*y13*y24)
     $     +y34/(2d0*y13*y14*y23*y24)
     $     +(3*y24*y34)/(2d0*y13*y14*y23)
     $     +(3*y34**2)/(2d0*y13*y14*y23)
     $     -(3*y34**2)/(8d0*y13*y14*y23*y24)
     $     +y34**3/(8d0*y13*y14*y23*y24)
     $     +1/(2d0*(y13+y14+y34)**2)
     $     +y13**2/(y34**2*(y13+y14+y34)**2)
     $     +y13/(y34*(y13+y14+y34)**2)
     $     +5/(4d0*(y13+y14+y34))
     $     +3/(4d0*y13*(y13+y14+y34))
     $     +2/(y13*y23*(y13+y14+y34))
     $     +y23/(4d0*y13*(y13+y14+y34))
     $     -y24/(4d0*y13*(y13+y14+y34))
     $     -(3*y24)/(2d0*y13*y23*(y13+y14+y34))
     $     +y24**2/(2d0*y13*y23*(y13+y14+y34))
     $     +2/(y34*(y13+y14+y34))
     $     +y13/(y34*(y13+y14+y34))
     $     +y34/(2d0*y13*(y13+y14+y34))
     $     +(3*y34)/(2d0*y13*y23*(y13+y14+y34))
     $     -(y24*y34)/(2d0*y13*y23*(y13+y14+y34))
     $     +y34**2/(2d0*y13*y23*(y13+y14+y34))
     $     +5/(2d0*y13*(y23+y24+y34))
     $     -y14/(y13*(y23+y24+y34))
     $     +(3*y23)/(4d0*y13*(y23+y24+y34))
     $     -y24/(4d0*y13*(y23+y24+y34))
     $     +1/(y13*y34*(y23+y24+y34))
     $     -y14/(y13*y34*(y23+y24+y34))
     $     +y14**2/(2d0*y13*y34*(y23+y24+y34))
     $     +y23/(2d0*y13*y34*(y23+y24+y34))
     $     -(y14*y23)/(2d0*y13*y34*(y23+y24+y34))
     $     +y23**2/(4d0*y13*y34*(y23+y24+y34))
     $     -y24/(2d0*y13*y34*(y23+y24+y34))
     $     +(y14*y24)/(2d0*y13*y34*(y23+y24+y34))
     $     +y24**2/(4d0*y13*y34*(y23+y24+y34))
     $     +y34/(y13*(y23+y24+y34))
     $     -2/((y13+y14+y34)*(y23+y24+y34))
     $     -2/(y13*(y13+y14+y34)*(y23+y24+y34))
     $     -(2*y13)/((y13+y14+y34)*(y23+y24+y34))
     $     -1/(2d0*y13*y23*(y13+y14+y34)*(y23+y24+y34))
     $     -(3*y23)/(4d0*y13*(y13+y14+y34)*(y23+y24+y34))
     $     -y23**2/(4d0*y13*(y13+y14+y34)*(y23+y24+y34))
     $     +(3*y24)/(4d0*y13*(y13+y14+y34)*(y23+y24+y34))
     $     -y24**2/(4d0*y13*(y13+y14+y34)*(y23+y24+y34))
     $     -(y13*y23)/(y34**2*(y13+y14+y34)*(y23+y24+y34))
     $     -2/(y34*(y13+y14+y34)*(y23+y24+y34))
     $     -y13/(y34*(y13+y14+y34)*(y23+y24+y34))
     $     -y13**2/(y34*(y13+y14+y34)*(y23+y24+y34))
     $     -(y13*y23)/(y34*(y13+y14+y34)*(y23+y24+y34))
     $     -(5*y34)/(4d0*(y13+y14+y34)*(y23+y24+y34))
     $     -(9*y34)/(4d0*y13*(y13+y14+y34)*(y23+y24+y34))
     $     -y34/(y13*y23*(y13+y14+y34)*(y23+y24+y34))
     $     -(3*y23*y34)/(4d0*y13*(y13+y14+y34)*(y23+y24+y34))
     $     +(y24*y34)/(4d0*y13*(y13+y14+y34)*(y23+y24+y34))
     $     -y34**2/(y13*(y13+y14+y34)*(y23+y24+y34))
     $     -(3*y34**2)/(4d0*y13*y23*(y13+y14+y34)*(y23+y24+y34))
     $     -y34**3/(4d0*y13*y23*(y13+y14+y34)*(y23+y24+y34))
      
      return
      end
      


c=======================================================================
!     !>> [1501.07226], equation (A.16), without symmetrization (first
!     !>> and second line)
      function Bbbgg(p1,p2,p3,p4)
      implicit none

      include 'math_const.f'
      
      real*8 p1(0:3),p2(0:3),p3(0:3),p4(0:3)
      real*8 pH(0:3),mh,invariant_mass,dot4
      real*8 y13,y23,y14,y24,y34
      real*8 Bbbgg

!     !>> invariants
      ph(0:3) = p1(0:3)+p2(0:3)+p3(0:3)+p4(0:3)
      mh=invariant_mass(ph)
      y13= two*dot4(p1,p3)/mh**2
      y23= two*dot4(p2,p3)/mh**2
      y14= two*dot4(p1,p4)/mh**2
      y24= two*dot4(p2,p4)/mh**2
      y34= two*dot4(p3,p4)/mh**2
      
!     !>> result
      Bbbgg=
     $     -11/(2d0*y13)
     $     +3/(y13*y14)
     $     +6/(y13*y23)
     $     -(6*y14)/(y13*y23)
     $     -(3*y23)/(y13*y14)
     $     +7/(2d0*y13*y24)
     $     -(3*y14)/(y13*y24)
     $     -4/(y13*y23*y24)
     $     +1/(2d0*y13*y14*y23*y24)
     $     +(3*y14)/(y13*y23*y24)
     $     -y14**2/(y13*y23*y24)
     $     -(3*y34)/(y13*y14)
     $     -(3*y34)/(y13*y23)
     $     -(3*y34)/(y13*y24)
     $     +(6*y34)/(y13*y23*y24)
     $     -y34/(y13*y14*y23*y24)
     $     -(3*y14*y34)/(y13*y23*y24)
     $     -(3*y34**2)/(y13*y23*y24)
     $     +(3*y34**2)/(4d0*y13*y14*y23*y24)
     $     -y34**3/(4d0*y13*y14*y23*y24)
     $     +1/(2d0*(y13+y14+y34)**2)
     $     -y14/(2d0*y13*(y13+y14+y34)**2)
     $     +y34/(2d0*y13*(y13+y14+y34)**2)
     $     +1/(2d0*y13*(y13+y14+y34))
     $     -4/(y13*y23*(y13+y14+y34))
     $     -2/(y13*y24*(y13+y14+y34))
     $     -y14/(2d0*y13*y24*(y13+y14+y34))
     $     +y23/(y13*y24*(y13+y14+y34))
     $     +(3*y24)/(y13*y23*(y13+y14+y34))
     $     -y24**2/(y13*y23*(y13+y14+y34))
     $     -y34/(2d0*y13*(y13+y14+y34))
     $     -(3*y34)/(y13*y23*(y13+y14+y34))
     $     +y34/(2d0*y13*y24*(y13+y14+y34))
     $     +(y24*y34)/(y13*y23*(y13+y14+y34))
     $     -y34**2/(y13*y23*(y13+y14+y34))
     $     -5/(2d0*y13*(y23+y24+y34))
     $     +(2*y14)/(y13*(y23+y24+y34))
     $     -y23/(2d0*y13*(y23+y24+y34))
     $     +y24/(2d0*y13*(y23+y24+y34))
     $     -(3*y34)/(2d0*y13*(y23+y24+y34))
     $     +1/((y13+y14+y34)*(y23+y24+y34))
     $     +1/(y13*y23*(y13+y14+y34)*(y23+y24+y34))
     $     +1/(y13*y24*(y13+y14+y34)*(y23+y24+y34))
     $     +y34/((y13+y14+y34)*(y23+y24+y34))
     $     +(3*y34)/(y13*(y13+y14+y34)*(y23+y24+y34))
     $     +(2*y34)/(y13*y23*(y13+y14+y34)*(y23+y24+y34))
     $     +(y23*y34)/(2d0*y13*(y13+y14+y34)*(y23+y24+y34))
     $     -(y24*y34)/(2d0*y13*(y13+y14+y34)*(y23+y24+y34))
     $     +(3*y34**2)/(2d0*y13*(y13+y14+y34)*(y23+y24+y34))
     $     +(3*y34**2)/(2d0*y13*y23*(y13+y14+y34)*(y23+y24+y34))
     $     +y34**3/(2d0*y13*y23*(y13+y14+y34)*(y23+y24+y34))
      
      return
      end
      
      
