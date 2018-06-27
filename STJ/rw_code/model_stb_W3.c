// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_stb_w3 = -0.000812093953023;
    const double sigm1_stb_w3 = 1.40754972987;
    const double mean2_stb_w3 = -3.12343828086e-05;
    const double sigm2_stb_w3 = 0.904237725154;
    const double mean3_stb_w3 = 76.1395266117;
    const double sigm3_stb_w3 = 73.0108164061; 
    
    const double W1_stb_w3[3][5] = {{3.770783e-01, 3.953862e-01, -5.994999e-02, 1.283921e-01, 1.071501e-01},{-3.173816e-01, -2.865187e-01, 2.100492e-02, 3.032630e-01, -8.732342e-02},{1.502495e-01, 1.027093e-01, -7.102752e-01, 8.638226e-01, 7.955374e-02}};
    const double W2_stb_w3[5][3] = {{1.633654e+00, -3.777279e+00, 2.590890e+00},{2.679784e+00, -4.967952e+00, 4.820546e-01},{4.681244e+00, -4.363835e+00, 1.079614e+01},{1.588148e-01, -1.051134e+00, 2.069420e+00},{-5.653132e+00, 1.700608e+01, -1.296332e+01}};
    const double W3_stb_w3[3][1] = {{3.853801e+01},{3.169351e+01},{2.601522e+01}};
    
    const double b1_stb_w3[5] = {1.372073e+00, -1.274616e+00, -2.208605e+00, 9.312676e-01, -6.588283e-01};
    const double b2_stb_w3[3] = {9.161528e-01, 5.734598e+00, -9.928114e-01};
    const double b3_stb_w3[1] = {3.443873e+01};
    
    /**
     * The neural network output function (kin)
     */
    double N_stb_w3(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_stb_w3)/sigm1_stb_w3;
      xx[1] = (dy-mean2_stb_w3)/sigm2_stb_w3;
      xx[2] = (pttop-mean3_stb_w3)/sigm3_stb_w3;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_stb_w3[j][i] * xx[j];
            l1[i] += b1_stb_w3[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_stb_w3[j][i]*l1[j];
            l2[i] += b2_stb_w3[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_stb_w3[i][0]*l2[i];
      ol += b3_stb_w3[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_stb_w3(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_stb_w3(ycm, dy, pttop));
    }
    
    
    double expaln_stb_w3_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_stb_w3(*ycm, *dy, *pttop, *exponent);
    }
    
