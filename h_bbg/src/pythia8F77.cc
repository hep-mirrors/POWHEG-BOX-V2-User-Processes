#include "Pythia8/Pythia.h"

// to run without expliciting specifying name of LHE file
#include "Pythia8Plugins/LHAFortran.h"
#include <sstream>

using namespace Pythia8; 

extern "C" {
  extern struct {
    double vetoscaleH,vetoscaleISR;
    int canveto; // 1: can veto, #1 cannot
  } resonancevetos_;
  extern struct {
    int py8tune;
    int nohad;
    int nompi;
  } cpy8tune_;
}

class MyUserHooks : public UserHooks {

public:

  MyUserHooks() {cout << "Setting up Hook";}

  // Destructor deletes anti-kT jet finder.
  ~MyUserHooks() {;}

  // Allow process cross section to be modified..

  virtual bool canSetResonanceScale() {
    cout<< "called cansetresonancescale" <<endl;
    cout<< "can veto resonances? 1=true, 0=false: "<<resonancevetos_.canveto<<endl;
    if(resonancevetos_.canveto == 1) return true;
    else return false; }

  virtual double scaleResonance( const int iRes, const Event& event) {
    // cout << "in scaleResonance: resonance "; cout << event[iRes].id();
    // cout << " " <<resonancevetos_.vetoscaleH ;
    // cout << "\n";
    switch(event[iRes].id())
      {
      case 25  : return  resonancevetos_.vetoscaleH;
      }
  }

private:


};

// to run without expliciting specifying name of LHE file
class myLHAupFortran : public LHAupFortran {
protected:
  // User-written routine that does the intialization and fills heprup.
  virtual bool fillHepRup() {return true;}

  // User-written routine that does the event generation and fills hepeup.
  virtual bool fillHepEup() {return true;}
};
myLHAupFortran* LHAinstance=new myLHAupFortran();


Pythia pythia;
MyUserHooks* MyHook=new MyUserHooks();

extern "C" {
  // F77 interface to pythia8
  void pythia_option0_(char *string) {
    pythia.readString(string);
  }

  //  void pythia_init_(char* LHEfile) {
  void pythia_init_() {
    // shower vetoing
    pythia.readString("SpaceShower:pTmaxMatch = 1");
    pythia.readString("TimeShower:pTmaxMatch = 1");

    // QED shower == OFF
    pythia.readString("SpaceShower:QEDshowerByQ = off"); // From quarks.        
    pythia.readString("SpaceShower:QEDshowerByL = off"); // From Leptons.       
    pythia.readString("TimeShower:QEDshowerByQ = off"); // From quarks.         
    pythia.readString("TimeShower:QEDshowerByL = off"); // From Leptons.

    // no decay of B-hadrons
    pythia.readString("111:mayDecay = off"); 
    pythia.readString("521:mayDecay = off"); 
    pythia.readString("-521:mayDecay = off"); 
    pythia.readString("511:mayDecay = off"); 
    pythia.readString("-511:mayDecay = off"); 
    pythia.readString("531:mayDecay = off"); 
    pythia.readString("-531:mayDecay = off"); 
    pythia.readString("5222:mayDecay = off"); 
    pythia.readString("5112:mayDecay = off"); 
    pythia.readString("5232:mayDecay = off"); 
    pythia.readString("-5132:mayDecay = off"); 
    pythia.readString("5132:mayDecay = off"); 
    pythia.readString("541:mayDecay = off"); 
    pythia.readString("-541:mayDecay = off"); 
    pythia.readString("553:mayDecay = off"); 
    pythia.readString("-5112:mayDecay = off"); 
    pythia.readString("-5222:mayDecay = off"); 
    pythia.readString("-5122:mayDecay = off"); 
    pythia.readString("5332:mayDecay = off"); 
    pythia.readString("-5232:mayDecay = off"); 
    pythia.readString("-5332:mayDecay = off"); 
    pythia.readString("5122:mayDecay = off"); 

    // 
    pythia.readString("Beams:frameType = 5");
    pythia.setUserHooksPtr(MyHook);

    cout << "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n";
    cout << "List changes:\n";
    pythia.settings.listChanged();
    cout << "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%\n";

    pythia.setLHAupPtr(LHAinstance); 
    LHAinstance->setInit();  
    //

    pythia.init();
    
  }

  void pythia_next_(int & iret){
    // Begin event loop. Generate event. Skip if error.
    iret = pythia.next();
  }

  // translate pythia event to hepevt common block
  void pythia_to_hepevt_(const int &nmxhep, int & nhep, int * isthep,
			 int * idhep,
			 int  (*jmohep)[2], int (*jdahep)[2],
			 double (*phep)[5], double (*vhep)[4]) {
    nhep = pythia.event.size();
    if(nhep>nmxhep) {cout << "too many particles!" ; exit(-1); }
    for (int i = 0; i < pythia.event.size(); ++i) {
      *(isthep+i) = pythia.event[i].statusHepMC();
      //*(isthep+i) = pythia.event[i].status();
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

  void pythia_stat_() {
    pythia.stat(); 
  }

}
