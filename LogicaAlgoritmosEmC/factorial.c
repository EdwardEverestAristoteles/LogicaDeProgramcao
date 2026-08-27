/**
 This code snippet is an algorithm test to find the factorial of a number that is not zero (0).
 */

 #include <stdio.h>

 int factorialFunction(int n);

 int main(){

    int number=0;

    printf("Type a number: ");
    scanf("%d", &number);

    int factorial = factorialFunction(number);

    if (factorial != 0) {
        printf("The factorial of %d is %d\n", number, factorial);
    } else {
        printf("The factorial of %d does not exist\n", number);
    }


 }

 int factorialFunction(int n){

    int result=1; 
    if (n !=0){
        for (int i=1; i<=n; i++){
            result=result*i;
            printf("Intermediate result after multiplying by %d is %d\n", i, result);
        }
    }
    return result;
}