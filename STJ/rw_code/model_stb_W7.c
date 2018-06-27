// compile with gcc -c model.c -lm
    
    #include <math.h>
    
    const double mean1_stb_w7 = -0.000812093953023;
    const double sigm1_stb_w7 = 1.40754972987;
    const double mean2_stb_w7 = -3.12343828086e-05;
    const double sigm2_stb_w7 = 0.904237725154;
    const double mean3_stb_w7 = 76.1395266117;
    const double sigm3_stb_w7 = 73.0108164061; 
    
    const double W1_stb_w7[3][5] = {{-1.484785e-01, -6.043222e-02, -1.587495e-01, 5.462341e-02, -1.594760e-01},{4.887292e-01, 2.169664e-02, 5.514512e-01, -1.594585e-02, 4.846819e-01},{2.825483e-02, 7.023395e-01, -1.349079e-02, -6.529043e-01, 3.936528e-02}};
    const double W2_stb_w7[5][3] = {{1.927307e+01, -2.101392e+01, 4.832904e+00},{-7.307365e+00, 1.232903e+00, 1.250045e+01},{-8.093862e+00, 1.015905e+01, -6.778540e+00},{-9.154136e+00, 1.237859e+00, 1.057629e+01},{-1.105113e+01, 1.047681e+01, 5.962065e+00}};
    const double W3_stb_w7[3][1] = {{-6.302780e+01},{-1.996466e+01},{6.117206e+00}};
    
    const double b1_stb_w7[5] = {-2.769791e-01, 6.634903e-01, -1.841504e-01, -8.126574e-01, -4.934885e-01};
    const double b2_stb_w7[3] = {-1.621150e+00, 8.190024e-01, 6.061867e+00};
    const double b3_stb_w7[1] = {4.107430e+01};
    
    /**
     * The neural network output function (kin)
     */
    double N_stb_w7(double ycm, double dy, double pttop)
    {
      double xx[3];
      xx[0] = (ycm-mean1_stb_w7)/sigm1_stb_w7;
      xx[1] = (dy-mean2_stb_w7)/sigm2_stb_w7;
      xx[2] = (pttop-mean3_stb_w7)/sigm3_stb_w7;
            
      double l1[5], l2[3], ol = 0;
    
      for (int i = 0; i < 5; i++)
        {
            l1[i] = 0;
            for (int j = 0; j < 3; j++)
                l1[i] += W1_stb_w7[j][i] * xx[j];
            l1[i] += b1_stb_w7[i];
            l1[i] = tanh(l1[i]);
        }
    
      for (int i = 0; i < 3; i++)
        {
            l2[i] = 0;
            for (int j = 0; j < 5; j++)		
                l2[i] += W2_stb_w7[j][i]*l1[j];
            l2[i] += b2_stb_w7[i];
            l2[i] = tanh(l2[i]);
        }
    
      for (int i = 0; i < 3; i++)
        ol += W3_stb_w7[i][0]*l2[i];
      ol += b3_stb_w7[0];
    
      return ol;
    }
    
    /**
     * The exponential function (kin, exponent)
     */
    double expaln_stb_w7(double ycm, double dy, double pttop, double exponent)
    {
      return exp(exponent*N_stb_w7(ycm, dy, pttop));
    }
    
    
    double expaln_stb_w7_(double *ycm, double *dy, double *pttop, double *exponent)
    {
      return expaln_stb_w7(*ycm, *dy, *pttop, *exponent);
    }
    
