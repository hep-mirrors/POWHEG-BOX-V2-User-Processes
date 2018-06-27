/*********************************************
 * A simple driver for reweighting management
 * S. Carrazza - June 2017
 ********************************************/

#include <iostream>
#include <string>
#include <map>
#include <vector>
#include <stdexcept>
#include <cmath>
#include <fstream>
#include <sstream>
#include <iomanip>
#include <algorithm>
#include <tuple>
using std::string;
using std::vector;
using std::map;
using std::cout;
using std::endl;
using std::scientific;
using std::setw;
using std::pair;
using std::make_pair;
using std::tuple;
using std::make_tuple;
using vector2d = vector<tuple<double,double,double,double>>;
using vector3d = vector<tuple<double,double,double,double,double,double>>;

// export fortran methods
extern "C" void bookupeqbins_(const char *, const double&, const double&, const double&, int);
extern "C" void bookup_(const char*, const int&, const double*, int);
extern "C" void filld_(const char*, const double&, const double*, int);

/**
 * @brief The reweight class
 * This class performs the management of the reweighting
 * output and elaboration.
 */
class reweight
{
public:
  /**
   * @brief Allocate class and create file.
   */
  reweight()
  {
    _output.open("reweight.dat");
  }

  /**
    * Closes the output file
    */
  ~reweight()
  {
    _output.close();
    if (_oldlhe.is_open()) _oldlhe.close();
    if (_newlhe.is_open()) {
      _newlhe << "</LesHouchesEvents>" << endl;
      _newlhe.close();
    }
  }

  /**
   * Books analysis histograms (alla fortran)
   * and stores histogram bins.
   */
  void bookupeqbins(string const& key, double const& step,
                    double const& min, double const& max)
  {
    // general argument tests
    if (min >= max)
      throw std::runtime_error("reweight::bookupeqbins: min is smaller than max for key " + key);
    if (std::floor( (max-min)/step ) != (max-min)/step)
      throw std::runtime_error("reweight::bookupeqbins: step is not compatible with min/max for key " + key);

    // book histograms as usual
    bookupeqbins_(key.c_str(), step, min, max, key.size());

    // populate dict
    if (_bins.find(key) == _bins.end())
    {
      const int N = (max-min)/step;
      _bins[key] = linspace(min, max, N);
      _output << scientific << key << "\tbookupeq\t" << min << "\t" << max << "\t" << N << endl;
    }
    else
      throw std::runtime_error("reweight::bookeqbins: key " + key + "already exists.");
  }

  /**
   * Book analysis histogras using custom bins edges
   */
   void bookup(string const& key, vector<double> const& bins)
   {
     bookup_(key.c_str(), bins.size()-1, bins.data(), key.size());

     // populate dict
     if (_bins.find(key) == _bins.end())
     {
       _bins[key] = bins;
       _output << scientific << key << "\tbookup\t";
       for (int i = 0; i < _bins[key].size(); i++)
          _output << _bins[key][i] << "\t";
       _output << endl;
     }
     else
       throw std::runtime_error("reweight::bookup: key " + key + "already exists.");
   }

  /**
   * Book internal 2d histogram with custom bins edges
   */
  void bookup2d(string const& key, vector2d const& bins)
  {
    // populate dict
    if (_bins2d.find(key) == _bins2d.end())
     {
       _bins2d[key] = bins;       
       _output << scientific << key << "\tbookup2d\t";
       for (int i = 0; i < _bins2d[key].size(); i++)
	 _output << "("
		 << std::get<0>(_bins2d[key][i]) << ","
		 << std::get<1>(_bins2d[key][i]) << ","
		 << std::get<2>(_bins2d[key][i]) << ","
		 << std::get<3>(_bins2d[key][i]) << ")\t";
       _output << endl;
     }
     else
       throw std::runtime_error("reweight::bookup2d: key " + key + "already exists.");    
  }

