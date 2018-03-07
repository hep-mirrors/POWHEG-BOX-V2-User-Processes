      function chargeofparticle_local(id)
c WEW,  chargeofparticle_local() added
c Returns the electric charge (in units of the positron charge)
c of particle id (pdg conventions, gluon is zero)
      implicit none
      real * 8 chargeofparticle_local
      integer id
      if(abs(id).gt.0.and.abs(id).le.6) then
         if(mod(abs(id),2).eq.0) then
            chargeofparticle_local =  2d0/3
         else
            chargeofparticle_local = -1d0/3
         endif
      elseif(abs(id).gt.10.and.abs(id).le.16) then
         if(mod(abs(id),2).ne.0) then
            chargeofparticle_local = -1d0
         else
            chargeofparticle_local = 0
         endif
      else
         chargeofparticle_local=0
      endif
      end


      function sigma_local(id,pos)
c WEW, sigma_local() added
c Returns the sigma_local of particle id
c + 1 for incoming fermion or outgoing antifermion
c - 1 for incoming antifermion or outgoing fermion
      integer sigma_local
      integer id,pos

      if (id.gt.0.and.pos.le.2) then
          sigma_local =  1
      elseif (id.lt.0.and.pos.gt.2) then
          sigma_local =  1
      else
          sigma_local = -1
      endif

      end

      
