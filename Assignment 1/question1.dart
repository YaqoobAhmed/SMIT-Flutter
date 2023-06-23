// question 1//
import 'dart:io';
void main(){
double length,breadth;
print("Enter Lngth");
length = double.parse(stdin.readLineSync()!);
print("Enter Breadth");
breadth = double.parse(stdin.readLineSync()!);

if (length==breadth){
  print("This is Square");
}
else{
  print("This is Rectangle");
}
}