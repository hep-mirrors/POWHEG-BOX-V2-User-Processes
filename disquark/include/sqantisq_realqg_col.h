cc Color-Factors obtained from FORM-file Color_qg_sqantisqq.log
      real*8 NcCF,NaCF,CFCF,CACF,
     .    CF_M3M8,CF_M3M10,CF_M1M4,CF_M2M9,CF_M3M6,CF_M1M11,CF_M6M10,CF_M4M7
     .    ,CF_M2M8,CF_M1M8,CF_M7M11,CF_M4M6,CF_M6M9,CF_M2M10,CF_M3M5,CF_M5M6
     .    ,CF_M5M8,CF_M2M5,CF_M7M8,CF_M1M2,CF_M6M11,CF_M4M8,CF_M42,CF_M8M11
     .    ,CF_M2M11,CF_M112,CF_M2M3,CF_M22,CF_M3M4,CF_M2M7,CF_M5M10,CF_M52
     .    ,CF_M4M11,CF_M3M9,CF_M10M11,CF_M12,CF_M9M10,CF_M3M7,CF_M5M7,CF_M4M5
     .    ,CF_M1M9,CF_M4M9,CF_M7M10,CF_M9M11,CF_M8M9,CF_M6M8,CF_M32,CF_M1M10
     .    ,CF_M2M4,CF_M1M6,CF_M7M9,CF_M5M9,CF_M2M6,CF_M72,CF_M5M11,CF_M3M11
     .    ,CF_M102,CF_M8M10,CF_M62,CF_M1M3,CF_M6M7,CF_M4M10,CF_M1M7,CF_M92
     .    ,CF_M82,CF_M1M5
      parameter(NcCF=3.d0,NaCF=8.d0,CFCF=4.d0/3.d0,CACF=3.d0)
      parameter(CF_M3M8 =1.D0/2.D0*NcCF*CACF*cFCF**2-1.D0/4.D0*NcCF*CACF*
     .                   *2*cFCF)
      parameter(CF_M3M10 =1.D0/4.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2+(5.d0
     .                    /6.d0))
      parameter(CF_M1M4 =NcCF*cFCF**3-NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                   **2*cFCF)
      parameter(CF_M2M9 =2*NcCF*cFCF**3-5.D0/2.D0*NcCF*CACF*cFCF**2+3.D0/4.D0
     .                   *NcCF*CACF**2*cFCF)
      parameter(CF_M3M6 =NcCF*cFCF**3-NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                   **2*cFCF)
      parameter(CF_M1M11 =NaCF**(-1)*NcCF**2*cFCF**3-1.D0/2.D0*NaCF**(-1)
     .                    *NcCF**2*CACF*cFCF**2)
      parameter(CF_M6M10 =NcCF*cFCF**3-1.D0/2.D0*NcCF*CACF*cFCF**2)
      parameter(CF_M4M7 =NcCF*cFCF**3-NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                   **2*cFCF)
      parameter(CF_M2M8 =-1.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                   **2*cFCF)
      parameter(CF_M1M8 =-1.D0/2.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M7M11 =1.D0/4.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2+(5.d0
     .                    /6.d0))
      parameter(CF_M4M6 =NcCF*cFCF**3-3.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/2.D0
     .                   *NcCF*CACF**2*cFCF)
      parameter(CF_M6M9 =2*NaCF**(-1)*NcCF**2*cFCF**3-1.D0/2.D0*NaCF**(-1)
     .                   *NcCF**2*CACF*cFCF**2)
      parameter(CF_M2M10 =NaCF**(-1)*NcCF**2*cFCF**3-1.D0/2.D0*NaCF**(-1)
     .                    *NcCF**2*CACF*cFCF**2)
      parameter(CF_M3M5 =-1.D0/2.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M5M6 =-1.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                   **2*cFCF)
      parameter(CF_M5M8 =0)
      parameter(CF_M2M5 =1.D0/2.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M7M8 =1.D0/2.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M1M2 =NcCF*cFCF**3-1.D0/2.D0*NcCF*CACF*cFCF**2)
      parameter(CF_M6M11 =-1.D0/4.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2+(5.d0
     .                    /6.d0))
      parameter(CF_M4M8 =1.D0/2.D0*NcCF*CACF*cFCF**2-1.D0/4.D0*NcCF*CACF*
     .                   *2*cFCF)
      parameter(CF_M42 =NaCF**(-1)*NcCF**2*cFCF**3)
      parameter(CF_M8M11 =1.D0/2.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M2M11 =NcCF*cFCF**3-NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M112 =NaCF**(-1)*NcCF**2*cFCF**3)
      parameter(CF_M2M3 =-1.D0/4.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2+(5.d0
     .                   /6.d0))
      parameter(CF_M22 =NaCF**(-1)*NcCF**2*cFCF**3)
      parameter(CF_M3M4 =NaCF**(-1)*NcCF**2*cFCF**3-1.D0/2.D0*NaCF**(-1)*NcCF
     .                   **2*CACF*cFCF**2)
      parameter(CF_M2M7 =NcCF*cFCF**3-3.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/2.D0
     .                   *NcCF*CACF**2*cFCF)
      parameter(CF_M5M10 =-1.D0/2.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M52 =NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M4M11 =NcCF*cFCF**3-1.D0/2.D0*NcCF*CACF*cFCF**2)
      parameter(CF_M3M9 =2*NcCF*cFCF**3-3.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/4.D0
     .                   *NcCF*CACF**2*cFCF)
      parameter(CF_M10M11 =NcCF*cFCF**3-3.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/2.D0
     .                     *NcCF*CACF**2*cFCF)
      parameter(CF_M12 =NaCF**(-1)*NcCF**2*cFCF**3)
      parameter(CF_M9M10 =2*NcCF*cFCF**3-3.D0/2.D0*NcCF*CACF*cFCF**2+1.D0
     .                    /4.D0*NcCF*CACF**2*cFCF)
      parameter(CF_M3M7 =NcCF*cFCF**3-1.D0/2.D0*NcCF*CACF*cFCF**2)
      parameter(CF_M5M7 =-1.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                   **2*cFCF)
      parameter(CF_M4M5 =1.D0/2.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M1M9 =2*(5.d0/6.d0))
      parameter(CF_M4M9 =2*NcCF*cFCF**3-5.D0/2.D0*NcCF*CACF*cFCF**2+3.D0/4.D0
     .                   *NcCF*CACF**2*cFCF)
      parameter(CF_M7M10 =NcCF*cFCF**3-NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M9M11 =2*(5.d0/6.d0))
      parameter(CF_M8M9 =0)
      parameter(CF_M6M8 =-1.D0/2.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M32 =NaCF**(-1)*NcCF**2*cFCF**3)
      parameter(CF_M1M10 =NcCF*cFCF**3-NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M2M4 =1.D0/4.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2+(5.d0/6.d0))
      parameter(CF_M1M6 =1.D0/4.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2+(5.d0/6.d0))
      parameter(CF_M7M9 =2*NaCF**(-1)*NcCF**2*cFCF**3-1.D0/2.D0*NaCF**(-1)
     .                   *NcCF**2*CACF*cFCF**2)
      parameter(CF_M5M9 =-NcCF*CACF*cFCF**2+1.D0/2.D0*NcCF*CACF**2*cFCF)
      parameter(CF_M2M6 =NcCF*cFCF**3-NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                   **2*cFCF)
      parameter(CF_M72 =NaCF**(-1)*NcCF**2*cFCF**3)
      parameter(CF_M5M11 =1.D0/2.D0*NcCF*CACF*cFCF**2-1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M3M11 =NcCF*cFCF**3-NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M102 =NaCF**(-1)*NcCF**2*cFCF**3)
      parameter(CF_M8M10 =-1.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/4.D0*NcCF*CACF
     .                    **2*cFCF)
      parameter(CF_M62 =NaCF**(-1)*NcCF**2*cFCF**3)
      parameter(CF_M1M3 =NcCF*cFCF**3-3.D0/2.D0*NcCF*CACF*cFCF**2+1.D0/2.D0
     .                   *NcCF*CACF**2*cFCF)
      parameter(CF_M6M7 =NaCF**(-1)*NcCF**2*cFCF**3-1.D0/2.D0*NaCF**(-1)*NcCF
     .                   **2*CACF*cFCF**2)
      parameter(CF_M4M10 =-1.D0/4.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2+(5.d0
     .                    /6.d0))
      parameter(CF_M1M7 =-1.D0/4.D0*NaCF**(-1)*NcCF**2*CACF*cFCF**2+(5.d0
     .                   /6.d0))
      parameter(CF_M92 =4*NaCF**(-1)*NcCF**2*cFCF**3-NaCF**(-1)*NcCF**2*CACF
     .                  *cFCF**2)
      parameter(CF_M82 =NaCF**(-1)*NcCF**2*CACF*cFCF**2)
      parameter(CF_M1M5 =1.D0/2.D0*NcCF*CACF*cFCF**2-1.D0/4.D0*NcCF*CACF*
     .                   *2*cFCF)
