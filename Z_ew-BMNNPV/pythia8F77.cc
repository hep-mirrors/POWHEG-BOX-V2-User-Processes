// main01.cc is a part of the PYTHIA event generator.
// Copyright (C) 2012 Torbjorn Sjostrand.
// PYTHIA is licenced under the GNU GPL version 2, see COPYING for details.
// Please respect the MCnet Guidelines, see GUIDELINES for details.

// This is a simple test program. It fits on one slide in a talk.
// It studies the charged multiplicity distribution at the LHC.

#include "Pythia.h"
#include "LHAFortran.h"

#include "Photos/Photos.h"
#include "Photos/PhotosHEPEVTEvent.h"

using namespace Pythia8;

using namespace Photospp;

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
    bool vetopt1;
  } vetochoice_;
  extern struct
    {
    int evtnumber;
  } evtprint_;
  extern struct
   {
    bool noQEDqopt;
  } noqedfromq_;
  extern struct
  {
    bool use_photos;
  } optionphotos_;
  extern struct
  {
    double xphcut;
  } photoscutoff_;
  extern struct
  {
    int    nevhep;
    int    nhep;
    int    isthep[10000];
    int    idhep[10000];
    int    jmohep[10000][2];
    int    jdahep[10000][2];
    double phep[10000][5];
    double vhep[10000][4];
  } ph_hepevt_;
}


// PHOTOS C++ interface

extern "C" {

  void photos_init_()
  {
    Photos::initialize();
    //Photos::setMeCorrectionWtForW(true); 
    //Photos::setDoubleBrem(true);

    // Turn on NLO corrections - only for PHOTOS 3.2 or higher

    //Photos::maxWtInterference(4.0);
    //Photos::iniInfo();
  }

  void photos_process_()
  {
    PhotosHEPEVTEvent *event = new PhotosHEPEVTEvent();

    for(int i=0; i<ph_hepevt_.nhep; i++) {
                                    
     PhotosHEPEVTParticle *p = new PhotosHEPEVTParticle 
    (
      ph_hepevt_.idhep [i],  
      ph_hepevt_.isthep[i], 
      ph_hepevt_.phep  [i][0],
      ph_hepevt_.phep  [i][1], 
      ph_hepevt_.phep  [i][2],
      ph_hepevt_.phep  [i][3],  
      ph_hepevt_.phep  [i][4],
      ph_hepevt_.jmohep[i][0]-1,
      ph_hepevt_.jmohep[i][1]-1,
      ph_hepevt_.jdahep[i][0]-1, 
      ph_hepevt_.jdahep[i][1]-1                                   
    );
    event->addParticle(p);
  }

    // Set IR cutoff (in units of decaying particle mass)
    //    cout << "IR cutoff" << photoscutoff_.xphcut << endl;
    Photos::setInfraredCutOff(photoscutoff_.xphcut);
                                                           
    //PhotosHEPEVTEvent::read_event_from_HEPEVT(event);

    //cout << "phokey_.isec " << phokey_.isec << endl;
    //cout << "ME corr      " << Photos::meCorrectionWtForW << endl;

    //    cout << "Event before photos" << endl;   
    //event->print();

    event->process();

    //    cout << "Event after photos" << endl;
    //    event->print();

    //PhotosHEPEVTEvent::write_event_to_HEPEVT(event);

    ph_hepevt_.nhep = event->getParticleCount();

  for(int i=0; i<ph_hepevt_.nhep; i++)
  {
    PhotosHEPEVTParticle *p = event->getParticle(i);

    ph_hepevt_.idhep [i]   =p->getPdgID();
    ph_hepevt_.isthep[i]   =p->getStatus();
    ph_hepevt_.phep  [i][0]=p->getPx();
    ph_hepevt_.phep  [i][1]=p->getPy();
    ph_hepevt_.phep  [i][2]=p->getPz();
    ph_hepevt_.phep  [i][3]=p->getE();
    ph_hepevt_.phep  [i][4]=p->getMass();
    ph_hepevt_.jmohep[i][0]=p->getFirstMotherIndex()  +1;
    ph_hepevt_.jmohep[i][1]=p->getSecondMotherIndex() +1;
    ph_hepevt_.jdahep[i][0]=p->getDaughterRangeStart()+1;
    ph_hepevt_.jdahep[i][1]=p->getDaughterRangeEnd()  +1;
    ph_hepevt_.vhep  [i][0]=0.0;
    ph_hepevt_.vhep  [i][1]=0.0;
    ph_hepevt_.vhep  [i][2]=0.0;
    ph_hepevt_.vhep  [i][3]=0.0;

  }


    delete event;
  } 

}

// Use userhooks to veto PYTHIA emissions above the POWHEG scale.
// MyUserHooks is intended to start from scalup the QED radiation from the 
// resonance. It has to be used with SpaceShower:pTmaxMatch = 1 and "TimeShower:pTmaxMatch = 1"

