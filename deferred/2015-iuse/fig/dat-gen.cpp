#include <iostream>
#include <stdlib.h>
using namespace std;

int main() {
  srand(time(NULL));
  for (int x=1; x<=6; x++) {
    for (int y=1; y<=6; y++)
      for (int z=-3; z<=3; z++) {
        int score = ( (3-x) + (3-y) - (z-2) + (rand()%2-2)*rand()%4 - 3) % 4;
        score = (score < -3) ? -3 : score;
        cout << x << " " 
             << y << " " 
             << z << " " 
             << score
             << endl;
       }
    cout << endl;
  }
}

