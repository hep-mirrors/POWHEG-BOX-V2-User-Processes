// main01.cc is a part of the PYTHIA event generator.
// Copyright (C) 2012 Torbjorn Sjostrand.
// PYTHIA is licenced under the GNU GPL version 2, see COPYING for details.
// Please respect the MCnet Guidelines, see GUIDELINES for details.

// This is a simple test program. It fits on one slide in a talk.
// It studies the charged multiplicity distribution at the LHC.

#include "Pythia.h"
#include "LHAFortran.h"

using namespace Pythia8;

extern "C" {
  extern struct
  {
    double vetoscale;
    int py8veto;
  } resonancevetos_;
  extern struct {
    int py8tune;
    int nohad;
  } cpy8tune_;
  extern struct
  {
    bool powheg_nc,powheg_c_nlo;
  } wgammode_;
}


//==========================================================================

// Use userhooks to veto PYTHIA emissions above the POWHEG scale.

class PowhegHooks : public UserHooks {

public:  

  // Constructor and destructor.
   PowhegHooks(int nFinalIn, int vetoModeIn, int vetoCountIn,
               int pThardModeIn, int pTemtModeIn, int emittedModeIn,
               int pTdefModeIn, int MPIvetoModeIn) : nFinal(nFinalIn),
               vetoMode(vetoModeIn), vetoCount(vetoCountIn),
               pThardMode(pThardModeIn), pTemtMode(pTemtModeIn),
               emittedMode(emittedModeIn), pTdefMode(pTdefModeIn),
               MPIvetoMode(MPIvetoModeIn) {};
  ~PowhegHooks() {}

  // Allow process cross section to be modified..

  virtual bool canSetResonanceScale()
  {
    if(resonancevetos_.py8veto == 1) return true;
    else return false;
  }

  virtual double scaleResonance( const int iRes, const Event& event)
  {
    return resonancevetos_.vetoscale;
  }

  virtual double doVetoResonanceScale( const Event& event)
  {
	event.list();
    return false;
  }


//--------------------------------------------------------------------------

  // Routines to calculate the pT (according to pTdefMode) in a splitting:
  //   ISR: i (radiator after)  -> j (emitted after) k (radiator before)
  //   FSR: i (radiator before) -> j (emitted after) k (radiator after)
  // For the Pythia pT definition, a recoiler (after) must be specified.

  // Compute the Pythia pT separation. Based on pTLund function in History.cc
  double pTpythia(const Event &e, int RadAfterBranch, int EmtAfterBranch,
                  int RecAfterBranch, bool FSR) {

    // Convenient shorthands for later
    Vec4 radVec = e[RadAfterBranch].p();
    Vec4 emtVec = e[EmtAfterBranch].p();
    Vec4 recVec = e[RecAfterBranch].p();
    int  radID  = e[RadAfterBranch].id();

    // Calculate virtuality of splitting
    double sign = (FSR) ? 1. : -1.;
    Vec4 Q(radVec + sign * emtVec); 
    double Qsq = sign * Q.m2Calc();

    // Mass term of radiator
    double m2Rad = (abs(radID) >= 4 && abs(radID) < 7) ?
                   pow2(particleDataPtr->m0(radID)) : 0.;

    // z values for FSR and ISR
    double z, pTnow;
    if (FSR) {
      // Construct 2 -> 3 variables
      Vec4 sum = radVec + recVec + emtVec;
      double m2Dip = sum.m2Calc();
      double x1 = 2. * (sum * radVec) / m2Dip;
      double x3 = 2. * (sum * emtVec) / m2Dip;
      z     = x1 / (x1 + x3);
      pTnow = z * (1. - z);

    } else {
      // Construct dipoles before/after splitting
      Vec4 qBR(radVec - emtVec + recVec);
      Vec4 qAR(radVec + recVec);
      z     = qBR.m2Calc() / qAR.m2Calc();
      pTnow = (1. - z);
    }

    // Virtuality with correct sign
    pTnow *= (Qsq - sign * m2Rad);

    // Can get negative pT for massive splittings
    if (pTnow < 0.) {
      cout << "Warning: pTpythia was negative" << endl;
      return -1.;
    }

#ifdef DBGOUTPUT
    cout << "pTpythia: rad = " << RadAfterBranch << ", emt = "
         << EmtAfterBranch << ", rec = " << RecAfterBranch
         << ", pTnow = " << sqrt(pTnow) << endl;
#endif

    // Return pT
    return sqrt(pTnow);
  }

