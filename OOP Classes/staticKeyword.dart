//by using static keyword we dont need to create an object of the class for using its static method or variable, we can use it by class name
void main() {
  print(Person.name);
  Person.displayInfo();
}
class Person{
  static String name="Yaqoob";
  static displayInfo(){
    print("In displayInfo Function");
  }
}