#include <iostream>
#include <vector>

#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>

using namespace cv;
using namespace std;

int main(int argc, char** argv) {
  cout << "ok so far 01" << endl;
  Mat R = Mat(3, 2, CV_8UC3);
  cout << "ok so far 02" << endl;
  randu(R, Scalar::all(0), Scalar::all(255));
  cout << "ok so far 03: " << R << endl;
  cout << "ok so far 04" << endl;
}