  // Compute the POWHEG pT separation between i and j
  double pTpowheg(const Event &e, int i, int j, bool FSR) {

    // pT value for FSR and ISR
    double pTnow = 0.;
    if (FSR) {
      // POWHEG d_ij (in CM frame). Note that the incoming beams have not
      // been updated in the parton systems pointer yet (i.e. prior to any
      // potential recoil).
      int iInA = partonSystemsPtr->getInA(0);
      int iInB = partonSystemsPtr->getInB(0);
      double betaZ = - ( e[iInA].pz() + e[iInB].pz() ) /
                       ( e[iInA].e() + e[iInB].e()  );
      Vec4 iVecBst(e[i].p()), jVecBst(e[j].p());
      iVecBst.bst(0., 0., betaZ);
      jVecBst.bst(0., 0., betaZ);

      if ( e[i].id() == 21 && e[j].id() == 21) {
          pTnow = sqrt( (iVecBst + jVecBst).m2Calc() *
                        iVecBst.e() * jVecBst.e() /
                        pow2(iVecBst.e() + jVecBst.e()) );
	  } else {
          pTnow = sqrt( (iVecBst + jVecBst).m2Calc() *
                        jVecBst.e() / iVecBst.e() );
      }
 
    } else {
      // POWHEG pT_ISR is just kinematic pT
      pTnow = e[j].pT();
    }

    // Check result
    if (pTnow < 0.) {
      cout << "Warning: pTpowheg was negative" << endl;
      return -1.;
    }

#ifdef DBGOUTPUT
    cout << "pTpowheg: i = " << i << ", j = " << j
         << ", pTnow = " << pTnow << endl;
#endif

    return pTnow;
  }

