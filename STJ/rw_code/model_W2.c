// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_w2 = -0.000812093953023;
    const double sigm1_w2 = 1.40754972987;
    const double mean2_w2 = -3.12343828086e-05;
    const double sigm2_w2 = 0.904237725154;
    const double mean3_w2 = 76.1395266117;
    const double sigm3_w2 = 73.0108164061; 
    
    const double W1_w2[3][5] = {{1.814303e-01, -8.665457e-01, 1.664839e-01, 1.626982e-01, -1.563324e-01},{2.497594e-01, -5.317816e-01, -1.265729e-02, 7.469285e-02, 1.563513e-01},{2.768616e-01, 1.219793e+00, 2.612222e-01, 2.210565e-01, -2.756670e-01}};
    const double W2_w2[5][3] = {{-6.236884e+00, -9.427036e+00, 9.053514e+00},{-4.844912e-01, 9.776837e-01, 3.882963e-01},{-4.312035e+01, 3.271620e+00, 1.071856e+01},{4.084470e+01, -1.678731e+01, -2.256005e+01},{-1.268133e+01, 3.754148e+00, 1.376856e+00}};
    const double W3_w2[3][1] = {{5.195804e+01},{3.769572e+01},{1.744293e+01}};
    
    const double b1_w2[5] = {5.527128e-01, -2.583016e+00, 5.398848e-01, 6.022607e-01, -3.119051e-01};
    const double b2_w2[3] = {-3.662535e+00, 2.546218e+01, 1.912204e+00};
    const double b3_w2[1] = {2.647586e+01};
    
    /**
     * The neural network output function (kin)
     */
    double N_w2(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_w2)/sigm1_w2;
      xx[1] = (dy-mean2_w2)/sigm2_w2;
      xx[2] = (pttop-mean3_w2)/sigm3_w2;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_w2[j][i] * xx[j];
            l1[i] += b1_w2[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_w2[j][i]*l1[j];
            l2[i] += b2_w2[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_w2[i][0]*l2[i];
      ol += b3_w2[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_w2(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_w2(ycm, dy, pttop));
    }
    
    
    double expaln_w2_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_w2(*ycm, *dy, *pttop, *exponent);
    }
    
