#include <iostream>

using namespace std;
int r=-1,f=-1,max=5;
int arr[5];


void enqueue (int v=r){
    r ++;
    arr[r]=v;

}

void dequeue(){
f++;

}
void show()
{
    cout<<"rear="<<r<<" front="<<f<<endl;
    for (int i = 0; i < 5; i++)
    {
        cout<<"arr[" <<i<<"]="<<arr[i]<<endl;
    }
    

}

int main (){
 enqueue(5);
  enqueue(6);
show();
 dequeue();
 show();
return 0;
}