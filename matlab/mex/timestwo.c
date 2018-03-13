#include <stdio.h>
#include "mex.h"

/* A quick MEX function. To compile:
 * matlab> mex timestwo.c
 * matlab> timestwo(12)
 * ans =
 *    24
 */

// executable entry point
void mexFunction( int      nlhs,           // number  of returns
                  mxArray *plhs[],         // pointer to returns (might be empty)
                  int      nrhs,           // number  of inputs
                  const mxArray *prhs[]) { // pointer to inputs  (might be empty)
  double *x, *y; // data arrays
  size_t mrows, ncols; // size of data

  if(nrhs != 1)
    mexErrMsgTxt("One argument required."); // function will return here

  mrows = mxGetM(prhs[0]); // number of rows of first arg
  ncols = mxGetN(prhs[0]); // number of cols
  // printf("m = %llu n = %llu\n", mrows, ncols); // there's a mex printf somewhere

  // create output array
  plhs[0] = mxCreateDoubleMatrix((mwSize) mrows, (mwSize) ncols, mxREAL);

  // get values
  x = mxGetPr(prhs[0]);
  y = mxGetPr(plhs[0]);

  for(int i = 0; i < mrows*ncols; i++) {
    y[i] = 2 * x[i];
  }
}
