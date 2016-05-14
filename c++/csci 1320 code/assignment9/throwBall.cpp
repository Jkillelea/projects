// Copyright Jacob Killelea, CU Boulder CSCI 1320, Spring 2016, section 302
// MIT License

#define _USE_MATH_DEFINES       // gets the value of pi (M_PI)
#include <cmath>                // C++ math library
#include <iostream>

const double ballRelease = 1.5; // meters
const double g = 9.8;           // meters per second per second
const double PI = M_PI;         // value of pi
const int numIntervals = 1000;  // actual number of intervals to simulate
double initialAngle = 0.0;      // degrees
double initialV = 0.0;          // meters per second

int main(int argc, char const *argv[]) {

  std::cout << "Enter the ball's initial velocity in meters per second" << std::endl;
  std::cin >> initialV;

  std::cout << "Enter the angle at which the ball is fired in degrees" << std::endl;
  std::cin >> initialAngle;

  double x [numIntervals];      // holds x positiion
  double y [numIntervals];      // holds y positiion
  double t [numIntervals];      // holds time array

  for (size_t i = 0; i < numIntervals; i++) {    // create array of time values over the course of one second
    t[i] = i / 999.0;                            // values evenly spaced between 0 and 1
  }

  for (size_t i = 0; i < numIntervals; i++) {    // find x values through time interval
    x[i] = initialV * cos(initialAngle * (PI/180)) * t[i]; // x = v*cos(angle)*t
  }

  for (size_t i = 0; i < numIntervals; i++) {    // find y values through time interval
    y[i] = ballRelease + initialV * sin(initialAngle * (M_PI/180))* t[i] - 0.5 * g * pow(t[i], 2); // y = h+v*sin(angle) - (1/2)gt^2
  }


  for (size_t i = 0; i < numIntervals; i++) {    // find out where the ball hits the ground.
    if (y[i] <= 0) {
      std::cout << "The ball hit the ground at a distance of " << x[i] << " meters."<< std::endl;
      break; // program goes to return 0 (at the end), then terminates
    }
  }
  if (y[numIntervals-1] > 0) {
    std::cout << "The ball never hit the ground in the time allotted." << std::endl;
    return 255; //program terminates
  }


  return 0;
}
