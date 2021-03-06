*#define CHECK

* LLgg_SquaredME.F
* assembly of squared matrix element
* generated by FormCalc 6.1D0 24 Sep 2013 14:22
* CH: adapted this file

	subroutine LLgg_SquaredME(result, helicities, flags)
	implicit none
	double precision result
	integer*8 helicities
	integer flags

#include "LLgg_vars.h"

	double precision LLgg_sumup
	external LLgg_sumup

	integer Hel1, Hel2, Hel3, Hel4
	equivalence (Hel(1), Hel1)
	equivalence (Hel(2), Hel2)
	equivalence (Hel(3), Hel3)
	equivalence (Hel(4), Hel4)

	integer jSUNtree, nSUNtree
	parameter (nSUNtree = 2)

	integer jSUNloop, nSUNloop
	parameter (nSUNloop = 3)

	data MatSUN /6*bogus/

	call CalcRenConst

	S = SInvariant(1,2)

	T = TInvariant(1,3)

	U = TInvariant(2,3)


#define RESET_IF if( btest(flags, 0) ) then
#define RESET_ENDIF endif

#define LOOP_IF if( btest(flags, 1) ) then
#define LOOP_ENDIF endif

#define HEL_IF(i) if( btest(helicities, 22-5*i+Hel(i)) ) then
#define HEL_ENDIF(i) endif

	RESET_IF
	call LLgg_abbr0_s
	LOOP_IF
	call LLgg_abbr1_s
	LOOP_ENDIF
	RESET_ENDIF

	call markcache

	LOOP_IF
	call LLgg_abbr1_angle
	LOOP_ENDIF

	result = 0

	do Hel1 = -2, 2
	HEL_IF(1)
	do Hel2 = -2, 2
	HEL_IF(2)
	do Hel3 = -2, 2
	HEL_IF(3)
	do Hel4 = -2, 2
	HEL_IF(4)

	call LLgg_abbr0_hel
	LOOP_IF
	call LLgg_abbr1_hel
	LOOP_ENDIF

	do jSUNtree = 1, nSUNtree
	Ctree(jSUNtree) = 0
	enddo

	do jSUNloop = 1, nSUNloop
	Cloop(jSUNloop) = 0
	enddo

	call LLgg_bornuLuLgg


	LOOP_IF
	call LLgg_selfuLuLgg
	call LLgg_triuLuLgg
	call LLgg_boxuLuLgg

	result = result + 2*LLgg_sumup(Cloop, nSUNloop, Ctree, nSUNtree)
	LOOP_ENDIF

	HEL_ENDIF(4)
	enddo
	HEL_ENDIF(3)
	enddo
	HEL_ENDIF(2)
	enddo
	HEL_ENDIF(1)
	enddo

	call restorecache

#ifdef CHECK
	print *, 'S =', S
	print *, 'T =', T
	print *, 'U =', U

	print *, 'loop =', result
	stop
#endif
	end


************************************************************************

	double precision function LLgg_sumup(CCloop, nSUNloop, CCtree, nSUNtree)
	implicit none

#include "LLgg_vars.h"

	integer jSUNloop, nSUNloop
	integer jSUNtree, nSUNtree
	double complex CCloop(nSUNloop), CCtree(nSUNtree)
	double complex m

	LLgg_sumup = 0

	do jSUNtree = 1, nSUNtree
	m = 0
	do jSUNloop = 1, nSUNloop
	m = m + CCloop(jSUNloop)*MatSUN(jSUNloop,jSUNtree)
	enddo
	LLgg_sumup = LLgg_sumup + DBLE(DCONJG(CCtree(jSUNtree))*m)
	enddo
	end

