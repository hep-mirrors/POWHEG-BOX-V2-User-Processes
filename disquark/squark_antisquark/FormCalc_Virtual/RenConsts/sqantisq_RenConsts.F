
* This file comprises all ren. constants necessary for sqantisq production
* generated on 24 Sep 2013 14:26

	subroutine CalcRenConst
	implicit none

! ! #define DEBUG
#include "decl.h"
#include "sqantisq_renconst.h"

	divergence = getdelta()

	dZGl1 = 0

#ifdef DEBUG
	DEB 'dZGl1 =', dZGl1
#endif

        dMgl1 = 1/(4.D0*Pi)*
     -   (-(Alfas*MGl*(-3 + 6*DBLE(B0i(bb0,MGl2,0.D0,MGl2)) - 
     -          6*DBLE(B0i(bb1,MGl2,0.D0,MGl2)) + 
     -          DBLE(B0i(bb1,MGl2,MB2,MSf2(1,4,3))) + 
     -          DBLE(B0i(bb1,MGl2,MB2,MSf2(2,4,3))) + 
     -          DBLE(B0i(bb1,MGl2,MC2,MSf2(1,3,2))) + 
     -          DBLE(B0i(bb1,MGl2,MC2,MSf2(2,3,2))) + 
     -          DBLE(B0i(bb1,MGl2,MD2,MSf2(1,4,1))) + 
     -          DBLE(B0i(bb1,MGl2,MD2,MSf2(2,4,1))) + 
     -          DBLE(B0i(bb1,MGl2,MS2,MSf2(1,4,2))) + 
     -          DBLE(B0i(bb1,MGl2,MS2,MSf2(2,4,2))) + 
     -          DBLE(B0i(bb1,MGl2,MT2,MSf2(1,3,3))) + 
     -          DBLE(B0i(bb1,MGl2,MT2,MSf2(2,3,3))) + 
     -          DBLE(B0i(bb1,MGl2,MU2,MSf2(1,3,1))) + 
     -          DBLE(B0i(bb1,MGl2,MU2,MSf2(2,3,1))))) + 
     -     2*MT*(Alfas*(-DBLE(B0i(bb0,MGl2,MT2,MSf2(1,3,3))) + 
     -          DBLE(B0i(bb0,MGl2,MT2,MSf2(2,3,3))))*USf(1,1,3,3)*
     -        USf(1,2,3,3)))

#ifdef DEBUG
	DEB 'dMgl1 =', dMgl1
#endif

ccc checked this structure numerically vs. Eva's old implementation-> is OK...
        dZgs1 = 1/(48.D0*Pi)*
     -   (Alfas*(-46*Divergence + 12*B0i(bb0,0.D0,MGl2,MGl2) + 
     -       4*B0i(bb0,0.D0,MT2,MT2) + 
     -       B0i(bb0,0.D0,MSf2(1,3,1),MSf2(1,3,1)) + 
     -       B0i(bb0,0.D0,MSf2(1,3,2),MSf2(1,3,2)) + 
     -       B0i(bb0,0.D0,MSf2(1,3,3),MSf2(1,3,3)) + 
     -       B0i(bb0,0.D0,MSf2(1,4,1),MSf2(1,4,1)) + 
     -       B0i(bb0,0.D0,MSf2(1,4,2),MSf2(1,4,2)) + 
     -       B0i(bb0,0.D0,MSf2(1,4,3),MSf2(1,4,3)) + 
     -       B0i(bb0,0.D0,MSf2(2,3,1),MSf2(2,3,1)) + 
     -       B0i(bb0,0.D0,MSf2(2,3,2),MSf2(2,3,2)) + 
     -       B0i(bb0,0.D0,MSf2(2,3,3),MSf2(2,3,3)) + 
     -       B0i(bb0,0.D0,MSf2(2,4,1),MSf2(2,4,1)) + 
     -       B0i(bb0,0.D0,MSf2(2,4,2),MSf2(2,4,2)) + 
     -       B0i(bb0,0.D0,MSf2(2,4,3),MSf2(2,4,3))))

#ifdef DEBUG
	DEB 'dZgs1 =', dZgs1
#endif

	dZgs1y = dZgs1 + 1/(3.D0*Pi)*Alfas

#ifdef DEBUG
	DEB 'dZgs1y =', dZgs1y
#endif
CdZGG1 has correct UV-behaviour...
        dZGG1 = -(1/(24.D0*Pi)*
     -     (Alfas*(-10*B0i(bb0,0.D0,0.D0,0.D0) + 
     -         12*B0i(bb0,0.D0,MGl2,MGl2) + 4*B0i(bb0,0.D0,MT2,MT2) + 
     -         B0i(bb0,0.D0,MSf2(1,3,1),MSf2(1,3,1)) + 
     -         B0i(bb0,0.D0,MSf2(1,3,2),MSf2(1,3,2)) + 
     -         B0i(bb0,0.D0,MSf2(1,3,3),MSf2(1,3,3)) + 
     -         B0i(bb0,0.D0,MSf2(1,4,1),MSf2(1,4,1)) + 
     -         B0i(bb0,0.D0,MSf2(1,4,2),MSf2(1,4,2)) + 
     -         B0i(bb0,0.D0,MSf2(1,4,3),MSf2(1,4,3)) + 
     -         B0i(bb0,0.D0,MSf2(2,3,1),MSf2(2,3,1)) + 
     -         B0i(bb0,0.D0,MSf2(2,3,2),MSf2(2,3,2)) + 
     -         B0i(bb0,0.D0,MSf2(2,3,3),MSf2(2,3,3)) + 
     -         B0i(bb0,0.D0,MSf2(2,4,1),MSf2(2,4,1)) + 
     -         B0i(bb0,0.D0,MSf2(2,4,2),MSf2(2,4,2)) + 
     -         B0i(bb0,0.D0,MSf2(2,4,3),MSf2(2,4,3)))))
	
