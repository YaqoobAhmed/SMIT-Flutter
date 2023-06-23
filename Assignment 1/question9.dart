//question 9
import 'dart:io';
void main(){
  print("Enter Number to check if its even or odd");
  int no = int.parse(stdin.readLineSync()!);

  if(no % 2 == 0){
    print("Number is even");
    if(no % 5 == 0){
      print('The number is divisible by 5.');
    }
    else{
      print('The number is not divisible by 5.');
    }
  }
  else{
    print("Number is odd");
      if (no % 7 == 0) {
      print('The number is divisible by 7.');
    } else {
      print('The number is not divisible by 7.');
  }
  }
}
