* LL_abbr1_angle.F
* abbreviations for {MU, MU} -> {MSf[1, 3, 1], MSf[1, 3, 1]}
* generated by FormCalc 6.1D0 24 Jun 2011 11:45

	subroutine LL_abbr1_angle
	implicit none

#include "LL_vars.h"

	iint1 = Bget(T,0.D0,MGl2)

	iint2 = Bget(T,MB2,MSf2(1,4,3))

	iint3 = Bget(T,MB2,MSf2(2,4,3))

	iint4 = Bget(T,MC2,MSf2(1,3,2))

	iint5 = Bget(T,MC2,MSf2(2,3,2))

	iint6 = Bget(T,MD2,MSf2(1,4,1))

	iint7 = Bget(T,MD2,MSf2(2,4,1))

	iint8 = Bget(T,MS2,MSf2(1,4,2))

	iint9 = Bget(T,MS2,MSf2(2,4,2))

	iint10 = Bget(T,MU2,MSf2(1,3,1))

	iint11 = Bget(T,MU2,MSf2(2,3,1))

	iint12 = Bget(T,MT2,MSf2(1,3,3))

	iint13 = Bget(T,MT2,MSf2(2,3,3))

	iint14 = Bget(U,0.D0,MGl2)

	iint15 = Bget(U,MB2,MSf2(1,4,3))

	iint16 = Bget(U,MB2,MSf2(2,4,3))

	iint17 = Bget(U,MC2,MSf2(1,3,2))

	iint18 = Bget(U,MC2,MSf2(2,3,2))

	iint19 = Bget(U,MD2,MSf2(1,4,1))

	iint20 = Bget(U,MD2,MSf2(2,4,1))

	iint21 = Bget(U,MS2,MSf2(1,4,2))

	iint22 = Bget(U,MS2,MSf2(2,4,2))

	iint23 = Bget(U,MU2,MSf2(1,3,1))

	iint24 = Bget(U,MU2,MSf2(2,3,1))

	iint25 = Bget(U,MT2,MSf2(1,3,3))

	iint26 = Bget(U,MT2,MSf2(2,3,3))

	iint27 = Bget(U,mtemp1u1,MU2)

	iint28 = Cget(U,MU2,mtemp1u1,0.D0,MGl2,mtemp1u1)

	iint29 = Cget(mtemp1u1,U,MU2,MGl2,MU2,mtemp1u1)

	iint30 = Cget(MU2,U,mtemp1u1,0.D0,MU2,mtemp1u1)

	iint31 = Cget(U,mtemp1u1,MU2,0.D0,MGl2,MU2)

	iint32 = Bget(T,mtemp1u1,MU2)

	iint33 = Cget(T,MU2,mtemp1u1,0.D0,MGl2,mtemp1u1)

	iint34 = Cget(mtemp1u1,T,MU2,MGl2,MU2,mtemp1u1)

	iint35 = Cget(MU2,T,mtemp1u1,0.D0,MU2,mtemp1u1)

	iint36 = Cget(T,mtemp1u1,MU2,0.D0,MGl2,MU2)

        iint40 = Dget(T,mtemp1u1,U,mtemp1u1,MU2,MU2,0.D0,MGl2,MU2,
     -   mtemp1u1)

        iint41 = Dget(T,MU2,S,mtemp1u1,mtemp1u1,MU2,0.D0,MGl2,
     -   mtemp1u1,mtemp1u1)

        iint42 = Dget(U,mtemp1u1,T,mtemp1u1,MU2,MU2,0.D0,MGl2,MU2,
     -   mtemp1u1)

        iint43 = Dget(U,MU2,S,mtemp1u1,mtemp1u1,MU2,0.D0,MGl2,
     -   mtemp1u1,mtemp1u1)

	iint44 = Dget(T,mtemp1u1,S,MU2,MU2,mtemp1u1,0.D0,MGl2,MU2,MU2)

	iint45 = Dget(U,mtemp1u1,S,MU2,MU2,mtemp1u1,0.D0,MGl2,MU2,MU2)

	end
