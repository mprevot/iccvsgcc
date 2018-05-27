#include <iostream>
using namespace std;
int main()
{
    int x = 3;
    x *= x;
    cout << x << endl;
    x = 3;
    int y = x + x;
    int z = x + 3;
    cout << (x * y) + (z / z) << endl;
}