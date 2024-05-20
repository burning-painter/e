#include <iostream>

using namespace std;
int top=-1,max=5;
int arr[5];


void push (int v=top){
    top ++;
    arr[top]=v;

}

void pop(){
arr[top]= 0;
top--;

}
void show()
{
    for (int i = 0; i < 5; i++)
    {
        cout<<"arr[" <<i<<"]="<<arr[i]<<endl;
    }
    

}

int main (){
push(5);
show();
pop();
return 0;
}