// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_2_w1 = -0.000812093953023;
    const double sigm1_2_w1 = 1.40754972987;
    const double mean2_2_w1 = -3.12343828086e-05;
    const double sigm2_2_w1 = 0.904237725154;
    const double mean3_2_w1 = 76.1395266117;
    const double sigm3_2_w1 = 73.0108164061; 
    
    const double W1_2_w1[3][5] = {{4.455308e-02, -1.239425e-01, 1.983092e+00, -8.386258e-03, -4.095685e-03},{-2.612382e-01, 5.068549e-01, -1.205940e+00, -2.369851e-02, -5.042965e-03},{1.151873e-01, 2.505254e-02, 1.092115e-01, -2.310517e-01, -4.446251e-01}};
    const double W2_2_w1[5][3] = {{-1.216780e+01, -8.328272e-01, -1.458001e+01},{-5.368432e+00, 1.019611e+00, -9.247763e+00},{3.261100e-01, -4.476634e-01, -1.496092e+00},{5.553560e+01, 5.852971e+01, -1.915921e+01},{-3.062890e+01, -2.960661e+01, 8.248740e+00}};
    const double W3_2_w1[3][1] = {{1.043840e+01},{-6.191530e+00},{-2.929524e+00}};
    
    const double b1_2_w1[5] = {4.887519e-03, 3.744573e-01, -4.561542e+00, -1.132870e-01, 3.142554e-02};
    const double b2_2_w1[3] = {7.391706e+00, 5.036201e+00, 3.817385e-01};
    const double b3_2_w1[1] = {2.283970e+00};
    
    /**
     * The neural network output function (kin)
     */
    double N_2_w1(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_2_w1)/sigm1_2_w1;
      xx[1] = (dy-mean2_2_w1)/sigm2_2_w1;
      xx[2] = (pttop-mean3_2_w1)/sigm3_2_w1;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_2_w1[j][i] * xx[j];
            l1[i] += b1_2_w1[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_2_w1[j][i]*l1[j];
            l2[i] += b2_2_w1[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_2_w1[i][0]*l2[i];
      ol += b3_2_w1[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_2_w1(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_2_w1(ycm, dy, pttop));
    }
    
    
    double expaln_2_w1_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_2_w1(*ycm, *dy, *pttop, *exponent);
    }
    
