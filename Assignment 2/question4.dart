//Q.4: Create a list of numbers & write a program to get the smallest & greatest number from a list.

void main(){
  List<int> numbers=[22,65,12,89,34,782,45,102,29];
  int smallest = numbers.reduce((a, b) => a<b ? a:b);
  int greatest = numbers.reduce((a, b) => a>b ? a:b);

  print("The smallest number is : $smallest");
  print("The greatest number is : $greatest");
}