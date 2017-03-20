//#include "LHAFortran.h"

#include "Photos/Photos.h"
#include "Photos/PhotosHEPEVTEvent.h"
#include <sstream>
#include <string.h>
#include <stdlib.h>     /* srand, rand */
#include <time.h>

using namespace Photospp;

extern "C" {
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

  extern struct     {
    char photos_init_info[1000];
  } si_data_;
  extern struct {
    double xphcut;    
    int evtnumber;
  } si_event_info_;
  
}

// PHOTOS C++ interface

extern "C" {

  void photos_init_() {

    std::cout << "**** SI: Initializing PHOTOS" << std::endl;
    
    // Initialize two random seeds
    srand (time(NULL));
    int s1 = rand() % 31327;
    int s2 = rand() % 30080;
    std::cout << "**** SI: Setting PHOTOS random seeds: " << s1 << " " << s2 << std::endl;

    // Setting random seed for Photos
    Photos::setSeed(s1, s2); 

    // Initialize PHOTOS   
    Photos::initialize();

    // Other flags
    //Photos::setMeCorrectionWtForW(true); 
    //Photos::setDoubleBrem(true);
    //Photos::setCorrectionWtForW(false);
    //Photos::Photos::setInterference(false);

    // Print again initialization info
    Photos::iniInfo();
    
    // Print explicit values of other flags
    // phokey_.interf        (interference weight)               : on by default
    std::cout << "**** SI: Other PHOTOS set: " << std::endl;
    std::cout << "**** SI: phokey_.interf  (interference weight)             : " << phokey_.interf << std::endl;
    // phokey_.isec          (double photon)                     : off by default
    std::cout << "**** SI: phokey_.isec (double photon)                      : " << phokey_.isec << std::endl;
    // phokey_.ifw           (correction weight in decay of W)   : on by default
    std::cout << "**** SI: phokey_.ifw (correction weight in decay of W)     : " << phokey_.ifw << std::endl;
    // meCorrectionWtForW    (ME correction in decay of W)       : off by default
    std::cout << "**** SI: (meCorrectionWtForW) ME correction in decay of W  : " << Photos::meCorrectionWtForW << std::endl;

    
   // Redirect Photos initialization output to a string, to be printed in the LHE file
    
   std::streambuf * sbuf = std::cout.rdbuf();
   std::ostringstream oss;
   std::cout.rdbuf(oss.rdbuf()); 

   Photos::iniInfo();
  
   std::string init_info = oss.str();
      
   strcpy(si_data_.photos_init_info, init_info.c_str());

   si_data_.photos_init_info[init_info.size() - 1] = ' ';
   si_data_.photos_init_info[init_info.size()] = ' ';
   si_data_.photos_init_info[init_info.size() + 1] = ' ';
   
   std::cout.rdbuf(sbuf);

    
  }

  void photos_process_() {

    // Create PHOTOS event
    PhotosHEPEVTEvent *event = new PhotosHEPEVTEvent();

    // Fill particles in the PHOTOS event using the "common" Photos HEPEVT block (data already filled in the .f file)
    for(int i = 0; i < ph_hepevt_.nhep; i++) {                                    
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
    //std::cout << "SI: Photos cutoff " << si_event_info_.xphcut << std::endl;
    Photos::setInfraredCutOff(si_event_info_.xphcut);

    //cout << "Event before photos" << endl;   
    //event->print();
    // Number of particles of original HEPEVT block
    int n1 = ph_hepevt_.nhep;
    
    event->process();
      
    //cout << "Event after photos" << endl;
    //event->print();

    // Update Photos HEPEVT block with the Photos processed event
    ph_hepevt_.nhep = event->getParticleCount();
    // Number of particles of new block
    int n2 = ph_hepevt_.nhep;
    //std::cout << "Number of photons added: " << n2 - n1 << std::endl;
    
    for(int i = 0; i < ph_hepevt_.nhep; i++) {
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
