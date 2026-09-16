/*This code calculates the divisors of any positive integer number greater than zero entered by the user.
Version 1.0: Initial idea */

import 'dart:io';

void main() {
  //Program startup
  print("Welcome to the Divisor Calculator!\n");
  print("If you want start, press Enter twince:");
  stdin.readLineSync()!;

  if (stdin.readLineSync() != null) {
    while (true) {
      int anynumber = inicializing();
      calculateDivisores(anynumber);
      if (anynumber > 0) {
        print("Do you want to continue? (y/n)");
        String continuePlay = stdin.readLineSync()!.toLowerCase();
        if (continuePlay == 'y' && anynumber > 0) {
          int anynumber = inicializing();
          calculateDivisores(anynumber);
        } else
          print("Thank you for using the program!");
      }
    }
  }
}

int calculateDivisores(int numberTyped) {
  int divisors = 0;
  if (numberTyped > 0) {
    for (int i = 1; i <= numberTyped; i++) {
      if (numberTyped % i == 0) {
        print(i);
        divisors++;
      }
    }

    print("The divisors of $numberTyped are: $divisors \n");
  }
  return divisors;
}

int inicializing() {
  print("Enter a positive integer greater than zero:\n");
  int usernamber = int.parse(stdin.readLineSync()!);
  if (usernamber <= 0) {
    print("Please enter a positive integer greater than zero!\n ");
  }
  return usernamber;
}
