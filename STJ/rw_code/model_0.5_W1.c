// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_05_w1 = -0.000812093953023;
    const double sigm1_05_w1 = 1.40754972987;
    const double mean2_05_w1 = -3.12343828086e-05;
    const double sigm2_05_w1 = 0.904237725154;
    const double mean3_05_w1 = 76.1395266117;
    const double sigm3_05_w1 = 73.0108164061; 
    
    const double W1_05_w1[3][5] = {{2.816543e-01, 1.022854e+00, -1.959328e+00, 2.816660e-01, 3.891782e-02},{-6.846887e-01, -8.405476e-01, 1.045488e+00, -7.405216e-01, -4.359210e-02},{-4.729495e-01, 5.561801e-01, 3.745702e-01, -5.476673e-01, 2.211069e-01}};
    const double W2_05_w1[5][3] = {{-5.611277e-01, 5.923528e+00, 1.355353e+00},{-3.161544e-01, -1.286521e+00, -1.240268e-01},{-4.276388e-01, -1.368783e+00, -3.171398e-01},{4.815225e-01, -6.041143e+00, -9.865419e-01},{-4.234443e+00, 1.414195e+00, -6.374492e+00}};
    const double W3_05_w1[3][1] = {{-3.462783e+01},{1.048902e+02},{6.059307e+01}};
    
    const double b1_05_w1[5] = {-7.744076e-01, 2.320119e+00, 3.498699e+00, -5.356779e-01, -5.890134e-02};
    const double b2_05_w1[3] = {-1.458001e+00, -7.099499e-01, -2.038447e+00};
    const double b3_05_w1[1] = {1.255359e+02};
    
    /**
     * The neural network output function (kin)
     */
    double N_05_w1(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_05_w1)/sigm1_05_w1;
      xx[1] = (dy-mean2_05_w1)/sigm2_05_w1;
      xx[2] = (pttop-mean3_05_w1)/sigm3_05_w1;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_05_w1[j][i] * xx[j];
            l1[i] += b1_05_w1[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_05_w1[j][i]*l1[j];
            l2[i] += b2_05_w1[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_05_w1[i][0]*l2[i];
      ol += b3_05_w1[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_05_w1(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_05_w1(ycm, dy, pttop));
    }
    
    
    double expaln_05_w1_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_05_w1(*ycm, *dy, *pttop, *exponent);
    }
    