#ifdef DEBUG
	DEB 'dZGG1 =', dZGG1
#endif

        dZsq = 1/(3.D0*Pi)*
     -   (Alfas*(-4*DBLE(B0i(bb0,msq2,0.D0,MGl2)) + 
     -       3*DBLE(B0i(bb0,msq2,0.D0,msq2)) + 
     -       2*(DBLE(B0i(bb1,msq2,0.D0,msq2)) - 
     -          2*DBLE(B0i(bb1,msq2,MGl2,0.D0)) + 
     -          msq2*(-2*DBLE(B0i(dbb0,msq2,0.D0,MGl2)) + 
     -             2*DBLE(B0i(dbb0,msq2,0.D0,msq2)) + 
     -             DBLE(B0i(dbb1,msq2,0.D0,msq2)) - 
     -             2*DBLE(B0i(dbb1,msq2,MGl2,0.D0))))))

#ifdef DEBUG
	DEB 'dZsq =', dZsq
#endif

        dZantisq = 1/(3.D0*Pi)*
     -   (Alfas*(3*DBLE(B0i(bb0,mantisq2,0.D0,mantisq2)) + 
     -       2*(-2*DBLE(B0i(bb0,mantisq2,0.D0,MGl2)) + 
     -          DBLE(B0i(bb1,mantisq2,0.D0,mantisq2)) - 
     -          2*DBLE(B0i(bb1,mantisq2,MGl2,0.D0)) + 
     -          mantisq2*(2*DBLE(B0i(dbb0,mantisq2,0.D0,mantisq2)) - 
     -             2*DBLE(B0i(dbb0,mantisq2,0.D0,MGl2)) + 
     -             DBLE(B0i(dbb1,mantisq2,0.D0,mantisq2)) - 
     -             2*DBLE(B0i(dbb1,mantisq2,MGl2,0.D0))))))

#ifdef DEBUG
	DEB 'dZantisq =', dZantisq
#endif

        dZqsq = -(2/(3.D0*Pi)*
     -     (Alfas*(DBLE(B0i(bb0,0.D0,0.D0,0.D0)) + 
     -         DBLE(B0i(bb1,0.D0,0.D0,0.D0)) - 
     -         DBLE(B0i(bb1,0.D0,MGl2,msq2)))))


#ifdef DEBUG
	DEB 'dZqsq =', dZqsq
#endif

        dZqantisq = -(2/(3.D0*Pi)*
     -     (Alfas*(DBLE(B0i(bb0,0.D0,0.D0,0.D0)) + 
     -         DBLE(B0i(bb1,0.D0,0.D0,0.D0)) - 
     -         DBLE(B0i(bb1,0.D0,MGl2,mantisq2)))))

#ifdef DEBUG
	DEB 'dZqantisq =', dZqantisq
#endif

        dZqsqISLH = -(2/(3.D0*Pi)*
     -     (Alfas*(DBLE(B0i(bb0,0.D0,0.D0,0.D0)) + 
     -         DBLE(B0i(bb1,0.D0,0.D0,0.D0)) - 
     -         DBLE(B0i(bb1,0.D0,MGl2,msqISLH2)))))

#ifdef DEBUG
	DEB 'dZqsqISLH =', dZqsqISLH
#endif	

        dZqsqISRH = -(2/(3.D0*Pi)*
     -     (Alfas*(DBLE(B0i(bb0,0.D0,0.D0,0.D0)) + 
     -         DBLE(B0i(bb1,0.D0,0.D0,0.D0)) - 
     -         DBLE(B0i(bb1,0.D0,MGl2,msqISRH2)))))

#ifdef DEBUG
	DEB 'dZqsqISRH =', dZqsqISRH
#endif

        dMsq = 1/(3.D0*Pi)*
     -   (Alfas*(-4*DBLE(A0(MGl2)) + DBLE(A0(msq2)) + 
     -       2*msq2*(2*DBLE(B0i(bb0,msq2,0.D0,MGl2)) - 
     -          2*DBLE(B0i(bb0,msq2,0.D0,msq2)) - 
     -          DBLE(B0i(bb1,msq2,0.D0,msq2)) + 
     -          2*DBLE(B0i(bb1,msq2,MGl2,0.D0)))))

#ifdef DEBUG
	DEB 'dMsq =', dMsq
#endif

	end