class MyUserHooks : public UserHooks {

public:

  MyUserHooks() {cout << "Setting up Hook";}

  // Destructor deletes anti-kT jet finder.
  ~MyUserHooks() {;}

  // Allow process cross section to be modified..

  virtual bool canSetResonanceScale() {
    if(resonancevetos_.py8veto == 1) return true;
    else return false;
    }

  virtual double scaleResonance( const int iRes, const Event& event) {
    //cout << "in scaleResonance: resonance "; cout << event[iRes].id();
    //cout << " " <<resonancevetos_.vetoscale ;
    //cout << "\n";
    return  resonancevetos_.vetoscale;
  }    

  virtual double EventList( const Event& event)
  {
    event.list();
    return false;
  }

private:

};

// PowhegHooks is intended to veto QCD radiation (ISR and FSR) 
// and QED radiation from the resonance. So it has to be used with 
// SpaceShower:pTmaxMatch = 2 and "TimeShower:pTmaxMatch = 2"

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
  // ISR: absolute pT of j
  // FSR: pT of j w.r.t. to i
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

    //    cout << "APPENA ENTRATO IN pTcalc" << endl;

    //cout << "idhep(i)= " << e[i].id() << endl;
    //cout << "idhep(j)= " << e[j].id() << endl;
    //cout << "idhep(k)= " << e[k].id() << endl;


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
        pTemt = pTpowheg(e, i, j, (pTdefMode == 0) ? false : FSR);

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

                int outSize = partonSystemsPtr->sizeOut(0);
                for (int iMem = 0; iMem < outSize; iMem++) {
                  int iNow = partonSystemsPtr->getOut(0, iMem);

                  // Coloured only, i != jNow and no carbon copies
                  if (iNow == jNow) continue;
                  if (jNow == e[iNow].daughter1() 
                    && jNow == e[iNow].daughter2()) continue;

                  pTnow = pTpowheg(e, iNow, jNow, (pTdefMode == 0) 
                    ? false : FSR);
                  if (pTnow > 0.) pTemt = (pTemt < 0) 
                    ? pTnow : min(pTemt, pTnow);
                } // for (iMem)

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
    if (count != nFinal && count != nFinal + 1) {
      cout << "Error: wrong number of final state particles in event" << endl;
      exit(1);
    }
    // Flag if POWHEG radiation present and index
    bool isEmt = (count == nFinal) ? false : true;
    int  iEmt  = (isEmt) ? e.size() - 1 : -1;

    // If there is no radiation or if pThardMode is 0 then set pThard = SCALUP.
    pThard = -1;
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
      //pTMPI = infoPtr->QFac();
      pTMPI = (isEmt) ? pTsum / 2. : pT1;
    }

#ifdef DBGOUTPUT
    cout << "doVetoMPIStep: Qfac = " << infoPtr->scalup()
         << ", pThard = " << pThard << endl << endl;
#endif

    // Initialise other variables
    accepted   = false;
    nAcceptSeq = nISRveto = nFSRveto = 0;

    if(pThard < 0)
      {
	cout << "something wrong with pThard = " << pThard << endl;
        exit(1);
      }
    //    pThard = infoPtr->QFac();

    // Do not veto the event
    return false;
  }

