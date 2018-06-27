// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_stb_w2 = -0.000812093953023;
    const double sigm1_stb_w2 = 1.40754972987;
    const double mean2_stb_w2 = -3.12343828086e-05;
    const double sigm2_stb_w2 = 0.904237725154;
    const double mean3_stb_w2 = 76.1395266117;
    const double sigm3_stb_w2 = 73.0108164061; 
    
    const double W1_stb_w2[3][5] = {{1.122711e+01, -7.592611e-04, -3.717022e-01, -7.061925e-01, 6.483143e-03},{2.274825e+01, 1.194550e-01, 1.202838e+00, 2.000942e+00, 2.022125e-01},{-4.616334e+00, 8.338466e-03, 2.054471e-01, -2.002218e-01, 1.855779e-02}};
    const double W2_stb_w2[5][3] = {{-2.204836e+01, -2.036872e-01, 2.802096e+01},{5.423159e+01, 3.621615e+01, 7.645028e+01},{2.135425e+01, 6.765802e+00, -1.355246e+00},{-3.283499e+01, 1.875516e+01, -5.584615e-01},{3.911037e+01, -4.555756e+01, -4.303745e+01}};
    const double W3_stb_w2[3][1] = {{-3.514993e+01},{-6.825942e+01},{2.342354e+01}};
    
    const double b1_stb_w2[5] = {7.979238e+01, -5.295629e-01, 2.106470e+00, 8.566566e-01, -5.858506e-01};
    const double b2_stb_w2[3] = {-7.271459e+01, 1.424830e+01, -1.277320e+01};
    const double b3_stb_w2[1] = {4.929987e+01};
    
    /**
     * The neural network output function (kin)
     */
    double N_stb_w2(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_stb_w2)/sigm1_stb_w2;
      xx[1] = (dy-mean2_stb_w2)/sigm2_stb_w2;
      xx[2] = (pttop-mean3_stb_w2)/sigm3_stb_w2;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_stb_w2[j][i] * xx[j];
            l1[i] += b1_stb_w2[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_stb_w2[j][i]*l1[j];
            l2[i] += b2_stb_w2[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_stb_w2[i][0]*l2[i];
      ol += b3_stb_w2[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_stb_w2(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_stb_w2(ycm, dy, pttop));
    }
    
    
    double expaln_stb_w2_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_stb_w2(*ycm, *dy, *pttop, *exponent);
    }
    
