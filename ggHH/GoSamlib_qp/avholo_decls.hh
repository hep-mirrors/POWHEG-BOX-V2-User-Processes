#ifndef AVHOLO_DECLS_HH
#define AVHOLO_DECLS_HH

#include <tmp_utils.hh>
#include <ninja/types.hh>


// Declarations of functions in OneLoop

extern "C" {
  
  // set the threshold to distinguish between IR-divergent and
  // IR-finite cases
  void ninjavholo_qp_onshell(const ninja_qp::Real & thrs);

  // 4-point MI
  void ninjavholo_qp_d0_rm(ninja_qp::Complex rslt[3],
                        const ninja_qp::Real & p1, const ninja_qp::Real & p2,
                        const ninja_qp::Real & p3, const ninja_qp::Real & p4,
                        const ninja_qp::Real & p12, const ninja_qp::Real & p23,
                        const ninja_qp::Real & m1, const ninja_qp::Real & m2,
                        const ninja_qp::Real & m3, const ninja_qp::Real & m4,
                        const ninja_qp::Real & mur);
  void ninjavholo_qp_d0_cm(ninja_qp::Complex rslt[3],
                        const ninja_qp::Complex & p1, const ninja_qp::Complex & p2,
                        const ninja_qp::Complex & p3, const ninja_qp::Complex & p4,
                        const ninja_qp::Complex & p12, const ninja_qp::Complex & p23,
                        const ninja_qp::Complex & m1, const ninja_qp::Complex & m2,
                        const ninja_qp::Complex & m3, const ninja_qp::Complex & m4,
                        const ninja_qp::Real & mur);

  // 3-point MI
  void ninjavholo_qp_c0_rm(ninja_qp::Complex rslt[3],
                        const ninja_qp::Real & p1,const ninja_qp::Real & p2,
                        const ninja_qp::Real & p3,
                        const ninja_qp::Real & m1, const ninja_qp::Real & m2,
                        const ninja_qp::Real & m3, const ninja_qp::Real & mur);
  void ninjavholo_qp_c0_cm(ninja_qp::Complex rslt[3],
                        const ninja_qp::Complex & p1,const ninja_qp::Complex & p2,
                        const ninja_qp::Complex & p3,
                        const ninja_qp::Complex & m1, const ninja_qp::Complex & m2,
                        const ninja_qp::Complex & m3, const ninja_qp::Real & mur);

  // 2-point MIs
  void ninjavholo_qp_b0_rm(ninja_qp::Complex rslt[3], const ninja_qp::Real & p1,
                        const ninja_qp::Real & m1, const ninja_qp::Real & m2,
                        const ninja_qp::Real & mur);
  void ninjavholo_qp_b11_rm(ninja_qp::Complex b11[3], ninja_qp::Complex b00[3],
                         ninja_qp::Complex b1[3], ninja_qp::Complex b0[3],
                         const ninja_qp::Real & p1, const ninja_qp::Real & m1,
                         const ninja_qp::Real & m2, const ninja_qp::Real & mur);
  void ninjavholo_qp_b0_cm(ninja_qp::Complex rslt[3], const ninja_qp::Complex & p1,
                        const ninja_qp::Complex & m1, const ninja_qp::Complex & m2,
                        const ninja_qp::Real & mur);
  void ninjavholo_qp_b11_cm(ninja_qp::Complex b11[3], ninja_qp::Complex b00p[3],
                         ninja_qp::Complex b1[3], ninja_qp::Complex b0[3],
                         const ninja_qp::Complex & p1, const ninja_qp::Complex & m1,
                         const ninja_qp::Complex & m2, const ninja_qp::Real & mur);
  
  // 1-point MI
  void ninjavholo_qp_a0_rm(ninja_qp::Complex rslt[3],
                        const ninja_qp::Real & m0, const ninja_qp::Real & mur);
  void ninjavholo_qp_a0_cm(ninja_qp::Complex rslt[3],
                        const ninja_qp::Complex & m0, const ninja_qp::Real & mur);

} // extern "C"

#endif // AVHOLO_DECLS_HH