  /**
   * Book internal 3d histogram with custom bins edges
   */
  void bookup3d(string const& key, vector3d const& bins)
  {
    // populate dict
    if (_bins3d.find(key) == _bins3d.end())
     {
       _bins3d[key] = bins;
       _output << scientific << key << "\tbookup3d\t";
       for (int i = 0; i < _bins3d[key].size(); i++)
	 _output << "("
		 << std::get<0>(_bins3d[key][i]) << ","
		 << std::get<1>(_bins3d[key][i]) << ","
		 << std::get<2>(_bins3d[key][i]) << ","
		 << std::get<3>(_bins3d[key][i]) << ","
		 << std::get<4>(_bins3d[key][i]) << ","	   
		 << std::get<5>(_bins3d[key][i]) << ")\t";
       _output << endl;
     }
     else
       throw std::runtime_error("reweight::bookup3d: key " + key + "already exists.");    
  }

  /**
   * Take weights and dump to file.
   */
  void fill(string const& key, double const& obs, const double* weight)
  {
    // fill the fortran histogram
    filld_(key.c_str(), obs, weight, key.size());
    _binid[key] = get_bin_id(_bins[key], obs);
  }

  /**
   * Take weights and dump to file.
   */
  void fill2d(string const& key, pair<double,double> const& obs, const double* weight)
  {
    _binid[key] = get_bin2d_id(_bins2d[key], obs);
  }

  /**
   * Take weights and dump to file.
   */
  void fill3d(string const& key, tuple<double,double,double> const& obs, const double* weight)
  {
    _binid[key] = get_bin3d_id(_bins3d[key], obs);
  }
  
  /**
   * Store event.
   */
  void store(const double* weight, double const& l)
  {
    static bool header = true;
    if (header)
    {
      _output << "---" << endl;
      for (int i = 1; i <= 7; i++)
        _output << "W" << i << "\t";
      _output << "log";
      for (map<string, vector<double> >::iterator it = _bins.begin(); it != _bins.end(); ++it)
        _output << "\t" << it->first;
      for (map<string, vector2d >::iterator it = _bins2d.begin(); it != _bins2d.end(); ++it)
        _output << "\t" << it->first;
      for (map<string, vector3d >::iterator it = _bins3d.begin(); it != _bins3d.end(); ++it)
        _output << "\t" << it->first;                 
      _output << endl;
      header = false;
    }

    for (int i = 0; i < 7; i++)
      _output << scientific << weight[i] << "\t";
    _output << l;
    for (map<string, vector<double> >::iterator it = _bins.begin(); it != _bins.end(); ++it)
      _output << "\t" << _binid[it->first];
    for (map<string, vector2d >::iterator it = _bins2d.begin(); it != _bins2d.end(); ++it)
      _output << "\t" << _binid[it->first];
    for (map<string, vector3d >::iterator it = _bins3d.begin(); it != _bins3d.end(); ++it)
      _output << "\t" << _binid[it->first];    
    _output << endl;
  }

  /**
   * Create linear spaced vector of points.
   */
  vector<double> linspace(double const& min, double const& max, int const& size)
  {
    const double step = std::fabs(max-min)/size;
    vector<double> res(size+1, 0);
    for (size_t i = 0; i < res.size(); i++)
      res[i] = min + i*step;
    return res;
  }

  /**
   * Return the bin id
   */
  int get_bin_id(vector<double> const& bins, double v)
  {
    int res = -1;
    for (int i = 1; i < (int) bins.size(); i++)
      if (v >= bins[i-1] && v < bins[i])
	res = i-1;	      
	
    if (res < 0)
      {
	//cout << "reweight::get_bin_id: value outside bounds, setting value to -1" << endl;
	//throw std::runtime_error("reweight::get_bin_id: value outside bounds");
      }
    
    return res;
  }

  /**
   * Return the bin2d id
   */
  int get_bin2d_id(vector2d const& bins, pair<double,double> v)
  {    
    int res = -1;
    for (int i = 0; i < (int) bins.size(); i++)
      {
	if (v.first >= std::get<0>(bins[i]) && v.first < std::get<1>(bins[i]) &&
	    v.second >= std::get<2>(bins[i]) && v.second < std::get<3>(bins[i]))
	  {	    
	    res = i;
	    break;
	  }
      }

    if (res < 0)
      {
	//cout << "reweight::get_bin2d_id: value outside bounds, setting value to -1." << endl;
	//throw std::runtime_error("reweight::get_bin_id2: value outside bounds");
      }
    
    return res;
  }

