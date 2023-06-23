//question 8
import "dart:io";
void main(){
  String grade='';
  int totalMarks=500;

  print("Entetr Student Name");
  String stdName=stdin.readLineSync()!;
  print("Entetr Student Roll No");
  String stdRollNo=stdin.readLineSync()!;
  print("Entetr Student Class");
  String stdClass=stdin.readLineSync()!;

  print("Entetr English Marks");
  double english=double.parse(stdin.readLineSync()!);
  print("Entetr Math");
  double math=double.parse(stdin.readLineSync()!);
  print("Entetr Urdu");
  double urdu=double.parse(stdin.readLineSync()!);
  print("Entetr Science");
  double science=double.parse(stdin.readLineSync()!);
  print("Entetr Computer");
  double computer=double.parse(stdin.readLineSync()!);
  
  double obtainedMarks = english+math+urdu+science+computer;
  num percentage = (obtainedMarks/totalMarks)*100;

  if(percentage>=90 && percentage<=100){
    grade="A";
  }
  else if(percentage>=80 && percentage<90){
    grade="B";
  }
  else if(percentage>=70 && percentage<80){
    grade="C";
  }
  else if(percentage>=60 && percentage<70){
    grade="D";
  }
  else if(percentage>=0 && percentage<60){
    grade="F";
  }
  
  print("***REPORT CARD*** \n");
  print("Student Name: $stdName");
  print("Student Roll No: $stdRollNo");
  print("Student Class: $stdClass");
  print("Total Marks: $totalMarks");
  print("Obtain Marks: $obtainedMarks");
  print("Percentage: ${percentage.toStringAsFixed(2)} %");
  print("Grade: $grade");
}