  // Calculate pT for a splitting based on pTdefMode.
  // If j is -1, all final-state partons are tried.
  // If i, k, r and xSR are -1, then all incoming and outgoing 
  // partons are tried.
  // xSR set to 0 means ISR, while xSR set to 1 means FSR
  double pTcalc(const Event &e, int i, int j, int k, int r, int xSRin) {

    // Loop over ISR and FSR if necessary
    double pTemt = -1., pTnow;
    int xSR1 = (xSRin == -1) ? 0 : xSRin;
    int xSR2 = (xSRin == -1) ? 2 : xSRin + 1;
    for (int xSR = xSR1; xSR < xSR2; xSR++) {
      // FSR flag
      bool FSR = (xSR == 0) ? false : true;

      // If all necessary arguments have been given, then directly calculate.
      // POWHEG ISR and FSR, need i and j.
      if ((pTdefMode == 0 || pTdefMode == 1) && i > 0 && j > 0) {
	// relative to the mother
	//	pTemt = pTpowheg(e, i, j, (pTdefMode == 0) ? false : FSR);
	// relative to the daughter
        pTemt = pTpowheg(e, k, j, (pTdefMode == 0) ? false : FSR);
      // Pythia ISR, need i, j and r.
      } else if (!FSR && pTdefMode == 2 && i > 0 && j > 0 && r > 0) {
        pTemt = pTpythia(e, i, j, r, FSR);

      // Pythia FSR, need k, j and r.
      } else if (FSR && pTdefMode == 2 && j > 0 && k > 0 && r > 0) {
        pTemt = pTpythia(e, k, j, r, FSR);

      // Otherwise need to try all possible combintations.
      } else {
        // Start by finding incoming legs to the hard system after
        // branching (radiator after branching, i for ISR).
        // Use partonSystemsPtr to find incoming just prior to the
        // branching and track mothers.
        int iInA = partonSystemsPtr->getInA(0);
        int iInB = partonSystemsPtr->getInB(0);
        while (e[iInA].mother1() != 1) { iInA = e[iInA].mother1(); }
        while (e[iInB].mother1() != 2) { iInB = e[iInB].mother1(); }

        // If we do not have j, then try all final-state partons
        int jNow = (j > 0) ? j : 0;
        int jMax = (j > 0) ? j + 1 : e.size();
        for (; jNow < jMax; jNow++) {

          // Final-state jNow only
          if ( !e[jNow].isFinal() ) continue;

          // POWHEG
          if (pTdefMode == 0 || pTdefMode == 1) {

            // ISR - only done once as just kinematical pT
            if (!FSR) {

              pTnow = pTpowheg(e, iInA, jNow, (pTdefMode == 0) ? false : FSR);

              if (pTnow > 0.) pTemt = (pTemt < 0) ? pTnow : min(pTemt, pTnow);
  
              // FSR - try all outgoing partons from system before branching 
              // as i. Note that for the hard system, there is no 
              // "before branching" information.
              } else {
    
		//
	      //                int outSize = partonSystemsPtr->sizeOut(0);
		//		for (int iMem = 0; iMem < outSize; iMem++) {
		//		  int iNow = partonSystemsPtr->getOut(0, iMem);

                  // Coloured only, i != jNow and no carbon copies
		//                  if (iNow == jNow) continue;
		//                  if (jNow == e[iNow].daughter1() 
		//                    && jNow == e[iNow].daughter2()) continue;

		  //		  pTnow = pTpowheg(e, iNow, jNow, (pTdefMode == 0) 
		  //				   ? false : FSR);
		  //                  if (pTnow > 0.) pTemt = (pTemt < 0) 
		  //                    ? pTnow : min(pTemt, pTnow);
		//		}  for (iMem)

		  // FSR - try all final-state coloured partons as radiator
		  //       after emission (k).
		for (int kNow = 0; kNow < e.size(); kNow++) {
		  if (kNow == jNow || !e[kNow].isFinal()) continue;
		  
		  pTnow = pTpowheg(e, kNow, jNow, (pTdefMode == 0) 
				   ? false : FSR);
		  if (pTnow > 0.) pTemt = (pTemt < 0) 
				    ? pTnow : min(pTemt, pTnow);		  
		} // for (kNow)
		//

	    } // if (!FSR)
  
          // Pythia
          } else if (pTdefMode == 2) {
  
            // ISR - other incoming as recoiler
            if (!FSR) {
              pTnow = pTpythia(e, iInA, jNow, iInB, FSR);
              if (pTnow > 0.) pTemt = (pTemt < 0) ? pTnow : min(pTemt, pTnow);
              pTnow = pTpythia(e, iInB, jNow, iInA, FSR);
              if (pTnow > 0.) pTemt = (pTemt < 0) ? pTnow : min(pTemt, pTnow);
  
            // FSR - try all final-state coloured partons as radiator
            //       after emission (k).
            } else {
              for (int kNow = 0; kNow < e.size(); kNow++) {
                if (kNow == jNow || !e[kNow].isFinal()) continue;
  
                // For this kNow, need to have a recoiler.
                // Try two incoming.
                pTnow = pTpythia(e, kNow, jNow, iInA, FSR);
                if (pTnow > 0.) pTemt = (pTemt < 0) 
                  ? pTnow : min(pTemt, pTnow);
                pTnow = pTpythia(e, kNow, jNow, iInB, FSR);
                if (pTnow > 0.) pTemt = (pTemt < 0) 
                  ? pTnow : min(pTemt, pTnow);

                // Try all other outgoing.
                for (int rNow = 0; rNow < e.size(); rNow++) {
                  if (rNow == kNow || rNow == jNow ||
                      !e[rNow].isFinal()) continue;
                  pTnow = pTpythia(e, kNow, jNow, rNow, FSR);
                  if (pTnow > 0.) pTemt = (pTemt < 0) 
                    ? pTnow : min(pTemt, pTnow);
                } // for (rNow)
  
              } // for (kNow)
            } // if (!FSR)
          } // if (pTdefMode)
        } // for (j)
      }
    } // for (xSR)

#ifdef DBGOUTPUT
    cout << "pTcalc: i = " << i << ", j = " << j << ", k = " << k
         << ", r = " << r << ", xSR = " << xSRin
         << ", pTemt = " << pTemt << endl;
#endif

    return pTemt;
  }

//--------------------------------------------------------------------------