  /**
   * Return the bin3d id
   */
  int get_bin3d_id(vector3d const& bins, tuple<double,double,double> v)
  {    
    int res = -1;
    for (int i = 0; i < (int) bins.size(); i++)
      {
	if (std::get<0>(v) >= std::get<0>(bins[i]) && std::get<0>(v) < std::get<1>(bins[i]) &&
	    std::get<1>(v) >= std::get<2>(bins[i]) && std::get<1>(v) < std::get<3>(bins[i]) &&
	    std::get<2>(v) >= std::get<4>(bins[i]) && std::get<2>(v) < std::get<5>(bins[i]))
	  {	    
	    res = i;
	    break;
	  }
      }

    if (res < 0)
      {
	//cout << "reweight::get_bin3d_id: value outside bounds, setting value to -1." << endl;
	//throw std::runtime_error("reweight::get_bin_id2: value outside bounds");
      }
    
    return res;
  }

  void loadlhe(string const& filename)
  {
    cout << "reweight::loadlhe opening lhe file " << filename << endl; 
    _oldlhe.open(filename.c_str());

    cout << "reweight::loadlhe opening lhe file " << "rw-" << filename << endl; 
    _newlhe.open( ("rw-" + filename).c_str() );

    if (_oldlhe.fail() || _newlhe.fail())
      throw std::runtime_error("reweight::loadlhe open file failed");

    // copy the header of old file in new file
    string line;
    for(;;)
      {
	getline(_oldlhe, line);
	_newlhe << line << endl;
	if (line == "</init>") break;
      }
  }

  void update_weights(const double *weights)
  {
    int l = 0;
    string line;
    for(;;)
      {
	getline(_oldlhe, line);
	if (l == 1)
	  {
	    std::istringstream stm(line);
	    std::stringstream out;
	    string a, b, c;
	    double w;
	    stm >> a >> b >> w;
	    getline(stm, c);
	    out << "      " << a << "  " << b << "  " << scientific << weights[0] << c;
	    line = out.str();
	  }
	
	_newlhe << line << endl;
	if (line == "</event>") break;

	// old LHE file structure
	/*
	if (line == "<rwgt>")
	  {
	    int index = 0;
	    for(;;) // <wgt> loop
	      {
		getline(_oldlhe, line);
		if (line == "</rwgt>")
		  {
		    _newlhe << line << endl;
		    break;
		  }

		string key = line.substr(line.find("=")+1, line.find_first_of(">", 0)-line.find("=")-1);
		_newlhe << "<wgt id=" << key << "> "
			<< scientific << weights[index] << " </wgt>" << endl;
		index++;
	      }	    
	  }*/

	// new LHE file structure
	if (line == "<weights>")
	  {
	    int index = 0;
	    for(;;) // <wgt> loop
	      {
		getline(_oldlhe, line);
		if (line == "</weights>")
		  {
		    _newlhe << line << endl;
		    break;
		  }
		_newlhe << scientific << weights[index] << endl;
		index++;
	      }
	  }
	l++;
      }    
  }

private:
  map<string, vector<double> > _bins;
  map<string, vector2d> _bins2d;
  map<string, vector3d> _bins3d;  
  map<string, int> _binid;
  std::ofstream _output;
  std::ifstream _oldlhe;
  std::ofstream _newlhe;
};

map<string, vector<double> > extract_bins(string const& filename)
{
  std::ifstream file(filename.c_str());
  if (file.fail()) throw std::runtime_error("file_reader::open_file: file not found " + filename);

  int nobs = 0;
  file >> nobs;
  if (nobs < 1) throw std::runtime_error("file_reader::open_file: no binning found " + filename);

  vector<string> obs(nobs);
  for (int i = 0; i < nobs; i++) file >> obs[i];

  double bin;
  map<string, vector<double> > bins;
  while (!file.eof())
  {
    for (int i = 0; i < nobs; i++)
    {
      file >> bin;
      if (file.eof()) break;
      bins[obs[i]].push_back(bin);
    }
  }
  file.close();

  return bins;
}

