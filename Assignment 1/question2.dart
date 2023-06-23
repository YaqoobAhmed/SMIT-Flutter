//question 2
import 'dart:io';
void main(){
  
  print("Enter 1st Person Age: ");
  int age1 = int.parse(stdin.readLineSync()!);
   print("Enter 2nd Person Age: ");
  int age2 = int.parse(stdin.readLineSync()!);
  if(age1>age2){
    print("Person 1 is Older");
  }
  else if(age1==age2){
    print("Both are of Same Age");
  }
  else{
    print("Person 2 is Older");
  }
}