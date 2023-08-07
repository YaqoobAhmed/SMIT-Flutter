//inheritance child class mai parent ki qualities use krne ke liye hota hai
main(){

Student student=Student();
student.displayInfo();
student.gend();
student.xyzFun();

}
//enum is a data type which save only the correct answers
enum gender{Male,Female,Other} 
//we use mixin for class inheritance if we have to inherate more than 1 class
mixin Gender{
  gend()=>print(gender.Male);
}
mixin xyz{
  xyzFun()=>print("invoke xyz Function");

}
class Person{
  String name;
  int age;
  Person(this.name,this.age);

  displayInfo(){
    print("name: $name");
    print("age: $age");
  }

}

class Student extends Person with Gender,xyz{
  //we use super keyord to access parent class paramaterized constructor
  Student():super("faraz",20);

}