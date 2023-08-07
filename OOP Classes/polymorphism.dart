//Polymorphism means the ability of objects of different classes to be treated as objects of a common superclass
class Father{
  displayInfo()=>print("this is father's function");
  
}
class Child extends Father{
  @override
  displayInfo() {
    print("this is child's function");
  }
}


class Father1{
  String name="father";
  displayInfo1()=>print("this is $name 1's function");
  
}
class Child1 extends Father1{
  @override
  // TODO: implement name
  String get name => super.name="Yaqoob"; //it gets the string name from the parent class and store
  @override  
  displayInfo1() {
    print("this is $name function");
    // it will change the because the this.name is updated for this class
    return super.displayInfo1();     //by this return super.displayInfo we manage to call parents class function also

  }
}
main(){
  Child child=Child();
  child.displayInfo();
  print("===============================");
  Child1 child1=Child1();
  child1.displayInfo1();
  Father1 father1=Father1();
  father1.displayInfo1();

}
