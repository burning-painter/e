#include <iostream>
using namespace std ;
int main (){
int n;
cout << "enter numbar of elements in an array";
cin >> n;
int arr[n];

for (int i =1 ; i<n; i++){
    int current =arr [i];
    int j = i -1;
    
    while (arr[i]>current && j>=0){
        arr[j+1]= arr [j];
        j=j-1;
    }
arr[j+1]=current ;
}
for (int i=0 ; i<n; i++){
    cout << arr [i]<<"";
}
return 0;
}