  // Extraction of pThard based on the incoming event.
  // Assume that all the final-state particles are in a continuous block
  // at the end of the event and the final entry is the POWHEG emission.
  // If there is no POWHEG emission, then pThard is set to SCALUP.

  bool canVetoMPIStep()    { return true; }
  int  numberVetoMPIStep() { return 1; }
  bool doVetoMPIStep(int nMPI, const Event &e) {

    // Extra check on nMPI
    if (nMPI > 1) return false;

    // Find if there is a POWHEG emission. Go backwards through the
    // event record until there is a non-final particle. Also sum pT and
    // find pT_1 for possible MPI vetoing
    int    count = 0;
    double pT1 = 0., pTsum = 0.;
    for (int i = e.size() - 1; i > 0; i--) {
      if (e[i].isFinal()) {
        count++;
        pT1    = e[i].pT();
        pTsum += e[i].pT();
      } else break;
    }
    // Extra check that we have the correct final state
    //    if (count != nFinal && count != nFinal + 1) {
    //      cout << "Error: wrong number of final state particles in event" << endl;
    //      exit(1);
    //    }
    // Flag if POWHEG radiation present and index
    bool isEmt = (count == nFinal) ? false : true;
    int  iEmt  = (isEmt) ? e.size() - 1 : -1;

    // If there is no radiation or if pThardMode is 0 then set pThard = SCALUP.
    if (!isEmt || pThardMode == 0) {
      pThard = resonancevetos_.vetoscale;
      //      pThard = infoPtr->scalup();
      
    // If pThardMode is 1 then the pT of the POWHEG emission is checked against
    // all other incoming and outgoing partons, with the minimal value taken
    } else if (pThardMode == 1) {
      pThard = pTcalc(e, -1, iEmt, -1, -1, -1);

    // If pThardMode is 2, then the pT of all final-state partons is checked
    // against all other incoming and outgoing partons, with the minimal value
    // taken
    } else if (pThardMode == 2) {
      pThard = pTcalc(e, -1, -1, -1, -1, -1);
    }

    // Find MPI veto pT if necessary
    if (MPIvetoMode == 1) {
      pTMPI = infoPtr->QFac();
      //      pTMPI = (isEmt) ? pTsum / 2. : pT1;
    }

#ifdef DBGOUTPUT
    cout << "doVetoMPIStep: Qfac = " << infoPtr->scalup()
         << ", pThard = " << pThard << endl << endl;
#endif

    // Initialise other variables
    // Initialise other variables
    accepted   = false;
    nAcceptSeq = nISRveto = nFSRveto = 0;

    //    pThard = infoPtr->QFac();

    // Do not veto the event
    return false;
  }

//--------------------------------------------------------------------------

  // ISR veto

