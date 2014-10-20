c -*- Fortran -*-

c     direct use of MADGRAPH variables for most parameters

c     MSSM parameters needed for slepton pair production
c     slepton 3: momentum p3, negative charge, mass ph_slepton3mass [GeV]
c     slepton 4: momentum p4, positive charge, mass ph_slepton4mass [GeV]
c     Let Slm = (Sl1, Sl2) be mass eigenstates, Slg = (Sll, Slr) the
c     partners of the left and right handed lepton and Slm_i = U_ij Slg_j
c     Then we denote by U3l U_{type3,1} where type3=1 or 2 is the mass
c     eigenstate type of slepton 3. We use the described order of
c     the indices also for the Fortran "matrices".
      complex *16 ph_c_U3l,ph_c_U3r,ph_c_U4l,ph_c_U4r
      real *8     ph_slepton3mass,ph_slepton4mass
      common /ph_process/ ph_c_U3l,ph_c_U3r,ph_c_U4l,ph_c_U4r,
     &        ph_slepton3mass,ph_slepton4mass
