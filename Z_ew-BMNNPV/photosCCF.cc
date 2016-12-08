//#include "LHAFortran.h"

#include "Photos/Photos.h"
#include "Photos/PhotosHEPEVTEvent.h"
#include <sstream>
#include <string.h>
#include <stdlib.h>     /* srand, rand */
#include <time.h>

using namespace Photospp;

extern "C" {
  extern struct     {
    int evtnumber;
    char photos_init_info[1000];
  } evtprint_;
  extern struct   {
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

  void photos_init_() {

    // Initialize two random seeds
    srand (time(NULL));
    int s1 = rand() % 31327;
    int s2 = rand() % 30080;
    std::cout << "**** SI: Setting PHOTOS random seeds: " << s1 << " " << s2 << std::endl;

    // Setting random seed for Photos
    Photos::setSeed(s1, s2);
    
    Photos::initialize();
   
    // phokey_.interf        (interference weight)               : on by default
    // phokey_.isec          (double photon)                     : off by default
    // phokey_.ifw           (correction weight in decay of W)   : on by default
    // meCorrectionWtForW    (ME correction in decay of W)       : off by default

    // Turn on NLO corrections - only for PHOTOS 3.2 or higher
    //Photos::setMeCorrectionWtForW(true); 
    //Photos::setDoubleBrem(true);
    //Photos::maxWtInterference(4.0);
             
    Photos::iniInfo();
    
   // Redirect Photos initialization output to a string, to be printed in the LHE file
    
   std::streambuf * sbuf = std::cout.rdbuf();
   std::ostringstream oss;
   std::cout.rdbuf(oss.rdbuf()); 

   Photos::iniInfo();
  
   std::string init_info = oss.str();
      
   strcpy(evtprint_.photos_init_info, init_info.c_str());

   evtprint_.photos_init_info[init_info.size() - 1] = ' ';
   evtprint_.photos_init_info[init_info.size()] = ' ';
   evtprint_.photos_init_info[init_info.size() + 1] = ' ';
   
   std::cout.rdbuf(sbuf);

    
  }

  void photos_process_() {

    // Define PhotosHEPEVT event from the common HEPEVT block
    // The HEPEVT block is contained in the structure ph_hepevt_
    PhotosHEPEVTEvent *event = new PhotosHEPEVTEvent();
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
    Photos::setInfraredCutOff(photoscutoff_.xphcut);

    //cout << "Event before photos" << endl;   
    //event->print();
    // Number of particles of original HEPEVT block
    int n1 = ph_hepevt_.nhep;
    
    event->process();
      
    //cout << "Event after photos" << endl;
    //event->print();

    // Update HEPEVT block with the Photos processed event
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
