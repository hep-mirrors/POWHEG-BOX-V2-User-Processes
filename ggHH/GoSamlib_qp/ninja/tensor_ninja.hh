#ifndef NINJA_TENSOR_NINJA_HH
#define NINJA_TENSOR_NINJA_HH

#include <ninja/num_defs.hh>

namespace ninja_qp {

  // Numeber of entries of a rank R symmetric tensor-numerator
  // (namely, all the entries up to rank R), i.e. binomial(R+4,R)
  template <int R>
  struct SymTensorDim {
    enum {val = (R+1)*(R+2)*(R+3)*(R+4)/12 };
  };
  

  // This class represents a generic symmetric tensor numerator of n
  // internal legs and rank r.  The numerator is defined by a
  // unidimensional array of coefficients, which must follow the
  // convention of the representation of Eq. (C.15) in
  // http://arxiv.org/abs/1405.0301, and is passed to the constructor.
  class TensorNumerator : public Numerator {
  public:

    TensorNumerator(unsigned n, unsigned r, const Complex * num);

    virtual Complex evaluate(const ninja_qp::ComplexMomentum & q,
                             const ninja_qp::Complex & muq,
                             int cut, const ninja_qp::PartitionInt part[]);

    virtual void muExpansion(const ninja_qp::ComplexMomentum v_perp[],
                             const ninja_qp::PartitionInt part[],
                             ninja_qp::Complex c[]);

    virtual void t3Expansion(const ninja_qp::ComplexMomentum & a,
                             const ninja_qp::ComplexMomentum & e3,
                             const ninja_qp::ComplexMomentum & e4,
                             const ninja_qp::Complex & param,
                             int mindeg,
                             int cut, const ninja_qp::PartitionInt part[],
                             ninja_qp::Complex c[]);

    virtual void t2Expansion(const ninja_qp::ComplexMomentum & a0,
                             const ninja_qp::ComplexMomentum & a1,
                             const ninja_qp::ComplexMomentum & e3,
                             const ninja_qp::ComplexMomentum & e4,
                             const ninja_qp::Complex param[],
                             int mindeg,
                             int cut, const ninja_qp::PartitionInt part[],
                             ninja_qp::Complex c[]);

    virtual ~TensorNumerator()
    {
      delete [] t0_;
      delete [] t1_;
      delete [] t2_;
      delete [] t3_;
      delete [] t4_;
      delete [] t5_;
      delete [] t6_;
      delete [] t7_;
    }

  private:
    // a pointer to the tensor numerator
    const Complex * num_;

    // pointers to more allocated tensors used to store the Laurent
    // expansions
    Complex * t0_;
    Complex * t1_;
    Complex * t2_;
    Complex * t3_;
    Complex * t4_;
    Complex * t5_;
    Complex * t6_;
    Complex * t7_;

    // nlegs and rank
    int n_, r_;
  };
  
} // namespace ninja_qp

#endif // NINJA_TENSOR_NINJA_HH

