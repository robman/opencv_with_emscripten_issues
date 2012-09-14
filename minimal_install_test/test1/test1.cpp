#include <iostream>
#include <opencv2/opencv.hpp>

using namespace cv;
using namespace std;

int main(int argc, char** argv) {
  vector<float> v;
  cout << "ok so far 01" << endl;
  v.push_back(2);
  cout << "ok so far 02" << endl;
  Mat test_mat = Mat(v);
  cout << "ok so far 03" << endl;
  cout << "ok so far 04: " << test_mat << endl;
}

