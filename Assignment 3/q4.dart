//Implement a code that finds the factorial of a number using a while loop or for loop.

void main() {
  int factorial = 4; //set a number to find its factorial
  int temp = factorial;
  while (factorial > 1) {
    temp = temp * (--factorial);  //we can also write as temp *= --factorial
  }
  print("Result is: ${temp}");
}
