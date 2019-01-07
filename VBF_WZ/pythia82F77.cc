// main01.cc is a part of the PYTHIA event generator.
// Copyright (C) 2012 Torbjorn Sjostrand.
// PYTHIA is licenced under the GNU GPL version 2, see COPYING for details.
// Please respect the MCnet Guidelines, see GUIDELINES for details.

// This is a simple test program. It fits on one slide in a talk. 
// It studies the charged multiplicity distribution at the LHC.

#include "Pythia8/Pythia.h"
#include "Pythia8Plugins/LHAFortran.h"
#include "Pythia8Plugins/PowhegHooks.h"
#include <sstream>
#include "Pythia8Plugins/HepMC2.h"
//#include "Pythia8Plugins/HepMCInterface.h" // Interface HepMC to Pythia8
//#include "HepMC/GenEvent.h" // Generate HepMC event
//#include "HepMC/IO_GenEvent.h" // IO stream for HepMC event

using namespace Pythia8; 

extern "C" {
  extern struct {
    int POWHEGveto;
    bool YR4settings;
  } py8settings_;
}

class myLHAupFortran : public LHAupFortran {

protected:
  // User-written routine that does the intialization and fills heprup.
  virtual bool fillHepRup() {return true;}

  // User-written routine that does the event generation and fills hepeup.
  virtual bool fillHepEup() {return true;}

};

Pythia pythia;
myLHAupFortran* LHAinstance=new myLHAupFortran();
PowhegHooks* MyPowhegHooks=new PowhegHooks();
// Interface for conversion from Pythia8::Event to HepMC event.

HepMC::Pythia8ToHepMC ToHepMC;
// UNCOMMENT BELOW FOR HEPMC INTERFACE
//HepMC::IO_GenEvent ascii_io("FIFO.fifo", std::ios::out);     

extern "C" {
  // F77 interface to pythia8
  void pythia_option0_(char *string) {
    pythia.readString(string);
  }

  void pythia_init_() {

    // disable the listing of the changed setting (too long)
//    pythia.readString("Init:showChangedParticleData = off");

//    pythia.readString("PartonLevel:ISR = off"); // For lhef-like analysis
//    pythia.readString("PartonLevel:FSR = off"); // For lhef-like analysis

    pythia.readString("PartonLevel:MPI = off"); // MPI

    pythia.readString("HadronLevel:All = off"); // hadronization
    pythia.readString("HadronLevel:Decay = off");
    pythia.readString("BeamRemnants:primordialKT = off");
    // disable QED emissions
    pythia.readString("SpaceShower:QEDshowerByQ = off"); // off quarks in ISR
    pythia.readString("SpaceShower:QEDshowerByL = off"); // off leptons in ISR
    pythia.readString("TimeShower:QEDshowerByQ = off"); // off quarks in FSR
    pythia.readString("TimeShower:QEDshowerByL = off"); // off leptons in FSR
    pythia.readString("TimeShower:QEDshowerByOther = off"); // off charged resonances (including top) in FSR
    pythia.readString("TimeShower:QEDshowerByGamma = off"); // photon splittings into quarks in FSR

    pythia.readString("SpaceShower:dipoleRecoil = on"); // For better
							// handling of
							// DIS type
							// processes.
    // tune -- set in main-PYTHIA8.f
    pythia.readString("Tune:pp = 14"); // Monash2013 tune
//    pythia.readString("Tune:pp = 21"); // ATLAS A14 tune NNPDF2.3LO

    // twiki settings   

    //    pythia.readString("111:mayDecay = off");
    pythia.readString("25:mayDecay = off");

  
    // other settings
    pythia.readString("Beams:frameType = 5");
    pythia.setUserHooksPtr(MyPowhegHooks);
    //PowhegHooks related settings 
    // nFinal should include both status 1 and 2 at Born level
    //    pythia.readString("POWHEG:nFinal = 3"); // VBF H
    //pythia.readString("POWHEG:nFinal = 4"); // For VBF_HJJJ
    pythia.readString("POWHEG:nFinal = 4"); // For VBS WZ. Does not count decays.
    if (py8settings_.POWHEGveto == 0) {
      pythia.readString("SpaceShower:pTmaxMatch = 1");
      pythia.readString("TimeShower:pTmaxMatch = 1");
      pythia.readString("POWHEG:veto = 0"); // DEF 0 -- set in mainPYTHIA.f
    } else {
      pythia.readString("SpaceShower:pTmaxMatch = 2");
      pythia.readString("TimeShower:pTmaxMatch = 2");
      pythia.readString("POWHEG:veto = 1"); // DEF 0 -- set in mainPYTHIA.f
    }
    pythia.readString("POWHEG:vetoCount = 3"); // DEF 3
    pythia.readString("POWHEG:pThard = 0"); // DEF 0
    pythia.readString("POWHEG:pTemt = 0"); // DEF 0
    pythia.readString("POWHEG:emitted = 0"); // DEF 0
    pythia.readString("POWHEG:pTdef = 0"); // DEF 0
    pythia.readString("POWHEG:MPIveto = 0"); // DEF 0
    pythia.readString("POWHEG:QEDveto = 0"); // DEF 0
      
    pythia.setLHAupPtr(LHAinstance); 
    LHAinstance->setInit();  
    pythia.init();
  }

  void pythia_next_(int & iret){
  // Begin event loop. Generate event. Skip if error. List first one.
    iret = pythia.next();
    // UNCOMMENT BELOW FOR HEPMC INTERFACE
//    HepMC::GenEvent* hepmcevt = new HepMC::GenEvent();
//    ToHepMC.fill_next_event( pythia, hepmcevt );
//    ascii_io << hepmcevt;
//    delete hepmcevt;
  }

  void pythia_to_hepevt_(const int &nmxhep, int & nhep, int * isthep,
       int * idhep,
       int  (*jmohep)[2], int (*jdahep)[2],
       double (*phep)[5], double (*vhep)[4]) {
    nhep = pythia.event.size();
    if(nhep>nmxhep) {cout << "too many particles!" ; exit(-1); }
    for (int i = 0; i < pythia.event.size(); ++i) {
      //WWarn
      *(isthep+i) = pythia.event[i].statusHepMC();
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

  //  HepMC::GenEvent * PythiaToHepMC(){
    // Construct new empty HepMC event and fill it.
    // Units will be as chosen for HepMC build; but can be changed
    // by arguments, e.g. GenEvt( HepMC::Units::GEV, HepMC::Units::MM)
  //    HepMC::GenEvent* hepmcevt = new HepMC::GenEvent();
  // ToHepMC.fill_next_event( pythia, hepmcevt );
  // return hepmcevt;
    //    ascii_io << hepmcevt;
    //cout << hepmcevt;
  //}

}
