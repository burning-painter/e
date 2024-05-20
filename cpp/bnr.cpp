# include <iostream>

using namespace std;

int arr[6] = {1, 4, 5, 7,6, 9};
int n=6;

int serach(int low,int high,int e=6){
 
 
    while ((low+high)/2 >low &&  (low+high)/2 <high)
    {
       
        int mid=(low+high)/2;
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
    }
  

}

int main (){

    cout<<serach(0,5,5)<<endl;
    return 0;
}