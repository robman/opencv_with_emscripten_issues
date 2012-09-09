#include <iostream>
#include <vector>

#include <opencv2/opencv.hpp>
#include <opencv2/core/core.hpp>

using namespace cv;
using namespace std;

int main(int argc, char** argv) {
  vector<float> v;
  cout << "ok so far 01" << endl;
  v.push_back(2);
  cout << "ok so far 02" << endl;
  Mat my_mat = Mat(v);
  cout << "ok so far 03" << endl;
  cout << "ok so far 04" << my_mat << endl;
}
