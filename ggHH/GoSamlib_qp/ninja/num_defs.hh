// This header defines the abstract class ninja_qp::Numerator.  The
// numerator provided by the user should be a class inherited from
// this one and it should overload its methods `evaluate',
// `tExpansion' and if nedded `muExpansion'.


#ifndef NINJA_NUM_DEFS_HH
#define NINJA_NUM_DEFS_HH

#include <ninja/types.hh>
#include <ninja/momentum.hh>

namespace ninja_qp {

  typedef unsigned char PartitionInt;

}


namespace samurai {

  class Numerator {

  public:

    virtual ninja_qp::Complex evaluate(const ninja_qp::ComplexMomentum & q,
                                    const ninja_qp::Complex & muq,
                                    int cut,
                                    const ninja_qp::PartitionInt part[]) = 0;

    virtual ~Numerator() {}

  };

} // namespace samurai


namespace ninja_qp {

  class Numerator : public samurai::Numerator {

  public:

    virtual Complex evaluate(const ninja_qp::ComplexMomentum & q,
                             const ninja_qp::Complex & muq,
                             int cut, const ninja_qp::PartitionInt part[]) = 0;

    virtual void muExpansion(const ninja_qp::ComplexMomentum v_perp[],
                             const ninja_qp::PartitionInt part[],
                             ninja_qp::Complex c[])
    {
      (void)(v_perp); (void)(part); (void)(c);
    }

    virtual void t3Expansion(const ninja_qp::ComplexMomentum & a,
                             const ninja_qp::ComplexMomentum & e3,
                             const ninja_qp::ComplexMomentum & e4,
                             const ninja_qp::Complex & param,
                             int mindeg,
                             int cut, const ninja_qp::PartitionInt part[],
                             ninja_qp::Complex c[]) = 0;

    virtual void t2Expansion(const ninja_qp::ComplexMomentum & a0,
                             const ninja_qp::ComplexMomentum & a1,
                             const ninja_qp::ComplexMomentum & e3,
                             const ninja_qp::ComplexMomentum & e4,
                             const ninja_qp::Complex param[],
                             int mindeg,
                             int cut, const ninja_qp::PartitionInt part[],
                             ninja_qp::Complex c[]) = 0;

    virtual ~Numerator() {}

  };

} // nammespace ninja

#endif // NINJA_NUM_DEFS_HH
