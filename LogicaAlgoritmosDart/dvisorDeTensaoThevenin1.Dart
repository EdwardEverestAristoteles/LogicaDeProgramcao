/*This code calculates the value of a voltage divider using Thevenin's theorem, with resistance values ​​entered by the user.
Version 1.0:
In this first version, I used an `if` conditional structure to check for the existence of each variable and find the target unknown. 
I also used various functions to calculate each unknown.
Att:In this version, I did not include error handling for the case where all variables are null. */

import 'dart:io';
void main() {

  print('Welcome to the Voltage Divider Calculator!\n');
  print("You can introduce X for resistors or voltage unknown values\n");

  print('Enter the value of the first resistor (R1):');
  String R1 = stdin.readLineSync()!.toUpperCase();


  print('Enter the value of the second resistor (R2):');
  String R2 = stdin.readLineSync()!.toUpperCase();
 

  print('Enter the input voltage (Vin):');
  String Vin = stdin.readLineSync()!.toUpperCase();

  print('Enter the output voltage (Vout):');
  String Vout = stdin.readLineSync()!.toUpperCase();


//Condition who verify vout when is unknown
  if(Vout == 'X' || Vin == 'X' || R1 == 'X' || R2 == 'X') {
    print('Invalid input. Please enter a valid value for the unknown variable.');
  }else if (Vout == 'X') {
    double r1= double.parse(R1);
    double r2= double.parse(R2);
    double vin= double.parse(Vin);
    findVout(r1, r2, vin);
  }

//Condition who verify Vin when is unknown
  if (Vin =='X'|| Vout=='X'|| R1=='X'|| R2=='X') {
    print('Invalid input. Please enter a valid value for the unknown variable.');
  } else if (Vin == 'X') {
    double r1= double.parse(R1);
    double r2= double.parse(R2);
    double vout= double.parse(Vout);
    findVin(r1, r2, vout);
  }
//Condition who verify R1 when is unknown
 if (R1 == 'X' || R2 == 'X' || Vout == 'X' || Vin == 'X') {
  print('Invalid input. Please enter a valid value for the unknown variable.');
 }
  else if (R1 == 'X') {
  double r2= double.parse(R2);
  double vout= double.parse(Vout);
  double vin= double.parse(Vin);
  findR1(r2, vout, vin);

  } 
//Condition who verify R2 when is unknown
if (R2 == 'X' || R1 == 'X' || Vout == 'X' || Vin == 'X') {
  print('Invalid input. Please enter a valid value for the unknown variable.');
} else if (R2 == 'X') {
    double r1= double.parse(R1);
    double vout= double.parse(Vout);
    double vin= double.parse(Vin);
    findR2(r1, vout, vin);
  }


}
//This is the function to calculate Vout when all resistor values and Vin are known.
void findVout(double r1, double r2, double vin) {
  double vout = (vin * r2) / (r1 + r2);
  print('The output voltage (Vout) is: $vout ' + 'volts');
}

void findVin( double r1, double r2, double vout){
  double vin = (vout * (r1 + r2)) / r2;
  print('The input voltage (Vin) is: $vin ' + 'volts');
}

//This is the function to find R1 when the value is unknown.
void findR1(double r2, double vout, double vin) {
  double r1 = (r2 * (vin - vout) / vout);
  print('The value of the first resistor (R1) is: $r1 '+ 'ohms');
} 
//Function to find R2 when the value is unknown.
void findR2(double r1, double vout, double vin){
  double r2 = (r1 * vout) / (vin - vout);
  print('The value of the second resistor (R2) is: $r2 '+ 'ohms');
}