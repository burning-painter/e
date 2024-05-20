#include <iostream>
using namespace std;
//liniar  non recarsive search
int arr[5]={1,3,5,7,9};
int n=5;
int search(int e=8)
{
    for (int z = 0; z < n; z++)
    {
        if (arr[z]>e)
        {
            int res=-1;
            return res;
            
        }
        else if (arr[z]==e)
        {
            return z;
        }
    }
    
    
}

int main(){
    int res1=search(5);
    cout<<res1<<endl;
    return 0;
}