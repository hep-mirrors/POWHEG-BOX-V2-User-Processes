// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_stb_w6 = -0.000812093953023;
    const double sigm1_stb_w6 = 1.40754972987;
    const double mean2_stb_w6 = -3.12343828086e-05;
    const double sigm2_stb_w6 = 0.904237725154;
    const double mean3_stb_w6 = 76.1395266117;
    const double sigm3_stb_w6 = 73.0108164061; 
    
    const double W1_stb_w6[3][5] = {{1.819093e+00, 1.126286e-01, -1.098274e-01, 1.382317e-01, -1.678461e-01},{-1.097279e+00, 1.165155e+00, -1.171245e+00, -1.042284e-01, 4.132769e-01},{7.432939e-01, 4.194037e-02, -5.916529e-02, -1.886999e+00, 3.359547e-02}};
    const double W2_stb_w6[5][3] = {{-1.006916e-01, 9.595518e-03, 2.018631e+01},{2.921819e+01, -4.671502e+01, -3.489360e+01},{2.916375e+01, -4.657081e+01, -3.309130e+01},{-1.540227e+01, -1.521699e+01, -5.284655e+01},{8.553278e+00, -1.646430e+02, -2.952160e+01}};
    const double W3_stb_w6[3][1] = {{-1.177914e+01},{-9.302295e+01},{-2.114366e+00}};
    
    const double b1_stb_w6[5] = {2.206855e+00, -1.803347e-01, 1.740466e-01, -4.092414e+00, 2.499072e+00};
    const double b2_stb_w6[3] = {-2.298832e+01, 1.506845e+02, -2.091965e+00};
    const double b3_stb_w6[1] = {9.631375e+01};
    
    /**
     * The neural network output function (kin)
     */
    double N_stb_w6(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_stb_w6)/sigm1_stb_w6;
      xx[1] = (dy-mean2_stb_w6)/sigm2_stb_w6;
      xx[2] = (pttop-mean3_stb_w6)/sigm3_stb_w6;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_stb_w6[j][i] * xx[j];
            l1[i] += b1_stb_w6[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_stb_w6[j][i]*l1[j];
            l2[i] += b2_stb_w6[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_stb_w6[i][0]*l2[i];
      ol += b3_stb_w6[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_stb_w6(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_stb_w6(ycm, dy, pttop));
    }
    
    
    double expaln_stb_w6_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_stb_w6(*ycm, *dy, *pttop, *exponent);
    }
    
