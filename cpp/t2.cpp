#include <iostream>
using namespace std;

int arr[5] = {1, 3, 5, 7, 9};
int n = 5;

int search(int c = 0, int e = 8) {
    if (c >= n) {
        return -1; // If c exceeds the length of array
    }
    if (arr[c] > e) {
        return -1;
    } else if (arr[c] == e) {
        return c;
    }
    return search(c + 1, e);
}

int main() {
    int res1 = search(0, 8);
    cout << res1 << endl; // Output should be -1 since 8 is not in the array
    return 0;
}
