// Jet algorithm with special features:
//
#include <iostream>
#include <sstream>  // needed for internal io
#include <iomanip>  
#include "fastjet/ClusterSequence.hh"
#include "fastjet/Selector.hh"
#include "fastjet/tools/Filter.hh"
#include "splitandfilt.hh"
using namespace fastjet;
using namespace std;

//----------------------------------------------------------------------
// forward declaration for printing out info about a jet
//----------------------------------------------------------------------
ostream & operator<<(ostream &, const PseudoJet &);

//----------------------------------------------------------------------
// forward declaration for ktscales:
//----------------------------------------------------------------------
void ktscales(const PseudoJet &,double &,double &);


extern "C" { // !extern

void fastjetalg_(const double *p, const int &npart, const int &jetalg, 
                 const double &R, const bool &filt, 
		 const double &ptmin, const double &ymax, 
		 int &njets, double *pjet)
{
  signed itrack;
// We fill up the tracks:
  vector<PseudoJet> particles;
  for (itrack = 0; itrack < npart; itrack++){
    valarray<double> mom(4);
    for (int mu = 0; mu < 4; mu++){
      mom[mu] = *(p++);
    }
//  cout << " " << mom[0] << " " << mom[1] << " " << mom[2] << " " << mom[3] << endl;
  particles.push_back(PseudoJet(mom));
  }

// We have to select a jet algorithm according to the value of jetalg: 
// jetalg = 1 -> kt
// jetalg = 0 -> CA
// jetalg = -1 -> anti-kt
  JetDefinition jet_def(genkt_algorithm,R,jetalg);

// We perform the clustering:
  ClusterSequence cs(particles,jet_def);
// Sorting the jets according to their pt:
  vector<PseudoJet> jets = sorted_by_pt(cs.inclusive_jets());
// We setup our cuts (pt and rapidity):
  Selector select_rapidity = SelectorAbsRapMax(ymax);
  Selector select_pt       = SelectorPtMin(ptmin);
  Selector select_both     = select_pt && select_rapidity;

// We apply the set of cuts:
  vector<PseudoJet> cut_jets = select_both(jets);
// Counting down the surviving jets:
  njets = cut_jets.size();

// If filtering is requested we loop over the jets:
  splitandfilt filter();
  if (filt){
    for (int i =0; i < njets; i++){
    }
  }


  return;
}

void fastjetppgenkt_pty_(const double * p, const int & npart,                   
                     const double & R, const double & palg, 
		     const double & ptmin, const double & maxrap,
                     double * f77jets, int & njets, int * f77jetvec) {

    // transfer p[4*ipart+0..3] -> input_particles[i]
    vector<PseudoJet> input_particles;   
    for (int i=0; i<npart; i++) {
      valarray<double> mom(4); // mom[0..3]
      for (int j=0;j<=3; j++) {
         mom[j] = *(p++);
      }
      PseudoJet psjet(mom);
      input_particles.push_back(psjet);    
      // label input_particles entries
      input_particles[i].set_user_index(i+1);
    }
    
    // prepare jet def and run fastjet
    JetDefinition jet_def;
    if (palg == 1.0) {
      jet_def = JetDefinition(kt_algorithm, R);
    }  else if (palg == 0.0) {
      jet_def = JetDefinition(cambridge_algorithm, R);
    }  else if (palg == -1.0) {
      jet_def = JetDefinition(antikt_algorithm, R);
    } else {
      jet_def = JetDefinition(genkt_algorithm, R, palg);
    }

    
    // perform clustering
    ClusterSequence cs(input_particles, jet_def);
    // We have an additional rapidity cut as well:
    Selector select_rap = SelectorAbsRapMax(maxrap);
    Selector select_pt = SelectorPtMin(ptmin);
    Selector select_both = select_rap && select_pt;
    vector<PseudoJet> jets = select_both(cs.inclusive_jets());
    jets = sorted_by_pt(jets);
    njets = jets.size();

    // find particles inside i-th jet
    vector<PseudoJet> *constit;
    constit=new vector<PseudoJet>[njets];
    for(int i=0; i<njets; i++) {
      constit[i] = cs.constituents(jets[i]); 
      //cout<<"jet "<<i<<endl;
      //cout<<"mult "<<constit[i].size()<<endl;
      for(int j=0; j<constit[i].size(); j++) {
	*(f77jetvec + constit[i][j].user_index()-1) = i+1;
      }
    }



    // transfer jets -> f77jets[4*ijet+0..3]
    for (int i=0; i<njets; i++) {
      for (int j=0;j<=3; j++) {
        *f77jets = jets[i][j];
        f77jets++;
      } 
    }

    // clean up
    delete [] constit;
    
   }

} // !extern

// This routine calculates the kt splitting scales: \sqrt{d_{12}} and
// \sqrt{d_{23}}:
void ktscales(const PseudoJet &jet,const double &R,double &sd12,double &sd23){

// If the jet does not have any constituent we return zeros:
  if (!jet.has_constituents()){
    sd12 = -1.0;
    sd23 = -1.0;
    return;
  }

// We extract all the constituents:
  vector<PseudoJet> particles = jet.constituents();

// Setting up the jet algorithm:
  JetDefinition jet_def(kt_algorithm, R);

// We perform the clustering:
  ClusterSequence cs(particles,jet_def);

// We extract two jets:
  vector<PseudoJet> subjet12 = cs.exclusive_jets(2);

  return;
}

//----------------------------------------------------------------------
// does the actual work for printing out a jet
//----------------------------------------------------------------------
ostream & operator<<(ostream & ostr, const PseudoJet & jet) {
  ostr << "pt, y, phi =" 
       << " " << setw(10) << jet.perp() 
       << " " << setw(6) <<  jet.rap()  
       << " " << setw(6) <<  jet.phi()  
       << ", mass = " << setw(10) << jet.m()
       << ", btag = " << jet.user_index();
  return ostr;
}
