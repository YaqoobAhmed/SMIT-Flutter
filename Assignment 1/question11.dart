//question 11
import 'dart:io';
import 'dart:math';
void main() {
  print('Enter a number to find its root:');
  num nom = num.parse(stdin.readLineSync()!);
  num root=sqrt(nom);

  print('The number is: $nom');
  print('The Square Root is: $root');
}