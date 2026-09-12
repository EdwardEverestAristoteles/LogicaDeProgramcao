/*This code calculates the value of a voltage divider using Thevenin's theorem, with resistance values ​​entered by the user.*/

import 'dart:io';
void main() {
  print('Enter the value of the first resistor (R1):');
  double r1 = double.parse(stdin.readLineSync()!);

  print('Enter the value of the second resistor (R2):');
  double r2 = double.parse(stdin.readLineSync()!);

  print('Enter the input voltage (Vin):');
  double vin = double.parse(stdin.readLineSync()!);

  double vout = vin * (r2 / (r1 + r2));
  print('The output voltage (Vout) is: $vout');
}