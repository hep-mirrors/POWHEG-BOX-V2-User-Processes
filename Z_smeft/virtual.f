c     returns 2 Re(M_B * M_V)/(as/(2pi)), 
c     where M_B is the Born amplitude and 
c     M_V is the finite part of the virtual amplitude
c     The as/(2pi) factor is attached at a later point
      subroutine setvirtual(p,vflav,virtual)
      implicit none
      include 'nlegborn.h'
      include 'pwhg_st.h'
      include 'pwhg_math.h'
      include 'PhysPars.h'
      real * 8 p(0:3,nlegborn)
      integer vflav(nlegborn)
      real * 8 virtual, virtualedm, amp2, amp2edm, virtualt
      real * 8 virtuals, amp2scalar, amp2t, amp2st, amp2l, virtual_l
      real * 8 born,dummy(0:3,0:3)
      real *8 s,dotp
      external dotp
      real * 8 charge(-5:5)
      data charge
     #     / 0.33333333333333333333d0, !   1d0/3
     #      -0.66666666666666666667d0, !  -2d0/3
     #       0.33333333333333333333d0, !   1d0/3 
     #      -0.66666666666666666667d0, !   -2d0/3
     #       0.33333333333333333333d0, !   1d0/3 
     #       0d0,                      !   0d0   
     #      -0.33333333333333333333d0, !   -1d0/3
     #       0.66666666666666666667d0, !   2d0/3   
     #      -0.33333333333333333333d0, !   -1d0/3
     #       0.66666666666666666667d0, !   2d0/3 
     #      -0.33333333333333333333d0/ !   -1d0/3


      integer ferm_type(nlegborn)
      integer i,j
      real * 8 ferm_charge(nlegborn)

c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode

      
      if (vflav(3).le.0.or.vflav(4).ge.0) then
         write(*,*) 'Error in setvirtual'
         stop
      endif
      ferm_type(3) = +1
      ferm_type(4) = -1

      if(mod(vdecaymode,2).eq.1) then
         ferm_charge(3) = -1d0
         ferm_charge(4) = +1d0
      elseif(mod(vdecaymode,2).eq.0) then
         ferm_charge(3) = 0d0
         ferm_charge(4) = 0d0
      else
         write(*,*) 'Error in vdecaymode in setvirtual'
         stop
      endif

      
c     i is the flavour index of first incoming parton
c     j is the flavour index of second incoming parton
c     with the convention:
c     
c      -6  -5  -4  -3  -2  -1  0  1  2  3  4  5  6                    
c      t~  b~  c~  s~  u~  d~  g  d  u  s  c  b  t                    
      
      i = vflav(1)
      j = vflav(2)
      ferm_charge(1) = charge(i)
      ferm_charge(2) = charge(j)
      ferm_type(1) = i/abs(i)
      ferm_type(2) = j/abs(j)
      
      s=2d0*dotp(p(0,1),p(0,2))
      call q_aq_to_l_al(p,ferm_type,ferm_charge,vflav,amp2) 
      virtual=pi**2 - 8 - 3*log(st_muren2/s) -log(st_muren2/s)**2
      virtual=virtual *cf *amp2
      
      virtualedm = 0d0
      if(edm) then
	call q_aq_to_l_al_edm(p,ferm_type,ferm_charge,vflav,amp2edm,amp2l)
	call q_aq_to_l_al_4f(p,ferm_type,ferm_charge,vflav,amp2scalar
     .,amp2t,amp2st)
	virtualt  =pi**2 - 8 - 4*log(st_muren2/s) -log(st_muren2/s)**2
	virtuals  =pi**2 - 2 			  -log(st_muren2/s)**2
	virtual_l =pi**2 - 8 - 3*log(st_muren2/s) -log(st_muren2/s)**2
	virtualedm=virtualt *cf *(amp2edm + amp2t) + virtual_l * amp2l
	virtuals=virtuals *cf *amp2scalar + amp2st * cf/2d0 * 
     .	(virtuals + virtualt)
      endif
	
	
      virtual = virtual + virtualedm + virtuals
      

      end


c$$$c     returns 2 Re(M_B * M_V)/(as/(2pi)), 
c$$$c     where M_B is the Born amplitude and 
c$$$c     M_V is the finite part of the virtual amplitude
c$$$c     The as/(2pi) factor is attached at a later point
c$$$
c$$$c     Like setvirtual, but it calculates only the independent
c$$$c     virtual contributions and fills directly the array 'virt_arr'.
c$$$c     
c$$$c     At the moment (revision 12), no calls to setvirtual_fast are present
c$$$c     in the main code. Therefore, this routine is left dummy.
c$$$
c$$$      subroutine setvirtual_fast(virt_arr)
c$$$      implicit none
c$$$      include 'nlegborn.h'
c$$$      include 'pwhg_flst.h'
c$$$      real * 8 virt_arr(flst_nborn)
c$$$
c$$$      write(*,*) 'Error: setvirtual_fast is not implemented yet'
c$$$      stop
c$$$
c$$$      end


