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
      real * 8 virtual, virtualedm, virtuals
      real * 8 born,dummy(0:3,0:3)
      real *8 s,dotp, p34
      complex *16 prop34w
      external dotp
      real * 8 charge(-5:5)
c      data (charge(ijkh),ijkh=-5,5) 
c      data (flav(ijkh),ijkh=-5,5) 
c      data flav
c     #     /'b~','c~','s~','u~','d~','g','d','u','s','c','b'/
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
c      include 'QuarkFlavs.h'
      real * 8 amp2, amp2edm, amp2xi, amp2s, amp2t, amp2st, amp2edm_l
      integer ferm_type(nlegborn)
      integer i,j
      real * 8 ferm_charge(nlegborn)
c     vector boson id and decay
      integer idvecbos,vdecaymode
      common/cvecbos/idvecbos,vdecaymode   

      if (abs(vflav(3)).le.6.or.abs(vflav(4)).le.6) then
         write(*,*) 'born_ampsq: ERROR in flavor assignement'
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


c     antilepton-neutrino from W decay
      ferm_type(3) = vflav(3)/abs(vflav(3))
      ferm_charge(3) = ferm_type(3)*(-1d0)
      ferm_type(4) = -ferm_type(3)
      ferm_charge(4) = 0d0

      p34=dotp(p(0,3),p(0,4))
      
c     W propagator
      if(ph_runwidth) then
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw*2d0*p34/ph_Wmass2)
      else
         prop34w=1d0/dcmplx(2d0*p34-ph_Wmass2,ph_WmWw)
      endif      
      
      amp2edm = 0d0
      amp2xi  = 0d0
      amp2edm_l = 0d0
      
      
      if(idvecbos.eq.24) then
         call q_aqp_to_al_vl(p,ferm_type,ferm_charge,
     $        amp2)
	 if(wdm) then
	   call q_aqp_to_al_vl_wedm(p,ferm_type,ferm_charge,
     $        amp2edm,amp2edm_l)
     	   call q_aqp_to_al_vl_xi(p,ferm_type,ferm_charge,
     $        amp2xi)
	   call q_aqp_to_al_vl_4f(p,ferm_type,ferm_charge,
     $        amp2s,amp2t,amp2st)
	 endif
      elseif(idvecbos.eq.-24) then
         call q_aqp_to_l_avl(p,ferm_type,ferm_charge,
     $        amp2)
	 if(wdm) then 
	    call q_aqp_to_l_avl_wedm(p,ferm_type,ferm_charge,
     $        amp2edm,amp2edm_l)
     	    call q_aqp_to_l_avl_xi(p,ferm_type,ferm_charge,
     $        amp2xi)
            call q_aqp_to_l_avl_4f(p,ferm_type,ferm_charge,
     $        amp2s,amp2t,amp2st)
	 endif
      else
         write(*,*) 'ERROR: this subroutine deals only with W+ or W- '
         call exit(1)
      endif
      
            
      s=2d0*dotp(p(0,1),p(0,2))
      virtual=pi**2 - 8 - 3*log(st_muren2/s) -log(st_muren2/s)**2
      virtualedm= pi**2 - 8 - 4*log(st_muren2/s) -log(st_muren2/s)**2
      virtuals  =pi**2 - 2 			  -log(st_muren2/s)**2
	
      
