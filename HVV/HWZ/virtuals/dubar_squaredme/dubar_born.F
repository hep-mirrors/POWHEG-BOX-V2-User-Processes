#if 0
* dubar_born.F
* form factors for {F[4, {1, Index[Colour, 1]}], -F[3, {1, Index[Colour, 2]}]} -> {S[1], V[2], V[3]}
* generated by FormCalc 7.5 on 27-Mar-2015 19:34
#endif

#include "dubar_vars.h"


	subroutine dubar_born
	implicit none

#include "dubar_vars.h"


#include "inline.h"

        Ctree(1) = Ctree(1) - 
     &    (4*Alfa*CW*MW*Pi)/(CW2*SW2)*
     &     (AbbSum1*EL*CKM(1,1)*Sqrt(2.D0))/
     &      ((-MW2 + S + cI*MW*WWdth)*(-MZ2 + S34 + cI*MZ*ZWdth)*SW) + 
     &    (2*Alfa*MW*Pi*(-3 + 4*SW2))/(3.D0*CW*CW2*SW2)*
     &     (AbbSum6*EL*CKM(1,1)*Sqrt(2.D0))/
     &      ((-MZ2 + S34 + cI*MZ*ZWdth)*(-MU2 + Sub1)*SW) + 
     &    (Alfa*MW*Pi*(-3 + 2*SW2))/(3.D0*CW*CW2*SW2)*
     &     (AbbSum7*EL*CKM(1,1)*Sqrt(2.D0))/
     &      ((-MZ2 + S34 + cI*MZ*ZWdth)*(-MD2 + Sub4)*SW) + 
     &    (Alfa*MW*Pi*(-3 + 2*SW2))/(3.D0*CW*SW2)*
     &     (AbbSum4*EL*CKM(1,1)*Sqrt(2.D0))/
     &      ((-MW2 + Sub3 + cI*MW*WWdth)*SW*(-MD2 + T14)) + 
     &    (2*Alfa*MW*Pi*(-3 + 4*SW2))/(3.D0*CW*SW2)*
     &     (AbbSum5*EL*CKM(1,1)*Sqrt(2.D0))/
     &      ((-MW2 + Sub3 + cI*MW*WWdth)*SW*(-MU2 + T24)) - 
     &    (2*Alfa*MW*Pi)/(CW*SW2)*
     &     (EL*CKM(1,1)*Sqrt(2.D0)*(SW2*Abb1 + CW2*AbbSum2))/
     &      ((-MW2 + S + cI*MW*WWdth)*(-MW2 + Sub3 + cI*MW*WWdth)*SW) + 
     &    (2*Alfa*MW*Pi)/(CW*SW2)*
     &     (EL*CKM(1,1)*Sqrt(2.D0)*(SW2*Abb5 - 2*CW2*AbbSum3))/
     &      ((-MW2 + S + cI*MW*WWdth)*(-MW2 + Sub2 + cI*MW*WWdth)*SW)

#ifdef DEBUG
	DEB("dubar_born: Ctree(1) =", Ctree(1))
#endif

	end
