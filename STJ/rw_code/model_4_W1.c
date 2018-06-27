// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_4_w1 = -0.000812093953023;
    const double sigm1_4_w1 = 1.40754972987;
    const double mean2_4_w1 = -3.12343828086e-05;
    const double sigm2_4_w1 = 0.904237725154;
    const double mean3_4_w1 = 76.1395266117;
    const double sigm3_4_w1 = 73.0108164061; 
    
    const double W1_4_w1[3][5] = {{-8.961971e-02, 3.065065e-01, -6.971144e-03, 4.187159e-01, 5.351996e-01},{1.632467e-02, -9.977816e-02, 3.345214e-02, -3.546164e-01, -1.454222e+00},{4.602174e-01, 4.572150e-01, -5.162559e-01, 2.891445e-01, -1.752129e+00}};
    const double W2_4_w1[5][3] = {{-3.395733e+00, 2.116748e+01, -2.252015e+00},{-8.080514e-01, 3.069615e+00, -7.453099e-01},{-3.305188e+00, 2.217347e+01, -5.449039e+00},{-3.236443e+00, -7.729182e-01, 2.683848e-01},{-1.201597e-01, -2.486134e+01, 6.190600e-02}};
    const double W3_4_w1[3][1] = {{2.069921e+01},{-2.942614e+01},{3.827275e+01}};
    
    const double b1_4_w1[5] = {-5.242879e-02, -1.927340e-01, 3.644469e-01, 2.275284e+00, -2.556381e-01};
    const double b2_4_w1[3] = {3.141280e+00, 2.409093e+01, 3.109827e+00};
    const double b3_4_w1[1] = {4.081234e+00};
    
    /**
     * The neural network output function (kin)
     */
    double N_4_w1(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_4_w1)/sigm1_4_w1;
      xx[1] = (dy-mean2_4_w1)/sigm2_4_w1;
      xx[2] = (pttop-mean3_4_w1)/sigm3_4_w1;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_4_w1[j][i] * xx[j];
            l1[i] += b1_4_w1[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_4_w1[j][i]*l1[j];
            l2[i] += b2_4_w1[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_4_w1[i][0]*l2[i];
      ol += b3_4_w1[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_4_w1(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_4_w1(ycm, dy, pttop));
    }
    
    
    double expaln_4_w1_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_4_w1(*ycm, *dy, *pttop, *exponent);
    }
    
