import 'encapsulationParent.dart';

class Printing extends Info {}

void main() {
  Printing printing = Printing();
  print(printing.name);
  //print(printing._age);    it will show error because it is encapsulated (in dart the encapusulation is not for class to class but for file to file) we can use private variable in other classes of same file but can not use in other files
  Info info=Info();
  info.displayInfo(); //this can print the private variable because we are calling the same class function
}