  bool canVetoISREmission() { return (vetoMode == 0) ? false : true; }
  bool doVetoISREmission(int, const Event &e, int iSys) {
    // Must be radiation from the hard system
    if (iSys != 0) return false;

    // If we already have accepted 'vetoCount' emissions in a row, do nothing
//    if (vetoMode == 1 && nAcceptSeq >= vetoCount) return false;

    // Pythia radiator after, emitted and recoiler after.
    int iRadAft = -1, iEmt = -1, iRecAft = -1;
    for (int i = e.size() - 1; i > 0; i--) {
      if      (iRadAft == -1 && e[i].status() == -41) iRadAft = i;
      else if (iEmt    == -1 && e[i].status() ==  43) iEmt    = i;
      else if (iRecAft == -1 && e[i].status() == -42) iRecAft = i;
      if (iRadAft != -1 && iEmt != -1 && iRecAft != -1) break;
    }
    if (iRadAft == -1 || iEmt == -1 || iRecAft == -1) {
      e.list();
      cout << "Error: couldn't find Pythia ISR emission" << endl;
      exit(1);
    }

    // pTemtMode == 0: pT of emitted w.r.t. radiator
    // pTemtMode == 1: min(pT of emitted w.r.t. all incoming/outgoing)
    // pTemtMode == 2: min(pT of all outgoing w.r.t. all incoming/outgoing)
    int xSR      = (pTemtMode == 0) ? 0       : -1;
    int i        = (pTemtMode == 0) ? iRadAft : -1;
    int j        = (pTemtMode != 2) ? iEmt    : -1;
    int k        = -1;
    int r        = (pTemtMode == 0) ? iRecAft : -1;
    double pTemt = pTcalc(e, i, j, k, r, xSR);

#ifdef DBGOUTPUT
    cout << "doVetoISREmission: pTemt = " << pTemt << endl << endl;
#endif

    // Veto if pTemt > pThard
    if (pTemt > pThard) {
      nAcceptSeq = 0;
      nISRveto++;
      return true;
    }

    // Else mark that an emission has been accepted and continue
    nAcceptSeq++;
    accepted = true;
    return false;
  }

//--------------------------------------------------------------------------

  // FSR veto

  bool canVetoFSREmission() { return (vetoMode == 0) ? false : true; }
  bool doVetoFSREmission(int, const Event &e, int iSys, bool inr) {
    // Must be radiation from the hard system or from a resonance
//    if (iSys != 0 && inr != 1) return false;
    if (iSys != 0) return false;

    // If we already have accepted 'vetoCount' emissions in a row, do nothing
//    if (vetoMode == 1 && nAcceptSeq >= vetoCount) return false;

    // Pythia radiator (before and after), emitted and recoiler (after)
    int iRecAft = e.size() - 1;
    int iEmt    = e.size() - 2;
    int iRadAft = e.size() - 3;
    int iRadBef = e[iEmt].mother1();
    if ( (e[iRecAft].status() != 52 && e[iRecAft].status() != -53) ||
         e[iEmt].status() != 51 || e[iRadAft].status() != 51) {
      e.list();
      cout << "Error: couldn't find Pythia FSR emission" << endl;
      exit(1);
    }

    // Behaviour based on pTemtMode:
    //  0 - pT of emitted w.r.t. radiator before
    //  1 - min(pT of emitted w.r.t. all incoming/outgoing)
    //  2 - min(pT of all outgoing w.r.t. all incoming/outgoing)
    int xSR = (pTemtMode == 0) ? 1       : -1;
    int i   = (pTemtMode == 0) ? iRadBef : -1;
    int k   = (pTemtMode == 0) ? iRadAft : -1;
    int r   = (pTemtMode == 0) ? iRecAft : -1;

    // When pTemtMode is 0 or 1, iEmt has been selected
    double pTemt;
    if (pTemtMode == 0 || pTemtMode == 1) {
      // Which parton is emitted, based on emittedMode:
      //  0 - Pythia definition of emitted
      //  1 - Pythia definition of radiated after emission
      //  2 - Random selection of emitted or radiated after emission
      //  3 - Try both emitted and radiated after emission
      int j = iRadAft;
      if (emittedMode == 0 || (emittedMode == 2 && rndmPtr->flat() < 0.5)) j++;

      for (int jLoop = 0; jLoop < 2; jLoop++) {
        if      (jLoop == 0) pTemt = pTcalc(e, i, j, k, r, xSR);
        else if (jLoop == 1) pTemt = min(pTemt, pTcalc(e, i, j, k, r, xSR));
  
        // For emittedMode == 3, have tried iRadAft, now try iEmt
        if (emittedMode != 3) break;
        if (k != -1) swap(j, k); else j = iEmt;
      }

    // If pTemtMode is 2, then try all final-state partons as emitted
    } else if (pTemtMode == 2) {
      pTemt = pTcalc(e, i, -1, k, r, xSR);
    }


#ifdef DBGOUTPUT
    cout << "doVetoFSREmission: pTemt = " << pTemt << endl << endl;
#endif

    // Veto if pTemt > pThard
    if (pTemt > pThard) {
      nAcceptSeq = 0;
      nFSRveto++;
      return true;
    }

    // Else mark that an emission has been accepted and continue
    nAcceptSeq++;
    accepted = true;
    return false;
  }

//--------------------------------------------------------------------------