map<string, vector2d> extract_bins_2d(string const& filename)
{  
  std::ifstream file(filename.c_str());
  if (file.fail()) throw std::runtime_error("file_reader::open_file: file not found " + filename);

  string obs;
  file >> obs;

  double bin1, bin2, bin3, bin4;
  map<string, vector2d> bins;
  while (!file.eof())
  {
    file >> bin1 >> bin2 >> bin3 >> bin4;
    if (file.eof()) break;
    bins[obs].push_back(make_tuple(bin1, bin2, bin3, bin4));    
  }
  file.close();

  return bins;
}

map<string, vector3d> extract_bins_3d(string const& filename)
{  
  std::ifstream file(filename.c_str());
  if (file.fail()) throw std::runtime_error("file_reader::open_file: file not found " + filename);

  string obs;
  file >> obs;

  double bin1, bin2, bin3, bin4, bin5, bin6;
  map<string, vector3d> bins;
  while (!file.eof())
  {
    file >> bin1 >> bin2 >> bin3 >> bin4 >> bin5 >> bin6;
    if (file.eof()) break;
    bins[obs].push_back(make_tuple(bin1, bin2, bin3, bin4, bin5, bin6));    
  }
  file.close();

  return bins;
}

// The singleton which controls the reweight instance
reweight& get_instance()
{
  static reweight rw;
  return rw;
}

// Fortran interface
extern "C"
{
  /**
   * Insert histogram to the analysis.
   */
  void reweight_bookupeqbins_(const char* key, double const& step,
                              double const& min, double const& max, int len)
  {
    string skey(key, len);
    get_instance().bookupeqbins(skey, step, min, max);
  }

  /**
   * Fill histogram with weights.
   */
  void reweight_fill_(const char* key, double const& obs,
                      const double* weight, int len)
  {
    string skey(key, len);
    get_instance().fill(skey, obs, weight);
  }

  /**
   * Fill 2d histogram with weights.
   */
  void reweight_fill2d_(const char* key, double const& obs1, double const& obs2,
			const double* weight, int len)
  {
    string skey(key, len);
    get_instance().fill2d(skey, make_pair(obs1,obs2), weight);
  }

  /**
   * Fill 2d histogram with weights.
   */
  void reweight_fill3d_(const char* key, double const& obs1, double const& obs2,
			const double& obs3, const double* weight, int len)
  {
    string skey(key, len);
    get_instance().fill3d(skey, make_tuple(obs1,obs2,obs3), weight);
  }

  /**
   * Store the log term to file
   */
  void reweight_store_(const double* weight, double const& l)
  {
    get_instance().store(weight, l);
  }

  /**
   * Book histograms with custom binning edges
   */
   void reweight_bookup_(const char* filename, int len)
   {
     string sfilename(filename, len);
     map<string, vector<double> > bins = extract_bins(sfilename);
     for (const auto & key: bins)
        get_instance().bookup(key.first, key.second);
   }

  /**
   * Book 2d histogram with custom binning edges
   */
  void reweight_bookup2d_(const char* filename, int len)
  {
    string sfilename(filename, len);
    map<string, vector2d> bins = extract_bins_2d(sfilename);
    for (const auto & key: bins)
      get_instance().bookup2d(key.first, key.second);
  }

  /**
   * Book 3d histogram with custom binning edges
   */
  void reweight_bookup3d_(const char* filename, int len)
  {
    string sfilename(filename, len);
    map<string, vector3d> bins = extract_bins_3d(sfilename);
    for (const auto & key: bins)
      get_instance().bookup3d(key.first, key.second);
  }

  /**
   * Copy and store LHE files
   */
  void reweight_lhe_(const char* filename, int len)
  {
    string sfilename(filename, len);
    get_instance().loadlhe(sfilename);
  }

  /**
   * Update LHE weights
   */
  void reweight_update_weights_(const double *weights)
  {
    get_instance().update_weights(weights);
  }
}
