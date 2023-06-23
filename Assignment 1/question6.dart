//questin 6
import 'dart:io';
void main() {
  print("Enter a character to check if it's a vowel or constant");
  String char = stdin.readLineSync()!;
  if(char=="a"|| char =="e"|| char =="i"|| char =="o"|| char =="u" || char =="A"|| char =="E"|| char =="I"|| char =="O"|| char =="U"){
    print("the Character is a vowel");
  }
  else{
    print('The Character is a constant');
  }
}