  // MPI veto

  bool canVetoMPIEmission() { return (MPIvetoMode == 0) ? false : true; }
  bool doVetoMPIEmission(int, const Event &e) {
    if (MPIvetoMode == 1) {
      if (e[e.size() - 1].pT() > pTMPI) {
#ifdef DBGOUTPUT
        cout << "doVetoMPIEmission: pTnow = " << e[e.size() - 1].pT()
             << ", pTMPI = " << pTMPI << endl << endl;
#endif
        return true;
      }
    }
    return false;
  }

//--------------------------------------------------------------------------

  // Functions to return information

  int    getNISRveto() { return nISRveto; }
  int    getNFSRveto() { return nFSRveto; }

private:
  int    nFinal, vetoMode, vetoCount, pThardMode, pTemtMode,
         emittedMode, pTdefMode, MPIvetoMode;
  double pThard, pTMPI;
  bool   accepted;
  // The number of accepted emissions (in a row)
  int nAcceptSeq;
  // Statistics on vetos
  unsigned long int nISRveto, nFSRveto;

};

Pythia pythia;
LHAupFortran LHAinstance;

extern "C" {
  void pythia_init_()
  {

    // Generator. Process selection.
    pythia.settings.addMode("POWHEG:nFinal",    2, true, false, 1, 0);
    pythia.settings.addMode("POWHEG:veto",      1, true, true,  0, 2);
    pythia.settings.addMode("POWHEG:vetoCount", 3, true, false, 0, 0);
    pythia.settings.addMode("POWHEG:pThard",    0, true, true,  0, 2);
    pythia.settings.addMode("POWHEG:pTemt",     0, true, true,  0, 2);
    pythia.settings.addMode("POWHEG:emitted",   0, true, true,  0, 3);
    pythia.settings.addMode("POWHEG:pTdef",     1, true, true,  0, 2);
    pythia.settings.addMode("POWHEG:MPIveto",   1, true, true,  0, 1);

    pythia.readString("POWHEG:nFinal = 3");
    pythia.readString("POWHEG:veto = 1");
    pythia.readString("POWHEG:vetoCount = 3");
    pythia.readString("POWHEG:pThard = 0");
    pythia.readString("POWHEG:pTemt = 0");
    pythia.readString("POWHEG:emitted = 0");
    pythia.readString("POWHEG:pTdef = 1");
    pythia.readString("POWHEG:MPIveto = 1");

    // Read in main settings
    int nEvent      = pythia.settings.mode("Main:numberOfEvents");
    int nError      = pythia.settings.mode("Main:timesAllowErrors");
    // Read in POWHEG settings
    int nFinal      = pythia.settings.mode("POWHEG:nFinal");
    int vetoMode    = pythia.settings.mode("POWHEG:veto");
    int vetoCount   = pythia.settings.mode("POWHEG:vetoCount");
    int pThardMode  = pythia.settings.mode("POWHEG:pThard");
    int pTemtMode   = pythia.settings.mode("POWHEG:pTemt");
    int emittedMode = pythia.settings.mode("POWHEG:emitted");
    int pTdefMode   = pythia.settings.mode("POWHEG:pTdef");
    int MPIvetoMode = pythia.settings.mode("POWHEG:MPIveto");

    // Add in user hooks for shower vetoing
    PowhegHooks *PWGHooks = NULL;

    pythia.readString("SpaceShower:pTmaxMatch = 2");
    pythia.readString("TimeShower:pTmaxMatch = 2");

    // MPI
    pythia.readString("PartonLevel:MPI = off");

    // Set MPI to start at the kinematical limit
    if (MPIvetoMode > 0)
      {
        pythia.readString("MultipartonInteractions:pTmaxMatch = 2");
      }

    PWGHooks = new PowhegHooks(nFinal, vetoMode, vetoCount,
			       pThardMode, pTemtMode, emittedMode, pTdefMode, MPIvetoMode);
    pythia.setUserHooksPtr((UserHooks *) PWGHooks);

    // tune
    if(cpy8tune_.py8tune == 14) {
      pythia.readString("Tune:pp = 14"); // Monash2013 tune
      cout << "pythia8F77: setting pythia tune 14";
      //      pythia.readString("Tune:pp = 5"); // Default
    }

    // hadronization
    if(cpy8tune_.nohad == 1) {
      pythia.readString("HadronLevel:All = off");
      //     default on (hadronization and decays)//
    }

    //QED shower
    pythia.readString("TimeShower:QEDshowerByL  = on");
    pythia.readString("TimeShower:QEDshowerByQ  = on");
    pythia.readString("SpaceShower:QEDshowerByQ  = on");
    pythia.readString("TimeShower:alphaEMorder = 0"); //alpha(0) for QED shower
    pythia.readString("SpaceShower:alphaEMorder = 0"); //alpha(0) for QED shower
    // lower QED shower cutoff 
    pythia.readString("TimeShower:pTminChgL=1.e0"); // dressed lepton
    pythia.readString("TimeShower:pTminChgQ=0.8944e0"); // QED to comply with PowHeg
    pythia.readString("SpaceShower:pTminChgQ=0.8944e0"); // QED to comply with PowHeg

    // lower QCD shower cutoff
    pythia.readString("TimeShower:pTmin=0.8944e0"); // QCD to comply with PowHeg
    pythia.readString("SpaceShower:pTmin=0.8944e0"); // QCD to comply with PowHeg

    // in powheg-nc mode turn off QED shower
    if (wgammode_.powheg_nc)
      {
	pythia.readString("TimeShower:QEDshowerByL  = off");
	pythia.readString("TimeShower:QEDshowerByQ  = off");
	pythia.readString("SpaceShower:QEDshowerByQ  = off");
      }

    // stable hadrons
    pythia.readString("111:mayDecay = off");
    pythia.readString("221:mayDecay = off");
    pythia.readString("223:mayDecay = off");
    pythia.readString("331:mayDecay = off");

    pythia.init(&LHAinstance);
  }

  void pythia_next_(int & iret)
  {
    // Begin event loop. Generate event. Skip if error. List first one.
    iret = pythia.next();
  }
  void pythia_to_hepevt_(const int &nmxhep, int & nhep, int * isthep,
                         int * idhep,
                         int  (*jmohep)[2], int (*jdahep)[2],
                         double (*phep)[5], double (*vhep)[4])
  {
    nhep = pythia.event.size();
    if(nhep>nmxhep)
      {
	cout << "too many particles!" ;
	exit(-1);
    }
    for (int i = 0; i < pythia.event.size(); ++i)
    {
      *(isthep+i) = pythia.event.statusHepMC(i);
      *(idhep+i) = pythia.event[i].id();
      // All pointers should be increased by 1, since here we follow
      // the c/c++ convention of indeces from 0 to n-1, but i fortran
      // they are from 1 to n.
      (*(jmohep+i))[0] = pythia.event[i].mother1() + 1;
      (*(jmohep+i))[1] = pythia.event[i].mother2() + 1;
      (*(jdahep+i))[0] = pythia.event[i].daughter1() + 1;
      (*(jdahep+i))[1] = pythia.event[i].daughter2() + 1;
      (*(phep+i))[0] = pythia.event[i].px();
      (*(phep+i))[1] = pythia.event[i].py();
      (*(phep+i))[2] = pythia.event[i].pz();
      (*(phep+i))[3] = pythia.event[i].e();
      (*(phep+i))[4] = pythia.event[i].m();
    }
    // override mother of very first event, set to 0
    *(jmohep)[0] = 0 ;
    *(jmohep)[1] = 0 ;
  }

}


// User-written routine that does the event generation and fills hepeup.
// We do nothing here; we fill the common block on the fortran side
// before we start pythia and before we call each event.

bool LHAupFortran::fillHepRup()
{
  return true;
}

bool LHAupFortran::fillHepEup()
{
  return true;
}

