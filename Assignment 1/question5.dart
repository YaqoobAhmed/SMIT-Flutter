//question 5
import 'dart:io';
void main() {
  print("Enter temperature to check weather condition");
  num temperature = int.parse(stdin.readLineSync()!);
  if(temperature<0){
    print("freezing Temperature");
  }
  else if(temperature>=0 && temperature<10){
    print("Very Cold weather");
  }
  else if(temperature>=10 && temperature<20){
    print("Cold weather");
  }
  else if(temperature>=20 && temperature<30){
    print("Normal in Temperature");
  } 
  else if(temperature>=30 && temperature<40){
    print("It's Hot");
  }
   else{
    print("It's very Hot");
  }
}