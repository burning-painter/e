# include <iostream>
using namespace std ;

int arr[6] = {1, 4, 5, 7,6, 9};
int n=6;

int serach(int low,int high,int e=6){
    int mid=(low+high)/2;

    if (mid>n )
    {
        return -1;
    }

    if (arr[mid]==e)
    {
        return mid;
    }

    if (arr[mid]<e)
    {
        low=mid+1;
    }
    if (arr[mid]>e)
    {
        high=mid-1;
    }
    return serach(low,high,e);

}

int main (){


    cout<<serach(0,5,5)<<endl;
    return 0;
}