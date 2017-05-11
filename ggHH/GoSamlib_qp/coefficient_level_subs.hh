// Universal coefficient level subtractions.


#ifndef COEFFICIENT_LEVEL_SUBS_HH
#define COEFFICIENT_LEVEL_SUBS_HH

#if !defined(HAVE_CONFIG_H) || defined(NINJA_X1RANK)
# define NINJA_X1RANK_SUBTRACTIONS
#endif

#include <ninja/types.hh>
#include <ninja/momentum.hh>

namespace ninja_qp {

  // normal rank
  namespace cuts {

    // Subtraction of triangles from bubbles
    void correctbubcoeffs(ninja_qp::Complex * divnum,
                          const ninja_qp::ComplexMomentum & et3,
                          const ninja_qp::ComplexMomentum & et4,
                          const ninja_qp::Complex * c,
                          const ninja_qp::ComplexMomentum & eb1,
                          const ninja_qp::ComplexMomentum & eb2,
                          const ninja_qp::ComplexMomentum & eb3,
                          const ninja_qp::ComplexMomentum & eb4,
                          const ninja_qp::Complex * param,
                          const ninja_qp::RealMomentum & k,
                          const ninja_qp::Complex & f,
                          int rmn,  // rank-n
                          bool allcoeffs);

    // Subtraction of triangles from tadpoles
    void correcttadcoeffs(ninja_qp::Complex divnum[],
                          const ninja_qp::ComplexMomentum & et3,
                          const ninja_qp::ComplexMomentum & et4,
                          const ninja_qp::Complex c[],
                          const ninja_qp::ComplexMomentum & e3,
                          const ninja_qp::RealMomentum & k0,
                          const ninja_qp::Complex & f0,
                          const ninja_qp::RealMomentum & k1,
                          const ninja_qp::Complex & f1,
                          int rmn // rank-n
                          );

    // Subtraction of bubbles from tadpoles
    void correcttadcoeffs(ninja_qp::Complex divnum[],
                          const ninja_qp::ComplexMomentum & eb2,
                          const ninja_qp::ComplexMomentum & eb3,
                          const ninja_qp::ComplexMomentum & eb4,
                          const ninja_qp::RealMomentum & kbol,
                          const ninja_qp::Complex b[],
                          const ninja_qp::ComplexMomentum & e3,
                          const ninja_qp::RealMomentum & k,
                          const ninja_qp::Complex & f,
                          int rmn // rank-n
                          );

    // Subtraction of triangles from full tadpoles
    void correcttadcoeffsfull(ninja_qp::Complex divnum[],
                              const ninja_qp::ComplexMomentum & et3,
                              const ninja_qp::ComplexMomentum & et4,
                              const ninja_qp::Complex c[],
                              const ninja_qp::ComplexMomentum & e3,
                              const ninja_qp::RealMomentum & k0,
                              const ninja_qp::Complex & f0,
                              const ninja_qp::RealMomentum & k1,
                              const ninja_qp::Complex & f1,
                              int rmn // rank-n
                              );

    // Subtraction of bubbles from full tadpoles
    void correcttadcoeffsfull(ninja_qp::Complex divnum[],
                              const ninja_qp::ComplexMomentum & eb2,
                              const ninja_qp::ComplexMomentum & eb3,
                              const ninja_qp::ComplexMomentum & eb4,
                              const ninja_qp::RealMomentum & kbol,
                              const ninja_qp::Complex c[],
                              const ninja_qp::ComplexMomentum & e3,
                              const ninja_qp::RealMomentum & k,
                              const ninja_qp::Complex & f,
                              int rmn // rank-n
                              );

  }  // namespace cuts


#ifdef NINJA_X1RANK_SUBTRACTIONS

  // higher rank
  namespace x1cuts {

    // Subtraction of triangles from bubbles
    void correctbubcoeffs(ninja_qp::Complex * divnum,
                          const ninja_qp::ComplexMomentum & et3,
                          const ninja_qp::ComplexMomentum & et4,
                          const ninja_qp::Complex * c,
                          const ninja_qp::ComplexMomentum & eb1,
                          const ninja_qp::ComplexMomentum & eb2,
                          const ninja_qp::ComplexMomentum & eb3,
                          const ninja_qp::ComplexMomentum & eb4,
                          const ninja_qp::Complex * param,
                          const ninja_qp::RealMomentum & k,
                          const ninja_qp::Complex & f,
                          int ,  // rank-n (unused for higher rank)
                          bool allcoeffs);

    // Subtraction of triangles from tadpoles
    void correcttadcoeffs(ninja_qp::Complex divnum[],
                          const ninja_qp::ComplexMomentum & et3,
                          const ninja_qp::ComplexMomentum & et4,
                          const ninja_qp::Complex c[],
                          const ninja_qp::ComplexMomentum & e3,
                          const ninja_qp::ComplexMomentum & e4,
                          const ninja_qp::Complex & param,
                          const ninja_qp::RealMomentum & k0,
                          const ninja_qp::Complex & f0,
                          const ninja_qp::RealMomentum & k1,
                          const ninja_qp::Complex & f1,
                          bool);

    // Subtraction of bubbles from tadpoles
    void correcttadcoeffs(ninja_qp::Complex divnum[],
                          const ninja_qp::ComplexMomentum & eb2,
                          const ninja_qp::ComplexMomentum & eb3,
                          const ninja_qp::ComplexMomentum & eb4,
                          const ninja_qp::RealMomentum & kbol,
                          const ninja_qp::Complex c[],
                          const ninja_qp::ComplexMomentum & e3,
                          const ninja_qp::ComplexMomentum & e4,
                          const ninja_qp::Complex & param,
                          const ninja_qp::RealMomentum & k,
                          const ninja_qp::Complex & f,
                          bool);

    // Subtraction of triangles from full tadpoles
    void correcttadcoeffsfull(ninja_qp::Complex divnum[],
                              const ninja_qp::ComplexMomentum & et3,
                              const ninja_qp::ComplexMomentum & et4,
                              const ninja_qp::Complex c[],
                              const ninja_qp::ComplexMomentum & e3,
                              const ninja_qp::ComplexMomentum & e4,
                              const ninja_qp::Complex & param,
                              const ninja_qp::RealMomentum & k0,
                              const ninja_qp::Complex & f0,
                              const ninja_qp::RealMomentum & k1,
                              const ninja_qp::Complex & f1,
                              int rmn // rank-n
                              );

    // Subtraction of bubbles from full tadpoles
    void correcttadcoeffsfull(ninja_qp::Complex divnum[],
                              const ninja_qp::ComplexMomentum & eb2,
                              const ninja_qp::ComplexMomentum & eb3,
                              const ninja_qp::ComplexMomentum & eb4,
                              const ninja_qp::RealMomentum & kbol,
                              const ninja_qp::Complex c[],
                              const ninja_qp::ComplexMomentum & e3,
                              const ninja_qp::ComplexMomentum & e4,
                              const ninja_qp::Complex & param,
                              const ninja_qp::RealMomentum & k,
                              const ninja_qp::Complex & f,
                              int rmn // rank-n
                              );

  } // namespace x1cuts

#endif // NINJA_X1RANK_SUBTRACTIONS

} // namespace ninja_qp


#endif // COEFFICIENT_LEVEL_SUBS_HH