c     add the four-fermion corrections       
      if(mod(abs(i),2).eq.0) then
         virtual= virtual * amp2*(  
     .     ph_CKM(abs(i)/2,(abs(j)+1)/2)**2   
     .   - 2d0*( 2*p34 - ph_Wmass2)/ph_Wmass2 *
     .     ph_QL3(abs(i)/2,(abs(j)+1)/2)*ph_CKM(abs(i)/2,(abs(j)+1)/2)
     .   + 1d0/(prop34w * DCONJG(prop34w))/ph_Wmass2**2*
     .     ph_QL3(abs(i)/2,(abs(j)+1)/2)**2      )  
     .+    virtual * amp2xi*(   ph_ReXi(abs(i)/2,(abs(j)+1)/2)**2 
     .		              + ph_ImXi(abs(i)/2,(abs(j)+1)/2)**2 )
     .+   virtualedm* amp2edm*( ph_ReGUw(abs(i)/2,(abs(j)+1)/2)**2 
     .                        + ph_ReGDw(abs(i)/2,(abs(j)+1)/2)**2 
     .                        + ph_ImGUw(abs(i)/2,(abs(j)+1)/2)**2 
     .		              + ph_ImGDw(abs(i)/2,(abs(j)+1)/2)**2 )
     . + virtual * amp2edm_l *(ph_ReGEw**2 + ph_ImGEw**2)
     .+  virtuals* amp2s *     
     .       ( ph_Re_LeQu(abs(i)/2,(abs(j)+1)/2)**2 
     .       + ph_Re_LedQ(abs(i)/2,(abs(j)+1)/2)**2  
     .       + ph_Im_LeQu(abs(i)/2,(abs(j)+1)/2)**2 
     .       + ph_Im_LedQ(abs(i)/2,(abs(j)+1)/2)**2  )  
     .+ virtualedm*amp2t *(  
     .         ph_Re_LeQu3(abs(i)/2,(abs(j)+1)/2)**2 
     .        +ph_Im_LeQu3(abs(i)/2,(abs(j)+1)/2)**2 )
     .+ (virtualedm + virtuals)/2d0*amp2st *    
     .       (ph_Re_LeQu3(abs(i)/2,(abs(j)+1)/2)*
     .	      ph_Re_LeQu (abs(i)/2,(abs(j)+1)/2) +
     .        ph_Im_LeQu3(abs(i)/2,(abs(j)+1)/2)*
     .	      ph_Im_LeQu (abs(i)/2,(abs(j)+1)/2)     )
c    down     
      elseif(mod(abs(i),2).eq.1) then   
         virtual= virtual * amp2*( ph_CKM(abs(j)/2,(abs(i)+1)/2)**2  
     .   - 2d0*( 2*p34 - ph_Wmass2)/ph_Wmass2 *
     .     ph_QL3(abs(j)/2,(abs(i)+1)/2)*ph_CKM(abs(j)/2,(abs(i)+1)/2)
     .   + 1d0/(prop34w * DCONJG(prop34w))/ph_Wmass2**2*
     .     ph_QL3(abs(j)/2,(abs(i)+1)/2)**2      ) 
     .+    virtual * amp2xi*(   ph_ReXi(abs(j)/2,(abs(i)+1)/2)**2
     .		              + ph_ImXi(abs(j)/2,(abs(i)+1)/2)**2 )
     . + virtual * amp2edm_l *(ph_ReGEw**2 + ph_ImGEw**2)
     .+	  virtualedm* amp2edm*( ph_ReGUw(abs(j)/2,(abs(i)+1)/2)**2 
     .  	   + ph_ReGDw(abs(j)/2,(abs(i)+1)/2)**2 
     .             + ph_ImGUw(abs(j)/2,(abs(i)+1)/2)**2 
     .             + ph_ImGDw(abs(j)/2,(abs(i)+1)/2)**2 )
     . + virtuals* amp2s *     
     .       ( ph_Re_LeQu(abs(j)/2,(abs(i)+1)/2)**2 
     .       + ph_Re_LedQ(abs(j)/2,(abs(i)+1)/2)**2 
     .       + ph_Im_LeQu(abs(j)/2,(abs(i)+1)/2)**2
     . 	      +ph_Im_LedQ(abs(j)/2,(abs(i)+1)/2)**2)  
     . + virtualedm*amp2t *( 
     .         ph_Re_LeQu3(abs(j)/2,(abs(i)+1)/2)**2 
     .      +  ph_Im_LeQu3(abs(j)/2,(abs(i)+1)/2)**2)
     . + (virtualedm + virtuals)/2d0*amp2st*
     .        (ph_Re_LeQu3(abs(j)/2,(abs(i)+1)/2)* 
     .	       ph_Re_LeQu (abs(j)/2,(abs(i)+1)/2)
     .  +      ph_Im_LeQu3(abs(j)/2,(abs(i)+1)/2)* 
     .	       ph_Im_LeQu (abs(j)/2,(abs(i)+1)/2)          )
      endif
      
      virtual = virtual * cf 
      
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
