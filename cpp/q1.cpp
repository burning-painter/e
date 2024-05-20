#include <iostream>
#include <vector>

using namespace std;

void insertionSort(vector<int>& arr) {
    int n = arr.size(); // Get the size of the array
    for (int i = 1; i < n; i++) { // Start from the second element
        int key = arr[i]; // The element to be placed at the correct position
        int j = i - 1;
        
        // Move elements of arr[0..i-1], that are greater than key, to one position ahead
        while (j >= 0 && arr[j] > key) {
            arr[j + 1] = arr[j]; // Shift element to the right
            j = j - 1;
        }
        arr[j + 1] = key; // Place the key at the correct position
    }
}

void printArray(const vector<int>& arr) {
    for (int i = 0; i < arr.size(); i++) // Loop through the array and print each element
        cout << arr[i] << " ";
    cout << endl;
}

int main() {
    vector<int> arr = {12, 11, 13, 5, 6}; // Initialize an array with unsorted numbers
    cout << "Original array: ";
    printArray(arr); // Print the original array

    insertionSort(arr); // Sort the array using insertion sort

    cout << "Sorted array: ";
    printArray(arr); // Print the sorted array

    return 0;
}
