#include <stdio.h>
#include "mex.h"


// executable entry point
void mexFunction( int      nlhs,           // number  of returns
                  mxArray *plhs[],         // pointer to returns (might be empty)
                  int      nrhs,           // number  of inputs
                  const mxArray *prhs[]) { // pointer to inputs
  double *x, *y;
  size_t mrows, ncols;

  if(nrhs != 1)
    mexErrMsgIdAndTxt( "MATLAB:timestwo:invalidNumInputs", "One input required.");

  mrows = mxGetM(prhs[0]); // number of rows of first arg
  ncols = mxGetN(prhs[0]); // number of cols

  // create output array
  plhs[0] = mxCreateDoubleMatrix((mwSize) mrows, (mwSize) ncols, mxREAL);

  // get values
  x = mxGetPr(prhs[0]);
  y = mxGetPr(plhs[0]);

  y[0] = 2 * x[0];
}
