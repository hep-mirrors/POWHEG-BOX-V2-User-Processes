C     returns 2 Re(M_B * M_V)/(as/(2pi)), 
C     where M_B is the Born amplitude and 
C     M_V is the finite parte of the virtual amplitude.
C     The as/(2pi) factor is attached at a later point.
      subroutine setvirtual(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'PhysPars.h'
      include 'pwhg_math.h'
      include 'pwhg_st.h'
      real *8 p(0:3,nlegborn),virtual
      integer vflav(nlegborn)
      real * 8 c0,q2,llog
      real *8 born,bornjk(nlegborn,nlegborn),bmunu(0:3,0:3,nlegborn)
      real *8 dotp
      external dotp

      virtual=0d0
      end
