/*This space is intended for testing algorithms using binary search.
And all exercises related to binary search will be tested here.*/ 

#include <stdio.h>
int ListaBinaria (int list[], int lenth, int number);


int main(){
    int list[8]={1,3,5,7,9,11,13,17};
    int number;
    printf("type a number: ");
    scanf("%d", &number);
    printf("you typed %d\n", number);
   
 
       

 

    int result = ListaBinaria(list, 8, number);
    if (result != -1) { 
        printf("\nThe number %d is at position %d\n", number, result);
    }
    else 
        printf("\nThe number %d was not found\n", number);

    return 0; 

    
}

int ListaBinaria (int list[], int lenth, int number) {
    int low = 0;
    int high = lenth - 1;
    while (low <= high) {
        int mid = (low + high) / 2;
        int chute = list[mid];
        if (chute == number) {
            return mid;
        }
        if (chute > number) {
            high = mid - 1;
        } else {
            low = mid + 1;
        }
    }
    return -1;

}

