// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_w5 = -0.000812093953023;
    const double sigm1_w5 = 1.40754972987;
    const double mean2_w5 = -3.12343828086e-05;
    const double sigm2_w5 = 0.904237725154;
    const double mean3_w5 = 76.1395266117;
    const double sigm3_w5 = 73.0108164061; 
   
    const double W1_w5[3][5] = {{1.101661e+00, -1.863327e-01, 1.376458e-01, -2.363109e-02, 1.956703e-01},{-2.958439e+00, 3.271595e-01, -2.710886e-01, -1.418387e-01, -2.473919e-01},{3.680896e+00, 4.172819e-02, -2.747474e-02, -1.346373e-02, -2.327635e+00}};
    const double W2_w5[5][3] = {{6.588555e+01, -3.424275e-02, -1.810953e-01},{5.622787e+01, -8.287829e+00, 2.621496e+01},{3.357280e+01, -1.178466e+01, 6.146524e+01},{-7.657050e+01, 5.869071e+00, -3.793929e+01},{4.495819e+01, -1.733868e+00, -5.325877e+01}};
    const double W3_w5[3][1] = {{8.877769e+01},{-4.967825e+01},{-8.594928e+01}};
    
    const double b1_w5[5] = {8.801808e-01, 6.638175e-01, -7.436870e-01, -1.424958e+00, -3.945920e+00};
    const double b2_w5[3] = {3.164046e+01, 2.059404e+00, -5.574832e+01};
    const double b3_w5[1] = {3.139928e+01};
    
    /**
     * The neural network output function (kin)
     */
    double N_w5(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_w5)/sigm1_w5;
      xx[1] = (dy-mean2_w5)/sigm2_w5;
      xx[2] = (pttop-mean3_w5)/sigm3_w5;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_w5[j][i] * xx[j];
            l1[i] += b1_w5[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_w5[j][i]*l1[j];
            l2[i] += b2_w5[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_w5[i][0]*l2[i];
      ol += b3_w5[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_w5(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_w5(ycm, dy, pttop));
    }
    
    
    double expaln_w5_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_w5(*ycm, *dy, *pttop, *exponent);
    }
    
