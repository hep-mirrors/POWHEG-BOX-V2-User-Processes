      double precision s125,s15,s25,s12,s1d,s2d,s5d,sd,e1234
      double precision r15,r25,r1d,r2d,r5d,rd,i1r15,i1r25,i1r15r25,ir15r25
      double complex imagunit
      double precision Nc, Na, CF
      double precision hSM, hSUSY
      double precision m2t, m2gl, m2sq1r, m2sq1l, rt, rgl, rsq1l, rsq1r
      double precision gs, gem, pi, musq
      double precision debug, Dia
      parameter (imagunit=dcmplx(0.0d0, 1.0d0))
      parameter (Nc=3d0, CF=4/3d0, Na=8d0)
      parameter (hSM=1d0,hSUSY=1d0)
      parameter (pi=3.1415926535897932385d0)
      common /avm_kin/ s125,s15,s25,s12,s1d,s2d,s5d,sd,e1234,
     & r15,r25,r1d,r2d,r5d,rd,i1r15,i1r25,i1r15r25,ir15r25,
     & m2t,m2gl,m2sq1r,m2sq1l,rt,rgl,rsq1l,rsq1r,
     & gs,gem,musq,
     & debug