//--------------------------------------------------------------------------

  // ISR veto

  bool canVetoISREmission() { return (vetoMode == 0) ? false : true; }
  bool doVetoISREmission(int, const Event &e, int iSys) {

    // Must be radiation from the hard system, otherwise return
    if (iSys != 0) return false;

    // If vetocount != 0 and we already have accepted 'vetoCount' emissions in a row,
    // do nothing; if vetocount = 0 check all emissions
    if (vetoCount != 0 && nAcceptSeq >= vetoCount) return false;

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
    // radiation from the hard system: isys=0
    // radiation from resonances: isys!=0 and inr=1
    // MPI radiation: isys!=0 and inr=0

    // we do not veto MPI radiation
    // if we veto here gamma from resonance (inr==1), 
    // we do not have to use canSetResonanceScale 
    if (iSys != 0 && inr != 1) return false;

    // in case of radiation from resonance and py8veto != 1, we veto through scalupveto
    if (inr == 1 && resonancevetos_.py8veto != 1) return false;

    // If vetocount != 0 and we already have accepted 'vetoCount' emissions in a row,
    // do nothing; if vetocount = 0 check all emissions
    if (vetoCount != 0 && nAcceptSeq >= vetoCount) return false;

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
    i = (pTdefMode == 1) ? iRadAft : iRadBef;
    // using POWHEG pT definition i should be iRadAft (daugther)
    int k   = (pTemtMode == 0) ? iRadAft : -1;
    int r   = (pTemtMode == 0) ? iRecAft : -1;

    // When pTemtMode is 0 or 1, iEmt has been selected
    double pTemt = 0.;
    if (pTemtMode == 0 || pTemtMode == 1) {
      // Which parton is emitted, based on emittedMode:
      //  0 - Pythia definition of emitted
      //  1 - Pythia definition of radiated after emission
      //  2 - Random selection of emitted or radiated after emission
      //  3 - Try both emitted and radiated after emission

      // j = radiator after

      int j = iRadAft;
      //emittedMode = 0 -> j = iRadAft + 1 = iEmt 
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
  // F77 interface to pythia8
  void pythia_init_()
  {
    // Generator. Process selection.
    pythia.settings.addMode("POWHEG:nFinal",    1, true, false, 1, 0);
    pythia.settings.addMode("POWHEG:veto",      1, true, true,  0, 1);
    // maximum POWHEG:veto=2 not documented
    pythia.settings.addMode("POWHEG:vetoCount", 0, true, false, 0, 0);
    pythia.settings.addMode("POWHEG:pThard",    0, true, true,  0, 2);
    pythia.settings.addMode("POWHEG:pTemt",     0, true, true,  0, 2);
    pythia.settings.addMode("POWHEG:emitted",   0, true, true,  0, 3);
    pythia.settings.addMode("POWHEG:pTdef",     1, true, true,  0, 2);
    pythia.settings.addMode("POWHEG:MPIveto",   0, true, true,  0, 1);

    // Number of outgoing particles of POWHEG Born level process (not counting daughters of resonance)
    // (i.e. not counting additional POWHEG radiation)
    pythia.readString("POWHEG:nFinal = 1");

    // How vetoing is performed:
    // 0 - No vetoing is performed
    // 1 - Showers are started at the kinematical limit (pTmaxMatch = 2)
    //     and emissions are vetoed if pTemt > pThard = scalup
    pythia.readString("POWHEG:veto = 1");

    // After 'vetoCount' accepted emissions in a row, no more emissions
    // are checked. 'vetoCount = 0' means all emissions are checked.
    pythia.readString("POWHEG:vetoCount = 0");

    // Selection of pThard 
    // 0 - pThard = scalup
    // 1 - the pT of the POWHEG emission is tested against all other
    //     incoming and outgoing partons, with the minimal value chosen
    // 2 - the pT of all final-state partons is tested against all other
    //     incoming and outgoing partons, with the minimal value chosen
    pythia.readString("POWHEG:pThard = 0");

    // Selection of pTemt:
    //  0 - pTemt is pT of the emitted parton w.r.t. radiating parton
    //  1 - pT of the emission is checked against all incoming and outgoing
    //      partons. pTemt is set to the minimum of these values
    //  2 - the pT of all final-state partons is tested against all other
    //      incoming and outgoing partons, with the minimal value chosen
    pythia.readString("POWHEG:pTemt = 0");

    // Selection of emitted parton for FSR
    //  0 - Pythia definition of emitted
    //  1 - Pythia definition of radiator
    //  2 - Random selection of emitted or radiator
    //  3 - Both emitted and radiator are tried
    pythia.readString("POWHEG:emitted = 0");

    // pT definitions
    //  0 - POWHEG ISR pT definition is used for both ISR and FSR
    //  1 - POWHEG ISR pT and FSR d_ij definitions
    //  2 - Pythia definitions
    pythia.readString("POWHEG:pTdef = 1");

    // MPI vetoing
    //  0 - No MPI vetoing is done
    //  1 - When there is no radiation, MPIs with a scale above pT_1 are vetoed,
    //      else MPIs with a scale above (pT_1 + pT_2 + pT_3) / 2 are vetoed
    // according to the PYTHIA8 manual, 1 is intended specifically 
    // for POWHEG simulations of 2 -> 2 + 2 -> 3 QCD processes
    pythia.readString("POWHEG:MPIveto = 0"); 

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
    MyUserHooks *PWGHook1 = NULL;
    PowhegHooks *PWGHook2 = NULL;

    // shower vetoing
    if(vetochoice_.vetopt1) 
      {
         pythia.readString("SpaceShower:pTmaxMatch = 1");
         pythia.readString("TimeShower:pTmaxMatch = 1");
      } else if(vetoMode == 1)
      {
         pythia.readString("SpaceShower:pTmaxMatch = 2");
         pythia.readString("TimeShower:pTmaxMatch = 2");
      }

    // QED shower
    pythia.readString("TimeShower:QEDshowerByL  = on");
    pythia.readString("TimeShower:QEDshowerByQ  = on");
    pythia.readString("SpaceShower:QEDshowerByQ  = on");
    if(noqedfromq_.noQEDqopt) 
     {
       pythia.readString("TimeShower:QEDshowerByQ  = off");
       pythia.readString("SpaceShower:QEDshowerByQ  = off");
     } 
    pythia.readString("TimeShower:alphaEMorder = 0"); //alpha(0) for QED shower
    pythia.readString("SpaceShower:alphaEMorder = 0"); //alpha(0) for QED shower

    // lower QED shower cutoff 
    pythia.readString("TimeShower:pTminChgL=1.e-6");
    pythia.readString("TimeShower:pTminChgQ=0.8944e0"); // QED to comply with PowHeg//
    pythia.readString("SpaceShower:pTminChgQ=0.8944e0"); // QED to comply with PowHeg//

    // if photon radiation from leptons is performed by PHOTOS, turn off in pythia
    if (optionphotos_.use_photos)
      {
	pythia.readString("TimeShower:QEDshowerByL  = off");
      }

    // MPI
    pythia.readString("PartonLevel:MPI = off");
    pythia.readString("MultipartonInteractions:pTmaxMatch = 0"); //default

    // Set MPI to start at the kinematical limit
    //if (MPIvetoMode > 0)
    //  {
        //pythia.readString("MultipartonInteractions:pTmaxMatch = 2");
    //  }

    // tune
    if(cpy8tune_.py8tune == 14) {
      pythia.readString("Tune:pp = 14"); // Monash2013 tune
      cout << "pythia8F77: setting pythia tune 14";
      //      pythia.readString("Tune:pp = 5"); // Default
    }

    // hadronization on by default
    pythia.readString("HadronLevel:Hadronize = on");

    if(cpy8tune_.nohad == 1) {
      pythia.readString("HadronLevel:All = off");
      //     default on (hadronization and decays)//
    }

    // setting stable hadrons
    pythia.readString("111:mayDecay = off"); // pi0 stable//
    pythia.readString("211:mayDecay = off"); // pi+ stable//
    pythia.readString("221:mayDecay = off"); // eta stable//
    pythia.readString("223:mayDecay = off"); // omega stable//
    pythia.readString("313:mayDecay = off"); // K*0 stable//
    pythia.readString("331:mayDecay = off"); // eta' stable//
    pythia.readString("333:mayDecay = off"); // Phi stable//
    pythia.readString("423:mayDecay = off"); // D*0 stable//
    pythia.readString("413:mayDecay = off"); // D*+ stable//
    pythia.readString("433:mayDecay = off"); // D*+_s stable//
    pythia.readString("521:mayDecay = off");  // B+ stable//
    pythia.readString("-521:mayDecay = off"); // B- stable//
    pythia.readString("511:mayDecay = off"); // B0 stable//
    pythia.readString("-511:mayDecay = off"); // B0bar stable//
    pythia.readString("531:mayDecay = off"); // B0_s stable//
    pythia.readString("-531:mayDecay = off"); // B0_s bar stable//
    pythia.readString("5222:mayDecay = off"); // Sigma_b+ stable//
    pythia.readString("5112:mayDecay = off"); // Sigma_b- stable//
    pythia.readString("5232:mayDecay = off"); // Csi0_b stable//
    pythia.readString("-5132:mayDecay = off"); // Csi_b+ stable//
    pythia.readString("5132:mayDecay = off"); // Csi_b- stable//
    pythia.readString("541:mayDecay = off"); // B_c+ stable//
    pythia.readString("-541:mayDecay = off"); // B_c- stable//
    pythia.readString("553:mayDecay = off"); // Y(1S) stable//
    pythia.readString("2114:mayDecay = off"); // Delta0 stable//
    pythia.readString("3212:mayDecay = off"); // Sigma0 stable//
    pythia.readString("-5112:mayDecay = off"); // Sigma_b+ stable//
    pythia.readString("-5222:mayDecay = off"); // Sigma_b- stable//
    pythia.readString("-5122:mayDecay = off"); // Lambda0_b bar stable//
    pythia.readString("5332:mayDecay = off"); // Omega_b- stable//
    pythia.readString("-5232:mayDecay = off"); // Csi_b 0 bar stable//
    pythia.readString("-5332:mayDecay = off"); // Omega_b+ stable//
    pythia.readString("5122:mayDecay = off"); // Lambda0_b stable//

    // Choice of UserHooks defined above: 
    // MyuserHooks uses pTmaxMatch=1 and QED veto
    if(vetochoice_.vetopt1) 
      {
	// cout << "sto caricando myuserhooks";
        PWGHook1=new MyUserHooks();
	pythia.setUserHooksPtr((UserHooks *) PWGHook1); 
      }  else 
      { 
        //cout << "sto caricando powheghooks";
        PWGHook2=new PowhegHooks(nFinal, vetoMode, vetoCount, pThardMode, pTemtMode, emittedMode, pTdefMode, MPIvetoMode);
	pythia.setUserHooksPtr((UserHooks *) PWGHook2); 
      }

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

