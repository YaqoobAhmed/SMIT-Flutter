//question 10
import 'dart:io';
void main() {
  print('Enter three numbers:');
  int num1 = int.parse(stdin.readLineSync()!);
  int num2 = int.parse(stdin.readLineSync()!);
  int num3 = int.parse(stdin.readLineSync()!);

  int maxNumber = num1;
  int minNumber = num1;

  if (num2 > maxNumber) {
    maxNumber = num2;
  }
  if (num3 > maxNumber) {
    maxNumber = num3;
  }
  if (num2 < minNumber) {
    minNumber = num2;
  }
  if (num3 < minNumber) {
    minNumber = num3;
  }

  print('The greatest number is: $maxNumber');
  print('The lowest number is: $minNumber');
}